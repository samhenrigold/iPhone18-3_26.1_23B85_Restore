uint64_t sub_1C44E24F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1C445FAA8(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C44E2534(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1C44E254C()
{
  sub_1C43FBD3C();
  sub_1C4435804(v9, v10, v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for PeopleMatcher(v15);
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
          sub_1C447E868(v4, type metadata accessor for PeopleMatcher);
          sub_1C44D8B38();
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
  sub_1C44E2A2C(v37);
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
  switch(*(v0 + *(v5 + 32)))
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

uint64_t sub_1C44E2A2C@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for PeopleMatcher(0);
  switch(*(v2 + *(v15 + 32)))
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
        v31 = sub_1C447CB3C(&qword_1EDDF7F90, type metadata accessor for PeopleMatcher, &protocol conformance descriptor for PeopleMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF7F90, type metadata accessor for PeopleMatcher, &protocol conformance descriptor for PeopleMatcher);
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

uint64_t sub_1C44E2E7C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C44E2F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF91B8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void EntityMatch.init(from:)()
{
  sub_1C43FE96C();
  v55 = v0;
  v4 = v3;
  v50 = v5;
  v59 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v53 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  sub_1C456902C(&qword_1EC0BE138, &qword_1C4F32670);
  sub_1C43FCDF8();
  v51 = v18;
  v52 = v17;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C4402274();
  v58 = type metadata accessor for EntityMatch(v20);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v23 = v22;
  v24 = v4[3];
  v56 = v4;
  sub_1C4417F50(v4, v24);
  sub_1C44DE3A4();
  v54 = v2;
  sub_1C44BBC60();
  v25 = v55;
  sub_1C4F02BC8();
  if (v25)
  {
    sub_1C441D6F0();
    v26 = v23;
    v27 = v58;
    v28 = v14;
    sub_1C440962C(v56);
    if (v4)
    {
      v40 = v59;
      v41 = v57;
      (*(v53 + 8))(v26, v28);
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v40 = v59;
    v41 = v57;
    if (v13)
    {
LABEL_8:
      (*(v41 + 8))(v26 + *(v27 + 20), v40);
    }
  }

  else
  {
    v55 = v13;
    LOBYTE(v60) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v29, v30, MEMORY[0x1E69A92F0]);
    sub_1C44E76EC();
    sub_1C443EF1C();
    sub_1C4F026C8();
    v31 = *(v53 + 32);
    v32 = v23;
    v49 = v14;
    v31(v23, v1, v14);
    LOBYTE(v60) = 1;
    sub_1C4419854();
    sub_1C4490F60(v33, v34, MEMORY[0x1E69A9838]);
    v35 = v55;
    v36 = v59;
    sub_1C440EDF8();
    sub_1C4F026C8();
    v37 = *(v58 + 20);
    v38 = *(v57 + 32);
    v48 = v32;
    v55 = v38;
    v38(v32 + v37, v35, v36);
    sub_1C4471CBC(2);
    v39 = v10;
    sub_1C440EDF8();
    sub_1C443EF1C();
    sub_1C4F026C8();
    v42 = v58;
    v43 = v48;
    v55(v48 + *(v58 + 24), v39, v36);
    LOBYTE(v60) = 3;
    sub_1C443EF1C();
    sub_1C4F026A8();
    *(v43 + v42[7]) = v44;
    LOBYTE(v60) = 4;
    sub_1C443EF1C();
    v45 = sub_1C4F02698();
    v46 = v51;
    *(v43 + v42[8]) = v45;
    sub_1C44C8A04();
    sub_1C443EF1C();
    sub_1C4F026C8();
    *(v43 + v42[9]) = v60;
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFCEF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C443EF1C();
    sub_1C4F02658();
    (*(v46 + 8))(v54, v52);
    *(v43 + v42[10]) = v60;
    sub_1C449EEE8();
    sub_1C440962C(v56);
    sub_1C449F22C();
  }

LABEL_9:
  sub_1C43FBC80();
}

void sub_1C44E3664()
{
  sub_1C43FFB60();
  sub_1C4EFF0C8();
  v0 = sub_1C4403D08(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A9810], &qword_1EDDFCC98);
}

uint64_t sub_1C44E3714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44E37D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityMatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44E383C(uint64_t a1)
{
  v2 = type metadata accessor for EntityMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C44E3898(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v97 = a5;
  v91 = a4;
  v89 = a3;
  v92 = a1;
  v8 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - v9;
  v106 = type metadata accessor for EntityMatch(0);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v88 - v13;
  v95 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v88 - v18;
  v19 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v88 - v20;
  v109 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v96 = *a2;
  v24 = *(a6 + 16);
  v103 = v25;
  v100 = (v25 + 32);
  v26 = (a6 + 40);
  v102 = MEMORY[0x1E69E7CC0];
  v105 = v10;
  for (i = (a6 + 40); ; v26 = i)
  {
    v27 = ~v23;
    v28 = &v26[16 * v23];
    v29 = v24 - v23;
    if (!v29)
    {
      break;
    }

    while (1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v21, 1, v109) != 1)
      {
        break;
      }

      sub_1C4420C3C(v21, &unk_1EC0BA0E0, &qword_1C4F105A0);
      --v27;
      v28 += 16;
      if (!--v29)
      {
        goto LABEL_11;
      }
    }

    v30 = *v100;
    (*v100)(v101, v21, v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44D45E4(0, *(v102 + 16) + 1, 1, v102);
      v102 = v34;
    }

    v32 = *(v102 + 16);
    v31 = *(v102 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1C44D45E4(v31 > 1, v32 + 1, 1, v102);
      v102 = v35;
    }

    v23 = -v27;
    v33 = v102;
    *(v102 + 16) = v32 + 1;
    v30((v33 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v32), v101, v109);
  }

LABEL_11:
  if (qword_1EDDF91F0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v36 = sub_1C4EFBD38();
    v37 = sub_1C442B738(v36, qword_1EDE2DAD0);
    v38 = MEMORY[0x1E69A0050];
    v117 = v36;
    v118 = MEMORY[0x1E69A0050];
    v39 = sub_1C4422F90(&v116);
    v40 = *(v36 - 1);
    v41 = *(v40 + 16);
    v42 = v40 + 16;
    (v41)(v39, v37, v36);
    v43 = v109;
    v111 = v109;
    v112 = sub_1C4490890(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
    v44 = sub_1C4422F90(v110);
    v45 = *(v103 + 16);
    v101 = (v103 + 16);
    v100 = v45;
    (v45)(v44, v97, v43);
    v46 = sub_1C4EFB298();
    v47 = MEMORY[0x1E699FE60];
    v114 = v46;
    v115 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v113);
    sub_1C4EFBB28();
    sub_1C4420C3C(v110, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v116);
    v119 = v102;
    v117 = v36;
    v118 = v38;
    v48 = sub_1C4422F90(&v116);
    i = v41;
    v97 = v42;
    (v41)(v48, v37, v36);
    v111 = v46;
    v112 = v47;
    sub_1C4422F90(v110);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
    sub_1C4F01458();
    sub_1C440962C(&v116);

    v102 = v46;
    v117 = v46;
    v118 = v47;
    sub_1C4422F90(&v116);
    sub_1C4EFBB78();
    sub_1C440962C(v110);
    sub_1C440962C(v113);
    sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
    v49 = v106;
    sub_1C4EFAE28();
    sub_1C440962C(&v116);
    if (qword_1EDDF9200 != -1)
    {
      swift_once();
    }

    v50 = sub_1C442B738(v36, qword_1EDE2DAE8);
    v114 = v36;
    v115 = MEMORY[0x1E69A0050];
    v51 = sub_1C4422F90(v113);
    v52 = v50;
    v53 = i;
    (i)(v51, v52, v36);
    v54 = 0xE700000000000000;
    v55 = 0x6E776F6E6B6E75;
    v56 = v95;
    v57 = v94;
    switch(v96)
    {
      case 1uLL:
        v54 = 0xE400000000000000;
        v55 = 1819047270;
        break;
      case 2uLL:
        v54 = 0xE500000000000000;
        v55 = 0x61746C6564;
        break;
      case 3uLL:
        v54 = 0xEA0000000000676ELL;
        v55 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v111 = MEMORY[0x1E69E6158];
    v112 = MEMORY[0x1E69A0130];
    v110[0] = v55;
    v110[1] = v54;
    v117 = v102;
    v118 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v116);
    sub_1C4EFBB28();
    sub_1C4420C3C(v110, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v113);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF70]);
    v58 = v99;
    sub_1C4EFB438();
    v59 = *(v98 + 8);
    v99 = (v98 + 8);
    v96 = v59;
    v59(v58, v56);
    sub_1C440962C(&v116);
    if ((v91 & 1) == 0)
    {
      v60 = v53;
      if (qword_1EC0B6BC8 != -1)
      {
        swift_once();
      }

      v61 = sub_1C442B738(v36, qword_1EC1521F8);
      v114 = v36;
      v115 = MEMORY[0x1E69A0050];
      v62 = sub_1C4422F90(v113);
      (v60)(v62, v61, v36);
      v111 = MEMORY[0x1E69E63B0];
      v112 = MEMORY[0x1E69A0160];
      v110[0] = v89;
      v117 = v102;
      v118 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v116);
      sub_1C4EFB808();
      sub_1C440962C(v110);
      sub_1C440962C(v113);
      v63 = v88;
      sub_1C4EFB438();
      v96(v57, v56);
      sub_1C440962C(&v116);
      (*(v98 + 32))(v57, v63, v56);
    }

    sub_1C4401CBC(&qword_1EDDFA2E8, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF60]);
    sub_1C4490890(&qword_1EDDF91D8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
    v64 = v93;
    sub_1C4EFAFD8();
    if (v64)
    {
      break;
    }

    v65 = 0;
    v36 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v66 = v105;
      sub_1C44E4768();
      if (sub_1C44157D4(v66, 1, v49) == 1)
      {
        v96(v94, v95);

        sub_1C4420C3C(v66, &qword_1EC0BB248, &qword_1C4F1E7C8);
        sub_1C44239FC(v65, 0);
        return v36;
      }

      v67 = v108;
      sub_1C44D1B5C(v66, v108, type metadata accessor for EntityMatch);
      v68 = *(v49 + 20);
      sub_1C4490938(v67, v107, type metadata accessor for EntityMatch);
      sub_1C44239FC(v65, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v36;
      sub_1C44E3664();
      if (__OFADD__(v36[2], (v70 & 1) == 0))
      {
        break;
      }

      v71 = v69;
      v72 = v70;
      sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
      v73 = sub_1C4F02458();
      v36 = v116;
      if (v73)
      {
        sub_1C44E3664();
        if ((v72 & 1) != (v75 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          JUMPOUT(0x1C44E4758);
        }

        v71 = v74;
      }

      if ((v72 & 1) == 0)
      {
        v36[(v71 >> 6) + 8] |= 1 << v71;
        (v100)(v36[6] + *(v103 + 72) * v71, v108 + v68, v109);
        *(v36[7] + 8 * v71) = MEMORY[0x1E69E7CC0];
        v76 = v36[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_41;
        }

        v36[2] = v78;
      }

      v79 = v36[7];
      v80 = *(v79 + 8 * v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v79 + 8 * v71) = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44E3770(0, *(v80 + 16) + 1, 1, v80);
        v80 = v85;
        *(v79 + 8 * v71) = v85;
      }

      v83 = *(v80 + 16);
      v82 = *(v80 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1C44E3770(v82 > 1, v83 + 1, 1, v80);
        *(v79 + 8 * v71) = v86;
      }

      sub_1C4491300(v108, type metadata accessor for EntityMatch);
      v84 = *(v79 + 8 * v71);
      *(v84 + 16) = v83 + 1;
      sub_1C44D1B5C(v107, v84 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v83, type metadata accessor for EntityMatch);
      v65 = sub_1C455B584;
      v49 = v106;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v96(v57, v56);
  return v36;
}

void sub_1C44E4768()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA390, &unk_1EC0BC9E8, &unk_1C4F29B70);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for EntityMatch(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&unk_1EDDFA3A0, &unk_1EC0BC9E8, &unk_1C4F29B70);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityMatch(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
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

void *sub_1C44E4944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v106 = a8;
  v107 = a7;
  v112 = a6;
  v113 = a4;
  v111 = a1;
  v12 = sub_1C4EFD548();
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v98 - v15;
  v17 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v98 - v18;
  v20 = type metadata accessor for EntityMatch(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v98 - v30;
  result = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC0];
  if (*(a2 + 16))
  {
    v104 = v29;
    v105 = v22;
    v103 = a5;
    v33 = v28;
    v34 = type metadata accessor for EntityTriple(0);
    v116 = v33;
    v117 = v31;
    v35 = a2;
    v36 = v34 - 8;
    v37 = *(*(v34 - 8) + 80);
    v102 = v35;
    v38 = v35 + ((v37 + 32) & ~v37);
    v114 = *(v33 + 16);
    v115 = v33 + 16;
    v114(v31, v38, v23);
    v39 = *(v36 + 48);
    v40 = v117;
    v41 = (v38 + v39);
    v42 = *v41;
    v101 = v41[1];
    v43 = sub_1C44E5514(v117, a3);
    v44 = v23;
    if (v43)
    {
      v45 = v43;
      sub_1C44E5530(v43, v19);
      if (sub_1C44157D4(v19, 1, v20) == 1)
      {

        v46 = &qword_1EC0BB248;
        v47 = &qword_1C4F1E7C8;
        v48 = v19;
      }

      else
      {
        v100 = v42;
        v49 = v105;
        sub_1C44E3714(v19, v105);
        sub_1C44E555C();
        if (sub_1C44157D4(v16, 1, v23) != 1)
        {
          v113 = v45;
          (*(v116 + 32))(v104, v16, v23);
          v61 = type metadata accessor for Resolver(0);
          v62 = *(v61 + 28);
          v63 = v103;
          v64 = *(v103 + v62);
          v65 = v112;
          v99 = v61;
          switch(v64)
          {
            case 1:

              goto LABEL_16;
            default:
              v66 = sub_1C4F02938();

              if ((v66 & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_16:
              v68 = (v63 + *(v61 + 20));
              if (qword_1EDDFED28 != -1)
              {
                swift_once();
              }

              v69 = type metadata accessor for Source(0);
              v70 = sub_1C442B738(v69, &unk_1EDDFD088);
              if (*v68 != *v70 || v68[1] != v70[1])
              {
                v67 = sub_1C4F02938();
                if ((v67 & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              v72 = v108;
              sub_1C4EFD4C8();
              v73 = sub_1C44E560C(v65, v72);
              v67 = (*(v109 + 8))(v72, v110);
              if ((v73 & 1) == 0)
              {
                goto LABEL_26;
              }

              sub_1C4EFF048();
              sub_1C4EFF048();
              v74 = v107;
              swift_isUniquelyReferenced_nonNull_native();
              v118 = *v74;
              sub_1C44E737C();
              *v74 = v118;

              v67 = *v74;
              if (*(*v74 + 16) == v106)
              {
                v75 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v76 = sub_1C449C4C8(v75);
                sub_1C449BB14(v76, sub_1C449C8B8);

                sub_1C456902C(&qword_1EC0C3200, &qword_1C4F4F968);
                v67 = sub_1C4F00F88();
LABEL_26:
                v63 = v103;
              }

              else
              {
                v63 = v103;
              }

LABEL_29:
              MEMORY[0x1EEE9AC00](v67);
              v77 = v111;
              *(&v98 - 6) = v63;
              *(&v98 - 5) = v77;
              *(&v98 - 4) = v65;
              *(&v98 - 3) = a9;
              v78 = v104;
              *(&v98 - 2) = v104;
              sub_1C44E5654(sub_1C44E5830, (&v98 - 8), v102, v79, v80, v81, v82, v83, v98, v99);
              v85 = v84;
              sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
              v86 = (type metadata accessor for TranslatedEntityTriple(0) - 8);
              v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
              v88 = swift_allocObject();
              *(v88 + 16) = xmmword_1C4F0D130;
              v89 = v88 + v87;
              v114((v88 + v87), v78, v44);
              sub_1C4EFECB8();
              sub_1C4EFF888();
              sub_1C4EFEC38();
              sub_1C4471AF0(v63 + *(v99 + 20), v88 + v87 + v86[11]);
              v90 = v101;
              swift_bridgeObjectRetain_n();
              sub_1C4EF9AE8();
              v91 = *(v63 + v62);
              v92 = (v89 + v86[10]);
              v93 = v100;
              *v92 = v100;
              v92[1] = v90;
              v94 = (v89 + v86[12]);
              *v94 = v93;
              v94[1] = v90;
              *(v89 + v86[13]) = v95;
              *(v89 + v86[14]) = v91;
              v118 = v85;
              v96 = sub_1C44E6444(v88);
              v119 = v118;
              MEMORY[0x1EEE9AC00](v96);
              *(&v98 - 6) = &v119;
              *(&v98 - 5) = v63;
              *(&v98 - 4) = v78;
              *(&v98 - 3) = v93;
              *(&v98 - 2) = v90;
              sub_1C44E6508(sub_1C44E6F64, (&v98 - 8), v113);

              sub_1C447EB38(v105, type metadata accessor for EntityMatch);
              v97 = *(v116 + 8);
              v97(v117, v44);
              v97(v78, v44);
              break;
          }

          return v119;
        }

        sub_1C447EB38(v49, type metadata accessor for EntityMatch);

        v46 = &unk_1EC0BA0E0;
        v47 = &qword_1C4F105A0;
        v48 = v16;
      }

      sub_1C4420C3C(v48, v46, v47);
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v50 = sub_1C4F00978();
    sub_1C442B738(v50, qword_1EDE2DE10);
    v114(v25, v40, v23);
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CD8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v118 = v54;
      *v53 = 136380675;
      sub_1C4AE2EAC(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
      v55 = sub_1C4F02858();
      v57 = v56;
      v58 = *(v116 + 8);
      v58(v25, v44);
      v59 = sub_1C441D828(v55, v57, &v118);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_1C43F8000, v51, v52, "Resolver: No match found for entity %{private}s. Not translating", v53, 0xCu);
      sub_1C440962C(v54);
      MEMORY[0x1C6942830](v54, -1, -1);
      MEMORY[0x1C6942830](v53, -1, -1);

      v58(v117, v44);
    }

    else
    {

      v60 = *(v116 + 8);
      v60(v25, v23);
      v60(v40, v23);
    }

    return v119;
  }

  return result;
}

uint64_t sub_1C44E54C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44E555C()
{
  sub_1C446BE60();
  if (v2 && (v3 = v1, sub_1C44E3664(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_1C4EFF0C8();
    sub_1C43FBCE0();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = v0;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    sub_1C4EFF0C8();
    v10 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v10, v11, v12, v13);
}

void sub_1C44E5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v24 = v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = sub_1C43FCF7C(v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C44E57E8();
    v17 = type metadata accessor for EntityTriple(0);
    sub_1C43FCF7C(v17);
    v19 = v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v20 + 72);
    while (1)
    {
      v24(v19);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v21 = *(a10 + 16);
      if (v21 >= *(a10 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C44E57E8();
      }

      *(a10 + 16) = v21 + 1;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v22, type metadata accessor for TranslatedEntityTriple);
      v19 += v23;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C44E57E8()
{
  sub_1C444AFF8();
  sub_1C44D48B8();
  *v0 = v1;
}

uint64_t sub_1C44E5858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v90[1] = a5;
  v94 = a4;
  v95 = a3;
  v102 = a2;
  v96 = a7;
  v8 = sub_1C4EFD548();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v90 - v11;
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v90 - v14;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v90[0] = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v90 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v90 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v90 - v26;
  v97 = type metadata accessor for EntityTriple(0);
  v98 = a1;
  v28 = (a1 + *(v97 + 32));
  v30 = *v28;
  v29 = v28[1];
  swift_bridgeObjectRetain_n();
  v101 = v30;
  v103 = v29;
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v31 = v17;
    v32 = v99;
  }

  else
  {
    v33 = *(v17 + 32);
    v33(v27, v15, v16);
    v34 = sub_1C44E5514(v27, v95);
    sub_1C44E618C(v34);

    v35 = type metadata accessor for EntityMatch(0);
    if (sub_1C44157D4(v12, 1, v35) == 1)
    {
      v36 = v27;
      v37 = v17;
      sub_1C4420C3C(v12, &qword_1EC0BB248, &qword_1C4F1E7C8);
      v38 = type metadata accessor for Resolver(0);
      v39 = v99;
      v31 = v17;
      switch(*(v102 + *(v38 + 28)))
      {
        case 2:

          goto LABEL_8;
        default:
          v43 = sub_1C4F02938();

          if ((v43 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_8:
          v44 = (v102 + *(v38 + 20));
          if (qword_1EDDFED28 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Source(0);
          v46 = sub_1C442B738(v45, &unk_1EDDFD088);
          v47 = *v44 == *v46 && v44[1] == v46[1];
          if (v47 || (sub_1C4F02938()) && (v48 = v91, sub_1C4EFD4C8(), v49 = sub_1C44E560C(v94, v48), (*(v92 + 8))(v48, v93), (v49))
          {
            sub_1C4EFF048();
            v50 = v100;
            v51 = sub_1C446B0A0();
            v100 = v50;
            if (v50)
            {

              if (qword_1EDDFD028 != -1)
              {
                swift_once();
              }

              v53 = sub_1C4F00978();
              sub_1C442B738(v53, qword_1EDE2DE10);
              v54 = v90[0];
              (*(v17 + 16))(v90[0], v36, v16);
              v55 = sub_1C4F00968();
              v56 = v16;
              v57 = sub_1C4F01CD8();
              if (os_log_type_enabled(v55, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v104 = v59;
                *v58 = 136315138;
                v94 = v55;
                v93 = sub_1C4EFF048();
                v61 = v60;
                v95 = v36;
                v62 = *(v31 + 8);
                v62(v54, v56);
                v63 = sub_1C441D828(v93, v61, &v104);

                *(v58 + 4) = v63;
                v64 = v94;
                _os_log_impl(&dword_1C43F8000, v94, v57, "Unable to fetch value for key %s from Resolver KVStore", v58, 0xCu);
                sub_1C440962C(v59);
                MEMORY[0x1C6942830](v59, -1, -1);
                MEMORY[0x1C6942830](v58, -1, -1);

                v62(v95, v56);
                v31 = v37;
                v32 = v99;
                v100 = 0;
                v16 = v56;
                break;
              }

              v88 = v54;
              v89 = *(v31 + 8);
              v89(v88, v56);
              v89(v36, v56);
              v100 = 0;
              v16 = v56;
            }

            else
            {
              v86 = v51;
              v87 = v52;
              (*(v17 + 8))(v36, v16);

              if (v87)
              {

                v101 = v86;
                v103 = v87;
              }
            }
          }

          else
          {
LABEL_21:
            (*(v17 + 8))(v36, v16);
          }

          v32 = v39;
          break;
      }
    }

    else
    {
      (*(v17 + 16))(v21, &v12[*(v35 + 24)], v16);
      sub_1C447EB38(v12, type metadata accessor for EntityMatch);
      v33(v24, v21, v16);
      v101 = sub_1C4EFF048();
      v41 = v40;

      v42 = *(v17 + 8);
      v42(v24, v16);
      v42(v27, v16);
      v103 = v41;
      v32 = v99;
      v31 = v17;
    }
  }

  v65 = v96;
  (*(v31 + 16))(v96, v32, v16);
  v66 = v97;
  v67 = *(v97 + 20);
  v68 = type metadata accessor for TranslatedEntityTriple(0);
  v69 = v68[5];
  v70 = sub_1C4EFEEF8();
  v71 = *(*(v70 - 8) + 16);
  v72 = v98;
  v71(v65 + v69, v98 + v67, v70);
  v73 = v66[6];
  v74 = v68[6];
  v75 = sub_1C4EFF8A8();
  (*(*(v75 - 8) + 16))(v65 + v74, v72 + v73, v75);
  v71(v65 + v68[7], v72 + v66[7], v70);
  sub_1C4471AF0(v72 + v66[9], v65 + v68[9]);
  v76 = (v72 + v66[10]);
  v78 = *v76;
  v77 = v76[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v80 = v79;
  result = type metadata accessor for Resolver(0);
  v82 = *(v102 + *(result + 28));
  v83 = (v65 + v68[8]);
  v84 = v103;
  *v83 = v101;
  v83[1] = v84;
  v85 = (v65 + v68[10]);
  *v85 = v78;
  v85[1] = v77;
  *(v65 + v68[11]) = v80;
  *(v65 + v68[12]) = v82;
  return result;
}

uint64_t sub_1C44E618C(uint64_t a1)
{
  v3 = sub_1C44059B8();
  v4 = type metadata accessor for EntityMatch(v3);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  result = sub_1C440BAA8(v1, 1, 1, v4);
  if (!a1)
  {
    return result;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v14 = *(v6 + 72);
  v15 = 0.0;
  while (1)
  {
    sub_1C4471AF0(v13, v10);
    if ((sub_1C4EFEFF8() & 1) == 0)
    {
LABEL_21:
      v25 = v15;
      goto LABEL_22;
    }

    v16 = *(v10 + *(v4 + 40));
    if (v16)
    {
      if (*(v16 + 16) && (v17 = sub_1C4402490(), (v18 & 1) != 0))
      {
        v19 = (*(v16 + 56) + 16 * v17);
        v20 = *v19;
        v16 = v19[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v20 = 0;
        v16 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    sub_1C441DDD8();
    v33[0] = v21;
    sub_1C4415BB0();
    v33[1] = v22;
    v33[2] = 1702195828;
    v33[3] = 0xE400000000000000;
    memset(&v33[4], 0, 24);
    v34 = 1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44E3634(v33);
    if (!v16)
    {

      goto LABEL_19;
    }

    if (v20 == 1702195828 && v16 == 0xE400000000000000)
    {
      break;
    }

    v24 = sub_1C443F720(v20);

    if (v24)
    {
      goto LABEL_25;
    }

LABEL_19:
    v25 = *(v10 + *(v4 + 28));
    if (v15 >= v25)
    {
      goto LABEL_21;
    }

    sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
    sub_1C4407970();
    sub_1C4471AF0(v10, v1);
    v26 = sub_1C43FC024();
    sub_1C440BAA8(v26, v27, v28, v4);
LABEL_22:
    result = sub_1C447EB38(v10, type metadata accessor for EntityMatch);
    v13 += v14;
    v15 = v25;
    if (!--v12)
    {
      return result;
    }
  }

LABEL_25:
  sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C4407970();
  sub_1C4471AF0(v10, v1);
  v29 = sub_1C43FC024();
  sub_1C440BAA8(v29, v30, v31, v4);
  sub_1C44123A0();
  return sub_1C447EB38(v10, v32);
}

uint64_t (*sub_1C44E6534(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(unint64_t)
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *((a4)(0, a2) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

uint64_t sub_1C44E6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v120 = MEMORY[0x1E69E7CC0];
  v20 = *(v4 + *(type metadata accessor for EntityMatch(0) + 40));
  if (v20)
  {
    if (*(v20 + 16))
    {
      v21 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4FAED80);
      if (v22)
      {
        v107 = v15;
        v23 = (*(v20 + 56) + 16 * v21);
        v24 = v23[1];
        v100 = *v23;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v102 = sub_1C44735D4(0xD000000000000011, 0x80000001C4FAEDA0, v20);
        v105 = v25;
        if (v25)
        {
          sub_1C4EFD338();
          v26 = v19;
          sub_1C4EFF838();
          sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
          v95 = v24;
          v27 = sub_1C43FBE94();
          v28 = v13;
          v104 = v13;
          v29 = type metadata accessor for TranslatedEntityTriple(v27);
          v30 = *(v29 - 1);
          v112 = *(v30 + 72);
          v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v97 = *(v30 + 80);
          v99 = v24;
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_1C4F0C890;
          v109 = a3;
          v98 = v31;
          v32 = v96 + v31;
          v114 = sub_1C4EFF0C8();
          v108 = *(*(v114 - 8) + 16);
          v113 = v26;
          v108(v96 + v31, a2, v114);
          sub_1C4EFE968();
          v111 = *(v107 + 16);
          v111(v96 + v31 + v29[6], v26, v28);
          sub_1C4EFEBB8();
          sub_1C4EFD338();
          v33 = sub_1C4EFD2F8();
          v35 = v34;
          (*(v8 + 8))(v12, v6);
          v36 = type metadata accessor for Resolver(0);
          v110 = *(v36 + 20);
          sub_1C44201A8();
          v101 = v37;
          sub_1C4471AF0(v115 + v38, v96 + v31 + v39);
          sub_1C4EF9AE8();
          v94 = v36;
          v40 = *(v36 + 28);
          v41 = *(v115 + v40);
          v42 = (v96 + v31 + v29[8]);
          *v42 = v33;
          v42[1] = v35;
          v43 = (v96 + v31 + v29[10]);
          *v43 = v109;
          v43[1] = a4;
          *(v32 + v29[11]) = v44;
          *(v32 + v29[12]) = v41;
          v108(v96 + v31 + v112, a2, v114);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFE968();
          v45 = sub_1C4422470();
          (v111)(v45);
          sub_1C44346C4();
          sub_1C4EFE828();
          v46 = sub_1C4436634();
          sub_1C4471AF0(v46, v47);
          sub_1C4EF9AE8();
          sub_1C446C020();
          *v48 = v100;
          v48[1] = v95;
          sub_1C446038C();
          *v49 = v109;
          v49[1] = a4;
          sub_1C4403650(v50, v51);
          v108(v96 + v31 + 2 * v112, a2, v114);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFE968();
          v52 = sub_1C4422470();
          (v111)(v52);
          sub_1C44346C4();
          sub_1C4EFE838();
          v53 = sub_1C4436634();
          sub_1C4471AF0(v53, v54);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EF9AE8();
          sub_1C446C020();
          *v55 = v102;
          v55[1] = v105;
          sub_1C446038C();
          *v56 = v109;
          v56[1] = a4;
          sub_1C4403650(v57, v58);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E6444(v96);
          v59 = sub_1C44735D4(0x6574736567677573, 0xED0000656D614E64, v20);
          v93 = v40;
          if (v60)
          {
            v61 = v59;
            v62 = v60;
            v63 = v40;
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_1C4F0D130;
            v108(v64 + v98, a2, v114);
            sub_1C4EFE968();
            v65 = sub_1C4422470();
            (v111)(v65);
            sub_1C44346C4();
            sub_1C4EFE5F8();
            sub_1C44201A8();
            v66 = sub_1C4436634();
            sub_1C4471AF0(v66, v67);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EF9AE8();
            sub_1C446C020();
            *v68 = v61;
            v68[1] = v62;
            sub_1C446038C();
            *v69 = v109;
            v69[1] = a4;
            sub_1C4403650(v70, v71);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44E6444(v64);
            v72 = *(v94 + 32);
            v119 = *(v115 + v63);
            sub_1C4578A14(v61, v62, v102, v105, 3485232, 0xE300000000000000, a2, v115 + v72, v109, a4, &v119, v91, v92, v93, v94, v95, v96, v97, v98, v99, v107 + 16, v101, v102);
            v74 = v73;

            sub_1C44E6444(v74);
          }

          else
          {
          }

          v75 = a2;
          v76 = sub_1C44735D4(0xD000000000000015, 0x80000001C4FAEE00, v20);
          if (!v77)
          {
            (*(v107 + 8))(v113, v104);
            return v120;
          }

          v78 = v76;
          v79 = v77;
          v118 = sub_1C44735D4(0xD00000000000001FLL, 0x80000001C4FAEE20, v20);
          v106 = v80;
          if (v80)
          {
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_1C4F0CE60;
            v108(v103 + v98, v75, v114);
            sub_1C4EFE968();
            v111(v103 + v98 + v29[6], v113, v104);
            sub_1C44346C4();
            sub_1C4EFEB98();
            sub_1C4471AF0(v115 + v110, v103 + v98 + v29[9]);
            sub_1C4EF9AE8();
            sub_1C446C020();
            *v81 = v78;
            v81[1] = v79;
            sub_1C446038C();
            *v82 = v109;
            v82[1] = a4;
            sub_1C4403650(v83, v84);
            v85 = v103 + v98 + v112;
            v108(v85, v75, v114);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFE968();
            v111(v85 + v29[6], v113, v104);
            sub_1C44346C4();
            sub_1C4EFEB88();
            sub_1C4471AF0(v115 + v110, v85 + v29[9]);
            sub_1C4EF9AE8();
            sub_1C446C020();
            *v86 = v118;
            v86[1] = v106;
            sub_1C446038C();
            *v87 = v109;
            v87[1] = a4;
            sub_1C4403650(v88, v89);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44E6444(v103);
            (*(v107 + 8))(v113, v104);
            return v120;
          }

          (*(v107 + 8))(v113, v104);
        }
      }
    }
  }

  return v120;
}

uint64_t sub_1C44E6FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF3A20, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void TranslatedEntityTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE0C8, &qword_1C4F32600);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44E7310();
  sub_1C440F61C(&type metadata for TranslatedEntityTriple.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for TranslatedEntityTriple(0);
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

unint64_t sub_1C44E7310()
{
  result = qword_1EDDF3A90;
  if (!qword_1EDDF3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A90);
  }

  return result;
}

uint64_t sub_1C44E737C()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C445FAA8(v3, v1);
  sub_1C442C5D8();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C445FAA8(v4, v2);
    sub_1C4410A40();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C44E749C(v12, v4, v2, v8, v6, v16);
    sub_1C43FE9F0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C44E749C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C4411708(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1C44E751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF3A18, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44E7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1C44E76F8();
  a7(v14, a6, a3, a4, a1);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1C44E76B8()
{
}

uint64_t sub_1C44E7704(uint64_t a1)
{

  return sub_1C4EFB688();
}

uint64_t sub_1C44E7728@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v2;
  *(a2 - 8) = 0;

  return sqlite3_column_type(a1, 0);
}

double sub_1C44E7778(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_1C44E77A4(uint64_t (*a1)(uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = type metadata accessor for ConstructionGraphTriple(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  result = a1(a3, a4, v14);
  if (!v5)
  {
    v20 = result;
    v21 = v19;
    v28 = v9;
    if (v18)
    {
    }

    v27 = v20;
    if (v21)
    {
      v22 = 0;
      v23 = *(v21 + 16);
      while (1)
      {
        if (v23 == v22)
        {

          v20 = v27;
          goto LABEL_10;
        }

        if (v22 >= *(v21 + 16))
        {
          break;
        }

        sub_1C4471BAC(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v16);
        sub_1C44B95C0(&qword_1EDDE2650, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
        sub_1C4EFBA58();
        ++v22;
        result = sub_1C44BCC4C(v16, type metadata accessor for ConstructionGraphTriple);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_10:
      if (v20)
      {
        v24 = 0;
        v25 = *(v20 + 16);
        while (v25 != v24)
        {
          if (v24 >= *(v27 + 16))
          {
            goto LABEL_18;
          }

          sub_1C4471BAC(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v12);
          sub_1C44B95C0(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
          sub_1C4EFB6A8();
          ++v24;
          result = sub_1C44BCC4C(v12, type metadata accessor for ConstructionGraphTriple);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C44E7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t), uint64_t (*a10)(uint64_t, uint64_t))
{
  sub_1C44B8118();
  if (v10)
  {
    return a3;
  }

  v37 = a6;
  v38 = a7;
  v19 = *(a3 + *(type metadata accessor for StandardEntityFusion(0) + 28));
  v20 = sub_1C44E7D44();
  swift_beginAccess();
  v21 = *a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = a8(a1, a2, v19, v20, v21);
  v24 = v23;

  a9(v24);

  a3 = a10(v22, a2);
  v27 = v26;
  v29 = v28;

  if (a3)
  {
    v30 = *(a3 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = __OFADD__(*a5, v30);
  v32 = *a5 + v30;
  if (v31)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *a5 = v32;
  if (v27)
  {
    v33 = *(v27 + 16);
  }

  else
  {
    v33 = 0;
  }

  v31 = __OFADD__(*v37, v33);
  v34 = *v37 + v33;
  if (v31)
  {
    goto LABEL_18;
  }

  *v37 = v34;
  if (v29)
  {
    v35 = *(v29 + 16);
  }

  else
  {
    v35 = 0;
  }

  v31 = __OFADD__(*v38, v35);
  v36 = *v38 + v35;
  if (!v31)
  {
    *v38 = v36;
    return a3;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C44E7D44()
{
  v0 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C4EFD9C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v5 = *(sub_1C44E7FAC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4EFD9D8();
  type metadata accessor for StandardEntityFusion(0);
  v7 = sub_1C4EFD9B8();
  (*(v2 + 8))(v4, v1);

  return v7;
}

uint64_t sub_1C44E7FAC()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44E80BC(v1, v2);
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

uint64_t sub_1C44E8040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewGeneration.ViewClients, sub_1C4C87E58, sub_1C4661D6C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C44E81B8(uint64_t a1, id a2)
{
  v5 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44E8494(&v27);
  if (!v2)
  {
    v8 = *v28;
    v9 = v30;
    if (v30)
    {
LABEL_3:
      v25[1] = v29;
      v26 = v31;
      v33 = v32;
      v25[0] = *&v28[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9888();

      v10 = objc_allocWithZone(type metadata accessor for ViewAccessAssertion(0));
      a2 = sub_1C44E8EC8(a1, a2, v7, v8, v25[0], v9 & 1);

      sub_1C441DFEC(v26, v33);
      return a2;
    }

    v12 = v28[24];
    if (v28[24])
    {
      v13 = v31;
      v14 = v32;

      sub_1C450B034();
      swift_allocError();
      *v15 = a1;
      *(v15 + 8) = a2;
      *(v15 + 16) = v12;
      v16 = *&v28[15];
      v17 = *v28;
      *(v15 + 17) = v27;
      *(v15 + 33) = v17;
      *(v15 + 48) = v16;
      *(v15 + 64) = 11;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v18 = v13;
      v19 = v14;
    }

    else
    {
      if (v32 >> 60 != 15)
      {
        goto LABEL_3;
      }

      v20 = v31;
      v21 = v32;

      sub_1C450B034();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      v23 = *&v28[16];
      v24 = *v28;
      *(v22 + 16) = v27;
      *(v22 + 32) = v24;
      *(v22 + 48) = v23;
      *(v22 + 64) = 12;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v18 = v20;
      v19 = v21;
    }

    sub_1C441DFEC(v18, v19);
  }

  return a2;
}

__n128 sub_1C44E8494@<Q0>(uint64_t a1@<X8>)
{
  sub_1C44E843C();
  if (!v1)
  {
    result = v9;
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 80) = v11 & 1;
    *(a1 + 81) = v12 & 1;
    *(a1 + 88) = v13;
  }

  return result;
}

void sub_1C44E8530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v12);
  v33[2] = *v10;
  v35 = sub_1C4EFB1E8();
  sub_1C43FCDF8();
  v33[1] = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v33[0] = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v34 = v33 - v17;
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C4414B64();
  sub_1C456902C(&qword_1EC0BE5B0, &unk_1C4F376B0);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    memcpy(a10, v36, 0x68uLL);
    goto LABEL_8;
  }

  v21 = v11;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v22 = *(v19 + 8);
  v23 = sub_1C4409D0C();
  v22(v23);
  if (v10)
  {

    v26 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v26);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v24 = v11;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v25 = sub_1C4409D0C();
  v22(v25);
  v36[0] = v11;
  v27 = v11;
  v28 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8(v34, v36, v28))
  {

    goto LABEL_8;
  }

  v29 = sub_1C4400510();
  v30(v29);
  v31 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void *sub_1C44E87DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a4;
  v34 = a3;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1C4EFB768();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  sub_1C444A7BC(a1);

  if (v5)
  {
    return result;
  }

  v33 = a1;

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  v17 = MEMORY[0x1E69A0138];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = v17;
  *(v16 + 32) = v34;
  *(v16 + 40) = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v12 + 8))(v14, v11);
  sub_1C4EFBC58();
  sub_1C440BAA8(v10, 1, 1, v11);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v18 = sub_1C4EFBC48();
  v19 = v34;
  v20 = v38;
  sub_1C4420C3C(v35, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v18)
  {
    sub_1C450B034();
    swift_allocError();
    *v24 = v19;
    *(v24 + 8) = v20;
    *(v24 + 16) = 0xD000000000000014;
    *(v24 + 24) = 0x80000001C4FB5140;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    *(v24 + 48) = v35[0];
    *(v24 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  sub_1C4EFBBA8();
  v21 = sub_1C4EFBBE8();
  if (v21)
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v33 - 2) = v18;
    *(&v33 - 1) = 0;
    v23 = sqlite3_column_type(v22, 0);
    if (v23 == 5)
    {
      goto LABEL_19;
    }

    sub_1C4F02AA8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C4449828();
  sub_1C4EFBBA8();
  v25 = sub_1C4EFBBE8();
  if (!v25)
  {
    sub_1C4EFBB98();
    v28 = *(&v35[0] + 1);
    v27 = *&v35[0];
    goto LABEL_12;
  }

  MEMORY[0x1EEE9AC00](v25);
  *(&v33 - 2) = v18;
  *(&v33 - 1) = 1;
  v23 = sqlite3_column_type(v26, 1);
  if (v23 == 5)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v23);
    *(&v33 - 2) = sub_1C487BF24;
    *(&v33 - 1) = (&v33 - 4);
    sub_1C4EFB968();
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
    }
  }

  v27 = sub_1C4F011E8();
  *&v35[0] = v27;
LABEL_12:
  *a5 = v27;
  a5[1] = v28;
  sub_1C4EFBBA8();
  v29 = sub_1C4EFBBE8();
  if (v29)
  {
    if (sqlite3_column_type(v29, 2) == 5)
    {

      v30 = 0;
      v31 = 0;
    }

    else
    {
      v31 = sub_1C4F011E8();
      v30 = v32;
    }
  }

  else
  {
    sub_1C4EFBBF8();

    v30 = *(&v35[0] + 1);
    v31 = *&v35[0];
  }

  a5[2] = v31;
  a5[3] = v30;
  return memcpy(a5 + 4, __src, 0x48uLL);
}

id sub_1C44E8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewName];
  *v14 = a1;
  v14[1] = a2;
  v15 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactURL;
  v16 = sub_1C4EF98F8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a3, v16);
  v18 = &v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactTableName];
  *v18 = a4;
  v18[1] = a5;
  v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_alwaysAvailable] = a6;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a3, v16);
  return v19;
}

void *sub_1C44E8FEC(uint64_t a1)
{
  sub_1C456902C(&qword_1EC0C5470, &unk_1C4F61388);
  result = sub_1C4EFFA58();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C44E90A4@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v4 = [a1 viewName];
  sub_1C4F01138();

  sub_1C44E9220();
  if (v2)
  {
  }

  v7 = v5;

  v8 = *(v7 + 16);

  v9 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);

  v10 = MEMORY[0x1E699FDC0];
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_1C44E91E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewName);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C44E9220()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C443A738(v4, v2, v14, v15, v16, v17, v18, v19);
  if (!v0)
  {
    if (*(v13 + *(v9 + 76) + 8))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4432BE8();
      sub_1C4C82F48();
    }

    else
    {
      sub_1C4438D00(v8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CE28(v8, _s6ConfigVMa);
      sub_1C4432BE8();
      sub_1C44E94B0();
    }

    sub_1C443CE28(v13, _s10ViewConfigVMa);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44E93C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C44E9424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
    v8 = v5 + *(a4 + 44);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1C44E94B0()
{
  sub_1C43FE96C();
  v68 = v0;
  v64 = v1;
  v65 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v75 = *MEMORY[0x1E69E9840];
  v11 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v63 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v69 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v70 = v18;
  v19 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v62 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v67 = v11;
  if (v6)
  {
    v73 = v10;
    v74 = v8;
    v72[0] = 6448174;
    v72[1] = 0xE300000000000000;
    v71[0] = 0x6265526C6C75662DLL;
    v71[1] = 0xEF62642E646C6975;
    sub_1C4415EA8();
    v10 = sub_1C446047C(v72, v71, v31, v32, v33, v34, MEMORY[0x1E69E6158]);
    v8 = v35;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v36 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  sub_1C4441A18(v4 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts, &v73);
  v37 = sub_1C43FD388();
  sub_1C44E9A8C(v37, v38, v39);

  if (sub_1C44157D4(v24, 1, v25) == 1)
  {
    sub_1C446F170(v24, &qword_1EC0C5448, &unk_1C4F61348);
    swift_endAccess();
    v40 = v70;
    sub_1C43FD388();
    sub_1C4EF9888();
    sub_1C4EF98A8();
    v41 = [objc_opt_self() defaultManager];
    v42 = sub_1C4EF9868();
    v73 = 0;
    v43 = sub_1C446934C(v41, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

    v44 = v73;
    if (v43)
    {
      v61 = v41;
      (*(v66 + 16))(v63, v40, v67);
      v73 = v64;
      v74 = v65;
      type metadata accessor for ViewDatabaseArtifact();
      sub_1C43FBDBC();
      swift_allocObject();
      v45 = v44;
      v46 = v68;
      sub_1C4BC40B8();
      if (!v46)
      {
        v51 = v47;
        v52 = *(v25 + 48);
        v53 = sub_1C4EFA608();
        v54 = v62;
        sub_1C440BAA8(v62, 1, 1, v53);
        *(v54 + v52) = v51;
        sub_1C4401E28();
        sub_1C440BAA8(v55, v56, v57, v58);
        sub_1C4403138(v4 + v36, &v73);

        sub_1C4C8107C(v54, v10, v8);
        swift_endAccess();

        v59 = v67;
        v60 = *(v66 + 8);
        v60(v69, v67);
        v60(v70, v59);
        goto LABEL_11;
      }
    }

    else
    {
      v48 = v73;

      sub_1C4EF97A8();

      swift_willThrow();
    }

    v49 = v67;
    v50 = *(v66 + 8);
    v50(v69, v67);
    v50(v70, v49);
  }

  else
  {
    sub_1C4422530();
    sub_1C44CDA7C();
    swift_endAccess();

    sub_1C4422530();
    sub_1C44CDA7C();
    sub_1C446F170(v29, &qword_1EC0C4FF8, &qword_1C4F5E680);
  }

LABEL_11:
  sub_1C43FBC80();
}

uint64_t sub_1C44E99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1C441DC98();
  if (v11 && (v12 = v10, v13 = sub_1C445FAA8(v8, v9), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_1C4405814();
    sub_1C456902C(v17, v18);
    sub_1C43FBCE0();
    sub_1C4460108(v16 + *(v19 + 72) * v15, v5, a4, a5);
    v20 = sub_1C442DDD0();
  }

  else
  {
    v24 = sub_1C4405814();
    sub_1C456902C(v24, v25);
    v20 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v20, v21, v22, v23);
}

void *sub_1C44E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v192 = &v170 - v13;
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v197 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v206 = &v170 - v17;
  v18 = type metadata accessor for ConstructionGraphTriple(0);
  v211 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v213 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v170 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v170 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v205 = &v170 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v204 = &v170 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v203 = &v170 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v195 = &v170 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v170 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v170 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v209 = &v170 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v208 = &v170 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v207 = &v170 - v42;
  v191 = type metadata accessor for TranslatedEntityTriple(0);
  v198 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v214 = &v170 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v193 = &v170 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v215 = &v170 - v47;
  v48 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v201 = &v170 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v210 = &v170 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v202 = &v170 - v53;
  v54 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v54);
  if (!*(a2 + 16))
  {
    sub_1C44EB5BC(a4, a1, sub_1C44EC054, sub_1C44EE8C8, type metadata accessor for ConstructionGraphTriple);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return MEMORY[0x1E69E7CC0];
  }

  v199 = v57;
  v187 = &v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v55;
  v185 = a5;
  v217 = a4;
  v186 = a3;
  v184 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598A84();
  v216 = v58;
  v221 = v58;
  v200 = v6;
  sub_1C4B54800();
  v190 = v59;
  v60 = sub_1C4B54E88(a1, a2, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
  v218 = a1;
  MEMORY[0x1EEE9AC00](v60);
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  v61 = sub_1C4401CBC(&qword_1EDDF0640, &qword_1EC0C3B50, &qword_1C4F54080, MEMORY[0x1E69E6328]);
  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  v62 = v200;
  v63 = sub_1C4F014A8();
  if (v62)
  {

LABEL_9:

    return v61;
  }

  v189 = v63;
  v182 = v60;
  v218 = v216;
  MEMORY[0x1EEE9AC00](v63);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3B88, &qword_1C4F540C0);
  sub_1C4401CBC(&qword_1EDDDBB50, &qword_1EC0C3B88, &qword_1C4F540C0, MEMORY[0x1E69E6508]);
  sub_1C44B95C0(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  v64 = 0;
  v65 = 0;
  v183 = sub_1C4F014A8();
  v180 = v5;
  v200 = 0;
  v175 = 0x6E776F6E6B6E75;

  v61 = v189;
  v67 = *(v189 + 64);
  v177 = v189 + 64;
  v68 = 1 << *(v189 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v67;
  v176 = (v68 + 63) >> 6;
  v178 = (v199 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v216 = MEMORY[0x1E69E7CC0];
  v72 = v212;
  v71 = v213;
LABEL_14:
  if (v70)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v73 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
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
      sub_1C4F024A8();
      __break(1u);
LABEL_113:

      __break(1u);
      JUMPOUT(0x1C44EB59CLL);
    }

    if (v73 >= v176)
    {
      break;
    }

    v70 = *(v177 + 8 * v73);
    ++v65;
    if (v70)
    {
      v65 = v73;
LABEL_19:
      v74 = (v65 << 9) | (8 * __clz(__rbit64(v70)));
      v75 = v61[7];
      v181 = *(v61[6] + v74);
      v76 = *(v75 + v74);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v64 = v200;
      sub_1C44B8118();
      v200 = v64;
      if (v64)
      {

        goto LABEL_9;
      }

      v70 &= v70 - 1;
      if (sub_1C4B56DC0(v76))
      {
        v77 = v187;
        sub_1C4EFE828();
        v78 = sub_1C4B57000(v77, v76);
        v80 = v79;
        (*v178)(v77, v188);
        if (v80)
        {
          type metadata accessor for PhaseStores(0);
          v81 = VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(v78, v80, v190, v182, v185);
          v82 = sub_1C4663240(v181, v183);
          if (v82)
          {
            v61 = v189;
            if (v81)
            {
              v181 = v82;
              v218 = v76;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v64 = v200;
              sub_1C4B4A62C(&v218);
              if (v64)
              {
                goto LABEL_113;
              }

              v173 = v80;
              v174 = v76;
              v179 = v70;
              v83 = v218;
              v218 = v181;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4B4A9BC(&v218);
              v200 = 0;
              v199 = v218;
              v218 = v83;
              v219 = 0;
              v220 = 0;
              v172 = v83;

              while (1)
              {
                v88 = v202;
                v89 = v210;
                sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v84, v85, v86, v87, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
                sub_1C4B58D70(v89, v88, &qword_1EC0C3B48, &qword_1C4F54078);
                v90 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
                if (sub_1C44157D4(v88, 1, v90) == 1)
                {
                  break;
                }

                v91 = *v88;
                sub_1C44856C8(v88 + *(v90 + 48), v215);
                if (v91 >= *(v199 + 16))
                {
                  goto LABEL_112;
                }

                if (v91 < 0)
                {
                  goto LABEL_106;
                }

                v92 = (*(v211 + 80) + 32) & ~*(v211 + 80);
                v93 = *(v211 + 72);
                sub_1C4471BAC(v199 + v92 + v93 * v91, v207);
                v94 = v206;
                sub_1C4A7F458();
                sub_1C4420C3C(v94, &unk_1EC0BCAE0, byte_1C4F142A0);
                v95 = v208;
                sub_1C4B5722C();
                sub_1C4471BAC(v95, v209);
                v96 = v216;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C44EE8C8(0, *(v96 + 16) + 1, 1, v96);
                  v96 = v100;
                }

                v98 = *(v96 + 16);
                v97 = *(v96 + 24);
                v216 = v96;
                if (v98 >= v97 >> 1)
                {
                  sub_1C44EE8C8(v97 > 1, v98 + 1, 1, v216);
                  v216 = v101;
                }

                sub_1C44BCC4C(v208, type metadata accessor for ConstructionGraphTriple);
                sub_1C44BCC4C(v207, type metadata accessor for ConstructionGraphTriple);
                sub_1C44BCC4C(v215, type metadata accessor for TranslatedEntityTriple);
                v99 = v216;
                v216[2] = v98 + 1;
                sub_1C44856C8(v209, v99 + v92 + v98 * v93);
                v72 = v212;
                v71 = v213;
              }

LABEL_44:

              v61 = v189;
              v70 = v179;
              goto LABEL_14;
            }
          }

          else
          {

            v61 = v189;
            if (v81)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v64 = v200;
              sub_1C4B4A45C(v76);
              v200 = v64;
            }
          }

          goto LABEL_14;
        }
      }

      v102 = v183;
      v103 = *(v183 + 16);
      v179 = v70;
      if (!v103 || (v104 = sub_1C457B350(v181), (v105 & 1) == 0) || (v106 = *(*(v102 + 56) + 8 * v104), v107 = *(v106 + 16), v107 != *(v76 + 16)))
      {
        v113 = 0;
        v114 = *(v76 + 16);
        while (v114 != v113)
        {
          v115 = v113 + 1;
          sub_1C44EC3C8();
          sub_1C4471BAC(v24, v71);
          sub_1C483D418();
          sub_1C44BCC4C(v72, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v24, type metadata accessor for ConstructionGraphTriple);
          v113 = v115;
        }

        goto LABEL_44;
      }

      v173 = *(*(v102 + 56) + 8 * v104);
      if (v107 != 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v116 = v201;
        goto LABEL_53;
      }

      v108 = v197;
      sub_1C486854C(v106, v197);
      v109 = sub_1C44157D4(v108, 1, v184);
      v116 = v201;
      if (v109 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v110 = v108;
        v111 = &unk_1EC0BCAE0;
        v112 = byte_1C4F142A0;
LABEL_52:
        sub_1C4420C3C(v110, v111, v112);
LABEL_53:
        v218 = v76;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v64 = v200;
        sub_1C4B4A62C(&v218);
        if (v64)
        {
          goto LABEL_113;
        }

        v174 = v76;
        v119 = v218;
        v218 = v173;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4B4A9BC(&v218);
        v200 = 0;
        v172 = v24;
        v199 = v218;
        v218 = v119;
        v219 = 0;
        v220 = 0;
        v171 = v119;

        while (1)
        {
          v124 = v210;
          sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v120, v121, v122, v123, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
          sub_1C4B58D70(v124, v116, &qword_1EC0C3B48, &qword_1C4F54078);
          v125 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
          if (sub_1C44157D4(v116, 1, v125) == 1)
          {
            break;
          }

          v126 = v116;
          v127 = *v116;
          sub_1C44856C8(v126 + *(v125 + 48), v214);
          if (v127 >= *(v199 + 16))
          {
            goto LABEL_112;
          }

          if (v127 < 0)
          {
            goto LABEL_108;
          }

          v128 = (*(v211 + 80) + 32) & ~*(v211 + 80);
          v129 = *(v211 + 72);
          sub_1C4471BAC(v199 + v128 + v129 * v127, v203);
          v130 = v206;
          sub_1C4A7F458();
          sub_1C4420C3C(v130, &unk_1EC0BCAE0, byte_1C4F142A0);
          v131 = v204;
          sub_1C4B5722C();
          sub_1C4471BAC(v131, v205);
          v132 = v216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C44EE8C8(0, *(v132 + 16) + 1, 1, v132);
            v132 = v136;
          }

          v134 = *(v132 + 16);
          v133 = *(v132 + 24);
          v216 = v132;
          if (v134 >= v133 >> 1)
          {
            sub_1C44EE8C8(v133 > 1, v134 + 1, 1, v216);
            v216 = v137;
          }

          sub_1C44BCC4C(v204, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v203, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v214, type metadata accessor for TranslatedEntityTriple);
          v135 = v216;
          v216[2] = v134 + 1;
          sub_1C44856C8(v205, v135 + v128 + v134 * v129);
          v72 = v212;
          v71 = v213;
          v116 = v201;
        }

        v70 = v179;
        v24 = v172;
      }

      else
      {
        v117 = v196;
        sub_1C44856C8(v108, v196);
        v118 = v192;
        sub_1C450B008(v76, v192);
        if (sub_1C44157D4(v118, 1, v191) == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BCC4C(v117, type metadata accessor for ConstructionGraphTriple);
          v110 = v118;
          v111 = &unk_1EC0BC9C8;
          v112 = &qword_1C4F29B58;
          goto LABEL_52;
        }

        sub_1C44856C8(v118, v193);
        v142 = v206;
        sub_1C4A7F458();
        sub_1C4420C3C(v142, &unk_1EC0BCAE0, byte_1C4F142A0);
        v143 = v194;
        sub_1C4B5722C();
        sub_1C4471BAC(v143, v195);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, v216[2] + 1, 1, v216);
          v216 = v147;
        }

        v145 = v216[2];
        v144 = v216[3];
        if (v145 >= v144 >> 1)
        {
          sub_1C44EE8C8(v144 > 1, v145 + 1, 1, v216);
          v216 = v148;
        }

        sub_1C44BCC4C(v194, type metadata accessor for ConstructionGraphTriple);
        sub_1C44BCC4C(v193, type metadata accessor for TranslatedEntityTriple);
        sub_1C44BCC4C(v196, type metadata accessor for ConstructionGraphTriple);
        v146 = v216;
        v216[2] = v145 + 1;
        sub_1C44856C8(v195, v146 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v145);
      }

      v61 = v189;
      switch(v186)
      {
        case 2:

          goto LABEL_67;
        default:
          v138 = sub_1C4F02938();

          if (v138)
          {
LABEL_67:
            sub_1C457B350(v181);
            if (v139)
            {
              v140 = v183;
              swift_isUniquelyReferenced_nonNull_native();
              v218 = v140;
              sub_1C456902C(&qword_1EC0C3B90, &unk_1C4F540C8);
              v70 = v179;
              sub_1C4F02458();
              v141 = v218;
              sub_1C456902C(&qword_1EC0BD3C0, &unk_1C4F2DB90);
              v183 = v141;
              v61 = v189;
              sub_1C4F02478();
            }
          }

          break;
      }

      goto LABEL_14;
    }
  }

  v149 = v183;
  v61 = v216;
  switch(v186)
  {
    case 1:
      v175 = 1819047270;
      goto LABEL_78;
    case 2:

      goto LABEL_79;
    case 3:
      v175 = 0x69686374614D6F74;
      goto LABEL_78;
    default:
LABEL_78:
      v150 = sub_1C4F02938();

      if ((v150 & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (!*(v149 + 16))
      {
        goto LABEL_102;
      }

      v151 = v149 + 64;
      v152 = 1 << *(v149 + 32);
      v153 = -1;
      if (v152 < 64)
      {
        v153 = ~(-1 << v152);
      }

      v154 = v153 & *(v149 + 64);
      v155 = (v152 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v156 = 0;
      v157 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (1)
  {
LABEL_83:
    if (v154)
    {
      goto LABEL_88;
    }

    do
    {
      v158 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        goto LABEL_107;
      }

      if (v158 >= v155)
      {

        v169 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C482FF08(v169);

        return v216;
      }

      v154 = *(v151 + 8 * v158);
      ++v156;
    }

    while (!v154);
    v156 = v158;
LABEL_88:
    v61 = *(*(v149 + 56) + ((v156 << 9) | (8 * __clz(__rbit64(v154)))));
    v159 = v61[2];
    v160 = *(v157 + 16);
    v161 = v160 + v159;
    if (__OFADD__(v160, v159))
    {
      goto LABEL_109;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v161 > *(v157 + 24) >> 1)
    {
      if (v160 <= v161)
      {
        v163 = v160 + v159;
      }

      else
      {
        v163 = v160;
      }

      sub_1C44EE8C8(isUniquelyReferenced_nonNull_native, v163, 1, v157);
      v157 = v164;
    }

    v149 = v183;
    v154 &= v154 - 1;
    if (!v61[2])
    {
      break;
    }

    if ((*(v157 + 24) >> 1) - *(v157 + 16) < v159)
    {
      goto LABEL_110;
    }

    swift_arrayInitWithCopy();

    if (v159)
    {
      v165 = *(v157 + 16);
      v166 = __OFADD__(v165, v159);
      v167 = v165 + v159;
      if (v166)
      {
        goto LABEL_111;
      }

      *(v157 + 16) = v167;
    }
  }

  if (!v159)
  {
    goto LABEL_83;
  }

  __break(1u);
LABEL_102:
  v168 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C482FF08(v168);

  return v61;
}

uint64_t sub_1C44EB5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C4400184();
  sub_1C4401CBC(v5, &qword_1EC0C3B50, &qword_1C4F54080, v6);
  sub_1C441A560();
  sub_1C44B95C0(v7, v8, &protocol conformance descriptor for TranslatedEntityTriple);
  v9 = sub_1C4F014A8();
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v13)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v14)
          {
            goto LABEL_20;
          }

          v13 = *(v10 + 8 * v18);
          ++v16;
          if (v13)
          {
            v16 = v18;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

LABEL_9:
      v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = a3(v19, a1);

      v21 = *(v20 + 16);
      v22 = *(v17 + 16);
      if (__OFADD__(v22, v21))
      {
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v22 + v21 > *(v17 + 24) >> 1)
      {
        v17 = a4();
      }

      v13 &= v13 - 1;
      if (!*(v20 + 16))
      {
        break;
      }

      v23 = (*(v17 + 24) >> 1) - *(v17 + 16);
      result = a5(0);
      if (v23 < v21)
      {
        goto LABEL_23;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v24 = *(v17 + 16);
        v25 = __OFADD__(v24, v21);
        v26 = v24 + v21;
        if (v25)
        {
          goto LABEL_24;
        }

        *(v17 + 16) = v26;
      }
    }
  }

  while (!v21);
  __break(1u);
LABEL_20:

  return v17;
}

uint64_t sub_1C44EB888()
{

  return MEMORY[0x1EEDC59A8]();
}

uint64_t sub_1C44EB8A0()
{
  v2 = *(v0 - 560);
  v3 = *(v0 - 568);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44EB8CC()
{

  return swift_allocObject();
}

uint64_t sub_1C44EB91C()
{
}

uint64_t sub_1C44EB970()
{
  v0 = sub_1C44059B8();
  v1(v0);
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  v2 = sub_1C448F13C();

  return v3(v2);
}

uint64_t _s24IntelligencePlatformCore11EventTripleV7subject0aB016EntityIdentifierVvg_0()
{
  sub_1C44059B8();
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v1 = sub_1C448F13C();

  return v2(v1, v0);
}

uint64_t sub_1C44EBAB8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44EBB10(a1, &v5, a2, &v6);
  return v6;
}

uint64_t sub_1C44EBB10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    sub_1C44EBBF0(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

uint64_t sub_1C44EBBF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v44 = a4;
  v8 = type metadata accessor for TranslatedEntityTriple(0);
  v50 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(v11 + 40));
  v13 = v12[1];
  v48 = *v12;
  v49 = v13;
  v14 = *(a3 + 16);
  v15 = *a2 < v14;
  v45 = v4;
  if (!v15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_8:
    v24 = sub_1C4EFF0C8();
    (*(*(v24 - 8) + 16))(v10, a1, v24);
    v25 = v8[5];
    v26 = sub_1C4EFEEF8();
    v27 = *(*(v26 - 8) + 16);
    v27(&v10[v25], a1 + v25, v26);
    v28 = v8[6];
    v29 = sub_1C4EFF8A8();
    (*(*(v29 - 8) + 16))(&v10[v28], a1 + v28, v29);
    v27(&v10[v8[7]], a1 + v8[7], v26);
    v30 = (a1 + v8[8]);
    v32 = *v30;
    v31 = v30[1];
    sub_1C4471BAC(a1 + v8[9], &v10[v8[9]]);
    v33 = *(a1 + v8[11]);
    v34 = v48;
    v35 = v49;
    v36 = *(a1 + v8[12]);
    v37 = &v10[v8[8]];
    *v37 = v32;
    *(v37 + 1) = v31;
    v38 = &v10[v8[10]];
    *v38 = v34;
    *(v38 + 1) = v35;
    *&v10[v8[11]] = v33;
    v10[v8[12]] = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = v44;
    sub_1C44EBFAC();
    v40 = *(*v39 + 16);
    sub_1C44EC000(v40);
    v41 = *v39;
    *(v41 + 16) = v40 + 1;
    return sub_1C44856C8(v10, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40);
  }

  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4EFF808();
  v43 = a2;
  if (*a2 >= v14)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18 = a3 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v19 = *(v50 + 72);
  result = sub_1C4EFF808();
  if (v17 != result)
  {
    goto LABEL_8;
  }

  v20 = v43;
  if (*v43 >= v14)
  {
    goto LABEL_10;
  }

  v21 = (v18 + *v43 * v19 + v8[10]);
  v23 = *v21;
  v22 = v21[1];
  v46 = 30;
  v47 = 0xE100000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v23, v22);

  MEMORY[0x1C6940010](v46, v47);

  if (!__OFADD__(*v20, 1))
  {
    ++*v20;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C44EC054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for ConstructionGraphTriple(0);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v26 - v11;
  v12 = type metadata accessor for TranslatedEntityTriple(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *(a1 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  while (v17 != v16)
  {
    sub_1C4471BAC(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16, v15);
    sub_1C44EC3C8();
    sub_1C440BAA8(v7, 0, 1, v8);
    sub_1C44BCC4C(v15, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v7, 1, v8) == 1)
    {
      sub_1C4420C3C(v7, &unk_1EC0BCAE0, byte_1C4F142A0);
      ++v16;
    }

    else
    {
      v27 = type metadata accessor for ConstructionGraphTriple;
      v28 = v3;
      v18 = v29;
      sub_1C44856C8(v7, v29);
      sub_1C44856C8(v18, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v32 + 16) + 1, 1, v32);
        v32 = v23;
      }

      v20 = *(v32 + 16);
      v19 = *(v32 + 24);
      v21 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        v27 = (v20 + 1);
        sub_1C44EE8C8(v19 > 1, v20 + 1, 1, v32);
        v21 = v27;
        v32 = v24;
      }

      ++v16;
      v22 = v32;
      *(v32 + 16) = v21;
      sub_1C44856C8(v31, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20);
      v3 = v28;
    }
  }

  return v32;
}

uint64_t sub_1C44EC814@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2 + v1, v3 + a1);
}

uint64_t sub_1C44EC838()
{

  return swift_dynamicCast();
}

uint64_t sub_1C44EC878(uint64_t result, double a2)
{
  *(v2 + 328) = a2;
  *(v2 + 336) = result;
  return result;
}

uint64_t sub_1C44EC888()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44EC8A0(uint64_t a1)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C44EC8CC@<X0>(uint64_t a1@<X8>)
{
  result = v2;
  *(v3 - 312) = a1;
  *(v3 - 320) = v1;
  return result;
}

void sub_1C44EC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v26;
  a26 = v27;
  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_4;
  }

  v30 = sub_1C44EC9D4();
  sub_1C440BBC0();
  sub_1C44ECA38();
  v32 = v31;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449BB0C();
  if (v32 != v29)
  {
    __break(1u);
LABEL_4:
    v30 = MEMORY[0x1E69E7CC0];
  }

  a10 = v30;
  sub_1C44ECB2C(&a10);
  sub_1C4405950();
}

uint64_t sub_1C44EC9D4()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 16);
  return v0;
}

void sub_1C44ECA38()
{
  sub_1C43FBD3C();
  sub_1C44BBDA4();
  v1 = v0 + 56;
  v2 = -1 << *(v1 - 24);
  sub_1C440D0F0();
  v7 = v6 & v5;
  if (!v3)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v17);
    sub_1C43FE9F0();
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    sub_1C443315C();
    v13 = (v12 - v2) >> 6;
    while (v11 < v8)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v7 = *(v1 + 8 * v15);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      sub_1C4415870();
      if (v16)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v17 = v15;
        goto LABEL_17;
      }

      v9 += 16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C44ECB2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C44F69AC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C44ECB98(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C44ECB98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4600638(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C44ECC8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C44ECC8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C44ECD54(uint64_t a3@<X8>)
{
  v4 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    sub_1C44CD280(&qword_1EDDFCD90, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
    sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
    sub_1C44ECF58();
    sub_1C4F020C8();
    v11 = sub_1C4F01FB8();
    (*(v6 + 8))(v10, v4);
    if (*(v11 + 16))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      SourceIdPrefix.init(rawValue:)();
      return;
    }
  }

  v12 = type metadata accessor for SourceIdPrefix(0);
  sub_1C440BAA8(a3, 1, 1, v12);
}

unint64_t sub_1C44ECF58()
{
  result = qword_1EDDFA558;
  if (!qword_1EDDFA558)
  {
    sub_1C4572308(&qword_1EC0C3978, &unk_1C4F540A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA558);
  }

  return result;
}

void SourceIdPrefix.init(rawValue:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C3960, &qword_1C4F52CC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v107 - v7;
  v9 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v11 = v3 == 0x6361746E6F436E63 && v1 == 0xE900000000000074;
  if (v11 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7890 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDDF7898;
LABEL_9:
    sub_1C442B738(v9, v12);
    sub_1C4407B2C();
    sub_1C44EE574();
    goto LABEL_10;
  }

  v14 = v3 == 0x696E6167724F6E63 && v1 == 0xEE006E6F6974617ALL;
  if (v14 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7978 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDDF7980;
    goto LABEL_9;
  }

  v15 = v3 == 0x6C6174736F506E63 && v1 == 0xEF73736572646441;
  if (v15 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9320 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDDE9328;
    goto LABEL_9;
  }

  sub_1C443FF7C();
  v16 = v11 && v1 == 0xE800000000000000;
  if (v16 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78C8 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDDF78D0;
    goto LABEL_9;
  }

  sub_1C443FF7C();
  v18 = v11 && v1 == v17;
  if (v18 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF79A0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDDF79A8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v21 = v3 == v20 - 1 && v19 == v1;
  if (v21 || (sub_1C4400DC8(), v108 = v22, (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92C8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDDE92D0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v25 = v3 == v24 + 3 && v23 == v1;
  if (v25 || (sub_1C4400DC8(), v107 = v26, (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9280 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDDE9288;
    goto LABEL_9;
  }

  v27 = v3 == 0x6C6174736F506773 && v1 == 0xEF73736572646441;
  if (v27 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9300 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D050;
    goto LABEL_9;
  }

  v28 = v3 == 0x6361746E6F436773 && v1 == 0xE900000000000074;
  if (v28 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9358 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D098;
    goto LABEL_9;
  }

  v29 = v3 == 0x746E6576456773 && v1 == 0xE700000000000000;
  if (v29 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9240 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF18;
    goto LABEL_9;
  }

  v30 = v3 == 0x697461636F4C6773 && v1 == 0xEA00000000006E6FLL;
  if (v30 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9368 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D0C8;
    goto LABEL_9;
  }

  sub_1C440FBD0();
  v32 = v3 == v31 + 1274 && v1 == 0xE800000000000000;
  if (v32 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9230 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2CF00;
    goto LABEL_9;
  }

  v33 = v3 == 0x6E6576456566696CLL && v1 == 0xE900000000000074;
  if (v33 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7888 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D5D8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v35 = v3 == v108 && v34 == v1;
  if (v35 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7950 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D6C8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v38 = v37 + 2;
  v39 = v3 == v37 + 2 && v36 == v1;
  if (v39 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7920 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D668;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v41 = v3 == v107 && v40 == v1;
  if (v41 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9278 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CFA8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v44 = v43 + 4;
  v45 = v3 == v43 + 4 && v42 == v1;
  if (v45 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7918 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D650;
    goto LABEL_9;
  }

  v46 = v3 == 0x694C657275747566 && v1 == 0xEF746E6576456566;
  if (v46 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9310 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D068;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v49 = v3 == v48 + 5 && v47 == v1;
  if (v49 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9268 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF78;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v52 = v3 == v51 + 9 && v50 == v1;
  if (v52 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9260 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF60;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v55 = v3 == v54 + 10 && v53 == v1;
  if (v55 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9258 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF48;
    goto LABEL_9;
  }

  v56 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x70000000000000) && v1 == 0xE700000000000000;
  if (v56 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78F0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D608;
    goto LABEL_9;
  }

  v57 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x4170000000000000) && v1 == 0xEA00000000007070;
  if (v57 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF79C0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D740;
    goto LABEL_9;
  }

  v59 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x5070000000000000) && v1 == v58;
  if (v59 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7998 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D728;
    goto LABEL_9;
  }

  sub_1C440FBD0();
  v61 = v3 == v60 - 1529 && v1 == 0xE800000000000000;
  if (v61 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78B8 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D5F0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v64 = v3 == v63 + 12 && v62 == v1;
  if (v64 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7900 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D620;
    goto LABEL_9;
  }

  v65 = v3 == 0x796C696D61466166 && v1 == 0xEE007265626D654DLL;
  if (v65 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9348 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D080;
    goto LABEL_9;
  }

  v66 = v3 == 0x796C696D61466166 && v1 == 0xEE00656C63726943;
  if (v66 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7970 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D710;
    goto LABEL_9;
  }

  v67 = v3 == 0x746E6576456B65 && v1 == 0xE700000000000000;
  if (v67 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDFBC98 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2DD40;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v69 = v3 == v38 && v68 == v1;
  if (v69 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7930 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D680;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v72 = v3 == v71 && v70 == v1;
  if (v72 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7948 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2D6B0;
    goto LABEL_9;
  }

  v73 = v3 == 0x656C646E7542736CLL && v1 == 0xEE0064726F636552;
  if (v73 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7960 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D6F8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v76 = v3 == v75 + 1 && v74 == v1;
  if (v76 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7938 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D698;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v79 = v3 == v78 && v77 == v1;
  if (v79 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDFBCA0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2DD58;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v82 = v3 == v81 + 6 && v80 == v1;
  if (v82 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7908 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D638;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v85 = v3 == v84 && v83 == v1;
  if (v85 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92C0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2CFF0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v88 = v3 == v87 + 11 && v86 == v1;
  if (v88 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9248 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF30;
    goto LABEL_9;
  }

  v89 = v3 == 0x6E6F6974616C6572 && v1 == 0xEC00000070696873;
  if (v89 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9360 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D0B0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v92 = v91 - 2;
  v93 = v3 == v91 - 2 && v90 == v1;
  if (v93 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92F0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D020;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v95 = v3 == v92 && v94 == v1;
  if (v95 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92F8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D038;
    goto LABEL_9;
  }

  v96 = v3 == 0x6974616C65526770 && v1 == 0xEE00706968736E6FLL;
  if (v96 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7958 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D6E0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v99 = v3 == v98 && v97 == v1;
  if (v99 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92B0 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2CFD8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v101 = v3 == v92 && v100 == v1;
  if (v101 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92E8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2D008;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v103 = v3 == v44 && v102 == v1;
  if (v103 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9270 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDE2CF90;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v106 = v3 == v105 && v104 == v1;
  if (v106 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92A8 != -1)
    {
      swift_once();
    }

    v12 = &qword_1EDE2CFC0;
    goto LABEL_9;
  }

  sub_1C4B3FC54(v3, v1, v8);

  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0C3960, &qword_1C4F52CC0);
    v13 = 1;
    goto LABEL_11;
  }

  sub_1C4407B2C();
  sub_1C44EE62C();
LABEL_10:
  sub_1C4407B2C();
  sub_1C44EE62C();
  v13 = 0;
LABEL_11:
  sub_1C440BAA8(v5, v13, 1, v9);
  sub_1C43FE9F0();
}

uint64_t sub_1C44EE4B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE514(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE574()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44EE5CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE62C()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44EE698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Source(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C44EE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Source(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void sub_1C44EE7B4()
{
  sub_1C43FFB60();
  sub_1C4EFFB98();
  v0 = sub_1C4403D08(&qword_1EDDFA190, MEMORY[0x1E69A9B38], MEMORY[0x1E69A9B40]);
  v1 = sub_1C4402AB4(v0);
  sub_1C43FCF00(v1, v1, MEMORY[0x1E69A9B38], &unk_1EDDFA188);
}

uint64_t sub_1C44EE864(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v3 = a3(a1);
  if (v4)
  {
    return sub_1C4434EAC(v3);
  }

  else
  {
    return 0;
  }
}

void sub_1C44EE948(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v3 = sub_1C4F01658();

  [a2 setIncludedDetectionTypes_];
}

uint64_t sub_1C44EE9CC()
{
  v1 = sub_1C4F01108();
  v2 = sub_1C44C1028(v1);

  if ((v2 & 1) == 0)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDE2DE10);
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CF8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C43F8000, v31, v32, "Siri Toggle: Pipeline is blocked from sourcing Photos", v33, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4EF9AE8();
    sub_1C4420114();
    sub_1C464578C();
    goto LABEL_25;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  sub_1C43FBDBC();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v71 = (v7 + 16);
  sub_1C43FBDBC();
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v70 = (v72 + 16);
  v8 = objc_opt_self();
  v9 = [v8 systemPhotoLibraryURL];
  sub_1C4EF98C8();

  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  (*(v6 + 16))(v4, v3, v5);
  v10 = sub_1C44B90E0(v4);
  v0[5] = 0;
  v11 = [v10 openAndWaitWithUpgrade:0 error:v0 + 5];
  v12 = v0[5];
  if (v11)
  {
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 fetchOptionsWithInclusiveDefaultsForPhotoLibrary_];
    if (v15)
    {
      v16 = v15;
      v69 = v10;
      v17 = v0[6];
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C4F10430;
      sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
      v19 = v16;
      *(v18 + 32) = sub_1C4F01EC8();
      *(v18 + 40) = sub_1C4F01EC8();
      sub_1C44EE948(v18, v19);
      [v19 setPersonContext_];
      v68 = v19;
      v20 = [objc_opt_self() fetchPersonsWithOptions_];
      sub_1C43FBDBC();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = [BiomeLibrary() Autonaming];
      swift_unknownObjectRelease();
      v23 = [v22 Messages];
      swift_unknownObjectRelease();
      v24 = [v23 Inferences];
      swift_unknownObjectRelease();
      *(v21 + 16) = v24;
      sub_1C43FBDBC();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = v7;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      type metadata accessor for PhaseStores(0);
      v28 = swift_task_alloc();
      v28[2] = v20;
      v28[3] = v17;
      v28[4] = v25;
      v28[5] = v27;
      v29 = MEMORY[0x1E69E7CC0];
      v28[6] = v26;
      v28[7] = v29;
      v28[8] = v21;
      v28[9] = v72;
      GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4ABA118, v28);

      v54 = sub_1C4EF9868();
      [v8 unsafeShutdownLibraryWithPhotoLibraryURL_];

      swift_beginAccess();
      v55 = *(v25 + 16);
      v56 = v0[10];
      v58 = v0[7];
      v57 = v0[8];
      if (v55)
      {
        swift_willThrow();
        v59 = v55;

        (*(v57 + 8))(v56, v58);

        v60 = v0[6];

        sub_1C44EF32C(v60, v70, v71);

        v61 = v0[1];
        goto LABEL_26;
      }

      v67 = v0[6];
      sub_1C4EF9AE8();
      sub_1C4420114();
      sub_1C464578C();

      (*(v57 + 8))(v56, v58);

      sub_1C44EF32C(v67, v70, v71);

      goto LABEL_24;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDDFECB8);
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CF8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C43F8000, v50, v51, "Couldn't fetch option for PHPersonSourceIngestor", v52, 2u);
      sub_1C43FBE2C();
      v53 = v10;
    }

    else
    {
      v53 = v50;
      v50 = v10;
    }

    v62 = v0[10];
    v63 = v0[7];
    v64 = v0[8];
    v65 = v0[6];

    (*(v64 + 8))(v62, v63);
    v48 = v65;
  }

  else
  {
    v34 = v12;
    v35 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DE10);
    v37 = v35;
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CB8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_1C43F8000, v38, v39, "PHPersonSourceIngestor couldn't open Photo Library due to %@", v40, 0xCu);
      sub_1C4420C3C(v41, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v44 = v0[10];
    v45 = v0[7];
    v46 = v0[8];
    v47 = v0[6];

    sub_1C4EF9AE8();
    sub_1C4420114();
    sub_1C464578C();

    (*(v46 + 8))(v44, v45);
    v48 = v47;
  }

  sub_1C44EF32C(v48, v70, v71);

LABEL_24:

LABEL_25:

  v61 = v0[1];
LABEL_26:

  return v61();
}

uint64_t sub_1C44EF2B4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C44EF2F4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C44EF32C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44EF7D0(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44EF5EC(v9, type metadata accessor for Pipeline.StatusStore);
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
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v12 = *a3;
  swift_beginAccess();
  result = v12 - *a2;
  if (__OFSUB__(v12, *a2))
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

uint64_t sub_1C44EF5EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C44EF644()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4433190();
  v9 = type metadata accessor for Source(v8);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4414930();
  sub_1C4440948();
  v11 = v6(0);
  sub_1C4429020(v11);
  v12 = sub_1C456902C(v4, v2);
  v13 = sub_1C445BBF0(v12);
  MEMORY[0x1C6940010](v13);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v14);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v15);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v16 = sub_1C441B798();
  v17(v16);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44EF7D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2630, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C44EF9E8@<X0>(uint64_t (*a1)(void)@<X3>, void (*a2)(void *)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v61[1] = a5;
  v61[2] = a4;
  v70 = a3;
  v68 = a2;
  sub_1C440EDE4();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v65 = v9;
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v62 = v10;
  v73 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v75 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v19 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v67 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v63 = sub_1C447F834();
  sub_1C43FCDF8();
  v23 = v22;
  sub_1C43FBC68();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v61 - v26;
  v72 = (a1)(0, v25);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v74 = v61 - v29;
  v30 = v6[3];
  v71 = v6;
  v31 = sub_1C4417F50(v6, v30);
  v68(v31);
  v68 = v27;
  v32 = v69;
  sub_1C4F02BC8();
  v64 = v19;
  if (!v32)
  {
    v33 = v18;
    v34 = v62;
    v69 = v15;
    v70 = v23;
    LOBYTE(v76) = 0;
    sub_1C4419854();
    sub_1C4490F60(v35, v36, MEMORY[0x1E69A9838]);
    sub_1C442A70C();
    sub_1C4F026C8();
    v40 = v74;
    (*(v67 + 32))(v74, v5, v19);
    LOBYTE(v76) = 1;
    sub_1C442CB58();
    sub_1C4490F60(v41, v42, MEMORY[0x1E69A9778]);
    v43 = v73;
    sub_1C442A70C();
    sub_1C4F026C8();
    v44 = v72;
    v45 = &v40[*(v72 + 20)];
    v61[0] = *(v75 + 32);
    (v61[0])(v45, v33, v43);
    LOBYTE(v76) = 2;
    sub_1C4406FE8();
    sub_1C4490F60(v46, v47, MEMORY[0x1E69A9A10]);
    v48 = v43;
    v49 = v66;
    sub_1C442A70C();
    sub_1C4F026C8();
    (*(v65 + 32))(&v74[v44[6]], v34, v49);
    LOBYTE(v76) = 3;
    v50 = v69;
    sub_1C4F026C8();
    (v61[0])(&v74[v44[7]], v50, v48);
    sub_1C442EB78(4);
    v51 = sub_1C4F02678();
    v52 = v74;
    v53 = &v74[v44[8]];
    *v53 = v51;
    v53[1] = v54;
    v78 = 5;
    sub_1C44F02DC();
    sub_1C4475AFC();
    sub_1C4F026C8();
    *&v52[v44[9]] = v76;
    sub_1C442EB78(6);
    *&v52[v44[10]] = sub_1C4F02698();
    v78 = 7;
    sub_1C44F0578();
    sub_1C4475AFC();
    sub_1C4F026C8();
    v55 = v77;
    v56 = &v52[v44[11]];
    *v56 = v76;
    *(v56 + 1) = v55;
    sub_1C442EB78(8);
    v57 = sub_1C4F02698();
    v58 = sub_1C44A1EAC();
    v59(v58);
    *&v52[v44[12]] = v57;
    sub_1C449EEE8();
    sub_1C440962C(v71);
    return sub_1C449F22C();
  }

  sub_1C44B8F90();
  v38 = v73;
  v37 = v74;
  v39 = v72;
  result = sub_1C440962C(v71);
  if (!v23)
  {
    if (!v6)
    {
      return result;
    }

    return (*(v75 + 8))(&v37[*(v39 + 28)], v38);
  }

  result = (*(v65 + 8))(&v37[*(v39 + 24)], v66);
  if (v6)
  {
    return (*(v75 + 8))(&v37[*(v39 + 28)], v38);
  }

  return result;
}

unint64_t sub_1C44F0158()
{
  result = qword_1EDDE2680[0];
  if (!qword_1EDDE2680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2680);
  }

  return result;
}

uint64_t sub_1C44F01CC(char a1)
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
      result = 0xD000000000000015;
      break;
    case 4:
      result = sub_1C44017E8();
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

unint64_t sub_1C44F02DC()
{
  result = qword_1EDDFCF10;
  if (!qword_1EDDFCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCF10);
  }

  return result;
}

void static SourceSet.fromDatabaseValue(_:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFB258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4F02AB8();
  v11 = v10;
  if (v10)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DE10);
    (*(v5 + 16))(v8, v1, v4);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v15 = 136380675;
      sub_1C4B35A40();
      v16 = sub_1C4F02858();
      v18 = v17;
      v19 = sub_1C43FE99C();
      v20(v19);
      v21 = sub_1C441D828(v16, v18, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v13, v14, "SourceSet: failed to initialize from database value: %{private}s", v15, 0xCu);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      v22 = sub_1C43FE99C();
      v23(v22);
    }

    v9 = 0;
  }

  *v3 = v9;
  *(v3 + 8) = v11 & 1;
  sub_1C43FE9F0();
}

unint64_t sub_1C44F0578()
{
  result = qword_1EDDFD868;
  if (!qword_1EDDFD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD868);
  }

  return result;
}

void static SourceDuplicates.fromDatabaseValue(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C4EFB258();
  sub_1C43FCE64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4F011F8();
  if (v12)
  {
    *a2 = v11;
    a2[1] = v12;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DE10);
    (*(v6 + 16))(v10, a1, v4);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136380675;
      sub_1C4B35A40();
      v18 = sub_1C4F02858();
      v20 = v19;
      (*(v6 + 8))(v10, v4);
      v21 = sub_1C441D828(v18, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v14, v15, "SourceDuplicates: failed to initialize from database value: %{private}s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

__n128 initializeBufferWithCopyOfBuffer for Options.OptionsValue(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C44F090C@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1 + a1, v2);
}

__n128 *sub_1C44F0930(__n128 *result, __n128 a2)
{
  *(v2 - 288) = a2;
  result[1] = a2;
  return result;
}

void sub_1C44F0964(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C44F099C()
{
}

uint64_t sub_1C44F09B8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0BA468, &qword_1C4F13FB8);
  swift_allocObject();
  v2 = sub_1C4F00248();
  sub_1C456902C(&qword_1EC0BA470, qword_1C4F13FC0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

void sub_1C44F0A34(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_1C4409528(a1);
  v13 = v12;
  v15 = v14;
  sub_1C4409528(a5);
  if (v13 == v17 && v15 == v16)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_1C43FE9F0();
      return;
    }
  }

  v20 = a2 == a6 && a3 == a7;
  if (!v20 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C43FE9F0();

  sub_1C44F0B64(v21, v22);
}

uint64_t sub_1C44F0B64(char a1, uint64_t a2)
{
  v2 = 0x6C616D726F6ELL;
  if (a1)
  {
    sub_1C444FD08();
    if (v3)
    {
      v5 = 0x6E6F6974656C6564;
    }

    else
    {
      v5 = 0x646574736F70;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x6C616D726F6ELL;
  }

  if (a2)
  {
    sub_1C444FD08();
    if (v7)
    {
      v2 = 0x6E6F6974656C6564;
    }

    else
    {
      v2 = 0x646574736F70;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1C44F0C40(uint64_t a1)
{

  return sub_1C4471988(a1, v1);
}

uint64_t sub_1C44F0C58()
{

  return type metadata accessor for Source(0);
}

void sub_1C44F0C78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1C44F0CE4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 216) = a1;
  v4 = v1[1];
  *(v2 - 160) = *v1;
  *(v2 - 152) = v4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44F0D08()
{

  return sub_1C44BCC4C(v1, v0);
}

uint64_t sub_1C44F0D20(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1C44F0D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44F0D58@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C44CC80C(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C44F0D9C@<X0>(uint64_t a2@<X8>)
{
  *(a2 - 256) = v2;

  return sub_1C4F02858();
}

uint64_t sub_1C44F0DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFE200, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C44F0EF8()
{
  result = qword_1EDDFE230[0];
  if (!qword_1EDDFE230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE230);
  }

  return result;
}

uint64_t sub_1C44F0F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v63 = a2;
  v59 = a4;
  v60 = a3;
  v61 = sub_1C4EFF0C8();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = type metadata accessor for GraphTriple(0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v20 = a1;
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C447CB3C(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
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
    sub_1C44F1798();
    if (sub_1C44157D4(v25, 1, v63) == 1)
    {
      sub_1C4420C3C(v25, &unk_1EC0BC900, byte_1C4F142D0);
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
      sub_1C456902C(&unk_1EC0BE470, &unk_1C4F371E0);
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
        sub_1C44F1798();
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
          sub_1C44F1730(0, *(v34 + 16) + 1, 1, v34);
          v34 = v46;
        }

        v45 = *(v34 + 16);
        v44 = *(v34 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C44F1730(v44 > 1, v45 + 1, 1, v34);
          v34 = v47;
        }

        sub_1C447E868(v24, type metadata accessor for GraphTriple);
        *(v34 + 16) = v45 + 1;
        sub_1C449F338(v64, v34 + v56 + v45 * v58);
        v65 = v34;
        v37 = v61;
      }

      sub_1C4420C3C(v40, &unk_1EC0BC900, byte_1C4F142D0);
      if (*(v34 + 16))
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v62;
        sub_1C44C9764(v60, v39, &v65, v62, v54);
        v50 = v57;
        v51 = v53;
        objc_autoreleasePoolPop(v48);

        sub_1C447E868(v51, type metadata accessor for GraphTriple);
      }

      else
      {
        sub_1C447E868(v53, type metadata accessor for GraphTriple);

        v50 = v57;
        v49 = v62;
      }

      (*(v50 + 8))(v49, v37);
    }
  }

  return result;
}

void sub_1C44F1798()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFCD28, &qword_1EC0BC910, &qword_1C4F29AD8);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for GraphTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFCD38, &qword_1EC0BC910, &qword_1C4F29AD8);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for GraphTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC900, byte_1C4F142D0);
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

uint64_t sub_1C44F1994()
{

  return sub_1C447E868(v1, v0);
}

void sub_1C44F19D0()
{
}

void sub_1C44F1A3C()
{
  *(v0 - 280) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

void sub_1C44F1B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(*a1 + 16);
  v7 = sub_1C4428DA0(v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v10 = 0;
      goto LABEL_17;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 deviceIdentifier];
    v12 = sub_1C4F01138();
    v14 = v13;

    if (v12 == a2 && v14 == a3)
    {

LABEL_16:

LABEL_17:
      *a4 = v10;
      return;
    }

    v16 = sub_1C4F02938();

    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1C44F1CE0(uint64_t a1, uint64_t a2)
{
  *(*a1 + 16) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44F1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double *a6, uint64_t *a7, uint64_t a8, double a9, double a10)
{
  v11 = v10;
  v88 = a8;
  v81 = a7;
  v82 = a6;
  v83 = a5;
  v79 = a4;
  v86 = a3;
  v90 = a1;
  v78 = sub_1C4EFF0C8();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0;
  v18 = a2 + 56;
  v89 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v84 = "expired_stable_graph";
  v85 = "stable_graph_fts";
  while (1)
  {
    v19 = v16;
    if (*(a2 + 16))
    {
      v20 = *(&unk_1F43D9AF8 + v17 + 32);
      sub_1C4F02AF8();
      v21 = v20 ? 0x617247746E657665 : 0x7247656C62617473;
      v22 = v20 ? 0xEA00000000006870 : 0xEB00000000687061;
      sub_1C4F01298();

      v23 = sub_1C4F02B68();
      v24 = -1 << *(a2 + 32);
      v25 = v23 & ~v24;
      if ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }
    }

LABEL_38:
    v16 = 1;
    v17 = 1u;
    if (v19)
    {
      v45 = v89;
      v46 = sub_1C4428DA0(v89);
      v47 = 0;
      v86 = 0;
      v91 = v45 & 0xC000000000000001;
      v92 = v46;
      v90 = v45 & 0xFFFFFFFFFFFFFF8;
      v84 = v80 + 16;
      v85 = v80 + 8;
      v48 = INFINITY;
      v50 = v87;
      v49 = v88;
      while (1)
      {
        while (v92 == v47)
        {
          if (!v86)
          {
            goto LABEL_77;
          }

          v59 = v11;
          v60 = sub_1C44F2860();
          if (v11)
          {
          }

          v61 = v60;

          if (!v61)
          {
            goto LABEL_77;
          }

          if (*(*v79 + 16) >= *(v83 + 32))
          {
            v62 = sub_1C44F28F8(v62);
            if (v63 != *v82)
            {
              v62 = sub_1C44F2AB4(v62);
              if (v62 != *v81)
              {
              }
            }
          }

          v64 = sub_1C44F28F8(v62);
          *v82 = v65;
          v66 = *v81;
          if (v66 == sub_1C44F2AB4(v64))
          {

            v47 = 0;
            v86 = 0;
            v48 = INFINITY;
            v11 = v59;
          }

          else
          {
            v67 = sub_1C44F2E34(v61);
            v11 = v59;
            if (v67)
            {
              sub_1C44F28F8(v67);
              if (v68 >= a10 || (v69 = *(*v49 + 16), sub_1C44F920C(), v70 = static NSUserDefaults.maxSubjectIdSetSize.getter(), v29 = v69 == v70, v11 = 0, v29))
              {

                *v49 = MEMORY[0x1E69E7CD0];
              }

              sub_1C44F2AB4(v70);
              sub_1C4EFF0B8();
              v71 = sub_1C4EFF0A8();
              v72 = sub_1C483BD0C(v93, v71);
              if (v72)
              {
                v73 = v79;
                sub_1C4588EAC();
                v74 = *(*v73 + 16);
                sub_1C4589A94();
                v75 = *v73;
                *(v75 + 16) = v74 + 1;
                v72 = (*(v80 + 16))(v75 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74, v50, v78);
              }

              v76 = sub_1C44F2AB4(v72);
              (*v85)(v50, v78);
              *v81 = v76;
            }

            v47 = 0;
            v86 = 0;
            v48 = INFINITY;
          }
        }

        if (v91)
        {
          v51 = MEMORY[0x1C6940F90](v47, v45);
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);

            goto LABEL_77;
          }

          if (v47 >= *(v90 + 16))
          {
            goto LABEL_81;
          }

          v51 = *(v45 + 8 * v47 + 32);
        }

        if (__OFADD__(v47, 1))
        {
          goto LABEL_80;
        }

        v52 = sub_1C44F27CC();
        if (v11)
        {
        }

        if (!v52)
        {
          goto LABEL_55;
        }

        v53 = *(v52 + 16);
        if (!v53)
        {

          goto LABEL_55;
        }

        sub_1C4EFBBA8();
        v54 = sub_1C4EFBBE8();
        if (v54)
        {
          MEMORY[0x1EEE9AC00](v54);
          *(&v78 - 2) = v53;
          *(&v78 - 1) = 0;
          v56 = sqlite3_column_type(v55, 0);
          if (v56 == 5)
          {
            MEMORY[0x1EEE9AC00](v56);
            *(&v78 - 2) = sub_1C487BF24;
            *(&v78 - 1) = (&v78 - 4);
            sub_1C4EFB968();
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          sub_1C4F01A08();
          v58 = v57;

          v50 = v87;
          v49 = v88;
        }

        else
        {
          sub_1C4EFBB98();
          v50 = v87;
          v49 = v88;

          v58 = *v93;
        }

        v45 = v89;
        if (v58 < v48)
        {

          ++v47;
          v86 = v51;
          v48 = v58;
        }

        else
        {
LABEL_55:

          ++v47;
        }
      }
    }
  }

  LODWORD(v91) = v19;
  v92 = v11;
  v26 = ~v24;
  while (1)
  {
    v27 = *(*(a2 + 48) + v25) ? 0x617247746E657665 : 0x7247656C62617473;
    v28 = *(*(a2 + 48) + v25) ? 0xEA00000000006870 : 0xEB00000000687061;
    v29 = v27 == v21 && v28 == v22;
    if (v29)
    {
      break;
    }

    v30 = sub_1C4F02938();

    if (v30)
    {
      goto LABEL_25;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      v11 = v92;
      goto LABEL_37;
    }
  }

LABEL_25:
  v31 = *(v86 + 16);
  _s15RawTripleCursorCMa();
  swift_allocObject();
  if (v20)
  {
    v32 = v90;
    sub_1C487BE08(v90, v93);

    v34 = v92;
    sub_1C4878ABC(a9, v33, 0x72675F746E657665, 0xEB00000000687061, v32, 0, 0);
    v11 = v34;
    if (v34)
    {
      goto LABEL_77;
    }

    MEMORY[0x1C6940330]();
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    swift_allocObject();
    v35 = v90;
    sub_1C487BE08(v90, v93);

    v37 = v84 | 0x8000000000000000;
    v38 = 0xD000000000000013;
    v39 = v35;
    v40 = a9;
    v41 = 0;
    goto LABEL_34;
  }

  v42 = v90;
  sub_1C487BE08(v90, v93);
  v43 = v92;
  sub_1C4878ABC(a9, v31, 0x675F656C62617473, 0xEC00000068706172, v42, 1, 0);
  v11 = v43;
  if (!v43)
  {
    MEMORY[0x1C6940330]();
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    swift_allocObject();

    v44 = v90;
    sub_1C487BE08(v90, v93);
    v38 = 0xD000000000000014;
    v37 = v85 | 0x8000000000000000;
    v36 = v31;
    v39 = v44;
    v40 = a9;
    v41 = 1;
LABEL_34:
    sub_1C4878ABC(v40, v36, v38, v37, v39, v41, 1);
    MEMORY[0x1C6940330]();
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v89 = v94;
LABEL_37:
    LOBYTE(v19) = v91;
    goto LABEL_38;
  }

LABEL_77:
}

uint64_t sub_1C44F27CC()
{
  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 24);

    v3 = sub_1C44F34C4();
    if (v1)
    {
    }

    *(v2 + 16) = v3;

    *(v0 + 32) = 0;
  }

  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C44F2860()
{
  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 24);

    v3 = sub_1C44F34C4();
    if (v1)
    {
    }

    *(v2 + 16) = v3;
  }

  *(v0 + 32) = 1;
  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C44F28F8(uint64_t result)
{
  if (*(v1 + 40) == 1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
LABEL_9:
      MEMORY[0x1EEE9AC00](result);
      sub_1C4EFB968();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    sub_1C4EFBBA8();
    v2 = sub_1C4EFBBE8();
    if (v2)
    {
      MEMORY[0x1EEE9AC00](v2);
      result = sqlite3_column_type(v3, 0);
      if (result != 5)
      {
        sub_1C4F01A08();
      }

      goto LABEL_9;
    }

    sub_1C4EFBB98();
  }

  return result;
}

uint64_t sub_1C44F2AB4(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 32) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 64);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1C44F2C8C(uint64_t a1)
{
  v3 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    while (v8 != v9)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      sub_1C44F2DD0(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9++, v6);
      v10 = sub_1C44F2F70(a1, v6);
      sub_1C447E918(v6, _s28ResolvedKnowledgeGraphFilterVMa);
      if (v10)
      {
        return;
      }
    }
  }
}

uint64_t sub_1C44F2DD0(uint64_t a1, uint64_t a2)
{
  v4 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C44F2E34(uint64_t a1)
{
  sub_1C44F2C8C(a1);
  if (!v2)
  {
    v5 = 0;
    if (v4)
    {
      if (*(a1 + 137) != 1)
      {
        return 1;
      }

      if (*(a1 + 136) == 1)
      {
        v6 = 0x675F656C62617473;
        v7 = 0xEC00000068706172;
      }

      else
      {
        v6 = 0x72675F746E657665;
        v7 = 0xEB00000000687061;
      }

      if ((v8 = sub_1C48778D4(*(v1 + 16), v6, v7)) == 0)
      {
        return 1;
      }

      sub_1C44F2C8C(v8);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return v5;
}

uint64_t _s28ResolvedKnowledgeGraphFilterVMa(uint64_t a1)
{
  result = qword_1EDDFCC58;
  if (!qword_1EDDFCC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C44F2F70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0BE570, &qword_1C4F40030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((sub_1C44F3204(a2) & 1) == 0 || (sub_1C487B3F0(a2) & 1) == 0)
  {
    return 0;
  }

  v13 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  sub_1C487BD34(a2 + *(v13 + 32), v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    v14 = sub_1C4420C3C(v8, &qword_1EC0BE560, &qword_1C4F37468);
    goto LABEL_7;
  }

  v15 = (*(v10 + 32))(v12, v8, v9);
  sub_1C4878190(v15);
  sub_1C4C67368();

  (*(v10 + 8))(v12, v9);
  v16 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
  v17 = sub_1C44157D4(v5, 1, v16);
  v14 = sub_1C4420C3C(v5, &qword_1EC0BE570, &qword_1C4F40030);
  if (v17 == 1)
  {
    return 0;
  }

LABEL_7:
  if (*(a2 + 40))
  {
    return 1;
  }

  v19 = *(a2 + 32);
  return (sub_1C4878418(v14) & v19) != 0;
}

uint64_t sub_1C44F3204(uint64_t *a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1C4EFF0C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFD548();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  if (v14 == 1 && !a1[2])
  {
    goto LABEL_10;
  }

  v21 = *a1;
  sub_1C44F2AB4(v11);
  sub_1C4EFF0B8();
  sub_1C4EFF038();
  (*(v6 + 8))(v8, v5);
  if (sub_1C44157D4(v4, 1, v9) != 1)
  {
    (*(v10 + 32))(v13, v4, v9);
    if ((v14 & 1) == 0)
    {
      v18 = sub_1C4EFD508();
      (*(v10 + 8))(v13, v9);
      v15 = v21 == v18;
      return v15 & 1;
    }

    v16 = a1[2];
    if (v16)
    {
      v17 = sub_1C4EFD508();
      v15 = sub_1C4445828(v17, v16);
      (*(v10 + 8))(v13, v9);
      return v15 & 1;
    }

    (*(v10 + 8))(v13, v9);
LABEL_10:
    v15 = 1;
    return v15 & 1;
  }

  sub_1C4420C3C(v4, &qword_1EC0B8568, &unk_1C4F319B0);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1C44F34C4()
{
  v2 = sub_1C4458EE8();
  if (!v0)
  {
    v1 = v2;
    if (v2)
    {

      sub_1C4EFBBA8();
      v4 = sub_1C4EFBBE8();
      if (v4)
      {
        if (sqlite3_column_type(v4, 0) != 5)
        {
          sub_1C4F01A08();

          return v1;
        }
      }

      else
      {
        sub_1C4EFBBF8();

        if ((v9 & 1) == 0)
        {
          return v1;
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v5 = sub_1C4F00978();
      sub_1C442B738(v5, qword_1EDE2DF70);
      v6 = sub_1C4F00968();
      v7 = sub_1C4F01CD8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1C43F8000, v6, v7, "ViewUpdate: RawTripleCursor: Unexpectently found row with NULL values", v8, 2u);
        MEMORY[0x1C6942830](v8, -1, -1);
      }

      return 0;
    }
  }

  return v1;
}

void sub_1C44F36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t))
{
  sub_1C43FBD3C();
  v142 = v23;
  v145 = v24;
  v146 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v153 = v21;
  v33 = v32;
  v35 = v34;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v140 = v37;
  v141 = v36;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v137 = v39 - v38;
  v138 = v31;
  v139 = v29;
  v40 = sub_1C456902C(v31, v29);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBC74();
  v147 = v42;
  sub_1C43FBE44();
  sub_1C4EFC928();
  sub_1C43FCDF8();
  v143 = v44;
  v144 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v136 - v46;
  sub_1C4EFCA68();
  sub_1C43FCDF8();
  v150 = v49;
  v151 = v48;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBD08();
  v52 = v50 - v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v136 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v136 - v58;
  sub_1C44F40EC();
  sub_1C44F4254();

  v148 = v33;
  (v27)(v33);
  sub_1C44F4254();

  v152 = sub_1C44FE288(v35);
  v149 = v56;
  if (v60)
  {
    v61 = v60;
    v62 = HIBYTE(v60) & 0xF;
    v63 = v152 & 0xFFFFFFFFFFFFLL;
    if ((v61 & 0x2000000000000000) != 0)
    {
      v64 = v62;
    }

    else
    {
      v64 = v152 & 0xFFFFFFFFFFFFLL;
    }

    if (!v64)
    {
      v114 = 0;
      v27 = 1;
      v66 = v147;
      v67 = v148;
      goto LABEL_78;
    }

    if ((v61 & 0x1000000000000000) != 0)
    {
      v69 = sub_1C4AA1330();
      v27 = v135;
      v66 = v147;
      v67 = v148;
LABEL_75:
      if (v27)
      {
        v114 = 0;
      }

      else
      {
        v114 = v69;
      }

LABEL_78:
      v145(v67);
      v115 = v146(0);
      if (sub_1C44157D4(v66, 1, v115) == 1)
      {
        sub_1C4420C3C(v66, v138, v139);
        if ((v27 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v121 = v140;
        v122 = v137;
        v123 = v61;
        v124 = v141;
        (*(v140 + 16))(v137, v66, v141);
        sub_1C44DBDB4(v66, v142);
        v66 = sub_1C4EFF0A8();
        v125 = v124;
        v61 = v123;
        (*(v121 + 8))(v122, v125);
        if (v27 & 1 | (v114 != v66))
        {
LABEL_80:
          v66 = v153;
          v116 = a21(v67);
          if (v117)
          {
            v27 = v117;
            v118 = v116 == v152 && v117 == v61;
            if (!v118)
            {
              sub_1C4F02938();

              v119 = *(v150 + 8);
              v120 = v151;
              v119(v149, v151);
              v119(v59, v120);
              goto LABEL_92;
            }
          }
        }
      }

      v126 = sub_1C442C190();
      (v27)(v126);
      v127 = v59;
LABEL_91:
      (v27)(v127, v66);
      goto LABEL_92;
    }

    if ((v61 & 0x2000000000000000) != 0)
    {
      v154 = v152;
      v155 = v61 & 0xFFFFFFFFFFFFFFLL;
      if (v152 == 43)
      {
        v66 = v147;
        v67 = v148;
        if (v62)
        {
          if (v62 != 1)
          {
            sub_1C4458858();
            while (1)
            {
              sub_1C4401E84();
              if (!v118 & v97)
              {
                break;
              }

              sub_1C440DBD8();
              if (!v118)
              {
                break;
              }

              v69 = v108 + v107;
              if (__OFADD__(v108, v107))
              {
                break;
              }

              v65 = (v106 - 1);
              if (!v65)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_104:
        __break(1u);
        JUMPOUT(0x1C44F4028);
      }

      v66 = v147;
      v67 = v148;
      if (v152 != 45)
      {
        if (v62)
        {
          while (1)
          {
            sub_1C4401E84();
            if (!v118 & v97)
            {
              break;
            }

            sub_1C440DBD8();
            if (!v118)
            {
              break;
            }

            v69 = v113 + v112;
            if (__OFADD__(v113, v112))
            {
              break;
            }

            v65 = (v111 - 1);
            if (!v65)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      if (v62)
      {
        if (v62 != 1)
        {
          sub_1C4458858();
          while (1)
          {
            sub_1C4401E84();
            if (!v118 & v97)
            {
              break;
            }

            sub_1C440DBD8();
            if (!v118)
            {
              break;
            }

            v69 = v100 - v99;
            if (__OFSUB__(v100, v99))
            {
              break;
            }

            v65 = (v98 - 1);
            if (!v65)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((v152 & 0x1000000000000000) != 0)
      {
        v65 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v65 = sub_1C4F022F8();
      }

      v66 = v147;
      v67 = v148;
      v68 = *v65;
      if (v68 == 43)
      {
        if (v63 >= 1)
        {
          if (v63 != 1)
          {
            v69 = 0;
            if (v65)
            {
              v101 = v65 + 1;
              while (*v101 - 48 <= 9)
              {
                sub_1C440DBD8();
                if (!v118)
                {
                  break;
                }

                v69 = v105 + v104;
                if (__OFADD__(v105, v104))
                {
                  break;
                }

                v101 = (v102 + 1);
                if (v103 == 1)
                {
LABEL_65:
                  LOBYTE(v65) = 0;
                  goto LABEL_74;
                }
              }

              goto LABEL_73;
            }

            goto LABEL_74;
          }

          goto LABEL_73;
        }

        goto LABEL_103;
      }

      if (v68 != 45)
      {
        if (v63)
        {
          v69 = 0;
          if (v65)
          {
            while (1)
            {
              v109 = *v65 - 48;
              if (v109 > 9)
              {
                goto LABEL_73;
              }

              v110 = 10 * v69;
              if ((v69 * 10) >> 64 != (10 * v69) >> 63)
              {
                goto LABEL_73;
              }

              v69 = v110 + v109;
              if (__OFADD__(v110, v109))
              {
                goto LABEL_73;
              }

              ++v65;
              if (!--v63)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_73:
        v69 = 0;
        LOBYTE(v65) = 1;
        goto LABEL_74;
      }

      if (v63 >= 1)
      {
        if (v63 != 1)
        {
          v69 = 0;
          if (v65)
          {
            v70 = v65 + 1;
            while (*v70 - 48 <= 9)
            {
              sub_1C440DBD8();
              if (!v118)
              {
                break;
              }

              v69 = v74 - v73;
              if (__OFSUB__(v74, v73))
              {
                break;
              }

              v70 = (v71 + 1);
              if (v72 == 1)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_73;
          }

LABEL_74:
          v156 = v65;
          v27 = v65;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v147 = v52;
  sub_1C4EFC8D8();
  swift_allocObject();
  sub_1C4EFC8C8();
  v152 = v59;
  sub_1C4EFC8A8();
  v75 = sub_1C4EFC918();
  v77 = v143;
  v76 = v144;
  if ((v75 & 1) == 0 && (sub_1C4EFC908() & 0x17FFFFFFFLL) != 0)
  {
    sub_1C44F40EC();
    sub_1C45024A0(v152, v78, v79, v80, v81, v82, v83, v84, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);

    v85 = (v27)(v148);
    sub_1C45024A0(v149, v85, v86, v87, v88, v89, v90, v91, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);

    sub_1C43FD7E0();
    sub_1C4EFC8B8();
    v92 = v151;
    v27 = v150 + 8;
    v93 = *(v150 + 8);
    v94 = sub_1C4405814();
    v93(v94);
    (v93)(v22, v92);
    (*(v77 + 8))(v47, v76);
    v95 = sub_1C43FD258();
    v96(v95);
  }

  v66 = v47;
  if ((sub_1C4EFC918() & 1) == 0)
  {
LABEL_97:

    v132 = sub_1C4403128();
    v133(v132);
    v134 = sub_1C442C190();
    (v27)(v134);
    v127 = v152;
    goto LABEL_91;
  }

  v27 = 0xE700000000000000;
  switch(*(v153 + *(type metadata accessor for WalletOrderMatcher(0) + 24)))
  {
    case 1:
      v27 = 0xE400000000000000;
      goto LABEL_95;
    case 2:

      goto LABEL_96;
    case 3:
      v27 = 0xEA0000000000676ELL;
      sub_1C44133C0();
      goto LABEL_95;
    default:
LABEL_95:
      v66 = sub_1C4F02938();

      if ((v66 & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_96:
      sub_1C4EFC908();

      v128 = sub_1C4403128();
      v129(v128);
      v130 = *(v150 + 8);
      v131 = v151;
      v130(v149, v151);
      v130(v152, v131);
      break;
  }

LABEL_92:
  sub_1C43FE9F0();
}

uint64_t type metadata accessor for WalletOrderMatcher(uint64_t a1)
{
  result = qword_1EDDE58E8;
  if (!qword_1EDDE58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44F40EC()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for EntityTriple(v2);
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

      sub_1C4433CF0();
      v8 = sub_1C445E5E8(&unk_1EDDF8DB8, v7, &protocol conformance descriptor for EntityTriple);
      sub_1C4414204(v8);
      sub_1C444B150();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C44F4254()
{
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C4EFCA58();
  sub_1C4EFE458();
  sub_1C43FD024();
  sub_1C44F4394();
  v4 = v3;
  v5 = *(v1 + 8);
  v6 = sub_1C4405814();
  v5(v6);
  sub_1C44FDF08(v4);
  sub_1C4EFC9C8();
  sub_1C4EFE708();
  sub_1C43FD024();
  sub_1C44F4394();
  v8 = v7;
  v9 = sub_1C4405814();
  v5(v9);
  sub_1C44FDF08(v8);
  sub_1C4EFCA08();
  sub_1C4EFE598();
  sub_1C43FD024();
  sub_1C44F4394();
  v11 = v10;
  v12 = sub_1C4405814();
  v5(v12);
  sub_1C44FDF08(v11);
  return sub_1C4EFC9E8();
}

void sub_1C44F4394()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C4EFC808();
  sub_1C43FCDF8();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A89C();
  v31 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v34 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F46C0(sub_1C44FDC04, v33, v1, v11, v12, v13, v14, v15, v26, v27, v28, *(&v28 + 1), v29, v30, v31, v32, v33[0], v33[1], v34, v35);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C44FDE1C();
    v19 = v39;
    v27 = v17;
    v20 = v17 + 32;
    v30 = v7 + 32;
    v28 = xmmword_1C4F0D130;
    do
    {
      sub_1C442E860(v20, v38);
      sub_1C4409678(v38, v38[3]);
      sub_1C440BB4C();
      v36 = sub_1C4EFF7D8();
      v37 = v21;
      sub_1C456902C(&qword_1EC0C6948, "8d\a");
      v22 = swift_allocObject();
      *(v22 + 16) = v28;
      sub_1C4EFC7F8();
      v35 = v22;
      sub_1C444018C();
      sub_1C44FDE5C(&qword_1EC0C2318, v23, MEMORY[0x1E699C758]);
      sub_1C456902C(&qword_1EC0C6920, ">d\a");
      sub_1C44FDEA4();
      sub_1C4F020C8();
      sub_1C4EFC818();
      sub_1C440962C(v38);
      v39 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C43FCFE8(v24);
        sub_1C44FDE1C();
        v19 = v39;
      }

      *(v19 + 16) = v25 + 1;
      (*(v7 + 32))(v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, v31);
      v20 += 40;
      --v18;
    }

    while (v18);
  }

  sub_1C43FE9F0();
}

void sub_1C44F46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  sub_1C4413774();
  v25 = v24;
  v26 = 0;
  v28 = *(v27 + 16);
  v29 = v27 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  v42 = v24;
  v43 = v27;
  v41 = v28;
  while (1)
  {
    if (v28 == v26)
    {
      goto LABEL_14;
    }

    if (v26 >= *(v21 + 16))
    {
      break;
    }

    sub_1C442E860(v29, v47);
    v31 = v25(v47);
    if (v20)
    {
      sub_1C440962C(v47);

LABEL_14:

      sub_1C43FBC80();
      return;
    }

    if (v31)
    {
      sub_1C441D670(v47, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C440FB9C();
        sub_1C44F4214();
        v30 = a10;
      }

      v33 = *(v30 + 16);
      if (v33 >= *(v30 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v34 = v45;
      v35 = v46;
      sub_1C4418280(v44, v45);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v36);
      sub_1C43FBCC4();
      v39 = v38 - v37;
      (*(v40 + 16))(v38 - v37);
      sub_1C44FDC24(v33, v39, &a10, v34, v35);
      sub_1C440962C(v44);
      v30 = a10;
      v25 = v42;
      v21 = v43;
      v28 = v41;
    }

    else
    {
      sub_1C440962C(v47);
    }

    v29 += 40;
    ++v26;
  }

  __break(1u);
}

uint64_t sub_1C44F48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C44F4930(a1, a2);
  if (!v2)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1C44F4930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v48 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v19 = type metadata accessor for EntityTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  result = sub_1C44AB444();
  if (!v3)
  {
    v43 = v10;
    v44 = v9;
    v45 = v4;
    v46 = v2;
    v26 = v48;
    v25 = v49;
    sub_1C44D0BD8(v50, v18);
    if (sub_1C44157D4(v18, 1, v19) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v27 = sub_1C4F00978();
      sub_1C442B738(v27, qword_1EDE2DE10);
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CD8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C43F8000, v28, v29, "Pass through Matcher: skipping entityTriples are empty", v30, 2u);
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v31 = 0;
      return swift_willThrow();
    }

    else
    {
      sub_1C4471EF8(v18, v23);
      v32 = v15;
      sub_1C4EFF008();
      v50 = type metadata accessor for PassthroughMatcher(0);
      v33 = *(v50 + 28);
      sub_1C4EFD548();
      sub_1C43FBCE0();
      (*(v34 + 16))(v25, v46 + v33);
      v35 = type metadata accessor for EntityMatch(0);
      v36 = v26;
      v37 = *(v26 + 16);
      v38 = v43;
      v37(v25 + v35[5], v23, v43);
      v37(v25 + v35[6], v32, v38);
      v39 = v44;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v41 = v40;
      (*(v47 + 8))(v39, v45);
      (*(v36 + 8))(v32, v38);
      result = sub_1C44F587C(v23);
      v42 = *(v46 + *(v50 + 20));
      *(v25 + v35[7]) = 1056964608;
      *(v25 + v35[8]) = v41;
      *(v25 + v35[9]) = v42;
      *(v25 + v35[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C44F4D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v69 = a8;
  v68 = a7;
  LODWORD(v75) = a6;
  v76 = a2;
  v77 = a5;
  v11 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
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
  v58[1] = type metadata accessor for GraphTriple(0);
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
      sub_1C44AC538(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
      v54 = v60;
      sub_1C4EFAE28();
      sub_1C440962C(&v87);
      sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
      sub_1C44AC538(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
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

uint64_t sub_1C44F587C(uint64_t a1)
{
  v2 = type metadata accessor for EntityTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C44F58DC(uint64_t a1)
{
  v102[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v94 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  v15 = *(a1 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDFEC10 != -1)
  {
    v100 = v15;
    swift_once();
    v15 = v100;
  }

  v16 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC18, v15), xmmword_1EDDFEC18));
  if ((v16.i32[0] & v16.i32[1] & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v102[3] = &_s24SiriInferenceFeatureFlagON;
  v102[4] = sub_1C4C5A97C();
  LOBYTE(v102[0]) = 1;
  v17 = sub_1C4EFA738();
  sub_1C440962C(v102);
  if ((v17 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v100.i64[0] = v3;
  v18 = [objc_allocWithZone(MEMORY[0x1E698F360]) init];
  v102[0] = 0;
  v19 = [v18 remoteDevicesWithError_];

  v20 = v102[0];
  sub_1C4461BB8(0, &qword_1EDDFA448, 0x1E698F358);
  v21 = sub_1C4F01678();
  v22 = v20;

  if (!v22)
  {
    v31 = sub_1C4428DA0(v21);
    if (qword_1EDDFC440 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDE2DDA8;
    if (qword_1EDE2DDA8 >= v31)
    {
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CF8();

      if (os_log_type_enabled(v36, v37))
      {
        LODWORD(v99) = v37;
        v38 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v102[0] = v96;
        v97 = v38;
        LODWORD(v38->isa) = 136315138;
        v39 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          v95 = v36;
          v98 = v2;
          v101 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v31 & ~(v31 >> 63), 0);
          if (v31 < 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          v40 = 0;
          v39 = v101;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1C6940F90](v40, v21);
            }

            else
            {
              v41 = *(v21 + 8 * v40 + 32);
            }

            v42 = v41;
            v43 = [v41 deviceIdentifier];
            v44 = sub_1C4F01138();
            v46 = v45;

            v101 = v39;
            v48 = *(v39 + 16);
            v47 = *(v39 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_1C44CD9C0(v47 > 1, v48 + 1, 1);
              v39 = v101;
            }

            ++v40;
            *(v39 + 16) = v48 + 1;
            v49 = v39 + 16 * v48;
            *(v49 + 32) = v44;
            *(v49 + 40) = v46;
          }

          while (v31 != v40);
          v2 = v98;
          v36 = v95;
        }

        v77 = MEMORY[0x1C6940380](v39, MEMORY[0x1E69E6158]);
        v79 = v78;

        v80 = sub_1C441D828(v77, v79, v102);

        v81 = v97;
        *(v97 + 4) = v80;
        _os_log_impl(&dword_1C43F8000, v36, v99, "Retrieved remote devices: %s", v81, 0xCu);
        v82 = v96;
        sub_1C440962C(v96);
        MEMORY[0x1C6942830](v82, -1, -1);
        MEMORY[0x1C6942830](v81, -1, -1);
      }

      (*(v100.i64[0] + 8))(v14, v2);
      return v21;
    }

    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = sub_1C4428DA0(v21);

      *(v35 + 12) = 2048;
      *(v35 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v33, v34, "SyncDeviceRetriever - Too many remote devices: %ld - pruning to: %ld", v35, 0x16u);
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    else
    {
    }

    v50 = *(v100.i64[0] + 8);
    v100.i64[0] += 8;
    v50(v11, v2);
    v51 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102[0] = sub_1C4BCFAFC(v51);
    sub_1C4CE48C4(v102);

    if (v32 < 0)
    {
      __break(1u);
    }

    else
    {
      v99 = v50;
      v52 = v102[0];
      sub_1C4C5ACB0();
      sub_1C4C5ACB0();
      if ((v52 & 0xC000000000000001) != 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v32)
        {
          v53 = 0;
          do
          {
            v54 = v53 + 1;
            sub_1C4F02288();
            v53 = v54;
          }

          while (v32 != v54);
        }
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
      {
        v55 = 0;
        v56 = v52 + 32;
        v57 = (2 * v32) | 1;
        goto LABEL_38;
      }
    }

    v90 = sub_1C4F02528();
    v56 = v91;
    v55 = v92;
    v57 = v93;

    v52 = v90;
LABEL_38:
    if (v57)
    {
      sub_1C4F02998();
      swift_unknownObjectRetain_n();
      v59 = swift_dynamicCastClass();
      if (!v59)
      {
        swift_unknownObjectRelease();
        v59 = MEMORY[0x1E69E7CC0];
      }

      v60 = *(v59 + 16);

      if (__OFSUB__(v57 >> 1, v55))
      {
        __break(1u);
      }

      else if (v60 == (v57 >> 1) - v55)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v21)
        {
LABEL_47:
          sub_1C4F00178();

          v61 = sub_1C4F00968();
          v62 = sub_1C4F01CF8();

          if (!os_log_type_enabled(v61, v62))
          {

            v99(v8, v2);
            return v21;
          }

          v97 = v61;
          v63 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v102[0] = v94;
          v95 = v63;
          LODWORD(v63->isa) = 136315138;
          v64 = sub_1C4428DA0(v21);
          v65 = MEMORY[0x1E69E7CC0];
          LODWORD(v96) = v62;
          if (!v64)
          {
LABEL_61:
            v83 = MEMORY[0x1C6940380](v65, MEMORY[0x1E69E6158]);
            v85 = v84;

            v86 = sub_1C441D828(v83, v85, v102);

            v87 = v95;
            *(&v95->isa + 4) = v86;
            v88 = v97;
            _os_log_impl(&dword_1C43F8000, v97, v96, "Retrieved remote devices: %s", v87, 0xCu);
            v89 = v94;
            sub_1C440962C(v94);
            MEMORY[0x1C6942830](v89, -1, -1);
            MEMORY[0x1C6942830](v87, -1, -1);

            v99(v8, v2);
            return v21;
          }

          v66 = v64;
          v98 = v2;
          v101 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v64 & ~(v64 >> 63), 0);
          if ((v66 & 0x8000000000000000) == 0)
          {
            v67 = 0;
            v65 = v101;
            do
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v68 = MEMORY[0x1C6940F90](v67, v21);
              }

              else
              {
                v68 = *(v21 + 8 * v67 + 32);
              }

              v69 = v68;
              v70 = [v68 deviceIdentifier];
              v71 = sub_1C4F01138();
              v73 = v72;

              v101 = v65;
              v75 = *(v65 + 16);
              v74 = *(v65 + 24);
              if (v75 >= v74 >> 1)
              {
                sub_1C44CD9C0(v74 > 1, v75 + 1, 1);
                v65 = v101;
              }

              ++v67;
              *(v65 + 16) = v75 + 1;
              v76 = v65 + 16 * v75;
              *(v76 + 32) = v71;
              *(v76 + 40) = v73;
            }

            while (v66 != v67);
            v2 = v98;
            goto LABEL_61;
          }

LABEL_67:
          __break(1u);
        }

        v21 = MEMORY[0x1E69E7CC0];
LABEL_46:
        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C4618A54(v52, v56, v55, v57);
    v21 = v58;
    goto LABEL_46;
  }

  swift_willThrow();

  sub_1C4F00178();
  v23 = v22;
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CE8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v23;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1C43F8000, v24, v25, "Could not retrieve list of sync devices: %@", v26, 0xCu);
    sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  (*(v100.i64[0] + 8))(v5, v2);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C44F638C()
{
  sub_1C44366B4();
  sub_1C44F58DC(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_config);
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  os_unfair_lock_lock(v1 + 6);
  sub_1C44F1B58(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1C44F642C()
{
  v2 = v1;
  v60 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox;
  v61 = *(v0 + 120);
  v3 = *(v61 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(*(v3 + 16) + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_unlock((v3 + 24));
  v5 = sub_1C4428DA0(v4);
  if (v5)
  {
    v6 = v5;
    sub_1C445C280(v5);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v7 = 0;
    v8 = v63;
    v62 = v4 & 0xC000000000000001;
    v9 = v4;
    v10 = v6;
    do
    {
      if (v62)
      {
        v11 = MEMORY[0x1C6940F90](v7, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = [v11 deviceIdentifier];
      v14 = sub_1C4F01138();
      v16 = v15;

      v63 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = sub_1C43FCFE8(v17);
        sub_1C44CD9C0(v20, v18 + 1, 1);
        v8 = v63;
      }

      ++v7;
      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v4 = v9;
    }

    while (v10 != v7);

    v2 = v1;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v63 = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v63);
  if (v2)
  {

    __break(1u);
    return;
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v59 = sub_1C4F01048();
  v22 = v21;

  sub_1C44F638C();
  v23 = *(v61 + v60);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(*(v23 + 16) + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_unlock((v23 + 24));
  v25 = sub_1C4428DA0(v24);
  if (!v25)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v26 = v25;
  sub_1C445C280(v25);
  if (v26 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v57 = v22;
  v27 = 0;
  v28 = v63;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6940F90](v27, v24);
    }

    else
    {
      v29 = *(v24 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = [v29 deviceIdentifier];
    v32 = sub_1C4F01138();
    v34 = v33;

    v63 = v28;
    v36 = *(v28 + 16);
    v35 = *(v28 + 24);
    if (v36 >= v35 >> 1)
    {
      v38 = sub_1C43FCFE8(v35);
      sub_1C44CD9C0(v38, v36 + 1, 1);
      v28 = v63;
    }

    ++v27;
    *(v28 + 16) = v36 + 1;
    v37 = v28 + 16 * v36;
    *(v37 + 32) = v32;
    *(v37 + 40) = v34;
  }

  while (v26 != v27);

  v22 = v57;
LABEL_24:
  v63 = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v63);

  v39 = sub_1C4F01048();
  v41 = v40;

  if (v59 == v39 && v22 == v41)
  {
  }

  else
  {
    v43 = sub_1C4F02938();

    if ((v43 & 1) == 0)
    {
      if (qword_1EDDFECB0 == -1)
      {
LABEL_30:
        v44 = sub_1C4F00978();
        sub_1C43FCEE8(v44, qword_1EDDFECB8);
        v45 = sub_1C4F00968();
        v46 = sub_1C4F01CF8();
        if (os_log_type_enabled(v45, v46))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44011B0(&dword_1C43F8000, v47, v48, "ViewUpdate.Manager: Migrating views");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v49 = *(v58 + 16);
        v50 = *(v61 + v60);
        os_unfair_lock_lock((v50 + 24));
        v51 = *(*(v50 + 16) + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        os_unfair_lock_unlock((v50 + 24));
        sub_1C4C3FC7C(v49, v51, v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_config);

        return;
      }

LABEL_41:
      sub_1C43FFB88(&qword_1EDDFECB0);
      goto LABEL_30;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v52 = sub_1C4F00978();
  sub_1C43FCEE8(v52, qword_1EDDFECB8);
  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CD8();
  if (os_log_type_enabled(v53, v54))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C44011B0(&dword_1C43F8000, v55, v56, "ViewUpdate.Manager: Detected a new device but there was no change loading new devices");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

const char *sub_1C44F6A14(char a1)
{
  if (a1)
  {
    return "siri_remembers_private_device_sync";
  }

  else
  {
    return "siri_remembers_use_intelligence_platform";
  }
}

uint64_t sub_1C44F6A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44F6AAC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C44F6AAC()
{
  result = qword_1EDDFF1E0;
  if (!qword_1EDDFF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1E0);
  }

  return result;
}

void sub_1C44F6B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v35 = v25;
  v27 = v26;
  v30 = sub_1C440BE78(v26, v28, v29);
  sub_1C43FCDF8();
  v32 = v31;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4402A68();
  v34 = sub_1C4417F50(v27, v27[3]);
  v35(v34);
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C4409F78();
    sub_1C4411090();
    sub_1C4F02798();
    sub_1C4401670();
    sub_1C4411090();
    sub_1C4F02798();
  }

  (*(v32 + 8))(v24, v30);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44F6CC0()
{
  result = qword_1EDDFD898;
  if (!qword_1EDDFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD898);
  }

  return result;
}

uint64_t sub_1C44F6D1C(char a1)
{
  if (!a1)
  {
    return 0x656D614E656C6966;
  }

  if (a1 == 1)
  {
    return 0x4E6E6F6973726576;
  }

  return 0x62697461706D6F63;
}

uint64_t sub_1C44F6D84(uint64_t result, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 16) + 1;
  v9 = a2 + 72;
  do
  {
    if (!--v8)
    {
      break;
    }

    v10 = v9 + 48;
    a3(result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v9 = v10;
  }

  while (!v6);
  return result;
}

unint64_t sub_1C44F6E70()
{
  result = qword_1EDDFF1F0;
  if (!qword_1EDDFF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1F0);
  }

  return result;
}

uint64_t sub_1C44F6EC4()
{
  v0 = sub_1C4A631E8();
  if (qword_1EDDFECA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DF58);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136315138;
    v6 = sub_1C4F01198();
    v8 = sub_1C441D828(v6, v7, &v42);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, v2, v3, "OntologyParser: updateOntology: version check results: %s", v4, 0xCu);
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if ((v0 & 3) != 0)
  {
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v10))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B90(&dword_1C43F8000, v11, v12, "OntologyParser: updateOntology: updating classes");
      sub_1C43FBE2C();
    }

    v13 = sub_1C4A55054();
    sub_1C442D05C(v13);
    sub_1C4A57AE8();
    v14 = sub_1C443279C();
    sub_1C4A63A70(v14, v15, sub_1C4A65CB8);
    if ((v0 & 0xD) == 0)
    {
LABEL_14:
      if ((v0 & 0x11) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_11:
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v17))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B90(&dword_1C43F8000, v18, v19, "OntologyParser: updateOntology: updating predicates and inheritance");
      sub_1C43FBE2C();
    }

    v20 = sub_1C4A51E90();
    sub_1C442D05C(v20);
    sub_1C4A52228();
    sub_1C4A63748();
    v21 = sub_1C4A55968();
    sub_1C442D05C(v21);
    v22 = sub_1C4A566D4();
    sub_1C442D05C(v22);
    v23 = sub_1C4A56120();
    sub_1C442D05C(v23);
    sub_1C4A57BF0();
    sub_1C4A57CB0();
    sub_1C4A57C50();
    sub_1C4A63974();
    goto LABEL_14;
  }

  if ((v0 & 0xC) != 0)
  {
    goto LABEL_11;
  }

  if ((v0 & 0x10) == 0)
  {
    v38 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44076BC(v38);

    goto LABEL_26;
  }

LABEL_15:
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v25))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4402B90(&dword_1C43F8000, v26, v27, "OntologyParser: updateOntology: updating relationships");
    sub_1C43FBE2C();
  }

  v28 = sub_1C4A558F4();
  sub_1C442D05C(v28);
  sub_1C4A57B90();
  v29 = sub_1C4413570();
  sub_1C4A63A70(v29, v30, sub_1C4A65DF0);
LABEL_18:
  v31 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44076BC(v31);

  if (v0)
  {
LABEL_26:
    v32 = sub_1C4F00968();
    v39 = sub_1C4F01CF8();
    if (!sub_1C43FEB2C(v39))
    {
      v36 = 0;
      goto LABEL_31;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v40, v39, "OntologyParser: updateOntology: no updates needed");
    v36 = 0;
    goto LABEL_28;
  }

  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();
  v34 = sub_1C43FEB2C(v33);
  if ((v0 & 0x20) == 0)
  {
    if (!v34)
    {
      v36 = 1;
      goto LABEL_31;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v35, v33, "OntologyParser: updateOntology: ontology has been modified");
    v36 = 1;
    goto LABEL_28;
  }

  v36 = 2;
  if (v34)
  {
    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v37, v33, "OntologyParser: updateOntology: ontology has been modified and requires a rebuild");
LABEL_28:
    sub_1C43FBE2C();
  }

LABEL_31:

  return v36;
}

char *sub_1C44F7334(uint64_t a1, int a2)
{
  v3 = v2;
  v65 = a2;
  v67 = *v3;
  v63 = sub_1C4EFB1E8();
  sub_1C43FCDF8();
  v61 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v62 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - v9;
  v10 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v59 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  sub_1C4432740();
  sub_1C4EF9888();
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url;
  v22 = *(v12 + 32);
  v64 = v20;
  v22(&v3[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url], v20, v10);
  v66 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config;
  sub_1C44098F0(a1, &v3[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config]);
  type metadata accessor for Configuration(0);
  v71 = a1;
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v72 = v10;
  sub_1C4406FD4();
  v24 = 2 * (v23 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4();
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 | 4;
  }

  v69 = v26;
  sub_1C44F920C();
  v27 = static NSUserDefaults.ontologyDatabaseLoggingEnabled.getter() & 1;
  v28 = *(v12 + 16);
  v29 = v72;
  v28(v17, &v3[v21], v72);
  v30 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v68 = v21;
  v31 = v3;
  v32 = v30;
  swift_allocObject();
  v33 = v70;
  v34 = sub_1C44F999C(v17, v69 | v27);
  if (v33)
  {
    sub_1C4467948(v71);
    (*(v12 + 8))(&v31[v68], v29);
    sub_1C4467948(&v31[v66]);
    swift_deallocPartialClassInstance();
    return v31;
  }

  v36 = v68;
  v69 = v32;
  v70 = v12 + 16;
  v37 = v12;
  *&v31[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool] = v34;
  sub_1C4A52458();
  v35 = v31;
  type metadata accessor for OntologyParser(0);
  swift_allocObject();

  if (sub_1C4A628B8(v41))
  {
    if ((v65 & 1) != 0 || sub_1C44F6EC4() != 2)
    {
      sub_1C4467948(v71);
      goto LABEL_18;
    }

    v42 = &v31[v36];
    v43 = v64;
    v44 = v72;
    v28(v64, v42, v72);
    sub_1C4B6E134(v43, 1);
    (*(v37 + 8))(v43, v44);
    sub_1C4778114();
    v45 = swift_allocError();
    *v46 = 4;
    swift_willThrow();

    v73 = v45;
    v38 = v45;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {

      v39 = v75;
      sub_1C4778114();
      swift_allocError();
      *v40 = v39;
      swift_willThrow();
      sub_1C4467948(v71);

LABEL_18:

      return v35;
    }

    v73 = v45;
    v48 = v45;
    if (!swift_dynamicCast())
    {

      v73 = 0;
      v74 = 0xE000000000000000;

      sub_1C4F02248();
      v54 = OntologyDatabase.description.getter();
      v56 = v55;

      v73 = v54;
      v74 = v56;
      MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FAB6E0);
      v75 = v45;
      v57 = v45;
      v58 = sub_1C4F01198();
      MEMORY[0x1C6940010](v58);

      goto LABEL_24;
    }

    v49 = v62;
    (*(v61 + 32))(v62, v60, v63);
    v50 = v59;
    v28(v59, &v31[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url], v72);
    sub_1C4774554(v50, v49);
    __break(1u);
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1C4F02248();
  v51 = OntologyDatabase.description.getter();
  v53 = v52;

  v73 = v51;
  v74 = v53;
  MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4FAE350);
LABEL_24:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44F7A2C()
{
  sub_1C44F7A84();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44F7A84()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON;
  v2 = sub_1C4EF98F8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
  (v3)(v4);
  v5 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
  (v3)(v5);
  v6 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON);
  (v3)(v6);
  v7 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_versionJSON);
  (v3)(v7);

  return v0;
}

void sub_1C44F7C68()
{
  sub_1C43FBD3C();
  sub_1C4434074(v5, v6, v7, v8, v9, v10);
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C43FE83C();
  sub_1C442C5D8();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(v1, v0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C43FE83C();
    sub_1C447EF98();
    if (!v14)
    {
      goto LABEL_12;
    }

    v3 = v13;
  }

  if (v4)
  {
    *(*(*v2 + 56) + 8 * v3) = v20;
    sub_1C43FE9F0();
  }

  else
  {
    v16 = sub_1C44158DC();
    v17(v16);
    v18 = sub_1C43FD018();
    v19(v18);
    sub_1C43FE9F0();
  }
}

uint64_t type metadata accessor for OntologyDatabase(uint64_t a1)
{
  result = qword_1EDDFF1C8;
  if (!qword_1EDDFF1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44F7E2C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v4);
  v5 = swift_allocObject();
  sub_1C44F7334(v4, 0);
  sub_1C4467948(a1);
  return v5;
}

void sub_1C44F7F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C4418F8C(a1, a2, a3, a4);
  v6(v5);
  sub_1C43FCE50();
  v7 = sub_1C440CFF4();
  v8(v7);
  sub_1C4412BC4();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

uint64_t sub_1C44F7F70()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD9C8(v1, v2);
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

uint64_t sub_1C44F8004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2E088);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CC8();
  if (os_log_type_enabled(v7, v8))
  {
    sub_1C43FECF0();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = sub_1C456902C(&qword_1EC0C3D28, &qword_1C4F55618);
    v12 = sub_1C4426078(v11);
    v14 = sub_1C441D828(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v7, v8, "StorageSystem: %s: performing startup check of database.", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  (*(a3 + 32))(a1, a2, a3);
  (*(v15 + 8))(v19, a2);
  v20 = *(a1 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDFEC28 != -1)
  {
    v23 = v20;
    swift_once();
    v20 = v23;
  }

  v21 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC30, v20), xmmword_1EDDFEC30));
  if (v21.i32[0] & v21.i32[1])
  {
    sub_1C4AA3D44(a1, a2, a3);
  }

  return 0;
}

uint64_t sub_1C44F8728(uint64_t a1)
{
  if (qword_1EDDFF3F8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v2 = 0;
  v3 = 0;
  v4 = qword_1EDE2E018;
  v5 = *(qword_1EDE2E018 + 16);
  v6 = qword_1EDE2E018 + 40;
LABEL_3:
  v7 = (v6 + 16 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v3;
    result = sub_1C44F8004(a1, *(v7 - 1), *v7);
    if (result == 1)
    {
      v2 = result;
      goto LABEL_3;
    }

    v7 += 2;
    if (result == 2)
    {
      return result;
    }
  }

  return v2;
}

uint64_t sub_1C44F87FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF418, &qword_1EDE2E028, sub_1C44F8B30, sub_1C44F88C0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44F885C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return a4(a1);
}

uint64_t sub_1C44F88C0()
{
  sub_1C456902C(&qword_1EC0C3C30, &qword_1C4F54488);
  swift_allocObject();
  result = sub_1C44F89C4();
  qword_1EDE2E028 = result;
  return result;
}

uint64_t type metadata accessor for StateDatabase(uint64_t a1)
{
  result = qword_1EDDFF400;
  if (!qword_1EDDFF400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44F89C4()
{
  sub_1C456902C(&qword_1EC0C6260, &qword_1C4F6B5D8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for StateDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6268, &qword_1C4F6B5E0);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

unint64_t sub_1C44F8A78()
{
  result = qword_1EDDFFA00;
  if (!qword_1EDDFFA00)
  {
    sub_1C4EF98F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFFA00);
  }

  return result;
}

void sub_1C44F8AE4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1C44F8B30()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44F8BC4(v1, v2);
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

uint64_t sub_1C44F8BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for StateDatabase, sub_1C44F8C5C, sub_1C44FB230);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1C44F8C5C(uint64_t a1)
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
  sub_1C4407B94();
  sub_1C4EF9888();
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url;
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url, v19, v9);
  v35 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config);
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
  v25 = static NSUserDefaults.stateDatabaseLoggingEnabled.getter() & 1;
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
    *(v27 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_pool) = v31;
    sub_1C44FAA4C();
    sub_1C4467948(v41);
  }

  return v27;
}

unint64_t sub_1C44F920C()
{
  result = qword_1EDDFE900;
  if (!qword_1EDDFE900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE900);
  }

  return result;
}

void *sub_1C44F927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C445FAA8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

unint64_t sub_1C44F92C4()
{
  result = qword_1EDDFE130;
  if (!qword_1EDDFE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE130);
  }

  return result;
}

uint64_t sub_1C44F9318@<X0>(void *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1C44F9344(a2, a3);
  if (!v3)
  {
    *a1 = v6;
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1C44F9344(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  if (MEMORY[0x1C6938780]() == 16)
  {
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    sub_1C4433834(&v18, v19, v4, MEMORY[0x1E6969080], v5, v6, v7, v8, 0);
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    if (MEMORY[0x1C6938780](a1, a2) < 8)
    {
      __break(1u);
    }

    sub_1C4433834(&v17, &v18, v9, MEMORY[0x1E6969080], v10, v11, v12, v13, 8);
    return sub_1C4434000(a1, a2);
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v15 = 0x6B72616D6B6F6F42;
    *(v15 + 8) = 0xE800000000000000;
    *(v15 + 16) = 0xD000000000000027;
    *(v15 + 24) = 0x80000001C4FB3810;
    v16 = v19[1];
    *(v15 + 32) = v19[0];
    *(v15 + 48) = v16;
    *(v15 + 64) = 4;
    swift_willThrow();
    return sub_1C4434000(a1, a2);
  }
}

uint64_t storeEnumTagSinglePayload for MotionStateContent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

double sub_1C44F9540(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C4EF9AE8();
  v5 = v4 + 0.0;
  if (v4 != INFINITY)
  {
    *&v5 += (*&v5 >> 63) | 1;
  }

  if (a3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C44F95AC(double a1, double a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a1;
  v2 = sub_1C4464F38(&v10, v11);
  v4 = v3;
  v5 = sub_1C4464F38(&v9, &v10);
  v7 = v6;
  v11[0] = v2;
  v11[1] = v4;
  sub_1C44344B8(v2, v4);
  sub_1C44F9684(v5, v7);
  sub_1C4434000(v5, v7);
  sub_1C4434000(v2, v4);
  return v11[0];
}

uint64_t sub_1C44F9684(uint64_t a1, unint64_t a2)
{
  v9[3] = MEMORY[0x1E6969080];
  v9[4] = MEMORY[0x1E6969078];
  v9[0] = a1;
  v9[1] = a2;
  v5 = sub_1C4409678(v9, MEMORY[0x1E6969080]);
  v6 = *v5;
  v7 = v5[1];
  sub_1C44344B8(a1, a2);
  sub_1C44F970C(v6, v7, v2);
  return sub_1C440962C(v9);
}

uint64_t sub_1C44F970C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_6:
      result = sub_1C4B8CDC8(a1, v4);
      break;
    default:
      result = sub_1C4EF9A08();
      break;
  }

  return result;
}

uint64_t sub_1C44F9870()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE9C8);
  sub_1C442B738(v0, qword_1EDDFE9C8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t *sub_1C44F9918(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_1C44F999C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v107 = a2;
  v6 = *v2;
  v110 = v3;
  v111 = v6;
  v96 = sub_1C4EFB1E8();
  sub_1C43FCDF8();
  v93 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v92 = v9 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v95 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v98 = v17 - v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v97 = v20;
  sub_1C43FBE44();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v99 = v22;
  v100 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C4EFB148();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v92 - v35;
  v108 = v15;
  v109 = v13;
  v37 = *(v15 + 16);
  v105 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL;
  v101 = v37;
  v102 = (v15 + 16);
  v37(&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL], a1, v13, v34);
  type metadata accessor for ErrorHandlingDatabasePool.GuardedData(0);
  v38 = swift_allocObject();
  sub_1C4EF9B28();
  sub_1C456902C(&qword_1EC0BC550, qword_1C4F24678);
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 16) = v38;
  v104 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox;
  *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox] = v39;
  sub_1C44FA2C0(a1, v107);
  v40 = OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_configuration;
  (*(v28 + 32))(&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_configuration], v36, v26);
  sub_1C4EF98E8();
  v106 = v28;
  v107 = v26;
  v41 = *(v28 + 16);
  v103 = v40;
  v41(v32, &v4[v40], v26);
  sub_1C4EFAFC8();
  swift_allocObject();
  v42 = v110;
  v43 = sub_1C4EFAF68();
  if (!v42)
  {
    v61 = v43;
    (*(v108 + 8))(a1, v109);
    *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool] = v61;
    return v4;
  }

  v94 = v4;
  v44 = v109;
  v110 = a1;
  v45 = v42;
  sub_1C4EFA758();
  v46 = sub_1C4EFAD68();

  (*(v99 + 8))(v25, v100);
  if (v46)
  {

    v47 = v110;
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDE2E088);
    v49 = v97;
    sub_1C4432210();
    v50();
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CD8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v113 = v54;
      *v53 = 136315138;
      sub_1C4406C38();
      sub_1C44901D4(v55, v56, MEMORY[0x1E6968FE0]);
      v57 = sub_1C4F02858();
      v59 = v58;
      sub_1C4411C18();
      v44();
      v60 = sub_1C441D828(v57, v59, &v113);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_1C43F8000, v51, v52, "<ErrorHandlingDatabasePool u:%s>: authorization failure, device may be Class C locked.", v53, 0xCu);
      sub_1C440962C(v54);
      sub_1C43FBE2C();
      v47 = v110;
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4411C18();
      (v44)(v49, v25);
    }

    v4 = v94;
    v86 = sub_1C4778114();
    sub_1C43FFB2C(&type metadata for StorageError, v86);
    *v87 = 1;
    swift_willThrow();
LABEL_17:
    (v44)(v47, v25);
    (v44)(&v4[v105], v25);
    (*(v106 + 8))(&v4[v103], v107);

    swift_deallocPartialClassInstance();
    return v4;
  }

  v113 = v42;
  v62 = v42;
  v63 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v65 = v95;
  v64 = v96;
  v66 = swift_dynamicCast();
  v47 = v110;
  if (!v66)
  {

    v67 = v98;
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128(&qword_1EDDFFAF0);
    }

    v68 = sub_1C4F00978();
    sub_1C442B738(v68, qword_1EDE2E088);
    sub_1C4432210();
    v69();
    v70 = v42;
    v71 = sub_1C4F00968();
    v72 = sub_1C4F01CD8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v101 = v63;
      v74 = v73;
      v102 = swift_slowAlloc();
      v113 = v102;
      *v74 = 136315394;
      sub_1C4406C38();
      sub_1C44901D4(v75, v76, MEMORY[0x1E6968FE0]);
      LODWORD(v100) = v72;
      v77 = sub_1C4F02858();
      v79 = v78;
      v44 = *(v108 + 8);
      v80 = sub_1C43FCE84();
      (v44)(v80);
      v81 = sub_1C441D828(v77, v79, &v113);

      *(v74 + 4) = v81;
      *(v74 + 12) = 2080;
      v112 = v42;
      v82 = v42;
      v83 = sub_1C4F01198();
      v85 = sub_1C441D828(v83, v84, &v113);

      *(v74 + 14) = v85;
      v47 = v110;
      _os_log_impl(&dword_1C43F8000, v71, v100, "<ErrorHandlingDatabasePool u:%s>: failed to open db: %s", v74, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4411C18();
      (v44)(v67, v25);
    }

    v4 = v94;
    v88 = sub_1C4778114();
    sub_1C43FFB2C(&type metadata for StorageError, v88);
    *v89 = 0;
    swift_willThrow();

    goto LABEL_17;
  }

  v91 = v92;
  (*(v93 + 32))(v92, v65, v64);
  result = sub_1C4774554(v47, v91);
  __break(1u);
  return result;
}