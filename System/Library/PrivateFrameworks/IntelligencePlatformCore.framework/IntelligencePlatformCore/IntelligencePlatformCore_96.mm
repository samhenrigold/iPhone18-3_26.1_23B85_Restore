uint64_t sub_1C4CE94D8()
{
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {
    v5 = sub_1C4CE9668;
  }

  else
  {

    v5 = sub_1C4CE9610;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4CE9610()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CE9668()
{
  sub_1C43FEAEC();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDF8);
  v3 = sub_1C4406834();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C440E068(&dword_1C43F8000, v12, v13, "SourceUpdater: Failed processing high priority views: %@");
    sub_1C4420C3C(v9, &qword_1EC0BDA00, &qword_1C4F10D30);
    v14 = sub_1C44068C0();
    MEMORY[0x1C6942830](v14);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4CE97E8()
{
  sub_1C43FEAEC();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDF8);
  v3 = sub_1C4406834();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C440E068(&dword_1C43F8000, v12, v13, "SourceUpdater: Failed processing live schedule: %@");
    sub_1C4420C3C(v9, &qword_1EC0BDA00, &qword_1C4F10D30);
    v14 = sub_1C44068C0();
    MEMORY[0x1C6942830](v14);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v15();
}

void sub_1C4CE9968()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v88 = v5;
  v89 = v6;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v81 = v9 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v82 = v78 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v78 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v78 - v17;
  v87 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v20 = 0;
  sub_1C43FBDF0();
  v84 = v21;
  sub_1C43FBDF0();
  *&v83 = v22;
  v24 = (v23 + 8);
  v86 = xmmword_1C4F0CE60;
  v85 = v4;
  while (v20 != 11)
  {
    v25 = v1;
    v26 = v87;
    swift_unownedRetainStrong();
    sub_1C4440C6C(v89);
    if (v2)
    {

      goto LABEL_21;
    }

    v27 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v28 = sub_1C4404370(v27);
    v29 = sub_1C447F62C(v28, v86);
    v32 = v26;
    v33 = v88;
    switch(v34)
    {
      case 1:
        v31 = 1701736302;
        break;
      case 2:
        sub_1C4411434();
        break;
      case 3:
        sub_1C441CF6C();
        v30 = v83;
        break;
      case 4:
        v30 = 0xE600000000000000;
        v35 = 1801807223;
        goto LABEL_11;
      case 5:
        sub_1C441B53C();
        goto LABEL_14;
      case 6:
        sub_1C440B7A4();
LABEL_14:
        sub_1C43FF8C0();
        break;
      case 7:
        v30 = 0xE600000000000000;
        v35 = 1920298856;
LABEL_11:
        v31 = v35 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
        break;
      case 8:
        sub_1C440B7A4();
        sub_1C4CEC294();
        break;
      case 9:
        sub_1C441B53C();
        sub_1C442A52C();
        break;
      case 10:
        sub_1C441CF6C();
        v30 = v84;
        break;
      default:
        break;
    }

    v29[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v29[4].n128_u64[0] = MEMORY[0x1E69A0138];
    v29[2].n128_u64[0] = v31;
    v29[2].n128_u64[1] = v30;
    v29[6].n128_u64[0] = MEMORY[0x1E69E6530];
    v29[6].n128_u64[1] = MEMORY[0x1E69A0180];
    v29[4].n128_u64[1] = v33;
    v1 = v25;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*v24)(v25, v32);
    v36 = sub_1C44038D0();
    sub_1C440BAA8(v36, v37, v38, v32);
    sub_1C4EFC0A8();
    v2 = 0;
    sub_1C4420C3C(v18, &unk_1EC0C06C0, &unk_1C4F10DB0);

    ++v20;
    v4 = v85;
  }

  v39 = v89;
  sub_1C4BB7370();
  if (v2)
  {
LABEL_21:
    sub_1C43FBC80();
    return;
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v39);
  sub_1C43FEF2C();

  v40 = v15;
  v41 = *(v4 + 440);

  v84 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v42 = sub_1C44331AC(v84);
  v83 = xmmword_1C4F0D130;
  *(v42 + 16) = xmmword_1C4F0D130;
  *(v42 + 56) = MEMORY[0x1E69E6530];
  *(v42 + 64) = MEMORY[0x1E69A0180];
  *(v42 + 32) = v88;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v43 = *v24;
  v44 = v87;
  (*v24)(v1, v87);
  v45 = sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C440BAA8(v46, v47, v48, v44);
  sub_1C43FD428();
  v49 = sub_1C4EFBBC8();
  v50 = MEMORY[0x1E69A0180];
  v80 = v43;
  v88 = v49;
  sub_1C4420C3C(&v90, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v40, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v51 = sub_1C4441A40();
  sub_1C4440C6C(v51);
  sub_1C43FEF2C();

  v52 = *(v45 + 400);

  swift_unownedRetainStrong();
  v53 = sub_1C4441A40();
  v54 = sub_1C4440C6C(v53);
  v78[3] = v52;
  v78[0] = v41;

  v78[2] = *(v54 + 312);

  v55 = v87;
  v56 = v50;
  v57 = MEMORY[0x1E69E6530];
  v78[1] = v24;
  while (1)
  {
    v58 = sub_1C4458EE8();
    if (!v58)
    {
      sub_1C4402358();

      goto LABEL_21;
    }

    sub_1C441E870(0, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v59 = sub_1C4EFBBE8();
    if (v59)
    {
      MEMORY[0x1EEE9AC00](v59);
      v61 = sub_1C44E7728(v60, v78);
      if (v61 == 5)
      {
        goto LABEL_33;
      }

      v62 = sub_1C4F02AA8();
      v57 = MEMORY[0x1E69E6530];
      v56 = MEMORY[0x1E69A0180];
    }

    else
    {
      sub_1C449DB5C();
      sub_1C4EFBB98();
      v62 = v90;
    }

    sub_1C441E870(1, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v63 = sub_1C4EFBBE8();
    v89 = v58;
    if (v63)
    {
      break;
    }

    v64 = v55;
    sub_1C447E3A4();
    sub_1C4EFBB98();
    v79 = v90;
LABEL_31:
    v85 = v62;
    v66 = sub_1C44331AC(v84);
    *(v66 + 16) = v83;
    *(v66 + 56) = v57;
    *(v66 + 64) = v56;
    *(v66 + 32) = v62;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v55 = v64;
    v80(v1, v64);
    v67 = v57;
    v68 = v82;
    sub_1C43FCF64();
    sub_1C440BAA8(v69, v70, v71, v64);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v68, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v72 = sub_1C4404370(v84);
    v72[1] = v86;
    v72[3].n128_u64[1] = v67;
    v72[4].n128_u64[0] = v56;
    v72[2].n128_u64[0] = v79;
    v72[6].n128_u64[0] = v67;
    v72[6].n128_u64[1] = v56;
    v72[4].n128_u64[1] = v85;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v80(v1, v64);
    v73 = v81;
    sub_1C43FCF64();
    sub_1C440BAA8(v74, v75, v76, v64);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v73, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v57 = MEMORY[0x1E69E6530];
  }

  v64 = v55;
  MEMORY[0x1EEE9AC00](v63);
  v61 = sub_1C4414708(v65, v78);
  if (v61 != 5)
  {
    v79 = sub_1C4F02AA8();
    v57 = MEMORY[0x1E69E6530];
    goto LABEL_31;
  }

LABEL_33:
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD954();
  *(v77 - 16) = sub_1C487BF24;
  *(v77 - 8) = &v78[-4];
  sub_1C4EFB968();
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4CEA380(char a1)
{
  v1 = sub_1C4F00978();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C4F00178();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    sub_1C43FECF0();
    v10 = swift_slowAlloc();
    sub_1C43FEC60();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_1C4F01198();
    v14 = sub_1C441D828(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v8, v9, "NullScheduleLauncher: Triggering %s", v10, 0xCu);
    sub_1C440962C(v11);
    v15 = sub_1C44068C0();
    MEMORY[0x1C6942830](v15);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v3 + 8))(v7, v1);
  sub_1C43FE9F0();
}

uint64_t sub_1C4CEA558(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  sub_1C456902C(a2, a3);
  sub_1C43FBDBC();
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1C4CEA5A8()
{
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  result = static NSUserDefaults.viewGenerationMaxRemoteDevices.getter();
  qword_1EDE2DDA8 = result;
  return result;
}

uint64_t sub_1C4CEA5EC(uint64_t a1)
{
  v2 = v1;
  sub_1C44366B4();
  sub_1C440E3F8();
  sub_1C4430958(v5, v1 + v4, v6);
  v7 = sub_1C44F58DC(a1);
  _s19SyncDeviceRetrieverC11GuardedDataCMa();
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1C456902C(&qword_1EC0C61B8, &qword_1C4F6B528);
  sub_1C44400E8();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  sub_1C4467948(a1);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox) = v9;
  return v2;
}

uint64_t sub_1C4CEA6D4(void *a1)
{
  sub_1C4467948(v1 + *a1);

  sub_1C44366B4();

  return swift_deallocClassInstance();
}

_BYTE *_s10UpdateTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4CEA8A8()
{
  result = qword_1EDDF9D78;
  if (!qword_1EDDF9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D78);
  }

  return result;
}

unint64_t sub_1C4CEA900()
{
  result = qword_1EDDECED0;
  if (!qword_1EDDECED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECED0);
  }

  return result;
}

unint64_t sub_1C4CEA958()
{
  result = qword_1EDDEBC58;
  if (!qword_1EDDEBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEBC58);
  }

  return result;
}

unint64_t sub_1C4CEA9B0()
{
  result = qword_1EDDEBC60;
  if (!qword_1EDDEBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEBC60);
  }

  return result;
}

uint64_t sub_1C4CEAA1C@<X0>(void *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  v8 = sub_1C4EF93B8();
  v10 = v9;

  if (v5)
  {
    *a4 = v5;
    return result;
  }

  v12 = sub_1C44CE108(v8, v10);
  if (v13)
  {
    goto LABEL_10;
  }

  v18 = v8;
  v19 = v10;
  sub_1C44344B8(v8, v10);
  sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1C4420C3C(v16, &qword_1EC0BB218, &qword_1C4F2DA00);
LABEL_9:
    v12 = sub_1C47DC7B8(v8, v10);
LABEL_10:
    v14 = v12;
    v15 = v13;
    result = sub_1C4434000(v8, v10);
    goto LABEL_11;
  }

  sub_1C441D670(v16, v20);
  sub_1C4409678(v20, v21);
  if ((sub_1C4F02588() & 1) == 0)
  {
    sub_1C440962C(v20);
    goto LABEL_9;
  }

  sub_1C4434000(v8, v10);
  sub_1C4409678(v20, v21);
  sub_1C4F02578();
  v15 = *(&v16[0] + 1);
  v14 = *&v16[0];
  result = sub_1C440962C(v20);
LABEL_11:
  *a5 = v14;
  a5[1] = v15;
  return result;
}

void sub_1C4CEAC50()
{
  sub_1C43FE96C();
  v23 = v3;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {

    v12 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C4404370(v12);
    *(v13 + 16) = xmmword_1C4F0CE60;
    v14 = sub_1C4424B10(v5);
    v15 = MEMORY[0x1E69A0138];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v15;
    v16 = MEMORY[0x1E69E6530];
    *(v13 + 32) = v14;
    *(v13 + 40) = v17;
    v18 = MEMORY[0x1E69A0180];
    *(v13 + 96) = v16;
    *(v13 + 104) = v18;
    *(v13 + 72) = v23;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v10 + 8))(v2, v8);
    v19 = sub_1C44038D0();
    sub_1C43FF8A0(v19, v20, v21, v8);
    sub_1C440C810();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEAE64()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C441C544();
  v6 = sub_1C440F090();
  sub_1C4440C6C(v6);
  sub_1C4402530();
  if (!v1)
  {

    v7 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v8 = sub_1C44331AC(v7);
    *(v8 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v8, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v9 = sub_1C43FBF04();
    v10(v9);
    v11 = sub_1C44038D0();
    sub_1C43FF8A0(v11, v12, v13, v4);
    sub_1C443474C();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v14, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB018()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v2);
  sub_1C4402530();
  if (!v1)
  {

    v8 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = sub_1C4404370(v8);
    *(v9 + 16) = xmmword_1C4F0CE60;
    v10 = sub_1C4424B10(v4);
    v11 = MEMORY[0x1E69A0138];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = v11;
    v12 = MEMORY[0x1E69E6530];
    *(v9 + 32) = v10;
    *(v9 + 40) = v13;
    sub_1C4443490(v12);
    sub_1C4EFC088();
    v14 = sub_1C43FBF04();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C44554A8(v16, v17, v18);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB1AC()
{
  sub_1C43FE96C();
  v4 = v3;
  v21 = v5;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {

    v12 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C4404370(v12);
    *(v13 + 16) = xmmword_1C4F0CE60;
    v14 = MEMORY[0x1E69E6530];
    v15 = v4;
    v16 = MEMORY[0x1E69A0180];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v16;
    *(v13 + 32) = v21;
    *(v13 + 96) = v14;
    *(v13 + 104) = v16;
    *(v13 + 72) = v15;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v10 + 8))(v2, v8);
    v17 = sub_1C44038D0();
    sub_1C43FF8A0(v17, v18, v19, v8);
    sub_1C440C810();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v20, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB3A4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C4F02828();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C49B754C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C4CEB5FC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C4CEB484(0, v3, 1, a1);
  }
}

uint64_t sub_1C4CEB484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 deviceIdentifier];
        v11 = sub_1C4F01138();
        v13 = v12;

        v14 = [v9 deviceIdentifier];
        v15 = sub_1C4F01138();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_1C4F02938();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4CEB5FC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v129 = v6;
      v109 = *(v6 + 2);
      v107 = (v6 + 16);
      for (i = v109; i >= 2; *v107 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v110 = &v129[16 * i];
        v111 = *v110;
        v112 = &v107[2 * i];
        v113 = *(v112 + 1);
        sub_1C4CEBDC0((*a3 + 8 * *v110), (*a3 + 8 * *v112), (*a3 + 8 * v113), v7);
        if (v125)
        {
          break;
        }

        if (v113 < v111)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v107)
        {
          goto LABEL_133;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        v114 = *v107 - i;
        if (*v107 < i)
        {
          goto LABEL_134;
        }

        v125 = 0;
        i = *v107 - 1;
        sub_1C461950C(v112 + 16, v114, v112);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1C46194F4();
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v120 = v4;
      v126 = v6;
      v9 = *a3;
      v117 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 deviceIdentifier];
      v14 = sub_1C4F01138();
      v16 = v15;

      v17 = [v12 deviceIdentifier];
      v18 = sub_1C4F01138();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v122 = 0;
      }

      else
      {
        v122 = sub_1C4F02938();
      }

      v21 = (v9 + 8 * v117 + 16);
      v22 = 8 * v117 + 8;
      do
      {
        v23 = v8;
        v24 = v22;
        if (++v8 >= v120)
        {
          break;
        }

        v130 = v8;
        v25 = *(v21 - 1);
        v26 = *v21;
        v27 = v25;
        v133 = v26;
        v28 = [v26 deviceIdentifier];
        v29 = sub_1C4F01138();
        v31 = v30;

        v32 = [v27 deviceIdentifier];
        v33 = sub_1C4F01138();
        v35 = v34;

        v36 = v29 == v33 && v31 == v35;
        v7 = v36 ? 0 : sub_1C4F02938();

        ++v21;
        v22 = v24 + 8;
        v8 = v130;
      }

      while (((v122 ^ v7) & 1) == 0);
      if (v122)
      {
        v37 = v117;
        if (v8 < v117)
        {
          goto LABEL_138;
        }

        if (v117 >= v8)
        {
          v6 = v126;
          v7 = v117;
          goto LABEL_29;
        }

        v38 = 8 * v117;
        do
        {
          if (v37 != v23)
          {
            v39 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v40 = *(v39 + v38);
            *(v39 + v38) = *(v39 + v24);
            *(v39 + v24) = v40;
          }

          v37 = (v37 + 1);
          v24 -= 8;
          v38 += 8;
        }

        while (v37 < v23--);
      }

      v6 = v126;
      v7 = v117;
    }

LABEL_29:
    v42 = a3[1];
    if (v8 < v42)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v6 = v105;
    }

    v63 = v6;
    v64 = *(v6 + 2);
    v128 = v63;
    v65 = v64 + 1;
    if (v64 >= *(v63 + 3) >> 1)
    {
      sub_1C458A358();
      v128 = v106;
    }

    *(v128 + 2) = v65;
    v66 = v128 + 32;
    v67 = &v128[16 * v64 + 32];
    *v67 = v7;
    v67[1] = v8;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v132 = v8;
    if (v64)
    {
      v6 = v128;
      while (1)
      {
        v69 = v65 - 1;
        v70 = &v66[16 * v65 - 16];
        v71 = &v6[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v72 = *(v6 + 4);
          v73 = *(v6 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_72:
          if (v75)
          {
            goto LABEL_123;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_126;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_131;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v65 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v65 < 2)
        {
          goto LABEL_125;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_87:
        if (v90)
        {
          goto LABEL_128;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v97 < v89)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v69 - 1 >= v65)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v101 = &v66[16 * v69 - 16];
        v7 = *v101;
        v102 = &v66[16 * v69];
        v103 = *(v102 + 1);
        sub_1C4CEBDC0((*a3 + 8 * *v101), (*a3 + 8 * *v102), (*a3 + 8 * v103), v68);
        if (v125)
        {
          goto LABEL_116;
        }

        if (v103 < v7)
        {
          goto LABEL_118;
        }

        v104 = *(v128 + 2);
        if (v69 > v104)
        {
          goto LABEL_119;
        }

        *v101 = v7;
        *(v101 + 1) = v103;
        if (v69 >= v104)
        {
          goto LABEL_120;
        }

        v125 = 0;
        v65 = v104 - 1;
        sub_1C461950C(v102 + 16, v104 - 1 - v69, &v66[16 * v69]);
        v6 = v128;
        *(v128 + 2) = v104 - 1;
        if (v104 <= 2)
        {
          goto LABEL_103;
        }
      }

      v76 = &v66[16 * v65];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_121;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_122;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_124;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_127;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v100)
        {
          v69 = v65 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v128;
LABEL_103:
    v4 = a3[1];
    v5 = v132;
    if (v132 >= v4)
    {
      goto LABEL_106;
    }
  }

  v43 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v43)
  {
    goto LABEL_51;
  }

  v127 = v6;
  v134 = *a3;
  v44 = *a3 + 8 * v8 - 8;
  v118 = v7;
  v119 = v43;
  v45 = v7 - v8;
LABEL_38:
  v131 = v8;
  v46 = *(v134 + 8 * v8);
  v121 = v45;
  v123 = v44;
  v47 = v44;
  while (1)
  {
    v48 = *v47;
    v49 = v46;
    v50 = v48;
    v51 = [v49 deviceIdentifier];
    v52 = sub_1C4F01138();
    v54 = v53;

    v55 = [v50 deviceIdentifier];
    v56 = sub_1C4F01138();
    v58 = v57;

    if (v52 == v56 && v54 == v58)
    {

LABEL_49:
      v8 = v131 + 1;
      v44 = v123 + 8;
      v45 = v121 - 1;
      if (v131 + 1 == v119)
      {
        v8 = v119;
        v6 = v127;
        v7 = v118;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v60 = sub_1C4F02938();

    if ((v60 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v134)
    {
      break;
    }

    v61 = *v47;
    v46 = *(v47 + 8);
    *v47 = v46;
    *(v47 + 8) = v61;
    v47 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1C4CEBDC0(char *a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C4474DF4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 deviceIdentifier];
      v16 = sub_1C4F01138();
      v18 = v17;

      v19 = [v14 deviceIdentifier];
      v20 = sub_1C4F01138();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = sub_1C4F02938();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = (v25 + 1);
    }
  }

  sub_1C4474DF4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 deviceIdentifier];
    v37 = sub_1C4F01138();
    v39 = v38;

    v40 = [v35 deviceIdentifier];
    v41 = sub_1C4F01138();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_1C4F02938();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

uint64_t sub_1C4CEC0F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C44FFC00(a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result & 1;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

unint64_t sub_1C4CEC134()
{
  result = qword_1EDDECEE0;
  if (!qword_1EDDECEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECEE0);
  }

  return result;
}

uint64_t sub_1C4CEC188()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C4CEC1D8()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4432DFC(v1);
  sub_1C442642C();

  return sub_1C4CE61C0(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1C4CEC2C0()
{
  if (*(*v0 + 16))
  {
    sub_1C4CF693C();
    if (!v1)
    {
      sub_1C4CEC304(*(*v0 + 16) - 1);
    }
  }
}

void sub_1C4CEC304(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348F0();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1C4461B98((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_1C4CEC38C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v374 = v3;
  *&v375 = v1;
  v5 = v4;
  v376 = v6;
  v358 = v7;
  v359 = v8;
  v10 = v9;
  v12 = v11;
  v357 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v345 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v356 = v16 - v15;
  v367 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v361 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  sub_1C43FBFDC();
  v355 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v354 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v353 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v352 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v351 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v350 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v349 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v348 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v347 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v346 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v365 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v362 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v318 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v364 = &v318 - v50;
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  *v372 = v52;
  *&v372[8] = v51;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBCC4();
  *&v371 = v54 - v53;
  sub_1C4EFB678();
  sub_1C43FCDF8();
  v369 = v56;
  v370 = v55;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  v368 = v57;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v318 - v59;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CF8();

  v64 = os_log_type_enabled(v62, v63);
  v366 = v21;
  v363 = v48;
  v360 = v10;
  if (v64)
  {
    v65 = v12;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v373 = v5;
    v68 = v67;
    *&v391[0] = v67;
    *v66 = 136315138;
    v69 = sub_1C4D11C18();
    v71 = sub_1C441D828(v69, v70, v391);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_1C43F8000, v62, v63, "ViewValidation: %s", v66, 0xCu);
    sub_1C440962C(v68);
    v72 = v68;
    v5 = v373;
    MEMORY[0x1C6942830](v72, -1, -1);
    v73 = v66;
    v12 = v65;
    MEMORY[0x1C6942830](v73, -1, -1);
  }

  sub_1C43FE990();
  v74 = v375;
  sub_1C4449828();
  if (v74)
  {
    return v62;
  }

  v373 = v5;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v75 = v12;
  v76 = MEMORY[0x1E69E6530];
  *&v391[2] = MEMORY[0x1E69A0178];
  *(&v391[1] + 1) = MEMORY[0x1E69E6530];
  *&v391[0] = v75;
  sub_1C4EFB658();
  sub_1C4423A0C(v391, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C4EFB638();
  (*(v369 + 32))(v368, v60, v370);
  v77 = v371;
  sub_1C4EFBC88();
  v78 = sub_1C4EFBEE8();
  v370 = v75;
  (*(*v372 + 8))(v77, *&v372[8]);
  v79 = sub_1C4EFBED8();
  v329 = sub_1C4EFBED8();
  v81 = v364;
  sub_1C43FCF64();
  sub_1C440BAA8(v82, v83, v84, v367);
  sub_1C44458E0();
  memset(v391, 0, 40);
  sub_1C444B3C4();
  v85 = 0;
  v86 = sub_1C4EFB398();
  sub_1C4423A0C(v391, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4423A0C(v81, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v87 = (v361 + 8);
  v337 = xmmword_1C4F0D130;
  v88 = MEMORY[0x1E69A0180];
  v319 = MEMORY[0x1E69E7CC0];
  v320 = v86;
  v368 = MEMORY[0x1E69E7CC0];
  v340 = v78;
  v321 = v79;
  v330 = (v361 + 8);
  while (1)
  {
    sub_1C4788A90(v392);
    v341 = *&v392[48];
    if (!*&v392[48])
    {
      v174 = 0;
      *&v383 = MEMORY[0x1E69E7CD0];
      while (v174 != 11)
      {
        v175 = byte_1F43D9F00[v174 + 32];
        sub_1C4CEAC50();
        if (v176)
        {
          sub_1C483BE88(v391, v175);
        }

        ++v174;
      }

      sub_1C4CE7D58();
      if (v178 == 2)
      {
        memset(v392, 0, sizeof(v392));
      }

      else
      {
        sub_1C4452380(v177, v376, v394);
        memcpy(v392, v394, sizeof(v392));
      }

      memcpy(__dst, v392, 0x48uLL);
      v179 = v360;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4443048(v393, v389);
      sub_1C44600A0(v392, v389, &qword_1EC0C6340, &qword_1C4F6BAA0);
      sub_1C4CEF3C8(v395, __dst, v370, v374, v179, v393, v319);
      v396 = v395[31];
      memcpy(v391, v395, sizeof(v391));
      v62 = v359;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4423A0C(&v396, &qword_1EC0C6348, &qword_1C4F6BAA8);
      v180 = 0;
      *(&v391[15] + 1) = v62;
      v181 = *(v368 + 16);
      v362 = v368 + 32;
      v363 = v181;
      v335 = 0x80000001C4F86260;
      v336 = 0x80000001C4F862C0;
      v182 = v373;
      while (1)
      {
        if (v180 == v363)
        {

          *&v375 = *(&v391[19] + 1);
          *v372 = v358;
          if (v358 != 2)
          {
            v220 = *(v375 + 16);
            if (v220)
            {
              v221 = v374;
              v62 = v375 + 32;
              v180 = v373;
              v222 = v360;
              v223 = v370;
              do
              {
                memcpy(v401, v62, sizeof(v401));
                sub_1C4CF6478(v401, v389);
                sub_1C4CF17AC(v223, v221, v222, v401);
                result = sub_1C4CF64B0(v401);
                v62 += 72;
                --v220;
              }

              while (v220);
            }

            if ((v358 & 1) == 0)
            {
              goto LABEL_164;
            }
          }

          v224 = *(v375 + 16);
          if (v224)
          {
            v225 = 0;
            v226 = (v375 + 32);
            v374 = v224 - 1;
            *&v372[8] = xmmword_1C4F0CE60;
            v371 = xmmword_1C4F0C890;
            while (1)
            {
              if (v225 >= v224)
              {
                __break(1u);
LABEL_179:
                __break(1u);
                return result;
              }

              result = memcpy(v390, v226, 0x48uLL);
              v227 = *(&v390[0] + 1);
              v228 = *&v390[0];
              switch(*&v390[3] >> 60)
              {
                case 1:
                  swift_unownedRetainStrong();
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v245 = sub_1C440FE90();
                  sub_1C4440C6C(v245);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v62 = *(v180 + 360);

                  v246 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v247 = sub_1C4404370(v246);
                  sub_1C443039C(v247);
                  v249 = 0xE400000000000000;
                  v250 = 1702259052;
                  switch(v228)
                  {
                    case 1:
                      v250 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v249 = v335;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_125;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_131;
                    case 6:
                      sub_1C440B7A4();
LABEL_131:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_125:
                      v250 = v306 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v249 = v336;
                      break;
                    default:
                      break;
                  }

                  v248[7] = MEMORY[0x1E69E6158];
                  v248[8] = MEMORY[0x1E69A0138];
                  v248[4] = v250;
                  v248[5] = v249;
                  v248[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v248, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v309 = sub_1C441AA1C();
                  v310(v309);
                  v180 = v348;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v348;
                  goto LABEL_155;
                case 2:
                  swift_unownedRetainStrong();
                  v275 = *(v228 + 240);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();

                  sub_1C44048BC();
                  v276 = sub_1C440FE90();
                  sub_1C441E000(v276);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 40);

                  v277 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v278 = sub_1C4404370(v277);
                  sub_1C443039C(v278);
                  v280 = 0xE400000000000000;
                  v281 = 1702259052;
                  switch(v275)
                  {
                    case 1:
                      v281 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v280 = v335;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_143;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_151;
                    case 6:
                      sub_1C440B7A4();
LABEL_151:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_143:
                      v281 = v308 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v280 = v336;
                      break;
                    default:
                      break;
                  }

                  v279[7] = MEMORY[0x1E69E6158];
                  v279[8] = MEMORY[0x1E69A0138];
                  v279[4] = v281;
                  v279[5] = v280;
                  v279[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v279, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v313 = sub_1C441AA1C();
                  v314(v313);
                  v180 = v350;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v350;
                  goto LABEL_155;
                case 3:
                  swift_unownedRetainStrong();
                  v282 = *(v228 + 216);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v283 = sub_1C440FE90();
                  sub_1C441E000(v283);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 40);

                  v284 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v285 = sub_1C4404370(v284);
                  sub_1C443039C(v285);
                  v286[7] = MEMORY[0x1E69E6158];
                  v286[8] = MEMORY[0x1E69A0138];
                  v286[4] = 1702259052;
                  v286[5] = 0xE400000000000000;
                  v286[12] = MEMORY[0x1E69E6530];
                  v286[13] = MEMORY[0x1E69A0180];
                  v286[9] = v282;
                  sub_1C442E6E0(v286);
                  sub_1C4EFC088();
                  v287 = sub_1C441AA1C();
                  v288(v287);
                  v180 = v351;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v351;
                  goto LABEL_155;
                case 4:
                  swift_unownedRetainStrong();
                  v269 = *(v228 + 96);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v270 = sub_1C440FE90();
                  sub_1C4440C6C(v270);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 400);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  sub_1C4406298();
                  v271 = swift_allocObject();
                  sub_1C445EACC(v271);
                  v272[7] = MEMORY[0x1E69E6530];
                  v272[8] = MEMORY[0x1E69A0180];
                  v272[4] = v269;
                  sub_1C442E6E0(v272);
                  sub_1C4EFC088();
                  v273 = sub_1C441AA1C();
                  v274(v273);
                  v180 = v353;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v353;
                  goto LABEL_155;
                case 5:
                  swift_unownedRetainStrong();
                  v299 = *(v228 + 96);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v2 = *(v228 + 128);

                  sub_1C44048BC();
                  v300 = sub_1C440FE90();
                  sub_1C4440C6C(v300);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 392);

                  v301 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v302 = sub_1C4404370(v301);
                  sub_1C443039C(v302);
                  v303[7] = MEMORY[0x1E69E6530];
                  v303[8] = MEMORY[0x1E69A0180];
                  v303[4] = v299;
                  v303[12] = MEMORY[0x1E69E63B0];
                  v303[13] = MEMORY[0x1E69A0168];
                  v303[9] = v2;
                  sub_1C442E6E0(v303);
                  sub_1C4EFC088();
                  v304 = sub_1C441AA1C();
                  v305(v304);
                  v180 = v352;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v352;
                  goto LABEL_155;
                case 6:
                  swift_unownedRetainStrong();
                  v259 = *(v228 + 24);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v260 = *(v228 + 96);

                  sub_1C44048BC();
                  v261 = sub_1C440FE90();
                  sub_1C4440C6C(v261);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 312);

                  v262 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v263 = sub_1C4404370(v262);
                  sub_1C443039C(v263);
                  v264 = MEMORY[0x1E69E6530];
                  v265[7] = MEMORY[0x1E69E6530];
                  v266 = MEMORY[0x1E69A0180];
                  v265[8] = MEMORY[0x1E69A0180];
                  v265[9] = v260;
                  v265[4] = v259;
                  v265[12] = v264;
                  v265[13] = v266;
                  sub_1C442E6E0(v265);
                  sub_1C4EFC088();
                  v267 = sub_1C441AA1C();
                  v268(v267);
                  v180 = v346;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v346;
                  goto LABEL_155;
                case 7:
                  swift_unownedRetainStrong();
                  v289 = *(v228 + 24);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v290 = *(v228 + 96);

                  sub_1C44048BC();
                  v291 = sub_1C440FE90();
                  sub_1C4440C6C(v291);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v62 = *(v228 + 304);

                  v292 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v293 = sub_1C4404370(v292);
                  sub_1C443039C(v293);
                  v294 = MEMORY[0x1E69E6530];
                  v295[7] = MEMORY[0x1E69E6530];
                  v296 = MEMORY[0x1E69A0180];
                  v295[8] = MEMORY[0x1E69A0180];
                  v295[9] = v290;
                  v295[4] = v289;
                  v295[12] = v294;
                  v295[13] = v296;
                  sub_1C442E6E0(v295);
                  sub_1C4EFC088();
                  v297 = sub_1C441AA1C();
                  v298(v297);
                  v180 = v347;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v347;
                  goto LABEL_155;
                case 8:
                  memcpy(v389, v390, 0x48uLL);
                  v235 = sub_1C4416544();
                  sub_1C44600A0(v235, v236, &qword_1EC0C6358, &unk_1C4F6BAB8);
                  v62 = v356;
                  sub_1C4EF9C88();
                  sub_1C4EF9AD8();
                  v237 = sub_1C4418CD8();
                  v238(v237);
                  sub_1C44048BC();
                  v239 = sub_1C440FE90();
                  sub_1C441E000(v239);
                  v85 = v227;
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v62 = *(v180 + 16);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v240 = swift_allocObject();
                  *(v240 + 16) = v371;
                  *(v240 + 56) = MEMORY[0x1E69E63B0];
                  *(v240 + 64) = MEMORY[0x1E69A0168];
                  *(v240 + 32) = v2;
                  *(v240 + 96) = MEMORY[0x1E69E6370];
                  *(v240 + 104) = MEMORY[0x1E69A0150];
                  *(v240 + 72) = 1;
                  *(v240 + 136) = MEMORY[0x1E69E6530];
                  *(v240 + 144) = MEMORY[0x1E69A0180];
                  *(v240 + 112) = v228;
                  sub_1C442E6E0(v240);
                  sub_1C4EFC088();
                  v180 = v367;
                  (*v330)(v228, v367);
                  sub_1C43FCF64();
                  sub_1C440BAA8(v241, v242, v243, v180);
                  sub_1C4EFC0A8();

                  sub_1C4CF64B0(v390);
                  v244 = v355;
                  goto LABEL_155;
                case 9:
                  memcpy(v389, v390, 0x48uLL);
                  v251 = sub_1C4416544();
                  sub_1C44600A0(v251, v252, &qword_1EC0C6358, &unk_1C4F6BAB8);
                  v62 = v356;
                  sub_1C4EF9C88();
                  sub_1C4EF9AD8();
                  v253 = sub_1C4418CD8();
                  v254(v253);
                  sub_1C44048BC();
                  v255 = sub_1C440FE90();
                  sub_1C441E000(v255);
                  if (v227)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v62 = *(v180 + 16);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v256 = swift_allocObject();
                  *(v256 + 16) = v371;
                  *(v256 + 56) = MEMORY[0x1E69E63B0];
                  *(v256 + 64) = MEMORY[0x1E69A0168];
                  *(v256 + 32) = v2;
                  *(v256 + 96) = MEMORY[0x1E69E6370];
                  *(v256 + 104) = MEMORY[0x1E69A0150];
                  *(v256 + 72) = 0;
                  *(v256 + 136) = MEMORY[0x1E69E6530];
                  *(v256 + 144) = MEMORY[0x1E69A0180];
                  *(v256 + 112) = v228;
                  sub_1C442E6E0(v256);
                  sub_1C4EFC088();
                  v257 = sub_1C441AA1C();
                  v258(v257);
                  v180 = v354;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v354;
                  goto LABEL_155;
                case 0xALL:
                case 0xBLL:
                case 0xCLL:
                  goto LABEL_156;
                default:
                  swift_unownedRetainStrong();
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v229 = sub_1C440FE90();
                  sub_1C441E000(v229);
                  if (v227)
                  {
LABEL_166:

                    sub_1C4CF64B0(v390);
                    sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
                    sub_1C444AF3C(v393);
                    goto LABEL_174;
                  }

                  sub_1C440262C();
                  v62 = *(v180 + 40);

                  v230 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v231 = sub_1C4404370(v230);
                  sub_1C443039C(v231);
                  v233 = 0xE400000000000000;
                  v234 = 1702259052;
                  switch(v228)
                  {
                    case 1:
                      v234 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v233 = v335;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_137;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_145;
                    case 6:
                      sub_1C440B7A4();
LABEL_145:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_137:
                      v234 = v307 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v233 = v336;
                      break;
                    default:
                      break;
                  }

                  v232[7] = MEMORY[0x1E69E6158];
                  v232[8] = MEMORY[0x1E69A0138];
                  v232[4] = v234;
                  v232[5] = v233;
                  v232[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v232, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v311 = sub_1C441AA1C();
                  v312(v311);
                  v180 = v349;
                  sub_1C4408154();
                  v85 = 0;

                  sub_1C4CF64B0(v390);
                  v244 = v349;
LABEL_155:
                  result = sub_1C4423A0C(v244, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_156:
                  if (v374 == v225)
                  {
                    goto LABEL_162;
                  }

                  v224 = *(v375 + 16);
                  v226 += 72;
                  ++v225;
                  break;
              }
            }
          }

LABEL_162:
          if (*v372 == 2)
          {
            sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C444AF3C(v393);

            v62 = 0;
          }

          else
          {
LABEL_164:
            switch(BYTE1(v358))
            {
              case 1:
                sub_1C44500CC(v397);
                v62 = v397;
                v315 = v85;
                v316 = sub_1C4CF1B98();
                break;
              case 2:
                sub_1C44500CC(v398);
                v62 = v398;
                v315 = v85;
                sub_1C4CF1EE0();
                break;
              case 3:
                _s13OutputBuilderCMa();
                v317 = swift_allocObject();
                sub_1C4CF05C4();

                sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
                sub_1C444AF3C(v393);
                swift_beginAccess();
                v62 = *(v317 + 16);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v320 = v317;
                goto LABEL_176;
              case 4:
                sub_1C44500CC(v399);
                v62 = v399;
                v315 = v85;
                v316 = sub_1C4CF36D8();
                break;
              case 5:
                sub_1C44500CC(v400);
                v62 = v400;
                v315 = v85;
                v316 = sub_1C4CF4CD4();
                break;
              default:
                sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
                sub_1C444AF3C(v393);

                v62 = 32123;
                goto LABEL_176;
            }

            if (v315)
            {
              sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
              sub_1C444AF3C(v393);

LABEL_174:

              goto LABEL_161;
            }

            v62 = v316;
            sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C444AF3C(v393);
          }

LABEL_176:

          sub_1C44500CC(v389);
          sub_1C4CF6448(v389);
          return v62;
        }

        if (v180 >= *(v368 + 16))
        {
          __break(1u);
          sub_1C444AF3C(v393);
          sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);

          sub_1C4CF64B0(v390);
          sub_1C4423A0C(v353, &unk_1EC0C06C0, &unk_1C4F10DB0);
          goto LABEL_161;
        }

        v183 = v182;
        v364 = v180;
        v184 = v362 + 240 * v180;
        memcpy(v390, v184, sizeof(v390));
        v185 = *(v184 + 200);
        v186 = *(v184 + 216);
        v187 = *(v184 + 184);
        v425 = *(v184 + 232);
        v424[1] = v185;
        v424[2] = v186;
        v424[0] = v187;
        v188 = *(&v390[10] + 1);
        v189 = *&v390[11];
        v419 = v390[8];
        v421 = *(&v390[9] + 8);
        v190 = *(&v390[7] + 1);
        v420 = *&v390[9];
        v422 = *(&v390[10] + 1);
        v423 = *&v390[11];
        v191 = *&v390[7];
        v375 = *(&v390[4] + 8);
        v415 = *(&v390[4] + 8);
        v417 = v390[6];
        v416 = *(&v390[5] + 1);
        v418 = v390[7];
        memcpy(v414, v184, sizeof(v414));
        *&v372[8] = *&v390[0];
        memcpy(v426, &v391[10] + 8, sizeof(v426));
        _s30SourceListenerValidationResultCMa();
        swift_allocObject();
        sub_1C44600A0(v390, v389, &qword_1EC0C6350, &qword_1C4F6BAB0);
        sub_1C444AAD0(v390, v389);
        *&v371 = v191;
        *v372 = v190;
        sub_1C4431E64(v191, v190);
        v365 = v188;
        v369 = v189;
        sub_1C4431E64(v188, v189);
        sub_1C4CF6410(v426, v389);
        v192 = sub_1C4CEFFEC(v414, &v415, &v419, v424, v426);
        v62 = v192[266];
        v193 = v375;
        v182 = v183;
        sub_1C4CEB1AC();
        if (v85)
        {
          sub_1C444AF3C(v393);
          sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
          sub_1C441DFEC(v365, v369);

          sub_1C441DFEC(v371, *v372);
          sub_1C44528B0(v390);
          goto LABEL_160;
        }

        v192[282] = v194 & 1;
        if (v62)
        {
          if (v194)
          {
            goto LABEL_50;
          }

          v410[0] = v192;
          v361 &= 3u;
          v410[4] = v361;
          v411 = v343 & 1 | 0x7000000000000000;
          v201 = v410;
          v343 = v411;
        }

        else
        {
          if ((v194 & 1) == 0)
          {
            goto LABEL_50;
          }

          v412[0] = v192;
          v359 &= 3u;
          v412[4] = v359;
          v413 = v342 & 1 | 0x6000000000000000;
          v201 = v412;
          *&v342 = v413;
        }

        swift_unownedRetain();
        sub_1C4CEF83C(v201);
        swift_unownedRelease();
LABEL_50:
        v202 = v192[264];
        if (v202 != 2)
        {
          sub_1C4836594(v192[16], v383, v195, v196, v197, v198, v199, v200, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, *(&v332 + 1), v333, v334, v335, v336, v337, *(&v337 + 1));
          v192[280] = v203 & 1;
          if (v202)
          {
            if ((v203 & 1) == 0)
            {
              v408[0] = v192[16];
              v408[1] = v192;
              v333 &= 1u;
              v334 &= 3u;
              v408[4] = v334;
              v408[6] = v333;
              v204 = v408;
LABEL_56:
              swift_unownedRetain();
              sub_1C4CEF83C(v204);
              swift_unownedRelease();
            }
          }

          else if (v203)
          {
            v409[0] = v192[16];
            v409[1] = v192;
            v331 = v331 & 1 | 0x1000000000000000;
            *&v332 = v332 & 3;
            v409[4] = v332;
            v409[6] = v331;
            v204 = v409;
            goto LABEL_56;
          }
        }

        v205 = v192[268];
        if (v205 != 2)
        {
          v206 = *(v383 + 16);
          v192[284] = v206 != 0;
          if ((v205 & 1) != 0 && !v206)
          {
            v207 = v341 & 1 | 0x2000000000000000;
            v407[0] = v192;
            v344 &= 3u;
            v407[4] = v344;
            v407[6] = v207;
            swift_unownedRetain();
            sub_1C4CEF83C(v407);
            swift_unownedRelease();
            v341 = v207;
          }
        }

        v208 = v192[267];
        if (v208 != 2)
        {
          v338 = 0;
          v209 = v383;
          v210 = *(v383 + 16);
          *&v375 = v193;
          if (v210)
          {
            sub_1C4F02AF8();
            sub_1C4F01298();
            v211 = sub_1C4F02B68();
            v212 = -1 << *(v209 + 32);
            v213 = v211 & ~v212;
            if ((*(v209 + 56 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213))
            {
              v214 = ~v212;
              while (2)
              {
                switch(*(*(v209 + 48) + v213))
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 7:
                  case 8:
                  case 9:
                  case 0xA:
                    goto LABEL_67;
                  case 5:
                  case 6:
                    sub_1C44400F4();
LABEL_67:
                    v215 = sub_1C4F02938();

                    if (v215)
                    {
                      goto LABEL_71;
                    }

                    v213 = (v213 + 1) & v214;
                    if (((*(v209 + 56 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213) & 1) == 0)
                    {
                      goto LABEL_71;
                    }

                    continue;
                  default:

                    v215 = 1;
                    goto LABEL_71;
                }
              }
            }
          }

          v215 = 0;
LABEL_71:
          v192[283] = v215 & 1;
          if (v215)
          {
            v85 = v338;
            v182 = v373;
          }

          else
          {
            v85 = v338;
            v182 = v373;
            if (v208)
            {
              v216 = v339 & 1 | 0x3000000000000000;
              v406[0] = v192;
              *(&v342 + 1) = BYTE8(v342) & 3;
              v406[4] = *(&v342 + 1);
              v406[6] = v216;
              swift_unownedRetain();
              sub_1C4CEF83C(v406);
              swift_unownedRelease();
              v339 = v216;
            }
          }
        }

        v62 = v192[265];
        if (v62 != 2)
        {
          sub_1C4CEAE64();
          if (v85)
          {
            sub_1C444AF3C(v393);
            sub_1C4423A0C(v392, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C44528B0(v390);
            sub_1C441DFEC(v365, v369);

            sub_1C441DFEC(v371, *v372);
LABEL_160:

LABEL_161:
            sub_1C44500CC(v389);
            sub_1C4CF6448(v389);
            return v62;
          }

          v192[281] = v217 & 1;
          if (v62)
          {
            if (v217)
            {
              goto LABEL_83;
            }

            v402[0] = v192;
            v328 &= 3u;
            v402[4] = v328;
            v403 = v326 & 1 | 0x5000000000000000;
            v218 = v402;
            v326 = v403;
          }

          else
          {
            if ((v217 & 1) == 0)
            {
              goto LABEL_83;
            }

            v404[0] = v192;
            v327 &= 3u;
            v404[4] = v327;
            v405 = v325 & 1 | 0x4000000000000000;
            v218 = v404;
            v325 = v405;
          }

          swift_unownedRetain();
          sub_1C4CEF83C(v218);
          swift_unownedRelease();
        }

LABEL_83:

        MEMORY[0x1C6940330](v219);
        if (*((*(&v391[18] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v391[18] + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        v180 = v364 + 1;
        v62 = &v391[18] + 8;
        sub_1C4F01748();
        sub_1C441DFEC(v365, v369);
        sub_1C441DFEC(v371, *v372);
        sub_1C44528B0(v390);
      }
    }

    v332 = *v392;
    v327 = *&v392[24];
    v328 = *&v392[40];
    LODWORD(v326) = v392[16];
    v331 = *&v392[32];
    v385 = v392[34] & 1;
    v335 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    sub_1C4406298();
    v89 = swift_allocObject();
    sub_1C445EACC(v89);
    v90[7] = v76;
    v90[8] = v88;
    *&v372[8] = v332;
    v90[4] = v332;
    v91 = v366;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v92 = v367;
    v334 = *v87;
    (v334)(v91, v367);
    v93 = v363;
    sub_1C43FCF64();
    sub_1C440BAA8(v94, v95, v96, v92);
    v97 = sub_1C444C538();
    memset(v391, 0, 40);
    *&v375 = v97;
    sub_1C444B3C4();
    v336 = sub_1C4EFB398();
    sub_1C4423A0C(v391, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v93, &unk_1EC0C06C0, &unk_1C4F10DB0);
    sub_1C4406298();
    v98 = swift_allocObject();
    sub_1C445EACC(v98);
    v99[7] = MEMORY[0x1E69E6530];
    v99[8] = MEMORY[0x1E69A0180];
    v99[4] = *&v372[8];
    sub_1C4EFB728();
    sub_1C4EFC088();
    (v334)(v91, v92);
    v100 = v362;
    sub_1C43FCF64();
    sub_1C440BAA8(v101, v102, v103, v92);
    memset(v391, 0, 40);
    sub_1C444B3C4();
    v333 = sub_1C4EFB398();
    v85 = 0;
    HIDWORD(v324) = BYTE3(v331) & 1;
    LODWORD(v325) = (v331 >> 8) & 1;
    v322 = (v331 >> 40) & 1;
    v323 = HIDWORD(v331) & 1;
    sub_1C4423A0C(v391, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v100, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_10:
    v76 = MEMORY[0x1E69E6530];
    v62 = v336;
    sub_1C4788C20();
    if (v85)
    {

      goto LABEL_31;
    }

    v104 = *&v391[3];
    if (*&v391[3] >> 60 != 11)
    {
      break;
    }

    v87 = v330;
    v88 = MEMORY[0x1E69A0180];
  }

  v105 = v92;
  v361 = *(&v391[0] + 1);
  v344 = *&v391[0];
  *&v371 = *(&v391[1] + 1);
  v106 = *&v391[1];
  *v372 = v391[2];
  swift_unownedRetainStrong();
  sub_1C4440C6C(v376);
  v364 = v106;
  v369 = v104;

  sub_1C4406298();
  v107 = swift_allocObject();
  sub_1C445EACC(v107);
  v108[7] = v76;
  v108[8] = MEMORY[0x1E69A0180];
  v108[4] = v106;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v109 = sub_1C43FE990();
  (v334)(v109);
  v110 = v365;
  sub_1C43FCF64();
  sub_1C440BAA8(v111, v112, v113, v105);
  sub_1C444C5E8();
  memset(v387, 0, sizeof(v387));
  v388 = 0;
  sub_1C444B3C4();
  sub_1C4EFB408();
  sub_1C4423A0C(v387, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4423A0C(v110, &unk_1EC0C06C0, &unk_1C4F10DB0);
  memcpy(v389, v391, 0x48uLL);
  v384 = *&v391[1];
  v382 = v391[2];
  v383 = v391[0];
  v381 = v389[6];
  *v380 = *(&v391[3] + 1);
  *&v380[15] = *&v391[4];
  if (v389[3])
  {
    v339 = v389[3];

    result = sub_1C4788C20();
    v338 = 0;
    *&v375 = *&v390[3];
    v114 = v364;
    if (*&v390[3] >> 60 == 11)
    {
      goto LABEL_179;
    }

    v115 = v390[1];
    v116 = *&v390[2];
    v342 = v390[0];
    v343 = *(&v390[2] + 1);
    sub_1C4CF64E0(*&v390[0], *(&v390[0] + 1), *&v390[1], *(&v390[1] + 1), *&v390[2], *(&v390[2] + 1), v375);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v117 = v344;
    v118 = v361;
    sub_1C447F3A4();
    sub_1C4CF64E0(v119, v120, v121, v122, v123, v124, v125);
    sub_1C44600A0(v389, v390, &qword_1EC0C6340, &qword_1C4F6BAA0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C440C820();
      sub_1C458DFC8();
      v368 = v154;
    }

    v126 = v339;
    v127 = *(v368 + 16);
    if (v127 >= *(v368 + 24) >> 1)
    {
      sub_1C458DFC8();
      v126 = v339;
      v368 = v155;
    }

    v390[0] = v383;
    *&v390[1] = v384;
    v379 = v382;
    v128 = v381;
    *(v378 + 15) = *&v380[15];
    v378[0] = *v380;
    v377[0] = *v386;
    *(v377 + 3) = *&v386[3];
    v129 = v385;
    v130 = v368;
    *(v368 + 16) = v127 + 1;
    v131 = v130 + 240 * v127;
    v132 = *&v390[1];
    *(v131 + 32) = v390[0];
    *(v131 + 48) = v132;
    *(v131 + 56) = v126;
    *(v131 + 64) = v379;
    *(v131 + 80) = v128;
    v133 = v378[0];
    v134 = *(v378 + 15);
    *(v131 + 232) = v326;
    LODWORD(v132) = v377[0];
    *(v131 + 236) = *(v377 + 3);
    *(v131 + 233) = v132;
    *(v131 + 250) = v129;
    *(v131 + 96) = v134;
    *(v131 + 104) = v117;
    *(v131 + 81) = v133;
    *(v131 + 112) = v118;
    *(v131 + 120) = v114;
    v135 = v371;
    v137 = *v372;
    v136 = *&v372[8];
    *(v131 + 128) = v371;
    *(v131 + 136) = v137;
    v138 = v369;
    *(v131 + 144) = v136;
    *(v131 + 152) = v138;
    v139 = v342;
    *(v131 + 160) = v342;
    *(v131 + 176) = v115;
    *(v131 + 192) = v116;
    v140 = v375;
    *(v131 + 200) = v343;
    *(v131 + 208) = v140;
    *(v131 + 216) = v332;
    *(v131 + 240) = v327;
    *(v131 + 248) = v331;
    *(v131 + 249) = v325;
    *(v131 + 251) = BYTE4(v324);
    *(v131 + 252) = v323;
    *(v131 + 253) = v322;
    *(v131 + 256) = v328;
    *(v131 + 264) = v341;
    if (v385 != 1)
    {
      v339 = v116;
      sub_1C4423A0C(v389, &qword_1EC0C6340, &qword_1C4F6BAA0);
      sub_1C44652C4(v344, v361, v364, v135, v137, v136, v138);
      sub_1C44652C4(v139, *(&v139 + 1), v115, *(&v115 + 1), v339, v343, v375);
      goto LABEL_26;
    }

    v92 = v367;
    if (v381)
    {
      sub_1C4423A0C(v389, &qword_1EC0C6340, &qword_1C4F6BAA0);
      v158 = sub_1C4413C50();
      sub_1C44652C4(v158, v159, v160, v161, v162, v163, v369);
      sub_1C44652C4(v342, *(&v342 + 1), v115, *(&v115 + 1), v115, v343, v375);
      v85 = v338;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C440C820();
        sub_1C458DF98();
        v319 = v156;
      }

      v141 = *(v319 + 16);
      if (v141 >= *(v319 + 24) >> 1)
      {
        sub_1C458DF98();
        v319 = v157;
      }

      sub_1C447F3A4();
      sub_1C44652C4(v142, v143, v144, v145, v146, v147, v148);
      sub_1C44652C4(v342, *(&v342 + 1), v115, *(&v115 + 1), v115, v343, v375);
      v149 = v319;
      *(v319 + 16) = v141 + 1;
      v150 = v149 + 72 * v141;
      v151 = v384;
      *(v150 + 32) = v383;
      v152 = v339;
      *(v150 + 48) = v151;
      *(v150 + 56) = v152;
      *(v150 + 64) = v382;
      *(v150 + 80) = v381;
      v153 = *v380;
      *(v150 + 96) = *&v380[15];
      *(v150 + 81) = v153;
LABEL_26:
      v85 = v338;
      v92 = v367;
    }

    goto LABEL_10;
  }

  *&v390[0] = v364;
  v62 = sub_1C4F02858();
  v165 = v164;
  sub_1C450B034();
  swift_allocError();
  *v166 = v62;
  *(v166 + 8) = v165;
  *(v166 + 16) = xmmword_1C4F5A290;
  *(v166 + 32) = 0;
  *(v166 + 40) = 0xE000000000000000;
  *(v166 + 48) = v390[0];
  *(v166 + 64) = 0;
  swift_willThrow();

  v167 = v369;

  v168 = sub_1C4413C50();
  sub_1C44652C4(v168, v169, v170, v171, v172, v173, v167);

LABEL_31:
  sub_1C444AF3C(v393);

  return v62;
}

uint64_t *sub_1C4CEF3C8@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X4>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>, uint64_t *a6@<X3>, uint64_t a7@<X5>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v31 = *a6;
  v12 = *(a6 + 8);
  v29 = *(a6 + 2);
  v30 = *(a6 + 1);
  v28 = a6[7];
  v26 = a6[6];
  v27 = a6[8];
  v13 = MEMORY[0x1E69E7CC0];
  *&__srca[15] = MEMORY[0x1E69E7CC0];
  sub_1C456902C(&unk_1EC0C6380, &qword_1C4F37698);
  sub_1C4C41B64();
  *(&__srca[15] + 1) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6390, qword_1C4F6BAE0);
  *&__srca[16] = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  *(&__srca[16] + 1) = sub_1C4F00F28();
  *&__srca[17] = v13;
  *(&__srca[17] + 1) = v13;
  *&__srca[18] = v13;
  *(&__srca[18] + 1) = v13;
  *&__srca[19] = v13;
  *(&__srca[19] + 1) = v13;
  *&__srca[0] = a3;
  *(&__srca[0] + 1) = a4;
  *&__srca[1] = a5;
  memcpy(&__srca[1] + 8, a6, 0x48uLL);
  memcpy(&__srca[6], __src, 0x48uLL);
  if (v12)
  {
    sub_1C4443048(a6, &v45);
    sub_1C44600A0(__src, &v45, &qword_1EC0C6340, &qword_1C4F6BAA0);

    *(&__srca[10] + 1) = v31;
    *&__srca[11] = v12 & 7;
    *(&__srca[12] + 8) = v29;
    *(&__srca[11] + 8) = v30;
    *(&__srca[13] + 1) = v26 & 0x101;
    *&__srca[14] = v28;
    *(&__srca[14] + 1) = v27;
    v14 = a6[3];
    v15 = a6[4];
    *&v45 = v12;
    *(&v45 + 1) = v14;
    *&v46 = v15;
    *&v47 = 0;
    v48 = 0xA000000000000000;
    sub_1C4443048(a6, &v38);
  }

  else
  {
    if (!*(a7 + 16))
    {
      sub_1C4443048(a6, &v45);
      sub_1C44600A0(__src, &v45, &qword_1EC0C6340, &qword_1C4F6BAA0);

      if (a6[8] >> 60 != 15 || (a6[5] & 1) != 0)
      {
        *(&__srca[10] + 1) = 1;
        memset(&__srca[11], 0, 40);
        *(&__srca[13] + 1) = 0x8000000000000000;
        __srca[14] = 0uLL;
      }

      else
      {
        *(&__srca[12] + 8) = 0u;
        *(&__srca[11] + 8) = 0u;
        *(&__srca[10] + 8) = 0u;
        __srca[14] = 0uLL;
        *(&__srca[13] + 1) = 0x8000000000000000;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v49 = 0;
        v50 = 0;
        v48 = 0xC000000000000000;
        sub_1C4CEF83C(&v45);
      }

      goto LABEL_6;
    }

    *(&__srca[10] + 1) = a7;
    *&__srca[11] = 0;
    *(&__srca[13] + 1) = 0x4000000000000000;
    *&v45 = a7;
    *&v47 = 0;
    v48 = 0xB000000000000000;
    sub_1C4443048(a6, &v38);
    sub_1C44600A0(__src, &v38, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEF83C(&v45);

LABEL_6:
  if ((a6[6] & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v38 = 1;
    v41 = 0;
    v44 = 0;
    v42 = 0xC000000000000000;
    v43 = 0;
    sub_1C4CEF83C(&v38);
  }

  v16 = __src[3];
  if (v16)
  {
    v17 = __src[1];
    v18 = __src[2];
    v19 = __src[5];
    v21 = __src[7];
    v20 = __src[8];
    v22 = *(__src + 48);
    if (v22)
    {
      if ((a6[5] & 1) == 0 && a6[8] >> 60 == 15)
      {
        v23 = __src[4] & 3;
        v24 = 0x9000000000000000;
LABEL_17:
        v37[0] = *__src;
        v37[1] = v17;
        v37[2] = v18;
        v37[3] = v16;
        v37[4] = v23;
        v37[5] = v19;
        v37[6] = v24 & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
        v37[7] = v21;
        v37[8] = v20;
        memcpy(v35, __dst, sizeof(v35));
        sub_1C444AAD0(v35, v34);
        sub_1C4CEF83C(v37);
        sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
        sub_1C444AF3C(a6);
        sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
        return memcpy(a1, __srca, 0x140uLL);
      }
    }

    else if (a6[8] >> 60 != 15)
    {
      v23 = __src[4] & 3;
      v24 = 0x8000000000000000;
      goto LABEL_17;
    }

    sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  sub_1C444AF3C(a6);
  return memcpy(a1, __srca, 0x140uLL);
}

uint64_t sub_1C4CEF83C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1;
  switch(a1[6] >> 60)
  {
    case 2uLL:
      swift_unownedRetainStrong();
      v33 = *(v2 + 240);

      swift_isUniquelyReferenced_nonNull_native();
      v34 = v1[32];
      v63[0] = v4[32];
      v35 = sub_1C457B5CC(v33);
      if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
      {
        goto LABEL_31;
      }

      v37 = v35;
      v38 = v36;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v39 = v63[0];
      if (sub_1C4F02458())
      {
        v40 = sub_1C457B5CC(v33);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_33;
        }

        v37 = v40;
      }

      v4[32] = v63[0];
      if ((v38 & 1) == 0)
      {
        sub_1C457EB24();
      }

      v42 = *(v39 + 56) + 8 * v37;
      sub_1C4589438();
      v43 = *(*v42 + 16);
      sub_1C4589FD0();
      v44 = *v42;
      *(v44 + 16) = v43 + 1;
      memcpy((v44 + 72 * v43 + 32), a1, 0x48uLL);
      swift_unownedRetain();
      sub_1C4589438();
      v45 = *(v4[39] + 16);
      sub_1C4589FD0();
      v46 = v4[39];
      *(v46 + 16) = v45 + 1;
      memcpy((v46 + 72 * v45 + 32), a1, 0x48uLL);
      v4[39] = v46;

      return swift_unownedRetain();
    case 3uLL:
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4589438();
      v47 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v48 = *(v2 + 272);
      *(v48 + 16) = v47 + 1;
      memcpy((v48 + 72 * v47 + 32), a1, 0x48uLL);
      *(v2 + 272) = v48;
      swift_endAccess();
      swift_unownedRetain();

      sub_1C4589438();
      v49 = *(v4[36] + 16);
      sub_1C4589FD0();
      v50 = v4[36];
      *(v50 + 16) = v49 + 1;
      memcpy((v50 + 72 * v49 + 32), a1, 0x48uLL);
      v4[36] = v50;
      swift_unownedRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v4[32];
      v51 = sub_1C457B5CC(0);
      if (__OFADD__(*(v63[0] + 16), (v52 & 1) == 0))
      {
        goto LABEL_32;
      }

      v53 = v51;
      v54 = v52;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v55 = v63[0];
      if (sub_1C4F02458())
      {
        v56 = sub_1C457B5CC(0);
        if ((v54 & 1) != (v57 & 1))
        {
          goto LABEL_33;
        }

        v53 = v56;
      }

      v4[32] = v63[0];
      if ((v54 & 1) == 0)
      {
        sub_1C457EB24();
      }

      v58 = *(v55 + 56) + 8 * v53;
      sub_1C4589438();
      v59 = *(*v58 + 16);
      sub_1C4589FD0();
      v60 = *v58;
      *(v60 + 16) = v59 + 1;
      memcpy((v60 + 72 * v59 + 32), a1, 0x48uLL);
      swift_unownedRetain();
      sub_1C4589438();
      v61 = *(v4[39] + 16);
      sub_1C4589FD0();
      v62 = v4[39];
      *(v62 + 16) = v61 + 1;
      memcpy((v62 + 72 * v61 + 32), a1, 0x48uLL);
      v4[39] = v62;
      return swift_unownedRetain();
    case 4uLL:
    case 5uLL:
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v63);
      sub_1C4589438();
      v8 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v9 = *(v2 + 272);
      *(v9 + 16) = v8 + 1;
      memcpy((v9 + 72 * v8 + 32), a1, 0x48uLL);
      *(v2 + 272) = v9;
      swift_endAccess();

      sub_1C4589438();
      v10 = *(v4[36] + 16);
      sub_1C4589FD0();
      v11 = v4[36];
      *(v11 + 16) = v10 + 1;
      memcpy((v11 + 72 * v10 + 32), a1, 0x48uLL);
      v4[36] = v11;
      goto LABEL_13;
    case 6uLL:
    case 7uLL:
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v63);
      sub_1C4589438();
      v12 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v13 = *(v2 + 272);
      *(v13 + 16) = v12 + 1;
      memcpy((v13 + 72 * v12 + 32), a1, 0x48uLL);
      *(v2 + 272) = v13;
      swift_endAccess();

      sub_1C4589438();
      v14 = *(v4[34] + 16);
      sub_1C4589FD0();
      v15 = v4[34];
      *(v15 + 16) = v14 + 1;
      memcpy((v15 + 72 * v14 + 32), a1, 0x48uLL);
      v4[34] = v15;
      goto LABEL_13;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      sub_1C4589438();
      v6 = *(v1[30] + 16);
      sub_1C4589FD0();
      v7 = v1[30];
      *(v7 + 16) = v6 + 1;
      memcpy((v7 + 72 * v6 + 32), a1, 0x48uLL);
      v4[30] = v7;
      goto LABEL_13;
    default:
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v63);
      sub_1C4589438();
      v16 = *(*(v3 + 272) + 16);
      sub_1C4589FD0();
      v17 = *(v3 + 272);
      *(v17 + 16) = v16 + 1;
      memcpy((v17 + 72 * v16 + 32), a1, 0x48uLL);
      *(v3 + 272) = v17;
      swift_endAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v4[32];
      v18 = v63[0];
      v19 = sub_1C457B5CC(v2);
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v21 = v19;
      v22 = v20;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v23 = sub_1C4F02458();
      v24 = v63[0];
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      v25 = sub_1C457B5CC(v2);
      if ((v22 & 1) != (v26 & 1))
      {
LABEL_33:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      v21 = v25;
LABEL_10:
      v4[32] = v24;
      if ((v22 & 1) == 0)
      {
        sub_1C457EB24();
      }

      v27 = *(v24 + 56) + 8 * v21;
      sub_1C4589438();
      v28 = *(*v27 + 16);
      sub_1C4589FD0();
      v29 = *v27;
      *(v29 + 16) = v28 + 1;
      memcpy((v29 + 72 * v28 + 32), a1, 0x48uLL);
LABEL_13:
      sub_1C4CF6478(a1, v63);
      sub_1C4589438();
      v30 = *(v4[39] + 16);
      sub_1C4589FD0();
      v31 = v4[39];
      *(v31 + 16) = v30 + 1;
      memcpy((v31 + 72 * v30 + 32), a1, 0x48uLL);
      v4[39] = v31;
      return sub_1C4CF6478(a1, v63);
  }
}

uint64_t sub_1C4CEFFEC(char *__src, uint64_t a2, uint64_t a3, __int128 *a4, int8x16_t *a5)
{
  *(v5 + 280) = 33554946;
  *(v5 + 284) = 2;
  memcpy((v5 + 24), __src, 0x48uLL);
  v11 = *(a2 + 16);
  *(v5 + 96) = *a2;
  *(v5 + 112) = v11;
  *(v5 + 128) = *(a2 + 32);
  *(v5 + 144) = *(a2 + 48);
  v12 = *(a3 + 16);
  *(v5 + 152) = *a3;
  *(v5 + 168) = v12;
  *(v5 + 184) = *(a3 + 32);
  *(v5 + 200) = *(a3 + 48);
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  *(v5 + 256) = *(a4 + 6);
  *(v5 + 224) = v14;
  *(v5 + 240) = v15;
  *(v5 + 208) = v13;
  v16 = *(a4 + 32);
  *(v5 + 272) = MEMORY[0x1E69E7CC0];
  v17 = a5[3].u64[0];
  *(v5 + 16) = v16;
  if (!(v17 >> 62))
  {
    sub_1C4CF6BE0(a5);
    *(v5 + 264) = 0x2000000;
    *(v5 + 268) = 2;
    return v5;
  }

  if (v17 >> 62 == 1)
  {
    sub_1C444AAD0(__src, v42);
    sub_1C4CF6BE0(a5);
    *(v5 + 264) = 0;
    sub_1C44528B0(__src);
    *(v5 + 266) = (__src[48] & 1) == 0;
    *(v5 + 267) = 514;
    return v5;
  }

  if (v17 != 0x8000000000000000 || (v18 = vorrq_s8(a5[1], a5[2]), a5->i64[0] | *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a5[3].i64[1] | a5[4].i64[0] | a5->i64[1]))
  {
    if (sub_1C4424B10(v16) == 1701736302 && v23 == 0xE400000000000000)
    {
      sub_1C444808C(a4, v42);

      goto LABEL_20;
    }

    v25 = sub_1C4F02938();
    sub_1C444AAD0(__src, v42);
    sub_1C444808C(a4, v42);
    sub_1C444C58C(a2, v42);
    sub_1C444C58C(a3, v42);

    if (v25)
    {
      sub_1C444053C(a3);
      sub_1C444053C(a2);
      sub_1C44528B0(__src);
LABEL_20:
      sub_1C44636BC(a4);
      *(v5 + 268) = 2;
      v26 = 33554434;
LABEL_21:
      *(v5 + 264) = v26;
      return v5;
    }

    sub_1C4409528(*(a4 + 16));
    if (v30 == 0x7055737961776C61 && v29 == 0xEC00000065746164)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        if (*(__src + 5) == *(a2 + 24))
        {
          sub_1C444053C(a3);
          sub_1C444053C(a2);
          sub_1C44528B0(__src);
          sub_1C44636BC(a4);
          *(v5 + 268) = 2;
          v26 = 33620482;
          goto LABEL_21;
        }

        *(v5 + 266) = 0;
        if (sub_1C4424B10(*(v5 + 16)) == 1702259052 && v33 == 0xE400000000000000)
        {
        }

        else
        {
          v35 = sub_1C4F02938();

          if ((v35 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_1C4409528(__src[8]);
        if (v37 == 2003134838 && v36 == 0xE400000000000000)
        {
        }

        else
        {
          v39 = sub_1C4F02938();

          if ((v39 & 1) == 0)
          {
LABEL_50:
            *(v5 + 264) = 1;
            *(v5 + 268) = 2;
            goto LABEL_53;
          }
        }

        *(v5 + 268) = 1;
        *(v5 + 264) = 2;
LABEL_53:
        sub_1C44636BC(a4);
        if (*(a4 + 33))
        {
          sub_1C4EF9AE8();
          v41 = v40;
          sub_1C444053C(a3);
          sub_1C44528B0(__src);
          sub_1C444053C(a2);
          if (*(a2 + 32) >= v41)
          {
            *(v5 + 267) = 2;
            *(v5 + 265) = 1;
          }

          else
          {
            *(v5 + 267) = 1;
            *(v5 + 265) = 0;
          }
        }

        else
        {
          sub_1C444053C(a3);
          sub_1C444053C(a2);
          sub_1C44528B0(__src);
          *(v5 + 265) = 0;
          *(v5 + 267) = 2;
        }

        return v5;
      }
    }

    sub_1C444053C(a3);
    sub_1C444053C(a2);
    sub_1C44528B0(__src);
    sub_1C44636BC(a4);
    *(v5 + 268) = 2;
    v26 = 33554433;
    goto LABEL_21;
  }

  if (sub_1C4424B10(v16) == 1701736302 && v19 == 0xE400000000000000)
  {
    sub_1C444808C(a4, v42);

    goto LABEL_23;
  }

  v21 = sub_1C4F02938();
  sub_1C444808C(a4, v42);

  if (v21)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v22 = 1;
LABEL_24:
  *(v5 + 264) = v22;
  *(v5 + 265) = 0;
  sub_1C44636BC(a4);
  if (*(a4 + 33))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  *(v5 + 267) = v27;
  *(v5 + 268) = 2;
  return v5;
}

void *sub_1C4CF0510()
{
  v1 = v0[10];
  v2 = v0[11];

  sub_1C441DFEC(v1, v2);
  sub_1C441DFEC(v0[17], v0[18]);
  sub_1C441DFEC(v0[24], v0[25]);

  return v0;
}

uint64_t sub_1C4CF0570()
{
  sub_1C4CF0510();

  return swift_deallocClassInstance();
}

void *sub_1C4CF05C4()
{
  v1 = v0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  sub_1C4EF93D8();
  swift_allocObject();
  v0[4] = sub_1C4EF93C8();
  v0[5] = MEMORY[0x1E69E7CC0];
  v2 = v0 + 5;
  swift_beginAccess();
  sub_1C4588BAC();
  v3 = *(*v2 + 16);
  sub_1C45897E8();
  sub_1C441C5F8(v3 + 1);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  *v2 = v5;
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4CF068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4409B14(v3 + 40, a2);
  sub_1C4CEC2C0();
  swift_endAccess();
  sub_1C4409B14(v3 + 16, v6);
  v7 = sub_1C43FE990();
  MEMORY[0x1C6940010](v7);
  swift_endAccess();

  if (a2)
  {
    v9 = sub_1C43FE99C();
    MEMORY[0x1C6940010](v9);
    MEMORY[0x1C6940010](14882, 0xE200000000000000);
    sub_1C4409B14(v3 + 16, v10);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    swift_endAccess();
  }

  sub_1C4409B14(v3 + 16, v8);
  MEMORY[0x1C6940010](a3, 0xE100000000000000);
  swift_endAccess();
  sub_1C4409B14(v3 + 40, v11);
  sub_1C4588BAC();
  sub_1C4410700();
  sub_1C441C5F8(a3 + 1);
  *(v12 + 32) = 44;
  *(v12 + 40) = 0xE100000000000000;
  *(v3 + 40) = v13;
  sub_1C4588BAC();
  sub_1C4410700();
  sub_1C441C5F8(a3 + 1);
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v3 + 40) = v15;
  return swift_endAccess();
}

uint64_t sub_1C4CF080C(uint64_t a1, uint64_t a2)
{
  sub_1C4409B14(v2 + 16, a2);
  MEMORY[0x1C6940010](a1, 0xE100000000000000);
  swift_endAccess();
  sub_1C4409B14(v2 + 40, v4);
  sub_1C4CEC2C0();
  swift_endAccess();
}

uint64_t sub_1C4CF0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C4409B14(v4 + 40, a2);
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  sub_1C4409B14(v5 + 16, v14);
  MEMORY[0x1C6940010](v15, v13);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  MEMORY[0x1C6940010](a3, a4);
  sub_1C4409B14(v5 + 16, v16);
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  sub_1C4409B14(v5 + 40, v17);
  sub_1C4588BAC();
  sub_1C4410700();
  sub_1C441C5F8(35);
  *(v18 + 32) = 44;
  *(v18 + 40) = 0xE100000000000000;
  *(v5 + 40) = v19;
  return swift_endAccess();
}

uint64_t sub_1C4CF09CC()
{

  return v0;
}

uint64_t sub_1C4CF09FC()
{
  sub_1C4CF09CC();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CF0A54(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 12);
  }

  else
  {
    return v1 >> 60;
  }
}

uint64_t sub_1C4CF0A74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C4CF0ABC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF0B30(uint64_t result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    v2 = *(result + 48) & 1 | (a2 << 60);
    *(result + 32) &= 3uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = (a2 - 12);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0xC000000000000000;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_1C4CF0B88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v150 = a3;
  v8 = sub_1C4F01188();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = 0;
  if (a4 >> 60 == 15)
  {
    return v15;
  }

  v15 = a5;
  switch(a5)
  {
    case 1u:
      _s20KnowledgeGraphSourceCMa();
      v17 = sub_1C43FE99C();
      sub_1C44344B8(v17, v18);
      v19 = sub_1C43FE99C();
      sub_1C4CDE560(v19, v20);
      v22 = v21;
      v24 = v23;
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      inited = swift_initStackObject();
      v26 = sub_1C4409364(inited, xmmword_1C4F0C890);
      v26[3].n128_u64[1] = 0xD000000000000022;
      v26[4].n128_u64[0] = 0x80000001C4FC5FD0;
      v26[4].n128_u64[1] = v22;
      v26[5].n128_u64[0] = 0xD00000000000001BLL;
      v26[5].n128_u64[1] = 0x80000001C4FAAFA0;
      v26[6].n128_u64[0] = v24;
      goto LABEL_17;
    case 2u:
      return 8738;
    case 3u:
      if (*(a1 + 32) && *(a1 + 32) == 1)
      {
        v34 = sub_1C43FD7E0();
        sub_1C44344B8(v34, v35);

        goto LABEL_27;
      }

      v57 = sub_1C4F02938();
      v58 = sub_1C43FD7E0();
      sub_1C44344B8(v58, v59);

      if (v57)
      {
LABEL_27:
        v60 = sub_1C43FD7E0();
        sub_1C44344B8(v60, v61);
        sub_1C43FD7E0();
        v62 = sub_1C44633C0();
        v64 = v63;
        v66 = v65;
        _s13OutputBuilderCMa();
        v67 = swift_initStackObject();
        sub_1C4CF05C4();
        sub_1C4CF0684(0, 0);
        if (v62)
        {
          v149 = v64;
          objc_opt_self();
          v68 = swift_dynamicCastObjCClass();
          if (v68)
          {
            v69 = v68;
            swift_unknownObjectRetain();
            sub_1C4CF0684(0xD000000000000010, 0x80000001C4FC6000);
            if ([v69 value])
            {
              objc_opt_self();
              v70 = swift_dynamicCastObjCClass();
              if (v70)
              {
                v71 = v70;
                v72 = [v70 streamId];
                v73 = sub_1C4F01138();
                v75 = v74;

                v76 = sub_1C442558C();
                sub_1C4CF6C10(v76, v77, v73, v75, v67);

                v78 = [v71 segmentName];
                v79 = sub_1C4F01138();
                v81 = v80;

                v82 = sub_1C441BE50();
                sub_1C4CF6C10(v82, v83, v79, v81, v67);

                [v71 iterationStartTime];
                sub_1C4433990(v84);
                sub_1C440A294([v71 offset]);
                v85 = swift_unknownObjectRelease();
LABEL_46:
                sub_1C4CF0804(v85, v86);
                v121 = swift_unknownObjectRelease();
                v64 = v149;
                goto LABEL_47;
              }

              swift_unknownObjectRelease();
            }

            v125 = [v69 upstreams];
            v126 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
            v127 = sub_1C4F01678();

            MEMORY[0x1C6940380](v127, v126);
            v129 = v128;

            v130 = sub_1C4426238();
            sub_1C4CF6C10(v130, v131, v132, v129, v67);

            *&v155 = [v69 value];
            sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
            v133 = sub_1C4F01198();
            sub_1C43FCB78(v133, v134);

            goto LABEL_46;
          }

          swift_unknownObjectRetain();
          sub_1C4CF6C10(0xD000000000000010, 0x80000001C4FC6000, 0xD000000000000020, 0x80000001C4FAAF50, v67);
          v121 = swift_unknownObjectRelease();
          v64 = v149;
        }

        else
        {
          v121 = sub_1C4CF0884(0xD000000000000010, 0x80000001C4FC6000, 1819047278, 0xE400000000000000);
        }

LABEL_47:
        sub_1C4CF0804(v121, v122);
        v135 = sub_1C43FD7E0();
        sub_1C441DFEC(v135, v136);
        swift_unknownObjectRelease();
        sub_1C441DFEC(v64, v66);
        goto LABEL_53;
      }

      v87 = sub_1C43FD7E0();
      sub_1C44344B8(v87, v88);
      v89 = sub_1C43FD7E0();
      v99 = sub_1C4440600(v89, v90);
      v101 = v100;
      _s13OutputBuilderCMa();
      v67 = swift_initStackObject();
      sub_1C4CF05C4();
      sub_1C4CF0684(0, 0);
      sub_1C4CF7188(0xD000000000000013, 0x80000001C4FAAF30, v67, v101);
      if (!v99)
      {
        v123 = sub_1C4CF0884(0x42746E6572727563, 0xEF6B72616D6B6F6FLL, 1819047278, 0xE400000000000000);
        goto LABEL_52;
      }

      objc_opt_self();
      v102 = swift_dynamicCastObjCClass();
      if (!v102)
      {
        swift_unknownObjectRetain();
        sub_1C4CF6C10(0x42746E6572727563, 0xEF6B72616D6B6F6FLL, 0xD000000000000020, 0x80000001C4FAAF50, v67);
        goto LABEL_51;
      }

      v103 = v102;
      swift_unknownObjectRetain();
      sub_1C4CF0684(0x42746E6572727563, 0xEF6B72616D6B6F6FLL);
      if (![v103 value])
      {
        goto LABEL_49;
      }

      objc_opt_self();
      v104 = swift_dynamicCastObjCClass();
      if (v104)
      {
        v105 = v104;
        v106 = [v104 streamId];
        v107 = sub_1C4F01138();
        v109 = v108;

        v110 = sub_1C442558C();
        sub_1C4CF6C10(v110, v111, v107, v109, v67);

        v112 = [v105 segmentName];
        v113 = sub_1C4F01138();
        v115 = v114;

        v116 = sub_1C441BE50();
        sub_1C4CF6C10(v116, v117, v113, v115, v67);

        [v105 iterationStartTime];
        sub_1C4433990(v118);
        sub_1C440A294([v105 offset]);
        v119 = swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
LABEL_49:
        v137 = [v103 upstreams];
        v138 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
        v139 = sub_1C4F01678();

        MEMORY[0x1C6940380](v139, v138);
        v141 = v140;

        v142 = sub_1C4426238();
        sub_1C4CF6C10(v142, v143, v144, v141, v67);

        *&v155 = [v103 value];
        sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
        v145 = sub_1C4F01198();
        sub_1C43FCB78(v145, v146);
      }

      sub_1C4CF0804(v119, v120);
LABEL_51:
      v123 = swift_unknownObjectRelease();
LABEL_52:
      sub_1C4CF0804(v123, v124);
      v147 = sub_1C43FD7E0();
      sub_1C441DFEC(v147, v148);
      swift_unknownObjectRelease();
LABEL_53:
      swift_beginAccess();
      v15 = *(v67 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return v15;
    case 4u:
      sub_1C4EF9348();
      swift_allocObject();
      v27 = sub_1C43FD7E0();
      sub_1C44344B8(v27, v28);
      sub_1C4EF9338();
      sub_1C4F01178();
      v29 = sub_1C4F01148();
      v31 = v30;
      (*(v10 + 8))(v14, v8);
      if (v31 >> 60 == 15)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29;
      }

      if (v31 >> 60 == 15)
      {
        v33 = 0xC000000000000000;
      }

      else
      {
        v33 = v31;
      }

      sub_1C4CCB328();
      sub_1C4EF9328();

      sub_1C4434000(v32, v33);
      v151 = v155;
      v152 = v156;
      v153 = v157;
      v154 = v158;
      sub_1C47F5E18(&v151);
      if (BYTE8(v152) == 2 || (BYTE8(v152) & 1) == 0)
      {
        sub_1C4463B90();
      }

      else
      {
        sub_1C44F92C4();
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      sub_1C43FCDF8();
      v93 = v92;
      MEMORY[0x1EEE9AC00](v94);
      v96 = &v149 - v95;
      sub_1C43FD7E0();
      sub_1C4BA9CC8();
      swift_getAssociatedConformanceWitness();
      v15 = sub_1C4F00FB8();
      v97 = sub_1C43FD7E0();
      sub_1C441DFEC(v97, v98);
      (*(v93 + 8))(v96, AssociatedTypeWitness);
      return v15;
    case 5u:
      _s14KeyValueSourceCMa();
      v43 = sub_1C43FE99C();
      sub_1C44344B8(v43, v44);
      v45 = sub_1C43FE99C();
      v47 = sub_1C4CDD394(v45, v46);
      goto LABEL_20;
    case 6u:
      _s26GlobalKnowledgeGraphSourceCMa();
      v49 = sub_1C43FE99C();
      sub_1C44344B8(v49, v50);
      v51 = sub_1C43FE99C();
      v47 = sub_1C4CD9044(v51, v52);
LABEL_20:
      v15 = v47;
      if (v48)
      {
        MEMORY[0x1C6940010](v47, v48);
        MEMORY[0x1C6940010](34, 0xE100000000000000);
        v53 = sub_1C43FE99C();
        sub_1C441DFEC(v53, v54);

        return 34;
      }

      else
      {
        v55 = sub_1C43FE99C();
        sub_1C441DFEC(v55, v56);
      }

      return v15;
    case 7u:
      _s18NotificationSourceCMa();
      v36 = sub_1C43FE99C();
      sub_1C44344B8(v36, v37);
      v38 = sub_1C43FE99C();
      sub_1C4CE37C4(v38, v39);
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      v40 = swift_initStackObject();
      sub_1C4409364(v40, xmmword_1C4F0D130);
LABEL_17:
      *&v155 = sub_1C4F00F28();
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      sub_1C496D888();
      v15 = sub_1C4F00FB8();
      v41 = sub_1C43FE99C();
      sub_1C441DFEC(v41, v42);

      return v15;
    default:
      return v15;
  }
}

void sub_1C4CF17AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 48) >> 60) >= 0xB)
  {
    v5 = sub_1C4F01CF8();
  }

  else
  {
    v5 = sub_1C4F01CD8();
  }

  v6 = v5;
  if (sub_1C4F01CC8() == v5)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v25);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CC8();
    goto LABEL_25;
  }

  if (sub_1C4F01CB8() == v6)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v25);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CB8();
    goto LABEL_25;
  }

  if (sub_1C4F01CF8() == v6)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v25);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    goto LABEL_25;
  }

  if (sub_1C4F01CD8() == v6)
  {
    v12 = qword_1EDDFECD0;
LABEL_22:
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v25);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    goto LABEL_25;
  }

  v13 = sub_1C4F01CE8();
  v12 = qword_1EDDFECD0;
  if (v13 != v6)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6478(a4, v25);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CE8();
LABEL_25:
  v16 = v9;

  sub_1C4CF64B0(a4);
  if (os_log_type_enabled(v8, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[0] = v18;
    *v17 = 136315394;
    v19 = sub_1C4D11C18();
    v21 = sub_1C441D828(v19, v20, v25);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1C4CF5BF8();
    v24 = sub_1C441D828(v22, v23, v25);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_1C43F8000, v8, v16, "ViewValidate: %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v18, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }
}

uint64_t *sub_1C4CF1B98()
{
  v2 = v1;
  v3 = v0;
  v20[0] = sub_1C4D11C18();
  v20[1] = v4;
  MEMORY[0x1C6940010](44, 0xE100000000000000);
  v21 = v20[0];
  v22 = v20[1];
  memcpy(__dst, (v0 + 168), sizeof(__dst));
  v6 = __dst[3];
  v5 = __dst[4];
  if (__dst[6] >> 62)
  {
    if (__dst[6] >> 62 == 1)
    {
      v7 = 0x2C64656B636F6C62;
      v8 = &v21;
      v9 = 0xE800000000000000;
    }

    else if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
    {
      v7 = 0x6C62616C69617661;
      v8 = &v21;
      v9 = 0xEA00000000002C65;
    }

    else
    {
      v7 = 0x616C696176616E75;
      v9 = 0xEC0000002C656C62;
      v8 = &v21;
    }

    MEMORY[0x1C6940010](v7, v9);
  }

  else
  {
    v18 = sub_1C4CC2358(__dst[1]);
    v19 = v10;
    memcpy(v20, (v0 + 168), sizeof(v20));
    v20[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(v20, v17, &unk_1EC0C6360, &qword_1C4F6BAC8);
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v11, v12);

    MEMORY[0x1C6940010](44, 0xE100000000000000);
    v8 = &v21;
    MEMORY[0x1C6940010](v18, v19);

    sub_1C4CF6BE0(__dst);
  }

  v13 = *(v3 + 88);
  if (v13 >> 60 == 15)
  {
    MEMORY[0x1C6940010](741355056, 0xE400000000000000);
LABEL_23:
    MEMORY[0x1C6940010](12589, 0xE200000000000000);
    _s13OutputBuilderCMa();
    inited = swift_initStackObject();
    sub_1C4CF05C4();
    sub_1C4CF6998(v21, v22, inited);

    swift_beginAccess();
    v8 = *(inited + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v8;
  }

  v14 = *(v3 + 80);
  if ((*(v3 + 73) & 1) == 0)
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1C4431E64(v14, v13);
    sub_1C44344B8(v14, v13);
    sub_1C4463E90(v14, v13);
    goto LABEL_22;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1C4431E64(v14, v13);
  sub_1C44344B8(v14, v13);
  sub_1C44F9344(v14, v13);
  if (!v2)
  {
LABEL_22:
    sub_1C4F01A28();
    MEMORY[0x1C6940010](44, 0xE100000000000000);
    MEMORY[0x1C6940010](v20[0], v20[1]);
    sub_1C441DFEC(v14, v13);

    goto LABEL_23;
  }

  sub_1C441DFEC(v14, v13);

  return v8;
}

void sub_1C4CF1EE0()
{
  v2 = v0;
  v3 = *(v0 + 88);
  if (v3 >> 60 != 15)
  {
    v4 = *(v0 + 80);
    v5 = *(v2 + 73);
    sub_1C44344B8(*(v2 + 80), v3);
    if (v5)
    {
      sub_1C44F9344(v4, v3);
      if (v1)
      {
        return;
      }
    }

    else
    {
      sub_1C4463E90(v4, v3);
    }
  }

  _s13OutputBuilderCMa();
  inited = swift_initStackObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  memcpy(__dst, (v2 + 168), sizeof(__dst));
  v7 = __dst[1];
  v8 = __dst[3];
  v9 = __dst[4];
  v189 = v2;
  v190 = inited;
  if (!(__dst[6] >> 62))
  {
    memcpy(__src, (v2 + 168), 0x48uLL);
    __src[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(__src, &v192, &unk_1EC0C6360, &qword_1C4F6BAC8);
    v24 = sub_1C4D11C18();
    sub_1C4CF6C10(v24, v25, 9215458, 0xA300000000000000, inited);

    v192 = 546086370;
    v193 = 0xA400000000000000;
    v26 = sub_1C4CC2358(v7);
    MEMORY[0x1C6940010](v26);

    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v9)
    {
      v27 = v8;
    }

    else
    {
      v27 = 0;
    }

    if (v9)
    {
      v28 = v9;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v27, v28);

    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v192, v193, inited);
    sub_1C4CF6BE0(__dst);
    goto LABEL_65;
  }

  v10 = __dst[0];
  v11 = MEMORY[0x1E69E7CC0];
  if (__dst[6] >> 62 == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4D11C18();
    sub_1C4CF6C10(v12, v13, 3029639152, 0xA400000000000000, inited);

    v14 = *(v10 + 16);
    if (v14)
    {
      v192 = v11;
      sub_1C44CD9C0(0, v14, 0);
      v15 = v11;
      v16 = (v10 + 48);
      do
      {
        v17 = *v16;
        v18 = v16[1];
        v184 = *(v16 + 16);
        v20 = v16[5];
        v19 = v16[6];
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4431E64(v20, v19);
        sub_1C4F02438();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v17, v18);
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        LOBYTE(v194) = v184;
        sub_1C4F02438();

        sub_1C441DFEC(v20, v19);
        v192 = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1C44CD9C0(v21 > 1, v22 + 1, 1);
          v15 = v192;
        }

        v16 += 9;
        *(v15 + 16) = v22 + 1;
        v23 = v15 + 16 * v22;
        *(v23 + 32) = 0;
        *(v23 + 40) = 0xE000000000000000;
        --v14;
      }

      while (v14);
      sub_1C4CF6BE0(__dst);
      v2 = v189;
    }

    else
    {
      sub_1C4CF6BE0(__dst);
      v15 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = 0x1000000000000024;
    __src[1] = 0x80000001C4FC5C80;
    v192 = v15;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v65 = sub_1C4F01048();
    v67 = v66;

    MEMORY[0x1C6940010](v65, v67);

    v68 = 0x1000000000000024;
    v69 = 0x80000001C4FC5C80;
    v70 = v190;
    goto LABEL_64;
  }

  if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
  {
    v63 = sub_1C4D11C18();
    sub_1C4CF6C10(v63, v64, 2728370160, 0xA400000000000000, inited);

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x1000000000000010, 0x80000001C4FC5BF0);
    sub_1C4F01A28();
    MEMORY[0x1C6940010](41, 0xE100000000000000);
LABEL_63:
    v68 = __src[0];
    v69 = __src[1];
    v70 = inited;
LABEL_64:
    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v68, v69, v70);
LABEL_65:

LABEL_66:
    v74 = 0;
    v75 = *(v2 + 312);
    v76 = *(v75 + 16);
    v77 = v75 + 32;
    v78 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v79 = (v77 + 72 * v74);
    while (v76 != v74)
    {
      if (v74 >= v76)
      {
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      memcpy(__src, v79, 0x48uLL);
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_193;
      }

      if ((__src[6] >> 60) >= 0xB)
      {
        sub_1C4CF6478(__src, &v192);
        v81 = sub_1C4F01CF8();
      }

      else
      {
        sub_1C4CF6478(__src, &v192);
        v81 = sub_1C4F01CD8();
      }

      if (v81 == sub_1C4F01CD8())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v194 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459E808(0, v78[2] + 1, 1);
          v78 = v194;
        }

        v84 = v78[2];
        v83 = v78[3];
        if (v84 >= v83 >> 1)
        {
          sub_1C459E808((v83 > 1), v84 + 1, 1);
          v78 = v194;
        }

        v78[2] = v84 + 1;
        memcpy(&v78[9 * v84 + 4], __src, 0x48uLL);
        v74 = v80;
        goto LABEL_67;
      }

      sub_1C4CF64B0(__src);
      ++v74;
      v79 += 72;
    }

    v85 = v78[2];
    if (v85)
    {
      sub_1C45A323C();
      memcpy(v198, v78 + 4, 0x48uLL);
      sub_1C4CF6478(v198, __src);

      __src[0] = 546086370;
      __src[1] = 0xA400000000000000;
      v192 = v85;
      v86 = sub_1C4F02858();
      MEMORY[0x1C6940010](v86);

      MEMORY[0x1C6940010](0x2073726F72726520, 0xEF203A7473726966);
      v87 = sub_1C4CF5BF8();
      MEMORY[0x1C6940010](v87);

      sub_1C4CF6C10(0x73726F727265, 0xE600000000000000, __src[0], __src[1], v190);
      sub_1C4CF64B0(v198);
    }

    else
    {
    }

    v88 = *(v2 + 296);
    __src[0] = MEMORY[0x1E69E7CC0];
    v89 = sub_1C4428DA0(v88);
    for (i = 0; v89 != i; ++i)
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v91 = MEMORY[0x1C6940F90](i, v88);
      }

      else
      {
        if (i >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_195;
        }

        v91 = *(v88 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_194;
      }

      if (*(v91 + 266) & 1) != 0 || (*(v91 + 282))
      {
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }
    }

    v92 = __src[0];
    __src[0] = MEMORY[0x1E69E7CC0];
    v93 = sub_1C4428DA0(v92);
    for (j = 0; v93 != j; ++j)
    {
      if ((v92 & 0xC000000000000001) != 0)
      {
        v95 = MEMORY[0x1C6940F90](j, v92);
      }

      else
      {
        if (j >= *(v92 + 16))
        {
          goto LABEL_197;
        }

        v95 = *(v92 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_196;
      }

      if (*(v95 + 282))
      {
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }
    }

    v96 = __src[0];
    v97 = sub_1C4428DA0(__src[0]);
    v180 = v92 & 0xC000000000000001;
    if (v97)
    {
      v98 = v97;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v97 & ~(v97 >> 63), 0);
      if (v98 < 0)
      {
        goto LABEL_212;
      }

      v179 = v92;
      v99 = 0;
      v100 = __src[0];
      v186 = v96 & 0xC000000000000001;
      v101 = v96;
      do
      {
        if (v186)
        {
          MEMORY[0x1C6940F90](v99, v96);
        }

        else
        {
        }

        v102 = sub_1C4CF5A60();
        v104 = v103;

        __src[0] = v100;
        v106 = v100[2];
        v105 = v100[3];
        if (v106 >= v105 >> 1)
        {
          sub_1C44CD9C0(v105 > 1, v106 + 1, 1);
          v100 = __src[0];
        }

        ++v99;
        v100[2] = v106 + 1;
        v107 = &v100[2 * v106];
        v107[4] = v102;
        v107[5] = v104;
        v96 = v101;
      }

      while (v98 != v99);

      v2 = v189;
      v92 = v179;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    v108 = v100[2];
    if (v108)
    {
      sub_1C45A323C();
      v110 = v100[4];
      v109 = v100[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (v108 == 1)
      {
        v111 = v110;
      }

      else
      {
        __src[0] = v110;
        __src[1] = v109;
        MEMORY[0x1C6940010](10272, 0xE200000000000000);
        v192 = v108;
        v112 = sub_1C4F02858();
        MEMORY[0x1C6940010](v112);

        MEMORY[0x1C6940010](47, 0xE100000000000000);
        v192 = sub_1C4428DA0(v92);
        v113 = sub_1C4F02858();
        MEMORY[0x1C6940010](v113);

        MEMORY[0x1C6940010](0x73206C61746F7420, 0xEF2973656372756FLL);
        v111 = __src[0];
        v109 = __src[1];
      }

      sub_1C4CF6C10(0xD000000000000010, 0x80000001C4FC5C10, v111, v109, v190);
    }

    v114 = 0;
    __src[0] = MEMORY[0x1E69E7CC0];
    while (v93 != v114)
    {
      if (v180)
      {
        v115 = MEMORY[0x1C6940F90](v114, v92);
      }

      else
      {
        if (v114 >= *(v92 + 16))
        {
          goto LABEL_199;
        }

        v115 = *(v92 + 8 * v114 + 32);
      }

      if (__OFADD__(v114, 1))
      {
        goto LABEL_198;
      }

      if (*(v115 + 64) == *(v115 + 120) || (*(v115 + 282) & 1) != 0)
      {
      }

      else
      {
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      ++v114;
    }

    v116 = __src[0];
    v117 = sub_1C4428DA0(__src[0]);
    if (v117)
    {
      v118 = v117;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v117 & ~(v117 >> 63), 0);
      if (v118 < 0)
      {
        goto LABEL_213;
      }

      v119 = 0;
      v120 = __src[0];
      v182 = v116 & 0xC000000000000001;
      v187 = v116;
      do
      {
        if (v182)
        {
          MEMORY[0x1C6940F90](v119, v116);
        }

        else
        {
        }

        v121 = sub_1C4CF5A60();
        v123 = v122;

        __src[0] = v120;
        v125 = v120[2];
        v124 = v120[3];
        if (v125 >= v124 >> 1)
        {
          sub_1C44CD9C0(v124 > 1, v125 + 1, 1);
          v120 = __src[0];
        }

        ++v119;
        v120[2] = v125 + 1;
        v126 = &v120[2 * v125];
        v126[4] = v121;
        v126[5] = v123;
        v116 = v187;
        v2 = v189;
      }

      while (v118 != v119);
    }

    else
    {

      v120 = MEMORY[0x1E69E7CC0];
    }

    v127 = v120[2];
    if (v127)
    {
      sub_1C45A323C();
      v129 = v120[4];
      v128 = v120[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (v127 == 1)
      {

        v130 = v129;
      }

      else
      {
        __src[0] = v129;
        __src[1] = v128;
        MEMORY[0x1C6940010](10272, 0xE200000000000000);
        v192 = v127;
        v132 = sub_1C4F02858();
        MEMORY[0x1C6940010](v132);

        MEMORY[0x1C6940010](47, 0xE100000000000000);
        v133 = sub_1C4428DA0(v92);

        v192 = v133;
        v134 = sub_1C4F02858();
        MEMORY[0x1C6940010](v134);

        MEMORY[0x1C6940010](0x73206C61746F7420, 0xEF2973656372756FLL);
        v130 = __src[0];
        v128 = __src[1];
      }

      v131 = v190;
      sub_1C4CF6C10(0x4373656372756F73, 0xEE006465676E6168, v130, v128, v190);
    }

    else
    {

      v131 = v190;
    }

    v135 = *(v2 + 248);
    sub_1C4CF6E8C(v2, __src);
    v136 = sub_1C4CF65C0(v135, v2);
    v137 = *(v136 + 16);
    if (v137)
    {
      __src[0] = MEMORY[0x1E69E7CC0];
      v183 = v137;
      v188 = v136;
      sub_1C44CD9C0(0, v137, 0);
      v138 = __src[0];
      v141 = sub_1C4703354();
      v143 = v183;
      v142 = v188;
      v144 = 0;
      v145 = v188 + 64;
      if ((v141 & 0x8000000000000000) == 0)
      {
        while (v141 < 1 << *(v142 + 32))
        {
          v146 = v141 >> 6;
          if ((*(v145 + 8 * (v141 >> 6)) & (1 << v141)) == 0)
          {
            goto LABEL_201;
          }

          if (*(v142 + 36) != v139)
          {
            goto LABEL_202;
          }

          v147 = v141 & 0x3F;
          v148 = 0xE400000000000000;
          v149 = 1702259052;
          switch(*(*(v142 + 48) + v141))
          {
            case 1:
              v149 = 1701736302;
              break;
            case 2:
              v148 = 0xE500000000000000;
              v149 = 0x796C696164;
              break;
            case 3:
              v149 = 0xD000000000000013;
              v148 = 0x80000001C4F86260;
              break;
            case 4:
              v148 = 0xE600000000000000;
              v150 = 1801807223;
              goto LABEL_165;
            case 5:
              v151 = 0x347972657665;
              goto LABEL_168;
            case 6:
              v151 = 0x327972657665;
LABEL_168:
              v149 = v151 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
              v148 = 0xEB00000000737275;
              break;
            case 7:
              v148 = 0xE600000000000000;
              v150 = 1920298856;
LABEL_165:
              v149 = v150 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
              break;
            case 8:
              v149 = 0x4D31327972657665;
              v148 = 0xEE00736574756E69;
              break;
            case 9:
              v149 = 0x694D377972657665;
              v148 = 0xED0000736574756ELL;
              break;
            case 0xA:
              v149 = 0xD000000000000013;
              v148 = 0x80000001C4F862C0;
              break;
            default:
              break;
          }

          __src[0] = v138;
          v153 = *(v138 + 16);
          v152 = *(v138 + 24);
          if (v153 >= v152 >> 1)
          {
            v178 = v139;
            v176 = v140;
            v166 = v144;
            sub_1C44CD9C0(v152 > 1, v153 + 1, 1);
            v147 = v141 & 0x3F;
            v140 = v176;
            v139 = v178;
            v145 = v188 + 64;
            v143 = v183;
            v144 = v166;
            v142 = v188;
            v138 = __src[0];
          }

          *(v138 + 16) = v153 + 1;
          v154 = v138;
          v155 = v138 + 16 * v153;
          *(v155 + 32) = v149;
          *(v155 + 40) = v148;
          v156 = 1 << *(v142 + 32);
          if (v141 >= v156)
          {
            goto LABEL_203;
          }

          v157 = *(v145 + 8 * v146);
          if ((v157 & (1 << v141)) == 0)
          {
            goto LABEL_204;
          }

          if (*(v142 + 36) != v139)
          {
            goto LABEL_205;
          }

          v158 = v157 & (-2 << v147);
          if (v158)
          {
            v156 = __clz(__rbit64(v158)) | v141 & 0x7FFFFFFFFFFFFFC0;
            v131 = v190;
          }

          else
          {
            v159 = v146 << 6;
            v160 = v146 + 1;
            v161 = (v188 + 72 + 8 * v146);
            v131 = v190;
            while (v160 < (v156 + 63) >> 6)
            {
              v163 = *v161++;
              v162 = v163;
              v159 += 64;
              ++v160;
              if (v163)
              {
                v164 = v144;
                sub_1C440951C(v141, v139, v140 & 1);
                v145 = v188 + 64;
                v143 = v183;
                v144 = v164;
                v142 = v188;
                v156 = __clz(__rbit64(v162)) + v159;
                goto LABEL_183;
              }
            }

            v165 = v144;
            sub_1C440951C(v141, v139, v140 & 1);
            v145 = v188 + 64;
            v143 = v183;
            v144 = v165;
            v142 = v188;
          }

LABEL_183:
          if (++v144 == v143)
          {

            v2 = v189;
            v167 = v154;
            goto LABEL_188;
          }

          v140 = 0;
          v139 = *(v142 + 36);
          v141 = v156;
          v138 = v154;
          if (v141 < 0)
          {
            goto LABEL_200;
          }
        }
      }

      goto LABEL_200;
    }

    v167 = MEMORY[0x1E69E7CC0];
LABEL_188:
    if (*(v167 + 16))
    {
      __src[0] = v167;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v168 = sub_1C4F01048();
      v170 = v169;

      sub_1C4CF6C10(0x646575657571, 0xE600000000000000, v168, v170, v131);
    }

    v196 = *v2;
    v197 = *(v2 + 16);
    v171 = v197;
    v172 = *(&v196 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v172, v171, v131);
    sub_1C4CF6EC4(&v196);
    v173 = sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v196, v131);
    sub_1C4CF0804(v173, v174);
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return;
  }

  v29 = sub_1C4D11C18();
  sub_1C4CF6C10(v29, v30, 2694815728, 0xA400000000000000, inited);

  v31 = *(v2 + 248);
  sub_1C4CF6E8C(v2, __src);
  v32 = sub_1C4CF65C0(v31, v2);
  v33 = *(v32 + 16);
  if (!v33)
  {

    v50 = MEMORY[0x1E69E7CC0];
LABEL_61:
    if (!*(v50 + 16))
    {

      sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, 0x1000000000000025, 0x80000001C4FC5C50, inited);
      goto LABEL_66;
    }

    __src[0] = 0x100000000000001DLL;
    __src[1] = 0x80000001C4FC5C30;
    v192 = v50;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v71 = sub_1C4F01048();
    v73 = v72;

    MEMORY[0x1C6940010](v71, v73);

    goto LABEL_63;
  }

  __src[0] = v11;
  v181 = v33;
  v185 = v32;
  sub_1C44CD9C0(0, v33, 0);
  v34 = __src[0];
  v37 = sub_1C4703354();
  v39 = v181;
  v38 = v185;
  v40 = 0;
  v41 = v185 + 64;
  if ((v37 & 0x8000000000000000) == 0)
  {
    while (v37 < 1 << *(v38 + 32))
    {
      v42 = v37 >> 6;
      if ((*(v41 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
      {
        goto LABEL_207;
      }

      if (*(v38 + 36) != v35)
      {
        goto LABEL_208;
      }

      v43 = v37 & 0x3F;
      v44 = 0xE400000000000000;
      v45 = 1702259052;
      switch(*(*(v38 + 48) + v37))
      {
        case 1:
          v45 = 1701736302;
          break;
        case 2:
          v44 = 0xE500000000000000;
          v45 = 0x796C696164;
          break;
        case 3:
          v45 = 0xD000000000000013;
          v44 = 0x80000001C4F86260;
          break;
        case 4:
          v44 = 0xE600000000000000;
          v46 = 1801807223;
          goto LABEL_35;
        case 5:
          v47 = 0x347972657665;
          goto LABEL_38;
        case 6:
          v47 = 0x327972657665;
LABEL_38:
          v45 = v47 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v44 = 0xEB00000000737275;
          break;
        case 7:
          v44 = 0xE600000000000000;
          v46 = 1920298856;
LABEL_35:
          v45 = v46 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v45 = 0x4D31327972657665;
          v44 = 0xEE00736574756E69;
          break;
        case 9:
          v45 = 0x694D377972657665;
          v44 = 0xED0000736574756ELL;
          break;
        case 0xA:
          v45 = 0xD000000000000013;
          v44 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      __src[0] = v34;
      v49 = *(v34 + 16);
      v48 = *(v34 + 24);
      if (v49 >= v48 >> 1)
      {
        v177 = v35;
        v175 = v36;
        v62 = v40;
        sub_1C44CD9C0(v48 > 1, v49 + 1, 1);
        v43 = v37 & 0x3F;
        v36 = v175;
        v35 = v177;
        v41 = v185 + 64;
        v39 = v181;
        v40 = v62;
        v38 = v185;
        v34 = __src[0];
      }

      *(v34 + 16) = v49 + 1;
      v50 = v34;
      v51 = v34 + 16 * v49;
      *(v51 + 32) = v45;
      *(v51 + 40) = v44;
      v52 = 1 << *(v38 + 32);
      if (v37 >= v52)
      {
        goto LABEL_209;
      }

      v53 = *(v41 + 8 * v42);
      if ((v53 & (1 << v37)) == 0)
      {
        goto LABEL_210;
      }

      if (*(v38 + 36) != v35)
      {
        goto LABEL_211;
      }

      v54 = v53 & (-2 << v43);
      if (v54)
      {
        v52 = __clz(__rbit64(v54)) | v37 & 0x7FFFFFFFFFFFFFC0;
        inited = v190;
      }

      else
      {
        v55 = v42 << 6;
        v56 = v42 + 1;
        v57 = (v185 + 72 + 8 * v42);
        inited = v190;
        while (v56 < (v52 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            v60 = v40;
            sub_1C440951C(v37, v35, v36 & 1);
            v41 = v185 + 64;
            v39 = v181;
            v40 = v60;
            v38 = v185;
            v52 = __clz(__rbit64(v58)) + v55;
            goto LABEL_53;
          }
        }

        v61 = v40;
        sub_1C440951C(v37, v35, v36 & 1);
        v41 = v185 + 64;
        v39 = v181;
        v40 = v61;
        v38 = v185;
      }

LABEL_53:
      if (++v40 == v39)
      {

        v2 = v189;
        goto LABEL_61;
      }

      v36 = 0;
      v35 = *(v38 + 36);
      v37 = v52;
      v34 = v50;
      if (v37 < 0)
      {
        break;
      }
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}

void *sub_1C4CF36D8()
{
  _s13OutputBuilderCMa();
  v2 = swift_allocObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  v3 = *v0;
  v4 = v0[1];
  v163 = v0[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v4, v163, v2);

  sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v3, v2);
  v164[0] = sub_1C4D11C18();
  v164[1] = v5;
  MEMORY[0x1C6940010](0x7972616D6D755320, 0xE800000000000000);
  sub_1C4CF0684(v164[0], v164[1]);

  memcpy(__dst, v0 + 21, 0x48uLL);
  v6 = __dst[3];
  v7 = __dst[4];
  v157 = v2;
  v150 = v1;
  if (!(__dst[6] >> 62))
  {
    v165 = 546086370;
    v166 = 0xA400000000000000;
    v21 = sub_1C4CC2358(__dst[1]);
    v23 = v22;
    memcpy(v164, __dst, 0x48uLL);
    v164[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(v164, v170, &unk_1EC0C6360, &qword_1C4F6BAC8);
    MEMORY[0x1C6940010](v21, v23);

    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v7)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0;
    }

    if (v7)
    {
      v25 = v7;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v24, v25);

    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v165, v166, v2);
    sub_1C4CF6BE0(__dst);
    goto LABEL_58;
  }

  v8 = __dst[0];
  if (__dst[6] >> 62 == 1)
  {
    v9 = *(__dst[0] + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v158 = v4;
      v161 = v3;
      sub_1C4CF6410(__dst, v164);
      v168 = v10;
      sub_1C44CD9C0(0, v9, 0);
      v10 = v168;
      v11 = (v8 + 32);
      for (i = v9 - 1; ; --i)
      {
        v153 = v11;
        memcpy(v164, v11, 0x48uLL);
        v13 = v164[2];
        v14 = v164[3];
        v15 = v164[4];
        v165 = 0;
        v166 = 0xE000000000000000;
        LOBYTE(v167) = v164[1];
        sub_1C444AAD0(v164, v170);
        sub_1C4F02438();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v13, v14);
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        LOBYTE(v170[0]) = v15;
        sub_1C4F02438();
        sub_1C44528B0(v164);
        v16 = v165;
        v17 = v166;
        v168 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C44CD9C0(v18 > 1, v19 + 1, 1);
          v10 = v168;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        if (!i)
        {
          break;
        }

        v11 = v153 + 72;
      }

      sub_1C4CF6BE0(__dst);
      v4 = v158;
      v3 = v161;
    }

    v164[0] = 0x1000000000000024;
    v164[1] = 0x80000001C4FC5C80;
    v170[0] = v10;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v57 = sub_1C4F01048();
    v59 = v58;

    MEMORY[0x1C6940010](v57, v59);

    v60 = v164[0];
    v61 = v164[1];
    goto LABEL_57;
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
  {
    v62 = 0x61766120A29F9FF0;
    v63 = 0xAE00656C62616C69;
LABEL_60:
    v2 = v157;
    sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v62, v63, v157);
    goto LABEL_61;
  }

  v27 = v151[31];
  sub_1C4CF6E8C(v151, v164);
  v28 = sub_1C4CF65C0(v27, v151);
  v29 = *(v28 + 16);
  if (v29)
  {
    v159 = v4;
    v164[0] = v26;
    v154 = v28;
    v147 = v29;
    sub_1C44CD9C0(0, v29, 0);
    v30 = v164[0];
    v33 = sub_1C4703354();
    result = v154;
    v35 = v147;
    v36 = 0;
    v37 = v154 + 64;
    if ((v33 & 0x8000000000000000) == 0)
    {
      while (v33 < 1 << *(result + 32))
      {
        v38 = v33 >> 6;
        if ((*(v37 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
        {
          goto LABEL_166;
        }

        if (*(result + 9) != v31)
        {
          goto LABEL_167;
        }

        v39 = v33 & 0x3F;
        v40 = 0xE600000000000000;
        v41 = 0x796C6B656577;
        switch(*(result[6] + v33))
        {
          case 1:
            v40 = 0xE400000000000000;
            v41 = 1701736302;
            break;
          case 2:
            v40 = 0xE500000000000000;
            v41 = 0x796C696164;
            break;
          case 3:
            v41 = 0xD000000000000013;
            v40 = 0x80000001C4F86260;
            break;
          case 4:
            break;
          case 5:
            v42 = 0x347972657665;
            goto LABEL_32;
          case 6:
            v42 = 0x327972657665;
LABEL_32:
            v41 = v42 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v40 = 0xEB00000000737275;
            break;
          case 7:
            v41 = 0x796C72756F68;
            break;
          case 8:
            v41 = 0x4D31327972657665;
            v40 = 0xEE00736574756E69;
            break;
          case 9:
            v41 = 0x694D377972657665;
            v40 = 0xED0000736574756ELL;
            break;
          case 0xA:
            v41 = 0xD000000000000013;
            v40 = 0x80000001C4F862C0;
            break;
          default:
            v40 = 0xE400000000000000;
            v41 = 1702259052;
            break;
        }

        v164[0] = v30;
        v44 = *(v30 + 16);
        v43 = *(v30 + 24);
        v45 = v30;
        if (v44 >= v43 >> 1)
        {
          v143 = v31;
          v144 = v36;
          v142 = v32;
          sub_1C44CD9C0(v43 > 1, v44 + 1, 1);
          v39 = v33 & 0x3F;
          v32 = v142;
          v31 = v143;
          v36 = v144;
          v37 = v154 + 64;
          v35 = v147;
          result = v154;
          v45 = v164[0];
        }

        *(v45 + 16) = v44 + 1;
        v46 = v45 + 16 * v44;
        *(v46 + 32) = v41;
        *(v46 + 40) = v40;
        v47 = 1 << *(result + 32);
        if (v33 >= v47)
        {
          goto LABEL_168;
        }

        v48 = *(v37 + 8 * v38);
        if ((v48 & (1 << v33)) == 0)
        {
          goto LABEL_169;
        }

        v30 = v45;
        if (*(result + 9) != v31)
        {
          goto LABEL_170;
        }

        v49 = v48 & (-2 << v39);
        if (v49)
        {
          v47 = __clz(__rbit64(v49)) | v33 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v50 = v38 << 6;
          v51 = v38 + 1;
          v52 = (v154 + 72 + 8 * v38);
          while (v51 < (v47 + 63) >> 6)
          {
            v54 = *v52++;
            v53 = v54;
            v50 += 64;
            ++v51;
            if (v54)
            {
              v55 = v36;
              sub_1C440951C(v33, v31, v32 & 1);
              v37 = v154 + 64;
              v35 = v147;
              v36 = v55;
              result = v154;
              v47 = __clz(__rbit64(v53)) + v50;
              goto LABEL_47;
            }
          }

          v56 = v36;
          sub_1C440951C(v33, v31, v32 & 1);
          v37 = v154 + 64;
          v35 = v147;
          v36 = v56;
          result = v154;
        }

LABEL_47:
        if (++v36 == v35)
        {

          v4 = v159;
          goto LABEL_55;
        }

        v32 = 0;
        v31 = *(result + 9);
        v33 = v47;
        if (v47 < 0)
        {
          goto LABEL_165;
        }
      }
    }

    goto LABEL_165;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_55:
  if (!*(v30 + 16))
  {

    v62 = 0x1000000000000025;
    v63 = 0x80000001C4FC5C50;
    goto LABEL_60;
  }

  v164[0] = 0x100000000000001DLL;
  v164[1] = 0x80000001C4FC5C30;
  v170[0] = v30;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v64 = sub_1C4F01048();
  v66 = v65;

  MEMORY[0x1C6940010](v64, v66);

  v60 = v164[0];
  v61 = v164[1];
LABEL_57:
  v2 = v157;
  sub_1C4CF6C10(0x6962616C69617661, 0xEC0000007974696CLL, v60, v61, v157);
LABEL_58:

LABEL_61:
  memcpy(v172, v151 + 3, sizeof(v172));
  if (v172[2] >= 1)
  {
    v170[0] = v172[2];
    v164[0] = sub_1C4F02858();
    v164[1] = v67;
    MEMORY[0x1C6940010](0x100000000000001BLL, 0x80000001C4FC5F20);
    sub_1C4CF6C10(0x4374706D65747461, 0xEC000000746E756FLL, v164[0], v164[1], v2);
  }

  memcpy(v164, v151 + 12, 0x48uLL);
  if (v164[3])
  {
    v68 = *&v164[5];
    memcpy(v170, v151 + 12, sizeof(v170));
    sub_1C444AAD0(v170, &v165);
    sub_1C4CF7188(0xD000000000000020, 0x80000001C4FC5EF0, v2, v68);
    sub_1C4423A0C(v164, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  v69 = v172;
  sub_1C4BBB1BC();
  if (v150)
  {

    return v69;
  }

  if (v71)
  {
    sub_1C4CF0884(0x6B72616D6B6F6F62, 0xE800000000000000, v70, v71);
  }

  v72 = v151[30];
  v73 = *(v72 + 16);
  if (v73)
  {
    sub_1C4CF0674(0x736575737369, 0xE600000000000000);
    v74 = (v72 + 32);
    do
    {
      memcpy(v175, v74, sizeof(v175));
      sub_1C4CF6478(v175, v170);
      v75 = sub_1C4CF6320(v3);
      sub_1C4CF6998(v75, v76, v2);
      sub_1C4CF64B0(v175);

      v74 += 72;
      --v73;
    }

    while (v73);
    v70 = sub_1C4CF067C(v77, v78);
  }

  v160 = v4;
  v162 = v3;
  sub_1C4CF0804(v70, v71);
  v79 = v151[31];
  v171 = v79;
  v80 = v79 + 64;
  v81 = 1 << *(v79 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v79 + 64);
  v84 = (v81 + 63) >> 6;
  v155 = v79;
  result = swift_bridgeObjectRetain_n();
  v85 = 0;
  while (v83)
  {
LABEL_82:
    v83 &= v83 - 1;
    v170[0] = v162;
    v170[1] = v4;
    v170[2] = v163;
    MEMORY[0x1EEE9AC00](result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v88 = sub_1C479B5CC();

    if (v88)
    {

      v89 = v157;
      result = sub_1C4CF0674(0x736575657551, 0xE600000000000000);
      v90 = 0;
      v91 = 1 << *(v155 + 32);
      v92 = -1;
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      v93 = v92 & *(v155 + 64);
      v94 = (v91 + 63) >> 6;
      while (v93)
      {
LABEL_91:
        v96 = *(*(v155 + 48) + (__clz(__rbit64(v93)) | (v90 << 6)));
        v93 &= v93 - 1;
        v170[0] = v162;
        v170[1] = v160;
        v170[2] = v163;
        MEMORY[0x1EEE9AC00](result);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (sub_1C479B5CC())
        {
          v97 = v151[32];
          if (*(v97 + 16) && (v98 = sub_1C457B5CC(v96), (v99 & 1) != 0))
          {
            v145 = v94;
            v100 = *(*(v97 + 56) + 8 * v98);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4CF0684(0, 0);
            v101 = sub_1C4424B10(v96);
            sub_1C4CF6C10(1701667182, 0xE400000000000000, v101, v102, v89);

            sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
            v148 = v100;
            v103 = *(v100 + 16);
            if (v103)
            {
              v104 = (v148 + 32);
              do
              {
                memcpy(v173, v104, sizeof(v173));
                if ((v173[6] >> 60) >= 0xB)
                {
                  sub_1C4CF6478(v173, v170);
                  v105 = sub_1C4F01CF8();
                }

                else
                {
                  sub_1C4CF6478(v173, v170);
                  v105 = sub_1C4F01CD8();
                }

                if (sub_1C4F01CF8() == v105)
                {
                  v170[0] = 0x208FB8EFA09AE2;
                  v106 = 0xA700000000000000;
                }

                else
                {
                  v170[0] = 546086370;
                  v106 = 0xA400000000000000;
                }

                v170[1] = v106;
                v168 = v162;
                v165 = sub_1C4F02858();
                v166 = v107;
                MEMORY[0x1C6940010](58, 0xE100000000000000);
                MEMORY[0x1C6940010](v160, v163);
                MEMORY[0x1C6940010](v165, v166);

                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                v108 = sub_1C4CF5BF8();
                MEMORY[0x1C6940010](v108);

                v89 = v157;
                sub_1C4CF6998(v170[0], v170[1], v157);
                sub_1C4CF64B0(v173);

                v104 += 72;
                --v103;
              }

              while (v103);
            }

            v113 = sub_1C4CF067C(v111, v112);
            result = sub_1C4CF0804(v113, v114);
            v94 = v145;
          }

          else
          {

            v109 = 0xE600000000000000;
            v110 = 0x796C6B656577;
            switch(v96)
            {
              case 1:
                v109 = 0xE400000000000000;
                v110 = 1701736302;
                break;
              case 2:
                v109 = 0xE500000000000000;
                v110 = 0x796C696164;
                break;
              case 3:
                v110 = 0xD000000000000013;
                v109 = 0x80000001C4F86260;
                break;
              case 4:
                break;
              case 5:
                v115 = 0x347972657665;
                goto LABEL_115;
              case 6:
                v115 = 0x327972657665;
LABEL_115:
                v110 = v115 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
                v109 = 0xEB00000000737275;
                break;
              case 7:
                v110 = 0x796C72756F68;
                break;
              case 8:
                v110 = 0x4D31327972657665;
                v109 = 0xEE00736574756E69;
                break;
              case 9:
                v110 = 0x694D377972657665;
                v109 = 0xED0000736574756ELL;
                break;
              case 10:
                v110 = 0xD000000000000013;
                v109 = 0x80000001C4F862C0;
                break;
              default:
                v109 = 0xE400000000000000;
                v110 = 1702259052;
                break;
            }

            sub_1C4CF6998(v110, v109, v89);
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v95 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_171;
        }

        if (v95 >= v94)
        {

          sub_1C4CF067C(v140, v141);
          v86 = v151;
          goto LABEL_120;
        }

        v93 = *(v80 + 8 * v95);
        ++v90;
        if (v93)
        {
          v90 = v95;
          goto LABEL_91;
        }
      }
    }
  }

  v86 = v151;
  while (1)
  {
    v87 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
      goto LABEL_164;
    }

    if (v87 >= v84)
    {
      break;
    }

    v83 = *(v80 + 8 * v87);
    ++v85;
    if (v83)
    {
      v85 = v87;
      goto LABEL_82;
    }
  }

  sub_1C4423A0C(&v171, &qword_1EC0C6348, &qword_1C4F6BAA8);

  v89 = v157;
LABEL_120:
  v116 = v86[37];
  v117 = sub_1C4428DA0(v116);
  v156 = v117;
  if (!v117)
  {
LABEL_160:
    sub_1C4CF0804(v117, v118);
    swift_beginAccess();
    v69 = *(v89 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v69;
  }

  sub_1C4CF0674(0x73656372756F53, 0xE700000000000000);
  v119 = 0;
  v152 = v116 & 0xC000000000000001;
  v149 = v116 + 32;
  v146 = v116;
  while (1)
  {
    sub_1C4431590(v119, v152 == 0, v116);
    if (v152)
    {
      result = MEMORY[0x1C6940F90](v119, v116);
      v120 = result;
    }

    else
    {
      v120 = *(v149 + 8 * v119);
    }

    if (__OFADD__(v119++, 1))
    {
      break;
    }

    swift_beginAccess();
    if (*(*(v120 + 272) + 16))
    {
      sub_1C4CF0684(0, 0);
      v122 = sub_1C4CF5A60();
      sub_1C4CF6C10(v122, v123, 9215458, 0xA300000000000000, v89);

      v124 = sub_1C4CF7400(0x6C62616C69617661, 0xE900000000000065, *(v120 + 72), v89);
      if (*(v120 + 72) == 1)
      {
        if (*(v120 + 64) != *(v120 + 120))
        {
          v124 = sub_1C4CF7400(0x6465676E616863, 0xE700000000000000, 1, v89);
        }

        if (*(v120 + 282) == 1)
        {
          v124 = sub_1C4CF7400(0x65726F74696E6F6DLL, 0xE900000000000064, 1, v89);
        }

        if (*(v120 + 243) == 1)
        {
          v124 = sub_1C4CF7400(0x6F69725068676968, 0xEC00000079746972, 1, v89);
        }
      }

      if (*(*(v120 + 272) + 16))
      {
        v126 = sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
        v128 = *(v120 + 272);
        v129 = *(v128 + 16);
        if (v129)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v130 = 32;
          do
          {
            memcpy(v174, (v128 + v130), sizeof(v174));
            if ((v174[6] >> 60) >= 0xB)
            {
              sub_1C4CF6478(v174, v170);
              v131 = sub_1C4F01CF8();
            }

            else
            {
              sub_1C4CF6478(v174, v170);
              v131 = sub_1C4F01CD8();
            }

            if (sub_1C4F01CF8() == v131)
            {
              v170[0] = 0x208FB8EFA09AE2;
              v132 = 0xA700000000000000;
            }

            else
            {
              v170[0] = 546086370;
              v132 = 0xA400000000000000;
            }

            v170[1] = v132;
            v167 = v162;
            v168 = sub_1C4F02858();
            v169 = v133;
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v160, v163);
            MEMORY[0x1C6940010](v168, v169);

            MEMORY[0x1C6940010](8250, 0xE200000000000000);
            v134 = sub_1C4CF5BF8();
            MEMORY[0x1C6940010](v134);

            v89 = v157;
            sub_1C4CF6998(v170[0], v170[1], v157);
            sub_1C4CF64B0(v174);

            v130 += 72;
            --v129;
          }

          while (v129);

          v116 = v146;
        }

        v124 = sub_1C4CF067C(v126, v127);
      }

      sub_1C4CF0804(v124, v125);
    }

    else
    {
      v170[0] = sub_1C4CF5A60();
      v170[1] = v135;
      v136 = 0xB4949FF020;
      if (*(v120 + 72) != 1)
      {
        goto LABEL_152;
      }

      MEMORY[0x1C6940010](0xA29F9FF020, 0xA500000000000000);
      if (*(v120 + 282) == 1)
      {
        MEMORY[0x1C6940010](0x8D949FF020, 0xA500000000000000);
      }

      if (*(v120 + 64) != *(v120 + 120))
      {
        MEMORY[0x1C6940010](0x8FB8EF949CE220, 0xA700000000000000);
      }

      v137 = *(v120 + 281);
      if (v137 != 2)
      {
        v136 = 0x90959FF020;
        if (v137)
        {
LABEL_152:
          MEMORY[0x1C6940010](v136, 0xA500000000000000);
        }
      }

      if (*(v120 + 243) == 1)
      {
        MEMORY[0x1C6940010](2510152224, 0xA400000000000000);
      }

      sub_1C4CF6998(v170[0], v170[1], v89);
    }

    if (v119 == v156)
    {
      v117 = sub_1C4CF067C(v138, v139);
      goto LABEL_160;
    }
  }

LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
  return result;
}

void *sub_1C4CF4CD4()
{
  v2 = v0;
  _s13OutputBuilderCMa();
  v3 = swift_allocObject();
  sub_1C4CF05C4();
  sub_1C4CF0684(0, 0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6C10(0x656D614E77656976, 0xE800000000000000, v5, v6, v3);

  sub_1C4CF6F18(0x644977656976, 0xE600000000000000, v4, v3);
  memcpy(__dst, v0 + 3, sizeof(__dst));
  v171 = __dst[0];
  v172 = __dst[1];
  v173 = __dst[2];
  v174 = 0;
  v175 = 0;
  v176 = __dst[5];
  v177 = __dst[6];
  v178 = xmmword_1C4F29230;
  sub_1C4CF7670(0x7461745377656976, 0xE900000000000065, &v171, v3);
  v7 = __dst;
  sub_1C4BBB1BC();
  if (v1)
  {

    return v7;
  }

  else
  {
    v126 = v5;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1819047278;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    sub_1C4CF0884(0xD000000000000012, 0x80000001C4FC5F40, v10, v11);

    memcpy(v134, v2 + 12, sizeof(v134));
    if (v134[3])
    {
      v165 = *(v2 + 6);
      v166 = v2[14];
      v167 = v134[3];
      v12 = *(v2 + 9);
      v168 = *(v2 + 8);
      v169 = v12;
      v170 = v2[20];
      memcpy(v133, v2 + 12, sizeof(v133));
      sub_1C444AAD0(v133, &v128);
      sub_1C4CF7910(0x72756F5377656976, 0xEF65746174536563, &v165, v3);
      sub_1C4423A0C(v134, &qword_1EC0C6340, &qword_1C4F6BAA0);
    }

    v13 = v2[30];
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_1C4CF0674(0x736575737369, 0xE600000000000000);
      v15 = (v13 + 32);
      do
      {
        memcpy(v164, v15, sizeof(v164));
        sub_1C4CF6478(v164, v133);
        v16 = sub_1C4CF6320(v4);
        sub_1C4CF6998(v16, v17, v3);
        sub_1C4CF64B0(v164);

        v15 += 72;
        --v14;
      }

      while (v14);
      sub_1C4CF067C(v18, v19);
    }

    v179 = v4;
    sub_1C4CF0684(0x736575657551, 0xE600000000000000);
    v20 = v2[31];
    v23 = *(v20 + 64);
    v22 = v20 + 64;
    v21 = v23;
    v24 = 1 << *(v2[31] + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v122 = v2[31];
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = 0;
    v127 = v6;
    v115 = v2;
    v117 = v27;
    v119 = v22;
    if (v26)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v22 + 8 * v30);
      ++v29;
      if (v26)
      {
        v29 = v30;
        do
        {
LABEL_22:
          v31 = __clz(__rbit64(v26)) | (v29 << 6);
          v32 = *(*(v122 + 48) + v31);
          v33 = *(*(v122 + 56) + 8 * v31);
          v124 = v32;
          v34 = sub_1C4424B10(v32);
          v36 = v35;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4CF0674(v34, v36);
          v37 = v33;

          v40 = *(v33 + 16);
          if (v40)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v41 = (v37 + 48);
            do
            {
              v42 = *(v41 - 2);
              v43 = *(v41 - 1);
              v44 = *v41;
              if (v42 == v179 && (v43 == v126 ? (v45 = v44 == v127) : (v45 = 0), v45 || (sub_1C4F02938() & 1) != 0))
              {
                v128 = v179;
              }

              else
              {
                v128 = v42;
              }

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v133[0] = sub_1C4F02858();
              v133[1] = v46;
              MEMORY[0x1C6940010](58, 0xE100000000000000);
              MEMORY[0x1C6940010](v43, v44);

              sub_1C4CF6998(v133[0], v133[1], v3);

              v41 += 3;
              --v40;
            }

            while (v40);

            v6 = v127;
            v2 = v115;
          }

          v26 &= v26 - 1;
          sub_1C4CF067C(v38, v39);
          v47 = v2[32];
          if (*(v47 + 16) && (v48 = sub_1C457B5CC(v124), (v49 & 1) != 0))
          {
            v50 = *(*(v47 + 56) + 8 * v48);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            v133[0] = sub_1C4424B10(v124);
            v133[1] = v51;
            MEMORY[0x1C6940010](0x53524F5252455FLL, 0xE700000000000000);
            sub_1C4CF0674(v133[0], v133[1]);

            v125 = v50;
            v52 = *(v50 + 16);
            if (v52)
            {
              v53 = (v125 + 32);
              do
              {
                memcpy(v136, v53, sizeof(v136));
                if ((v136[6] >> 60) >= 0xB)
                {
                  sub_1C4CF6478(v136, v133);
                  v54 = sub_1C4F01CF8();
                }

                else
                {
                  sub_1C4CF6478(v136, v133);
                  v54 = sub_1C4F01CD8();
                }

                if (sub_1C4F01CF8() == v54)
                {
                  v133[0] = 0x208FB8EFA09AE2;
                  v55 = 0xA700000000000000;
                }

                else
                {
                  v133[0] = 546086370;
                  v55 = 0xA400000000000000;
                }

                v133[1] = v55;
                v131 = v179;
                v128 = sub_1C4F02858();
                v129 = v56;
                MEMORY[0x1C6940010](58, 0xE100000000000000);
                MEMORY[0x1C6940010](v126, v6);
                MEMORY[0x1C6940010](v128, v129);

                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                v57 = sub_1C4CF5BF8();
                MEMORY[0x1C6940010](v57);

                sub_1C4CF6998(v133[0], v133[1], v3);
                sub_1C4CF64B0(v136);

                v53 += 72;
                --v52;
                v6 = v127;
              }

              while (v52);
            }

            result = sub_1C4CF067C(v58, v59);
            v2 = v115;
          }

          else
          {
          }

          v27 = v117;
          v22 = v119;
        }

        while (v26);
      }
    }

    sub_1C4CF0804(v60, v61);
    sub_1C4CF0684(0x73656372756F53, 0xE700000000000000);
    v62 = v2[37];
    v63 = sub_1C4428DA0(v62);
    v116 = v63;
    if (!v63)
    {
LABEL_82:
      v110 = sub_1C4CF0804(v63, v64);
      sub_1C4CF0804(v110, v111);
      swift_beginAccess();
      v7 = *(v3 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return v7;
    }

    v65 = 0;
    v113 = v62;
    v114 = v62 & 0xC000000000000001;
    v112 = v62 + 32;
    while (1)
    {
      sub_1C4431590(v65, v114 == 0, v62);
      if (v114)
      {
        result = MEMORY[0x1C6940F90](v65, v62);
        v66 = result;
      }

      else
      {
        v66 = *(v112 + 8 * v65);
      }

      if (__OFADD__(v65++, 1))
      {
        break;
      }

      v68 = sub_1C4CF5A60();
      sub_1C4CF0684(v68, v69);

      sub_1C4CF7400(0x6C62616C69617661, 0xE900000000000065, *(v66 + 72), v3);
      if (*(v66 + 72))
      {
        if (*(v66 + 64) != *(v66 + 120))
        {
          sub_1C4CF7400(0x6465676E616863, 0xE700000000000000, 1, v3);
        }

        if (*(v66 + 282) == 1)
        {
          sub_1C4CF7400(0x65726F74696E6F6DLL, 0xE900000000000064, 1, v3);
        }

        if (*(v66 + 243) == 1)
        {
          sub_1C4CF7400(0x6F69725068676968, 0xEC00000079746972, 1, v3);
        }
      }

      memcpy(v163, (v66 + 24), sizeof(v163));
      sub_1C444AAD0(v163, v133);
      sub_1C4CF7910(0x656372756F73, 0xE600000000000000, v163, v3);
      sub_1C44528B0(v163);
      v70 = *(v66 + 112);
      v71 = *(v66 + 136);
      v72 = *(v66 + 144);
      v159 = *(v66 + 96);
      v160 = v70;
      v161 = *(v66 + 120);
      v162 = xmmword_1C4F29230;
      v121 = v72;
      v123 = v71;
      sub_1C4431E64(v71, v72);
      sub_1C4CF7BB0(0x694C656372756F73, 0xEE0072656E657473, &v159, v3);
      v73 = *(v66 + 32);
      memcpy(v156, (v66 + 24), sizeof(v156));
      v74 = *(v66 + 224);
      v157[0] = *(v66 + 208);
      v157[1] = v74;
      v157[2] = *(v66 + 240);
      v158 = *(v66 + 256);
      v75 = *(v66 + 136);
      v76 = *(v66 + 144);
      sub_1C444AAD0(v156, v133);
      sub_1C444808C(v157, v133);
      sub_1C4431E64(v75, v76);
      v77 = sub_1C4CF0B88(v156, v157, v75, v76, v73);
      v79 = v78;
      sub_1C441DFEC(v75, v76);
      sub_1C44636BC(v157);
      sub_1C44528B0(v156);
      if (v79)
      {
        v80 = v77;
      }

      else
      {
        v80 = 1819047278;
      }

      if (v79)
      {
        v81 = v79;
      }

      else
      {
        v81 = 0xE400000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CF0884(0xD000000000000017, 0x80000001C4FC5F60, v80, v81);

      v82 = *(v66 + 168);
      v83 = *(v66 + 192);
      v84 = *(v66 + 200);
      v152 = *(v66 + 152);
      v153 = v82;
      v154 = *(v66 + 176);
      v155 = xmmword_1C4F29230;
      v118 = v84;
      v120 = v83;
      sub_1C4431E64(v83, v84);
      sub_1C4CF7BB0(0xD000000000000019, 0x80000001C4FC5960, &v152, v3);
      v85 = *(v66 + 32);
      memcpy(v149, (v66 + 24), sizeof(v149));
      v86 = *(v66 + 224);
      v150[0] = *(v66 + 208);
      v150[1] = v86;
      v150[2] = *(v66 + 240);
      v151 = *(v66 + 256);
      v87 = *(v66 + 192);
      v88 = *(v66 + 200);
      sub_1C444AAD0(v149, v133);
      sub_1C444808C(v150, v133);
      sub_1C4431E64(v87, v88);
      sub_1C4CF0B88(v149, v150, v87, v88, v85);

      sub_1C441DFEC(v87, v88);
      sub_1C44636BC(v150);
      sub_1C44528B0(v149);
      sub_1C4CF0884(0xD000000000000022, 0x80000001C4FC5F80, v80, v81);

      v89 = *(v66 + 224);
      v90 = *(v66 + 232);
      v91 = *(v66 + 240);
      v92 = *(v66 + 241);
      v93 = *(v66 + 242);
      v94 = *(v66 + 243);
      v95 = *(v66 + 244);
      v96 = *(v66 + 245);
      v138 = *(v66 + 208);
      v139 = v89;
      v140 = v90;
      v141 = v91;
      v142 = v92;
      v143 = v93;
      v144 = v94;
      v145 = v95;
      v146 = v96;
      v147 = 0;
      v148 = 0xE000000000000000;
      sub_1C4CF7E58(0xD000000000000014, 0x80000001C4F87AC0, &v138, v3);
      v97 = *(v66 + 248);
      v98 = *(v66 + 256);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CF0884(0xD00000000000001BLL, 0x80000001C4FC5FB0, v97, v98);

      v99 = swift_beginAccess();
      if (*(*(v66 + 272) + 16))
      {
        v101 = sub_1C4CF0674(0x73726F727265, 0xE600000000000000);
        v103 = *(v66 + 272);
        v104 = *(v103 + 16);
        if (v104)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v105 = 32;
          do
          {
            memcpy(v137, (v103 + v105), sizeof(v137));
            if ((v137[6] >> 60) >= 0xB)
            {
              sub_1C4CF6478(v137, v133);
              v106 = sub_1C4F01CF8();
            }

            else
            {
              sub_1C4CF6478(v137, v133);
              v106 = sub_1C4F01CD8();
            }

            if (sub_1C4F01CF8() == v106)
            {
              v133[0] = 0x208FB8EFA09AE2;
              v107 = 0xA700000000000000;
            }

            else
            {
              v133[0] = 546086370;
              v107 = 0xA400000000000000;
            }

            v133[1] = v107;
            v130 = v179;
            v131 = sub_1C4F02858();
            v132 = v108;
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v126, v127);
            MEMORY[0x1C6940010](v131, v132);

            MEMORY[0x1C6940010](8250, 0xE200000000000000);
            v109 = sub_1C4CF5BF8();
            MEMORY[0x1C6940010](v109);

            sub_1C4CF6998(v133[0], v133[1], v3);
            sub_1C4CF64B0(v137);

            v105 += 72;
            --v104;
          }

          while (v104);
        }

        v99 = sub_1C4CF067C(v101, v102);
      }

      sub_1C4CF0804(v99, v100);
      sub_1C441DFEC(v120, v118);
      sub_1C441DFEC(v123, v121);

      v62 = v113;
      if (v65 == v116)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CF5A60()
{
  sub_1C4F02248();
  v1 = sub_1C4F02858();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  sub_1C4F02438();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  sub_1C4F02438();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  sub_1C4F02438();
  return 0;
}

unint64_t sub_1C4CF5BF8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[6];
  v4 = *v0;
  switch(v3 >> 60)
  {
    case 1uLL:
      v43 = 0;
      sub_1C4F02248();
      v5 = 0x6575657571207369;
      v6 = 0xED0000206E692064;
      goto LABEL_21;
    case 2uLL:
      sub_1C4F02248();

      v43 = 0xD00000000000001DLL;
      swift_unownedRetainStrong();
      v25 = sub_1C4CF5A60();
      v27 = v26;

      MEMORY[0x1C6940010](v25, v27);
      goto LABEL_33;
    case 3uLL:
      v43 = 0;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000038, 0x80000001C4FC5E20);
      swift_unownedRetainStrong();
      v28 = sub_1C4CF5A60();
      v30 = v29;

      MEMORY[0x1C6940010](v28, v30);

      v22 = 0x63657078656E7520;
      v31 = 0xEB00000000646574;
      goto LABEL_25;
    case 4uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v20 = sub_1C4CF5A60();

      v43 = v20;
      v21 = "and cannot update: ";
      v22 = 0xD000000000000020;
      goto LABEL_24;
    case 5uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v36 = sub_1C4CF5A60();

      v43 = v36;
      v21 = "eue unexpectedly";
      v22 = 0xD000000000000029;
      goto LABEL_24;
    case 6uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v37 = sub_1C4CF5A60();

      v43 = v37;
      v21 = " is not monitoring changes";
      v22 = 0xD000000000000023;
      goto LABEL_24;
    case 7uLL:
      sub_1C4F02248();
      swift_unownedRetainStrong();
      v32 = sub_1C4CF5A60();

      v43 = v32;
      v21 = "is not queued in ";
      v22 = 0xD00000000000001ALL;
LABEL_24:
      v31 = v21 | 0x8000000000000000;
      goto LABEL_25;
    case 8uLL:
      return 0xD00000000000003DLL;
    case 9uLL:
      return 0xD00000000000003DLL;
    case 0xAuLL:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v43 = 0x64656C6261736964;
      v38 = sub_1C4F02858();
      MEMORY[0x1C6940010](v38);

      MEMORY[0x1C6940010](8250, 0xE200000000000000);
      if (v2)
      {
        v39 = v1;
      }

      else
      {
        v39 = 0;
      }

      if (v2)
      {
        v40 = v2;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      MEMORY[0x1C6940010](v39, v40);
      goto LABEL_33;
    case 0xBuLL:
      v43 = 0;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FC5D80);
      v7 = *(v4 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v42 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v7, 0);
        v8 = v42;
        v9 = (v4 + 48);
        do
        {
          v11 = *v9;
          v10 = v9[1];
          v12 = v9[5];
          v13 = v9[6];
          v41[8] = 0;
          *v41 = *(v9 - 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4431E64(v12, v13);
          sub_1C4F02438();
          MEMORY[0x1C6940010](58, 0xE100000000000000);
          MEMORY[0x1C6940010](v11, v10);
          MEMORY[0x1C6940010](58, 0xE100000000000000);
          sub_1C4F02438();

          sub_1C441DFEC(v12, v13);
          v15 = *(v42 + 16);
          v14 = *(v42 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1C44CD9C0(v14 > 1, v15 + 1, 1);
          }

          v9 += 9;
          *(v42 + 16) = v15 + 1;
          v16 = v42 + 16 * v15;
          *(v16 + 32) = *&v41[1];
          *(v16 + 40) = 0xE000000000000000;
          --v7;
        }

        while (v7);
      }

      v17 = MEMORY[0x1C6940380](v8, MEMORY[0x1E69E6158]);
      v19 = v18;

      MEMORY[0x1C6940010](v17, v19);
LABEL_33:

      return v43;
    case 0xCuLL:
      if (v3 == 0xC000000000000000 && (v1 | v2 | v4 | v0[8] | v0[7] | v0[5] | v0[4] | v0[3]) == 0)
      {
        return 0xD000000000000022;
      }

      else
      {
        return 0xD000000000000016;
      }

    default:
      v43 = 0;
      sub_1C4F02248();
      v5 = 0xD000000000000011;
      v6 = 0x80000001C4FC5E80;
LABEL_21:
      MEMORY[0x1C6940010](v5, v6);
      sub_1C4F02438();
      MEMORY[0x1C6940010](2108704, 0xE300000000000000);
      swift_unownedRetainStrong();
      v33 = sub_1C4CF5A60();
      v35 = v34;

      MEMORY[0x1C6940010](v33, v35);

      v22 = 0x63657078656E7520;
      v31 = 0xED0000796C646574;
LABEL_25:
      MEMORY[0x1C6940010](v22, v31);
      return v43;
  }
}

uint64_t sub_1C4CF6320(uint64_t a1)
{
  if ((*(v1 + 48) >> 60) >= 0xB)
  {
    v2 = sub_1C4F01CF8();
  }

  else
  {
    v2 = sub_1C4F01CD8();
  }

  if (sub_1C4F01CF8() == v2)
  {
    v3 = 0x208FB8EFA09AE2;
  }

  else
  {
    v3 = 546086370;
  }

  v7 = v3;
  v4 = sub_1C4D11C18();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](8250, 0xE200000000000000);
  v5 = sub_1C4CF5BF8();
  MEMORY[0x1C6940010](v5);

  return v7;
}

uint64_t sub_1C4CF64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7 >> 60 != 11)
  {
    return sub_1C4431E64(a6, a7);
  }

  return result;
}

void *sub_1C4CF64FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4CF6E8C(a4, v9);
    sub_1C4CF6E8C(a4, v9);
    v6 = sub_1C43FE990();
    v8 = sub_1C4CF6788(v6, v7, a3, a4);

    sub_1C4CF6448(a4);
    sub_1C4CF6448(a4);
    return v8;
  }

  return result;
}

uint64_t sub_1C4CF65C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29[41] = *MEMORY[0x1E69E9840];
  v5 = ((1 << *(a1 + 32)) + 63) >> 6;
  v6 = sub_1C441E88C();
  if (v8 > 0xD)
  {
    sub_1C4CF6E8C(v6, v7);
    v20 = sub_1C441E88C();
    sub_1C4CF6E8C(v20, v21);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v22 = swift_slowAlloc();
      v23 = sub_1C441E88C();
      sub_1C4CF6E8C(v23, v24);
      v25 = sub_1C442C0FC();
      v3 = sub_1C4CF64FC(v25, v26, v27, v28);
      MEMORY[0x1C6942830](v22, -1, -1);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C4CF6E8C(v6, v7);
    v9 = sub_1C441E88C();
    v11 = sub_1C4CF6E8C(v9, v10);
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1C4501018(0, v5, v29 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  v12 = sub_1C441E88C();
  sub_1C4CF6E8C(v12, v13);
  v14 = sub_1C442C0FC();
  v18 = sub_1C4CF6788(v14, v15, v16, v17);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v18;
  }

LABEL_6:
  sub_1C4CF6448(a2);
  sub_1C4CF6448(a2);
  sub_1C4CF6448(a2);
  return v3;
}

uint64_t sub_1C4CF6788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v19 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    MEMORY[0x1EEE9AC00](result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C479B5CC();

    if (v14)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C458752C(v19, a2, v20, a3);
        v17 = v16;
        sub_1C4CF6448(a4);
        return v17;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C4CF693C()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348F0();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C4CF6998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6160];
  v22[0] = a1;
  v22[1] = a2;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEC2C0();
  v8 = v7;
  v10 = v9;
  swift_endAccess();
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v11, v10);
  swift_endAccess();

  sub_1C4409678(v22, v23);
  v12 = sub_1C4EF93B8();
  v14 = v13;
  sub_1C4F01178();
  v15 = sub_1C4F01158();
  v17 = v16;
  sub_1C4434000(v12, v14);
  if (!v17)
  {

    v17 = 0xE400000000000000;
    v15 = 1819047278;
  }

  MEMORY[0x1C6940010](v15, v17);

  swift_beginAccess();
  MEMORY[0x1C6940010](0, 0xE000000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v18 = *(*(a3 + 40) + 16);
  sub_1C45897E8();
  v19 = *(a3 + 40);
  *(v19 + 16) = v18 + 1;
  v20 = v19 + 16 * v18;
  *(v20 + 32) = 44;
  *(v20 + 40) = 0xE100000000000000;
  *(a3 + 40) = v19;
  swift_endAccess();
  return sub_1C440962C(v22);
}

uint64_t sub_1C4CF6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6160];
  v26[0] = a3;
  v26[1] = a4;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEC2C0();
  v12 = v11;
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v14 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v15, v14);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v26, v27);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a5 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a5 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a5 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v26);
}

uint64_t sub_1C4CF6F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E6538];
  v24[0] = a3;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v13, v12);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v24, v25);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v20 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v21 = *(a4 + 40);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = 44;
  *(v22 + 40) = 0xE100000000000000;
  *(a4 + 40) = v21;
  swift_endAccess();
  return sub_1C440962C(v24);
}

uint64_t sub_1C4CF7188(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = MEMORY[0x1E69E63B0];
  v26 = MEMORY[0x1E69E63C0];
  *v24 = a4;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v13, v12);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v24, v25);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v20 = *(*(a3 + 40) + 16);
  sub_1C45897E8();
  v21 = *(a3 + 40);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = 44;
  *(v22 + 40) = 0xE100000000000000;
  *(a3 + 40) = v21;
  swift_endAccess();
  return sub_1C440962C(v24);
}

uint64_t sub_1C4CF7400(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = MEMORY[0x1E69E6370];
  v26 = MEMORY[0x1E69E6378];
  LOBYTE(v24[0]) = a3;
  swift_beginAccess();
  sub_1C4CEC2C0();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v13, v12);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v24, v25);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  swift_beginAccess();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v20 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v21 = *(a4 + 40);
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = 44;
  *(v22 + 40) = 0xE100000000000000;
  *(a4 + 40) = v21;
  swift_endAccess();
  return sub_1C440962C(v24);
}

uint64_t sub_1C4CF7670(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &unk_1F4400ED0;
  v30 = sub_1C4BBBAA4();
  v28[0] = swift_allocObject();
  memcpy((v28[0] + 16), a3, 0x48uLL);
  swift_beginAccess();
  sub_1C4443048(a3, &v26);
  sub_1C4CEC2C0();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v13, v12);
  swift_endAccess();

  v26 = 34;
  v27 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v28, v29);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  v20 = v26;
  v21 = v27;
  swift_beginAccess();
  MEMORY[0x1C6940010](v20, v21);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a4 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a4 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v28);
}

uint64_t sub_1C4CF7910(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &_s11SourceStateVN;
  v30 = sub_1C4BB966C();
  v28[0] = swift_allocObject();
  memcpy((v28[0] + 16), a3, 0x48uLL);
  swift_beginAccess();
  sub_1C444AAD0(a3, &v26);
  sub_1C4CEC2C0();
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v13, v12);
  swift_endAccess();

  v26 = 34;
  v27 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v28, v29);
  v14 = sub_1C4EF93B8();
  v16 = v15;
  sub_1C4F01178();
  v17 = sub_1C4F01158();
  v19 = v18;
  sub_1C4434000(v14, v16);
  if (!v19)
  {

    v19 = 0xE400000000000000;
    v17 = 1819047278;
  }

  MEMORY[0x1C6940010](v17, v19);

  v20 = v26;
  v21 = v27;
  swift_beginAccess();
  MEMORY[0x1C6940010](v20, v21);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v22 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v23 = *(a4 + 40);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 16 * v22;
  *(v24 + 32) = 44;
  *(v24 + 40) = 0xE100000000000000;
  *(a4 + 40) = v23;
  swift_endAccess();
  return sub_1C440962C(v28);
}

uint64_t sub_1C4CF7BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &unk_1F44009B8;
  v32 = sub_1C4BB7BA4();
  v9 = swift_allocObject();
  v30[0] = v9;
  v10 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = *(a3 + 48);
  swift_beginAccess();
  sub_1C444C58C(a3, &v28);
  sub_1C4CEC2C0();
  v12 = v11;
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v14 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v15, v14);
  swift_endAccess();

  v28 = 34;
  v29 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v30, v31);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  v22 = v28;
  v23 = v29;
  swift_beginAccess();
  MEMORY[0x1C6940010](v22, v23);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v24 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v25 = *(a4 + 40);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = 44;
  *(v26 + 40) = 0xE100000000000000;
  *(a4 + 40) = v25;
  swift_endAccess();
  return sub_1C440962C(v30);
}

uint64_t sub_1C4CF7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &unk_1F4400910;
  v32 = sub_1C4BB7AFC();
  v9 = swift_allocObject();
  v30[0] = v9;
  v10 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a3 + 32);
  *(v9 + 64) = *(a3 + 48);
  swift_beginAccess();
  sub_1C444808C(a3, &v28);
  sub_1C4CEC2C0();
  v12 = v11;
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v14 = 0xE000000000000000;
  }

  swift_beginAccess();
  MEMORY[0x1C6940010](v15, v14);
  swift_endAccess();

  v28 = 34;
  v29 = 0xE100000000000000;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  sub_1C4409678(v30, v31);
  v16 = sub_1C4EF93B8();
  v18 = v17;
  sub_1C4F01178();
  v19 = sub_1C4F01158();
  v21 = v20;
  sub_1C4434000(v16, v18);
  if (!v21)
  {

    v21 = 0xE400000000000000;
    v19 = 1819047278;
  }

  MEMORY[0x1C6940010](v19, v21);

  v22 = v28;
  v23 = v29;
  swift_beginAccess();
  MEMORY[0x1C6940010](v22, v23);
  swift_endAccess();

  swift_beginAccess();
  sub_1C4588BAC();
  v24 = *(*(a4 + 40) + 16);
  sub_1C45897E8();
  v25 = *(a4 + 40);
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = 44;
  *(v26 + 40) = 0xE100000000000000;
  *(a4 + 40) = v25;
  swift_endAccess();
  return sub_1C440962C(v30);
}

uint64_t sub_1C4CF8134(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C4CF814C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C4CF8170(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1C4CF81B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF8254(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C4CF829C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF8310(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 48) & 0x101 | (a2 << 62);
    *(result + 8) &= 7uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0x8000000000000000;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

void sub_1C4CF837C(uint64_t a1, unint64_t a2)
{
  sub_1C4417AD0(a1, a2);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = sub_1C43FE198();
    v8 = sub_1C441D828(v6, v7, &v16);

    *(v4 + 4) = v8;
    sub_1C4411448(&dword_1C43F8000, v9, v10, "ViewUpdate: %s: Finished update", v11, v12, v13, v14, oslog);
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CF84B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_1C444C58C(a1, v13);
  sub_1C4BACEC4();
  if (v2)
  {
    return sub_1C444053C(a1);
  }

  sub_1C4449828();
  if (v16[49])
  {
    sub_1C44F92C4();
  }

  else
  {
    sub_1C4463B90();
  }

  v8 = v17;
  v9 = v18;
  sub_1C4BAA378();
  v10 = v14;
  v11 = v15;
  sub_1C4409678(v13, v14);
  v12 = (*(v11 + 64))(v10, v11);
  LOBYTE(v10) = v16[40] | (v9 >> 60 != 15);
  sub_1C4431E64(v8, v9);
  sub_1C444AF3C(v16);
  result = sub_1C440962C(v13);
  *a2 = v12;
  *(a2 + 1) = v10 & 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = xmmword_1C4F29230;
  return result;
}

double sub_1C4CF865C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C4CF84B0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C4CF86DC()
{
  sub_1C4F02248();
  v1 = sub_1C4432E24();
  MEMORY[0x1C6940010](v1);
  if (v0[32])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[32])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  v4 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v4, v5, &_s21ViewUpdateSourceStateON, v6, v7, v8, v9, v10, v20, *v22, *&v22[4], v22[6], v0[33], 0);
  v11 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v11, v12, &_s24ViewUpdateSourceResponseON, v13, v14, v15, v16, v17, v21, v23, v24, v25, v0[34], v26);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v18 = sub_1C43FE198();
  MEMORY[0x1C6940010](v18);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v27;
}

uint64_t *sub_1C4CF8844(void *a1, void *a2)
{
  v4 = v2;
  *(v2 + 152) = xmmword_1C4F29230;
  *(v2 + 224) = 0;
  v7 = [a1 state];
  v8 = sub_1C4F01138();
  v10 = v9;

  v11 = sub_1C443BE78(v8, v10);
  if (v11 == 5)
  {
    sub_1C4F02248();

    *&v86[0] = 0xD00000000000001ELL;
    *(&v86[0] + 1) = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v12 = [a1 state];
    v13 = sub_1C4F01138();
    v15 = v14;

    MEMORY[0x1C6940010](v13, v15);

    v16 = sub_1C446D0DC();
    v17 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v16);
    *v18 = v86[0];
    sub_1C4413C68(v17, v18);

    sub_1C445F57C(a2);
    sub_1C441DFEC(*(v4 + 152), *(v4 + 160));
LABEL_10:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v19 = v11;
  v20 = [a1 configIdentifier];
  v21 = [v20 index];

  v22 = a2[33];
  if (!v22 || *(v22 + 16) <= v21)
  {
    *&v86[0] = 0;
    *(&v86[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    v35 = sub_1C4432E24();
    MEMORY[0x1C6940010](v35);
    MEMORY[0x1C6940010](2003134838, 0xE400000000000000);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    *&v84[0] = v21;
    v36 = sub_1C4F02858();
    MEMORY[0x1C6940010](v36);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    v37 = sub_1C446D0DC();
    v38 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v37);
    *v39 = v86[0];
    sub_1C4413C68(v38, v39);

    sub_1C445F57C(a2);
    goto LABEL_9;
  }

  result = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 24) = result;
  if ((v21 & 0x80000000) == 0)
  {
    v24 = v22 + 56 * v21;
    v25 = *(v24 + 32);
    v26 = *(v24 + 48);
    v27 = *(v24 + 64);
    v87 = *(v24 + 80);
    v86[1] = v26;
    v86[2] = v27;
    v86[0] = v25;
    v28 = *(v24 + 32);
    v29 = *(v24 + 48);
    v30 = *(v24 + 64);
    *(v4 + 120) = *(v24 + 80);
    *(v4 + 104) = v30;
    *(v4 + 88) = v29;
    *(v4 + 72) = v28;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C47F5DBC(v86, v84);
    v31 = sub_1C443ED0C([a1 configIdentifier]);
    if (v3)
    {

      sub_1C445F57C(a2);

      sub_1C441296C(v53, v54, v55, v56, v57, v58, v59, v60, v73, v74, v75, v76, v78, v79, v80, v81, v82, v83, v84[0], v84[1], v84[2], v85);
LABEL_9:
      sub_1C441DFEC(*(v4 + 152), *(v4 + 160));
      goto LABEL_10;
    }

    *(v4 + 40) = v31;
    *(v4 + 48) = v32;
    *(v4 + 56) = v33;
    *(v4 + 64) = v34;
    *(v4 + 128) = 0;
    *(v4 + 136) = sub_1C443D554(a1);
    *(v4 + 144) = v40;
    v41 = sub_1C443D554(a1);
    v42 = *(v4 + 152);
    v43 = *(v4 + 160);
    *(v4 + 152) = v41;
    *(v4 + 160) = v44;
    sub_1C441DFEC(v42, v43);
    v45 = sub_1C445CA14(a1);
    *(v4 + 168) = v45;
    *(v4 + 176) = v46;
    *(v4 + 34) = 0;
    v47 = *(v4 + 96);
    v88 = v46;
    if (v47 == 2 || (v47 & 1) == 0)
    {
      sub_1C4463B90();
    }

    else
    {
      sub_1C44F92C4();
    }

    v49 = *(v4 + 136);
    v48 = *(v4 + 144);
    v50 = *(v4 + 152);
    v77 = *(v4 + 160);
    v51 = sub_1C440DE0C();
    sub_1C4431E64(v51, v52);
    sub_1C4431E64(v45, v88);
    sub_1C4431E64(v50, v77);
    sub_1C440DE0C();
    sub_1C4BAA378();
    sub_1C441DFEC(v50, v77);
    sub_1C441DFEC(v45, v88);
    sub_1C441DFEC(v49, v48);
    sub_1C441D670(v84, v4 + 184);
    *(v4 + 33) = v19;
    *(v4 + 32) = [a1 triggered];
    if (a2[37])
    {
      v61 = *(v4 + 208);
      v62 = *(v4 + 216);
      sub_1C4409678((v4 + 184), v61);
      v63 = (*(v62 + 64))(v61, v62);
      *(v4 + 33) = v63;
      sub_1C4441C50(v63);
      if (v65 == 0x676E616843736168 && v64 == 0xEA00000000007365)
      {
      }

      else
      {
        v67 = sub_1C4F02938();

        if ((v67 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v68 = *(v4 + 123);
      if (v68 != 2 && (v68 & 1) != 0)
      {
        *(v4 + 33) = 1;
      }
    }

LABEL_27:
    sub_1C4441C50(*(v4 + 33));
    if (v70 == 0x65676E6168436F6ELL && v69 == 0xE900000000000073)
    {

      sub_1C445F57C(a2);
    }

    else
    {
      v72 = sub_1C4F02938();

      sub_1C445F57C(a2);
      if ((v72 & 1) == 0)
      {
        return v4;
      }
    }

    *(v4 + 34) = 1;
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1C4CF8EC4()
{
  sub_1C4417AD0(*(v0 + 168), *(v0 + 176));
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    v5 = sub_1C43FE198();
    v7 = sub_1C441D828(v5, v6, &v15);

    *(v3 + 4) = v7;
    sub_1C4411448(&dword_1C43F8000, v8, v9, "ViewUpdate: %s: Finished update", v10, v11, v12, v13, oslog);
    sub_1C440962C(v4);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

void sub_1C4CF8FFC(const char *a1)
{
  v3 = v1;
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *(v1 + 152) = xmmword_1C4F29230;
  sub_1C441DFEC(v4, v5);
  if (*(v1 + 176) >> 60 == 15)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  *(v1 + 33) = v6;
  *(v1 + 34) = 2;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_1C444F05C(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
    v13 = sub_1C441D828(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, oslog, v8, a1, v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CF917C()
{
  v0 = sub_1C43FBC98();
  sub_1C4431E64(v0, v1);
  return sub_1C43FBC98();
}

void *sub_1C4CF91A8()
{

  sub_1C441DFEC(v0[17], v0[18]);
  sub_1C441DFEC(v0[19], v0[20]);
  sub_1C441DFEC(v0[21], v0[22]);
  sub_1C440962C(v0 + 23);
  return v0;
}

uint64_t sub_1C4CF920C()
{
  sub_1C4CF91A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CF9358()
{
  if (*(v0 + 112))
  {
    v0 = *(v0 + 104);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v1 = sub_1C446D0DC();
    v2 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v1);
    *v3 = xmmword_1C4F67D80;
    sub_1C4413C68(v2, v3);
  }

  return v0;
}

unint64_t sub_1C4CF93C4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFA598();
  v3 = sub_1C4EFA538();
  if (!v3)
  {
    v5 = 0xD000000000000017;
    sub_1C4868210(v2, v1);
    if (v6)
    {
      sub_1C4F00FF8();

      v7 = sub_1C4C8190C(1uLL, v2, v1);
      v8 = MEMORY[0x1C693FEF0](v7);
      v10 = v9;

      MEMORY[0x1C6940010](v8, v10);

      sub_1C4EFA598();
      v4 = sub_1C4EFA538();

      if (v4)
      {
        return v4;
      }

      v11 = "Do not have a view name";
      v5 = 0xD000000000000029;
    }

    else
    {

      v11 = "View listener [triggered: ";
    }

    v4 = v11 | 0x8000000000000000;
    v12 = sub_1C446D0DC();
    v13 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v12);
    *v14 = v5;
    v14[1] = v4;
    sub_1C4413C68(v13, v14);
    return v4;
  }

  v4 = v3;

  return v4;
}

unint64_t sub_1C4CF9544()
{
  v42 = sub_1C4F00728();
  sub_1C43FCDF8();
  v40 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v43 = v4 - v3;
  v5 = sub_1C4F007C8();
  sub_1C43FCDF8();
  v41 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v39 = v9 - v8;
  v10 = sub_1C4F00798();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C4F00778();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  result = sub_1C4CF93C4();
  if (!v0)
  {
    sub_1C4EFA5A8();
    sub_1C4F00768();
    sub_1C4F00788();
    sub_1C4F007A8();
    (*(v40 + 104))(v43, *MEMORY[0x1E69AA7A0], v42);
    sub_1C440B7B4();
    sub_1C4CFA0D4(v25, 255, v26, MEMORY[0x1E69AA7B0]);
    v37 = sub_1C4F00718();
    v38 = v27;
    sub_1C4401350();
    sub_1C4CFA0D4(v28, 255, v29, MEMORY[0x1E69AA7C0]);
    v35 = sub_1C4F006F8();
    v36 = v30;
    sub_1C4408190();
    sub_1C4CFA0D4(v31, 255, v32, MEMORY[0x1E69AA7D0]);
    v33 = sub_1C4F00718();
    MEMORY[0x1C693F420](v43, v37, v38, v35, v36, v33, v34);
    (*(v41 + 8))(v39, v5);
    (*(v12 + 8))(v16, v10);
    return (*(v19 + 8))(v23, v17);
  }

  return result;
}

uint64_t sub_1C4CF9978()
{
  sub_1C4F00728();
  sub_1C43FCDF8();
  v54 = v2;
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v6 = sub_1C4F007C8();
  sub_1C43FCDF8();
  v53 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4F00798();
  sub_1C43FCDF8();
  v52 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C4F00778();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  result = sub_1C4CF93C4();
  if (!v56)
  {
    v50 = v5;
    v51 = v24;
    v48 = v17;
    v49 = v20;
    v26 = *(v0 + 160);
    if (v26 >> 60 == 15)
    {
      return sub_1C4CF9544();
    }

    else
    {
      v27 = *(v0 + 152);
      v28 = sub_1C43FD024();
      sub_1C4431E64(v28, v29);
      v30 = sub_1C43FD024();
      sub_1C44344B8(v30, v31);
      v32 = sub_1C43FD024();
      sub_1C44F9344(v32, v33);
      sub_1C4EFA5A8();
      sub_1C4F00768();
      sub_1C4F00788();
      sub_1C4F007A8();
      (*(v54 + 104))(v50, *MEMORY[0x1E69AA7A0], v55);
      sub_1C440B7B4();
      sub_1C4CFA0D4(v34, 255, v35, MEMORY[0x1E69AA7B0]);
      v46 = sub_1C4F00718();
      v47 = v36;
      sub_1C4401350();
      sub_1C4CFA0D4(v37, 255, v38, MEMORY[0x1E69AA7C0]);
      v39 = sub_1C4F006F8();
      v41 = v40;
      sub_1C4408190();
      sub_1C4CFA0D4(v42, 255, v43, MEMORY[0x1E69AA7D0]);
      v44 = sub_1C4F00718();
      MEMORY[0x1C693F420](v50, v46, v47, v39, v41, v44, v45);
      sub_1C441DFEC(v27, v26);
      (*(v53 + 8))(v11, v6);
      (*(v52 + 8))(v48, v12);
      return (*(v49 + 8))(v51, v18);
    }
  }

  return result;
}

uint64_t sub_1C4CF9E40()
{
  v2 = sub_1C4F007C8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4F00748();
  sub_1C4408190();
  sub_1C4CFA0D4(v9, 255, v10, MEMORY[0x1E69AA7D0]);
  result = sub_1C4F00708();
  if (!v1)
  {
    v12 = 0.0;
    v13 = *(v0 + 176) >> 60;
    if (v13 != 15)
    {
      v14 = sub_1C440DE0C();
      sub_1C44344B8(v14, v15);
      v16 = sub_1C440DE0C();
      sub_1C44F9344(v16, v17);
      v12 = v18;
    }

    sub_1C4F007B8();
    v20 = v19;
    if (v13 >= 0xF)
    {
      sub_1C4F007B8();
      v12 = v21;
    }

    v22 = sub_1C44F95AC(v20, v12);
    v24 = v23;
    sub_1C4CF837C(v22, v23);
    sub_1C4434000(v22, v24);
    return (*(v4 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_1C4CFA07C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4CFA0D4(qword_1EDDFC788, a2, _s10ViewSourceCMa, &unk_1C4F6BF9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4CFA0D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C4CFA12C()
{
  sub_1C43FCF70();
  sub_1C4408F38(&dword_1C4F6C1F0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFA1BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA1DC, 0, 0);
}

uint64_t sub_1C4CFA28C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA2AC, 0, 0);
}

uint64_t sub_1C4CFA35C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA37C, 0, 0);
}

uint64_t sub_1C4CFA42C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA44C, 0, 0);
}

uint64_t sub_1C4CFA504(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA524, 0, 0);
}

uint64_t sub_1C4CFA5D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA5F4, 0, 0);
}

uint64_t sub_1C4CFA6A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA6C4, 0, 0);
}

uint64_t sub_1C4CFA774(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA794, 0, 0);
}

uint64_t sub_1C4CFA844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA864, 0, 0);
}

uint64_t sub_1C4CFA914(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFA934, 0, 0);
}

uint64_t sub_1C4CFA9E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAA04, 0, 0);
}

uint64_t sub_1C4CFAAB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAAD4, 0, 0);
}

uint64_t sub_1C4CFAB84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFABA4, 0, 0);
}

uint64_t sub_1C4CFAC54(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFAC74, 0, 0);
}

uint64_t sub_1C4CFADA8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CFAE8C()
{
  sub_1C43FBCD4();
  sub_1C4D0E478();
  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4CFAEE4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CFAFC8()
{
  sub_1C43FCF70();
  sub_1C4D0E478();
  sub_1C445C2A4();
  sub_1C4BFE7BC();
  if (v0)
  {
    sub_1C43FC560();
  }

  else
  {
    sub_1C4D0E5C0();
    sub_1C43FC1B0();
  }

  return v1();
}

uint64_t sub_1C4CFB044(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFB064, 0, 0);
}

uint64_t sub_1C4CFB114(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CFB134, 0, 0);
}

uint64_t sub_1C4CFB1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4CFB494()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CFB578()
{
  sub_1C43FCF70();
  sub_1C4D0E478();
  sub_1C4411260();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = sub_1C441B5E0(v2);

  return v5(v3);
}

uint64_t sub_1C4CFB670()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
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
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C4CFB788()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CFB86C()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C1E8);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4CFB8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA1BC(a1);
}

uint64_t sub_1C4CFB9A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA9E4(a1);
}

uint64_t sub_1C4CFBA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAAB4(a1);
}

uint64_t sub_1C4CFBB00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFB114(a1);
}

uint64_t sub_1C4CFBBAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA774(a1);
}

uint64_t sub_1C4CFBC58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D029C0(a1);
}

uint64_t sub_1C4CFBD04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFB044(a1);
}

uint64_t sub_1C4CFBDB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA914(a1);
}

uint64_t sub_1C4CFBE5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA5D4(a1);
}

uint64_t sub_1C4CFBF08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA504(a1);
}

uint64_t sub_1C4CFBFB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA844(a1);
}

uint64_t sub_1C4CFC060(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D043F4(a1);
}

uint64_t sub_1C4CFC10C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D002E4(a1);
}

uint64_t sub_1C4CFC1B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAB84(a1);
}

uint64_t sub_1C4CFC264()
{
  v11 = v0;
  v1 = sub_1C444E0CC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C442E860(v3, v8);
      v4 = v9;
      v5 = v10;
      sub_1C4409678(v8, v9);
      (*(v5 + 128))(v4, v5);
      sub_1C440962C(v8);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C4CFC348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA6A4(a1);
}

uint64_t sub_1C4CFC3F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA35C(a1);
}

uint64_t sub_1C4CFC4A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D054C8(a1);
}

uint64_t sub_1C4CFC54C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFA28C(a1);
}

uint64_t sub_1C4CFC5F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D0244C(a1);
}

uint64_t sub_1C4CFC6A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4BE34F8(a1);
}

uint64_t sub_1C4CFC738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D00858(a1);
}

uint64_t sub_1C4CFC7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4BE6FE8();
}

uint64_t sub_1C4CFC878(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D05A30(a1);
}

uint64_t sub_1C4CFC924(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04968(a1);
}

uint64_t sub_1C4CFC9D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFAC54(a1);
}

uint64_t sub_1C4CFCA7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D0466C(a1);
}

uint64_t sub_1C4CFCB28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04150(a1);
}

uint64_t sub_1C4CFCBD4(uint64_t a1)
{
  sub_1C4D06A30(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4CFCC4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04C0C(a1);
}

uint64_t sub_1C4CFCCF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFF7A4(a1);
}

uint64_t sub_1C4CFCDA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D01398(a1);
}

uint64_t sub_1C4CFCE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D08CA0(a1);
}

uint64_t sub_1C4CFCEFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFE66C(a1);
}

uint64_t sub_1C4CFCFA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04CA4(a1);
}

uint64_t sub_1C4CFD054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D01ED8(a1);
}

uint64_t sub_1C4CFD100(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D042AC(a1);
}

uint64_t sub_1C4CFD1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4CFF230(a1);
}

uint64_t sub_1C4CFD258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04D64(a1);
}

uint64_t sub_1C4CFD304(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D048C4(a1);
}

uint64_t sub_1C4CFD3B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04350(a1);
}

uint64_t sub_1C4CFD45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D04B68(a1);
}