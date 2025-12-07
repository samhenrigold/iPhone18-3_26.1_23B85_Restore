unint64_t sub_7DD60()
{
  result = qword_1C87E8;
  if (!qword_1C87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87E8);
  }

  return result;
}

unint64_t sub_7DDB8()
{
  result = qword_1C87F0;
  if (!qword_1C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87F0);
  }

  return result;
}

unint64_t sub_7DE10()
{
  result = qword_1C87F8;
  if (!qword_1C87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87F8);
  }

  return result;
}

uint64_t sub_7DE68(uint64_t a1)
{

  return sub_16E63C();
}

uint64_t sub_7DED0@<X0>(uint64_t a1@<X8>)
{

  return sub_214C(v2 + a1, 1, 1, v1);
}

uint64_t sub_7DF18(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_7DF34(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t *sub_7DF78()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return sub_9910(v3);
}

uint64_t sub_7DFB0@<X0>(uint64_t a1@<X8>)
{

  return sub_7DA9C(v1 + v3, v2 + a1);
}

uint64_t sub_7DFDC(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t LogBloodPressureFlow.execute(completion:)()
{
  type metadata accessor for LogBloodPressureFlow();
  sub_83E88(&qword_1C8800, v0, type metadata accessor for LogBloodPressureFlow, &protocol conformance descriptor for LogBloodPressureFlow);
  sub_8427C();
  return sub_16C33C();
}

uint64_t LogBloodPressureFlow.execute()()
{
  sub_8A88();
  v1[151] = v0;
  v1[150] = v2;
  v3 = sub_16C0BC();
  v1[152] = v3;
  sub_888C(v3);
  v1[153] = v4;
  v1[154] = sub_8BC0();
  v5 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v5);
  v1[155] = sub_8C38();
  v1[156] = swift_task_alloc();
  v6 = sub_16BF5C();
  v1[157] = v6;
  sub_888C(v6);
  v1[158] = v7;
  v1[159] = sub_8C38();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v8 = sub_16D63C();
  sub_4348(v8);
  v1[163] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_7E218()
{
  v1 = v0[151];
  switch(*(v1 + 272))
  {
    case 1:
      sub_8284(v1 + 96, (v0 + 129));
      v8 = sub_16C58C();
      sub_8D14(v8);
      v9 = sub_16C57C();
      type metadata accessor for LogBloodPressurePromptStartegy();
      v10 = swift_allocObject();
      sub_83AB0(v0 + 129, v9, v10);

      sub_16C73C();
      v11 = sub_2440(&qword_1C8808, qword_173FC8);
      sub_38964(v11);
      sub_83E88(&qword_1C8810, 255, type metadata accessor for LogBloodPressurePromptStartegy, &unk_175F98);
      v12 = sub_16C21C();
      *(v1 + 272) = 2;
      v0[149] = v12;
      sub_98C8(&qword_1C8818, &qword_1C8808, qword_173FC8, &protocol conformance descriptor for PromptForValueFlowAsync<A>);

      sub_16C4CC();

      goto LABEL_11;
    case 2:
      sub_16C4BC();
      goto LABEL_11;
    case 3:
      swift_task_alloc();
      sub_179E8();
      v0[168] = v5;
      *v5 = v6;
      v5[1] = sub_7F138;
      sub_842F0();

      return sub_7F918();
    case 4:
      sub_8284(v1 + 96, (v0 + 109));
      sub_82E0();
      sub_16C4EC();
      sub_8334((v0 + 109));
LABEL_11:
      sub_841B0();

      sub_C9BC();
      sub_842F0();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v0[164] = sub_16D94C();
      v2 = swift_task_alloc();
      v0[165] = v2;
      *v2 = v0;
      v2[1] = sub_7E588;
      sub_842F0();

      return BloodPressurePersistor.isLoggingAuthorized()(v3);
  }
}

uint64_t sub_7E588()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1312);
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 1352) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_7E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  if (*(v14 + 1352))
  {
    v16 = *(v14 + 1248);
    v17 = *(v14 + 1208);
    v18 = v17[5];
    v19 = v17[6];
    v20 = sub_2D20(v17 + 2, v18);
    sub_7BB14();
    v22 = v21;
    v23 = sub_8BC0();
    (*(v22 + 16))(v23, v20, v18);
    (*(v19 + 32))(v18, v19);
    v24 = sub_8427C();
    v25(v24);
    v26 = sub_16BD9C();
    if (sub_369C(v16, 1, v26) == 1)
    {
      v27 = *(v14 + 1248);

      sub_8748(v27, &qword_1C5690, &dword_16F320);
    }

    else
    {
      sub_84264();
      sub_16BD7C();
      v34 = sub_C9C8();
      v35(v34);

      v36 = sub_842DC();
      v37(v36);
      sub_16C08C();
      sub_16C03C();
      v38 = sub_842C8();
      v39(v38);
      if ((v15 & 1) == 0)
      {
        v65 = *(v14 + 1296);
        v66 = sub_8421C();
        sub_8388(v66, v14 + 312);
        sub_8388(v15 + 56, v14 + 352);
        sub_8284(v15 + 96, v14 + 392);
        v67 = sub_16C58C();
        sub_8D14(v67);
        v68 = sub_16C57C();
        *(v14 + 576) = v67;
        *(v14 + 584) = &protocol witness table for ResponseFactory;
        *(v14 + 552) = v68;
        v69 = type metadata accessor for WellnessLoggingCATsSimple(0);
        sub_84358(v69);
        sub_842BC();
        v70 = sub_16D5FC();
        v71 = type metadata accessor for WellnessCATs(0);
        sub_84358(v71);
        sub_842BC();
        v72 = sub_16D58C();
        *(v14 + 592) = v70;
        *(v14 + 600) = v72;
        sub_17858();
        sub_16C4EC();
        (*(v15 + 8))(v65, v23);
        v73 = v14 + 312;
LABEL_20:
        sub_83B2C(v73);
        goto LABEL_21;
      }

      (*(*(v14 + 1264) + 8))(*(v14 + 1296), *(v14 + 1256));
    }

    v40 = *(v14 + 1240);
    v41 = v17[5];
    v42 = v17[6];
    v43 = sub_2D20(v17 + 2, v41);
    sub_7BB14();
    v45 = v44;
    v46 = sub_8BC0();
    (*(v45 + 16))(v46, v43, v41);
    (*(v42 + 32))(v41, v42);
    v48 = *(v45 + 8);
    v47 = v45 + 8;
    v48(v46, v41);
    if (sub_369C(v40, 1, v26) == 1)
    {
      v49 = *(v14 + 1240);

      sub_8748(v49, &qword_1C5690, &dword_16F320);
      goto LABEL_11;
    }

    sub_84264();
    sub_16BD4C();
    v50 = sub_C9C8();
    v51(v50);

    v52 = sub_842DC();
    v53(v52);
    sub_16C08C();
    sub_16C03C();
    v54 = sub_842C8();
    v55(v54);
    if (v47)
    {
      (*(*(v14 + 1264) + 8))(*(v14 + 1280), *(v14 + 1256));
LABEL_11:
      v56 = *(v14 + 1208);
      sub_80290();
      [*(v56 + 264) systolic];
      if (v57 == 0.0 && ([*(v56 + 264) diastolic], v58 == 0.0))
      {
        *(*(v14 + 1208) + 272) = 1;
        swift_task_alloc();
        sub_179E8();
        *(v14 + 1336) = v59;
        *v59 = v60;
        v61 = sub_7EF78;
      }

      else
      {
        *(*(v14 + 1208) + 272) = 3;
        swift_task_alloc();
        sub_179E8();
        *(v14 + 1328) = v59;
        *v59 = v62;
        v61 = sub_7EDB8;
      }

      v59[1] = v61;
      sub_841E0();

      return LogBloodPressureFlow.execute()();
    }

    v74 = *(v14 + 1280);
    v75 = sub_8421C();
    sub_8388(v75, v14 + 16);
    sub_8388(v47 + 56, v14 + 56);
    sub_8284(v47 + 96, v14 + 96);
    v76 = sub_16C58C();
    sub_8D14(v76);
    v77 = sub_16C57C();
    *(v14 + 280) = v76;
    *(v14 + 288) = &protocol witness table for ResponseFactory;
    *(v14 + 256) = v77;
    v78 = type metadata accessor for WellnessLoggingCATsSimple(0);
    sub_84358(v78);
    sub_842BC();
    v79 = sub_16D5FC();
    v80 = type metadata accessor for WellnessCATs(0);
    sub_84358(v80);
    sub_842BC();
    v81 = sub_16D58C();
    *(v14 + 296) = v79;
    *(v14 + 304) = v81;
    sub_17858();
    sub_16C4EC();
    (*(v47 + 8))(v74, v46);
    v73 = v14 + 16;
    goto LABEL_20;
  }

  v28 = *(v14 + 1208);
  v29 = *(v28 + 288);
  sub_8388(v28 + 56, v14 + 616);
  sub_8284(v28 + 96, v14 + 656);
  v30 = sub_16C58C();
  sub_8D14(v30);
  v31 = sub_16C57C();
  *(v14 + 840) = v30;
  *(v14 + 848) = &protocol witness table for ResponseFactory;
  *(v14 + 816) = v31;
  type metadata accessor for WellnessCATsSimple(0);
  sub_16D62C();
  v32 = sub_16D5FC();
  type metadata accessor for WellnessCATs(0);
  sub_16D62C();
  v33 = sub_16D58C();
  *(v14 + 608) = v29;
  *(v14 + 856) = v32;
  *(v14 + 864) = v33;
  sub_84F0();
  sub_16C4EC();
  sub_8544(v14 + 608);
LABEL_21:
  sub_841B0();

  sub_C9BC();
  sub_841E0();

  return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_7EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v11 = *v10;
  sub_C990();
  *v12 = v11;

  sub_38A38();

  sub_841FC();
  sub_84328();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_7EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v11 = *v10;
  sub_C990();
  *v12 = v11;

  sub_38A38();

  sub_841FC();
  sub_84328();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_7F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v11 = *v10;
  sub_C990();
  *v12 = v11;

  sub_38A38();

  sub_841FC();
  sub_84328();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

id sub_7F2F8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C89C8, &qword_174158);
  sub_7BB14();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_38634();
  v87 = v6;
  sub_89B4();
  __chkstk_darwin(v7);
  v85 = (&v77 - v8);
  sub_89B4();
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  v12 = sub_16DBEC();
  sub_7BB14();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_38634();
  v79 = v16;
  sub_89B4();
  __chkstk_darwin(v17);
  v88 = &v77 - v18;
  sub_89B4();
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = sub_16DBBC();
  sub_8B48(v22, v93);
  v23 = *(v14 + 2);
  v83 = v14 + 16;
  v84 = v22;
  v82 = v23;
  v23(v21, v22, v12);
  v90 = v4;
  v24 = *(v4 + 16);
  v86 = a1;
  v80 = v24;
  v24(v11, a1, v2);
  v25 = sub_16DBDC();
  v26 = sub_16E36C();
  if (os_log_type_enabled(v25, v26))
  {
    sub_8BD8();
    v78 = v12;
    v77 = sub_84288();
    v92[0] = v77;
    *v12 = 136315138;
    sub_38940(&qword_1C89D0, &qword_1C89C8, &qword_174158);
    v27 = sub_16E68C();
    v28 = v14;
    v30 = v29;
    v31 = sub_8424C();
    v32(v31);
    v33 = sub_3AB7C(v27, v30, v92);
    v14 = v28;

    *(v12 + 4) = v33;
    _os_log_impl(&def_259DC, v25, v26, "Received response from PromptForValueFlowAsync: %s", v12, 0xCu);
    v34 = v77;
    sub_2D64(v77);
    sub_8A2C(v34);
    v35 = v12;
    v12 = v78;
    sub_8A2C(v35);

    v36 = v28;
  }

  else
  {

    v37 = sub_8424C();
    v38(v37);
    v36 = v14;
  }

  v39 = *(v36 + 1);
  v39(v21, v12);
  v41 = v85;
  v40 = v86;
  v42 = v80;
  v80(v85, v86, v2);
  v43 = sub_842B0();
  v45 = v44(v43);
  v47 = v87;
  v46 = v88;
  if (v45 == enum case for PromptResult.answered<A>(_:))
  {
    v79 = v14;
    v48 = sub_842B0();
    v49(v48);
    v51 = *v41;
    v50 = v41[1];
    v52 = v84;
    sub_8B48(v84, v92);
    v82(v46, v52, v12);
    v42(v47, v40, v2);
    v53 = sub_16DBDC();
    v54 = sub_16E36C();
    if (sub_84370(v54))
    {
      sub_8BD8();
      v55 = sub_84288();
      v91 = v55;
      *v12 = 136315138;
      sub_38940(&qword_1C89D0, &qword_1C89C8, &qword_174158);
      v56 = sub_16E68C();
      v58 = v57;
      v59 = sub_84234();
      v60(v59);
      v61 = sub_3AB7C(v56, v58, &v91);

      *(v12 + 4) = v61;
      _os_log_impl(&def_259DC, v53, v54, "PromptForValueFlowAsync returned: %s", v12, 0xCu);
      sub_2D64(v55);
      sub_8A2C(v55);
      sub_1BA00();

      v62 = v88;
      v63 = v12;
    }

    else
    {

      v74 = sub_84234();
      v75(v74);
      v62 = sub_38B40();
    }

    v39(v62, v63);
    v76 = v89;
    [*(v89 + 264) setSystolic:v51];
    result = [*(v76 + 264) setDiastolic:v50];
    v73 = 3;
  }

  else
  {
    v64 = sub_842B0();
    v81(v64);
    v65 = v84;
    sub_8B48(v84, v92);
    v66 = v79;
    v82(v79, v65, v12);
    v67 = sub_16DBDC();
    v68 = sub_16E37C();
    if (sub_84370(v68))
    {
      v69 = v12;
      v70 = sub_1BA38();
      *v70 = 0;
      _os_log_impl(&def_259DC, v67, v68, "PromptForValueFlowAsync did not return the needed values, erroring out", v70, 2u);
      v71 = v70;
      v12 = v69;
      sub_8A2C(v71);
    }

    result = (v39)(v66, v12);
    v73 = 4;
  }

  *(v89 + 272) = v73;
  return result;
}

uint64_t sub_7F918()
{
  sub_8A88();
  v1[92] = v0;
  v1[91] = v2;
  v3 = sub_16D63C();
  sub_4348(v3);
  v1[93] = sub_8BC0();
  v4 = sub_16DBEC();
  v1[94] = v4;
  sub_888C(v4);
  v1[95] = v5;
  v1[96] = sub_8C38();
  v1[97] = swift_task_alloc();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_7F9EC()
{
  sub_84340();
  sub_76D68();
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[94];
  v4 = sub_16DBBC();
  v0[98] = v4;
  sub_8B48(v4, (v0 + 84));
  v5 = *(v2 + 16);
  v0[99] = v5;
  v0[100] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = sub_16DBDC();
  LOBYTE(v3) = sub_16E36C();

  if (os_log_type_enabled(v6, v3))
  {
    v7 = v0[92];
    v8 = sub_8BD8();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v7 + 264);
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    sub_8420C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_1BA00();
  }

  v17 = v0[97];
  v18 = v0[95];
  v19 = v0[94];
  v20 = v0[92];

  v21 = *(v18 + 8);
  v0[101] = v21;
  v0[102] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v19);
  v22 = *(v20 + 256);
  v0[103] = v22;
  v23 = *(v20 + 264);
  v0[104] = v23;
  v0[2] = v0;
  v0[7] = v0 + 90;
  v0[3] = sub_7FC54;
  v24 = swift_continuation_init();
  v0[83] = sub_2440(&qword_1C89D8, &unk_174160);
  v0[80] = v24;
  v0[76] = _NSConcreteStackBlock;
  v0[77] = 1107296256;
  v0[78] = sub_53C4;
  v0[79] = &unk_1BA7F0;
  swift_unknownObjectRetain();
  [v22 handleLogBloodPressure:v23 completion:v0 + 76];
  sub_84328();

  return _swift_continuation_await(v25);
}

uint64_t sub_7FC54()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_7FD28);
}

uint64_t sub_7FD28()
{
  sub_76D68();
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 768);
  v6 = *(v0 + 752);
  v7 = *(v0 + 720);
  *(v0 + 840) = v7;
  swift_unknownObjectRelease();

  sub_8B48(v4, v0 + 696);
  v3(v5, v4, v6);
  v8 = v7;
  v9 = sub_16DBDC();
  v10 = sub_16E36C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_8BD8();
    v2 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v2 = v8;
    v12 = v8;
    _os_log_impl(&def_259DC, v9, v10, "Received intent response: %@", v11, 0xCu);
    sub_8748(v2, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v2);
    sub_8A2C(v11);
  }

  v13 = (*(v0 + 808))(*(v0 + 768), *(v0 + 752));
  v14 = (*(&stru_20.maxprot + (swift_isaMask & *v8)))(v13);
  if (v14 == 4)
  {
    v31 = swift_task_alloc();
    *(v0 + 848) = v31;
    *v31 = v0;
    v31[1] = sub_80114;

    return sub_806F0();
  }

  else
  {
    if (v14 == 102)
    {
      v23 = *(v0 + 736);
      v24 = *(v23 + 288);
      sub_8388(v23 + 56, v0 + 512);
      v25 = sub_16C58C();
      sub_38964(v25);
      v26 = sub_16C57C();
      *(v0 + 576) = v2;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v26;
      v27 = type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_8D2C(v27);
      sub_8CB4();
      v28 = sub_16D5FC();
      v29 = type metadata accessor for WellnessCATs(0);
      sub_8D2C(v29);
      sub_8CB4();
      v30 = sub_16D58C();
      *(v0 + 504) = v24;
      *(v0 + 592) = v28;
      *(v0 + 600) = v30;
      sub_83FC8();
      sub_16C4EC();

      sub_8401C(v0 + 504);
    }

    else if (v14 == 101)
    {
      v15 = *(v0 + 736);
      v16 = *(v15 + 288);
      sub_8388(v15 + 56, v0 + 88);
      sub_8284(v15 + 96, v0 + 128);
      v17 = sub_16C58C();
      sub_38964(v17);
      v18 = sub_16C57C();
      *(v0 + 312) = v2;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v18;
      v19 = type metadata accessor for WellnessCATsSimple(0);
      sub_8D2C(v19);
      sub_8CB4();
      v20 = sub_16D5FC();
      v21 = type metadata accessor for WellnessCATs(0);
      sub_8D2C(v21);
      sub_8CB4();
      v22 = sub_16D58C();
      *(v0 + 80) = v16;
      *(v0 + 328) = v20;
      *(v0 + 336) = v22;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      sub_8284(*(v0 + 736) + 96, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_C9BC();

    return v33();
  }
}

uint64_t sub_80114()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 856) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_80200()
{
  sub_8A88();
  v1 = *(v0 + 840);
  sub_16C4FC();

  sub_C9BC();

  return v2();
}

void sub_80290()
{
  v1 = v0;
  v2 = sub_16DBEC();
  sub_7BB14();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v10 = v0[5];
  v9 = v0[6];
  sub_2D20(v0 + 2, v10);
  sub_7BB14();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_4304();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14);
  v17 = (*(v9 + 56))(v10, v9);
  (*(v12 + 8))(v16, v10);
  if (sub_3B35C(v17) < 2)
  {
    goto LABEL_6;
  }

  sub_3B360();
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
  }

  v18 = sub_16CDFC();

  if (!v18 || (v19 = sub_16CA9C(), v21 = v20, , (v21 & 1) != 0))
  {
LABEL_6:

LABEL_7:
    v22 = sub_16DBBC();
    sub_8B48(v22, v46);
    (*(v4 + 16))(v8, v22, v2);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_4B3A8(v24))
    {
      v25 = sub_1BA38();
      *v25 = 0;
      _os_log_impl(&def_259DC, v23, v24, "Failed to populate LogBloodPressureIntent: missing systolic/diastolic values", v25, 2u);
      sub_8A2C(v25);
    }

    v26 = sub_8427C();
    v27(v26);
    return;
  }

  sub_3B360();
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
  }

  v28 = sub_16CDFC();

  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = sub_16CA9C();
  v31 = v30;

  if (v31)
  {
    goto LABEL_7;
  }

  [v1[33] setSystolic:*&v19];
  [v1[33] setDiastolic:*&v29];
  v32 = v1[33];
  v33 = v1[5];
  v34 = v1[6];
  sub_2D20(v1 + 2, v33);
  sub_7BB14();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_4304();
  v40 = v39 - v38;
  (*(v36 + 16))(v39 - v38);
  v41 = *(v34 + 48);
  v42 = v32;
  v43 = sub_C9E0();
  v44 = v41(v43);
  (*(v36 + 8))(v40, v33);
  if (v44 == 61)
  {
    v45 = 0;
  }

  else
  {
    sub_39008(v44);
    v45 = sub_16E1AC();
  }

  [v42 setUnit:v45];
}

uint64_t sub_806F0()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = sub_16C46C();
  v1[115] = v3;
  sub_888C(v3);
  v1[116] = v4;
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[119] = v5;
  sub_888C(v5);
  v1[120] = v6;
  v1[121] = sub_8BC0();
  v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v7);
  v1[122] = sub_8BC0();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v1[123] = sub_8C38();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v9 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v9);
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v10 = type metadata accessor for BloodPressureLogModel(0);
  v1[128] = v10;
  sub_4348(v10);
  v1[129] = sub_8C38();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v11 = sub_16D5CC();
  v1[133] = v11;
  sub_888C(v11);
  v1[134] = v12;
  v1[135] = sub_8BC0();
  v13 = sub_16DBEC();
  v1[136] = v13;
  sub_888C(v13);
  v1[137] = v14;
  v1[138] = sub_8C38();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v15 = type metadata accessor for SnippetHeaderModel(0);
  v1[143] = v15;
  sub_4348(v15);
  v1[144] = sub_8C38();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v16 = sub_16BE9C();
  v1[148] = v16;
  sub_888C(v16);
  v1[149] = v17;
  v1[150] = sub_8C38();
  v1[151] = swift_task_alloc();
  v18 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v18);
  v1[152] = sub_8C38();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v19 = sub_16BF5C();
  v1[155] = v19;
  sub_888C(v19);
  v1[156] = v20;
  v1[157] = sub_8C38();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v1[162] = sub_8C38();
  v1[163] = swift_task_alloc();
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_80B40()
{
  sub_8430C();
  v1 = *(v0 + 1304);
  v2 = *(v0 + 904);
  v3 = sub_16BD9C();
  sub_214C(v1, 1, 1, v3);
  v4 = [v2 sampleStart];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 904);
    sub_16BF3C();

    v7 = [v6 sampleEnd];
    if (v7)
    {
      v8 = v7;
      v36 = *(v0 + 1304);
      v9 = *(v0 + 1296);
      v10 = *(v0 + 1288);
      v11 = *(v0 + 1280);
      v12 = *(v0 + 1272);
      v13 = *(v0 + 1264);
      v14 = *(v0 + 1248);
      v15 = *(v0 + 1240);
      sub_16BF3C();

      v35 = v3;
      v16 = *(v14 + 16);
      v16(v12, v10, v15);
      v16(v13, v11, v15);
      sub_16BD5C();
      v17 = *(v14 + 8);
      v17(v11, v15);
      v17(v10, v15);
      sub_8748(v36, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v18, v19, v20, v35);
      sub_86FC(v9, v36, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v0 + 1248) + 8))(*(v0 + 1288), *(v0 + 1240));
    }
  }

  v21 = *(v0 + 1304);
  v22 = *(v0 + 1232);
  v23 = *(*(v0 + 912) + 288);
  *(v0 + 1480) = v23;
  sub_12093C(v23, v21, v22);
  *(v0 + 520) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 528) = sub_3736C();
  *(v0 + 496) = 4;
  v24 = sub_16C86C();
  sub_2D64((v0 + 496));
  if (v24)
  {
    sub_208C0(v23);
    *(v0 + 1312) = v25;
    v26 = swift_task_alloc();
    *(v0 + 1320) = v26;
    *v26 = v0;
    v26[1] = sub_80E88;
    sub_C9C8();
    sub_841E0();

    return sub_66E84();
  }

  else
  {
    v29 = *(v0 + 1232);
    v30 = *(v0 + 912);
    v31 = *(v0 + 904);
    sub_8388(v30 + 176, v0 + 536);
    sub_2D20((v0 + 536), *(v0 + 560));
    v32 = swift_task_alloc();
    *(v0 + 1456) = v32;
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v29;
    v33 = swift_task_alloc();
    *(v0 + 1464) = v33;
    *v33 = v0;
    v33[1] = sub_82BD0;
    sub_841E0();

    return sub_1098D8();
  }
}

uint64_t sub_80E88()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v6 + 1328) = v5;
  *(v6 + 1336) = v7;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_80F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_38E68();
  a47 = v49;
  a48 = v50;
  sub_842A4();
  a46 = v48;
  v51 = *(v48 + 1224);
  v52 = *(v48 + 1184);
  sub_372FC(*(v48 + 1232), v51);
  v53 = sub_369C(v51, 1, v52);
  v54 = *(v48 + 1336);
  v55 = *(v48 + 1224);
  if (v53 == 1)
  {

    sub_8748(v55, &qword_1C57F8, &unk_172510);
LABEL_12:
    v94 = sub_16DBBC();
    sub_8B48(v94, v48 + 736);
    v95 = sub_38B40();
    v96(v95);
    v97 = sub_16DBDC();
    v98 = sub_16E37C();
    if (sub_4B3A8(v98))
    {
      *sub_1BA38() = 0;
      sub_8420C();
      _os_log_impl(v99, v100, v101, v102, v103, 2u);
      sub_1BA00();
    }

    v104 = *(v48 + 1304);
    v105 = *(v48 + 912);

    v106 = sub_C9E0();
    v107(v106);
    sub_8284(v105 + 96, v48 + 176);
    sub_82E0();
    v156 = sub_16C32C();
    sub_8334(v48 + 176);
    sub_8748(v104, &qword_1C5690, &dword_16F320);
    sub_84070();
    v127 = v109;
    v128 = v108;
    v129 = *(v48 + 1200);
    v130 = *(v48 + 1176);
    v131 = *(v48 + 1168);
    v132 = *(v48 + 1160);
    v133 = *(v48 + 1152);
    v134 = *(v48 + 1136);
    v135 = *(v48 + 1128);
    v136 = *(v48 + 1120);
    v137 = *(v48 + 1112);
    v138 = *(v48 + 1104);
    v139 = *(v48 + 1080);
    v140 = *(v48 + 1056);
    v141 = *(v48 + 1048);
    v142 = *(v48 + 1040);
    v143 = *(v48 + 1032);
    v144 = *(v48 + 1016);
    v145 = *(v48 + 1008);
    v146 = *(v48 + 1000);
    v147 = *(v48 + 992);
    v148 = *(v48 + 984);
    v149 = *(v48 + 976);
    v151 = *(v48 + 968);
    v154 = *(v48 + 944);
    v155 = *(v48 + 936);
    sub_8748(v104, &qword_1C57F8, &unk_172510);

    sub_5D948();
    sub_38AD0();

    return v112(v110, v111, v112, v113, v114, v115, v116, v117, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v151, v154, v155, v156, a36, a37, a38, a39, a40);
  }

  (*(*(v48 + 1192) + 32))(*(v48 + 1208), *(v48 + 1224), *(v48 + 1184));
  if (!v54)
  {
    v88 = sub_8419C();
    v89(v88);
    goto LABEL_12;
  }

  sub_83A4C(*(v48 + 904));
  if (!v56)
  {
    v90 = sub_8419C();
    v91(v90);
LABEL_11:

    goto LABEL_12;
  }

  v57 = [*(v48 + 904) sampleStart];
  if (!v57)
  {
    v92 = sub_8419C();
    v93(v92);

    goto LABEL_11;
  }

  v58 = v57;
  v59 = *(v48 + 1176);
  v60 = *(v48 + 1144);
  v61 = *(v48 + 1096);
  v152 = *(v48 + 1168);
  v62 = *(v48 + 1480);
  sub_16BF3C();

  v63 = sub_16D4CC();
  *(v48 + 1344) = v63;
  sub_8D14(v63);
  sub_16D4BC();
  sub_16BF2C();
  sub_16D4AC();

  *(v48 + 1352) = sub_16D49C();

  sub_C9E0();
  sub_16E23C();

  v64 = sub_25948(v62);
  v66 = v65;
  v67 = sub_208C0(v62);
  v68 = (v59 + *(v60 + 20));
  *v68 = v64;
  v68[1] = v66;
  v69 = (v59 + *(v60 + 24));
  *v69 = v67;
  v69[1] = v70;
  v71 = sub_16DBBC();
  *(v48 + 1360) = v71;
  sub_8B48(v71, v48 + 760);
  *(v48 + 1368) = *(v61 + 16);
  *(v48 + 1376) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72 = sub_8B9C();
  v73(v72);
  sub_8416C();
  sub_83DD4(v59, v152, v74);
  v75 = sub_16DBDC();
  v76 = sub_16E36C();
  v77 = sub_4B3A8(v76);
  v78 = *(v48 + 1168);
  if (v77)
  {
    v79 = *(v48 + 1160);
    v80 = *(v48 + 1096);
    v150 = *(v48 + 1088);
    v153 = *(v48 + 1136);
    v81 = sub_8BD8();
    v82 = swift_slowAlloc();
    a36 = v82;
    *v81 = 136315138;
    sub_83DD4(v78, v79, type metadata accessor for SnippetHeaderModel);
    sub_842B0();
    v83 = sub_16E1EC();
    v85 = v84;
    sub_83E30(v78, type metadata accessor for SnippetHeaderModel);
    v86 = sub_3AB7C(v83, v85, &a36);

    *(v81 + 4) = v86;
    _os_log_impl(&def_259DC, v75, v76, "#LogBloodPressureFlow: Snippet header model %s", v81, 0xCu);
    sub_2D64(v82);
    sub_8A2C(v82);
    sub_8A2C(v81);

    v87 = *(v80 + 8);
    v87(v153, v150);
  }

  else
  {
    v119 = *(v48 + 1136);
    v120 = *(v48 + 1096);
    v121 = *(v48 + 1088);

    sub_840A0();
    sub_83E30(v78, v122);
    v87 = *(v120 + 8);
    v87(v119, v121);
  }

  *(v48 + 1384) = v87;
  sub_16E23C();

  v123 = swift_task_alloc();
  *(v48 + 1392) = v123;
  *v123 = v48;
  v123[1] = sub_81694;
  sub_38AD0();

  return sub_66A84(v124, v125);
}

uint64_t sub_81694()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1400) = v3;
  *(v1 + 1408) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_81784()
{
  v121 = v0;
  v1 = v0[113];
  v115 = *(v0[149] + 16);
  v115(v0[150], v0[151], v0[148]);
  swift_allocObject();
  sub_16D4BC();
  v2 = [v1 sampleEnd];
  if (v2)
  {
    v3 = v2;
    sub_16BF3C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[155];
  v6 = v0[127];
  v7 = v0[126];
  sub_214C(v7, v4, 1, v5);
  sub_86FC(v7, v6, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v6, 1, v5))
  {
    sub_8748(v0[127], &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v8 = v0[159];
    v9 = v0[156];
    v10 = v0[155];
    v11 = v0[127];
    (*(v9 + 16))(v8, v11, v10);
    sub_8748(v11, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v9 + 8))(v8, v10);
  }

  v12 = v0[176];
  v13 = v0[175];
  v14 = v0[147];
  v15 = v0[144];
  v118 = v0[143];
  v104 = v0[133];
  v16 = v0[131];
  v110 = v0[128];
  v17 = v0[125];
  v18 = v0[113];
  sub_16D4AC();

  sub_16D49C();

  [v18 systolic];
  v20 = v19;
  [v18 diastolic];
  v22 = v21;
  v23 = 0x646567676F4CLL;
  if (v12)
  {
    v23 = v13;
  }

  v106 = v23;
  v108 = v12;
  sub_8416C();
  sub_83DD4(v14, v15, v24);
  v25 = sub_16D5BC();
  v112 = v26;
  v113 = v25;
  v114 = sub_16C11C();
  sub_214C(v16, 1, 1, v114);
  v27 = *(v110 + 32);
  v111 = v16;
  sub_214C(v16 + v27, 1, 1, v118);
  sub_16D45C();
  if (sub_369C(v17, 1, v104) == 1)
  {
    sub_8748(v0[125], &qword_1C5800, &unk_16F510);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = sub_16D5BC();
    v32 = v31;
    v33 = sub_C9C8();
    v34(v33);
    v0[109] = v30;
    v0[110] = v32;
    sub_9854();
    v28 = sub_16E3FC();
    v29 = v35;
  }

  v36 = v0[176];
  v37 = v0[144];
  v103 = v0[143];
  v105 = v0[133];
  v38 = v0[131];
  v39 = v0[128];
  v40 = v0[124];
  v41 = (v38 + v39[5]);
  v42 = (v38 + v39[6]);
  v43 = (v38 + v39[7]);
  *v41 = v28;
  v41[1] = v29;
  *v42 = sub_12CF7C(v20, 0, v22, 0);
  v42[1] = v44;
  v45 = 0xE600000000000000;
  if (v108)
  {
    v45 = v36;
  }

  *v43 = v106;
  v43[1] = v45;
  sub_8748(v111 + v27, &dword_1C63F8, &qword_171800);
  sub_8416C();
  sub_83DD4(v37, v111 + v27, v46);
  sub_388E4();
  sub_214C(v47, v48, v49, v103);
  sub_16D46C();
  if (sub_369C(v40, 1, v105) == 1)
  {
    sub_8748(v0[124], &qword_1C5800, &unk_16F510);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v50 = sub_16D5BC();
    v51 = v52;
    v53 = sub_C9C8();
    v54(v53);
  }

  v109 = v0[171];
  v55 = v0[152];
  v56 = v0[150];
  v57 = v0[149];
  v58 = v0[148];
  v59 = v0[144];
  v102 = v0[170];
  v101 = v0[132];
  v60 = v0[131];
  v107 = v0[130];
  v61 = v0[128];
  v62 = v0[122];
  v63 = (v60 + *(v61 + 36));
  v64 = (v60 + *(v61 + 40));
  *v63 = v50;
  v63[1] = v51;
  *v64 = v113;
  v64[1] = v112;
  v115(v55, v56, v58);
  sub_388E4();
  sub_214C(v65, v66, v67, v58);
  sub_12D058(v55);

  sub_8748(v55, &qword_1C57F8, &unk_172510);
  sub_840A0();
  sub_83E30(v59, v68);
  v0[177] = *(v57 + 8);
  v0[178] = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69 = sub_8427C();
  v70(v69);
  sub_388E4();
  sub_214C(v71, v72, v73, v114);
  sub_1E634(v62, v60, &qword_1C63F0, &unk_1717F0);
  sub_83D70(v60, v101);
  sub_8B48(v102, (v0 + 98));
  v74 = sub_C9C8();
  v109(v74);
  sub_84184();
  sub_83DD4(v101, v107, v75);
  v76 = sub_16DBDC();
  v77 = sub_16E36C();
  v78 = sub_84370(v77);
  v79 = v0[173];
  v80 = v0[141];
  v81 = v0[136];
  v82 = v0[130];
  if (v78)
  {
    v83 = v0[129];
    v119 = v0[141];
    v84 = sub_8BD8();
    v117 = v81;
    v85 = swift_slowAlloc();
    v120 = v85;
    *v84 = 136315138;
    v116 = v79;
    sub_83DD4(v82, v83, type metadata accessor for BloodPressureLogModel);
    v86 = sub_16E1EC();
    v88 = v87;
    sub_83E30(v82, type metadata accessor for BloodPressureLogModel);
    v89 = sub_3AB7C(v86, v88, &v120);

    *(v84 + 4) = v89;
    _os_log_impl(&def_259DC, v76, v77, "#LogBloodPressureFlow: Snippet model %s", v84, 0xCu);
    sub_2D64(v85);
    sub_8A2C(v85);
    sub_8A2C(v84);

    v116(v119, v117);
  }

  else
  {

    sub_84154();
    sub_83E30(v82, v90);
    v79(v80, v81);
  }

  v91 = v0[135];
  v92 = v0[134];
  v93 = v0[133];
  v94 = v0[123];
  v95 = v0[113];
  [v95 systolic];
  [v95 diastolic];
  (*(v92 + 16))(v94, v91, v93);
  sub_388E4();
  sub_214C(v96, v97, v98, v93);
  v99 = swift_task_alloc();
  v0[179] = v99;
  *v99 = v0;
  v99[1] = sub_81F80;

  return sub_163CA0();
}

uint64_t sub_81F80()
{
  sub_38A2C();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_8A60();
  *v5 = v4;
  *(v7 + 1440) = v6;

  sub_38A38();
  v9 = *(v8 + 984);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
    v10 = sub_828A8;
  }

  else
  {
    sub_8748(*(v8 + 984), &qword_1C5800, &unk_16F510);
    v10 = sub_820E0;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_820E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_8430C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[180];
  v26 = v22[171];
  v27 = v22[136];
  sub_8B48(v22[170], (v22 + 104));
  v28 = sub_8B9C();
  v26(v28);
  v29 = v25;
  v30 = sub_16DBDC();
  v31 = sub_16E36C();
  if (sub_84370(v31))
  {
    v32 = v22[180];
    sub_8BD8();
    v57 = sub_84288();
    a11 = v57;
    *v27 = 136315138;
    v33 = [v32 dialog];
    sub_6805C();
    v34 = sub_16E2CC();

    if (sub_3B35C(v34))
    {
      sub_3B360();
      if ((v34 & 0xC000000000000001) != 0)
      {
        v35 = sub_16E48C();
      }

      else
      {
        v35 = *(v34 + 32);
      }

      v36 = v35;

      v37 = [v36 fullPrint];

      v38 = sub_16E1BC();
      v40 = v39;
    }

    else
    {

      v38 = 0;
      v40 = 0;
    }

    v56 = v22[173];
    v43 = v22[140];
    v44 = v22[136];
    v22[107] = v38;
    v22[108] = v40;
    sub_2440(&qword_1C69C8, &qword_174150);
    v45 = sub_16E3DC();
    v47 = v46;

    v48 = sub_3AB7C(v45, v47, &a11);

    *(v27 + 4) = v48;
    _os_log_impl(&def_259DC, v30, v31, "#GenerateLoggingResponseOutput: Snippet dialog is %s", v27, 0xCu);
    sub_2D64(v57);
    sub_8A2C(v57);
    sub_1BA00();

    v56(v43, v44);
  }

  else
  {
    v41 = v22[173];

    v42 = sub_38B40();
    v41(v42);
  }

  v22[85] = type metadata accessor for WellnessSnippets(0);
  v22[86] = sub_83E88(&qword_1C5EE0, 255, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  sub_9910(v22 + 82);
  sub_84184();
  v49 = sub_38B40();
  sub_83DD4(v49, v50, v51);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v22[181] = v52;
  *v52 = v53;
  v52[1] = sub_82418;
  sub_841E0();

  return sub_672C0();
}

uint64_t sub_82418()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 656));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_82500()
{
  v1 = *(v0 + 1440);
  v18 = *(v0 + 1416);
  v19 = *(v0 + 1304);
  v2 = *(v0 + 1248);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 1208);
  v12 = *(v0 + 1080);
  v13 = *(v0 + 1176);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1056);
  sub_8388(v0 + 616, v0 + 696);
  v6 = swift_allocObject();
  sub_17464((v0 + 696), v6 + 16);
  sub_16C73C();
  v7 = sub_16C1DC();
  sub_38964(v7);
  *(v0 + 896) = sub_16C1CC();
  v20 = sub_16C32C();

  sub_2D64((v0 + 616));
  sub_84154();
  sub_83E30(v5, v8);
  (*(v3 + 8))(v12, v4);
  sub_840A0();
  sub_83E30(v13, v9);
  (*(v2 + 8))(v15, v14);
  v18(v17, v16);
  sub_8748(v19, &qword_1C5690, &dword_16F320);

  sub_84070();
  sub_8748(v5, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v10(v20);
}

uint64_t sub_828A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[171];
  sub_8B48(v40[170], (v40 + 101));
  v42 = sub_8B9C();
  v41(v42);
  v43 = sub_16DBDC();
  v44 = sub_16E37C();
  if (sub_4B3A8(v44))
  {
    *sub_1BA38() = 0;
    sub_8420C();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    sub_1BA00();
  }

  v76 = v40[177];
  v77 = v40[178];
  v50 = v40[173];
  v68 = v40[169];
  v78 = v40[163];
  v51 = v40[156];
  v72 = v40[155];
  v73 = v40[157];
  v74 = v40[148];
  v75 = v40[151];
  v52 = v40[139];
  v53 = v40[136];
  v70 = v40[135];
  v71 = v40[147];
  v54 = v40[134];
  v69 = v40[133];
  v55 = v40[132];
  v56 = v40[114];

  v50(v52, v53);
  sub_8284(v56 + 96, (v40 + 42));
  sub_82E0();
  v79 = sub_16C32C();

  sub_8334((v40 + 42));
  sub_84154();
  sub_83E30(v55, v57);
  (*(v54 + 8))(v70, v69);
  sub_840A0();
  sub_83E30(v71, v58);
  (*(v51 + 8))(v73, v72);
  v76(v75, v74);
  sub_8748(v78, &qword_1C5690, &dword_16F320);
  sub_84070();
  sub_840B8();
  sub_8748(v53, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, a37, a38, a39, a40);
}

uint64_t sub_82BD0(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {

    v6 = sub_83020;
  }

  else
  {
    *(v4 + 1472) = a1;

    v6 = sub_82D1C;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_82D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[184];
  v60 = v40[163];
  v42 = v40[118];
  v43 = v40[117];
  v44 = v40[116];
  v45 = v40[115];
  v46 = v40[114];
  sub_2D64(v40 + 67);
  sub_16C43C();
  (*(v44 + 16))(v43, v42, v45);
  sub_16C75C();
  (*(v44 + 8))(v42, v45);
  v47 = [v41 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v46 + 96, (v40 + 72));
  sub_2D20(v40 + 72, v40[75]);
  v48 = sub_16C2FC();
  sub_2D64(v40 + 72);
  v40[111] = v48;
  sub_16C28C();
  v61 = sub_16C32C();

  v49 = sub_C9E0();
  v50(v49);
  sub_8748(v60, &qword_1C5690, &dword_16F320);

  sub_84070();
  sub_840B8();
  sub_8748(v44 + 8, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v60, v61, a37, a38, a39, a40);
}

uint64_t sub_83020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[163];
  v42 = v40[114];
  sub_2D64(v40 + 67);
  sub_8284(v42 + 96, (v40 + 2));
  sub_82E0();
  v52 = sub_16C32C();
  sub_8334((v40 + 2));
  sub_8748(v41, &qword_1C5690, &dword_16F320);
  sub_84070();
  sub_840B8();
  sub_8748(v41, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v52, a37, a38, a39, a40);
}

uint64_t sub_8320C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_16BF5C();
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = sub_2440(&qword_1C5800, &unk_16F510);
  v19 = __chkstk_darwin(v18 - 8);
  v53 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  [a2 systolic];
  v24 = v23;
  v25 = sub_83A4C(a2);
  v26 = *(a3 + 288);
  v28 = sub_99F0C(v25, v27, v26, v24);

  v29 = type metadata accessor for WellnessLoggingBloodPressureParameters(0);
  v30 = a1 + v29[9];
  *v30 = v28;
  *(v30 + 8) = 0;
  [a2 diastolic];
  v32 = v31;
  v33 = sub_83A4C(a2);
  v35 = sub_99F0C(v33, v34, v26, v32);

  v36 = a1 + v29[7];
  *v36 = v35;
  *(v36 + 8) = 0;
  sub_83A4C(a2);
  if (v37)
  {
    sub_16E23C();

    v38 = sub_16D5CC();
    v39 = 0;
  }

  else
  {
    v38 = sub_16D5CC();
    v39 = 1;
  }

  v40 = 1;
  sub_214C(v22, v39, 1, v38);
  sub_1E634(v22, a1 + v29[10], &qword_1C5800, &unk_16F510);
  sub_16D4CC();
  swift_allocObject();
  sub_16D4BC();
  v41 = [a2 sampleEnd];
  if (v41)
  {
    v42 = v41;
    sub_16BF3C();

    v40 = 0;
  }

  sub_214C(v15, v40, 1, v10);
  sub_86FC(v15, v17, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v17, 1, v10))
  {
    sub_8748(v17, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v43 = v51;
    v44 = v52;
    (*(v52 + 16))(v51, v17, v10);
    sub_8748(v17, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v44 + 8))(v43, v10);
  }

  v45 = v53;
  sub_16D4AC();

  v46 = sub_16D49C();

  v47 = v29[8];

  *(a1 + v47) = v46;
  sub_372FC(v54, v9);
  v48 = sub_16BE9C();
  if (sub_369C(v9, 1, v48) == 1)
  {
    sub_8748(v9, &qword_1C57F8, &unk_172510);
    v49 = sub_16D5CC();
    sub_214C(v45, 1, 1, v49);
  }

  else
  {
    sub_61120(v45);
    (*(*(v48 - 8) + 8))(v9, v48);
  }

  return sub_1E634(v45, a1, &qword_1C5800, &unk_16F510);
}

uint64_t LogBloodPressureFlow.deinit()
{
  sub_2D64((v0 + 16));
  sub_2D64((v0 + 56));
  sub_C938(v0 + 96);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LogBloodPressureFlow.__deallocating_deinit()
{
  LogBloodPressureFlow.deinit();

  return _swift_deallocClassInstance(v0, 289, 7);
}

uint64_t sub_837BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_8386C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_8386C()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_5D948();

  return v5(v2);
}

uint64_t sub_83978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return LogBloodPressureFlow.execute()();
}

uint64_t sub_83A14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LogBloodPressureFlow();

  return sub_16C37C();
}

uint64_t sub_83A4C(void *a1)
{
  v1 = [a1 unit];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_83AB0(const void *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_16C58C();
  v9 = &protocol witness table for ResponseFactory;
  *&v7 = a2;
  *(a3 + 16) = 82;
  memcpy((a3 + 24), a1, 0xA0uLL);
  sub_17464(&v7, a3 + 184);
  return a3;
}

uint64_t getEnumTagSinglePayload for LogBloodPressureFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogBloodPressureFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x83CD4);
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

unint64_t sub_83D10()
{
  result = qword_1C89C0;
  if (!qword_1C89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89C0);
  }

  return result;
}

uint64_t sub_83D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureLogModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83DD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  v4 = sub_8B9C();
  v5(v4);
  return a2;
}

uint64_t sub_83E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_83E88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_83ED0()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_83F08()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_83FC8()
{
  result = qword_1C89E0;
  if (!qword_1C89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89E0);
  }

  return result;
}

void sub_840B8()
{
  v2 = v0[124];
  *(v1 - 144) = v0[125];
  *(v1 - 136) = v2;
  v3 = v0[122];
  *(v1 - 128) = v0[123];
  *(v1 - 120) = v3;
  v4 = v0[118];
  *(v1 - 112) = v0[121];
  *(v1 - 104) = v4;
  *(v1 - 96) = v0[117];
}

uint64_t sub_841B0()
{
}

uint64_t sub_8424C()
{
  result = v0;
  *(v1 - 240) = *(*(v1 - 168) + 8);
  return result;
}

uint64_t sub_84288()
{

  return swift_slowAlloc();
}

uint64_t sub_84358(uint64_t a1)
{

  return sub_16D62C();
}

BOOL sub_84370(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_84388(uint64_t a1, uint64_t a2)
{
  sub_87F90();

  return sub_16C33C();
}

uint64_t sub_843DC()
{
  sub_8A88();
  v1[43] = v2;
  v1[44] = v0;
  v3 = sub_2440(&qword_1C69C0, &unk_174290);
  sub_4348(v3);
  v1[45] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_84460()
{
  v1 = *v0[44];
  getLocalizedMedName(from:)();
  if (v2)
  {
  }

  v3 = v0[45];
  sub_880D8(v0[44]);
  v4 = sub_88100();
  v5(v4);
  getMedScheduleWithDefinedValues(from:deviceState:)(v1, (v0 + 22));
  sub_2D64(v0 + 22);
  v6 = sub_2440(&qword_1C6988, &unk_176730);
  sub_369C(v3, 1, v6);
  sub_8748(v3, &qword_1C69C0, &unk_174290);
  swift_task_alloc();
  sub_179E8();
  v0[46] = v7;
  *v7 = v8;
  v7[1] = sub_845AC;

  return sub_84800();
}

uint64_t sub_845AC()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_84690()
{
  sub_76D68();
  if (*(v0 + 280))
  {
    sub_17464((v0 + 256), v0 + 216);
    sub_8388(v0 + 216, v0 + 296);
    v1 = swift_allocObject();
    sub_17464((v0 + 296), v1 + 16);
    sub_16C73C();
    sub_16C1DC();
    swift_allocObject();
    *(v0 + 336) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 216));
  }

  else
  {
    v2 = *(v0 + 352);
    sub_8748(v0 + 256, &qword_1C5ED0, &qword_171090);
    sub_8284(v2 + 8, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  sub_C9BC();

  return v3();
}

uint64_t sub_84800()
{
  sub_8A88();
  *(v1 + 609) = v2;
  *(v1 + 608) = v3;
  *(v1 + 320) = v4;
  *(v1 + 328) = v0;
  v5 = sub_16DBEC();
  *(v1 + 336) = v5;
  sub_888C(v5);
  *(v1 + 344) = v6;
  *(v1 + 352) = sub_8BC0();
  v7 = type metadata accessor for GenericButtonModel(0);
  *(v1 + 360) = v7;
  sub_4348(v7);
  *(v1 + 368) = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v8);
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 400) = swift_task_alloc();
  v9 = sub_16BE9C();
  *(v1 + 408) = v9;
  sub_888C(v9);
  *(v1 + 416) = v10;
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v11 = sub_16C46C();
  *(v1 + 440) = v11;
  sub_888C(v11);
  *(v1 + 448) = v12;
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  v13 = sub_16C7BC();
  *(v1 + 472) = v13;
  sub_888C(v13);
  *(v1 + 480) = v14;
  *(v1 + 488) = sub_8BC0();
  v15 = sub_17960();

  return _swift_task_switch(v15);
}

uint64_t sub_84A34()
{
  sub_8A88();
  v1 = *(*(v0 + 328) + 208);
  *(v0 + 610) = v1;
  v2 = swift_task_alloc();
  *(v0 + 496) = v2;
  *v2 = v0;
  v2[1] = sub_84AD0;

  return sub_164024(v1);
}

uint64_t sub_84AD0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 504) = v4;

  if (v0)
  {

    v5 = sub_85B64;
  }

  else
  {
    v5 = sub_84BE0;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_84BE0()
{
  sub_76D68();
  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 328);
  sub_16C45C();
  v6 = sub_88158();
  v7(v6);
  sub_16C75C();
  (*(v4 + 8))(v2, v3);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_3820C((v5 + 168));
  v9 = sub_17970();
  v10(v9);
  sub_2D20((v0 + 16), *(v0 + 40));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
LABEL_4:
    *(v0 + 512) = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    *(v0 + 520) = v14;
    hasTimeEdit(from:)();
    swift_task_alloc();
    sub_179E8();
    *(v0 + 528) = v15;
    *v15 = v16;
    v15[1] = sub_84FA8;
LABEL_5:
    sub_3E254();

    return sub_85C9C(v17, v18, v19, v20);
  }

  sub_3820C((v5 + 168));
  v11 = sub_17970();
  v12(v11);
  sub_2D20((v0 + 56), *(v0 + 80));
  sub_17970();
  v13 = sub_16C3FC();
  sub_2D64((v0 + 56));
  sub_2D64((v0 + 16));
  if (v13)
  {
    goto LABEL_4;
  }

  if (*(v0 + 610) != 1)
  {
    *(v0 + 568) = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
    *(v0 + 576) = v34;
    hasTimeEdit(from:)();
    swift_task_alloc();
    sub_179E8();
    *(v0 + 584) = v35;
    *v35 = v36;
    v35[1] = sub_85674;
    goto LABEL_5;
  }

  v23 = *(v0 + 504);
  sub_88058((*(v0 + 328) + 216));
  sub_2440(&qword_1C5ED8, &unk_173090);
  v24 = swift_allocObject();
  *(v0 + 552) = v24;
  *(v24 + 16) = xmmword_170F70;
  *(v24 + 32) = v23;
  v25 = v23;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 560) = v26;
  *v26 = v27;
  v26[1] = sub_85494;
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v28, v29, v30, v31, v32);
}

uint64_t sub_84FA8()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_8508C()
{
  sub_76D68();
  v3 = v0[50];
  v4 = v0[51];
  sub_87FE4();
  if (v5)
  {
    sub_16BE8C();
    v6 = sub_87FE4();
    if (v5)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11);
    }

    (*(v0[52] + 32))(v0[54], v0[49], v0[51]);
    sub_87FE4();
    if (!v5)
    {
      sub_8748(v0[50], &qword_1C57F8, &unk_172510);
    }
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v3, v4);
  }

  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v15 = sub_88110();
  v16(v15);
  *v1 = v13;
  v1[1] = v12;
  sub_88058((v2 + 216));
  v0[35] = type metadata accessor for WellnessSnippets(0);
  v0[36] = sub_17548();
  v17 = sub_9910(v0 + 32);
  sub_175A0(v1, v17);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[67] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v14;
  v19 = v14;
  swift_task_alloc();
  sub_179E8();
  v0[68] = v20;
  *v20 = v21;
  v20[1] = sub_85284;
  sub_8816C();
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_85284()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 256));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_85388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 432);
  v14 = *(v12 + 408);
  v15 = *(v12 + 416);
  v16 = *(v12 + 368);
  v17 = *(v12 + 320);

  sub_17604(v16);
  (*(v15 + 8))(v13, v14);
  v18 = sub_C9C8();
  v19(v18);
  sub_17464((v12 + 216), v17);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_85494()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_85594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 320);

  v14 = sub_C9C8();
  v15(v14);
  sub_17464((v12 + 176), v13);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_85674()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_85758()
{
  sub_76D68();
  v3 = v0[51];
  v4 = v0[48];
  sub_87FE4();
  if (v5)
  {
    sub_16BE8C();
    v6 = sub_87FE4();
    if (v5)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11);
    }

    (*(v0[52] + 32))(v0[53], v0[47], v0[51]);
    sub_87FE4();
    if (!v5)
    {
      sub_8748(v0[48], &qword_1C57F8, &unk_172510);
    }
  }

  else
  {
    (*(v0[52] + 32))(v0[53], v4, v3);
  }

  v12 = v0[72];
  v13 = v0[71];
  v14 = v0[63];
  v15 = sub_88110();
  v16(v15);
  *v1 = v13;
  v1[1] = v12;
  sub_88058((v2 + 216));
  v0[20] = type metadata accessor for WellnessSnippets(0);
  v0[21] = sub_17548();
  v17 = sub_9910(v0 + 17);
  sub_175A0(v1, v17);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[74] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v14;
  v19 = v14;
  swift_task_alloc();
  sub_179E8();
  v0[75] = v20;
  *v20 = v21;
  v20[1] = sub_85954;
  sub_8816C();
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_85954()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 136));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_85A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 416);
  v13 = *(v12 + 424);
  v15 = *(v12 + 408);
  v16 = *(v12 + 368);
  v17 = *(v12 + 320);

  sub_17604(v16);
  (*(v14 + 8))(v13, v15);
  v18 = sub_C9C8();
  v19(v18);
  sub_17464((v12 + 96), v17);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_85B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = sub_16DBBC();
  sub_8B48(v13, v12 + 296);
  v14 = sub_3BD68();
  v15(v14);
  v16 = sub_16DBDC();
  v17 = sub_16E36C();
  if (sub_1BA1C(v17))
  {
    v18 = sub_1BA38();
    sub_1BA50(v18);
    sub_1B9D0(&def_259DC, v19, v20, "Complex Medication Logging Request Error pattern failed, returning nil.");
    sub_1BA00();
  }

  v21 = *(v12 + 320);

  v22 = sub_C9F8();
  v23(v22);
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_85C9C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 602) = a4;
  *(v5 + 601) = a3;
  *(v5 + 600) = a2;
  *(v5 + 288) = a1;
  *(v5 + 296) = v4;
  v6 = sub_16BD9C();
  *(v5 + 304) = v6;
  *(v5 + 312) = *(v6 - 8);
  *(v5 + 320) = swift_task_alloc();
  v7 = sub_16C0BC();
  *(v5 + 328) = v7;
  *(v5 + 336) = *(v7 - 8);
  *(v5 + 344) = swift_task_alloc();
  sub_2440(&qword_1C57E0, &unk_171C60);
  *(v5 + 352) = swift_task_alloc();
  v8 = sub_16BF5C();
  *(v5 + 360) = v8;
  *(v5 + 368) = *(v8 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  sub_2440(&qword_1C8480, &unk_1742D0);
  *(v5 + 392) = swift_task_alloc();
  sub_2440(&qword_1C8488, &unk_173C60);
  *(v5 + 400) = swift_task_alloc();
  v9 = sub_16BE2C();
  *(v5 + 408) = v9;
  *(v5 + 416) = *(v9 - 8);
  *(v5 + 424) = swift_task_alloc();
  sub_2440(&qword_1C89E8, &unk_1742E0);
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = sub_2440(&qword_1C6990, &qword_1725A0);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  sub_2440(&qword_1C69C0, &unk_174290);
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  v10 = sub_16DBEC();
  *(v5 + 480) = v10;
  *(v5 + 488) = *(v10 - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_86068);
}

uint64_t sub_86068(uint64_t a1)
{
  if (*(v1 + 602) == 1)
  {
    v2 = sub_16DBBC();
    sub_8B48(v2, v1 + 264);
    v3 = sub_3BD68();
    v4(v3);
    v5 = sub_16DBDC();
    v6 = sub_16E36C();
    if (sub_1BA1C(v6))
    {
      v7 = sub_1BA38();
      sub_1BA50(v7);
      sub_1B9D0(&def_259DC, v8, v9, "getPunchoutURL had isPrefilled=true, returning getPrefilledPunchoutURL");
      sub_1BA00();
    }

    v10 = sub_C9F8();
    v11(v10);
    swift_task_alloc();
    sub_179E8();
    *(v1 + 520) = v12;
    *v12 = v13;
    v12[1] = sub_8698C;
    sub_38AD0();

    return sub_872DC(v14);
  }

  if (*(v1 + 600) == 1)
  {
    v17 = *(v1 + 296);
    sub_3820C((v17 + 168));
    v18 = sub_17970();
    v19(v18);
    sub_2D20((v1 + 136), *(v1 + 160));
    sub_17970();
    if (sub_16C40C())
    {
      v20 = 1;
    }

    else
    {
      sub_3820C((v17 + 168));
      v38 = sub_17970();
      v39(v38);
      sub_2D20((v1 + 176), *(v1 + 200));
      sub_17970();
      v20 = sub_16C3FC();
      sub_2D64((v1 + 176));
    }

    *(v1 + 603) = v20 & 1;
    sub_2D64((v1 + 136));
    v40 = getUSOMedNames(from:)();
    if (v40)
    {
      if (*(v40 + 16))
      {
        *(v1 + 528) = *(v40 + 40);

        sub_8818C();
        v41 = swift_task_alloc();
        *(v1 + 536) = v41;
        *v41 = v1;
        sub_880B8(v41);
        sub_38AD0();

        __asm { BRAA            X4, X16 }
      }
    }

    sub_16BE8C();
LABEL_30:
    sub_88038();

    sub_C9BC();
    sub_38AD0();

    __asm { BRAA            X1, X16 }
  }

  if (*(v1 + 601) != 1)
  {
    v44 = sub_16DBBC();
    sub_8B48(v44, v1 + 216);
    v45 = sub_3BD68();
    v46(v45);
    v47 = sub_16DBDC();
    v48 = sub_16E36C();
    if (sub_1BA1C(v48))
    {
      v49 = sub_1BA38();
      sub_1BA50(v49);
      sub_1B9D0(&def_259DC, v50, v51, "ComplexMedLoggingErrorFlow: both isLogByName and isLogBySchedule were false, but at least one needs to be true, so returning nil, and this will generally punchout to Meds Room.");
      sub_1BA00();
    }

    v52 = sub_C9F8();
    v53(v52);
    sub_16BE9C();
    goto LABEL_27;
  }

  v21 = *(v1 + 464);
  v22 = *(v1 + 296);
  v23 = *v22;
  sub_880D8(v22);
  v24 = sub_88100();
  v25(v24);
  getMedScheduleWithDefinedValues(from:deviceState:)(v23, v1 + 16);
  sub_2D64((v1 + 16));
  v26 = sub_C9F8();
  sub_4B010(v26, v27, v28, v29);
  v30 = sub_2440(&qword_1C6988, &unk_176730);
  v31 = sub_369C(v21, 1, v30);
  v32 = *(v1 + 464);
  v33 = *(v1 + 432);
  v34 = *(v1 + 440);
  if (v31 == 1)
  {
    sub_8748(*(v1 + 464), &qword_1C69C0, &unk_174290);
    sub_8AB4();
    sub_214C(v35, v36, v37, v34);
LABEL_24:
    sub_8748(*(v1 + 432), &qword_1C89E8, &unk_1742E0);
    v55 = sub_16DBBC();
    sub_8B48(v55, v1 + 240);
    v56 = sub_3BD68();
    v57(v56);
    v58 = sub_16DBDC();
    v59 = sub_16E36C();
    if (sub_1BA1C(v59))
    {
      v60 = sub_1BA38();
      sub_1BA50(v60);
      sub_1B9D0(&def_259DC, v61, v62, "ComplexMedLoggingErrorFlow: isLogBySchedule is true, but schedule?.dateInterval is nil. Returning nil");
      sub_1BA00();
    }

    v63 = *(v1 + 472);

    v64 = sub_C9F8();
    v65(v64);
    sub_8748(v63, &qword_1C69C0, &unk_174290);
    sub_16BE9C();
LABEL_27:
    sub_8AB4();
    sub_214C(v66, v67, v68, v69);
    goto LABEL_30;
  }

  sub_87F40(v32, v33, &qword_1C89E8, &unk_1742E0);
  sub_87FE4();
  if (v54)
  {
    goto LABEL_24;
  }

  v72 = *(v1 + 352);
  v97 = *(v1 + 360);
  v74 = *(v1 + 336);
  v73 = *(v1 + 344);
  v75 = *(v1 + 328);
  sub_87F40(*(v1 + 432), *(v1 + 456), &qword_1C6990, &qword_1725A0);
  sub_8AB4();
  sub_214C(v76, v77, v78, v75);
  sub_16C0EC();
  sub_8AB4();
  sub_214C(v79, v80, v81, v82);
  sub_16BE1C();
  sub_16BE0C();
  sub_16C08C();
  sub_16C05C();
  (*(v74 + 8))(v73, v75);
  result = sub_369C(v72, 1, v97);
  if (result != 1)
  {
    v83 = *(v1 + 448);
    v84 = *(v1 + 360);
    v85 = *(v1 + 368);
    v86 = *(v1 + 296);
    (*(v85 + 32))(*(v1 + 384), *(v1 + 352), v84);
    v87 = sub_88158();
    v88(v87);
    v89 = sub_C9C8();
    sub_4B010(v89, v90, v91, v92);
    sub_16BD5C();
    v93 = *(v85 + 8);
    *(v1 + 560) = v93;
    *(v1 + 568) = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v93(v83, v84);
    sub_88058((v86 + 272));
    v94 = swift_task_alloc();
    *(v1 + 576) = v94;
    *v94 = v1;
    v94[1] = sub_86EF4;
    sub_38AD0();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_8698C()
{
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_38A38();
  sub_38A38();
  sub_38A38();
  sub_38A38();
  sub_38A38();
  sub_38A38();
  sub_38A38();
  sub_38A38();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_86C54()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v6 + 544) = v5;
  *(v6 + 552) = v7;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_86D5C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (*(v0 + 603) == 1)
  {
    sub_880A8();
    sub_16E47C(105);
    sub_8814C();
    sub_88180();
  }

  else
  {
    sub_880A8();
    sub_16E47C(63);
    sub_8814C();
    sub_88180();
    v3._countAndFlagsBits = 0xD00000000000003DLL;
  }

  sub_16E26C(v3);
  v7._countAndFlagsBits = v2;
  v7._object = v1;
  sub_16E26C(v7);
  sub_16BE8C();

  sub_88038();
  sub_88128();

  sub_C9BC();

  return v4();
}

uint64_t sub_86EF4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = v3;
  *(v1 + 592) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_86FE4()
{
  sub_3820C((v0[37] + 168));
  v3 = sub_17970();
  v4(v3);
  sub_2D20(v0 + 7, v0[10]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 7);
LABEL_4:
    v8 = v0[74];
    v9 = v0[73];
    sub_88074();
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[38];
    sub_880A8();
    sub_16E47C(113);
    sub_8814C();
    sub_88180();
    sub_16E26C(v25);
    v26._countAndFlagsBits = v9;
    v26._object = v8;
    sub_16E26C(v26);
    sub_16BE8C();

    (*(v11 + 8))(v10, v12);
    goto LABEL_6;
  }

  sub_3820C((v0[37] + 168));
  v5 = sub_17970();
  v6(v5);
  sub_2D20(v0 + 12, v0[15]);
  sub_17970();
  v7 = sub_16C3FC();
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 7);
  if (v7)
  {
    goto LABEL_4;
  }

  v13 = v0[74];
  v14 = v0[73];
  sub_88074();
  v15 = v0[39];
  v16 = v0[40];
  v17 = v0[38];
  sub_880A8();
  sub_16E47C(71);
  sub_8814C();
  sub_88180();
  v27._countAndFlagsBits = 0xD000000000000045;
  sub_16E26C(v27);
  v28._countAndFlagsBits = v14;
  v28._object = v13;
  sub_16E26C(v28);
  sub_16BE8C();

  (*(v15 + 8))(v16, v17);
LABEL_6:
  v21(v20, v2);
  (*(v1 + 8))();
  sub_8748(v22, &qword_1C6990, &qword_1725A0);
  sub_8748(v23, &qword_1C69C0, &unk_174290);
  sub_88038();
  sub_88128();

  sub_C9BC();

  return v18();
}

uint64_t sub_872DC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_16DBEC();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_2440(&qword_1C57E0, &unk_171C60);
  v2[28] = swift_task_alloc();
  v4 = sub_16BF5C();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_87430);
}

uint64_t sub_87430()
{
  sub_76D68();
  v1 = v0[24];
  sub_3820C((v1 + 168));
  v2 = sub_17970();
  v3(v2);
  sub_2D20(v0 + 2, v0[5]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
    v4 = "s.app/logDose?medicationName=";
    v5 = 0xD000000000000067;
  }

  else
  {
    sub_3820C((v1 + 168));
    v6 = sub_17970();
    v7(v6);
    sub_2D20(v0 + 7, v0[10]);
    sub_17970();
    v8 = sub_16C3FC();
    sub_2D64(v0 + 7);
    sub_2D64(v0 + 2);
    v5 = 0xD000000000000044;
    v4 = "s.app/logDose?medicationName=";
    if (v8)
    {
      v5 = 0xD000000000000067;
    }

    else
    {
      v4 = "ation=1&medicationName=";
    }
  }

  v9 = v0[24];
  v0[20] = v5;
  v0[21] = v4 | 0x8000000000000000;
  v0[32] = *v9;
  v10 = getUSOMedNames(from:)();
  if (v10)
  {
    if (*(v10 + 16))
    {
      v0[33] = *(v10 + 40);

      sub_8818C();
      v16 = (v11 + *v11);
      v12 = swift_task_alloc();
      v0[34] = v12;
      *v12 = v0;
      v13 = sub_880B8(v12);

      return v16(v13);
    }
  }

  sub_16BE8C();

  sub_C9BC();

  return v15();
}

uint64_t sub_876D4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v7 + 280) = v5;
  *(v7 + 288) = v6;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_877D8()
{
  v33 = v0;
  sub_16E26C(*(v0 + 280));

  *&result = COERCE_DOUBLE(getMedDosageValue(from:)());
  if ((v2 & 1) == 0)
  {
    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        if (*&result < 9.22337204e18)
        {
          v3 = *&result;
          sub_16E47C(17);

          v32._countAndFlagsBits = 0x6C6C696665727026;
          v32._object = 0xEF3D656761736F44;
          *(v0 + 176) = v3;
          v35._countAndFlagsBits = sub_16E68C();
          sub_16E26C(v35);

          sub_16E26C(v32);

          goto LABEL_6;
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(v0 + 256);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  sub_880D8(*(v0 + 192));
  v7 = sub_88100();
  v8(v7);
  getMedEventDate(from:deviceState:)(v4, v0 + 96);
  sub_2D64((v0 + 96));
  if (sub_369C(v6, 1, v5) == 1)
  {
    sub_8748(*(v0 + 224), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
    v9 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    isa = sub_16BEEC().super.isa;
    v11 = [v9 stringFromDate:isa];

    v12 = sub_16E1BC();
    v14 = v13;

    strcpy(&v32, "&prefillDate=");
    HIWORD(v32._object) = -4864;
    v36._countAndFlagsBits = v12;
    v36._object = v14;
    sub_16E26C(v36);

    sub_16E26C(v32);

    v15 = sub_C9F8();
    v16(v15);
  }

  v17 = sub_16DBBC();
  sub_8B48(v17, v0 + 136);
  v18 = sub_3BD68();
  v19(v18);
  v21 = *(v0 + 160);
  v20 = *(v0 + 168);

  v22 = sub_16DBDC();
  v23 = sub_16E36C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 208);
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32._countAndFlagsBits = v29;
    *v28 = 136315138;

    v30 = sub_3AB7C(v21, v20, &v32._countAndFlagsBits);

    *(v28 + 4) = v30;
    _os_log_impl(&def_259DC, v22, v23, "Got prefilled url that looks like %s", v28, 0xCu);
    sub_2D64(v29);
  }

  else
  {
  }

  (*(v25 + 8))(v26, v27);
  sub_16BE8C();

  sub_C9BC();

  *&result = COERCE_DOUBLE(v31());
  return result;
}

uint64_t sub_87C58(uint64_t (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_16D62C();
  return a2(v7, 0);
}

uint64_t sub_87CF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_87D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_87DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_843DC();
}

uint64_t sub_87E74()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_87EAC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_87F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_87F90()
{
  result = qword_1C89F0;
  if (!qword_1C89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89F0);
  }

  return result;
}

uint64_t sub_88008()
{
}

uint64_t sub_88128()
{
}

uint64_t sub_8818C()
{
  v1 = v0[38];
  sub_2D20(v0 + 34, v0[37]);
  return v1 + 8;
}

uint64_t sub_881C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_88200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_88268(uint64_t a1, uint64_t a2)
{
  sub_89600();

  return sub_16C33C();
}

uint64_t sub_882BC()
{
  sub_8A88();
  v1[28] = v2;
  v1[29] = v0;
  v1[30] = type metadata accessor for GenericButtonModel(0);
  v1[31] = sub_8BC0();
  sub_2440(&qword_1C57F8, &unk_172510);
  v1[32] = sub_8BC0();
  v3 = sub_16BE9C();
  v1[33] = v3;
  sub_888C(v3);
  v1[34] = v4;
  v1[35] = sub_8BC0();
  v5 = sub_16C46C();
  v1[36] = v5;
  sub_888C(v5);
  v1[37] = v6;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[40] = v7;
  sub_888C(v7);
  v1[41] = v8;
  v1[42] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_88464()
{
  sub_8A88();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_884F4;

  return sub_3E7D8();
}

uint64_t sub_884F4(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_88EBC;
  }

  else
  {
    *(v5 + 352) = a1;
    v8 = sub_88614;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_88614(uint64_t a1)
{
  v2 = v1[44];
  v1[45] = v2;
  v4 = v1[38];
  v3 = v1[39];
  v5 = v1[36];
  v6 = v1[37];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  if (v2)
  {
    v7 = [v2 catId];
    sub_16E1BC();
  }

  v8 = v1[29];
  sub_16C76C();
  v9 = v8[3];
  v10 = v8[4];
  sub_2D20(v8, v9);
  (*(v10 + 8))(v9, v10);
  sub_2D20(v1 + 2, v1[5]);
  if (sub_16C40C())
  {
    sub_2D64(v1 + 2);
LABEL_6:
    v15 = v1[32];
    v14 = v1[33];
    sub_16E47C(33);

    v1[27] = 1242545199;
    v54._countAndFlagsBits = sub_16E68C();
    sub_16E26C(v54);

    sub_16BE8C();

    v16 = sub_369C(v15, 1, v14);
    if (v16 == 1)
    {
      __break(1u);
    }

    else
    {
      v23 = v1[34];
      v22 = v1[35];
      v24 = v1[33];
      v26 = v1[30];
      v25 = v1[31];
      v27 = v1[29];
      v28 = (*(v23 + 32))(v22, v1[32], v24);
      v32 = sub_89654(v28, v29, v30, v31, *(v27 + 88));
      v34 = v33;
      (*(v23 + 16))(v25 + *(v26 + 20), v22, v24);
      *v25 = v32;
      v25[1] = v34;
      sub_8388(v27 + 40, (v1 + 17));
      v35 = v1[20];
      v36 = v1[21];
      sub_2D20(v1 + 17, v35);
      v1[25] = type metadata accessor for WellnessSnippets(0);
      v1[26] = sub_17548();
      v37 = sub_9910(v1 + 22);
      sub_175A0(v25, v37);
      swift_storeEnumTagMultiPayload();
      v38 = sub_2440(&qword_1C5ED8, &unk_173090);
      v16 = sub_38DA0(v38);
      v1[46] = v16;
      *(v16 + 16) = xmmword_170F70;
      if (v2)
      {
        v39 = v16;
        *(v16 + 32) = v2;
        v40 = v2;
        swift_task_alloc();
        sub_179E8();
        v1[47] = v41;
        *v41 = v42;
        v41[1] = sub_88B00;
        v19 = v1[42];
        v16 = v1[28];
        v17 = v1 + 22;
        v18 = v39;
        v20 = v35;
        v21 = v36;

        return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
  }

  v12 = v8[3];
  v11 = v8[4];
  sub_2D20(v1[29], v12);
  (*(v11 + 8))(v12, v11);
  sub_2D20(v1 + 7, v1[10]);
  v13 = sub_16C3FC();
  sub_2D64(v1 + 7);
  sub_2D64(v1 + 2);
  if (v13)
  {
    goto LABEL_6;
  }

  sub_8388(v1[29] + 40, (v1 + 12));
  v43 = v1[15];
  v44 = v1[16];
  sub_2D20(v1 + 12, v43);
  v45 = sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = sub_38DA0(v45);
  v1[48] = v16;
  *(v16 + 16) = xmmword_170F70;
  if (!v2)
  {
    goto LABEL_17;
  }

  v46 = v16;
  *(v16 + 32) = v2;
  v47 = v2;
  swift_task_alloc();
  sub_179E8();
  v1[49] = v48;
  *v48 = v49;
  v48[1] = sub_88CFC;
  v50 = v1[42];
  v51 = v1[28];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v51, v46, v50, v43, v44);
}

uint64_t sub_88B00()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 176));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_88C08()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 136));
  sub_896A0();

  sub_C9BC();

  return v8();
}

uint64_t sub_88CFC()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_88DFC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 96));
  sub_896A0();

  sub_C9BC();

  return v4();
}

double sub_88EBC(uint64_t a1)
{
  v1[45] = 0;
  v3 = v1[38];
  v2 = v1[39];
  v4 = v1[36];
  v5 = v1[37];
  sub_16C45C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C7AC();
  v6 = v1[29];
  sub_16C76C();
  v7 = v6[3];
  v8 = v6[4];
  sub_2D20(v6, v7);
  (*(v8 + 8))(v7, v8);
  sub_2D20(v1 + 2, v1[5]);
  if (sub_16C40C())
  {
    sub_2D64(v1 + 2);
  }

  else
  {
    v10 = v6[3];
    v9 = v6[4];
    sub_2D20(v1[29], v10);
    (*(v9 + 8))(v10, v9);
    sub_2D20(v1 + 7, v1[10]);
    v11 = sub_16C3FC();
    sub_2D64(v1 + 7);
    sub_2D64(v1 + 2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = v1[32];
  v12 = v1[33];
  sub_16E47C(33);

  v1[27] = 1242545199;
  v33._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v33);

  sub_16BE8C();

  if (sub_369C(v13, 1, v12) == 1)
  {
    __break(1u);
  }

  v15 = v1[34];
  v14 = v1[35];
  v16 = v1[33];
  v18 = v1[30];
  v17 = v1[31];
  v19 = v1[29];
  v20 = (*(v15 + 32))(v14, v1[32], v16);
  v24 = sub_89654(v20, v21, v22, v23, *(v19 + 88));
  v26 = v25;
  (*(v15 + 16))(v17 + *(v18 + 20), v14, v16);
  *v17 = v24;
  v17[1] = v26;
  sub_8388(v19 + 40, (v1 + 17));
  sub_2D20(v1 + 17, v1[20]);
  v1[25] = type metadata accessor for WellnessSnippets(0);
  v1[26] = sub_17548();
  v27 = sub_9910(v1 + 22);
  sub_175A0(v17, v27);
  swift_storeEnumTagMultiPayload();
  v28 = sub_2440(&qword_1C5ED8, &unk_173090);
  v29 = sub_38DA0(v28);
  v1[46] = v29;
  *(v29 + 16) = xmmword_170F70;
  __break(1u);
LABEL_7:
  sub_8388(v1[29] + 40, (v1 + 12));
  sub_2D20(v1 + 12, v1[15]);
  v30 = sub_2440(&qword_1C5ED8, &unk_173090);
  v31 = sub_38DA0(v30);
  v1[48] = v31;
  *&result = 1;
  *(v31 + 16) = xmmword_170F70;
  __break(1u);
  return result;
}

uint64_t sub_8921C()
{
  sub_8A88();
  *(v0 + 104) = v1;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_892AC;

  return sub_882BC();
}

uint64_t sub_892AC()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_89390()
{
  sub_8388(v0 + 16, v0 + 56);
  v1 = swift_allocObject();
  sub_17464((v0 + 56), v1 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 96) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v2();
}

uint64_t sub_8949C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_8921C();
}

uint64_t sub_89534()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8956C()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_89600()
{
  result = qword_1C89F8;
  if (!qword_1C89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89F8);
  }

  return result;
}

uint64_t sub_89654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_9A820(0x707041206E65704FLL, 0xEE0065726F745320, 0x537070416E65706FLL, 0xEC00000065726F74);
}

uint64_t sub_896A0()
{
}

uint64_t sub_896C0()
{
  sub_16C8FC();
  sub_42F0();
  v35[4] = v0;
  v2 = __chkstk_darwin(v1);
  v35[3] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = sub_16DBEC();
  sub_42F0();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  v11 = v35 - v10;
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v14 = sub_16C97C();
  if (sub_3B35C(v14))
  {
    sub_3B360();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_16E48C();
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = sub_16DBBC();
    sub_89C68(v16);
    v17 = v13;
    (*(v6 + 16))(v13, v16, v4);

    v18 = sub_16DBDC();
    v19 = v4;
    v20 = sub_16E36C();

    if (os_log_type_enabled(v18, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      v23 = sub_16CF6C();
      v25 = sub_3AB7C(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_16CF4C();
      v28 = sub_3AB7C(v26, v27, v36);

      *(v21 + 14) = v28;
      _os_log_impl(&def_259DC, v18, v20, "NLv4 Wellness Parse: Input is entity=%s verb=%s", v21, 0x16u);
      swift_arrayDestroy();
      sub_8A2C(v22);
      sub_8A2C(v21);
    }

    (*(v6 + 8))(v17, v19);
  }

  else
  {

    v29 = sub_16DBBC();
    sub_89C68(v29);
    v30 = v6;
    (*(v6 + 16))(v11, v29, v4);
    v31 = sub_16DBDC();
    v32 = sub_16E37C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&def_259DC, v31, v32, "NLv4 Wellness Parse: No tasks in input", v33, 2u);
      sub_8A2C(v33);
    }

    (*(v30 + 8))(v11, v4);
    return 0;
  }

  return v15;
}

uint64_t sub_89C68(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_89C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2440(&qword_1C8AB0, &qword_174488);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_74678(a3, v24 - v10, &qword_1C8AB0, &qword_174488);
  v12 = sub_16E33C();
  v13 = sub_369C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_8748(v11, &qword_1C8AB0, &qword_174488);
  }

  else
  {
    sub_16E32C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_16E31C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_16E22C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_8748(a3, &qword_1C8AB0, &qword_174488);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8748(a3, &qword_1C8AB0, &qword_174488);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_89F68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainFlow(0);
  sub_92CD0(&qword_1C8B50, type metadata accessor for MainFlow, &unk_174420);

  return sub_16C33C();
}

uint64_t sub_89FF4()
{
  sub_8A88();
  v1[92] = v0;
  v1[91] = v2;
  v3 = sub_2440(&qword_1C8AA8, &qword_174480);
  sub_4348(v3);
  v1[93] = sub_8BC0();
  v4 = sub_16BFFC();
  v1[94] = v4;
  sub_888C(v4);
  v1[95] = v5;
  v1[96] = sub_8BC0();
  v6 = sub_16C89C();
  v1[97] = v6;
  sub_888C(v6);
  v1[98] = v7;
  v1[99] = sub_8BC0();
  v8 = sub_16C80C();
  v1[100] = v8;
  sub_888C(v8);
  v1[101] = v9;
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v10 = sub_16C83C();
  v1[104] = v10;
  sub_888C(v10);
  v1[105] = v11;
  v1[106] = sub_8BC0();
  v12 = sub_16D26C();
  v1[107] = v12;
  sub_888C(v12);
  v1[108] = v13;
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v14 = sub_2440(&qword_1C8AB0, &qword_174488);
  sub_4348(v14);
  v1[114] = sub_8BC0();
  v15 = sub_16DBEC();
  v1[115] = v15;
  sub_888C(v15);
  v1[116] = v16;
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();

  return _swift_task_switch(sub_8A308);
}

uint64_t sub_8A308(uint64_t a1)
{
  v155 = v1;
  v2 = *(v1 + 928);
  v3 = sub_16DBBC();
  sub_8B48(v3, v1 + 584);
  v4 = *(v2 + 16);
  v5 = sub_93094();
  v4(v5);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (sub_38670(v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    sub_4B3D0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_8A2C(v8);
  }

  v14 = *(v1 + 976);
  v15 = *(v1 + 968);
  v16 = *(v1 + 928);
  v17 = *(v1 + 920);

  v18 = *(v16 + 8);
  v19 = v18(v14, v17);
  sub_92FF4(v19, v1 + 608);
  (v4)(v15, v3, v17);
  v20 = sub_16DBDC();
  v21 = sub_16E36C();
  v151 = v18;
  v152 = v3;
  if (sub_4B3A8(v21))
  {
    v22 = sub_8BD8();
    v23 = v4;
    v24 = sub_CA30();
    v154[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_3AB7C(0x776F6C466E69614DLL, 0xE800000000000000, v154);
    _os_log_impl(&def_259DC, v20, v21, "🏳️‍🌈=====Executing %s from WellnessFlowPlugin=====🏳️‍🌈", v22, 0xCu);
    sub_2D64(v24);
    v25 = v24;
    v4 = v23;
    v18 = v151;
    sub_8A2C(v25);
    v26 = v22;
    v3 = v152;
    sub_8A2C(v26);
  }

  v27 = sub_C9E0();
  v28 = (v18)(v27);
  sub_92FF4(v28, v1 + 632);
  v29 = sub_93094();
  v4(v29);
  v30 = sub_16DBDC();
  v31 = sub_16E36C();
  if (sub_38670(v31))
  {
    v32 = sub_1BA38();
    *v32 = 0;
    sub_4B3D0();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    sub_8A2C(v32);
  }

  v38 = *(v1 + 912);

  v39 = sub_C9E0();
  (v18)(v39);
  v40 = mach_absolute_time();
  v41 = sub_16E33C();
  sub_214C(v38, 1, 1, v41);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v40;
  sub_89C84(0, 0, v38, &unk_174498, v42);

  sub_16D21C();
  v43 = sub_16D20C();
  v44 = *(v1 + 920);
  if (v43)
  {
    v45 = *(v1 + 904);
    v46 = *(v1 + 896);
    v141 = *(v1 + 952);
    v143 = *(v1 + 888);
    v144 = *(v1 + 880);
    v149 = *(v1 + 920);
    v47 = *(v1 + 864);
    v48 = *(v1 + 856);
    *(v1 + 984) = sub_16D1FC();

    sub_ACC0C();
    sub_2440(&qword_1C8AB8, &qword_1744A0);
    v49 = swift_allocObject();
    *(v1 + 992) = v49;
    *(v49 + 16) = xmmword_1712E0;
    sub_16D24C();
    sub_16D23C();
    sub_16D82C();
    v50 = sub_16D81C();
    sub_92FF4(v50, v1 + 680);
    v147 = v4;
    (v4)(v141, v152, v149);
    v51 = *(v47 + 16);
    v51(v143, v45, v48);
    v51(v144, v46, v48);
    v52 = sub_16DBDC();
    v53 = sub_16E36C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v1 + 952);
    v56 = *(v1 + 920);
    v57 = *(v1 + 888);
    v145 = *(v1 + 880);
    v58 = *(v1 + 864);
    v59 = *(v1 + 856);
    if (v54)
    {
      v60 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v154[0] = v140;
      *v60 = 136315394;
      sub_92CD0(&qword_1C8AC0, &type metadata accessor for ExecutionLocation, &protocol conformance descriptor for ExecutionLocation);
      v142 = v56;
      log = v52;
      v138 = v55;
      v61 = sub_16E68C();
      v63 = v62;
      v64 = *(v58 + 8);
      v136 = v53;
      v65 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64(v57, v59);
      v66 = sub_3AB7C(v61, v63, v154);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v67 = sub_16E68C();
      v69 = v68;
      v64(v145, v59);
      v70 = sub_3AB7C(v67, v69, v154);

      *(v60 + 14) = v70;
      _os_log_impl(&def_259DC, log, v136, "ASR Location: %s, NL Location: %s", v60, 0x16u);
      swift_arrayDestroy();
      sub_8A2C(v140);
      sub_8A2C(v60);

      v71 = v142;
      v72 = v138;
    }

    else
    {

      v64 = *(v58 + 8);
      v65 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64(v145, v59);
      v64(v57, v59);
      v72 = sub_C9E0();
    }

    v151(v72, v71);
    *(v1 + 1000) = v64;
    sub_16D25C();
    sub_38B40();
    v86 = sub_16D22C();
    *(v1 + 1008) = v65;
    v87 = sub_C9E0();
    v88 = (v64)(v87);
    if (v86)
    {
      sub_16D24C();
      sub_38B40();
      v89 = sub_16D22C();
      v90 = sub_C9E0();
      v88 = (v64)(v90);
    }

    else
    {
      v89 = 0;
    }

    v91 = v89 & 1;
    *(v1 + 377) = v89 & 1;
    sub_92FF4(v88, v1 + 704);
    v92 = sub_93094();
    v147(v92);
    v93 = sub_16DBDC();
    v94 = sub_16E36C();
    if (sub_4B3A8(v94))
    {
      v95 = sub_93228();
      *v95 = 67109120;
      v95[1] = v91;
      sub_8420C();
      _os_log_impl(v96, v97, v98, v99, v100, 8u);
      sub_1BA00();
    }

    v101 = *(v1 + 944);
    v102 = *(v1 + 928);
    v103 = *(v1 + 920);
    v104 = *(v1 + 824);
    v105 = *(v1 + 808);
    v106 = *(v1 + 800);
    v107 = *(v1 + 736);

    v151(v101, v103);
    v108 = *(v105 + 16);
    *(v1 + 1016) = v108;
    *(v1 + 1024) = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108(v104, v107, v106);
    v110 = *(v105 + 88);
    v109 = v105 + 88;
    if (v110(v104, v106) == enum case for Parse.uso(_:))
    {
      v101 = *(v1 + 832);
      v104 = *(v1 + 792);
      v111 = *(v1 + 784);
      v112 = *(v1 + 776);
      (*(*(v1 + 808) + 96))(*(v1 + 824), *(v1 + 800));
      v113 = sub_38B40();
      v114(v113);
      sub_16C82C();
      v115 = sub_10E3DC();
      *(v1 + 1032) = v115;
      v116 = *(v111 + 8);
      v102 = v111 + 8;
      v116(v104, v112);
      if (v115)
      {

        v117 = swift_task_alloc();
        *(v1 + 1040) = v117;
        *v117 = v1;
        v117[1] = sub_8AFC0;

        return sub_15ADE4(v115);
      }

      v119 = (v1 + 848);
      v120 = v1 + 840;
      v121 = (v1 + 832);
    }

    else
    {
      v119 = (v1 + 824);
      v120 = v1 + 808;
      v121 = (v1 + 800);
    }

    (*(*v120 + 8))(*v119, *v121);
    v122 = *(v1 + 904);
    v123 = swift_task_alloc();
    v124 = sub_92F00(v123);

    if (v124)
    {
      v125 = sub_93208();
      v122 = sub_92F44(v125);
    }

    else
    {
    }

    sub_93184();
    v150 = v126;
    v153 = *(v1 + 904);
    v148 = *(v1 + 896);
    v146 = *(v1 + 856);
    sub_9306C();
    v139 = v127;
    v128 = *(v1 + 744);
    v129 = *(v1 + 736);
    v130(v102, v129, v109);
    v131 = type metadata accessor for MainFlow(0);
    sub_2D20((v129 + *(v131 + 20)), *(v129 + *(v131 + 20) + 24));
    v132 = sub_88100();
    v133(v132);
    sub_2D20((v1 + 384), *(v1 + 408));
    sub_88100();
    sub_16C3EC();
    sub_2D64((v1 + 384));
    sub_16BFEC();
    sub_16BFDC();
    (*(v104 + 8))(v101, v139);
    *(v1 + 448) = &type metadata for WellnessFeatureFlags;
    *(v1 + 456) = &off_1BD3B0;
    sub_930DC((v1 + 336));

    sub_8748(v128, &qword_1C8AA8, &qword_174480);
    (*(v122 + 8))(v102, v109);
    sub_2D64((v1 + 424));
    sub_8DC90((v1 + 504));
    sub_8DD40((v1 + 176));
    *(v1 + 568) = &type metadata for WellnessCATProvider;
    *(v1 + 576) = &off_1BD5D8;
    v134 = swift_allocObject();
    sub_9303C(v134);
    sub_C938(v1 + 176);
    sub_931CC();
    sub_16C4EC();

    sub_8E58C(v1 + 336);
    v150(v148, v146);
    v150(v153, v146);
    sub_2D64((v1 + 464));
  }

  else
  {
    v73 = *(v1 + 936);
    sub_92FF4(0, v1 + 656);
    (v4)(v73, v3, v44);
    v74 = sub_16DBDC();
    v75 = sub_16E37C();
    if (sub_4B3A8(v75))
    {
      v76 = sub_1BA38();
      sub_1BA50(v76);
      sub_8420C();
      _os_log_impl(v77, v78, v79, v80, v81, 2u);
      sub_1BA00();
    }

    v82 = *(v1 + 936);
    v83 = *(v1 + 920);
    v84 = *(v1 + 736);

    v18(v82, v83);
    v85 = type metadata accessor for MainFlow(0);
    sub_8284(v84 + *(v85 + 28), v1 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v1 + 16);
  }

  sub_92F78();

  sub_C9BC();

  return v135();
}

uint64_t sub_8AFC0()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_8B0C8);
}

uint64_t sub_8B0C8()
{
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];

  (*(v5 + 8))(v4, v6);
  v7 = v0[113];
  v8 = swift_task_alloc();
  LOBYTE(v4) = sub_92F00(v8);

  if (v4)
  {
    v9 = sub_93208();
    v7 = sub_92F44(v9);
  }

  else
  {
  }

  sub_93184();
  v24 = v10;
  v25 = v0[113];
  v23 = v0[112];
  v22 = v0[107];
  sub_9306C();
  v21 = v11;
  v12 = v0[93];
  v13 = v0[92];
  v14(v2, v13, v3);
  v15 = type metadata accessor for MainFlow(0);
  sub_2D20((v13 + *(v15 + 20)), *(v13 + *(v15 + 20) + 24));
  v16 = sub_88100();
  v17(v16);
  sub_2D20(v0 + 48, v0[51]);
  sub_88100();
  sub_16C3EC();
  sub_2D64(v0 + 48);
  sub_16BFEC();
  sub_16BFDC();
  (*(v1 + 8))(v6, v21);
  v0[56] = &type metadata for WellnessFeatureFlags;
  v0[57] = &off_1BD3B0;
  sub_930DC(v0 + 42);

  sub_8748(v12, &qword_1C8AA8, &qword_174480);
  (*(v7 + 8))(v2, v3);
  sub_2D64(v0 + 53);
  sub_8DC90(v0 + 63);
  sub_8DD40(v0 + 22);
  v0[71] = &type metadata for WellnessCATProvider;
  v0[72] = &off_1BD5D8;
  v18 = swift_allocObject();
  sub_9303C(v18);
  sub_C938((v0 + 22));
  sub_931CC();
  sub_16C4EC();

  sub_8E58C((v0 + 42));
  v24(v23, v22);
  v24(v25, v22);
  sub_2D64(v0 + 58);
  sub_92F78();

  sub_C9BC();

  return v19();
}

uint64_t sub_8B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_16DBEC();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_8B520);
}

uint64_t sub_8B520()
{
  v1 = v0[27];
  v2 = [objc_opt_self() sharedAnalytics];
  v0[33] = v2;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_8B674;
  v3 = swift_continuation_init();
  v0[17] = sub_2440(&qword_1C8B48, &unk_1744F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_8BAC0;
  v0[13] = &unk_1BAB48;
  v0[14] = v3;
  [v2 sensitiveCondition:4 startedAt:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8B674()
{
  sub_8A88();
  sub_C9D4();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 272) = v2;
  if (v2)
  {
    v3 = sub_8B914;
  }

  else
  {
    v3 = sub_8B77C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_8B77C()
{
  v1 = *(v0 + 280);

  v2 = sub_16DBBC();
  if (v1 == 1)
  {
    v3 = (v0 + 256);
    v4 = *(v0 + 256);
    sub_8B48(v2, v0 + 192);
    v5 = sub_931B8();
    v6(v5);
    v7 = sub_16DBDC();
    v8 = sub_16E36C();
    if (!sub_38670(v8))
    {
      goto LABEL_7;
    }

    v9 = sub_1BA38();
    *v9 = 0;
    v10 = "✅ Successfully enabled redaction of SELF messages for the Siri session";
  }

  else
  {
    v3 = (v0 + 248);
    v4 = *(v0 + 248);
    sub_8B48(v2, v0 + 168);
    v11 = sub_931B8();
    v12(v11);
    v7 = sub_16DBDC();
    v13 = sub_16E36C();
    if (!sub_38670(v13))
    {
      goto LABEL_7;
    }

    v9 = sub_1BA38();
    *v9 = 0;
    v10 = "🚨 Could not enable redaction of SELF messages for siri session, returning Generic Error 🚨";
  }

  _os_log_impl(&def_259DC, v7, v4, v10, v9, 2u);
  sub_8A2C(v9);
LABEL_7:

  (*(*(v0 + 232) + 8))(*v3, *(v0 + 224));

  sub_C9BC();

  return v14();
}

uint64_t sub_8B914(uint64_t a1)
{
  v2 = v1[33];
  swift_willThrow();

  v3 = sub_16DBBC();
  sub_8B48(v3, (v1 + 18));
  v4 = sub_38B40();
  v5(v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_8BD8();
    v9 = sub_93228();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    sub_4B3D0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_8A2C(v8);
  }

  else
  {
  }

  (*(v1[29] + 8))(v1[30], v1[28]);

  sub_C9BC();

  return v16();
}

uint64_t sub_8BAC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_2D20((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_C1FC0(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_C202C(v9, v4);
  }
}

void sub_8BB44(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v239 = a5;
  v264 = a4;
  v255 = a3;
  v244 = a2;
  v263 = a1;
  v262 = a6;
  v241 = sub_16BFCC();
  sub_42F0();
  v236 = v7;
  __chkstk_darwin(v8);
  sub_4304();
  v234 = v10 - v9;
  v238 = sub_2440(&qword_1C8B38, &qword_1744D0);
  sub_8B38();
  __chkstk_darwin(v11);
  v240 = &v233 - v12;
  v13 = sub_2440(&qword_1C8AA8, &qword_174480);
  v14 = sub_4348(v13);
  __chkstk_darwin(v14);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v15);
  sub_45590(&v233 - v16);
  v252 = sub_16C89C();
  sub_42F0();
  v251 = v17;
  __chkstk_darwin(v18);
  sub_4304();
  sub_45590(v20 - v19);
  v257 = sub_16C83C();
  sub_42F0();
  v258 = v21;
  __chkstk_darwin(v22);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v23);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v24);
  sub_45590(&v233 - v25);
  v261 = sub_16C80C();
  sub_42F0();
  v265 = v26;
  __chkstk_darwin(v27);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v28);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v29);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v30);
  sub_45590(&v233 - v31);
  v32 = sub_16DBEC();
  sub_42F0();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v36);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v37);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v38);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v39);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v40);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v41);
  sub_8AC0();
  sub_13058();
  v43 = __chkstk_darwin(v42);
  v45 = &v233 - v44;
  __chkstk_darwin(v43);
  sub_76B1C();
  __chkstk_darwin(v46);
  v48 = &v233 - v47;
  v49 = sub_16DBBC();
  sub_8B48(v49, v278);
  v50 = *(v34 + 16);
  v266 = v49;
  v267 = v32;
  v270 = v34 + 16;
  v269 = v50;
  v50(v48, v49, v32);
  v51 = sub_16DBDC();
  v52 = sub_16E36C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = sub_93228();
    *v53 = 67109120;
    v274 = &type metadata for WellnessFeatureFlagsKey;
    v275 = sub_3736C();
    v49 = v34;
    v54 = sub_93100(2);
    sub_2D64(&v273);
    v55 = v54 & 1;
    v34 = v49;
    *(v53 + 4) = v55;
    _os_log_impl(&def_259DC, v51, v52, "Server Fallback is Enabled: %{BOOL}d", v53, 8u);
    sub_8A2C(v53);
  }

  v56 = *(v34 + 8);
  sub_93088();
  v56();
  sub_8B48(v266, v277);
  sub_92E48();
  v57();
  v58 = v264;

  v59 = sub_16DBDC();
  v60 = sub_16E36C();

  v61 = os_log_type_enabled(v59, v60);
  v268 = v34 + 8;
  if (v61)
  {
    v62 = sub_8BD8();
    v63 = sub_CA30();
    v273 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_3AB7C(v255, v58, &v273);
    _os_log_impl(&def_259DC, v59, v60, "localeIdentifier received in plugin is: %s", v62, 0xCu);
    sub_2D64(v63);
    sub_92EBC();
    sub_8A2C(v62);
  }

  (v56)(v6, v49);
  v64 = v56;
  v65 = v266;
  sub_8B48(v266, v276);
  sub_92E30();
  v66();
  v67 = sub_16DBDC();
  v68 = sub_16E36C();
  v69 = sub_4B3A8(v68);
  v70 = v263;
  v71 = v259;
  if (v69)
  {
    v72 = sub_93228();
    *v72 = 67109120;
    v274 = &type metadata for WellnessFeatureFlagsKey;
    v275 = sub_3736C();
    v73 = sub_93100(3);
    sub_2D64(&v273);
    v74 = v73 & 1;
    v49 = v267;
    v72[1] = v74;
    sub_8420C();
    _os_log_impl(v75, v76, v77, v78, v79, 8u);
    sub_92EBC();
  }

  v260 = v64;
  (v64)(v45, v49);
  v274 = &type metadata for WellnessFeatureFlagsKey;
  v80 = sub_3736C();
  v275 = v80;
  v81 = sub_93100(3);
  sub_2D64(&v273);
  v274 = &type metadata for WellnessFeatureFlagsKey;
  v275 = v80;
  v82 = sub_93100(2);
  sub_2D64(&v273);
  v83 = v261;
  if (v82 & 1) != 0 && (sub_16D7DC())
  {
    sub_92EE0();
    sub_92E30();
    v84();
    v85 = *(v265 + 2);
    v86 = v247;
    v85(v247, v70, v83);
    v87 = sub_16DBDC();
    v88 = sub_16E36C();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = sub_8BD8();
      v90 = sub_CA30();
      v272 = v90;
      *v89 = 136315138;
      v85(v253, v86, v83);
      v91 = sub_16E1EC();
      v93 = v92;
      v94 = sub_93010();
      v95(v94);
      v96 = sub_3AB7C(v91, v93, &v272);

      *(v89 + 4) = v96;
      sub_92F38();
      _os_log_impl(v97, v98, v99, v100, v89, 0xCu);
      sub_2D64(v90);
      sub_8A2C(v90);
      sub_92FCC();
    }

    else
    {

      v150 = sub_93010();
      v151(v150);
    }

    sub_93170();
    v152();
    v149 = v262;
    *v262 = 2;
    *(v149 + 1) = 0u;
    *(v149 + 3) = 0u;
LABEL_23:
    *(v149 + 40) = 5;
    return;
  }

  v101 = *(v265 + 2);
  v101(v71, v70, v83);
  v102 = sub_93010();
  if (v103(v102) != enum case for Parse.uso(_:))
  {
    v134 = sub_93010();
    v135(v134);
LABEL_17:
    sub_92EE0();
    sub_92E30();
    v136();
    v137 = v254;
    v101(v254, v70, v83);
    v138 = sub_16DBDC();
    v139 = sub_16E37C();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = sub_8BD8();
      v141 = sub_CA30();
      v272 = v141;
      *v140 = 136315138;
      v101(v253, v137, v83);
      v142 = sub_16E1EC();
      v144 = v143;
      sub_13094();
      v145(v137, v83);
      v146 = sub_3AB7C(v142, v144, &v272);

      *(v140 + 4) = v146;
      _os_log_impl(&def_259DC, v138, v139, "Scribe received unsupported parse: %s", v140, 0xCu);
      sub_2D64(v141);
      sub_8A2C(v141);
      sub_8A2C(v140);
    }

    else
    {

      sub_13094();
      v147(v137, v83);
    }

    sub_93170();
    v148();
    v149 = v262;
    v262[4] = 0;
    *v149 = 0u;
    *(v149 + 1) = 0u;
    goto LABEL_23;
  }

  LODWORD(v249) = v81;
  v104 = v65;
  v247 = v80;
  v105 = sub_93010();
  v106(v105);
  sub_93124();
  v107 = v256;
  v108 = v71;
  v109 = v83;
  v110 = v257;
  (*(v81 + 32))(v256, v108, v257);
  v111 = v250;
  sub_16C82C();
  v112 = sub_10E3DC();
  sub_13094();
  v113(v111, v252);
  v259 = v112;
  if (!v112)
  {
    (*(v81 + 8))(v107, v110);
    v83 = v109;
    sub_93088();
    goto LABEL_17;
  }

  v114 = v104;
  sub_8B48(v104, &v272);
  v115 = v248;
  sub_93088();
  sub_92E48();
  v116();
  v117 = *(v81 + 16);
  v118 = v245;
  v117(v245, v107, v110);
  v119 = sub_16DBDC();
  v120 = sub_16E36C();
  if (sub_387B0(v120))
  {
    v121 = sub_8BD8();
    v104 = sub_CA30();
    v273 = v104;
    *v121 = 136315138;
    v117(v243, v118, v110);
    v122 = sub_16E1EC();
    v124 = v123;
    v125 = sub_93010();
    v265 = v126;
    v126(v125);
    v127 = sub_3AB7C(v122, v124, &v273);

    *(v121 + 4) = v127;
    sub_92F38();
    _os_log_impl(v128, v129, v130, v131, v121, 0xCu);
    sub_2D64(v104);
    sub_93088();
    sub_8A2C(v132);
    sub_92FCC();

    v133 = v248;
  }

  else
  {

    v153 = sub_93010();
    v265 = v154;
    v154(v153);
    v133 = v115;
  }

  v155 = v260;
  (v260)(v133, v104);
  v156 = v259;
  sub_8B48(v114, v271);
  v157 = v246;
  sub_92E30();
  v158();
  swift_retain_n();
  v159 = sub_16DBDC();
  v160 = sub_16E36C();

  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_8BD8();
    v162 = sub_CA30();
    v273 = v162;
    *v161 = 136315138;

    sub_B41D0();
    v164 = v163;
    v166 = v165;

    v104 = sub_3AB7C(v164, v166, &v273);

    *(v161 + 4) = v104;
    sub_93088();
    sub_92F38();
    _os_log_impl(v167, v168, v169, v170, v161, 0xCu);
    sub_2D64(v162);
    sub_92EBC();
    sub_92FCC();
  }

  (v155)(v157, v104);
  v171 = v262;
  sub_93124();
  if (((AFDeviceSupportsSiriUOD() | v249) & 1) == 0)
  {
    sub_92EE0();
    sub_92E30();
    v183();
    v184 = sub_16DBDC();
    v185 = sub_16E37C();
    if (sub_387B0(v185))
    {
      v186 = sub_1BA38();
      sub_1BA50(v186);
      sub_4593C(&def_259DC, v187, v188, "⚠️ This device does not support Siri X, we are going to provide the legacy experience ⚠️");
      sub_92EBC();
    }

    v189 = &v273;
    goto LABEL_47;
  }

  if (((v244 | v249) & 1) == 0)
  {
    v193 = sub_92E5C();
    v194(v193);

    v171[4] = 0;
    *v171 = 0u;
    *(v171 + 1) = 0u;
LABEL_50:
    v192 = 5;
    goto LABEL_51;
  }

  v172 = v255 == 0x53552D6E65 && v264 == 0xE500000000000000;
  if (v172)
  {
    v182 = v171;
    LODWORD(v264) = 1;
    v181 = v242;
  }

  else
  {
    sub_16E6BC();
    sub_9315C();
    v177 = v175 == 0x4E432D687ALL && v174 == 0xE500000000000000;
    v178 = 1;
    if ((v173 & 1) == 0 && !v177)
    {
      sub_16E6BC();
      sub_9315C();
      v178 = v179;
    }

    LODWORD(v264) = v178;
    v180 = sub_16E6BC();
    v181 = v242;
    if ((v180 & 1) == 0)
    {
LABEL_63:
      sub_93124();
      if (v264)
      {
        v199 = 0;
        v200 = 1;
        goto LABEL_67;
      }

      goto LABEL_72;
    }

    v182 = v171;
  }

  sub_16BFBC();
  v195 = v241;
  sub_214C(v181, 0, 1, v241);
  v196 = *(v238 + 48);
  v197 = v181;
  v198 = v240;
  sub_74678(v239, v240, &qword_1C8AA8, &qword_174480);
  sub_74678(v197, v198 + v196, &qword_1C8AA8, &qword_174480);
  sub_7DEB0(v198);
  if (v172)
  {
    sub_8748(v197, &qword_1C8AA8, &qword_174480);
    sub_7DEB0(v198 + v196);
    v156 = v259;
    v171 = v182;
    if (v172)
    {
      sub_8748(v198, &qword_1C8AA8, &qword_174480);
      v199 = 1;
      sub_93124();
      v200 = v264;
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  v201 = v235;
  sub_74678(v198, v235, &qword_1C8AA8, &qword_174480);
  sub_7DEB0(v198 + v196);
  v171 = v182;
  if (v202)
  {
    sub_8748(v242, &qword_1C8AA8, &qword_174480);
    sub_13094();
    v203(v201, v195);
    v156 = v259;
LABEL_62:
    sub_8748(v198, &qword_1C8B38, &qword_1744D0);
    goto LABEL_63;
  }

  v204 = v236;
  v205 = v198 + v196;
  v206 = v201;
  v207 = v234;
  (*(v236 + 32))(v234, v205, v195);
  sub_92CD0(&qword_1C8B40, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
  v208 = v198;
  v209 = v195;
  v210 = sub_16E19C();
  v104 = *(v204 + 8);
  (v104)(v207, v209);
  sub_8748(v242, &qword_1C8AA8, &qword_174480);
  (v104)(v206, v209);
  sub_93088();
  sub_8748(v208, &qword_1C8AA8, &qword_174480);
  v200 = v264;
  v156 = v259;
  if (((v264 | v210) & 1) == 0)
  {
LABEL_72:
    sub_92EE0();
    sub_92E30();
    v215();
    v216 = sub_16DBDC();
    v217 = sub_16E37C();
    if (sub_387B0(v217))
    {
      v218 = sub_1BA38();
      sub_1BA50(v218);
      sub_4593C(&def_259DC, v219, v220, "⚠️ Locale not supported for Scribe or Meds, going to legacy experience ⚠️");
      sub_92EBC();
    }

    v189 = v271;
LABEL_47:
    (v155)(*(v189 - 32), v104);
LABEL_48:
    v171[3] = &type metadata for WellnessTask;
    v171[4] = sub_4B0B0();

    *v171 = v156;
    v190 = sub_92E5C();
    v191(v190);
    v192 = 4;
    goto LABEL_51;
  }

  v199 = v264 ^ 1 | v210;
LABEL_67:
  v274 = &type metadata for WellnessFeatureFlagsKey;
  v275 = v247;
  LOBYTE(v273) = 0;
  v211 = sub_16C86C();
  sub_2D64(&v273);
  if ((v211 & 1) == 0)
  {
    sub_92EE0();
    sub_92E30();
    v221();
    v222 = sub_16DBDC();
    v223 = sub_16E37C();
    if (sub_387B0(v223))
    {
      v224 = sub_1BA38();
      sub_1BA50(v224);
      sub_4593C(&def_259DC, v225, v226, "⚠️ Scribe feature flag is disabled, going to legacy experience ⚠️");
      sub_1BA00();
    }

    (v155)(v237, v104);
    goto LABEL_48;
  }

  if (isMedicationRequest(from:)())
  {
    v274 = &type metadata for WellnessFeatureFlagsKey;
    v275 = v247;
    v212 = sub_93100(1);

    v213 = sub_92E5C();
    v214(v213);
    sub_2D64(&v273);
    if ((v212 & 1) == 0)
    {
      sub_931A4(3);
      *(v171 + 40) = 5;

      return;
    }

    if (v199)
    {
      *v171 = v156;
      v192 = 1;
      goto LABEL_51;
    }

    sub_931A4(1);
    goto LABEL_50;
  }

  if ((v200 & 1) == 0)
  {
    v171[3] = &type metadata for WellnessTask;
    v171[4] = sub_4B0B0();

    *v171 = v156;
    v228 = sub_92E5C();
    v229(v228);
    *(v171 + 40) = 0;
    return;
  }

  sub_B34E4(v156);
  sub_B2EA4();
  if (v227 != 270)
  {
    sub_140650(v227);
  }

  sub_16D73C();

  v230 = sub_16D80C();
  v171[3] = &type metadata for WellnessTask;
  v171[4] = sub_4B0B0();

  *v171 = v156;
  v231 = sub_92E5C();
  v232(v231);
  if (v230)
  {
    v192 = 2;
  }

  else
  {
    v192 = 3;
  }

LABEL_51:
  *(v171 + 40) = v192;
}

uint64_t sub_8D1C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v126 = a4;
  v127 = a2;
  v128 = a3;
  v129 = a5;
  v7 = sub_16D63C();
  v8 = sub_4348(v7);
  __chkstk_darwin(v8);
  sub_4304();
  v125[1] = v10 - v9;
  v130 = sub_16DBEC();
  sub_42F0();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v125 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v125 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v125 - v24;
  __chkstk_darwin(v23);
  sub_76B1C();
  v27 = __chkstk_darwin(v26);
  v29 = v125 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v125 - v31;
  __chkstk_darwin(v30);
  v34 = v125 - v33;
  sub_8E5BC(a1, &v132);
  v35 = v132;
  switch(v137)
  {
    case 1:
      v75 = sub_16DBBC();
      sub_8B48(v75, v131);
      sub_92FE8();
      v76 = v130;
      v77(v5, v75, v130);
      v78 = sub_16DBDC();
      v79 = sub_16E36C();
      if (sub_38670(v79))
      {
        v80 = sub_1BA38();
        *v80 = 0;
        _os_log_impl(&def_259DC, v78, v29, "Meds checks passed, getting flow.", v80, 2u);
        sub_92FCC();
      }

      (*(v12 + 8))(v5, v76);
      v81 = sub_90F80(v35, v127, v128);
      v82 = sub_16C28C();
      v83 = v129;
      v129[3] = v82;
      v83[4] = &protocol witness table for AnyFlow;

      *v83 = v81;
      break;
    case 2:
      v55 = sub_93130();
      sub_92FAC(v55);
      sub_92FE8();
      sub_930B4();
      v56();
      v57 = sub_16DBDC();
      v58 = sub_16E36C();
      if (sub_387B0(v58))
      {
        v59 = sub_1BA38();
        sub_1BA50(v59);
        sub_4593C(&def_259DC, v60, v61, "Parse has moodLogging identifier, returning MoodLoggingPunchoutFlow.");
        sub_1BA00();
      }

      (*(v12 + 8))(v25, v16);
      sub_930C4(&type metadata for MoodPunchoutFlow);
      *(v25 + 4) = sub_9218C();
      sub_93118();
      v62 = swift_allocObject();
      v63 = sub_930D0(v62);
      sub_8388(v126, v63 + 56);
      sub_8284(v128, v57 + 96);
      sub_8388(v127, v57 + 256);
      result = sub_17464(v131, v57 + 16);
      break;
    case 3:
      v64 = sub_93130();
      sub_92FAC(v64);
      sub_92FE8();
      sub_930B4();
      v65();
      v66 = sub_16DBDC();
      v67 = sub_16E36C();
      if (sub_387B0(v67))
      {
        v68 = sub_1BA38();
        sub_1BA50(v68);
        sub_4593C(&def_259DC, v69, v70, "Healthkit-related utterance, getting flow.");
        sub_1BA00();
      }

      (*(v12 + 8))(v22, v16);
      v71 = sub_2D20(v126, v126[3]);
      v72 = sub_915E4(v131, v127, *v71, v71[1], v71[2], v71[3], v128);
      v73 = sub_16C28C();
      v74 = v129;
      v129[3] = v73;
      v74[4] = &protocol witness table for AnyFlow;
      *v74 = v72;
      goto LABEL_14;
    case 4:
      v47 = sub_93130();
      sub_92FAC(v47);
      sub_92FE8();
      sub_930B4();
      v48();
      v49 = sub_16DBDC();
      v50 = sub_16E36C();
      if (sub_387B0(v50))
      {
        v51 = sub_1BA38();
        sub_1BA50(v51);
        sub_4593C(&def_259DC, v52, v53, "Executing Legacy behavior");
        sub_1BA00();
      }

      (*(v12 + 8))(v19, v16);
      sub_930C4(&type metadata for LegacyFlow);
      *(v19 + 4) = sub_3BD14();
      v54 = swift_allocObject();
      sub_930D0(v54);
      sub_8388(v131, (v49 + 2));
      sub_8388(v127, (v49 + 7));
      sub_8388(v126, (v49 + 12));
      sub_8284(v128, (v49 + 17));
      v49[37] = &off_1B8558;
LABEL_14:
      result = sub_2D64(v131);
      break;
    case 5:
      if (v135 | v136 | v132 | v134 | v133)
      {
        v84 = v135 | v136 | v134 | v133;
        if (v132 != 1 || v84)
        {
          if (v132 != 2 || v84)
          {
            v109 = sub_16DBBC();
            sub_8B48(v109, v131);
            sub_92FE8();
            sub_930A4();
            v110();
            v111 = sub_16DBDC();
            v112 = sub_16E36C();
            if (sub_387B0(v112))
            {
              v113 = sub_1BA38();
              sub_1BA50(v113);
              sub_4593C(&def_259DC, v114, v115, "Meds checks didn't pass, returning UnavailableDataFlow.");
              sub_1BA00();
            }

            (*(v12 + 8))(v16, v5);
            v116 = type metadata accessor for UnavailableDataFlow(0);
            v117 = v129;
            v129[3] = v116;
            v117[4] = sub_92CD0(&qword_1C57C8, type metadata accessor for UnavailableDataFlow, &unk_179388);
            v118 = sub_9910(v117);
            v119 = v116[5];
            v120 = sub_16BD9C();
            sub_214C(v118 + v119, 1, 1, v120);
            sub_8388(v127, v118 + v116[6]);
            sub_8284(v128, v118 + v116[7]);
            v121 = sub_16C58C();
            swift_allocObject();
            v122 = sub_16C57C();
            v123 = (v118 + v116[8]);
            v123[3] = v121;
            v123[4] = &protocol witness table for ResponseFactory;
            *v123 = v122;
            type metadata accessor for WellnessCATsSimple(0);
            sub_16D62C();
            v124 = sub_16D5FC();
            type metadata accessor for WellnessCATs(0);
            sub_16D62C();
            result = sub_16D58C();
            *v118 = 88;
            *(v118 + v116[9]) = v124;
            *(v118 + v116[10]) = result;
          }

          else
          {
            v108 = v129;
            v129[3] = &type metadata for ServerFallbackFlow;
            result = sub_923B8();
            v108[4] = result;
          }
        }

        else
        {
          v85 = sub_16DBBC();
          sub_8B48(v85, v131);
          sub_92FE8();
          v86(v32, v85, v130);
          v87 = sub_16DBDC();
          v88 = sub_16E37C();
          if (sub_387B0(v88))
          {
            v89 = sub_1BA38();
            sub_1BA50(v89);
            sub_4593C(&def_259DC, v90, v91, "This is an unsupported Siri locale or Device Region for Meds");
            sub_1BA00();
          }

          (*(v12 + 8))(v32, v130);
          sub_930C4(&type metadata for RegionNotSupportedForMedsFlow);
          *(v32 + 4) = sub_92270();
          v92 = swift_allocObject();
          v93 = sub_930D0(v92);
          sub_8388(v127, v93 + 16);
          sub_8284(v128, (v87 + 7));
          v94 = sub_16C58C();
          swift_allocObject();
          v95 = sub_16C57C();
          v87[30] = v94;
          v87[31] = &protocol witness table for ResponseFactory;
          v87[27] = v95;
          type metadata accessor for WellnessCATs(0);
          sub_16D62C();
          sub_93198();
          v96 = sub_16D58C();
          type metadata accessor for WellnessCATsSimple(0);
          sub_16D62C();
          sub_93198();
          result = sub_16D5FC();
          v87[32] = v96;
          v87[33] = result;
        }
      }

      else
      {
        v97 = sub_16DBBC();
        sub_8B48(v97, v131);
        sub_92FE8();
        sub_930A4();
        v98();
        v99 = sub_16DBDC();
        v100 = sub_16E37C();
        if (sub_387B0(v100))
        {
          v101 = sub_1BA38();
          *v101 = 0;
          sub_92F38();
          _os_log_impl(v102, v103, v104, v105, v101, 2u);
          sub_92FCC();
        }

        (*(v12 + 8))(v29, v5);
        sub_930C4(&type metadata for GenericNotSupportedFlow);
        *(v29 + 4) = sub_17358();
        v106 = swift_allocObject();
        v107 = sub_930D0(v106);
        result = sub_8284(v128, v107 + 16);
        v99[176] = 0;
      }

      break;
    default:
      v36 = sub_93130();
      sub_92FAC(v36);
      sub_92FE8();
      sub_930A4();
      v37();
      v38 = sub_16DBDC();
      v39 = sub_16E37C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = sub_1BA38();
        *v40 = 0;
        _os_log_impl(&def_259DC, v38, v39, "This is an unsupported Siri locale", v40, 2u);
        sub_92FCC();
      }

      (*(v12 + 8))(v34, v5);
      sub_930C4(&type metadata for RegionNotSupportedFlow);
      *(v34 + 4) = sub_92310();
      v41 = swift_allocObject();
      sub_930D0(v41);
      sub_8388(v131, &v38[2]);
      sub_8388(v127, &v38[7]);
      sub_8284(v128, &v38[12]);
      v42 = sub_16C58C();
      swift_allocObject();
      v43 = sub_16C57C();
      v38[35].isa = v42;
      v38[36].isa = &protocol witness table for ResponseFactory;
      v38[32].isa = v43;
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      sub_93198();
      v44 = sub_16D58C();
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      sub_93198();
      v45 = sub_16D5FC();
      result = sub_2D64(v131);
      v38[37].isa = v44;
      v38[38].isa = v45;
      break;
  }

  return result;
}

uint64_t sub_8DC90@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  sub_93118();
  *a1 = swift_allocObject();
  return sub_16D7BC();
}

uint64_t sub_8DD40@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  __chkstk_darwin(v3);
  sub_4304();
  sub_C1F30(a1);
  v4 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  v5 = sub_16D58C();
  a1[8] = v4;
  a1[9] = &off_1BA5B0;
  a1[5] = v5;
  v6 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  v7 = sub_16D58C();
  a1[13] = v6;
  a1[14] = &off_1BC5D0;
  a1[10] = v7;
  v8 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v8;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_8DE3C()
{
  if (v0[5])
  {
    sub_2D64(v0 + 2);
  }

  if (v0[10])
  {
    sub_2D64(v0 + 7);
  }

  if (v0[15])
  {
    sub_2D64(v0 + 12);
  }

  if (v0[20])
  {
    sub_2D64(v0 + 17);
  }

  if (v0[25])
  {
    sub_2D64(v0 + 22);
  }

  if (v0[30])
  {
    sub_2D64(v0 + 27);
  }

  if (v0[35])
  {
    sub_2D64(v0 + 32);
  }

  sub_93118();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_8DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16C80C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_8DFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_16C80C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MainFlow(uint64_t a1)
{
  result = qword_1C8A58;
  if (!qword_1C8A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8E0A8(uint64_t a1)
{
  result = sub_16C80C();
  if (v2 <= 0x3F)
  {
    result = sub_8E16C(319, &qword_1C8A68, &protocol descriptor for FlowConfigurable);
    if (v3 <= 0x3F)
    {
      result = sub_8E16C(319, &unk_1C8A70, &protocol descriptor for WellnessCATProviding);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_8E16C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_8E1C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_89FF4();
}

uint64_t sub_8E25C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_8E354;

  return v6(a1);
}

uint64_t sub_8E354()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_C9BC();

  return v3();
}

uint64_t sub_8E438()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8E470(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_384A8(v6);
  *v7 = v8;
  v7[1] = sub_C6F0;

  return sub_8B448(a1, v3, v4, v5);
}

uint64_t sub_8E53C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8E5F4()
{
  sub_92E78();
  sub_2D64((v0 + 216));
  sub_2D64((v0 + 256));

  return _swift_deallocObject(v0, 304, 7);
}

uint64_t sub_8E640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = sub_16D6BC();
  __chkstk_darwin(v28);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2440(&qword_1C6850, &unk_172440);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v30[3] = &type metadata for WellnessCATProvider;
  v30[4] = &off_1BD5D8;
  v16 = swift_allocObject();
  v30[0] = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v17 = sub_2D20(v30, &type metadata for WellnessCATProvider);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];

  sub_1508BC(v18, v19, v20, v21);
  sub_6276C();

  sub_74678(v15, v13, &qword_1C6850, &unk_172440);
  sub_8388(v27, v29);
  v22 = v26;
  sub_16D6AC();
  sub_92CD0(&qword_1C6860, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
  v23 = sub_16C32C();
  sub_92AE0(v22);
  sub_8748(v15, &qword_1C6850, &unk_172440);
  sub_2D64(v30);
  return v23;
}

uint64_t sub_8E8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a7;
  v85 = a2;
  v12 = sub_16D63C();
  __chkstk_darwin(v12 - 8);
  v82 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_16DBEC();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = __chkstk_darwin(v14);
  v78 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v78 - v17;
  v104 = &type metadata for WellnessCATProvider;
  v105 = &off_1BD5D8;
  v18 = swift_allocObject();
  v103[0] = v18;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = a1;
  v84 = a1;
  v20 = a1[3];
  v21 = v19[4];
  sub_2D20(v19, v20);
  v22 = *(v21 + 24);

  v23 = v22(v20, v21);
  v24 = v84;
  LOWORD(a3) = v23;
  v25 = v84[3];
  v26 = v84[4];
  sub_2D20(v84, v25);
  v27 = (*(v26 + 16))(v25, v26);
  switch(sub_2C74(a3 | (v27 << 16) | 0x2000000))
  {
    case 1u:
      sub_8388(v24, v95);
      sub_8388(v85, &v95[5]);
      sub_8284(v83, &v95[10]);
      v59 = sub_16D99C();
      memset(v93, 0, sizeof(v93));
      v94 = 0;
      v60 = objc_allocWithZone(v59);
      v96 = sub_16D98C();
      strcpy(v97, "* ");
      type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_16D62C();
      v98 = sub_16D5FC();
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v93[0] = sub_16C1AC();
      sub_16C29C();
      sub_926BC();
      v61 = sub_16C35C();
      sub_92710(v95);

      v95[0] = v61;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v46 = sub_16C32C();
      goto LABEL_22;
    case 2u:
      sub_8388(v24, v93);
      sub_8388(v85, v92);
      sub_8284(v83, v95);
      v47 = sub_16DAAC();
      v89 = 0u;
      v90 = 0u;
      v91 = 0;
      v48 = objc_allocWithZone(v47);
      v49 = sub_16DA9C();
      type metadata accessor for LogBloodPressureFlow();
      v50 = swift_allocObject();
      type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_16D62C();
      *(v50 + 280) = sub_16D5FC();
      *(v50 + 288) = 82;
      sub_8388(v93, v50 + 16);
      sub_8388(v92, v50 + 56);
      sub_8284(v95, v50 + 96);
      *(v50 + 256) = v49;
      v51 = [objc_allocWithZone(sub_16D97C()) init];
      sub_C938(v95);
      sub_2D64(v92);
      sub_2D64(v93);
      *(v50 + 264) = v51;
      *(v50 + 272) = 0;
      v95[0] = v50;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v93[0] = sub_16C1AC();
      sub_16C29C();
      v52 = &qword_1C8800;
      v53 = type metadata accessor for LogBloodPressureFlow;
      v54 = &protocol conformance descriptor for LogBloodPressureFlow;
      goto LABEL_21;
    case 3u:
      sub_8388(v24, v95);
      sub_8388(v85, &v95[5]);
      sub_8284(v83, &v95[10]);
      v55 = sub_16C58C();
      swift_allocObject();
      v56 = sub_16C57C();
      v99 = v55;
      v100 = &protocol witness table for ResponseFactory;
      v96 = v56;
      type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_16D62C();
      v57 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v58 = sub_16D58C();
      v101 = v57;
      v102 = v58;
      sub_17858();
      v46 = sub_16C32C();
      sub_83B2C(v95);
      goto LABEL_23;
    case 4u:
      v38 = sub_16DBBC();
      swift_beginAccess();
      v40 = v79;
      v39 = v80;
      v41 = v81;
      (*(v80 + 16))(v79, v38, v81);
      v42 = sub_16DBDC();
      v43 = sub_16E37C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&def_259DC, v42, v43, "Intent has nil dataType, aborting loggingFlowFor.", v44, 2u);
      }

      (*(v39 + 8))(v40, v41);
      v45 = sub_2D20(v103, v104);
      v46 = sub_8E640(v85, *v45, v45[1], v45[2], v45[3]);
      goto LABEL_23;
    default:
      v28 = v24[3];
      v29 = v24[4];
      sub_2D20(v24, v28);
      v30 = (*(v29 + 24))(v28, v29);
      if (v30 == 270 || (v31 = v30, sub_16D74(), v32 = sub_16E14C(), v33 = sub_1730C(v31, v32), , v33 == 205))
      {
        v65 = sub_16DBBC();
        swift_beginAccess();
        (*(v80 + 16))(v78, v65, v81);
        sub_8388(v24, v95);
        v66 = sub_16DBDC();
        v67 = sub_16E37C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v92[0] = v69;
          *v68 = 136315138;
          v70 = v95[3];
          v71 = v95[4];
          sub_2D20(v95, v95[3]);
          LOWORD(v89) = (*(v71 + 24))(v70, v71);
          sub_2440(&qword_1C5790, &unk_16F3B0);
          v72 = sub_16E3DC();
          v74 = v73;
          sub_2D64(v95);
          v75 = sub_3AB7C(v72, v74, v92);

          *(v68 + 4) = v75;
          _os_log_impl(&def_259DC, v66, v67, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow", v68, 0xCu);
          sub_2D64(v69);

          (*(v80 + 8))(v78, v81);
        }

        else
        {

          (*(v80 + 8))(v78, v81);
          sub_2D64(v95);
        }

        *&v92[0] = 0;
        *(&v92[0] + 1) = 0xE000000000000000;
        sub_16E47C(72);
        v76 = v24[3];
        v77 = v24[4];
        sub_2D20(v24, v76);
        LOWORD(v89) = (*(v77 + 24))(v76, v77);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v106._countAndFlagsBits = sub_16E3DC();
        sub_16E26C(v106);

        v107._object = 0x800000000017EBB0;
        v107._countAndFlagsBits = 0xD000000000000046;
        sub_16E26C(v107);
        sub_16E53C();
        __break(1u);
        JUMPOUT(0x8F4E8);
      }

      sub_8388(v24, v93);
      sub_8388(v85, v92);
      sub_8284(v83, v95);
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v34 = sub_16D9FC();
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
      v35 = objc_allocWithZone(v34);
      v36 = sub_16D9EC();
      type metadata accessor for LogHealthKitQuantityFlow();
      v37 = swift_allocObject();
      *(v37 + 336) = 3;
      *(v37 + 16) = v33;
      sub_17464(v93, v37 + 24);
      sub_8388(v92, v37 + 64);
      sub_8284(v95, v37 + 104);
      *(v37 + 264) = v36;
      if (*(&v90 + 1))
      {
        sub_C938(v95);
        sub_2D64(v92);
        sub_17464(&v89, &v86);
      }

      else
      {
        *(&v87 + 1) = &type metadata for CorrectionsFlowProvider;
        v88 = &off_1BB308;
        v62 = swift_allocObject();
        *&v86 = v62;
        sub_17464(v92, v62 + 16);
        memcpy((v62 + 56), v95, 0xA0uLL);
        if (*(&v90 + 1))
        {
          sub_8748(&v89, &qword_1C6C18, &unk_1744C0);
        }
      }

      sub_17464(&v86, v37 + 272);
      *(v37 + 312) = 0;
      *(v37 + 320) = 0;
      *(v37 + 328) = 1;
      v95[0] = v37;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v93[0] = sub_16C1AC();
      sub_16C29C();
      v52 = &qword_1C6C20;
      v53 = type metadata accessor for LogHealthKitQuantityFlow;
      v54 = &protocol conformance descriptor for LogHealthKitQuantityFlow;
LABEL_21:
      sub_92CD0(v52, v53, v54);
      v63 = sub_16C35C();

      v95[0] = v63;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v46 = sub_16C32C();
LABEL_22:

LABEL_23:
      sub_2D64(v103);
      return v46;
  }
}

uint64_t sub_8F4FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v201 = a7;
  v202 = a2;
  v12 = sub_16D63C();
  __chkstk_darwin(v12 - 8);
  v200 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_16DBEC();
  v203 = *(v14 - 8);
  v204 = v14;
  v15 = __chkstk_darwin(v14);
  v199 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v198 = &v192 - v18;
  v19 = __chkstk_darwin(v17);
  v192 = &v192 - v20;
  v21 = __chkstk_darwin(v19);
  v197 = &v192 - v22;
  v23 = __chkstk_darwin(v21);
  v196 = &v192 - v24;
  v25 = __chkstk_darwin(v23);
  v195 = &v192 - v26;
  v27 = __chkstk_darwin(v25);
  v193 = &v192 - v28;
  __chkstk_darwin(v27);
  v194 = &v192 - v29;
  v230 = &type metadata for WellnessCATProvider;
  v231 = &off_1BD5D8;
  v30 = swift_allocObject();
  v229[0] = v30;
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = a5;
  v30[5] = a6;
  v31 = a1;
  v205 = a1;
  v33 = a1[3];
  v32 = a1[4];
  sub_2D20(v31, v33);
  v34 = *(v32 + 24);

  v35 = v34(v33, v32);
  v36 = v205;
  LOWORD(a4) = v35;
  v37 = v205[3];
  v38 = v205[4];
  sub_2D20(v205, v37);
  (*(v38 + 2))(v37, v38);
  switch(sub_27C4(a4))
  {
    case 1u:
      v102 = sub_16DBBC();
      swift_beginAccess();
      v103 = v203;
      v104 = v204;
      v105 = v193;
      (*(v203 + 16))(v193, v102, v204);
      sub_8388(v36, &v206);
      v106 = sub_16DBDC();
      v107 = sub_16E36C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v224 = v109;
        *v108 = 136315138;
        v110 = v208;
        v111 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v111 + 24))(v110, v111);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v112 = sub_16E3DC();
        v114 = v113;
        sub_2D64(&v206);
        v115 = sub_3AB7C(v112, v114, &v224);

        *(v108 + 4) = v115;
        _os_log_impl(&def_259DC, v106, v107, "%s gets GetBloodPressureFlow", v108, 0xCu);
        sub_2D64(v109);
        v36 = v205;

        (*(v103 + 8))(v193, v104);
      }

      else
      {

        (*(v103 + 8))(v105, v104);
        sub_2D64(&v206);
      }

      v169 = v201;
      v168 = v202;
      sub_8388(v36, &v206);
      sub_8388(v168, &v210);
      sub_8284(v169, &v212);
      v170 = sub_16D90C();
      sub_16D8FC();

      v171 = objc_allocWithZone(sub_16DA6C());
      v214 = sub_16DA5C();
      LOBYTE(v215) = 0;
      v172 = sub_16C58C();
      swift_allocObject();
      v173 = sub_16C57C();
      v219 = v172;
      v220 = &protocol witness table for ResponseFactory;
      v216 = v173;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v221 = sub_16D5FC();
      type metadata accessor for WellnessQueryingCATsSimple(0);
      sub_16D62C();
      v222 = sub_16D5FC();
      LOBYTE(v223) = 82;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v224 = sub_16C1AC();
      sub_16C29C();
      sub_92990();
      v153 = sub_16C35C();

      sub_929E4(&v206);
      goto LABEL_47;
    case 2u:
      v70 = v36[3];
      v71 = v36[4];
      sub_2D20(v36, v70);
      v72 = (*(v71 + 3))(v70, v71);
      v73 = v203;
      if (v72 == 270)
      {
        goto LABEL_51;
      }

      v74 = v72;
      v75 = sub_16DBBC();
      swift_beginAccess();
      v76 = v198;
      v77 = v204;
      (*(v73 + 16))(v198, v75, v204);
      sub_8388(v36, &v206);
      v78 = sub_16DBDC();
      v79 = sub_16E36C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v224 = v81;
        *v80 = 136315138;
        v82 = v208;
        v83 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v83 + 24))(v82, v83);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v84 = sub_16E3DC();
        v86 = v85;
        sub_2D64(&v206);
        v87 = sub_3AB7C(v84, v86, &v224);

        *(v80 + 4) = v87;
        _os_log_impl(&def_259DC, v78, v79, "%s gets GetActivitySummaryFlow", v80, 0xCu);
        sub_2D64(v81);
        v36 = v205;

        (*(v73 + 8))(v198, v204);
      }

      else
      {

        (*(v73 + 8))(v76, v77);
        sub_2D64(&v206);
      }

      v155 = v201;
      v154 = v202;
      sub_8388(v36, v207);
      sub_8388(v154, v211);
      sub_8284(v155, v213);
      v156 = sub_16DB1C();
      v224 = 0u;
      v225 = 0u;
      v226 = 0;
      v157 = objc_allocWithZone(v156);
      v158 = sub_16DB0C();
      v159 = sub_16C58C();
      swift_allocObject();
      v160 = sub_16C57C();
      v219 = v159;
      v220 = &protocol witness table for ResponseFactory;
      v216 = v160;
      type metadata accessor for WellnessQueryingCATsSimple(0);
      sub_16D62C();
      v161 = sub_16D5FC();
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v162 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v163 = sub_16D58C();
      LOWORD(v206) = v74;
      v215 = v158;
      v221 = v161;
      v222 = v162;
      v223 = v163;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v224 = sub_16C1AC();
      sub_16C29C();
      sub_928E8();
      v153 = sub_16C35C();

      sub_9293C(&v206);
      goto LABEL_47;
    case 3u:
      v88 = sub_16DBBC();
      swift_beginAccess();
      v89 = v203;
      v90 = v204;
      v91 = v195;
      (*(v203 + 16))(v195, v88, v204);
      sub_8388(v36, &v206);
      v92 = sub_16DBDC();
      v93 = sub_16E36C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v224 = v95;
        *v94 = 136315138;
        v96 = v208;
        v97 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v97 + 24))(v96, v97);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v98 = sub_16E3DC();
        v100 = v99;
        sub_2D64(&v206);
        v101 = sub_3AB7C(v98, v100, &v224);

        *(v94 + 4) = v101;
        _os_log_impl(&def_259DC, v92, v93, "%s gets GetSleepAnalysisFlow", v94, 0xCu);
        sub_2D64(v95);

        (*(v89 + 8))(v195, v90);
      }

      else
      {

        (*(v89 + 8))(v91, v90);
        sub_2D64(&v206);
      }

      v165 = v201;
      v164 = v202;
      sub_8388(v205, &v206);
      sub_8388(v164, &v210);
      sub_8284(v165, &v212);
      v166 = sub_16DA8C();
      v224 = 0u;
      v225 = 0u;
      v226 = 0;
      v167 = objc_allocWithZone(v166);
      v214 = sub_16DA7C();
      LOBYTE(v215) = 0;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v216 = sub_16D5FC();
      type metadata accessor for WellnessQueryingCATsSimple(0);
      sub_16D62C();
      v217 = sub_16D5FC();
      v218 = 60;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v224 = sub_16C1AC();
      sub_16C29C();
      sub_92840();
      v153 = sub_16C35C();
      sub_92894(&v206);
      goto LABEL_46;
    case 4u:
      v56 = sub_16DBBC();
      swift_beginAccess();
      v57 = v203;
      v58 = v204;
      v59 = v196;
      (*(v203 + 16))(v196, v56, v204);
      sub_8388(v36, &v206);
      v60 = sub_16DBDC();
      v61 = sub_16E36C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v224 = v63;
        *v62 = 136315138;
        v64 = v208;
        v65 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v65 + 24))(v64, v65);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v66 = sub_16E3DC();
        v68 = v67;
        sub_2D64(&v206);
        v69 = sub_3AB7C(v66, v68, &v224);
        v36 = v205;

        *(v62 + 4) = v69;
        _os_log_impl(&def_259DC, v60, v61, "%s gets GetCycleTrackingFlow", v62, 0xCu);
        sub_2D64(v63);

        (*(v57 + 8))(v196, v58);
      }

      else
      {

        (*(v57 + 8))(v59, v58);
        sub_2D64(&v206);
      }

      v150 = v201;
      v149 = v202;
      sub_8388(v36, &v206);
      sub_8388(v149, &v210);
      sub_8284(v150, &v212);
      v151 = sub_16DB8C();
      v224 = 0u;
      v225 = 0u;
      v226 = 0;
      v152 = objc_allocWithZone(v151);
      v214 = sub_16DB7C();
      LOWORD(v215) = 42;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v224 = sub_16C1AC();
      sub_16C29C();
      sub_87A0();
      v153 = sub_16C35C();
      sub_927EC(&v206);
      goto LABEL_46;
    case 5u:
      v116 = v36[3];
      v117 = v36[4];
      sub_2D20(v36, v116);
      v118 = (*(v117 + 3))(v116, v117);
      v119 = v203;
      if (v118 == 270)
      {
LABEL_51:
        v206 = 0;
        v207[0] = 0xE000000000000000;
        sub_16E47C(39);
        sub_2D20(v36, v36[3]);
        sub_16E6AC();
        v232._object = 0x800000000017EC00;
        v232._countAndFlagsBits = 0xD000000000000025;
        sub_16E26C(v232);
LABEL_55:
        sub_16E53C();
        __break(1u);
        JUMPOUT(0x90F64);
      }

      LODWORD(v120) = v118;
      v121 = sub_16DBBC();
      swift_beginAccess();
      v122 = v199;
      v123 = v204;
      (*(v119 + 16))(v199, v121, v204);
      sub_8388(v36, &v206);
      v124 = sub_16DBDC();
      v125 = sub_16E36C();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        LODWORD(v205) = v120;
        v120 = v127;
        v227[0] = v127;
        *v126 = 136315138;
        v128 = v208;
        v129 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v129 + 24))(v128, v129);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v130 = sub_16E3DC();
        v132 = v131;
        sub_2D64(&v206);
        v133 = sub_3AB7C(v130, v132, v227);

        *(v126 + 4) = v133;
        _os_log_impl(&def_259DC, v124, v125, "%s gets Punchout", v126, 0xCu);
        sub_2D64(v120);
        LOWORD(v120) = v205;

        (*(v119 + 8))(v199, v123);
      }

      else
      {

        (*(v119 + 8))(v122, v123);
        sub_2D64(&v206);
      }

      sub_8388(v202, v207);
      sub_8388(v229, v211);
      sub_8284(v201, v213);
      LOWORD(v206) = v120;
      LOBYTE(v215) = 0;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      v227[0] = sub_16C1AC();
      sub_16C29C();
      sub_3DF60();
      v153 = sub_16C35C();
      sub_92798(&v206);
LABEL_46:

LABEL_47:
      v206 = v153;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v175 = sub_16C32C();

LABEL_48:
      sub_2D64(v229);
      return v175;
    case 6u:
      v134 = sub_16DBBC();
      swift_beginAccess();
      v136 = v203;
      v135 = v204;
      v137 = v194;
      (*(v203 + 16))(v194, v134, v204);
      sub_8388(v36, &v206);
      v138 = sub_16DBDC();
      v139 = sub_16E36C();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v227[0] = v141;
        *v140 = 136315138;
        v142 = sub_2D20(&v206, v208);
        v205 = &v192;
        __chkstk_darwin(v142);
        (*(v144 + 16))(&v192 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
        v145 = sub_16E1FC();
        v147 = v146;
        sub_2D64(&v206);
        v148 = sub_3AB7C(v145, v147, v227);

        *(v140 + 4) = v148;
        _os_log_impl(&def_259DC, v138, v139, "Unsupported Intent: %s", v140, 0xCu);
        sub_2D64(v141);

        (*(v136 + 8))(v194, v135);
      }

      else
      {

        (*(v136 + 8))(v137, v135);
        sub_2D64(&v206);
      }

      v174 = sub_2D20(v229, v230);
      v175 = sub_8E640(v202, *v174, v174[1], v174[2], v174[3]);
      goto LABEL_48;
    default:
      v39 = v36[3];
      v40 = v36[4];
      sub_2D20(v36, v39);
      v41 = (*(v40 + 3))(v39, v40);
      v42 = v203;
      if (v41 != 270)
      {
        v43 = v41;
        sub_16D74();
        v44 = sub_16E14C();
        v45 = sub_1730C(v43, v44);

        if (v45 != 205)
        {
          v46 = sub_16DBBC();
          swift_beginAccess();
          v47 = v197;
          v48 = v204;
          (*(v42 + 16))(v197, v46, v204);
          v49 = sub_16DBDC();
          v50 = sub_16E36C();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v206 = v52;
            *v51 = 136315138;
            sub_140650(v43);
            v55 = sub_3AB7C(v53, v54, &v206);

            *(v51 + 4) = v55;
            _os_log_impl(&def_259DC, v49, v50, "%s gets GetHealthQuantityFlow", v51, 0xCu);
            sub_2D64(v52);

            v36 = v205;

            (*(v42 + 8))(v197, v48);
          }

          else
          {

            (*(v42 + 8))(v47, v48);
          }

          sub_8388(v36, v207);
          sub_8388(v202, v211);
          sub_8284(v201, v213);
          v176 = sub_16DACC();
          v224 = 0u;
          v225 = 0u;
          v226 = 0;
          v177 = objc_allocWithZone(v176);
          v178 = sub_16DABC();
          LOBYTE(v206) = v45;
          v215 = v178;
          LOBYTE(v216) = 4;
          if (qword_1C55F0 != -1)
          {
            swift_once();
          }

          *&v224 = sub_16C1AC();
          sub_16C29C();
          sub_92A38();
          v153 = sub_16C35C();
          sub_92A8C(&v206);
          goto LABEL_46;
        }
      }

      v180 = sub_16DBBC();
      swift_beginAccess();
      (*(v42 + 16))(v192, v180, v204);
      v181 = v36;
      sub_8388(v36, &v206);
      v182 = sub_16DBDC();
      v183 = sub_16E37C();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v227[0] = v185;
        *v184 = 136315138;
        v186 = v208;
        v187 = v209;
        sub_2D20(&v206, v208);
        v228 = (*(v187 + 24))(v186, v187);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v188 = sub_16E3DC();
        v190 = v189;
        sub_2D64(&v206);
        v191 = sub_3AB7C(v188, v190, v227);

        *(v184 + 4) = v191;
        _os_log_impl(&def_259DC, v182, v183, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow", v184, 0xCu);
        sub_2D64(v185);

        (*(v203 + 8))(v192, v204);
      }

      else
      {

        (*(v203 + 8))(v192, v204);
        sub_2D64(&v206);
      }

      v227[0] = 0;
      v227[1] = 0xE000000000000000;
      sub_16E47C(72);
      sub_2D20(v181, v181[3]);
      sub_16E6AC();
      v233._countAndFlagsBits = 0xD000000000000046;
      v233._object = 0x800000000017EBB0;
      sub_16E26C(v233);
      goto LABEL_55;
  }
}

uint64_t sub_90F80(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_16D63C();
  __chkstk_darwin(v6 - 8);
  v7 = a2[3];
  v8 = a2[4];
  sub_2D20(a2, v7);
  (*(v8 + 8))(&v38, v7, v8);
  sub_2D20(&v38, v40);
  if (sub_16C40C())
  {
    sub_2D64(&v38);
  }

  else
  {
    v9 = a2[3];
    v10 = a2[4];
    sub_2D20(a2, v9);
    (*(v10 + 8))(&v48, v9, v10);
    sub_2D20(&v48, *(&v49 + 1));
    v11 = sub_16C3FC();
    sub_2D64(&v48);
    sub_2D64(&v38);
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if ((sub_16D67C() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_16D68C())
  {
    sub_8284(a3, &v38);
    sub_1C45C();
    v12 = sub_16C32C();
    sub_925C0(&v38);
    return v12;
  }

LABEL_7:
  v13 = a2[3];
  v14 = a2[4];
  sub_2D20(a2, v13);
  (*(v14 + 8))(&v38, v13, v14);
  sub_2D20(&v38, v40);
  if (sub_16C40C())
  {
    sub_2D64(&v38);
    goto LABEL_10;
  }

  v15 = a2[3];
  v16 = a2[4];
  sub_2D20(a2, v15);
  (*(v16 + 8))(&v48, v15, v16);
  sub_2D20(&v48, *(&v49 + 1));
  v17 = sub_16C3FC();
  sub_2D64(&v48);
  sub_2D64(&v38);
  if (v17)
  {
LABEL_10:
    if (sub_16D67C())
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_8388(a2, &v38);
    v24 = sub_16C58C();
    swift_allocObject();
    v25 = sub_16C57C();
    v42[2] = v24;
    v42[3] = &protocol witness table for ResponseFactory;
    v41 = v25;
    type metadata accessor for WellnessCATsSimple(0);
    sub_16D62C();
    v26 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v27 = sub_16D58C();
    v42[4] = v26;
    v42[5] = v27;
    sub_89600();
    v12 = sub_16C32C();
    sub_9256C(&v38);
    return v12;
  }

LABEL_11:
  v18 = a2[3];
  v19 = a2[4];
  sub_2D20(a2, v18);
  (*(v19 + 8))(&v38, v18, v19);
  sub_2D20(&v38, v40);
  if (sub_16C41C())
  {
    v20 = sub_16D67C();
    sub_2D64(&v38);
    if ((v20 & 1) == 0)
    {
      sub_8388(a2, v39);
      sub_8284(a3, v42);
      v21 = sub_16D8AC();
      v48 = 0u;
      v49 = 0u;
      v50 = 0;
      v22 = objc_allocWithZone(v21);
      v23 = sub_16D89C();
      v45 = v21;
      v46 = &protocol witness table for MedStorageHelper;
      v43 = v23;
      v38 = a1;
      LOBYTE(v47) = 0;
      sub_92460();

      v12 = sub_16C32C();
      sub_924B4(&v38);
      return v12;
    }
  }

  else
  {
    sub_2D64(&v38);
  }

  if (isLoggingTask(from:)())
  {
    return sub_A90E4(a1, a2, a3);
  }

  if (isQueryingTask(from:)())
  {
    sub_8388(a2, v39);
    sub_8284(a3, v42);
    v29 = sub_16D8AC();
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v30 = objc_allocWithZone(v29);
    v31 = sub_16D89C();
    v45 = v29;
    v46 = &protocol witness table for MedStorageHelper;
    v43 = v31;
    v38 = a1;
    LOBYTE(v47) = 1;
    v32 = qword_1C55F0;

    if (v32 != -1)
    {
      swift_once();
    }

    *&v48 = sub_16C1AC();
    sub_16C29C();
    sub_92460();
    v33 = sub_16C35C();

    sub_924B4(&v38);
    v38 = v33;
    sub_2440(&qword_1C8AF0, &qword_1744A8);
    sub_92508();
    v12 = sub_16C32C();
  }

  else
  {
    sub_8388(a2, &v38);
    sub_8284(a3, &v41);
    v34 = sub_16C58C();
    swift_allocObject();
    v35 = sub_16C57C();
    v44 = v34;
    v45 = &protocol witness table for ResponseFactory;
    v42[19] = v35;
    type metadata accessor for WellnessLoggingCATsSimple(0);
    sub_16D62C();
    v36 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v37 = sub_16D58C();
    v46 = v36;
    v47 = v37;
    sub_78880();
    v12 = sub_16C32C();
    sub_9240C(&v38);
  }

  return v12;
}

uint64_t sub_915E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v114 = a7;
  v115 = a2;
  v12 = sub_16D63C();
  __chkstk_darwin(v12 - 8);
  v108 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_16DBEC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v107 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = v103 - v19;
  v20 = __chkstk_darwin(v18);
  v104 = v103 - v21;
  v22 = __chkstk_darwin(v20);
  v106 = v103 - v23;
  __chkstk_darwin(v22);
  v25 = v103 - v24;
  v128 = &type metadata for WellnessCATProvider;
  v129 = &off_1BD5D8;
  v26 = swift_allocObject();
  v127[0] = v26;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;

  v27 = v14;

  v28 = sub_16DBBC();
  swift_beginAccess();
  v29 = *(v15 + 16);
  v112 = v15 + 16;
  v113 = v28;
  v111 = v29;
  v29(v25, v28, v27);
  sub_8388(a1, v118);
  v30 = sub_16DBDC();
  v31 = sub_16E36C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v110 = v15;
    v34 = v33;
    v116[0] = v33;
    *v32 = 136315138;
    v109 = v27;
    v35 = sub_2D20(v118, v119);
    v103[1] = v103;
    __chkstk_darwin(v35);
    (*(v37 + 16))(v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = v109;
    v38 = sub_16E1FC();
    v40 = v39;
    sub_2D64(v118);
    v41 = sub_3AB7C(v38, v40, v116);

    *(v32 + 4) = v41;
    _os_log_impl(&def_259DC, v30, v31, "Getting flow for: %s", v32, 0xCu);
    sub_2D64(v34);

    v42 = v110;
    v43 = *(v110 + 8);
    v43(v25, v27);
  }

  else
  {

    v43 = *(v15 + 8);
    v43(v25, v27);
    sub_2D64(v118);
    v42 = v15;
  }

  v44 = v115[3];
  v45 = v115[4];
  sub_2D20(v115, v44);
  (*(v45 + 8))(v118, v44, v45);
  v46 = sub_16D67C();
  v47 = sub_16D68C();
  v48 = sub_25A0(v118, v46 & 1, v47 & 1);
  v49 = a1[3];
  v50 = a1[4];
  sub_2D20(a1, v49);
  LOWORD(v49) = (*(v50 + 24))(v49, v50);
  v51 = a1[3];
  v52 = a1[4];
  sub_2D20(a1, v51);
  v53 = (*(v52 + 16))(v51, v52);
  switch(sub_2730((v48 << 24) & 0x101010101010101 | (v53 << 16) | v49))
  {
    case 1u:
      v85 = sub_2D20(v127, v128);
      v55 = sub_8E8A4(a1, v115, *v85, v85[1], v85[2], v85[3], v114);
      goto LABEL_21;
    case 2u:
      v62 = v113;
      swift_beginAccess();
      v63 = v107;
      v111(v107, v62, v27);
      sub_8388(v115, v118);
      v64 = sub_16DBDC();
      v65 = sub_16E36C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v110 = v42;
        v68 = v67;
        v117 = v67;
        *v66 = 136315138;
        v69 = v63;
        v109 = v27;
        v70 = v119;
        v71 = v120;
        sub_2D20(v118, v119);
        (*(v71 + 8))(v116, v70, v71);
        sub_2440(&qword_1C8B08, &unk_1744B0);
        v72 = sub_16E1EC();
        v74 = v73;
        sub_2D64(v118);
        v75 = sub_3AB7C(v72, v74, &v117);

        *(v66 + 4) = v75;
        _os_log_impl(&def_259DC, v64, v65, "Device state is %s - launching UnsupportedDeviceFlow", v66, 0xCu);
        sub_2D64(v68);

        v43(v69, v109);
      }

      else
      {

        v43(v63, v27);
        sub_2D64(v118);
      }

      sub_8284(v114, v118);
      sub_92614();
      v61 = sub_16C32C();
      sub_92668(v118);
      goto LABEL_22;
    case 3u:
      v76 = v113;
      swift_beginAccess();
      v77 = v104;
      v111(v104, v76, v27);
      v78 = sub_16DBDC();
      v79 = sub_16E36C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&def_259DC, v78, v79, "Device is iPhone/iPad, but relevant app not installed; launching InstallAppFlow", v80, 2u);
      }

      v43(v77, v27);
      sub_8388(v115, v118);
      v81 = sub_16C58C();
      swift_allocObject();
      v82 = sub_16C57C();
      v122 = v81;
      v123 = &protocol witness table for ResponseFactory;
      v121 = v82;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v83 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v84 = sub_16D58C();
      v124 = v83;
      v125 = v84;
      sub_89600();
      v61 = sub_16C32C();
      sub_9256C(v118);
      goto LABEL_22;
    case 4u:
      v56 = v113;
      swift_beginAccess();
      v57 = v105;
      v111(v105, v56, v27);
      v58 = sub_16DBDC();
      v59 = sub_16E36C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&def_259DC, v58, v59, "Health app is restrcited in Screen Time, showing error dialog", v60, 2u);
      }

      v43(v57, v27);
      sub_8284(v114, v118);
      sub_1C45C();
      v61 = sub_16C32C();
      sub_925C0(v118);
      goto LABEL_22;
    case 5u:
      v110 = v42;
      v86 = v113;
      swift_beginAccess();
      v87 = v106;
      v111(v106, v86, v27);
      sub_8388(a1, v118);
      v88 = sub_16DBDC();
      v89 = sub_16E37C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v87;
        v109 = v27;
        v93 = v91;
        v126[0] = v91;
        *v90 = 136315138;
        v94 = v119;
        v95 = v120;
        sub_2D20(v118, v119);
        v96 = (*(v95 + 16))(v94, v95);
        v97 = sub_158B28(v96);
        v99 = v98;
        sub_2D64(v118);
        v100 = sub_3AB7C(v97, v99, v126);

        *(v90 + 4) = v100;
        _os_log_impl(&def_259DC, v88, v89, "Unsupported verb for getFlowFor (%s). Returning genericNotSupported.", v90, 0xCu);
        sub_2D64(v93);

        v43(v92, v109);
      }

      else
      {

        v43(v87, v27);
        sub_2D64(v118);
      }

      v101 = sub_2D20(v127, v128);
      v55 = sub_8E640(v115, *v101, v101[1], v101[2], v101[3]);
      goto LABEL_21;
    default:
      v54 = sub_2D20(v127, v128);
      v55 = sub_8F4FC(a1, v115, *v54, v54[1], v54[2], v54[3], v114);
LABEL_21:
      v61 = v55;
LABEL_22:
      sub_2D64(v127);
      return v61;
  }
}

unint64_t sub_9218C()
{
  result = qword_1C8AC8;
  if (!qword_1C8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AC8);
  }

  return result;
}

uint64_t sub_921E0()
{
  sub_92E78();
  sub_2D64((v0 + 216));
  sub_2D64((v0 + 256));
  sub_93118();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_92220()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return _swift_deallocObject(v0, 177, 7);
}

unint64_t sub_92270()
{
  result = qword_1C8AD0;
  if (!qword_1C8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AD0);
  }

  return result;
}

uint64_t sub_922C4()
{
  sub_92E78();
  sub_2D64((v0 + 216));

  return _swift_deallocObject(v0, 272, 7);
}

unint64_t sub_92310()
{
  result = qword_1C8AD8;
  if (!qword_1C8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AD8);
  }

  return result;
}

uint64_t sub_92364()
{
  sub_92E78();
  sub_2D64((v0 + 216));
  sub_2D64((v0 + 256));

  return _swift_deallocObject(v0, 312, 7);
}

unint64_t sub_923B8()
{
  result = qword_1C8AE0;
  if (!qword_1C8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AE0);
  }

  return result;
}

unint64_t sub_92460()
{
  result = qword_1C8AE8;
  if (!qword_1C8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AE8);
  }

  return result;
}

unint64_t sub_92508()
{
  result = qword_1C8AF8;
  if (!qword_1C8AF8)
  {
    sub_9790(&qword_1C8AF0, &qword_1744A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AF8);
  }

  return result;
}

unint64_t sub_92614()
{
  result = qword_1C8B00;
  if (!qword_1C8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B00);
  }

  return result;
}

unint64_t sub_926BC()
{
  result = qword_1C8B10;
  if (!qword_1C8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B10);
  }

  return result;
}

uint64_t sub_92764()
{
  sub_92E78();

  return _swift_deallocObject(v0, 216, 7);
}

unint64_t sub_92840()
{
  result = qword_1C8B18;
  if (!qword_1C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B18);
  }

  return result;
}

unint64_t sub_928E8()
{
  result = qword_1C8B20;
  if (!qword_1C8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B20);
  }

  return result;
}

unint64_t sub_92990()
{
  result = qword_1C8B28;
  if (!qword_1C8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B28);
  }

  return result;
}

unint64_t sub_92A38()
{
  result = qword_1C8B30;
  if (!qword_1C8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B30);
  }

  return result;
}

uint64_t sub_92AE0(uint64_t a1)
{
  v2 = sub_16D6BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_92B74()
{
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_9301C(v1);

  return v4(v3);
}

uint64_t sub_92C0C()
{
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_9301C(v1);

  return v4(v3);
}

uint64_t sub_92CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_92D18(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_92D34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_92D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_92D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_92DD0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_92E78()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return sub_2D64(v0 + 22);
}

uint64_t sub_92EBC()
{
}

uint64_t sub_92EE0()
{

  return swift_beginAccess();
}

BOOL sub_92F00(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_60F18(sub_8E51C, a1, v1);
}

BOOL sub_92F44(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_60F18(sub_92E14, a1, v1);
}

uint64_t sub_92FAC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_92FCC()
{
}

uint64_t sub_92FF4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_9303C(uint64_t a1)
{
  v1[68] = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;

  return sub_8D1C8((v1 + 42), v1 + 63, (v1 + 22), v1 + 68, v1 + 58);
}

void sub_930DC(void *a1@<X8>)
{

  sub_8BB44(v4, v1 & 1, v2, v3, v5, a1);
}

uint64_t sub_93100@<X0>(char a1@<W8>)
{
  *(v1 - 200) = a1;

  return sub_16C86C();
}

uint64_t sub_93130()
{
  sub_17464((v0 - 136), v0 - 176);

  return sub_16DBBC();
}

double sub_931A4@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

void *sub_931CC()
{
  sub_2D64(v0 + 63);
  sub_2D64(v0 + 68);
  v1 = v0[61];

  return sub_2D20(v0 + 58, v1);
}

uint64_t sub_93208()
{

  return swift_task_alloc();
}

uint64_t sub_93228()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for BloodPressureQueryModel(uint64_t a1)
{
  result = qword_1C8BD8;
  if (!qword_1C8BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureQueryModel.systolicString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMinString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicMinString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMaxString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicMaxString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMinString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicMinString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMaxString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicMaxString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabelString.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.unitLabelString.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicLabel.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicLabel.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicLabel.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicLabel.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.dateLabel.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.dateLabel.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabel.getter()
{
  type metadata accessor for BloodPressureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.unitLabel.setter()
{
  sub_9630C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.init(systolic:diastolic:systolicMin:systolicMax:diastolicMin:diastolicMax:unitLabel:systolicLabel:diastolicLabel:dateLabel:url:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v24);
  sub_433C();
  __chkstk_darwin(v25);
  sub_13088();
  v81 = v26;
  v27 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v27);
  sub_433C();
  __chkstk_darwin(v28);
  sub_963CC();
  sub_16C11C();
  sub_8AB4();
  v80 = v29;
  sub_214C(v30, v31, v32, v29);
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v34 = (a9 + Model[17]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (a9 + Model[18]);
  v36 = (a9 + Model[19]);
  sub_16BE9C();
  sub_8AB4();
  sub_214C(v37, v38, v39, v40);
  v41 = (a9 + Model[22]);
  v42 = a9 + Model[23];
  type metadata accessor for SnippetHeaderModel(0);
  v72 = v42;
  sub_8AB4();
  sub_214C(v43, v44, v45, v46);
  *v41 = a14;
  v41[1] = a15;
  *v35 = a16;
  v35[1] = a17;
  *v36 = a18;
  v36[1] = a19;
  sub_86B0(a20, v22, &qword_1C5800, &unk_16F510);
  v47 = sub_16D5CC();
  if (sub_369C(v22, 1, v47) == 1)
  {
    sub_8748(v22, &qword_1C5800, &unk_16F510);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v48 = sub_16D5BC();
    v51 = v50;
    (*(*(v47 - 8) + 8))(v22, v47);
    v49 = v51;
  }

  v52 = a9 + Model[5];
  v53 = a9 + Model[6];
  v54 = a9 + Model[7];
  v55 = a9 + Model[8];
  v56 = a9 + Model[9];
  v57 = a9 + Model[10];
  v66 = (a9 + Model[11]);
  v67 = (a9 + Model[12]);
  v68 = (a9 + Model[13]);
  v69 = (a9 + Model[14]);
  v70 = (a9 + Model[15]);
  v71 = (a9 + Model[16]);
  v58 = (a9 + Model[21]);
  *v58 = v48;
  v58[1] = v49;
  sub_5FF8C(a22, v72);
  *v52 = a1;
  *(v52 + 8) = a2 & 1;
  *v53 = a5;
  *(v53 + 8) = a6 & 1;
  *v54 = a7;
  *(v54 + 8) = a8 & 1;
  *v55 = a3;
  *(v55 + 8) = a4 & 1;
  *v56 = a10;
  *(v56 + 8) = a11 & 1;
  *v57 = a12;
  *(v57 + 8) = a13 & 1;
  *v66 = sub_94294(a1, a2 & 1);
  v66[1] = v59;
  *v67 = sub_94294(a3, a4 & 1);
  v67[1] = v60;
  *v68 = sub_94294(a5, a6 & 1);
  v68[1] = v61;
  *v69 = sub_94294(a7, a8 & 1);
  v69[1] = v62;
  *v70 = sub_94294(a10, a11 & 1);
  v70[1] = v63;
  *v71 = sub_94294(a12, a13 & 1);
  v71[1] = v64;
  sub_943A8(a21);
  sub_8748(a22, &dword_1C63F8, &qword_171800);
  sub_8748(a21, &qword_1C57F8, &unk_172510);
  sub_8748(a20, &qword_1C5800, &unk_16F510);
  sub_214C(v81, 0, 1, v80);
  return sub_1E634(v81, a9, &qword_1C63F0, &unk_1717F0);
}

uint64_t sub_94294(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_12;
  }

  v2 = result;
  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_12:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_943A8(uint64_t a1)
{
  v3 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  sub_963CC();
  v5 = sub_16BE9C();
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v1, &qword_1C57F8, &unk_172510);
  if (sub_369C(v1, 1, v5) == 1)
  {
    sub_8748(v1, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v7 + 32))(v10, v1, v5);
    v12 = sub_16BE5C();
    sub_2068C(v12, v13);
    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_94544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C6F74737973 && a2 == 0xE800000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63696C6F74737973 && a2 == 0xEB000000006E694DLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63696C6F74737973 && a2 == 0xEB0000000078614DLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C6F7473616964 && a2 == 0xE900000000000063;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C6F7473616964 && a2 == 0xEC0000006E694D63;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696C6F7473616964 && a2 == 0xEC00000078614D63;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x63696C6F74737973 && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696C6F7473616964 && a2 == 0xEF676E6972745363;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x800000000017EC50 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000000017EC70 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x800000000017EC90 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x800000000017ECB0 == a2;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6562614C74696E75 && a2 == 0xEF676E697274536CLL;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x63696C6F74737973 && a2 == 0xED00006C6562614CLL;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x696C6F7473616964 && a2 == 0xEE006C6562614C63;
                                if (v20 || (sub_16E6BC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 7107189 && a2 == 0xE300000000000000;
                                  if (v21 || (sub_16E6BC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
                                    if (v22 || (sub_16E6BC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
                                      if (v23 || (sub_16E6BC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_16E6BC();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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

uint64_t sub_94B28(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 7:
    case 14:
      result = 0x63696C6F74737973;
      break;
    case 4:
      result = 0x696C6F7473616964;
      break;
    case 5:
    case 6:
    case 15:
      result = 0x696C6F7473616964;
      break;
    case 8:
      result = 0x696C6F7473616964;
      break;
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6562614C74696E75;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      v3 = 1702125924;
      goto LABEL_11;
    case 18:
      v3 = 1953066613;
LABEL_11:
      result = v3 | 0x6562614C00000000;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_94D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_94544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_94D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_94B20();
  *a1 = result;
  return result;
}

uint64_t sub_94DC4(uint64_t a1)
{
  v2 = sub_9521C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_94E00(uint64_t a1)
{
  v2 = sub_9521C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BloodPressureQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C8B58, &qword_1745D0);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_2D20(a1, a1[3]);
  sub_9521C();
  sub_16E77C();
  v22 = 0;
  sub_16C11C();
  sub_96340();
  sub_95B34(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_963E0();
  sub_96394(v3);
  if (!v2)
  {
    Model = type metadata accessor for BloodPressureQueryModel(0);
    sub_669D0(Model[5]);
    sub_153FC(1);
    sub_16E62C();
    sub_669D0(Model[6]);
    sub_153FC(2);
    sub_16E62C();
    sub_669D0(Model[7]);
    sub_153FC(3);
    sub_16E62C();
    sub_669D0(Model[8]);
    sub_153FC(4);
    sub_16E62C();
    sub_669D0(Model[9]);
    sub_153FC(5);
    sub_16E62C();
    sub_669D0(Model[10]);
    sub_153FC(6);
    sub_16E62C();
    sub_66A40(Model[11]);
    sub_153FC(7);
    sub_16E61C();
    sub_66A40(Model[12]);
    sub_153FC(8);
    sub_16E61C();
    sub_66A40(Model[13]);
    sub_153FC(9);
    sub_16E61C();
    sub_66A40(Model[14]);
    sub_153FC(10);
    sub_16E61C();
    sub_66A40(Model[15]);
    sub_153FC(11);
    sub_16E61C();
    sub_66A40(Model[16]);
    sub_153FC(12);
    sub_16E61C();
    sub_66A40(Model[17]);
    sub_153FC(13);
    sub_16E61C();
    sub_66A40(Model[18]);
    sub_153FC(14);
    sub_16E61C();
    sub_66A40(Model[19]);
    sub_153FC(15);
    sub_16E61C();
    v14 = Model[20];
    v22 = 16;
    sub_16BE9C();
    sub_96358();
    sub_95B34(v15, v16, &protocol conformance descriptor for URL);
    sub_96394(v3 + v14);
    sub_66A40(Model[21]);
    sub_153FC(17);
    sub_16E61C();
    sub_66A40(Model[22]);
    sub_153FC(18);
    sub_16E61C();
    v17 = Model[23];
    v22 = 19;
    type metadata accessor for SnippetHeaderModel(0);
    sub_96328();
    sub_95B34(v18, v19, &protocol conformance descriptor for SnippetHeaderModel);
    sub_96394(v3 + v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_9521C()
{
  result = qword_1C8B60;
  if (!qword_1C8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B60);
  }

  return result;
}

uint64_t BloodPressureQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a1;
  v107 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  sub_13088();
  v106 = v4;
  v5 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v125 = v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v126 = v10;
  v127 = sub_2440(&qword_1C8B70, &qword_1745D8);
  sub_42F0();
  v124 = v11;
  sub_433C();
  __chkstk_darwin(v12);
  sub_13088();
  v130 = v13;
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v15 = (Model - 8);
  __chkstk_darwin(Model);
  v17 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v123 = v18;
  sub_214C(v19, v20, v21, v18);
  sub_963B4(v15[7]);
  v120 = v22;
  *(v22 + 8) = 1;
  sub_963B4(v15[8]);
  v119 = v23;
  *(v23 + 8) = 1;
  sub_963B4(v15[9]);
  v118 = v24;
  *(v24 + 8) = 1;
  sub_963B4(v15[10]);
  v117 = v25;
  *(v25 + 8) = 1;
  sub_963B4(v15[11]);
  v116 = v26;
  *(v26 + 8) = 1;
  sub_963B4(v15[12]);
  v115 = v27;
  *(v27 + 8) = 1;
  sub_96370(v15[13]);
  v114 = v28;
  sub_96370(v15[14]);
  v113 = v29;
  sub_96370(v15[15]);
  v112 = v30;
  sub_96370(v15[16]);
  v111 = v31;
  sub_96370(v15[17]);
  v110 = v32;
  sub_96370(v15[18]);
  v109 = v33;
  sub_96370(v15[19]);
  v108 = v34;
  v35 = &v17[v15[20]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v17[v15[21]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = v15[22];
  v121 = sub_16BE9C();
  v122 = v37;
  sub_8AB4();
  sub_214C(v38, v39, v40, v41);
  v42 = &v17[v15[23]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v17[v15[24]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = v15[25];
  v45 = type metadata accessor for SnippetHeaderModel(0);
  v129 = v17;
  sub_8AB4();
  sub_214C(v46, v47, v48, v45);
  sub_2D20(v131, v131[3]);
  sub_9521C();
  v49 = v128;
  sub_16E76C();
  if (v49)
  {
    v102 = v129;
  }

  else
  {
    v128 = v35;
    v105 = v36;
    v50 = v122;
    v103[1] = v42;
    v103[2] = v43;
    v104 = v44;
    v51 = v124;
    v52 = v125;
    v133 = 0;
    sub_96340();
    sub_95B34(v53, v54, &protocol conformance descriptor for AppPunchout);
    sub_963E0();
    v55 = v126;
    sub_16E5AC();
    sub_1E634(v55, v129, &qword_1C63F0, &unk_1717F0);
    sub_962C4(1);
    v57 = sub_16E59C();
    sub_962FC(v57, v58);
    sub_962C4(2);
    v59 = sub_16E59C();
    sub_962FC(v59, v60);
    sub_962C4(3);
    v61 = sub_16E59C();
    sub_962FC(v61, v62);
    sub_962C4(4);
    v63 = sub_16E59C();
    sub_962FC(v63, v64);
    sub_962C4(5);
    v65 = sub_16E59C();
    sub_962FC(v65, v66);
    sub_962C4(6);
    v67 = sub_16E59C();
    sub_962FC(v67, v68);
    sub_962C4(7);
    v69 = sub_16E58C();
    v70 = v114;
    *v114 = v69;
    v70[1] = v71;
    sub_962C4(8);
    v72 = sub_16E58C();
    v73 = v113;
    *v113 = v72;
    v73[1] = v74;
    sub_962C4(9);
    v75 = sub_16E58C();
    v76 = v112;
    *v112 = v75;
    v76[1] = v77;
    v78 = sub_962D8(10);
    v79 = v111;
    *v111 = v78;
    v79[1] = v80;
    v81 = sub_962D8(11);
    sub_963C0(v81, v82, &v138);
    v83 = sub_962D8(12);
    sub_963C0(v83, v84, &v137);
    v85 = sub_962D8(13);
    sub_963C0(v85, v86, &v136);
    v87 = sub_962D8(14);
    v88 = v128;
    *v128 = v87;
    v88[1] = v89;
    v90 = sub_962D8(15);
    sub_963C0(v90, v91, &v135);
    v133 = 16;
    sub_96358();
    sub_95B34(v92, v93, &protocol conformance descriptor for URL);
    sub_963E0();
    sub_16E5AC();
    sub_1E634(v52, &v129[v50], &qword_1C57F8, &unk_172510);
    v94 = sub_962D8(17);
    sub_963C0(v94, v95, v132);
    v96 = sub_962D8(18);
    sub_963C0(v96, v97, &v134);
    v133 = 19;
    sub_96328();
    sub_95B34(v98, v99, &protocol conformance descriptor for SnippetHeaderModel);
    sub_963E0();
    v100 = v127;
    v101 = v130;
    sub_16E5AC();
    (*(v51 + 8))(v101, v100);
    v102 = v129;
    sub_1E634(v106, &v129[v104], &dword_1C63F8, &qword_171800);
    sub_95A40(v102, v107);
  }

  sub_2D64(v131);
  return sub_959E4(v102);
}

uint64_t sub_959E4(uint64_t a1)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_95A40(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_95B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_95BC0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_369C(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    sub_2440(&qword_1C57F8, &unk_172510);
    sub_436C();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = a3[20];
    }

    else
    {
      v8 = sub_2440(&dword_1C63F8, &qword_171800);
      v15 = a3[23];
    }

    v9 = a1 + v15;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[11] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_95D14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[11] + 8) = a2;
      return;
    }

    sub_2440(&qword_1C57F8, &unk_172510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[20];
    }

    else
    {
      v10 = sub_2440(&dword_1C63F8, &qword_171800);
      v14 = a4[23];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

uint64_t sub_95E44(uint64_t a1)
{
  sub_95FDC(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_3A10(319, &qword_1C64C8, &type metadata for String);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_95FDC(319, &unk_1C8BE8, &type metadata accessor for URL);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_95FDC(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_95FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x96184);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_961C0()
{
  result = qword_1C8C60;
  if (!qword_1C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C60);
  }

  return result;
}

unint64_t sub_96218()
{
  result = qword_1C8C68;
  if (!qword_1C8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C68);
  }

  return result;
}

unint64_t sub_96270()
{
  result = qword_1C8C70;
  if (!qword_1C8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C70);
  }

  return result;
}

uint64_t sub_962D8@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_16E58C();
}

uint64_t sub_962FC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_9630C()
{

  return type metadata accessor for BloodPressureQueryModel(0);
}

void sub_96370(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_9637C()
{

  return type metadata accessor for BloodPressureQueryModel(0);
}

uint64_t sub_96394(uint64_t a1)
{

  return sub_16E63C();
}

uint64_t sub_963C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a3 - 256);
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t getMedScheduleDateTime(from:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (sub_16CDAC())
  {
    v1 = sub_16CD7C();

    if (v1)
    {
      if (sub_3B35C(v1))
      {
        sub_3B360();
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
        }

        sub_16C9EC();
      }

      else
      {
      }
    }
  }

  if (!sub_16CDAC() || (v2 = sub_16CD7C(), , !v2))
  {

    return 0;
  }

  if (!sub_3B35C(v2))
  {

    return 0;
  }

  sub_3B360();
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
  }

  sub_16C9EC();

  return v3;
}

uint64_t medScheduleHasOneMed(from:)(uint64_t result)
{
  if (result)
  {
    result = sub_16CD8C();
    if (result)
    {
      v1 = sub_3B35C(result);

      return v1 == 1;
    }
  }

  return result;
}

uint64_t getMedEntity(from:)(uint64_t result)
{
  if (result)
  {
    result = sub_16CD8C();
    if (result)
    {
      v1 = result;
      if (sub_3B35C(result))
      {
        sub_3B360();
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
        }

        sub_16C9EC();

        return v2;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t getLocalizedScheduleName(from:)(uint64_t result)
{
  if (result)
  {
    return sub_16CD9C();
  }

  return result;
}

uint64_t sub_96698()
{
  sub_8A88();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  sub_2440(&qword_1C6FF0, &unk_1730A0);
  v1[11] = sub_8BC0();
  v3 = sub_16C89C();
  v1[12] = v3;
  sub_888C(v3);
  v1[13] = v4;
  v1[14] = sub_8BC0();
  v5 = sub_16C8FC();
  v1[15] = v5;
  sub_888C(v5);
  v1[16] = v6;
  v1[17] = sub_8BC0();
  v7 = sub_16C80C();
  v1[18] = v7;
  sub_888C(v7);
  v1[19] = v8;
  v1[20] = sub_8BC0();
  v9 = sub_16C83C();
  v1[21] = v9;
  sub_888C(v9);
  v1[22] = v10;
  v1[23] = sub_8BC0();
  v11 = sub_16C7DC();
  v1[24] = v11;
  sub_888C(v11);
  v1[25] = v12;
  v1[26] = sub_8BC0();
  v13 = sub_16DBEC();
  v1[27] = v13;
  sub_888C(v13);
  v1[28] = v14;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v15);
}

uint64_t sub_96928()
{
  v70 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[8];
  v8 = sub_16DBAC();
  sub_8B48(v8, (v0 + 2));
  v68 = v8;
  v67 = *(v3 + 16);
  v67(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  if (v11)
  {
    v65 = v0[30];
    v17 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v17 = 136315394;
    v18 = sub_16E7AC();
    v64 = v13;
    v20 = sub_3AB7C(v18, v19, &v69);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v15 + 8))(v14, v16);
    v21 = sub_C9E0();
    v24 = sub_3AB7C(v21, v22, v23);

    *(v17 + 14) = v24;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v63);
    sub_8A2C(v17);

    v25 = *(v12 + 8);
    v25(v65, v64);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v25 = *(v12 + 8);
    v26 = sub_C9E0();
    v25(v26, v27);
  }

  sub_16C7CC();
  v28 = sub_C9E0();
  if (v29(v28) == enum case for Parse.uso(_:))
  {
    v66 = v25;
    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[12];
    v33 = v0[13];
    v34 = v0[11];
    (*(v0[19] + 96))(v0[20], v0[18]);
    v35 = sub_389C0();
    v36(v35);
    sub_16C82C();
    v37 = sub_16C88C();
    (*(v33 + 8))(v31, v32);
    sub_9AD9C(v37, v34);

    if (sub_369C(v34, 1, v30) != 1)
    {
      (*(v0[16] + 32))(v0[17], v0[11], v0[15]);
      if (sub_16C8CC())
      {
        v51 = v0[9];
        (*(v0[16] + 8))(v0[17], v0[15]);
        v52 = sub_98BE8();
        v53(v52);
        v48 = *(v51 + 40);

        v47 = 1;
        goto LABEL_11;
      }

      if (sub_16C8DC())
      {
        v54 = sub_389C0();
        v55(v54);
        v56 = sub_98BD8();
        v57(v56);
      }

      else
      {
        v58 = sub_16C8EC();
        v59 = sub_389C0();
        v60(v59);
        v61 = sub_98BD8();
        v62(v61);
        if ((v58 & 1) == 0)
        {
          v48 = *(v0[9] + 40);

          v47 = 2;
          goto LABEL_11;
        }
      }

      v48 = *(v0[9] + 40);

      v47 = 0;
      goto LABEL_11;
    }

    v38 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_C878(v38, &qword_1C6FF0, &unk_1730A0);
    v25 = v66;
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v39 = v0[29];
  v40 = v0[27];
  sub_8B48(v68, (v0 + 5));
  v67(v39, v68, v40);
  v41 = sub_16DBDC();
  v42 = sub_16E37C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[29];
  v45 = v0[27];
  if (v43)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&def_259DC, v41, v42, "Received unsupported type of input", v46, 2u);
    sub_8A2C(v46);
  }

  v25(v44, v45);
  v47 = 0;
  v48 = 1;
LABEL_11:

  v49 = v0[1];

  return v49(v47, v48);
}

uint64_t sub_96EE8(uint64_t a1)
{
  v2 = sub_16C7DC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_4304();
  v15 = v14 - v13;
  v16 = sub_16DBAC();
  sub_8B48(v16, v31);
  v29 = v9;
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_16DBDC();
  v18 = sub_16E36C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v30);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_C8E0();
    v23 = sub_16E68C();
    v25 = v24;
    (*(v4 + 8))(v8, v2);
    v26 = sub_3AB7C(v23, v25, &v30);

    *(v19 + 14) = v26;
    _os_log_impl(&def_259DC, v17, v18, "%s Handling Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v28);
    sub_8A2C(v19);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v11 + 8))(v15, v29);
  return sub_16C47C();
}