void sub_1C4646A88()
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
  v12 = sub_1C4433190();
  type metadata accessor for ProgressTokens(v12);
  sub_1C43FCDF8();
  v85 = v13;
  v86 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1C4416DF8();
  v16 = type metadata accessor for CNContactDeltaSourceIngestor(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v18);
  v21 = v79 - v20;
  if (v7 >> 60 == 15)
  {
    sub_1C444BFD8();
  }

  else
  {
    v79[1] = v19;
    v80 = v2;
    v82 = v1;
    v22 = sub_1C43FC0A8();
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
      v32 = sub_1C43FC0A8();
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
          sub_1C447E868(v21, type metadata accessor for CNContactDeltaSourceIngestor);
          v41 = sub_1C4640838();
          v43 = v42;
          v44 = sub_1C440CAF0();
          sub_1C447E868(v44, v45);
          v46 = sub_1C447CB90();
          sub_1C441D828(v46, v43, v47);
          sub_1C44D44F0();
          *(v9 + 4) = v41;
          sub_1C4451274(&dword_1C43F8000, v48, v37, "%s failed to update progress token");
          sub_1C440962C(v3);
          v49 = sub_1C4416E14();
          MEMORY[0x1C6942830](v49);
          v50 = sub_1C44068C0();
          MEMORY[0x1C6942830](v50);
        }

        else
        {
          sub_1C447E868(v21, type metadata accessor for CNContactDeltaSourceIngestor);
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
    v52 = sub_1C43FC0A8();
    sub_1C441DFEC(v52, v53);
    v4 = v82;
    v9 = v0;
    v7 = v51;
    v2 = v80;
  }

  v54 = v4;
  sub_1C46516F8(v88);
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
  switch(*(v4 + *(v16 + 28)))
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
        sub_1C4EFD548();
        sub_1C43FCE50();
        (*(v59 + 16))(v3, v4);
        sub_1C441925C();
        sub_1C4430900(v4 + v60, v3 + v61);
        sub_1C4485FC4();
        *v62 = v9;
        v62[1] = v7;
        sub_1C44A1488();
        type metadata accessor for PhaseStores(0);
        sub_1C4460A18();
        v63 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v64 = sub_1C4404CB4(v63);
        sub_1C4412DCC(v64, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v65 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C4EFD548();
        sub_1C43FCE50();
        v67 = sub_1C4404BB0();
        v68(v67);
        v69 = *(v4 + *(v16 + 36));
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4430900(v4 + v70, v2 + v71);
        *(v2 + MEMORY[0xE700000000000014]) = v69;
        v72 = (v2 + MEMORY[0xE70000000000001C]);
        *v72 = v9;
        v72[1] = v7;
        *(v2 + MEMORY[0xE700000000000020]) = v54;
        *(v2 + MEMORY[0xE700000000000024]) = v21 & 1;
        type metadata accessor for PhaseStores(0);
        sub_1C4460A18();
        v73 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v74 = sub_1C4405904(v73);
        sub_1C44068A0(v74, xmmword_1C4F0D130);
        sub_1C4430900(v2, v75);
        v76 = sub_1C447EF78();
        sub_1C449498C(v76);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v65 = v2;
      }

      sub_1C447E868(v65, v66);
      v77 = sub_1C43FC0A8();
      sub_1C441DFEC(v77, v78);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647050()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for LSBundleRecordSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for LSBundleRecordSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for LSBundleRecordSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
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
  sub_1C4651B48(v40);
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

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
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

void sub_1C4647508()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for WalletEmailOrderSourceIngestor(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for WalletEmailOrderSourceIngestor);
          v28 = sub_1C44C11FC();
          sub_1C46404C4(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4651F88(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C447581C();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C447581C();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4456980();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647A00()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for BMAppleMusicEventSourceIngestor(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for BMAppleMusicEventSourceIngestor);
          v28 = sub_1C44C11FC();
          sub_1C46404C4(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C46523C8(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C447581C();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C447581C();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4456980();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4647EF8()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for HKEmergencyContactSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for HKEmergencyContactSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for HKEmergencyContactSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
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
  sub_1C4652808(v40);
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

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
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

void sub_1C46483B0()
{
  sub_1C43FBD3C();
  v7 = v1;
  v59 = v8;
  v9 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4433190();
  v12 = type metadata accessor for ProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for PGRelationshipFullSourceIngestor(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v18 = sub_1C4404C28();
    v7 = sub_1C456902C(v18, v19);
    sub_1C442C5A4();
    v23 = sub_1C4401CBC(v20, v21, &dword_1C4F141D0, v22);
    sub_1C4414180(v23);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v58);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v24 = sub_1C4F00978();
        sub_1C43FCEE8(v24, qword_1EDE2DE10);
        v25 = sub_1C44623A0();
        sub_1C4430900(v25, v6);
        v26 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v12 = 136315138;
          v31 = sub_1C440CAF0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v6, type metadata accessor for PGRelationshipFullSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for PGRelationshipFullSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v12 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v36, v27, "%s failed to update progress token");
          sub_1C440962C(v5);
          v37 = sub_1C4416E14();
          MEMORY[0x1C6942830](v37);
          v38 = sub_1C44068C0();
          MEMORY[0x1C6942830](v38);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for PGRelationshipFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v58);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4652C48(v39);
  v6 = v59;
  if (!v60[3])
  {
    sub_1C4420C3C(v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v59)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v40 = sub_1C4402D10();
  v41(v40);
  sub_1C4456268();
  if ((v59 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  v43 = 0x6E776F6E6B6E75;
  switch(v44)
  {
    case 1:
      v43 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v43 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v43);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C44806A4(v45);
        sub_1C4426A30(*(v12 + 20));
        *(v5 + v46) = v59 & 1;
        sub_1C44246D8();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4424F7C(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v51);
        sub_1C442AB20();
        sub_1C4460A18();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v3, v54);
        v55 = sub_1C4415F88();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v3;
      }

      sub_1C447E868(v49, v50);
      v56 = sub_1C43FD2BC();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464888C()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for WalletClassicOrderSourceIngestor(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for WalletClassicOrderSourceIngestor);
          v28 = sub_1C44C11FC();
          sub_1C46404C4(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4653098(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C447581C();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C447581C();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4456980();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4648D84()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for WalletTrackedOrderSourceIngestor(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for WalletTrackedOrderSourceIngestor);
          v28 = sub_1C44C11FC();
          sub_1C46404C4(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C46534D8(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C447581C();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C447581C();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4456980();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464927C()
{
  sub_1C43FBD3C();
  sub_1C4435804(v7, v8, v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1C4409ACC(v11, v58);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  v15 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(v14);
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

      objc_autoreleasePoolPop(v59);
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
          sub_1C447E868(v4, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
          sub_1C46403A4();
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
    objc_autoreleasePoolPop(v59);
  }

  sub_1C4656BA4();
  sub_1C4653918(v37);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
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
        sub_1C4EFD548();
        sub_1C43FCE50();
        v41 = sub_1C440EDB0();
        v42(v41);
        sub_1C441925C();
        sub_1C4656BC8(v43);
        sub_1C440EF68(*(v12 + 20));
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
        v48 = *(v15 + 32);
        sub_1C4EFD548();
        sub_1C43FCE50();
        v49 = sub_1C4422A44();
        v50(v49);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v51);
        sub_1C442B994(*(v48 + 20));
        sub_1C4457890();
        sub_1C4460A18();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v3, v54);
        v55 = sub_1C447EF78();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v46 = v3;
      }

      sub_1C447E868(v46, v47);
      v56 = sub_1C43FC0A8();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4649758()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v60);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  type metadata accessor for WalletEmailOrderDeltaSourceIngestor(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v16 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v16);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    v20 = sub_1C4401CBC(v17, v18, &dword_1C4F141D0, v19);
    sub_1C4461C04(v20);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v21 = sub_1C4F00978();
        sub_1C43FCEE8(v21, qword_1EDE2DE10);
        v22 = sub_1C44623A0();
        sub_1C4430900(v22, v3);
        v23 = sub_1C4F00968();
        sub_1C4F01CD8();
        v24 = sub_1C44016D0();
        if (os_log_type_enabled(v24, v25))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v26 = swift_slowAlloc();
          sub_1C44305A4(v26);
          *v4 = 136315138;
          v27 = sub_1C43FE99C();
          sub_1C4430900(v27, v28);
          sub_1C447E868(v3, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
          v29 = sub_1C44C11FC();
          sub_1C464020C(v29, v30, v31);
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v3, v33);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v5);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
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
    objc_autoreleasePoolPop(v61);
  }

  sub_1C4656BA4();
  sub_1C4653D68(v38);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v62, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  v42 = 0x6E776F6E6B6E75;
  switch(v43)
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v44 = sub_1C440EDB0();
        v45(v44);
        sub_1C441925C();
        sub_1C4656BC8(v46);
        sub_1C440EF68(*(v11 + 20));
        sub_1C441C838();
        sub_1C44B8F10();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v53);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C44B8F10();
        sub_1C4460A18();
        v54 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v55 = sub_1C4405904(v54);
        sub_1C44068A0(v55, xmmword_1C4F0D130);
        sub_1C4430900(v2, v56);
        v57 = sub_1C447EF78();
        sub_1C449498C(v57);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v2;
      }

      sub_1C447E868(v49, v50);
      v58 = sub_1C43FC0A8();
      sub_1C441DFEC(v58, v59);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4649C38()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v60);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v16 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v16);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    v20 = sub_1C4401CBC(v17, v18, &dword_1C4F141D0, v19);
    sub_1C4461C04(v20);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v21 = sub_1C4F00978();
        sub_1C43FCEE8(v21, qword_1EDE2DE10);
        v22 = sub_1C44623A0();
        sub_1C4430900(v22, v3);
        v23 = sub_1C4F00968();
        sub_1C4F01CD8();
        v24 = sub_1C44016D0();
        if (os_log_type_enabled(v24, v25))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v26 = swift_slowAlloc();
          sub_1C44305A4(v26);
          *v4 = 136315138;
          v27 = sub_1C43FE99C();
          sub_1C4430900(v27, v28);
          sub_1C447E868(v3, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
          v29 = sub_1C44C11FC();
          sub_1C464020C(v29, v30, v31);
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v3, v33);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v5);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
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
    objc_autoreleasePoolPop(v61);
  }

  sub_1C4656BA4();
  sub_1C46541B8(v38);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v62, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  v42 = 0x6E776F6E6B6E75;
  switch(v43)
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v44 = sub_1C440EDB0();
        v45(v44);
        sub_1C441925C();
        sub_1C4656BC8(v46);
        sub_1C440EF68(*(v11 + 20));
        sub_1C441C838();
        sub_1C44B8F10();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v53);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C44B8F10();
        sub_1C4460A18();
        v54 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v55 = sub_1C4405904(v54);
        sub_1C44068A0(v55, xmmword_1C4F0D130);
        sub_1C4430900(v2, v56);
        v57 = sub_1C447EF78();
        sub_1C449498C(v57);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v2;
      }

      sub_1C447E868(v49, v50);
      v58 = sub_1C43FC0A8();
      sub_1C441DFEC(v58, v59);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464A118()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for WalletTransactionOrderSourceIngestor(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for WalletTransactionOrderSourceIngestor);
          v28 = sub_1C44C11FC();
          sub_1C46404C4(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4654608(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C447581C();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C447581C();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C4456980();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464A610()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v60);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v16 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v16);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    v20 = sub_1C4401CBC(v17, v18, &dword_1C4F141D0, v19);
    sub_1C4461C04(v20);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v21 = sub_1C4F00978();
        sub_1C43FCEE8(v21, qword_1EDE2DE10);
        v22 = sub_1C44623A0();
        sub_1C4430900(v22, v3);
        v23 = sub_1C4F00968();
        sub_1C4F01CD8();
        v24 = sub_1C44016D0();
        if (os_log_type_enabled(v24, v25))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v26 = swift_slowAlloc();
          sub_1C44305A4(v26);
          *v4 = 136315138;
          v27 = sub_1C43FE99C();
          sub_1C4430900(v27, v28);
          sub_1C447E868(v3, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
          v29 = sub_1C44C11FC();
          sub_1C464020C(v29, v30, v31);
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v3, v33);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v5);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
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
    objc_autoreleasePoolPop(v61);
  }

  sub_1C4656BA4();
  sub_1C4654A48(v38);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v62, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  v42 = 0x6E776F6E6B6E75;
  switch(v43)
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v44 = sub_1C440EDB0();
        v45(v44);
        sub_1C441925C();
        sub_1C4656BC8(v46);
        sub_1C440EF68(*(v11 + 20));
        sub_1C441C838();
        sub_1C44B8F10();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v53);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C44B8F10();
        sub_1C4460A18();
        v54 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v55 = sub_1C4405904(v54);
        sub_1C44068A0(v55, xmmword_1C4F0D130);
        sub_1C4430900(v2, v56);
        v57 = sub_1C447EF78();
        sub_1C449498C(v57);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v2;
      }

      sub_1C447E868(v49, v50);
      v58 = sub_1C43FC0A8();
      sub_1C441DFEC(v58, v59);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464AAF0()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v60);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v16 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v16);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    v20 = sub_1C4401CBC(v17, v18, &dword_1C4F141D0, v19);
    sub_1C4461C04(v20);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v21 = sub_1C4F00978();
        sub_1C43FCEE8(v21, qword_1EDE2DE10);
        v22 = sub_1C44623A0();
        sub_1C4430900(v22, v3);
        v23 = sub_1C4F00968();
        sub_1C4F01CD8();
        v24 = sub_1C44016D0();
        if (os_log_type_enabled(v24, v25))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v26 = swift_slowAlloc();
          sub_1C44305A4(v26);
          *v4 = 136315138;
          v27 = sub_1C43FE99C();
          sub_1C4430900(v27, v28);
          sub_1C447E868(v3, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
          v29 = sub_1C44C11FC();
          sub_1C464020C(v29, v30, v31);
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v3, v33);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v5);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
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
    objc_autoreleasePoolPop(v61);
  }

  sub_1C4656BA4();
  sub_1C4654E98(v38);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v62, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  v42 = 0x6E776F6E6B6E75;
  switch(v43)
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v44 = sub_1C440EDB0();
        v45(v44);
        sub_1C441925C();
        sub_1C4656BC8(v46);
        sub_1C440EF68(*(v11 + 20));
        sub_1C441C838();
        sub_1C44B8F10();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v53);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C44B8F10();
        sub_1C4460A18();
        v54 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v55 = sub_1C4405904(v54);
        sub_1C44068A0(v55, xmmword_1C4F0D130);
        sub_1C4430900(v2, v56);
        v57 = sub_1C447EF78();
        sub_1C449498C(v57);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v2;
      }

      sub_1C447E868(v49, v50);
      v58 = sub_1C43FC0A8();
      sub_1C441DFEC(v58, v59);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464AFD0()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v60);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4410A24();
  if (v1)
  {
    sub_1C444BFD8();
  }

  else
  {
    v16 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v16);
    v0 = sub_1C4EF93C8();
    v1 = &qword_1EC0BA4A8;
    v4 = sub_1C4475260();
    sub_1C442C5A4();
    v20 = sub_1C4401CBC(v17, v18, &dword_1C4F141D0, v19);
    sub_1C4461C04(v20);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v21 = sub_1C4F00978();
        sub_1C43FCEE8(v21, qword_1EDE2DE10);
        v22 = sub_1C44623A0();
        sub_1C4430900(v22, v3);
        v23 = sub_1C4F00968();
        sub_1C4F01CD8();
        v24 = sub_1C44016D0();
        if (os_log_type_enabled(v24, v25))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v26 = swift_slowAlloc();
          sub_1C44305A4(v26);
          *v4 = 136315138;
          v27 = sub_1C43FE99C();
          sub_1C4430900(v27, v28);
          sub_1C447E868(v3, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
          v29 = sub_1C44C11FC();
          sub_1C464020C(v29, v30, v31);
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v3, v33);
          sub_1C4404CE0();

          *(v4 + 4) = v0;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v5);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
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
    objc_autoreleasePoolPop(v61);
  }

  sub_1C4656BA4();
  sub_1C46552E8(v38);
  sub_1C446BC18();
  if (!v1)
  {
    sub_1C4420C3C(&v62, &qword_1EC0BA490, &unk_1C4F53630);
    v0 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v0++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4488918();
  v42 = 0x6E776F6E6B6E75;
  switch(v43)
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v44 = sub_1C440EDB0();
        v45(v44);
        sub_1C441925C();
        sub_1C4656BC8(v46);
        sub_1C440EF68(*(v11 + 20));
        sub_1C441C838();
        sub_1C44B8F10();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v53);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C44B8F10();
        sub_1C4460A18();
        v54 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v55 = sub_1C4405904(v54);
        sub_1C44068A0(v55, xmmword_1C4F0D130);
        sub_1C4430900(v2, v56);
        v57 = sub_1C447EF78();
        sub_1C449498C(v57);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v2;
      }

      sub_1C447E868(v49, v50);
      v58 = sub_1C43FC0A8();
      sub_1C441DFEC(v58, v59);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464B4B0()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
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
  sub_1C4655738(v40);
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

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
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
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
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

void sub_1C464B968()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for IdentifierBasedMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for IdentifierBasedMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4655B78(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464BE60()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for ShipmentFullFillmentMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for ShipmentFullFillmentMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C4655FB8(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
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
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464C358()
{
  sub_1C43FBD3C();
  sub_1C4435804(v6, v7, v8);
  sub_1C43FCDF8();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1C4409ACC(v10, v56);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4416DF8();
  v14 = type metadata accessor for Deduper(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4410A24();
  if (v2)
  {
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  else
  {
    v19 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v19);
    v1 = sub_1C4EF93C8();
    sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v20, v21, &dword_1C4F141D0, v22);
    v2 = 0;
    v17 = sub_1C4EF93B8();
    v18 = v37;

    objc_autoreleasePoolPop(v57);
  }

  sub_1C4656BA4();
  sub_1C46563F8(v38);
  sub_1C446BC18();
  if (v2)
  {
    v39 = sub_1C440F3CC();
    v40(v39);
    sub_1C4456268();
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v1++, 1))
  {
    __break(1u);
    sub_1C4419274();
    swift_once();
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
      *v11 = 136315138;
      v29 = sub_1C43FE99C();
      sub_1C4430900(v29, v30);
      sub_1C447E868(v4, type metadata accessor for Deduper);
      sub_1C464001C();
      sub_1C4450608();
      v31 = sub_1C447CB90();
      sub_1C441D828(v31, v4, v32);
      sub_1C4404CE0();

      *(v11 + 4) = v3;
      sub_1C442F634(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
      sub_1C440962C(v5);
      v35 = sub_1C4416E14();
      MEMORY[0x1C6942830](v35);
      v36 = sub_1C44068C0();
      MEMORY[0x1C6942830](v36);
    }

    else
    {
      sub_1C44B6748();
    }

    goto LABEL_21;
  }

LABEL_11:
  v42 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v14 + 32)))
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_15;
    case 2:

      goto LABEL_16;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_15;
    default:
LABEL_15:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v3)
      {
LABEL_16:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v43 = *(v0 + *(v14 + 24));
        sub_1C441925C();
        sub_1C44EC814(v44);
        *(v5 + *(v11 + 20)) = v43;
        v45 = (v5 + *(v11 + 28));
        *v45 = v17;
        v45[1] = v18;
        *(v5 + *(v11 + 32)) = v1;
        sub_1C446277C(*(v11 + 36));
        sub_1C4457890();
        sub_1C4460A18();
        v46 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v47 = sub_1C4404CB4(v46);
        sub_1C4412DCC(v47, xmmword_1C4F0D130);
        sub_1C4431E64(v17, v18);
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v48 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v50 = *(v0 + *(v14 + 24));
        sub_1C441925C();
        sub_1C4656CBC(v51);
        *(v59 + v58[5]) = v50;
        v52 = (v59 + v58[7]);
        *v52 = v17;
        v52[1] = v18;
        *(v59 + v58[8]) = v1;
        *(v59 + v58[9]) = v4 & 1;
        sub_1C4457890();
        sub_1C4460A18();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v59, v55);
        sub_1C4431E64(v17, v18);
        sub_1C449498C(v54);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v48 = v59;
      }

      sub_1C447E868(v48, v49);
      sub_1C441DFEC(v17, v18);
      break;
  }

LABEL_21:
  sub_1C43FE9F0();
}

uint64_t sub_1C464C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v18 = a6;
  v19 = a7;
  v17 = a1;
  v7 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for GraphTriple(0);
  sub_1C447CB3C(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFADF8();
  sub_1C4B4BB78();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_1C44F0F4C(v17, v13, v18, v19);
  return (v14)(v13, v7);
}

uint64_t sub_1C464CA28@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for HomeMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA570, type metadata accessor for HomeMatcher, &protocol conformance descriptor for HomeMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA570, type metadata accessor for HomeMatcher, &protocol conformance descriptor for HomeMatcher);
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

uint64_t sub_1C464CE68@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for EventMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF8CB8, type metadata accessor for EventMatcher, &protocol conformance descriptor for EventMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF8CB8, type metadata accessor for EventMatcher, &protocol conformance descriptor for EventMatcher);
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

uint64_t sub_1C464D2B8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for GroupMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDEB620, type metadata accessor for GroupMatcher, &protocol conformance descriptor for GroupMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDEB620, type metadata accessor for GroupMatcher, &protocol conformance descriptor for GroupMatcher);
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

uint64_t sub_1C464D6F8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for TopicMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF89E0, type metadata accessor for TopicMatcher, &protocol conformance descriptor for TopicMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF89E0, type metadata accessor for TopicMatcher, &protocol conformance descriptor for TopicMatcher);
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

uint64_t sub_1C464DB38@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for DocumentMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA578, type metadata accessor for DocumentMatcher, &protocol conformance descriptor for DocumentMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA578, type metadata accessor for DocumentMatcher, &protocol conformance descriptor for DocumentMatcher);
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

uint64_t sub_1C464DF88@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for SoftwareMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF6668, type metadata accessor for SoftwareMatcher, &protocol conformance descriptor for SoftwareMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF6668, type metadata accessor for SoftwareMatcher, &protocol conformance descriptor for SoftwareMatcher);
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

uint64_t sub_1C464E3C8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletOrderMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher, &protocol conformance descriptor for WalletOrderMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher, &protocol conformance descriptor for WalletOrderMatcher);
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

uint64_t sub_1C464E808@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for StandardTransformer(0);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA560, type metadata accessor for StandardTransformer, &protocol conformance descriptor for StandardTransformer);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA560, type metadata accessor for StandardTransformer, &protocol conformance descriptor for StandardTransformer);
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

uint64_t sub_1C464EC48@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for StandardEntityMapper(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper, &unk_1C4F541B4);
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
        v31 = sub_1C447CB3C(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper, &unk_1C4F541B4);
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

uint64_t sub_1C464F098@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for EKEventSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor, &unk_1C4F1F4BC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor, &unk_1C4F1F4BC);
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

uint64_t sub_1C464F4D8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for INGroupSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE3A50, type metadata accessor for INGroupSourceIngestor, &unk_1C4F3BAEC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE3A50, type metadata accessor for INGroupSourceIngestor, &unk_1C4F3BAEC);
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

uint64_t sub_1C464F918@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for SGEventSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor, &unk_1C4F514EC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor, &unk_1C4F514EC);
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

uint64_t sub_1C464FD58@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for FAFamilySourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2F38, type metadata accessor for FAFamilySourceIngestor, &unk_1C4F2D4CC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2F38, type metadata accessor for FAFamilySourceIngestor, &unk_1C4F2D4CC);
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

uint64_t sub_1C4650198@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for INPersonSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2A98, type metadata accessor for INPersonSourceIngestor, &unk_1C4F3BB9C);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2A98, type metadata accessor for INPersonSourceIngestor, &unk_1C4F3BB9C);
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

uint64_t sub_1C46505D8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for PHPersonSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor, &unk_1C4F4DDEC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor, &unk_1C4F4DDEC);
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

uint64_t sub_1C4650A18@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for LifeEventSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40A7C);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor, &unk_1C4F40A7C);
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

uint64_t sub_1C4650E68@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for SGContactSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1C60, type metadata accessor for SGContactSourceIngestor, &unk_1C4F513FC);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1C60, type metadata accessor for SGContactSourceIngestor, &unk_1C4F513FC);
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

uint64_t sub_1C46512B8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for ScreenTimeSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor, &unk_1C4F507E0);
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
        v31 = sub_1C447CB3C(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor, &unk_1C4F507E0);
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

uint64_t sub_1C46516F8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for CNContactDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E3C);
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
        v31 = sub_1C447CB3C(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor, &unk_1C4F16E3C);
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

uint64_t sub_1C4651B48@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for LSBundleRecordSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor, &unk_1C4F455E4);
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
        v31 = sub_1C447CB3C(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor, &unk_1C4F455E4);
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

uint64_t sub_1C4651F88@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletEmailOrderSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F914);
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
        v31 = sub_1C447CB3C(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor, &unk_1C4F6F914);
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

uint64_t sub_1C46523C8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDEB08, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F144D4);
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
        v31 = sub_1C447CB3C(&qword_1EDDDEB08, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F144D4);
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

uint64_t sub_1C4652808@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for HKEmergencyContactSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDE88, type metadata accessor for HKEmergencyContactSourceIngestor, &unk_1C4F37B98);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDE88, type metadata accessor for HKEmergencyContactSourceIngestor, &unk_1C4F37B98);
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

uint64_t sub_1C4652C48@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for PGRelationshipFullSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDDD0, type metadata accessor for PGRelationshipFullSourceIngestor, &unk_1C4F4CA18);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDDD0, type metadata accessor for PGRelationshipFullSourceIngestor, &unk_1C4F4CA18);
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

uint64_t sub_1C4653098@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F688);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F688);
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

uint64_t sub_1C46534D8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FD48);
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
        v31 = sub_1C447CB3C(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FD48);
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

uint64_t sub_1C4653918@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDD2B8, type metadata accessor for FutureLifeEventDeltaSourceIngestor, &unk_1C4F30FD8);
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
        v31 = sub_1C447CB3C(&qword_1EDDDD2B8, type metadata accessor for FutureLifeEventDeltaSourceIngestor, &unk_1C4F30FD8);
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

uint64_t sub_1C4653D68@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F990);
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
        v31 = sub_1C447CB3C(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor, &unk_1C4F6F990);
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

uint64_t sub_1C46541B8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF1190, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F14550);
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
        v31 = sub_1C447CB3C(&qword_1EDDF1190, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F14550);
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

uint64_t sub_1C4654608@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F6FF7C);
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
        v31 = sub_1C447CB3C(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F6FF7C);
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

uint64_t sub_1C4654A48@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F704);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F704);
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

uint64_t sub_1C4654E98@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FDC4);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FDC4);
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

uint64_t sub_1C46552E8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F6FFF8);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F6FFF8);
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

uint64_t sub_1C4655738@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA628, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor, &unk_1C4F3F3D4);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA628, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor, &unk_1C4F3F3D4);
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

uint64_t sub_1C4655B78@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for IdentifierBasedMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF3BC0, type metadata accessor for IdentifierBasedMatcher, &protocol conformance descriptor for IdentifierBasedMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF3BC0, type metadata accessor for IdentifierBasedMatcher, &protocol conformance descriptor for IdentifierBasedMatcher);
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

uint64_t sub_1C4655FB8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for ShipmentFullFillmentMatcher(0);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA568, type metadata accessor for ShipmentFullFillmentMatcher, &protocol conformance descriptor for ShipmentFullFillmentMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EC0BA568, type metadata accessor for ShipmentFullFillmentMatcher, &protocol conformance descriptor for ShipmentFullFillmentMatcher);
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

uint64_t sub_1C46563F8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for Deduper(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC090, type metadata accessor for Deduper, &protocol conformance descriptor for Deduper);
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
        v31 = sub_1C447CB3C(&qword_1EDDDC090, type metadata accessor for Deduper, &protocol conformance descriptor for Deduper);
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

uint64_t sub_1C465686C(uint64_t a1)
{
  result = sub_1C447CB3C(&qword_1EDDF0D50, type metadata accessor for Blocker, &protocol conformance descriptor for Blocker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46568C4(uint64_t a1)
{
  result = sub_1C447CB3C(&qword_1EDDF0D60, type metadata accessor for Blocker, &protocol conformance descriptor for Blocker);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4656944(uint64_t a1)
{
  type metadata accessor for Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PhaseStores(319);
        if (v4 <= 0x3F)
        {
          sub_1C4656A88(319, &qword_1EDDF0638, &qword_1EC0BA480, &qword_1C4F141A8);
          if (v5 <= 0x3F)
          {
            sub_1C4656A88(319, &qword_1EDDF0648, &qword_1EC0BA488, &unk_1C4F141B0);
            if (v6 <= 0x3F)
            {
              type metadata accessor for StateStore(319);
              if (v7 <= 0x3F)
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

void sub_1C4656A88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C4572308(a3, a4);
    v5 = sub_1C4F017A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4656BB0()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C4656BC8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1, v2 + a1);
}

uint64_t sub_1C4656BE0()
{
  v3 = *(v0 + *(v1 + 24));

  return sub_1C448D934(v3);
}

uint64_t sub_1C4656C04(uint64_t a1)
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4656C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C4F024A8();
}

void sub_1C4656C44()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4656C64@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = *(v2 - 132) & 1;

  return type metadata accessor for PhaseStores(0);
}

void sub_1C4656C84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_1C4656CA4()
{
  v3 = *(v0 + *(v1 + 24));

  return sub_1C448D934(v3);
}

uint64_t sub_1C4656CBC@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2 + v1, v3 + a1);
}

uint64_t sub_1C4656CD4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4656E00, 0, 0);
}

uint64_t sub_1C4656E00()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4657494(&qword_1EDDF1198, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F14590);
        v4 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v2, v5 + v6, v7);
        v8 = qword_1EDDFD268;
        v9 = 2;
        v10 = v4;
      }

      else
      {
        v11 = *(v0 + 96);
        v3 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4657494(&qword_1EDDDEB10, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F145B8);
        v10 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v11, v10, v12);
        v4 = (v10 + *(v3 + 20));
        v8 = qword_1EDDFD268;
        v9 = 1;
      }

      if (v8 != -1)
      {
        sub_1C4404CEC(&qword_1EDDFD268);
      }

      v13 = *(v0 + 160);
      v14 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD270);
      sub_1C44068F0();
      sub_1C4471750(v15, v4, v16);
      *(v10 + *(v3 + 24)) = v9;
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C4419288();
      sub_1C4471750(v14, v13, v17);
      if (qword_1EDDFD268 != -1)
      {
        sub_1C4404CEC(&qword_1EDDFD268);
      }

      v18 = *(v0 + 185);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD270);
      *(v0 + 168) = v23;
      sub_1C4471750(v23, v19, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v23, v21, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v22, v20, v24);
      *(v0 + 184) = v18;
      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = sub_1C4657140;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t sub_1C4657140()
{

  return MEMORY[0x1EEE6DFA0](sub_1C465723C, 0, 0);
}

uint64_t sub_1C465723C()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 185);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v6 = *(v0 + 96);
  v20 = *(v0 + 104);
  sub_1C44068F0();
  sub_1C4471750(v7, v4, v8);
  sub_1C4419288();
  sub_1C4471750(v6, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v6);
  sub_1C440962C((v0 + 16));
  v21 = v2;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = sub_1C4418280(v0 + 56, v11);
  v13 = *(v11 - 8);
  v14 = swift_task_alloc();
  (*(v13 + 16))(v14, v12, v11);
  v15 = sub_1C4487AD8(v1, v18, v14, v19, v5, &v21, v20, v11, v10);
  sub_1C440962C((v0 + 56));

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t type metadata accessor for BMAppleMusicEventPhase(uint64_t a1)
{
  result = qword_1EDDF4018;
  if (!qword_1EDDF4018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4657494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46575C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4657674()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

__objc2_prot **sub_1C465777C(uint64_t a1, int a2, unsigned __int8 *a3, double a4)
{
  v5 = v4;
  v178 = a2;
  v168 = a1;
  v7 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v160 - v9);
  v11 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v179 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v177 = v14;
  sub_1C43FBE44();
  v182 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v176 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v181 = v17;
  sub_1C43FBE44();
  v180 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v175 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v174 = v20;
  v21 = sub_1C43FBE44();
  v186 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v173 = (&v160 - v27);
  v28 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v171 = &v160 - v30;
  v31 = sub_1C43FBE44();
  v172 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v31);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v185 = v33;
  v34 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v160 - v36;
  v170 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v184 = v39;
  v40 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  v169 = &v160 - v42;
  v43 = sub_1C43FBE44();
  v44 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v43);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  v183 = v46;
  v47 = sub_1C43FBE44();
  v187 = type metadata accessor for BMAppleMusicEventStructs.Song(v47);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  v188 = v49;
  v50 = sub_1C43FBE44();
  v51 = type metadata accessor for BMAppleMusicEventStructs.Event(v50);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v190 = v53;
  v54 = *a3;
  v55 = sub_1C465B638(v5, &selRef_iTunesSubscriptionIdentifier);
  if (v56)
  {
    v57 = v56;
    v161 = v37;
    HIDWORD(v162) = v54;
    v164 = v11;
    v165 = v24;
    v163 = v10;
    v10 = &off_1E81F1000;
    v167 = v5;
    v58 = v55;
    [v5 playbackState];
    v59 = sub_1C4657674();
    v61 = v60;
    v166 = v58;
    v191 = v58;
    v192 = v57;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v59, v61);

    v62 = v191;
    v63 = v192;
    v64 = sub_1C4F019E8();
    v66 = v65;
    v191 = v62;
    v192 = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v64, v66);

    if (qword_1EDDE92C8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v67, qword_1EDDE92D0);
    String.base64EncodedSHA(withPrefix:)();
    v69 = v68;
    v71 = v70;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = v189;
    v73 = v190;
    sub_1C4D62E98(v69, v71, v74, v75, v76, v77, v78, v79, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
    if (v72)
    {
    }

    else
    {
      v189 = v69;
      v81 = sub_1C442B9BC();
      [v81 v82];
      v83 = sub_1C4657674();
      v84 = v73;
      v85 = v83;
      v87 = v86;
      v88 = (v84 + *(v51 + 36));

      *v88 = v85;
      v88[1] = v87;
      if (qword_1EDDE9280 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v67, qword_1EDDE9288);
      String.base64EncodedSHA(withPrefix:)();
      sub_1C4D637D4(v89, v90, v91, v92, v93, v94, v95, v96, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
      v160 = v71;
      v97 = v167;
      sub_1C465B638(v167, &selRef_title);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      sub_1C465B638(v97, &selRef_artist);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      sub_1C465B638(v97, &selRef_iTunesArtistIdentifier);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      sub_1C465B638(v97, &selRef_album);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      sub_1C465B638(v97, &selRef_iTunesAlbumIdentifier);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      sub_1C4A4B4D8(v97);
      sub_1C440D158();
      sub_1C441C85C();
      *v88 = v87;
      v88[1] = v67;
      v98 = sub_1C4EFEEF8();
      v99 = v183;
      sub_1C44331C4();
      sub_1C4EFD258();
      v100 = v44[6];
      if (qword_1EDDFD268 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Source(0);
      v102 = sub_1C442B738(v101, &qword_1EDDFD270);
      sub_1C465B694(v102, v99 + v100);
      sub_1C4EFE558();
      v103 = (v99 + v44[8]);
      sub_1C4EFE658();
      v104 = v44[10];
      *v103 = v166;
      v103[1] = v57;
      *(v99 + v104) = xmmword_1C4F14410;
      v105 = v169;
      sub_1C465B694(v99, v169);
      v106 = sub_1C43FC024();
      sub_1C440BAA8(v106, v107, v108, v44);
      v109 = v188;
      sub_1C4D641D0(v105);
      v110 = v184;
      sub_1C440BAA8(v184, 1, 1, v98);
      v111 = v170;
      sub_1C4EFD208();
      sub_1C465B694(v102, v110 + *(v111 + 24));
      sub_1C4EFEE08();
      v112 = (v110 + *(v111 + 32));
      v113 = sub_1C442B9BC();
      LODWORD(v191) = [v113 v114];
      *v112 = sub_1C4F02858();
      v112[1] = v115;
      v116 = v161;
      sub_1C465B694(v110, v161);
      v117 = sub_1C43FC024();
      sub_1C440BAA8(v117, v118, v119, v111);
      sub_1C4D642C0(v116);
      v120 = v185;
      sub_1C44331C4();
      v121 = v172;
      sub_1C4EFD178();
      sub_1C465B694(v102, v120 + *(v121 + 24));
      v122 = v187;
      sub_1C440BAA8(v120 + *(v121 + 28), 1, 1, v187);
      v123 = v171;
      sub_1C465B694(v109, v171);
      v124 = sub_1C43FC024();
      sub_1C440BAA8(v124, v125, v126, v122);
      sub_1C4D643B0(v123);
      v127 = v173;
      sub_1C465B694(v120, v173);
      v128 = sub_1C43FC024();
      sub_1C440BAA8(v128, v129, v130, v121);
      sub_1C4D644D0(v127);
      v131 = v165;
      sub_1C44331C4();
      v132 = v186;
      sub_1C4EFD168();
      sub_1C465B694(v102, v131 + v132[6]);
      sub_1C4EFEEE8();
      v187 = (v131 + v132[8]);
      sub_1C4EFECE8();
      v133 = (v131 + v132[10]);
      *v133 = 0;
      v133[1] = 0;
      v172 = v133;
      sub_1C4EFE7B8();
      v173 = (v131 + v132[12]);
      sub_1C4EFE668();
      v134 = (v131 + v132[14]);
      *v134 = 0;
      v134[1] = 0;
      v135 = v174;
      sub_1C4EF9AC8();
      v136 = v181;
      sub_1C4EF9F58();
      if (qword_1EDDF4920 != -1)
      {
        swift_once();
      }

      v137 = v177;
      v171 = qword_1EDE2D428;
      sub_1C4EF9EA8();
      v138 = sub_1C44CDAD4();
      v140 = v139;
      v179 = *(v179 + 8);
      (v179)(v137, v164);
      v141 = v176 + 8;
      v176 = *(v176 + 8);
      (v176)(v136, v182);
      v175 = *(v175 + 8);
      (v175)(v135, v180);
      v142 = v187;
      *v187 = v138;
      v142[1] = v140;
      v143 = sub_1C4F019E8();
      v144 = v173;
      *v173 = v143;
      v144[1] = v145;
      if ((v178 & 1) == 0)
      {
        *v134 = sub_1C4F019E8();
        v134[1] = v146;
        sub_1C4EF9AC8();
        v147 = v181;
        sub_1C4EF9F58();
        sub_1C4EF9EA8();
        v148 = sub_1C44CDAD4();
        v150 = v149;
        (v179)(v137, v164);
        (v176)(v147, v182);
        (v175)(v135, v180);
        v151 = v172;
        *v172 = v148;
        v151[1] = v150;
      }

      sub_1C4410A34();
      sub_1C465B694(v152, v141);
      v153 = sub_1C43FC024();
      sub_1C440BAA8(v153, v154, v155, v186);
      v156 = v190;
      sub_1C4D645C0(v141);
      LOBYTE(v191) = BYTE4(v162);
      sub_1C4D646B0();
      v10 = v158;
      sub_1C440DF90();

      sub_1C4416E24();
      sub_1C4402D60();
      sub_1C43FD2EC();
      sub_1C4432038();
      sub_1C442C5C0();
      sub_1C465B5E0(v156, v159);
    }
  }

  else
  {
    sub_1C465B58C();
    swift_allocError();
    *v80 = 0;
    swift_willThrow();
  }

  return v10;
}

void sub_1C4658494()
{
  sub_1C467D22C();
  if (v4)
  {
    v1 = 0;
  }

  else
  {
    v1 = v3;
  }

  v2 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  sub_1C4658E70(v1, v4, *(v0 + *(v2 + 24)));
}

void sub_1C46584FC(uint64_t a1, int a2, uint64_t a3)
{
  v71 = a3;
  v5 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - v9;
  sub_1C43FBDBC();
  v10 = swift_allocObject();
  v69 = v10;
  *(v10 + 16) = 0;
  v64 = v10 + 16;
  sub_1C43FBDBC();
  v11 = swift_allocObject();
  v68 = v11;
  *(v11 + 16) = 0;
  v12 = (v11 + 16);
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  v67 = v13;
  *(v13 + 16) = 0;
  v63 = v13 + 16;
  v58 = a1;
  v61 = a2;
  if (a2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *&a1;
  }

  sub_1C43FBDBC();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = swift_allocObject();
  v66 = v17;
  *(v17 + 16) = 0;
  v59 = (v17 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  v62 = sub_1C442B738(v18, qword_1EDE2DE10);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v19, v20, "Ingesting now playing using time stamp: %f", v21, 0xCu);
    sub_1C43FBE2C();
  }

  sub_1C43FBDBC();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  v24 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v24);
  *(&v55 - 10) = v14;
  *(&v55 - 9) = v25;
  *(&v55 - 8) = v22;
  *(&v55 - 7) = v69;
  *(&v55 - 6) = v15;
  *(&v55 - 5) = v67;
  *(&v55 - 32) = v71;
  v26 = v66;
  *(&v55 - 3) = v68;
  *(&v55 - 2) = v26;
  v27 = v65;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C465B560, (&v55 - 12));
  if (v27)
  {

LABEL_12:
    sub_1C4410A34();
LABEL_13:
    sub_1C4404D0C(v70);
    sub_1C442B9BC();

    return;
  }

  v56 = 0;
  v65 = v22;
  sub_1C440D164(v23, v79);
  v28 = *v23;
  if (*v23)
  {
    swift_willThrow();
    v29 = v28;

    goto LABEL_12;
  }

  v30 = v63;
  switch(v71)
  {
    case 2:

      goto LABEL_17;
    default:
      v31 = sub_1C4F02938();

      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_17:
      sub_1C440D164(v12, v72);
      if (!*v12 && (v61 & 1) == 0)
      {
        v32 = sub_1C4F00968();
        v33 = sub_1C4F01CF8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1C43F8000, v32, v33, "Skipping ingestion for BMAppleMusicEventDelta as event must have been processed already", v34, 2u);
          sub_1C43FBE2C();
        }

        sub_1C4410A34();
        sub_1C4405930();
        goto LABEL_32;
      }

LABEL_22:
      sub_1C440D164(v16, v78);
      v35 = *v16;
      if (!v35)
      {
        goto LABEL_27;
      }

      sub_1C440D164(v30, v73);
      v36 = *v30;
      v77[0] = v71;
      v37 = v35;
      v38 = v56;
      sub_1C465777C(0, 1, v77, v36);
      if (v38)
      {

        sub_1C4410A34();
        goto LABEL_13;
      }

      v56 = 0;
      sub_1C4B46D4C();

      swift_beginAccess();
      if (!__OFADD__(*v12, 1))
      {
        ++*v12;
LABEL_27:
        v39 = v60;
        v40 = v59;
        sub_1C440D164(v59, v77);
        if (*v40)
        {
          sub_1C4412E14();
          sub_1C465B694(v70, v39);
          v41 = sub_1C4F00968();
          v42 = sub_1C4F01CD8();
          os_log_type_enabled(v41, v42);
          sub_1C4405930();
          if (v43)
          {
            v44 = 0x61746C6564;
            v45 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v76 = v63;
            *v45 = 136315394;
            v74 = 0;
            v75 = 0xE000000000000000;
            sub_1C4F02248();

            v74 = 0x6E696C657069503CLL;
            v75 = 0xEF203A6570795465;
            v46 = 0xE500000000000000;
            switch(v71)
            {
              case 1:
                v46 = 0xE400000000000000;
                v44 = 1819047270;
                break;
              case 2:
                break;
              case 3:
                v44 = 0x69686374614D6F74;
                v46 = 0xEA0000000000676ELL;
                break;
              default:
                v46 = 0xE700000000000000;
                v44 = 0x6E776F6E6B6E75;
                break;
            }

            MEMORY[0x1C6940010](v44, v46);

            MEMORY[0x1C6940010](62, 0xE100000000000000);
            v48 = sub_1C441D828(v74, v75, &v76);

            *(v45 + 4) = v48;
            *(v45 + 12) = 2080;
            sub_1C4412E14();
            v49 = v57;
            sub_1C465B694(v39, v57);
            sub_1C465B5E0(v39, type metadata accessor for BMAppleMusicEventSourceIngestor);
            v50 = sub_1C464065C();
            v52 = v51;
            sub_1C465B5E0(v49, type metadata accessor for BMAppleMusicEventSourceIngestor);
            v53 = sub_1C441D828(v50, v52, &v76);

            *(v45 + 14) = v53;
            _os_log_impl(&dword_1C43F8000, v41, v42, "Unable to commit %s for : %s", v45, 0x16u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            sub_1C43FBE2C();

            sub_1C4410A34();
            sub_1C4405930();
          }

          else
          {
            sub_1C465B5E0(v39, type metadata accessor for BMAppleMusicEventSourceIngestor);

            sub_1C4410A34();
          }

          sub_1C465B58C();
          swift_allocError();
          *v54 = 1;
          swift_willThrow();

          goto LABEL_13;
        }

        sub_1C440D164(v30, &v74);
        sub_1C4410A34();
        sub_1C4405930();
LABEL_32:
        v47 = v70;
        sub_1C4647A00();

        sub_1C4404D0C(v47);
        sub_1C442B9BC();

        return;
      }

      __break(1u);
      return;
  }
}

void sub_1C4658E70(uint64_t a1, int a2, uint64_t a3)
{
  v70 = a3;
  v6 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v54 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v62 = (v10 + 16);
  v11 = swift_allocObject();
  v67 = v11;
  *(v11 + 16) = 0;
  v63 = (v11 + 16);
  v12 = swift_allocObject();
  v66 = v12;
  *(v12 + 16) = 0;
  v61 = v12 + 16;
  v56 = a1;
  v59 = a2;
  if (a2)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *&a1;
  }

  v14 = swift_allocObject();
  v64 = v14;
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = swift_allocObject();
  v65 = v16;
  *(v16 + 16) = 0;
  v58 = (v16 + 16);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v69 = v10;
  v17 = sub_1C4F00978();
  v60 = sub_1C442B738(v17, qword_1EDE2DE10);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v18, v19, "Ingesting now playing using time stamp: %f", v20, 0xCu);
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = v68;
  v23 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v23);
  *(&v54 - 10) = v13;
  *(&v54 - 9) = v22;
  *(&v54 - 8) = v21;
  v24 = v64;
  *(&v54 - 7) = v69;
  *(&v54 - 6) = v24;
  *(&v54 - 5) = v66;
  *(&v54 - 32) = v70;
  v25 = v65;
  *(&v54 - 3) = v67;
  *(&v54 - 2) = v25;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C465B71C, (&v54 - 12));
  if (v3)
  {

LABEL_12:
    v28 = v63;
    goto LABEL_13;
  }

  swift_beginAccess();
  v26 = *(v21 + 16);
  if (v26)
  {
    swift_willThrow();
    v27 = v26;

    goto LABEL_12;
  }

  v28 = v63;
  v29 = v61;
  switch(v70)
  {
    case 2:

      goto LABEL_18;
    default:
      v30 = sub_1C4F02938();

      if ((v30 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      swift_beginAccess();
      if (!*v28 && (v59 & 1) == 0)
      {
        v31 = sub_1C4F00968();
        v32 = sub_1C4F01CF8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1C43F8000, v31, v32, "Skipping ingestion for BMAppleMusicEventDelta as event must have been processed already", v33, 2u);
          MEMORY[0x1C6942830](v33, -1, -1);
        }

        goto LABEL_31;
      }

LABEL_23:
      swift_beginAccess();
      v34 = *v15;
      if (v34)
      {
        swift_beginAccess();
        v35 = *v29;
        v74[0] = v70;
        v36 = v34;
        sub_1C465777C(0, 1, v74, v35);
        sub_1C4B46D4C();

        swift_beginAccess();
        if (__OFADD__(*v28, 1))
        {
          __break(1u);
          return;
        }

        ++*v28;
      }

      v37 = v58;
      swift_beginAccess();
      if ((*v37 & 1) == 0)
      {
        swift_beginAccess();
LABEL_31:
        v44 = v68;
        sub_1C4649C38();

        sub_1C465A008(v44, v70, v28, v62);

        goto LABEL_14;
      }

      v38 = v57;
      sub_1C465B694(v68, v57);
      v39 = sub_1C4F00968();
      v40 = sub_1C4F01CD8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = 0x61746C6564;
        v42 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v73 = v61;
        *v42 = 136315394;
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1C4F02248();

        v71 = 0x6E696C657069503CLL;
        v72 = 0xEF203A6570795465;
        v43 = 0xE500000000000000;
        switch(v70)
        {
          case 1:
            v43 = 0xE400000000000000;
            v41 = 1819047270;
            break;
          case 2:
            break;
          case 3:
            v41 = 0x69686374614D6F74;
            v43 = 0xEA0000000000676ELL;
            break;
          default:
            v43 = 0xE700000000000000;
            v41 = 0x6E776F6E6B6E75;
            break;
        }

        MEMORY[0x1C6940010](v41, v43);

        MEMORY[0x1C6940010](62, 0xE100000000000000);
        v45 = sub_1C441D828(v71, v72, &v73);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        v46 = v57;
        v47 = v55;
        sub_1C465B694(v57, v55);
        sub_1C465B5E0(v46, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v48 = sub_1C4640354();
        v50 = v49;
        sub_1C465B5E0(v47, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
        v51 = sub_1C441D828(v48, v50, &v73);

        *(v42 + 14) = v51;
        _os_log_impl(&dword_1C43F8000, v39, v40, "Unable to commit %s for : %s", v42, 0x16u);
        v52 = v61;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v52, -1, -1);
        MEMORY[0x1C6942830](v42, -1, -1);
      }

      else
      {
        sub_1C465B5E0(v38, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
      }

      sub_1C465B58C();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();

LABEL_13:
      sub_1C465A008(v68, v70, v28, v62);

LABEL_14:

      return;
  }
}

uint64_t sub_1C46598BC()
{
  sub_1C4658494();
  v1 = *(v0 + 8);

  return v1();
}

double sub_1C4659934()
{
  sub_1C4411948();
  sub_1C465B694(v0, v1);
  return result;
}

double sub_1C4659958()
{
  sub_1C440A794();
  sub_1C465B694(v0 + v1, v2);
  return result;
}

uint64_t sub_1C46599C4()
{
  sub_1C4659984();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4659A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

double sub_1C4659AA8()
{
  sub_1C4411948();
  sub_1C465B694(v0 + v1, v2);
  return result;
}

double sub_1C4659AD0()
{
  sub_1C440A794();
  sub_1C465B694(v0, v1);
  return result;
}

uint64_t sub_1C4659AF8(uint64_t a1)
{
  result = sub_1C4659BA8(qword_1EDDDEB18, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F14490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659B50(uint64_t a1)
{
  result = sub_1C4659BA8(&qword_1EDDDEB00, type metadata accessor for BMAppleMusicEventSourceIngestor, &unk_1C4F144B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4659BF0(uint64_t a1)
{
  result = sub_1C4659BA8(qword_1EDDF11A0, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F1450C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659C48(uint64_t a1)
{
  result = sub_1C4659BA8(&unk_1EDDF1180, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor, &unk_1C4F14534);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4659CA0(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  v8 = type metadata accessor for Pipeline.StatusStore(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a1, v11);
  v11[*(v9 + 28)] = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C465B5E0(v11, type metadata accessor for Pipeline.StatusStore);
  switch(a2)
  {
    case 1:

      break;
    default:
      sub_1C4F02938();

      break;
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v14 = sub_1C4F01108();

  *(inited + 72) = v14;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v15 = *a4;
  swift_beginAccess();
  result = v15 - *a3;
  if (__OFSUB__(v15, *a3))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C465A008(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  v8 = type metadata accessor for Pipeline.StatusStore(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  sub_1C465B694(a1 + *(v12 + 20), v11);
  v11[*(v9 + 28)] = a2;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C465B5E0(v11, type metadata accessor for Pipeline.StatusStore);
  switch(a2)
  {
    case 1:

      break;
    default:
      sub_1C4F02938();

      break;
  }

  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v14 = sub_1C4F01108();

  *(inited + 48) = v14;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  v15 = sub_1C4F01108();

  *(inited + 72) = v15;
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v16 = *a4;
  swift_beginAccess();
  result = v16 - *a3;
  if (__OFSUB__(v16, *a3))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4468200();
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C465A37C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a9;
  v56 = a8;
  v54 = a2;
  v55 = a7;
  v52 = a1;
  v53 = a6;
  v49 = a4;
  v50 = a5;
  v58 = a10;
  v51 = a11;
  v12 = type metadata accessor for BMAppleMusicEventSourceIngestor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  sub_1C4EF9AC8();
  v21 = sub_1C4EF9CD8();
  sub_1C440BAA8(v20, 0, 1, v21);
  sub_1C440BAA8(v17, 1, 1, v21);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1C457A86C(v20, v17, 0, 0, 0);
  v48 = v23;
  v24 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v25 = [v24 NowPlaying];
  swift_unknownObjectRelease();
  v26 = [v25 publisherWithOptions_];
  v47 = v26;

  v63 = sub_1C465AE0C;
  v64 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v44[1] = &v61;
  v61 = sub_1C45AF9C8;
  v62 = &unk_1F43E5D40;
  v27 = _Block_copy(&aBlock);
  v46 = [v26 filterWithIsIncluded_];
  _Block_release(v27);
  v63 = nullsub_1;
  v64 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C44405F8;
  v62 = &unk_1F43E5D68;
  v45 = _Block_copy(&aBlock);
  v28 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a3, v28);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44[0] = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1C465B78C(v28, v35 + v29);
  *(v35 + v30) = v49;
  v36 = v51;
  *(v35 + v31) = v50;
  *(v35 + v32) = v53;
  v37 = v35 + v44[0];
  *v37 = v55;
  *(v37 + 8) = v56;
  v38 = (v35 + v33);
  v39 = v54;
  *v38 = v52;
  v38[1] = v39;
  *(v35 + v34) = v58;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v63 = sub_1C465B6F0;
  v64 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C45AF9C8;
  v62 = &unk_1F43E5DB8;
  v40 = _Block_copy(&aBlock);

  v42 = v45;
  v41 = v46;
  v43 = [v46 sinkWithCompletion:v45 shouldContinue:v40];

  _Block_release(v40);
  _Block_release(v42);

  swift_beginAccess();
  *v57 = *(v36 + 16);
}

void sub_1C465A8C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a9;
  v56 = a8;
  v54 = a2;
  v55 = a7;
  v52 = a1;
  v53 = a6;
  v49 = a4;
  v50 = a5;
  v58 = a10;
  v51 = a11;
  v12 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  sub_1C4EF9AC8();
  v21 = sub_1C4EF9CD8();
  sub_1C440BAA8(v20, 0, 1, v21);
  sub_1C440BAA8(v17, 1, 1, v21);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1C457A86C(v20, v17, 0, 0, 0);
  v48 = v23;
  v24 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v25 = [v24 NowPlaying];
  swift_unknownObjectRelease();
  v26 = [v25 publisherWithOptions_];
  v47 = v26;

  v63 = sub_1C465AE0C;
  v64 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v44[1] = &v61;
  v61 = sub_1C45AF9C8;
  v62 = &unk_1F43E5DE0;
  v27 = _Block_copy(&aBlock);
  v46 = [v26 filterWithIsIncluded_];
  _Block_release(v27);
  v63 = nullsub_1;
  v64 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C44405F8;
  v62 = &unk_1F43E5E08;
  v45 = _Block_copy(&aBlock);
  v28 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C465B694(a3, v28);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44[0] = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1C465B78C(v28, v35 + v29);
  *(v35 + v30) = v49;
  v36 = v51;
  *(v35 + v31) = v50;
  *(v35 + v32) = v53;
  v37 = v35 + v44[0];
  *v37 = v55;
  *(v37 + 8) = v56;
  v38 = (v35 + v33);
  v39 = v54;
  *v38 = v52;
  v38[1] = v39;
  *(v35 + v34) = v58;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v63 = sub_1C465B7E8;
  v64 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C45AF9C8;
  v62 = &unk_1F43E5E58;
  v40 = _Block_copy(&aBlock);

  v42 = v45;
  v41 = v46;
  v43 = [v46 sinkWithCompletion:v45 shouldContinue:v40];

  _Block_release(v40);
  _Block_release(v42);

  swift_beginAccess();
  *v57 = *(v36 + 16);
}

uint64_t sub_1C465AE0C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = v1;
  v3 = sub_1C45122F8(v1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  if (v3 == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65)
  {
  }

  else
  {
    v7 = sub_1C4F02938();

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = sub_1C465B638(v2, &selRef_iTunesSubscriptionIdentifier);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v8;
  v11 = v9;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = sub_1C465B638(v2, &selRef_title);
  if (v14)
  {
    if (v13 == 0xE2676E6964616F4CLL && v14 == 0xAA0000000000A680)
    {

LABEL_24:

LABEL_25:
      v17 = 0;
      return v17 & 1;
    }

    v16 = sub_1C4F02938();

    v17 = v16 ^ 1;
  }

  else
  {

    v17 = 1;
  }

  return v17 & 1;
}

void sub_1C465AF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v16 = objc_autoreleasePoolPush();
  sub_1C4ACEF2C();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    goto LABEL_8;
  }

  v17 = [a1 eventBody];
  if (!v17)
  {
    goto LABEL_8;
  }

  v36 = v17;
  swift_beginAccess();
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
    swift_beginAccess();
    v21 = *(a5 + 16);
    if (!v21)
    {
      swift_beginAccess();
      v25 = v36;
      *(a5 + 16) = v36;
      v26 = v36;
LABEL_7:
      [a1 timestamp];
      v30 = v29;

      swift_beginAccess();
      *(a6 + 16) = v30;
LABEL_8:
      objc_autoreleasePoolPop(v16);
      return;
    }

    v35 = a8;
    swift_beginAccess();
    v22 = *(a6 + 16);
    v23 = v21;
    [a1 timestamp];
    v38[0] = a7;
    sub_1C465777C(v24, 0, v38, v22);
    sub_1C4812140();
    v28 = v27;

    v35(v28);

    swift_beginAccess();
    v31 = *(a5 + 16);
    *(a5 + 16) = v36;
    v32 = v36;

    swift_beginAccess();
    v33 = *(a10 + 16);
    v19 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v19)
    {
      *(a10 + 16) = v34;
      v25 = v36;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C465B268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v16 = objc_autoreleasePoolPush();
  sub_1C4ACF26C();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    goto LABEL_8;
  }

  v17 = [a1 eventBody];
  if (!v17)
  {
    goto LABEL_8;
  }

  v36 = v17;
  swift_beginAccess();
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
    swift_beginAccess();
    v21 = *(a5 + 16);
    if (!v21)
    {
      swift_beginAccess();
      v25 = v36;
      *(a5 + 16) = v36;
      v26 = v36;
LABEL_7:
      [a1 timestamp];
      v30 = v29;

      swift_beginAccess();
      *(a6 + 16) = v30;
LABEL_8:
      objc_autoreleasePoolPop(v16);
      return;
    }

    v35 = a8;
    swift_beginAccess();
    v22 = *(a6 + 16);
    v23 = v21;
    [a1 timestamp];
    v38[0] = a7;
    sub_1C465777C(v24, 0, v38, v22);
    sub_1C4812140();
    v28 = v27;

    v35(v28);

    swift_beginAccess();
    v31 = *(a5 + 16);
    *(a5 + 16) = v36;
    v32 = v36;

    swift_beginAccess();
    v33 = *(a10 + 16);
    v19 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v19)
    {
      *(a10 + 16) = v34;
      v25 = v36;
      goto LABEL_7;
    }
  }

  __break(1u);
}

unint64_t sub_1C465B58C()
{
  result = qword_1EC0BABD0;
  if (!qword_1EC0BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BABD0);
  }

  return result;
}

uint64_t sub_1C465B5E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C465B638(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1C4F01138();
  sub_1C440D158();

  return v2;
}

uint64_t sub_1C465B694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C465B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C465B814(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void, void, void, void, void, void, void, void, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, v3 + v7, *(v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + v11), *(v3 + v11 + 8), *(v3 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

BOOL sub_1C465B984(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
    v10 = v7;
    v9 = a1;
  }

  while (!static ActivityType.== infix(_:_:)(&v10, &v9));
  return v5 != 0;
}

void sub_1C465B9EC()
{
  sub_1C43FBD3C();
  v19 = v1;
  v20 = v2;
  v3 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - v10);
  for (i = 1; ; i = v13)
  {
    if (qword_1EDDFA6A8 != -1)
    {
      swift_once();
    }

    if (qword_1EDE2DCF0 < i)
    {
      goto LABEL_26;
    }

    sub_1C449E530(i, v6);
    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      break;
    }

    sub_1C4471DEC();
    v14 = i - 1;
    if (__OFSUB__(i, 1))
    {
      goto LABEL_27;
    }

    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v15 = v14 > 0x40;
    if (v14 >= 0x40)
    {
      v16 = 0;
    }

    else
    {
      v16 = 1 << v14;
    }

    if (v15)
    {
      v16 = 0;
    }

    if ((v16 & v20) < 1)
    {
      sub_1C447E8C0(v0, type metadata accessor for Source);
    }

    else
    {
      sub_1C4471DEC();
      if (*v11 == *v19 && v11[1] == v19[1])
      {
        sub_1C441C138();
LABEL_26:
        sub_1C43FE9F0();
        return;
      }

      v18 = sub_1C4F02938();
      sub_1C441C138();
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_24:
    ;
  }

  sub_1C4420C3C(v6, &unk_1EC0C0760, &qword_1C4F170D0);
  v13 = i + 1;
  if (!__OFADD__(i, 1))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1C465BC24()
{
  sub_1C43FBD3C();
  v2 = v1;
  LODWORD(v42) = v3;
  v32 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v40 = v8 - v7;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  sub_1C46C3564(v2, v44);
  v14 = v44[1];
  v34 = v5;
  v35 = v44[0];
  v15 = v46;
  v16 = v47;
  v31[1] = v45;
  v17 = (v45 + 64) >> 6;
  v33 = v5 + 16;
  v38 = v5 + 32;
  v39 = v48;
  v37 = (v5 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = v16;
  v19 = v32;

  v36 = v42 & 1;
  while (1)
  {
    v20 = v18;
    v21 = v15;
    v41 = v18;
    v42 = v15;
    if (!v18)
    {
      break;
    }

LABEL_6:
    v22 = (v20 - 1) & v20;
    (*(v34 + 16))(v13, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v20)) | (v21 << 6)), v19);
    v23 = 0;
    v15 = v21;
LABEL_7:
    sub_1C440BAA8(v13, v23, 1, v19);
    v24 = sub_1C43FD018();
    sub_1C44CDA30(v24, v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v0, 1, v19) != 1)
    {
      v26 = v13;
      v27 = v40;
      v28 = sub_1C43FD018();
      v29(v28);
      v39(&v43, v27);
      v30 = v27;
      v13 = v26;
      v18 = v22;
      (*v37)(v30, v19);
      if (v43 != v36)
      {
        continue;
      }
    }

    sub_1C449BB0C();

    sub_1C43FE9F0();
    return;
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_7;
    }

    v20 = *(v14 + 8 * v21);
    ++v15;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1C465BEF8()
{
  sub_1C442F0C4();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    sub_1C4AD6BCC(*v4);
    v7 = v6;
    v9 = v8;
    sub_1C4AD6BCC(v1);
    if (v7 == v11 && v9 == v10)
    {

      break;
    }

    sub_1C4405814();
    v13 = sub_1C4F02938();

    ++v4;
  }

  while ((v13 & 1) == 0);
  sub_1C4422220();
}

BOOL sub_1C465BFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C465BFDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v2 = sub_1C457AA2C(a1);
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C465C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return sub_1C4462378();
  }

  v3 = sub_1C445FAA8(a1, a2);
  if (v4)
  {
    return sub_1C4434EAC(v3);
  }

  else
  {
    return 0;
  }
}

void sub_1C465C06C()
{
  sub_1C446BE60();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = sub_1C457AC14(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

uint64_t sub_1C465C0D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v2 = sub_1C457AC14(a1);
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

double sub_1C465C11C()
{
  sub_1C446BE60();
  if (!v1)
  {
    return sub_1C442A3B4();
  }

  v2 = sub_1C457AA70(v0);
  if ((v3 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v4 = sub_1C442EAC4(v2);

  sub_1C442B870(v4, v5);
  return result;
}

uint64_t sub_1C465C188(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C457AE68(a1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C465C1D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C457AAB4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540();
  v4 = *v3;
  sub_1C46631DC(*v3, *(v3 + 8));
  return v4;
}

uint64_t sub_1C465C230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1C445FAA8(a1, a2);
    if (v5)
    {
      v6 = 0;
      v7 = *(*(a3 + 56) + 2 * v4);
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 16);
}

void sub_1C465C2C4()
{
  sub_1C441DC98();
  if (v4 && (v5 = v3, v6 = sub_1C445FAA8(v1, v2), (v7 & 1) != 0))
  {
    sub_1C4460108(*(v5 + 56) + 32 * v6, v0, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
  }
}

double sub_1C465C324()
{
  sub_1C441DC98();
  if (v4 && (v5 = v3, v6 = sub_1C445FAA8(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 48 * v6;

    sub_1C4609884(v8, v0);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_1C465C3A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a2 + 16) && (a3(a1), (v3 & 1) != 0))
  {
    sub_1C4434540();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465C424(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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

double sub_1C465C4B8()
{
  sub_1C441DC98();
  if (!v2)
  {
    return sub_1C442A3B4();
  }

  v3 = sub_1C445FAA8(v0, v1);
  if ((v4 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v5 = sub_1C442EAC4(v3);

  sub_1C442B870(v5, v6);
  return result;
}

void sub_1C465C50C()
{
  sub_1C442F0C4();
  sub_1C446BE60();
  if (v2 && (v3 = v1, v4 = sub_1C457EB4C(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 48 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    sub_1C45D7F78(*v6, v8, v9, v10, v11, v12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = -1;
  }

  *v0 = v7;
  *(v0 + 8) = v8;
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  sub_1C4422220();
}

uint64_t sub_1C465C5B0()
{
  sub_1C446BE60();
  if (v0 && (sub_1C44E3664(), (v1 & 1) != 0))
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBCE0();
    sub_1C46631E8();
    v2 = sub_1C442DDD0();
  }

  else
  {
    type metadata accessor for EntityMatch(0);
    v2 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v2, v3, v4, v5);
}

uint64_t sub_1C465C650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C44E3664();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540();
  return *v3;
}

uint64_t sub_1C465C6B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1C457AF68(a1), (v2 & 1) != 0))
  {
    sub_1C447E2D4();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465C70C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  sub_1C44E3664();
  if (v3)
  {
    return sub_1C4434EAC(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C465C754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  sub_1C4414964(v3);
}

double sub_1C465C7A0()
{
  sub_1C446BE60();
  if (!v0)
  {
    return sub_1C442A3B4();
  }

  sub_1C457AB64();
  if ((v2 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v3 = sub_1C442EAC4(v1);

  sub_1C442B870(v3, v4);
  return result;
}

uint64_t sub_1C465C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C445FAA8(a1, a2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4434540();
  return *v4;
}

uint64_t sub_1C465C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = sub_1C457EB3C();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v5);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465C8A8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1C457EB3C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1C4EFF8A8();
    sub_1C43FBCE0();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = sub_1C442DDD0();
  }

  else
  {
    sub_1C4EFF8A8();
    v10 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C465C964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C441DC98();
  if (v9 && (v10 = v8, v11 = sub_1C445FAA8(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    sub_1C43FBCE0();
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = sub_1C442DDD0();
  }

  else
  {
    a4(0);
    v17 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v17, v18, v19, v20);
}

uint64_t sub_1C465CA18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1C457EB4C(), (v2 & 1) != 0))
  {
    sub_1C4434540();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C465CA64(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C457EB4C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v2);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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

double sub_1C465CB00()
{
  sub_1C446BE60();
  if (!v0)
  {
    return sub_1C442A3B4();
  }

  v1 = sub_1C457EB50();
  if ((v2 & 1) == 0)
  {
    return sub_1C442A3B4();
  }

  v3 = sub_1C442EAC4(v1);

  sub_1C442B870(v3, v4);
  return result;
}

double sub_1C465CB54()
{
  sub_1C441DC98();
  if (v3 && (sub_1C445FAA8(v1, v2), (v4 & 1) != 0))
  {
    sub_1C44141A0();
    sub_1C4460108(v6 + v5 * v7, v0, &qword_1EC0B9038, &unk_1C4F231C0);
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *&result = 1;
    *(v0 + 24) = xmmword_1C4F14630;
  }

  return result;
}

double sub_1C465CBBC()
{
  sub_1C446BE60();
  if (v2 && (sub_1C457B724(v1), (v3 & 1) != 0))
  {
    sub_1C44141A0();
    sub_1C442E860(v5 + v4 * v6, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return sub_1C442A3B4();
  }

  return result;
}

uint64_t sub_1C465CC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CC6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C457A9F0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v2);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C465CCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C445FAA8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
}

void sub_1C465CD38()
{
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA6F8, &qword_1C4F14658);
    v3 = sub_1C4404D2C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(v0 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v0 + 64);
  sub_1C44016F4();
  v7 = v3 + 64;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_1C44601BC();
    v12 = *(v11 + 8 * v10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = v12;
    swift_dynamicCast();
    v14 = sub_1C4F02178() & ~(-1 << *(v3 + 32));
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v7 + 8 * v16) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C43FFC04();
LABEL_21:
    v6 &= v6 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    sub_1C444FCAC(v15, v22, v23, v24);
    *(v21 + 8 * v20) = v13;
    ++*(v3 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C465CF34()
{
  sub_1C43FEAE0();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0BA858, &qword_1C4F14760);
    v2 = sub_1C4404D2C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  sub_1C43FD030();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  sub_1C4418354();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    sub_1C43FE644();
    sub_1C44601BC();
    v12 = *v10;
    v11 = v10[1];
    v15 = *(v14 + 8 * v13);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = v15;
    v17 = sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    sub_1C445BF00(v17, v18, v19);
    v20 = sub_1C43FD018();
    v22 = sub_1C445FAA8(v20, v21);
    if (v23)
    {
      sub_1C4414510();
      *v24 = v12;
      v24[1] = v11;

      v25 = *(v2 + 56);
      v26 = *(v25 + 8 * v22);
      *(v25 + 8 * v22) = v33;

      v8 = v9;
    }

    else
    {
      sub_1C441D17C();
      if (v27)
      {
        goto LABEL_17;
      }

      sub_1C4404D48();
      sub_1C442FC18(v28);
      v30 = (v29 + 16 * v22);
      *v30 = v12;
      v30[1] = v11;
      *(*(v2 + 56) + 8 * v22) = v33;
      sub_1C442F124();
      if (v32)
      {
        goto LABEL_18;
      }

      *(v2 + 16) = v31;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}