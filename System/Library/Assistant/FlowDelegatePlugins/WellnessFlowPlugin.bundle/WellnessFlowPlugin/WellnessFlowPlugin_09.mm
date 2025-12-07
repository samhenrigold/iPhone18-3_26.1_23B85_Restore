uint64_t sub_E3150()
{
  sub_3868C();
  sub_38664();
  sub_38CAC();
  sub_C990();
  *v3 = v1;
  v4 = *v2;
  sub_38388();
  *v5 = v4;
  v1[3719] = v6;

  sub_8C88();
  if (v0)
  {
    sub_1062C8();
    v7 = v1[3599];
    v8 = v1[3598];
    sub_10642C();

    v9 = sub_8B9C();
    sub_8748(v9, v10, &unk_16F510);
    sub_8748(v8, &qword_1C5800, &unk_16F510);
    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v11 = v1[3598];

    v12 = sub_C9F8();
    sub_8748(v12, v13, &unk_16F510);
    sub_8748(v11, &qword_1C5800, &unk_16F510);
    v14 = sub_38B40();
    sub_8748(v14, v15, &unk_16F510);
  }

  sub_105A74();
  sub_8CC0();

  return _swift_task_switch(v16);
}

uint64_t sub_E334C()
{
  v1 = *(v0 + 29752);
  sub_106464();
  sub_16C43C();
  sub_37FFC();
  v2 = sub_10631C();
  sub_B9BF4(v2, v3, v4);
  sub_16C7AC();
  v5 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 21656));
  v6 = sub_17970();
  v7(v6);
  sub_38138((v0 + 21616));
  if (sub_16C40C())
  {
    v8 = sub_105C94();
  }

  else
  {
    v11 = sub_106474();
    sub_C9294(v11, v0 + 21576);
    sub_3820C((v0 + 21576));
    v12 = sub_17970();
    v13(v12);
    sub_38138((v0 + 21536));
    sub_16C3FC();
    sub_2D64((v0 + 21536));
    v8 = sub_105A84((v0 + 21576));
    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
    }
  }

  sub_106680(v8, v9, v10);
  sub_106DF8();
  v15 = sub_1057EC();
  v16(v15);
  sub_38138((v0 + 21416));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v17 = sub_106474();
    sub_C9294(v17, v0 + 21376);
    sub_3820C((v0 + 21376));
    v18 = sub_17970();
    v19(v18);
    sub_38138((v0 + 21336));
    sub_16C3FC();
    sub_2D64((v0 + 21336));
    sub_2D64((v0 + 21376));
    sub_2D64((v0 + 21416));
    sub_2D64((v0 + 21456));
  }

  v20 = *(v0 + 17793);
  sub_16D69C();

  v111 = getMedStatus(from:)();

  sub_16BF4C();

  v21 = getLocalizedMedName(from:)();
  v106 = v22;
  v109 = v21;

  if (v20)
  {
    v118 = sub_103660(*(v0 + 29720), &selRef_medSchedule);
    v24 = v23;
  }

  else
  {
    v118 = *(v0 + 29552);
    v24 = *(v0 + 29544);
  }

  v101 = *(v0 + 17794);
  v99 = *(v0 + 29728);
  sub_106C98();
  v25 = *(v0 + 28568);
  v26 = *(v0 + 28560);
  v27 = *(v0 + 28344);
  v28 = *(v0 + 28336);
  v29 = *(v0 + 28208);
  v30 = *(v0 + 28144);
  v31 = *(v0 + 28072);
  v97 = sub_103660(v32, &selRef_dosageUnit);
  v103 = v33;
  sub_86B0(v27, v28, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  sub_1055D0();
  sub_1039B4(v25, v31);
  sub_388E4();
  sub_214C(v34, v35, v36, v26);
  v37 = v29 + v30[8];
  sub_16C11C();
  v120 = v37;
  sub_8AB4();
  v117 = v38;
  sub_214C(v39, v40, v41, v38);
  v121 = v29 + v30[19];
  sub_8AB4();
  sub_214C(v42, v43, v44, v26);
  sub_1069CC(v111);
  v29[1] = sub_BA66C();
  v29[2] = v45;
  v29[3] = v109;
  v29[4] = v106;
  v29[5] = v118;
  v29[6] = v24;
  if (v24)
  {
    v46 = 0;
  }

  else
  {
    v46 = v99;
  }

  v47 = (v29 + v30[10]);
  v48 = v30[11];
  sub_107110((v24 != 0) | v101);
  *v47 = sub_147C94(v46, v26);
  v47[1] = v49;
  if (v24)
  {

    v50 = 0;
    v51 = 0;
    v52 = v118;
    v53 = v24;
  }

  else
  {
    v53 = 0xE900000000000064;
    v52 = 0x656465654E207341;
    v51 = v103;
    v50 = v97;
  }

  v54 = (v29 + v48);
  v119 = *(v0 + 29752);
  v55 = 0xE500000000000000;
  if (v112)
  {
    v55 = v112;
  }

  v113 = v55;
  v56 = *(v0 + 29616);
  v57 = 0xE700000000000000;
  if (v114)
  {
    v57 = v114;
  }

  v115 = v57;
  v58 = *(v0 + 28336);
  v59 = *(v0 + 28208);
  v60 = *(v0 + 28144);
  v96 = *(v0 + 28136);
  v61 = *(v0 + 28088);
  v62 = *(v0 + 28080);
  v63 = *(v0 + 28008);
  v116 = *(v0 + 27984);
  if (!*(v0 + 29624))
  {
    v56 = 0x6E656B6154;
  }

  v107 = v56;
  v110 = *(v0 + 28072);
  if (*(v0 + 29600))
  {
    v64 = *(v0 + 29592);
  }

  else
  {
    v64 = 0x64657070696B53;
  }

  v65 = 0x646567676F4CLL;
  if (*(v0 + 29576))
  {
    v65 = *(v0 + 29568);
  }

  v102 = v65;
  v104 = v64;
  *v54 = v50;
  v54[1] = v51;
  v66 = (v59 + v60[12]);
  v98 = v60[14];
  v100 = v60[15];
  v67 = (v59 + v60[16]);
  v68 = (v59 + v60[17]);
  v69 = (v59 + v60[18]);
  *v66 = v52;
  v66[1] = v53;
  sub_147DA8(v58);
  sub_8748(v58, &qword_1C57F8, &unk_172510);
  (*(v61 + 8))(v96, v62);
  sub_388E4();
  sub_214C(v70, v71, v72, v117);
  v73 = sub_1E634(v63, v120, &qword_1C63F0, &unk_1717F0);
  v81 = sub_10674C(v73, v74, v75, v76, v77, v78, v79, v80, v95, v96, v98, v100, v102, v104, v107, v110);
  *v67 = v83;
  v67[1] = v82;
  *v68 = v105;
  v68[1] = v115;
  *v69 = v108;
  v69[1] = v113;
  sub_1E634(v81, v121, &dword_1C63F8, &qword_171800);
  sub_C9294(v116 + 296, v0 + 21096);
  *(v0 + 21080) = sub_106160();
  sub_1055B8();
  *(v0 + 21088) = sub_104478(v84, 255, v85, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 21056));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v86 = sub_2440(&qword_1C5ED8, &unk_173090);
  v87 = sub_38DA0(v86);
  sub_60CF0(v87, 1);
  *v88 = v119;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 29760) = v89;
  v90 = v119;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 29768) = v91;
  *v91 = v92;
  v91[1] = sub_E3A1C;
  v93 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v93);
}

uint64_t sub_E3A1C()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 21056));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_E3B24()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3719];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  v23 = v0[3571];
  v22 = v0[3562];
  v4 = v0[3546];
  v20 = v0[3545];
  v21 = v0[3558];
  v19 = v0[3543];
  v5 = v0[3526];
  sub_106898(v6);
  sub_106F14();
  sub_387F4();
  v7 = swift_allocObject();
  sub_106C24(v7);
  sub_1068F4();
  v0[3493] = sub_16C1BC();
  sub_106E10();

  sub_106900();
  sub_2D64(v0 + 2662);
  sub_1055A0();
  sub_103BA0(v5, v8);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v21, v20);
  sub_8B60();
  sub_8748(v9, v10, v11);
  sub_1054D0();
  sub_103BA0(v22, v12);
  sub_105424();
  sub_103BA0(v23, v13);
  sub_8B60();
  sub_8748(v14, v15, v16);
  sub_8748(v24, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E4254()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3712];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3715];
  v16 = v0[3711];
  v17 = v0[3607];
  v18 = v0[3602];
  v19 = v0[3601];
  v20 = v0[3571];
  v21 = v0[3562];
  sub_8284(v0[3498] + 64, (v0 + 1456));
  sub_6361C(v0 + 1456, v0 + 256);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 256));
  sub_8748(v19, &qword_1C5800, &unk_16F510);
  sub_1054D0();
  sub_103BA0(v21, v22);
  sub_105424();
  sub_103BA0(v20, v23);
  sub_8748(v18, &qword_1C5800, &unk_16F510);
  sub_8748(v17, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E4994()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 29792) = v7;
  *(v8 + 29800) = v0;

  sub_8C88();
  v9 = *(v1 + 28768);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v10);
}

uint64_t sub_E4B08()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3724];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v3 = sub_10631C();
  sub_B9BF4(v3, v4, v5);
  sub_16C7AC();
  v6 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v1 + 24, (v0 + 2762));
  sub_8284(v1 + 64, (v0 + 376));
  sub_C9294(v1 + 296, (v0 + 2752));
  v0[3726] = *(v1 + 336);
  v0[3727] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3728] = v7;
  *v7 = v8;
  v7[1] = sub_E4C68;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_E4C68()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 22016));
  sub_C938(v2 + 3008);
  sub_2D64((v2 + 22096));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_E4DA8()
{
  sub_3868C();
  sub_38664();
  if (v1[2770])
  {
    v4 = v1[3724];
    v5 = v1[3715];
    v6 = v1[3711];
    sub_1062A0();
    v34 = v1[3557];
    v35 = v7;
    v9 = sub_10628C(v8);
    sub_106FB8(v9);
    sub_106AD4();
    sub_387F4();
    v10 = swift_allocObject();
    sub_106810(v10);
    v1[3474] = sub_1066F0();
    sub_1069D8(27792);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v1 + 2772);
    (*(v0 + 8))(v34, v2);
    sub_105424();
    sub_103BA0(v35, v11);
    sub_8748(v36, &qword_1C5800, &unk_16F510);
    sub_8748(v37, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v12 = v1[3677];
    v13 = v1[3608];
    v15 = sub_8748(v1 + v14, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v15, (v1 + 3454));
    v16 = sub_38408();
    v2(v16);
    v17 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v13 = v1[3725];
      v18 = v1[3712];
      v19 = sub_106514();
      sub_105ACC(v19);

      sub_1061C4(&def_259DC, v20, v21, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v3);

      v22 = sub_105B50();
      v18(v22);
    }

    else
    {
      v23 = v1[3712];
      v12 = v1[3677];
      sub_106258();

      v24 = sub_1058E8();
      v23(v24);
    }

    v25 = v1[3724];
    v26 = v1[3715];
    v27 = v1[3711];
    v38 = v1[3607];
    sub_106360();
    v28 = sub_10591C();
    sub_8284(v28, (v1 + 336));
    sub_6361C(v1 + 336, v1 + 356);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v1 + 356));
    v29 = sub_387CC();
    v30(v29);
    sub_105424();
    sub_103BA0(v13, v31);
    sub_8748(v12, &qword_1C5800, &unk_16F510);
    sub_8748(v38, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E560C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3676];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C(2);
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v3);
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 416));
  sub_6361C(v1 + 416, v1 + 436);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 436));
  sub_105424();
  sub_103BA0(v0, v20);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E5D10()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 29848) = v7;
  *(v8 + 29856) = v0;

  sub_8C88();
  v9 = *(v1 + 28760);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v10);
}

uint64_t sub_E5E84()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3731];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v3 = sub_10631C();
  sub_B9BF4(v3, v4, v5);
  sub_16C7AC();
  v6 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_8284(v1 + 64, (v0 + 536));
  sub_C9294(v1 + 296, (v0 + 2822));
  v0[3733] = *(v1 + 336);
  v0[3734] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3735] = v7;
  *v7 = v8;
  v7[1] = sub_E5FDC;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_E5FDC()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 22576));
  sub_C938(v2 + 4288);
  sub_2D64((v2 + 22776));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v6);
}

void sub_E6118()
{
  sub_3868C();
  sub_38664();
  if (v1[2860])
  {
    v4 = v1[3731];
    v5 = v1[3715];
    v6 = v1[3711];
    sub_1062A0();
    v35 = v1[3556];
    v36 = v7;
    v9 = sub_10628C(v8);
    sub_106FB8(v9);
    sub_106AD4();
    sub_387F4();
    v10 = swift_allocObject();
    sub_106810(v10);
    v1[3471] = sub_1066F0();
    sub_1069D8(27768);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v1 + 2862);
    (*(v0 + 8))(v35, v2);
    sub_105424();
    sub_103BA0(v36, v11);
    sub_8748(v37, &qword_1C5800, &unk_16F510);
    sub_8748(v39, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v13 = sub_8748(v1 + v12, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v13, (v1 + 3427));
    v14 = sub_38408();
    v2(v14);
    v15 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v16 = v1[3712];
      v17 = sub_3A58C(2);
      sub_105ACC(v17);

      sub_1061C4(&def_259DC, v18, v19, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v3);

      v20 = sub_4B4EC();
      v16(v20);
    }

    else
    {
      v21 = v1[3712];
      sub_106258();

      v22 = sub_1058E8();
      v21(v22);
    }

    v23 = v1[3731];
    v24 = v1[3715];
    v25 = v1[3711];
    sub_106438();
    v38 = v26;
    v40 = v27;
    v28 = v1[3571];
    v29 = sub_10591C();
    sub_8284(v29, (v1 + 496));
    sub_6361C(v1 + 496, v1 + 516);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v1 + 516));
    v30 = sub_387CC();
    v31(v30);
    sub_105424();
    sub_103BA0(v28, v32);
    sub_8748(v38, &qword_1C5800, &unk_16F510);
    sub_8748(v40, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E6990()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3673];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C(2);
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationNoMatch_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v3);
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 576));
  v20 = sub_106BC0();
  sub_6361C(v20, v21);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 636));
  sub_105424();
  sub_103BA0(v0, v22);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E7098()
{
  sub_76D68();
  sub_38CAC();
  sub_C990();
  *v3 = v1;
  v4 = *v2;
  sub_38388();
  *v5 = v4;
  v1[3738] = v6;
  v1[3739] = v0;

  sub_8C88();
  if (v0)
  {
    sub_1062C8();
    v7 = v1[3594];
    sub_10642C();

    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v1[3594], &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v8);
}

uint64_t sub_E7250()
{
  sub_3868C();
  sub_38664();
  v1 = 25616;
  v2 = [*(v0 + 29904) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 25616));
  v3 = sub_17970();
  v4(v3);
  sub_38138((v0 + 25656));
  if (sub_16C40C())
  {
    v5 = sub_105C94();
  }

  else
  {
    v8 = sub_106474();
    sub_C9294(v8, v0 + 25696);
    sub_3820C((v0 + 25696));
    v9 = sub_17970();
    v10(v9);
    sub_38138((v0 + 25736));
    sub_16C3FC();
    sub_106D88();
    v5 = sub_105A84((v0 + 25696));
    if (v11)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  sub_106680(v5, v6, v7);
  sub_106DF8();
  v12 = sub_1057EC();
  v13(v12);
  v14 = *(v0 + 20728);
  sub_38138((v0 + 20696));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v1 = 25576;
    v15 = sub_106474();
    sub_C9294(v15, v0 + 23256);
    sub_3820C((v0 + 23256));
    v16 = sub_17970();
    v17(v16);
    v14 = *(v0 + 25608);
    sub_38138((v0 + 25576));
    sub_16C3FC();
    sub_105820();
  }

  v18 = *(v0 + 29720);
  v19 = sub_16D69C();
  v130 = v20;
  sub_10543C();
  v23 = sub_103600(v18, v21, v22);
  if (!v23 || (sub_9AE60(v23), sub_5E188(), , !v14) || (sub_146C80(v14), !v24))
  {
    sub_106130();
    v32 = *(v0 + 29272);

    sub_106F48();

    sub_106CBC();

    sub_1069B4();

    sub_105B70();
    v33 = sub_A77C4();
    v19(v33);
    v34 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v35 = *(v0 + 29696);
      v36 = sub_106514();
      sub_1054E8(v36);
      sub_1028F0(v32, v37, v38, v39);

      sub_1061C4(&def_259DC, v40, v41, "No loggedTime present nested inside intentResponse, returning GenericErrorFlow");
      sub_3A5E0(v1);

      v42 = sub_105B50();
      v35(v42);
    }

    else
    {
      v43 = *(v0 + 29696);
      sub_106258();

      v44 = sub_1058E8();
      v43(v44);
    }

    v45 = *(v0 + 29904);
    v46 = *(v0 + 29720);
    v47 = *(v0 + 29688);
    sub_105BD0();
    v125 = *(v0 + 28440);
    v126 = *(v0 + 28568);
    v48 = *(v0 + 28368);
    v49 = *(v0 + 28360);
    v50 = *(v0 + 28328);
    sub_8284(*(v0 + 27984) + 64, v0 + 11328);
    sub_6361C((v0 + 11328), (v0 + 11488));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v0 + 11488);
    sub_8748(v50, &qword_1C57F8, &unk_172510);
    (*(v48 + 8))(v125, v49);
    sub_105424();
    sub_103BA0(v126, v51);
    sub_8748(v128, &qword_1C5800, &unk_16F510);
    sub_8748(v130, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v25 = *(v0 + 17793);

  v124 = getMedStatus(from:)();

  getLocalizedMedName(from:)();

  v129 = v19;
  if (v25)
  {
    sub_10543C();
    v29 = sub_103600(v26, v27, v28);
    if (v29 && (sub_9AE60(v29), sub_5E188(), , v25))
    {
      v30 = sub_16B9FC(v25);
      v121 = v31;
      v122 = v30;
    }

    else
    {
      v121 = 0;
      v122 = 0;
    }
  }

  else
  {
    v121 = *(v0 + 29544);
    v122 = *(v0 + 29552);
  }

  v127 = *(v0 + 29904);
  v54 = *(v0 + 29624);
  v55 = *(v0 + 29616);
  v56 = *(v0 + 29600);
  v57 = *(v0 + 29592);
  v58 = *(v0 + 29576);
  v59 = *(v0 + 29568);
  sub_107044();
  v113 = *(v0 + 28320);
  v60 = *(v0 + 28200);
  v61 = *(v0 + 28144);
  v62 = *(v0 + 28064);
  sub_107008();
  sub_86B0(v63, v64, &qword_1C57F8, &unk_172510);
  v120 = sub_14D35C();
  if (v58)
  {
    v65 = v59;
  }

  else
  {
    v65 = 0x646567676F4CLL;
  }

  v66 = 0xE600000000000000;
  if (v58)
  {
    v66 = v58;
  }

  v118 = v66;
  v119 = v65;
  if (v56)
  {
    v67 = v57;
  }

  else
  {
    v67 = 0x64657070696B53;
  }

  v68 = 0xE700000000000000;
  if (v56)
  {
    v68 = v56;
  }

  v116 = v68;
  v117 = v67;
  if (v54)
  {
    v69 = v55;
  }

  else
  {
    v69 = 0x6E656B6154;
  }

  v70 = 0xE500000000000000;
  if (v54)
  {
    v70 = v54;
  }

  v114 = v70;
  v115 = v69;
  sub_1055D0();
  sub_1039B4(v111, v62);
  sub_388E4();
  sub_214C(v71, v72, v73, v108);
  v110 = *(v61 + 32);
  v109 = sub_16C11C();
  sub_8AB4();
  sub_214C(v74, v75, v76, v77);
  v78 = v60 + *(v61 + 36);
  v79 = (v60 + *(v61 + 40));
  v80 = (v60 + *(v61 + 44));
  v112 = *(v61 + 76);
  v81 = sub_106150(v112);
  sub_214C(v81, v82, v83, v108);
  sub_1069CC(v124);
  sub_107070();
  *(v60 + 40) = v122;
  *(v60 + 48) = v121;
  *v78 = 0;
  *(v78 + 8) = 1;

  v84 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v79 = sub_147C94(v84, v85);
  v79[1] = v86;
  v87 = 0x656465654E207341;
  if (v121)
  {
    v87 = v122;
  }

  *v80 = 0;
  v80[1] = 0;
  v88 = (v60 + *(v61 + 52));
  v89 = *(v61 + 56);
  v90 = *(v61 + 60);
  v91 = (v60 + *(v61 + 64));
  v92 = (v60 + *(v61 + 68));
  sub_106D10(v87);
  sub_147DA8(v113);
  sub_8748(v113, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v93, v94, v95, v109);
  sub_1E634(v121, v60 + v110, &qword_1C63F0, &unk_1717F0);
  *v88 = v129;
  v88[1] = v130;
  *(v60 + v89) = 0;
  *(v60 + v90) = v120 & 1;
  *v91 = v119;
  v91[1] = v118;
  *v92 = v117;
  v92[1] = v116;
  *v61 = v115;
  *(v61 + 8) = v114;
  sub_1E634(v62, v60 + v112, &dword_1C63F8, &qword_171800);
  sub_C9294(v123 + 296, v0 + 25456);
  *(v0 + 24840) = sub_106160();
  sub_1055B8();
  *(v0 + 24848) = sub_104478(v96, 255, v97, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 24816));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v98 = sub_2440(&qword_1C5ED8, &unk_173090);
  v99 = sub_38DA0(v98);
  sub_60CF0(v99, 1);
  *v100 = v127;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 29920) = v101;
  v102 = v127;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 29928) = v103;
  *v103 = v104;
  v103[1] = sub_E7FF4;
  sub_1057CC();
  sub_8CC0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v105);
}

uint64_t sub_E7FF4()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 24816));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_E80FC()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3738];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  sub_1067EC();
  v13 = v0[3541];
  v4 = v0[3525];
  sub_106898(v5);
  sub_106968();
  sub_387F4();
  v6 = swift_allocObject();
  sub_106850(v6);
  sub_1068F4();
  v0[3494] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3187);
  sub_1055A0();
  sub_103BA0(v4, v7);
  sub_8748(v13, &qword_1C57F8, &unk_172510);
  v8 = sub_107058();
  v9(v8);
  sub_105424();
  sub_103BA0(v14, v10);
  sub_8748(v15, &qword_1C5800, &unk_16F510);
  sub_8748(v16, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E87F4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3712];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create specificMedicationStatusBothSkipped_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3715];
  v16 = v0[3711];
  sub_105BD0();
  v17 = v0[3571];
  v18 = sub_10591C();
  sub_8284(v18, (v0 + 1476));
  sub_6361C(v0 + 1476, v0 + 1496);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1496));
  v19 = sub_387CC();
  v20(v19);
  sub_105424();
  sub_103BA0(v17, v21);
  sub_8748(v24, &qword_1C5800, &unk_16F510);
  sub_8748(v25, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_E8F1C(uint64_t a1)
{
  sub_107214();
  sub_C9EC();
  sub_38CAC();
  sub_C990();
  *v4 = v2;
  v5 = *v3;
  sub_38388();
  *v6 = v5;
  *(v2 + 29952) = v7;

  sub_8C88();
  if (v1)
  {
    sub_1062C8();
    sub_10642C();
  }

  else
  {
  }

  sub_105A74();
  sub_107200();

  return _swift_task_switch(v8);
}

uint64_t sub_E908C()
{
  v2 = 24936;
  v3 = *(v0 + 27984);
  v4 = [*(v0 + 29952) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 24936));
  v5 = sub_17970();
  v6(v5);
  sub_38138((v0 + 24976));
  if (sub_16C40C())
  {
    v7 = sub_105C94();
  }

  else
  {
    v1 = 25056;
    v3 = 25016;
    v10 = sub_106474();
    sub_C9294(v10, v0 + 25016);
    sub_3820C((v0 + 25016));
    v11 = sub_17970();
    v12(v11);
    sub_38138((v0 + 25056));
    sub_16C3FC();
    sub_106D88();
    v7 = sub_105A84((v0 + 25016));
    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4;
    }
  }

  sub_106680(v7, v8, v9);
  sub_106DF8();
  v14 = sub_1057EC();
  v15(v14);
  sub_38138((v0 + 25136));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v1 = 25176;
    v2 = 25216;
    v16 = sub_106474();
    sub_C9294(v16, v0 + 25176);
    sub_3820C((v0 + 25176));
    v17 = sub_17970();
    v18(v17);
    sub_38138((v0 + 25216));
    sub_16C3FC();
    sub_105820();
  }

  v19 = *(v0 + 17793);
  v20 = *(v0 + 27984);
  sub_16D69C();
  sub_1071B8();
  v146 = getMedStatus(from:)();

  sub_16BF4C();
  if (v19)
  {
    sub_10543C();
    v24 = sub_103600(v21, v22, v23);
    if (v24 && (sub_9AE60(v24), sub_1068E8(), , v20))
    {
      sub_16B9FC(v20);
      v142 = v25;
    }

    else
    {
      v142 = 0;
    }
  }

  else
  {
    sub_106F90();
  }

  sub_1067C4(*(v0 + 29952));
  v117 = v26;
  v122 = *(v0 + 28304);
  v27 = *(v0 + 28192);
  v28 = *(v0 + 28144);
  sub_106490();
  v29 = *(v0 + 28056);
  sub_106C58();
  v147 = v30;
  sub_86B0(v31, v32, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  if (v19)
  {
    v33 = v3;
  }

  else
  {
    v33 = 0x646567676F4CLL;
  }

  v34 = 0xE600000000000000;
  if (v19)
  {
    v34 = v19;
  }

  v144 = v34;
  v145 = v33;
  v139 = v2;
  if (v1)
  {
    v35 = 25136;
  }

  else
  {
    v35 = 0x6E656B6154;
  }

  v36 = 0xE500000000000000;
  if (v1)
  {
    v36 = v1;
  }

  v133 = v36;
  v135 = v35;
  sub_1055D0();
  sub_1039B4(v117, v29);
  sub_388E4();
  v37 = v97;
  sub_214C(v38, v39, v40, v97);
  v107 = sub_106EC0();
  sub_8AB4();
  sub_214C(v41, v42, v43, v44);
  v45 = (v27 + v28[10]);
  v46 = v27 + v28[11];
  v118 = v28[19];
  v47 = sub_106150(v118);
  sub_214C(v47, v48, v49, v97);
  sub_1069CC(v146);
  v50 = sub_BA66C();
  sub_106A20(v50, v51, v52, v53, v54, v55, v56, v57, v97, v102, v107, v112, v118, v122, v126, v29, v131, v133, v135, v137, v139, 25096, v142);
  v58 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v45 = sub_147C94(v58, v59);
  v45[1] = v60;
  sub_1065B4(v37, v98, v103, v108, v113, v119, v123);
  sub_8748(v46, &qword_1C57F8, &unk_172510);
  v61 = sub_10701C();
  v62(v61);
  sub_388E4();
  v66 = sub_214C(v63, v64, v65, v109);
  v72 = sub_106EA4(v66, v67, &qword_1C63F0, &unk_1717F0, v68, v69, v70, v71, v99, v104, v109, v114);
  sub_1064CC(v72, v73, v74, v75, v76, v77, v78, v79, v100, v105, v110, v115, v120, v124, v127, v129, v132, v134, v136, v138, v140, v141, v143, v144, v145);
  sub_106E88(v80, v81, &dword_1C63F8, &qword_171800, v82, v83, v84, v85, v101, v106, v111, v116, v121, v125, v128, v130);
  sub_C9294(v147 + 296, v0 + 25296);
  *(v0 + 25360) = sub_106160();
  sub_1055B8();
  *(v0 + 25368) = sub_104478(v86, 255, v87, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 25336));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v88 = sub_2440(&qword_1C5ED8, &unk_173090);
  v89 = sub_38DA0(v88);
  sub_60CF0(v89, 1);
  *v90 = v148;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 29960) = v91;
  v92 = v148;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 29968) = v93;
  *v93 = v94;
  v93[1] = sub_E95D0;
  v95 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v95);
}

uint64_t sub_E95D0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 25336));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_E96D8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3744];
  v2 = v0[3715];
  v3 = v0[3711];
  sub_105C50();
  sub_1067EC();
  v13 = v0[3539];
  v4 = v0[3524];
  sub_106898(v5);
  sub_106968();
  sub_387F4();
  v6 = swift_allocObject();
  sub_106850(v6);
  sub_1068F4();
  v0[3488] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3157);
  sub_1055A0();
  sub_103BA0(v4, v7);
  sub_8748(v13, &qword_1C57F8, &unk_172510);
  v8 = sub_107058();
  v9(v8);
  sub_105424();
  sub_103BA0(v14, v10);
  sub_8748(v15, &qword_1C5800, &unk_16F510);
  sub_8748(v16, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_E9DD0()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3712];
  v7 = v1[3656];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C(2);
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v3);
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3715];
  v18 = v1[3711];
  v25 = v1[3607];
  sub_106360();
  v19 = sub_10591C();
  sub_8284(v19, (v1 + 1516));
  sub_6361C(v1 + 1516, v1 + 1536);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v1 + 1536));
  v20 = sub_387CC();
  v21(v20);
  sub_105424();
  sub_103BA0(v0, v22);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v25, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_EA4F8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 30024) = v3;
  *(v1 + 30032) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_EA5E4()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 30032);
  v2 = *(v0 + 30024);
  sub_2D64((v0 + 21496));
  if (!v2 && v1 == 0xE000000000000000 || (sub_16E6BC() & 1) != 0)
  {
    sub_106B44();
    v3 = *(v0 + 29512);
    v4 = *(v0 + 29504);
    v5 = *(v0 + 29208);

    sub_1067B8();

    sub_107064();

    sub_105B70();
    v6 = sub_A77C4();
    v3(v6);
    v7 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v8 = sub_3A58C(2);
      sub_105A28(v8);
      if (*(v5 + 16))
      {
        while (1)
        {
          v9 = sub_105734();
          sub_3A5A4(v9, v10, v11, v12);
          sub_1065A8();
        }
      }

      v13 = *(v0 + 29992);
      v4 = *(v0 + 29208);
      sub_106404();
      sub_105BB0(&def_259DC, v14, v15, "Couldn't get a displayName for this medID, returning GenericErrorFlow");
      sub_3A5E0(v8);

      v16 = sub_105B00();
      v13(v16);
    }

    else
    {
      v17 = *(v0 + 29992);
      v2 = *(v0 + 29208);
      sub_106258();

      v18 = sub_1058E8();
      v17(v18);
    }

    v19 = *(v0 + 30000);
    v20 = sub_105674();
    sub_8284(v20, v0 + 13888);
    v21 = sub_106BC0();
    sub_6361C(v21, v22);
    sub_82E0();
    sub_16C4EC();

    sub_376FC(v0 + 20104);
    sub_8334(v0 + 14048);
    sub_105424();
    sub_103BA0(v4, v23);
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_8748(v7, &qword_1C69C0, &unk_174290);
    sub_104F9C();
    sub_1056B8();

    sub_105BE0();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  sub_106B28();
  v26 = getMedDosageValue(from:)();
  v28 = v27;

  if (v28)
  {
    goto LABEL_17;
  }

  v29 = *(v0 + 30000);
  v30 = *(v0 + 29976);
  v31 = *(v0 + 29512);
  v32 = *(v0 + 29504);
  v33 = *(v0 + 29200);
  v34 = *&v26;
  v35 = *(v0 + 28864);
  v36 = sub_FEFD4(v34);
  [v29 setDosage:v36];
  sub_8B48(v32, v0 + 26504);
  v31(v33, v32, v35);
  sub_106F78();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v38 = v36;
  v39 = sub_16DBDC();
  LOBYTE(v32) = sub_16E36C();
  sub_106420();
  v40 = swift_allocObject();
  *(v40 + 16) = 64;
  sub_106420();
  v41 = swift_allocObject();
  sub_106AF0(v41);
  sub_106264();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1041B4;
  *(v42 + 24) = v37;
  sub_106264();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1041BC;
  *(v43 + 24) = v42;
  sub_106F30(v30);
  sub_61090();
  *v44 = sub_104B38;
  v44[1] = v40;
  v44[2] = sub_104B38;
  v44[3] = v41;
  v44[4] = sub_1041C4;
  v44[5] = v43;

  if (!os_log_type_enabled(v39, v32))
  {
    v64 = *(v0 + 29992);
    v65 = *(v0 + 29200);
    v66 = *(v0 + 28864);

    v64(v65, v66);
LABEL_17:
    v63 = *(v0 + 29984);
    goto LABEL_18;
  }

  v45 = *(v0 + 29984);
  v46 = sub_3A58C(12);
  v47 = sub_93228();
  sub_106ABC(258);
  v48 = sub_105734();
  sub_3A5A4(v48, v49, v50, v51);
  if (v45)
  {
    goto LABEL_21;
  }

  v52 = sub_105734();
  sub_3A5A4(v52, v53, v54, v55);

  v56 = sub_105734();
  sub_3A5A4(v56, v57, v58, v59);
  v115 = *(v0 + 29992);
  sub_106CB0();

  sub_1070F0(&def_259DC, v60, v61, "Post-disambiguation, re-grab the dosage: (%@) in task");
  sub_8748(v47, &qword_1C57B8, &qword_1715A0);
  sub_8A2C(v47);
  sub_3A5E0(v46);

  v62 = sub_1064C0();
  v115(v62);
  v63 = 0;
LABEL_18:
  sub_106B28();
  v67 = getMedDosageUnit(from:)();
  v69 = v68;

  if (v69)
  {
    v116 = v63;
    v70 = *(v0 + 29976);
    v71 = *(v0 + 29512);
    v72 = sub_106CB0();
    sub_1035A8(v72, v69, v73);
    sub_106204(v74, v0 + 26528);
    v75 = sub_13298();
    v71(v75);
    sub_106264();
    v76 = swift_allocObject();
    *(v76 + 16) = v67;
    *(v76 + 24) = v69;

    v77 = sub_16DBDC();
    LOBYTE(v71) = sub_16E36C();
    sub_106420();
    v78 = swift_allocObject();
    *(v78 + 16) = 32;
    sub_106420();
    v79 = swift_allocObject();
    sub_106AF0(v79);
    sub_106264();
    v80 = swift_allocObject();
    *(v80 + 16) = sub_1041AC;
    *(v80 + 24) = v76;
    sub_106264();
    v81 = swift_allocObject();
    *(v81 + 16) = sub_104B28;
    *(v81 + 24) = v80;
    sub_106F30(v70);
    sub_61090();
    *v82 = sub_104B38;
    v82[1] = v78;
    v82[2] = sub_104B38;
    v82[3] = v79;
    v82[4] = sub_1049F0;
    v82[5] = v81;

    if (os_log_type_enabled(v77, v71))
    {
      v83 = sub_3A58C(12);
      v84 = sub_CA30();
      sub_106ABC(258);
      v85 = sub_105734();
      sub_3A5A4(v85, v86, v87, v88);
      if (v116)
      {
LABEL_21:

        sub_8CC0();
      }

      v100 = sub_105734();
      sub_3A5A4(v100, v101, v102, v103);

      v105 = sub_105734();
      sub_3A5A4(v105, v106, v107, v108);
      v114 = *(v0 + 29192);
      v117 = *(v0 + 29992);
      v109 = *(v0 + 28864);

      sub_1070F0(&def_259DC, v110, v111, "Post-disambiguation, re-grab the dosageUnit: (%s) in task");
      sub_2D64(v84);
      sub_8A2C(v84);
      sub_3A5E0(v83);

      v117(v114, v109);
      v63 = 0;
    }

    else
    {
      v113 = *(v0 + 29992);
      v89 = *(v0 + 29192);
      v90 = *(v0 + 28864);

      v113(v89, v90);
      v63 = v116;
    }
  }

  else
  {

    sub_1067B8();
  }

  *(v0 + 30040) = v63;
  if ((*(v0 + 30648) & 1) == 0 && *(v0 + 29680))
  {
    v91 = *(v0 + 30000);
    v92 = sub_FEFD4(*(v0 + 29664));
    [v91 setStrength:v92];

    sub_106844();
    sub_103550(v93, v94, v95);
  }

  v96 = *(v0 + 30000);
  *(v0 + 30048) = *(*(v0 + 27984) + 352);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 27872;
  *(v0 + 88) = sub_EB610;
  v97 = swift_continuation_init();
  *(v0 + 20520) = sub_2440(&qword_1C9D18, &qword_176758);
  *(v0 + 20496) = v97;
  *(v0 + 20464) = _NSConcreteStackBlock;
  *(v0 + 20472) = 1107296256;
  *(v0 + 20480) = sub_FF01C;
  *(v0 + 20488) = &unk_1BC068;
  [swift_unknownObjectRetain() handleLogSpecificMedications:v96 completion:v0 + 20464];
  sub_8CC0();

  return _swift_continuation_await(v98);
}

uint64_t sub_EB610()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_EB6E0()
{
  sub_38AB4();
  v345 = v7;
  v346 = v8;
  sub_38664();
  v344 = v2;
  v9 = v2 + 0x4000;
  v10 = *(v2 + 27872);
  *(v2 + 30056) = v10;
  v11 = swift_unknownObjectRelease();
  v12 = (*(&stru_20.maxprot + (swift_isaMask & *v10)))(v11);
  switch(v12)
  {
    case 'j':
      v337 = v10;
      sub_105C30();
      v13 = *(v2 + 29520);
      v14 = *(v2 + 29512);
      v1 = *(v2 + 29504);
      sub_105A3C();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      sub_106BDC((v2 + 18016));
      sub_105748(4);
      sub_376FC(v2 + 18016);
      sub_105B70();
      v19 = sub_106194();
      v14(v19);
      v20 = sub_16DBDC();
      sub_16E36C();
      v21 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v22 = sub_106514();
        sub_105630(v22);
        sub_1028F0(v21, v23, v24, v25);

        sub_1061E4(&def_259DC, v26, v27, "got state .awaitingConfirmationLogAsScheduled inside first .nameSelected turn in SpecificMedLoggingFlow");
        sub_3A5E0(v14);

        v28 = sub_105B50();
        v13(v28);
      }

      else
      {
        v141 = *(v2 + 29992);
        sub_106E6C();

        v142 = sub_C9E0();
        v141(v142);
        v1 = *(v2 + 30040);
      }

      v112 = v337;
      sub_10543C();
      v145 = sub_103600(v337, v143, v144);
      if (v145)
      {
        v146 = v145;

        v147 = getLocalizedMedName(from:)();
        v149 = v148;

        if (v149)
        {

          v328 = v149;
          v329 = v147;
        }

        else
        {
          v328 = *(v2 + 30032);
          v329 = *(v2 + 30024);
        }

        sub_106270();
        v271 = *(v2 + 27984);

        v327 = getMedStatus(from:)();

        sub_8284(v271 + 64, v2 + 15168);
        v272 = sub_105618();
        v326 = sub_FFA7C(v272, &CATWrapperSimple.__allocating_init(options:globals:));
        v273 = sub_105600();
        v274 = sub_FFA7C(v273, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC((v2 + 22376));
        type metadata accessor for LogMedAsScheduledConfirmationStrategy();
        v275 = swift_allocObject();
        v276 = *(v2 + 22400);
        v277 = *(v2 + 22408);
        v278 = sub_37BE8(v2 + 22376, v276);
        v279 = *(v276 - 8);
        v280 = sub_8BC0();
        (*(v279 + 16))(v280, v278, v276);
        v281 = sub_98AFC(v329, v328, v327 & 1, v146, (v2 + 15168), v326, v274, v280, v275, v276, v277);
        sub_2D64((v2 + 22376));

        sub_16C73C();
        sub_1060FC();
        *(v2 + 27960) = sub_DB30C(v281, v341, v282, v283, type metadata accessor for LogMedAsScheduledConfirmationStrategy, &unk_1748A0);
        sub_FFCEC();
        sub_107084();
        v284 = sub_387CC();
        sub_2440(v284, v285);
        sub_1055E8();
        sub_98C8(v286, &qword_1C67A8, &qword_171CC0, v287);
        sub_16C4CC();

        sub_106328((v2 + 17728));
        *(v2 + 17792) &= 0x3Fu;
        sub_8748(v2 + 17728, &qword_1C9D30, &qword_1767C8);

        sub_105424();
        sub_103BA0(v331, v288);
        sub_8748(v332, &qword_1C5800, &unk_16F510);
        sub_8748(v333, &qword_1C69C0, &unk_174290);
        goto LABEL_80;
      }

      sub_106F84();

      sub_1B9B4(v229, v2 + 27656);
      v230 = sub_1067A8();
      v21(v230);
      v89 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v231 = sub_106530();
      v232 = *(v2 + 29992);
      v86 = *(v2 + 29128);
      if (v231)
      {
        v233 = sub_3A58C(2);
        sub_105630(v233);
        sub_1028F0(v21, v234, v235, v236);

        sub_1063E8(&def_259DC, v237, v18, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        v112 = v337;
        sub_3A5E0(v337);
      }

      else
      {
      }

      v297 = sub_387CC();
      v232(v297);
      v298 = *(v2 + 30000);
      v299 = sub_1058AC();
      sub_8284(v299, v2 + 1568);
      v292 = 16288;
      sub_6361C((v2 + 1568), (v2 + 16288));
      v300 = sub_82E0();
      sub_1071D0(v300, &type metadata for GenericErrorFlow, v300);

      v296 = 17944;
      sub_1062DC();
      *(v2 + 18008) &= 0x3Fu;
      goto LABEL_87;
    case 'k':
      v339 = v10;
      sub_105C30();
      sub_106CC8();
      sub_105A3C();
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0xE700000000000000;
      }

      sub_106BDC((v2 + 18736));
      sub_105748(3);
      sub_376FC(v2 + 18736);
      sub_105B70();
      v54 = sub_106194();
      v0(v54);
      v55 = sub_16DBDC();
      sub_16E36C();
      v56 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v57 = sub_106514();
        sub_105630(v57);
        sub_1028F0(v56, v58, v59, v60);

        sub_1061E4(&def_259DC, v61, v62, "got state .awaitingConfirmationLogAsNeeded inside first .nameSelected turn in SpecificMedLoggingFlow");
        sub_3A5E0(v53);

        v63 = sub_105B50();
        v0(v63);
      }

      else
      {
        v110 = *(v2 + 29992);
        sub_106E6C();

        v111 = sub_C9E0();
        v110(v111);
        v1 = *(v2 + 30040);
      }

      v112 = v339;
      sub_10543C();
      if (sub_103600(v339, v113, v114))
      {
        sub_106270();
        v115 = *(v2 + 27984);
        sub_1070C0();
        type metadata accessor for LogMedAsNeededConfirmationStrategy();
        sub_8284(v115 + 64, v2 + 14688);
        v116 = sub_105618();
        sub_FFA7C(v116, &CATWrapperSimple.__allocating_init(options:globals:));
        v117 = sub_105600();
        sub_FFA7C(v117, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v341);
        v118 = sub_106BA4();
        v123 = sub_143FF8(v118, v119, v120, v121, v122);

        sub_16C73C();
        sub_106650();
        *(v2 + 27752) = sub_DB30C(v123, v341, v124, v125, type metadata accessor for LogMedAsNeededConfirmationStrategy, &unk_179CF0);
        sub_FFD2C();
        sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_1055E8();
        sub_98C8(v126, &qword_1C67A8, &qword_171CC0, v127);
        sub_106BF4(27752);
        sub_16C4CC();

        v128 = 18304;
        sub_1062DC();
        *(v2 + 18368) &= 0x3Fu;
        goto LABEL_46;
      }

      sub_106C04();
      sub_38474();
      v221 = sub_1067A8();
      v5(v221);
      v89 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v222 = sub_106530();
      v223 = *(v2 + 29992);
      v86 = *(v2 + 29112);
      if (v222)
      {
        v224 = sub_3A58C(2);
        sub_105630(v224);
        sub_1028F0(v56, v225, v226, v227);

        sub_1063E8(&def_259DC, v228, v5, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        v112 = v339;
        sub_3A5E0(v339);
      }

      else
      {
      }

      v289 = sub_387CC();
      v223(v289);
      v290 = *(v2 + 30000);
      v291 = sub_1058AC();
      sub_8284(v291, v2 + 14208);
      v292 = 13248;
      v293 = sub_106BC0();
      sub_6361C(v293, v294);
      v295 = sub_82E0();
      sub_1071D0(v295, &type metadata for GenericErrorFlow, v295);

      v296 = 18520;
      sub_1062DC();
      *(v2 + 18584) &= 0x3Fu;
      goto LABEL_87;
    case 'l':
      v64 = *(v2 + 29512);
      sub_38474();
      v65 = sub_4B304();
      v64(v65);
      v66 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v335 = *(v2 + 29992);
        sub_106600();
        v67 = sub_3A58C(2);
        sub_105630(v67);
        sub_1028F0(v64, v68, v69, v70);

        sub_1061E4(&def_259DC, v71, v72, "SpecificMedLoggingFlow received .statusBothSkipped intent response from post-first turn nameSelected case, creating output.");
        sub_3A5E0(v10);

        v73 = sub_10673C();
        v335(v73);
      }

      else
      {
        v129 = *(v2 + 29992);
        sub_10654C();

        v130 = sub_105C40();
        v129(v130);
      }

      v131 = *(v2 + 27984);
      sub_16C45C();
      sub_37FFC();
      v132 = sub_10631C();
      sub_B9BF4(v132, v133, v134);
      v135 = 1;
      sub_16C7AC();
      *(v2 + 30168) = *(v131 + 336);

      sub_10543C();
      v138 = sub_103600(v10, v136, v137);
      if (v138)
      {
        v139 = sub_9AE60(v138);

        if (v139 && (sub_146C80(v139), v140))
        {
          sub_16E23C();

          v135 = 0;
        }

        else
        {
          v135 = 1;
        }
      }

      sub_214C(*(v2 + 28680), v135, 1, *(v2 + 28528));
      v218 = swift_task_alloc();
      *(v2 + 30176) = v218;
      *v218 = v2;
      v218[1] = sub_F03F4;
      sub_C98D8(*(v2 + 28680));
      sub_106574();

      return sub_1683D0();
    case 'm':
      v339 = v10;
      sub_105C30();
      sub_106CC8();
      sub_105A3C();
      if (v74)
      {
        v75 = v74;
      }

      else
      {
        v75 = 0xE700000000000000;
      }

      sub_106BDC((v2 + 20176));
      sub_105748(5);
      sub_376FC(v2 + 20176);
      sub_105B70();
      v76 = sub_106194();
      v0(v76);
      v77 = sub_16DBDC();
      sub_16E36C();
      v78 = sub_10699C();
      if (sub_106984())
      {
        sub_106CE0();
        v79 = sub_106514();
        sub_105630(v79);
        sub_1028F0(v78, v80, v81, v82);

        sub_1061E4(&def_259DC, v83, v84, "got state .awaitingConfirmationUpdateToStatus in SpecificMedLoggingFlow");
        sub_3A5E0(v75);

        v85 = sub_105B50();
        v0(v85);
      }

      else
      {
        v150 = *(v2 + 29992);
        sub_106E6C();

        v151 = sub_C9E0();
        v150(v151);
        v1 = *(v2 + 30040);
      }

      v112 = v339;
      sub_10543C();
      if (sub_103600(v339, v152, v153))
      {
        sub_106270();
        v154 = *(v2 + 27984);
        sub_1070C0();
        type metadata accessor for MedUpdateLogStatusStrategy();
        sub_8284(v154 + 64, v2 + 9888);
        v155 = sub_105618();
        sub_FFA7C(v155, &CATWrapperSimple.__allocating_init(options:globals:));
        v156 = sub_105600();
        sub_FFA7C(v156, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v341);
        v157 = sub_106BA4();
        v162 = sub_143FF8(v157, v158, v159, v160, v161);

        sub_16C73C();
        sub_106668();
        *(v2 + 27840) = sub_DB30C(v162, v341, v163, v164, type metadata accessor for MedUpdateLogStatusStrategy, &unk_178328);
        sub_FFD6C();
        sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_1055E8();
        sub_98C8(v165, &qword_1C67A8, &qword_171CC0, v166);
        sub_106BF4(27840);
        sub_16C4CC();

        v128 = 18880;
        sub_1062DC();
        *(v2 + 18944) &= 0x3Fu;
LABEL_46:
        sub_8748(v2 + v128, &qword_1C9D30, &qword_1767C8);

        sub_105424();
        sub_103BA0(v331, v167);
        sub_8748(v332, &qword_1C5800, &unk_16F510);
        sub_8748(v333, &qword_1C69C0, &unk_174290);
LABEL_80:

        goto LABEL_90;
      }

      sub_106C04();
      sub_38474();
      v238 = sub_1067A8();
      v5(v238);
      v89 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      v239 = sub_106530();
      v240 = *(v2 + 29992);
      v86 = *(v2 + 29096);
      if (v239)
      {
        v241 = sub_3A58C(2);
        sub_105630(v241);
        sub_1028F0(v78, v242, v243, v244);

        sub_1063E8(&def_259DC, v245, v5, "Needed confirmation update to status but intentResponse.matchingMeds was nil.");
        v112 = v339;
        sub_3A5E0(v339);
      }

      else
      {
      }

      v301 = sub_387CC();
      v240(v301);
      v302 = *(v2 + 30000);
      v303 = sub_1058AC();
      sub_8284(v303, v2 + 5728);
      v292 = 4928;
      v304 = sub_106BC0();
      sub_6361C(v304, v305);
      v306 = sub_82E0();
      sub_1071D0(v306, &type metadata for GenericErrorFlow, v306);

      v296 = 19960;
      sub_1062DC();
      *(v2 + 20024) &= 0x3Fu;
LABEL_87:
      sub_8748(v2 + v296, &qword_1C9D30, &qword_1767C8);

      sub_8334(v2 + v292);
LABEL_88:
      sub_105424();
      sub_103BA0(v86, v307);
      sub_8748(v1, &qword_1C5800, &unk_16F510);
      v109 = v89;
      goto LABEL_89;
    case 'n':
    case 'o':
      goto LABEL_11;
    case 'p':
      v340 = v10;
      sub_106130();
      v86 = *(v2 + 29168);
      v87 = *(v2 + 28864);

      sub_106F48();

      sub_106CBC();

      sub_1069B4();

      sub_105B70();
      v88 = sub_A77C4();
      v0(v88);
      v89 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        sub_106CE0();
        sub_106600();
        v90 = sub_3A58C(2);
        sub_105630(v90);
        sub_1028F0(v87, v91, v92, v93);

        sub_1061E4(&def_259DC, v94, v95, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0(v10);

        v96 = sub_10673C();
      }

      else
      {
        v0 = *(v2 + 29992);
        v1 = *(v2 + 29168);
        sub_10654C();

        v96 = sub_105C40();
      }

      v0(v96);
      v168 = *(v2 + 30000);
      sub_105B60();
      v169 = *(v2 + 27984);
      v170 = *(v169 + 16);
      sub_8284(v169 + 64, v2 + 528);
      sub_C9294(v169 + 24, v2 + 688);

      sub_789CC((v2 + 736));
      v171 = sub_87C00();
      v172 = sub_87C2C();
      sub_309A0((v2 + 792));
      *(v2 + 520) = v170;
      *(v2 + 728) = 0;
      *(v2 + 776) = v171;
      *(v2 + 784) = v172;
      sub_87F90();
      sub_16C4EC();

      memcpy((v2 + 18160), (v2 + 20104), 0x41uLL);
      *(v2 + 18224) &= 0x3Fu;
      sub_8748(v2 + 18160, &qword_1C9D30, &qword_1767C8);

      sub_A9C4C(v2 + 520);
      goto LABEL_88;
    default:
      if (v12 == 5)
      {
        sub_1058C8();
        sub_106120();

        sub_1069C0();

        sub_106730();

        sub_1061A4();
        v97 = sub_105C00();
        v6(v97);
        v98 = sub_16DBDC();
        sub_16E36C();
        sub_106A08();
        if (sub_10623C())
        {
          v99 = *(v2 + 29992);
          v100 = sub_106514();
          v341[0] = 0;
          sub_106114(v100);
          v342 = v101;
          v343 = 0;
          sub_1028F0(v3, &v342, &v343, v341);

          sub_1061C4(&def_259DC, v102, v103, "Received failure intent response, creating output.");
          sub_3A5E0(v100);

          v104 = sub_105B50();
          v99(v104);
        }

        else
        {
          v173 = *(v2 + 29992);
          sub_106258();

          v174 = sub_1058E8();
          v173(v174);
        }

        sub_1069E4();
        *(v2 + 30112) = v98;

        getLocalizedMedName(from:)();
        v176 = v175;

        v177 = *(v2 + 28528);
        if (v176)
        {

          sub_1069FC();
          sub_16E23C();

          sub_388E4();
          sub_214C(v178, v179, v180, v177);
          v181 = sub_C98B4();
          v182(v181);
        }

        else
        {
          v246 = *(v2 + 28696);
          sub_8AB4();
          sub_214C(v247, v248, v249, v177);
          sub_16E23C();

          sub_8B20(v246, 1, v177);
          if (!v17)
          {
            sub_8748(*(v2 + 28696), &qword_1C5800, &unk_16F510);
          }
        }

        v250 = *(v2 + 28528);
        sub_388E4();
        sub_214C(v251, v252, v253, v250);
        sub_8AB4();
        sub_214C(v254, v255, v256, v250);
        v257 = swift_task_alloc();
        *(v2 + 30120) = v257;
        *v257 = v2;
        v257[1] = sub_EEF80;
        sub_C98D8(*(v2 + 28704));
        sub_106574();

        return sub_167658();
      }

      else if (v12 == 4)
      {
        sub_105A08();

        sub_1B9B4(v29, v2 + 26888);
        v30 = sub_4B304();
        v5(v30);
        v31 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v334 = *(v2 + 29992);
          sub_106600();
          v32 = sub_3A58C(2);
          sub_105630(v32);
          sub_1028F0(v4, v33, v34, v35);

          sub_1061E4(&def_259DC, v36, v37, "Received successful intent response, creating output.");
          sub_3A5E0(v10);

          v38 = sub_10673C();
          v9 = v2 + 0x4000;
          v334(v38);
        }

        else
        {
          v183 = *(v2 + 29992);
          sub_10654C();

          v184 = sub_105C40();
          v183(v184);
        }

        sub_10543C();
        v187 = sub_103600(v10, v185, v186);
        if (!v187)
        {
          v187 = sub_3A600(0);
        }

        v188 = v187;
        v189 = *(v2 + 28528);
        v190 = *(v2 + 28488);
        v191 = *(v2 + 28472);
        sub_102308(v187);

        v192 = v10;
        sub_5E188();

        v193 = sub_4B304();
        sub_FF05C(v193, v194);
        v195 = (v190 + *(v191 + 36));
        v196 = *v195;
        *(v2 + 30064) = *v195;
        v197 = *(v195 + 8);
        *(v9 + 1411) = v197;
        sub_8AB4();
        sub_214C(v198, v199, v200, v189);
        if ((v197 & 1) == 0)
        {
          v201 = *(v2 + 28528);
          sub_2440(&qword_1C8C78, &unk_1747C0);
          swift_allocObject();
          sub_61090();
          v202[3] = &type metadata for Double;
          v202[4] = &protocol witness table for Double;
          *v202 = v196;
          HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
          sub_106A50(v203);
          sub_16E23C();

          v204 = sub_106FE4();
          sub_8748(v204, v205, &unk_16F510);
          sub_388E4();
          sub_214C(v206, v207, v208, v201);
          v209 = sub_C9C8();
          sub_86FC(v209, v210, &qword_1C5800, &unk_16F510);
        }

        *(v2 + 30072) = *(*(v2 + 27984) + 336);

        sub_103660(v188, &selRef_medName);
        if (v211)
        {
          v212 = *(v2 + 28528);
          sub_16E23C();

          sub_388E4();
          sub_214C(v213, v214, v215, v212);
          v216 = sub_387CC();
          v217(v216);
        }

        else
        {
          v259 = *(v2 + 28712);
          v260 = *(v2 + 28528);
          v261 = *(v2 + 28488);
          v262 = *(v2 + 28472);
          sub_8AB4();
          sub_214C(v263, v264, v265, v260);
          sub_86B0(v261 + *(v262 + 24), v259, &qword_1C5800, &unk_16F510);
          v266 = sub_C98CC();
          sub_8B20(v266, v267, v260);
          if (v17)
          {
            v268 = *(v2 + 28528);
            sub_16E23C();
            v269 = sub_C98CC();
            sub_8B20(v269, v270, v268);
            if (!v17)
            {
              sub_8748(*(v2 + 28712), &qword_1C5800, &unk_16F510);
            }
          }

          else
          {
            (*(*(v2 + 28536) + 32))(*(v2 + 28736), *(v2 + 28712), *(v2 + 28528));
          }

          v310 = *(v2 + 28728);
          v311 = sub_C98CC();
          sub_8B20(v311, v312, v313);
          if (!v17)
          {
            sub_8748(v310, &qword_1C5800, &unk_16F510);
          }
        }

        v314 = *(v2 + 28528);
        v315 = *(v2 + 28488);
        v316 = *(v2 + 28472);
        sub_388E4();
        sub_214C(v317, v318, v319, v314);
        sub_8AB4();
        sub_214C(v320, v321, v322, v314);
        v323 = v315 + *(v316 + 40);
        LOBYTE(v315) = *(v315 + *(v316 + 44));
        v324 = swift_task_alloc();
        *(v2 + 30080) = v324;
        *v324 = v2;
        v324[1] = sub_ED700;
        v348 = v315;
        v347 = v323;
        sub_8CC0();

        return sub_167D00();
      }

      else
      {
LABEL_11:
        v338 = v10;
        v39 = *(v2 + 29624);
        v40 = *(v2 + 29576);
        v41 = *(v2 + 29512);
        v42 = *(v2 + 28864);

        sub_106CBC();

        sub_1069B4();

        sub_105B70();
        v43 = sub_A77C4();
        v41(v43);
        v44 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          sub_106CE0();
          sub_106600();
          v45 = sub_3A58C(2);
          sub_105630(v45);
          sub_1028F0(v42, v46, v47, v48);

          sub_1061E4(&def_259DC, v49, v50, "Intent response code within .nameSelected was not an expected one || is one we're not handling yet, returning nil output.");
          sub_3A5E0(v40);

          v51 = sub_10673C();
        }

        else
        {
          v39 = *(v2 + 29992);
          sub_10654C();

          v51 = sub_105C40();
        }

        v39(v51);
        v105 = *(v2 + 30000);
        v336 = *(v2 + 28856);
        v106 = *(v2 + 28816);
        v107 = *(v2 + 28568);
        sub_8284(*(v2 + 27984) + 64, v2 + 4448);
        sub_6361C((v2 + 4448), (v2 + 4768));
        sub_82E0();
        sub_16C4EC();

        memcpy((v2 + 20248), (v2 + 20104), 0x41uLL);
        *(v2 + 20312) &= 0x3Fu;
        sub_8748(v2 + 20248, &qword_1C9D30, &qword_1767C8);

        sub_8334(v2 + 4768);
        sub_105424();
        sub_103BA0(v107, v108);
        sub_8748(v106, &qword_1C5800, &unk_16F510);
        v109 = v336;
LABEL_89:
        sub_8748(v109, &qword_1C69C0, &unk_174290);
LABEL_90:
        sub_1053F0();
        sub_105CB8();
        sub_105768();

        sub_C9BC();
        sub_106574();

        return v308();
      }
  }
}

uint64_t sub_ED700()
{
  sub_76D68();
  sub_38CAC();
  sub_C990();
  *v3 = v1;
  v4 = *v2;
  sub_38388();
  *v5 = v4;
  *(v1 + 30088) = v6;

  sub_8C88();
  if (v0)
  {
    v7 = *(v1 + 28736);
    sub_10642C();

    v8 = sub_8B9C();
    sub_8748(v8, v9, &unk_16F510);
    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {

    sub_106844();
    sub_8748(v10, v11, v12);
    v13 = sub_C9C8();
    sub_8748(v13, v14, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v15);
}

uint64_t sub_ED8F0()
{
  v1 = *(v0 + 30088);
  sub_106464();
  sub_16C43C();
  sub_37FFC();
  v2 = sub_10631C();
  sub_B9BF4(v2, v3, v4);
  sub_16C7AC();
  v5 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 23456));
  v6 = sub_17970();
  v7(v6);
  sub_38138((v0 + 23496));
  if (sub_16C40C())
  {
    v8 = sub_105C94();
  }

  else
  {
    v11 = sub_106474();
    sub_C9294(v11, v0 + 23536);
    sub_3820C((v0 + 23536));
    v12 = sub_17970();
    v13(v12);
    sub_38138((v0 + 23576));
    sub_16C3FC();
    sub_106D88();
    v8 = sub_105A84((v0 + 23536));
    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
    }
  }

  sub_106680(v8, v9, v10);
  sub_106DF8();
  v15 = sub_1057EC();
  v16(v15);
  sub_38138((v0 + 23656));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v17 = sub_106474();
    sub_C9294(v17, v0 + 23696);
    sub_3820C((v0 + 23696));
    v18 = sub_17970();
    v19(v18);
    sub_38138((v0 + 23736));
    sub_16C3FC();
    sub_105820();
  }

  v20 = *(v0 + 30056);
  v21 = *(v0 + 28120);
  v22 = *(v0 + 27984);
  sub_16D69C();
  v23 = *(v22 + 16);

  v123 = getMedStatus(from:)();

  sub_16BF4C();
  sub_103660(v20, &selRef_medName);
  if (v24)
  {
    sub_1070A8();
LABEL_12:
    v114 = v23;
    v116 = v21;

    goto LABEL_13;
  }

  getLocalizedMedName(from:)();
  sub_1070A8();

  if (v23)
  {
    goto LABEL_12;
  }

  v114 = *(v0 + 30032);
  v116 = *(v0 + 30024);
LABEL_13:
  v108 = *(v0 + 17795);
  v106 = *(v0 + 30064);
  v25 = *(v0 + 30056);
  sub_106C98();
  v26 = *(v0 + 28560);
  v27 = *(v0 + 28288);
  v28 = *(v0 + 28184);
  v29 = *(v0 + 28144);
  v30 = sub_103660(v25, &selRef_medSchedule);
  v104 = v31;
  v101 = sub_103660(v25, &selRef_dosageUnit);
  v111 = v32;
  v33 = sub_106F6C();
  sub_86B0(v33, v34, v35, v36);
  sub_14D35C();
  sub_1055D0();
  v37 = sub_106AC8();
  sub_1039B4(v37, v38);
  sub_388E4();
  sub_214C(v39, v40, v41, v26);
  v42 = v28 + v29[8];
  sub_16C11C();
  v125 = v42;
  sub_8AB4();
  v122 = v43;
  sub_214C(v44, v45, v46, v43);
  v126 = v28 + v29[19];
  sub_8AB4();
  sub_214C(v47, v48, v49, v26);
  sub_1069CC(v123);
  v28[1] = sub_BA66C();
  v28[2] = v50;
  v28[3] = v116;
  v28[4] = v114;
  v51 = v30;
  v28[5] = v30;
  v52 = v104;
  v28[6] = v104;
  if (v104)
  {
    v53 = 0;
  }

  else
  {
    v53 = v106;
  }

  v54 = (v28 + v29[10]);
  v55 = v29[11];
  sub_107110((v104 != 0) | v108);
  *v54 = sub_147C94(v53, v27);
  v54[1] = v56;
  if (v104)
  {

    v57 = 0;
    v58 = 0;
    v59 = v51;
  }

  else
  {
    v52 = 0xE900000000000064;
    v59 = 0x656465654E207341;
    v58 = v111;
    v57 = v101;
  }

  v60 = (v28 + v55);
  v124 = *(v0 + 30088);
  v61 = 0xE500000000000000;
  if (v117)
  {
    v61 = v117;
  }

  v118 = v61;
  v62 = *(v0 + 29616);
  v63 = 0xE700000000000000;
  if (v119)
  {
    v63 = v119;
  }

  v120 = v63;
  v64 = *(v0 + 28288);
  v65 = *(v0 + 28184);
  v66 = *(v0 + 28144);
  v67 = *(v0 + 28088);
  v100 = *(v0 + 28080);
  v102 = *(v0 + 28120);
  v68 = *(v0 + 28008);
  v121 = *(v0 + 27984);
  if (!*(v0 + 29624))
  {
    v62 = 0x6E656B6154;
  }

  v112 = v62;
  v115 = *(v0 + 28048);
  if (*(v0 + 29600))
  {
    v69 = *(v0 + 29592);
  }

  else
  {
    v69 = 0x64657070696B53;
  }

  v70 = 0x646567676F4CLL;
  if (*(v0 + 29576))
  {
    v70 = *(v0 + 29568);
  }

  v107 = v70;
  v109 = v69;
  *v60 = v57;
  v60[1] = v58;
  v71 = (v65 + v66[12]);
  v103 = v66[14];
  v105 = v66[15];
  v72 = (v65 + v66[16]);
  v73 = (v65 + v66[17]);
  v74 = (v65 + v66[18]);
  *v71 = v59;
  v71[1] = v52;
  sub_147DA8(v64);
  sub_8748(v64, &qword_1C57F8, &unk_172510);
  (*(v67 + 8))(v102, v100);
  sub_388E4();
  sub_214C(v75, v76, v77, v122);
  v78 = sub_1E634(v68, v125, &qword_1C63F0, &unk_1717F0);
  v86 = sub_10674C(v78, v79, v80, v81, v82, v83, v84, v85, v100, v102, v103, v105, v107, v109, v112, v115);
  *v72 = v88;
  v72[1] = v87;
  *v73 = v110;
  v73[1] = v120;
  *v74 = v113;
  v74[1] = v118;
  sub_1E634(v86, v126, &dword_1C63F8, &qword_171800);
  sub_C9294(v121 + 296, v0 + 23856);
  *(v0 + 23920) = sub_106160();
  sub_1055B8();
  *(v0 + 23928) = sub_104478(v89, 255, v90, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 23896));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v91 = sub_2440(&qword_1C5ED8, &unk_173090);
  v92 = sub_38DA0(v91);
  sub_60CF0(v92, 1);
  *v93 = v124;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 30096) = v94;
  v95 = v124;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 30104) = v96;
  *v96 = v97;
  v96[1] = sub_EDFBC;
  v98 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v98);
}

uint64_t sub_EDFBC()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 23896));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_EE0C4()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3761];
  v2 = v0[3757];
  v3 = v0[3750];
  sub_105C50();
  v23 = v0[3571];
  v22 = v0[3561];
  v4 = v0[3546];
  v20 = v0[3545];
  v21 = v0[3553];
  v19 = v0[3537];
  v5 = v0[3523];
  sub_106898(v6);
  sub_106F14();
  sub_387F4();
  v7 = swift_allocObject();
  sub_106C24(v7);
  sub_1068F4();
  v0[3486] = sub_16C1BC();
  sub_106E10();

  sub_106328(v0 + 2297);
  sub_106444(18440);
  sub_8748((v0 + 2297), &qword_1C9D30, &qword_1767C8);

  sub_2D64(v0 + 2977);
  sub_1055A0();
  sub_103BA0(v5, v8);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v21, v20);
  sub_8B60();
  sub_8748(v9, v10, v11);
  sub_1054D0();
  sub_103BA0(v22, v12);
  sub_105424();
  sub_103BA0(v23, v13);
  sub_8B60();
  sub_8748(v14, v15, v16);
  sub_8748(v24, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_EE81C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3749];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3757];
  v16 = v0[3750];
  sub_105BD0();
  v17 = v0[3571];
  v18 = v0[3561];
  sub_8284(v0[3498] + 64, (v0 + 1796));
  sub_6361C(v0 + 1796, v0 + 1816);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v0 + 2279);
  sub_106444(18296);
  sub_8748((v0 + 2279), &qword_1C9D30, &qword_1767C8);

  sub_8334((v0 + 1816));
  v19 = sub_4B4EC();
  sub_8748(v19, v20, &unk_16F510);
  sub_1054D0();
  sub_103BA0(v18, v21);
  sub_105424();
  sub_103BA0(v17, v22);
  sub_8748(v25, &qword_1C5800, &unk_16F510);
  sub_8748(v26, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_EEF80()
{
  sub_C9EC();
  sub_38CAC();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 30128) = v6;
  *(v7 + 30136) = v0;

  sub_8C88();
  if (v0)
  {
  }

  v8 = sub_4B304();
  sub_8748(v8, v9, &unk_16F510);
  v10 = sub_8B9C();
  sub_8748(v10, v11, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v12);
}

uint64_t sub_EF134()
{
  sub_38AB4();
  sub_38664();
  v1 = v0[3766];
  v2 = v0[3498];
  sub_16C45C();
  sub_37FFC();
  v3 = sub_10631C();
  sub_B9BF4(v3, v4, v5);
  sub_16C7AC();
  v6 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v2 + 24, (v0 + 2842));
  sub_8284(v2 + 64, (v0 + 2056));
  sub_C9294(v2 + 296, (v0 + 2852));
  v0[3768] = *(v2 + 336);
  v0[3769] = *(v2 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3770] = v7;
  *v7 = v8;
  v7[1] = sub_EF2A0;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_EF2A0()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 22816));
  sub_C938(v2 + 16448);
  sub_2D64((v2 + 22736));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v6);
}

void sub_EF3DC()
{
  sub_3868C();
  sub_38664();
  if (*(v0 + 22720))
  {
    v2 = *(v0 + 30128);
    v3 = *(v0 + 30056);
    v4 = *(v0 + 30000);
    sub_1062A0();
    v33 = *(v0 + 28416);
    v35 = v5;
    v6 = *(v0 + 28368);
    v32 = *(v0 + 28360);
    sub_106FB8((v0 + v7));
    sub_106AD4();
    sub_387F4();
    v8 = swift_allocObject();
    sub_106810(v8);
    *(v0 + 27824) = sub_1066F0();
    sub_1069D8(27824);
    sub_16C4EC();

    sub_1062DC();
    *(v0 + 18152) &= 0x3Fu;
    sub_8748(v0 + 18088, &qword_1C9D30, &qword_1767C8);

    sub_2D64((v0 + 22656));
    (*(v6 + 8))(v33, v32);
    sub_105424();
    sub_103BA0(v35, v9);
    sub_8748(v37, &qword_1C5800, &unk_16F510);
    sub_8748(v39, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v11 = sub_8748(v0 + v10, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v11, v0 + 27320);
    v12 = sub_38408();
    ((v0 + 0x4000))(v12);
    v13 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v14 = *(v0 + 29992);
      v15 = sub_3A58C(2);
      sub_105ACC(v15);

      sub_1061C4(&def_259DC, v16, v17, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v1);

      v18 = sub_4B4EC();
      v14(v18);
    }

    else
    {
      v19 = *(v0 + 29992);
      sub_106258();

      v20 = sub_1058E8();
      v19(v20);
    }

    v21 = *(v0 + 30128);
    v22 = *(v0 + 30056);
    v23 = *(v0 + 30000);
    sub_106438();
    v36 = v24;
    v38 = v25;
    v34 = *(v0 + 28568);
    v26 = sub_10591C();
    sub_8284(v26, v0 + 15648);
    sub_6361C((v0 + 15648), (v0 + 15808));
    sub_82E0();
    sub_16C4EC();

    sub_106328((v0 + 17872));
    *(v0 + 17936) &= 0x3Fu;
    sub_8748(v0 + 17872, &qword_1C9D30, &qword_1767C8);

    sub_8334(v0 + 15808);
    v27 = sub_387CC();
    v28(v27);
    sub_105424();
    sub_103BA0(v34, v29);
    sub_8748(v36, &qword_1C5800, &unk_16F510);
    sub_8748(v38, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_EFCC8()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v4 = sub_38408();
  v2(v4);
  v5 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v6 = v1[3749];
  v7 = v1[3643];
  sub_106568();
  if (v8)
  {
    v9 = sub_3A58C(2);
    v10 = sub_1054E8(v9);
    sub_106A88(v10, v11, v12, v13);

    sub_105B90(&def_259DC, v14, v15, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v3);
  }

  else
  {
  }

  v16 = sub_105A64();
  v6(v16);
  v17 = v1[3757];
  v18 = v1[3750];
  v19 = sub_105674();
  sub_8284(v19, (v1 + 2116));
  sub_6361C(v1 + 2116, v1 + 2136);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v1 + 2549);
  sub_106444(20456);
  sub_8748((v1 + 2549), &qword_1C9D30, &qword_1767C8);

  sub_8334((v1 + 2136));
  sub_105424();
  sub_103BA0(v0, v20);
  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8748(v5, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F03F4()
{
  sub_76D68();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  v4 = *v1;
  sub_38388();
  *v5 = v4;
  v2[3773] = v6;
  v2[3774] = v0;

  if (v0)
  {
    sub_106BCC();
    v7 = v2[3585];
    sub_10642C();

    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v2[3585], &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v8);
}

uint64_t sub_F05C4()
{
  sub_3868C();
  sub_38664();
  v1 = 21016;
  v2 = [*(v0 + 30184) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 21016));
  v3 = sub_17970();
  v4(v3);
  sub_38138((v0 + 20976));
  if (sub_16C40C())
  {
    v5 = sub_105C94();
  }

  else
  {
    v8 = sub_106474();
    sub_C9294(v8, v0 + 25416);
    sub_3820C((v0 + 25416));
    v9 = sub_17970();
    v10(v9);
    sub_38138((v0 + 20736));
    sub_16C3FC();
    sub_2D64((v0 + 20736));
    v5 = sub_105A84((v0 + 25416));
    if (v11)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  sub_106680(v5, v6, v7);
  sub_106DF8();
  v12 = sub_1057EC();
  v13(v12);
  v14 = *(v0 + 20848);
  sub_38138((v0 + 20816));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v1 = 20896;
    v15 = sub_106474();
    sub_C9294(v15, v0 + 20856);
    sub_3820C((v0 + 20856));
    v16 = sub_17970();
    v17(v16);
    v14 = *(v0 + 20928);
    sub_38138((v0 + 20896));
    sub_16C3FC();
    sub_105820();
  }

  v18 = *(v0 + 30056);
  v19 = sub_16D69C();
  v132 = v20;
  sub_10543C();
  v23 = sub_103600(v18, v21, v22);
  if (!v23 || (sub_9AE60(v23), sub_5E188(), , !v14) || (sub_146C80(v14), !v24))
  {
    sub_106130();
    v29 = *(v0 + 29080);

    sub_106F48();

    sub_106CBC();

    sub_1069B4();

    sub_105B70();
    v30 = sub_A77C4();
    v19(v30);
    v31 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v32 = *(v0 + 29992);
      v33 = sub_106514();
      sub_1054E8(v33);
      sub_1028F0(v29, v34, v35, v36);

      sub_1061C4(&def_259DC, v37, v38, "No loggedTime present nested inside intentResponse, returning GenericErrorFlow");
      sub_3A5E0(v1);

      v39 = sub_105B50();
      v32(v39);
    }

    else
    {
      v40 = *(v0 + 29992);
      sub_106258();

      v41 = sub_1058E8();
      v40(v41);
    }

    v42 = *(v0 + 30184);
    v43 = *(v0 + 30056);
    v44 = *(v0 + 30000);
    v133 = *(v0 + 28856);
    v128 = *(v0 + 28568);
    v129 = *(v0 + 28816);
    v45 = *(v0 + 28280);
    sub_8284(*(v0 + 27984) + 64, v0 + 2208);
    sub_6361C((v0 + 2208), (v0 + 12768));
    sub_82E0();
    sub_16C4EC();

    sub_106328((v0 + 19888));
    *(v0 + 19952) &= 0x3Fu;
    sub_8748(v0 + 19888, &qword_1C9D30, &qword_1767C8);

    sub_8334(v0 + 12768);
    sub_8748(v45, &qword_1C57F8, &unk_172510);
    v46 = sub_387CC();
    v47(v46);
    sub_105424();
    sub_103BA0(v128, v48);
    sub_8748(v129, &qword_1C5800, &unk_16F510);
    sub_8748(v133, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v131 = v19;
  v25 = *(v0 + 27984);

  v127 = getMedStatus(from:)();

  v26 = *(v25 + 16);

  getLocalizedMedName(from:)();
  v28 = v27;

  if (v28)
  {
  }

  if (*(v0 + 17793))
  {
    sub_10543C();
    v54 = sub_103600(v51, v52, v53);
    if (v54 && (sub_9AE60(v54), sub_5E188(), , v26))
    {
      v55 = sub_16B9FC(v26);
      v124 = v56;
      v125 = v55;
    }

    else
    {
      v124 = 0;
      v125 = 0;
    }
  }

  else
  {
    v124 = *(v0 + 29544);
    v125 = *(v0 + 29552);
  }

  v130 = *(v0 + 30184);
  v57 = *(v0 + 29624);
  v58 = *(v0 + 29616);
  v59 = *(v0 + 29600);
  v60 = *(v0 + 29592);
  v61 = *(v0 + 29576);
  v62 = *(v0 + 29568);
  sub_107044();
  v116 = *(v0 + 28272);
  v63 = *(v0 + 28176);
  v64 = *(v0 + 28144);
  v65 = *(v0 + 28040);
  sub_107008();
  sub_86B0(v66, v67, &qword_1C57F8, &unk_172510);
  v123 = sub_14D35C();
  if (v61)
  {
    v68 = v62;
  }

  else
  {
    v68 = 0x646567676F4CLL;
  }

  v69 = 0xE600000000000000;
  if (v61)
  {
    v69 = v61;
  }

  v121 = v69;
  v122 = v68;
  if (v59)
  {
    v70 = v60;
  }

  else
  {
    v70 = 0x64657070696B53;
  }

  v71 = 0xE700000000000000;
  if (v59)
  {
    v71 = v59;
  }

  v119 = v71;
  v120 = v70;
  if (v57)
  {
    v72 = v58;
  }

  else
  {
    v72 = 0x6E656B6154;
  }

  v73 = 0xE500000000000000;
  if (v57)
  {
    v73 = v57;
  }

  v117 = v73;
  v118 = v72;
  sub_1055D0();
  sub_1039B4(v114, v65);
  sub_388E4();
  sub_214C(v74, v75, v76, v111);
  v113 = *(v64 + 32);
  v112 = sub_16C11C();
  sub_8AB4();
  sub_214C(v77, v78, v79, v80);
  v81 = v63 + *(v64 + 36);
  v82 = (v63 + *(v64 + 40));
  v83 = (v63 + *(v64 + 44));
  v115 = *(v64 + 76);
  v84 = sub_106150(v115);
  sub_214C(v84, v85, v86, v111);
  sub_1069CC(v127);
  sub_107070();
  *(v63 + 40) = v125;
  *(v63 + 48) = v124;
  *v81 = 0;
  *(v81 + 8) = 1;

  v87 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v82 = sub_147C94(v87, v88);
  v82[1] = v89;
  v90 = 0x656465654E207341;
  if (v124)
  {
    v90 = v125;
  }

  *v83 = 0;
  v83[1] = 0;
  v91 = (v63 + *(v64 + 52));
  v92 = *(v64 + 56);
  v93 = *(v64 + 60);
  v94 = (v63 + *(v64 + 64));
  v95 = (v63 + *(v64 + 68));
  sub_106D10(v90);
  sub_147DA8(v116);
  sub_8748(v116, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v96, v97, v98, v112);
  sub_1E634(v124, v63 + v113, &qword_1C63F0, &unk_1717F0);
  *v91 = v131;
  v91[1] = v132;
  *(v63 + v92) = 0;
  *(v63 + v93) = v123 & 1;
  *v94 = v122;
  v94[1] = v121;
  *v95 = v120;
  v95[1] = v119;
  *v64 = v118;
  *(v64 + 8) = v117;
  sub_1E634(v65, v63 + v115, &dword_1C63F8, &qword_171800);
  sub_C9294(v126 + 296, v0 + 21176);
  *(v0 + 21240) = sub_106160();
  sub_1055B8();
  *(v0 + 21248) = sub_104478(v99, 255, v100, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 21216));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v101 = sub_2440(&qword_1C5ED8, &unk_173090);
  v102 = sub_38DA0(v101);
  sub_60CF0(v102, 1);
  *v103 = v130;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 30200) = v104;
  v105 = v130;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 30208) = v106;
  *v106 = v107;
  v106[1] = sub_F13CC;
  sub_1057CC();
  sub_8CC0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v108);
}

uint64_t sub_F13CC()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 21216));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_F14D4()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3773];
  v2 = v0[3757];
  v3 = v0[3750];
  sub_105C50();
  sub_1067EC();
  v13 = v0[3535];
  v4 = v0[3522];
  sub_106898(v5);
  sub_106968();
  sub_387F4();
  v6 = swift_allocObject();
  sub_106850(v6);
  sub_1068F4();
  v0[3489] = sub_16C1BC();
  sub_106918();

  sub_106328(v0 + 2540);
  sub_106444(20384);
  sub_8748((v0 + 2540), &qword_1C9D30, &qword_1767C8);

  sub_2D64(v0 + 2642);
  sub_1055A0();
  sub_103BA0(v4, v7);
  sub_8748(v13, &qword_1C57F8, &unk_172510);
  v8 = sub_107058();
  v9(v8);
  sub_105424();
  sub_103BA0(v14, v10);
  sub_8748(v15, &qword_1C5800, &unk_16F510);
  sub_8748(v16, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F1BF4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3749];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create specificMedicationStatusBothSkipped_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3757];
  v16 = v0[3750];
  sub_105BD0();
  v17 = v0[3571];
  v18 = sub_10591C();
  sub_8284(v18, (v0 + 1616));
  sub_6361C(v0 + 1616, v0 + 2196);
  sub_82E0();
  sub_16C4EC();

  sub_106328(v0 + 2504);
  sub_106444(20096);
  sub_8748((v0 + 2504), &qword_1C9D30, &qword_1767C8);

  sub_8334((v0 + 2196));
  v19 = sub_387CC();
  v20(v19);
  sub_105424();
  sub_103BA0(v17, v21);
  sub_8748(v24, &qword_1C5800, &unk_16F510);
  sub_8748(v25, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F2344()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_F2414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v292 = v12;
  v15 = *(v12 + 27800);
  *(v12 + 30256) = v15;
  v16 = swift_unknownObjectRelease();
  v17 = (*(&stru_20.maxprot + (swift_isaMask & *v15)))(v16);
  switch(v17)
  {
    case 112:
      v285 = v15;
      sub_1064A8();
      v65 = *(v12 + 29512);
      v54 = *(v12 + 29504);
      v66 = *(v12 + 28968);
      sub_106CB0();

      sub_1067B8();

      sub_107064();

      sub_10709C();

      sub_106730();

      sub_8B48(v54, v12 + 25928);
      v67 = sub_106884();
      v65(v67);
      v57 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        v68 = sub_3A58C(2);
        sub_105890(v68);
        if (v14)
        {
          while (1)
          {
            sub_105B2C(v66[2]);
            sub_106F54();
          }
        }

        v69 = *(v12 + 30232);
        v61 = *(v12 + 28968);
        sub_106E50();
        sub_105AAC(&def_259DC, v70, v71, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0(v13);

        v72 = sub_1070CC();
      }

      else
      {
        v69 = *(v12 + 30232);
        v61 = *(v12 + 28968);
        sub_10654C();

        v72 = sub_105C40();
      }

      v69(v72);
      v126 = *(v12 + 30240);
      sub_105B60();
      v127 = *(v12 + 27984);
      v128 = *(v127 + 16);
      sub_8284(v127 + 64, v12 + 840);
      sub_C9294(v127 + 24, v12 + 1000);

      sub_789CC((v12 + 1048));
      v129 = sub_87C00();
      v130 = sub_87C2C();
      sub_309A0((v12 + 1104));
      *(v12 + 832) = v128;
      *(v12 + 1040) = 0;
      *(v12 + 1088) = v129;
      *(v12 + 1096) = v130;
      sub_87F90();
      sub_16C4EC();

      sub_106900();
      sub_A9C4C(v12 + 832);
      goto LABEL_81;
    case 5:
      sub_106B44();
      v26 = *(v12 + 29512);
      v27 = *(v12 + 28944);

      sub_1067B8();

      sub_107064();

      sub_105B70();
      v28 = sub_A77C4();
      v26(v28);
      v29 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v30 = sub_3A58C(2);
        sub_1059F4(v30);
        if (v27[1].n128_u64[0])
        {
          while (1)
          {
            sub_105B2C(v27[2]);
            sub_1065A8();
          }
        }

        v31 = *(v12 + 30232);
        sub_106404();
        sub_105BB0(&def_259DC, v32, v33, "Received failure intent response, creating output.");
        sub_3A5E0(v30);

        v34 = sub_105B00();
        v31(v34);
      }

      else
      {
        v73 = *(v12 + 30232);
        v15 = *(v12 + 28944);
        sub_106258();

        v74 = sub_1058E8();
        v73(v74);
      }

      sub_1069E4();
      *(v12 + 30528) = v29;

      getLocalizedMedName(from:)();
      sub_106EF8();
      if (v15)
      {
        sub_8427C();
        sub_16E23C();

        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v131 = *(v12 + 28528);
      sub_214C(*(v12 + 28616), v75, 1, v131);
      sub_8AB4();
      sub_214C(v132, v133, v134, v131);
      v135 = swift_task_alloc();
      *(v12 + 30536) = v135;
      *v135 = v12;
      v135[1] = sub_FC054;
      sub_C98D8(*(v12 + 28616));
      sub_106710();

      return sub_167658();
    case 110:
      v283 = v15;
      sub_1064A8();
      v43 = *(v12 + 29512);
      v44 = *(v12 + 29504);
      v45 = *(v12 + 28920);
      sub_106CB0();

      sub_1067B8();

      sub_107064();

      sub_10709C();

      sub_106730();

      sub_8B48(v44, v12 + 27128);
      v46 = sub_106884();
      v43(v46);
      v47 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v48 = sub_3A58C(2);
        sub_105890(v48);
        if (v14)
        {
          while (1)
          {
            sub_105B2C(v45[2]);
            sub_106F54();
          }
        }

        v49 = *(v12 + 30232);

        sub_105AAC(&def_259DC, v50, v51, "SpecificMedLoggingFlow's .scheduleSelected case received .needsConfirmMixedLogging in intent response, creating confirmation.");
        sub_3A5E0(v13);

        v52 = sub_D4D84();
        v49(v52);
      }

      else
      {
        v85 = *(v12 + 30232);
        sub_10654C();

        v86 = sub_105C40();
        v85(v86);
      }

      memcpy((v12 + 19240), (*(v12 + 27984) + 224), 0x41uLL);
      sub_106934();
      sub_10543C();
      v89 = sub_103600(v283, v87, v88);
      if (v89)
      {
        v90 = v89;
        v269 = *(v12 + 30240);
        v278 = *(v12 + 28856);
        v275 = *(v12 + 28816);
        v271 = *(v12 + 28568);

        v91 = getMedStatus(from:)();

        sub_DB530(&__src);
        v92 = sub_105618();
        v93 = sub_FFA7C(v92, &CATWrapperSimple.__allocating_init(options:globals:));
        v94 = sub_105600();
        v95 = sub_FFA7C(v94, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v289);
        type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
        swift_allocObject();
        v96 = sub_68120(v91 & 1, v90, &__src, v93, v95, v289);

        sub_16C73C();
        *(v12 + 27816) = sub_DB3B4(v96, &__src);
        sub_100364();
        sub_2440(&qword_1C9D20, &qword_176760);
        sub_1055E8();
        sub_98C8(v97, &qword_1C9D20, &qword_176760, v98);
        sub_106BF4(27816);
        sub_16C4CC();

        sub_106900();

        sub_105424();
        sub_103BA0(v271, v99);
        sub_8748(v275, &qword_1C5800, &unk_16F510);
        sub_8748(v278, &qword_1C69C0, &unk_174290);

        goto LABEL_83;
      }

      v137 = 6208;
      sub_106C04();
      v54 = *(v12 + 28912);
      v138 = *(v12 + 28864);
      sub_38474();
      v139 = sub_1067A8();
      v13(v139);
      v57 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v140 = sub_3A58C(2);
        sub_105890(v140);
        v141 = 32;
        do
        {
          sub_105B2C(*(v138 + v141));
          v141 += 16;
          --v137;
        }

        while (v137);
        v142 = *(v12 + 30232);
        v61 = *(v12 + 28912);
        sub_106600();

        sub_105AAC(&def_259DC, v143, v144, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
        sub_3A5E0(v13);

        v145 = sub_1070CC();
        v142(v145);
      }

      else
      {
        v207 = *(v12 + 30232);
        v61 = *(v12 + 28912);
        sub_10654C();

        v208 = sub_105C40();
        v207(v208);
      }

      v209 = *(v12 + 30240);
      v210 = sub_1058AC();
      sub_8284(v210, v12 + 6208);
      sub_6361C((v12 + 6208), (v12 + 6048));
      sub_82E0();
      sub_16C4EC();

      sub_106900();
      v125 = v12 + 6048;
      goto LABEL_80;
    case 111:
      sub_106F84();
      v35 = *(v12 + 28864);

      sub_1067B8();

      sub_1061A4();
      v36 = sub_105C00();
      v14(v36);
      v37 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v38 = sub_3A58C(2);
        sub_1059F4(v38);
        if (v35[1].n128_u64[0])
        {
          while (1)
          {
            sub_105B2C(v35[2]);
            sub_1065A8();
          }
        }

        v39 = *(v12 + 30232);
        sub_106404();
        sub_105BB0(&def_259DC, v40, v41, "SpecificMedLoggingFlow received .allMedsLoggedAlready in intent response, creating output.");
        sub_3A5E0(v38);

        v42 = sub_105B00();
        v39(v42);
      }

      else
      {
        v76 = *(v12 + 30232);
        sub_106258();

        v77 = sub_1058E8();
        v76(v77);
      }

      v78 = *(v12 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v79, v80);
      sub_16C7AC();
      *(v12 + 30488) = *(v78 + 336);

      getMedStatus(from:)();

      swift_task_alloc();
      sub_179E8();
      *(v12 + 30496) = v81;
      *v81 = v82;
      sub_106FA4(v81);
      sub_106710();

      return sub_16746C();
  }

  if (v17 != 4)
  {
    v284 = v15;
    sub_1064A8();
    v53 = *(v12 + 29512);
    v54 = *(v12 + 29504);
    v55 = *(v12 + 28904);
    sub_106CB0();

    sub_1067B8();

    sub_10709C();

    sub_106730();

    sub_8B48(v54, v12 + 27248);
    v56 = sub_106884();
    v53(v56);
    v57 = sub_16DBDC();
    sub_16E36C();
    sub_10699C();
    if (sub_106220())
    {
      v58 = sub_3A58C(2);
      sub_105890(v58);
      for (i = 32; v14; v14 = (v14 - 1))
      {
        sub_105B2C(*(v55 + i));
        i += 16;
      }

      v60 = *(v12 + 30232);
      v61 = *(v12 + 28904);
      sub_106E50();
      sub_105AAC(&def_259DC, v62, v63, "Intent response code within .nameSelected was not an expected one || is one we're not handling yet, returning nil output.");
      sub_3A5E0(v13);

      v64 = sub_1070CC();
    }

    else
    {
      v60 = *(v12 + 30232);
      v61 = *(v12 + 28904);
      sub_10654C();

      v64 = sub_105C40();
    }

    v60(v64);
    v120 = *(v12 + 30240);
    v121 = sub_1058AC();
    sub_8284(v121, v12 + 5408);
    v122 = sub_106BC0();
    sub_6361C(v122, v123);
    v124 = sub_82E0();
    sub_1071D0(v124, &type metadata for GenericErrorFlow, v124);

    sub_106900();
    v125 = v12 + 5248;
    goto LABEL_80;
  }

  sub_106F84();

  sub_1B9B4(v18, v12 + &loc_6C38);
  v19 = sub_4B304();
  v14(v19);
  v20 = sub_16DBDC();
  sub_16E36C();
  sub_10699C();
  if (sub_106220())
  {
    v21 = sub_3A58C(2);
    sub_105890(v21);
    v22 = *(v12 + 30224);
    if (v14)
    {
      while (1)
      {
        sub_105B2C(*(&stru_20.cmd + &loc_6C38));
        sub_106F54();
      }
    }

    v282 = *(v12 + 30232);

    sub_105AAC(&def_259DC, v23, v24, "Received successful intent response, creating output.");
    sub_3A5E0(v13);

    v25 = sub_D4D84();
    v282(v25);
  }

  else
  {
    v100 = *(v12 + 30232);

    v101 = sub_C9E0();
    v100(v101);
    v22 = *(v12 + 30224);
  }

  sub_10543C();
  v104 = sub_103600(v15, v102, v103);
  if (!v104)
  {
    v104 = sub_3A600(0);
  }

  v105 = v104;
  sub_102308(v104);
  v106 = [v15 medCount];
  if (!v106)
  {
    v54 = *(v12 + 29624);
    v279 = *(v12 + 29512);
    v146 = *(v12 + 29504);
    v147 = *(v12 + 28976);
    v276 = *(v12 + 28864);

    sub_1067B8();

    sub_1069B4();

    sub_8B48(v146, v12 + 26696);
    v279(v147, v146, v276);
    v57 = sub_16DBDC();
    sub_16E36C();
    sub_10699C();
    if (sub_106220())
    {
      v148 = sub_3A58C(2);
      sub_105890(v148);
      if (v105)
      {
        while (1)
        {
          sub_105B2C(v146[2]);
          sub_106F54();
        }
      }

      v149 = *(v12 + 30232);
      v61 = *(v12 + 28976);
      sub_106600();

      sub_105AAC(&def_259DC, v150, v151, "There were no doseEvents in the chosen schedule, returning GenericErrorFlow");
      sub_3A5E0(v147);

      v152 = sub_1070CC();
      v149(v152);
    }

    else
    {
      v211 = *(v12 + 30232);
      v61 = *(v12 + 28976);
      v54 = *(v12 + 28864);

      v212 = sub_C9E0();
      v211(v212);
    }

    v213 = *(v12 + 30240);
    v214 = sub_1058AC();
    sub_8284(v214, v12 + 7168);
    sub_6361C((v12 + 7168), (v12 + 8608));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    v125 = v12 + 8608;
LABEL_80:
    sub_8334(v125);
LABEL_81:
    sub_105424();
    sub_103BA0(v54, v215);
    sub_8748(v61, &qword_1C5800, &unk_16F510);
    v216 = v57;
LABEL_82:
    sub_8748(v216, &qword_1C69C0, &unk_174290);
LABEL_83:
    sub_104B50();
    sub_10586C();

    sub_C9BC();
    sub_106710();

    __asm { BRAA            X1, X16 }
  }

  v107 = v106;
  v108 = *(v12 + 28352);
  v109 = *(v12 + 27984);
  [v106 doubleValue];

  v110 = *(v109 + 16);
  v111 = v15;
  sub_1068E8();

  v112 = sub_8B9C();
  sub_FF05C(v112, v113);
  sub_16C43C();
  sub_37FFC();
  sub_B9BF4(v108, v114, 0);
  sub_C9294(v109 + 24, v12 + 25536);
  sub_106B08((v12 + 25536));
  v115 = sub_88100();
  v116(v115);
  sub_2D20((v12 + 24896), *(v12 + 24920));
  sub_88100();
  if (sub_16C40C())
  {
    sub_2D64((v12 + 24896));
    v117 = sub_2D64((v12 + 25536));
    v119 = 4;
  }

  else
  {
    v153 = sub_106474();
    sub_C9294(v153, v12 + 24856);
    sub_106B08((v12 + 24856));
    v154 = sub_88100();
    v155(v154);
    sub_2D20((v12 + 24696), *(v12 + 24720));
    sub_88100();
    sub_16C3FC();
    sub_106D88();
    sub_2D64((v12 + 24856));
    sub_2D64((v12 + 24896));
    v117 = sub_2D64((v12 + 25536));
    if (v110)
    {
      v119 = 4;
    }

    else
    {
      v119 = 0;
    }
  }

  sub_106680(v117, v118, v119);
  sub_C9294(v110 + 24, v12 + 24656);
  sub_106B08((v12 + 24656));
  v156 = sub_88100();
  v157(v156);
  v158 = *(v12 + 24600);
  sub_2D20((v12 + 24576), v158);
  sub_88100();
  if ((sub_16C40C() & 1) == 0)
  {
    v159 = sub_106474();
    sub_C9294(v159, v12 + 24496);
    sub_106B08((v12 + 24496));
    v160 = sub_88100();
    v161(v160);
    v158 = *(v12 + 24480);
    sub_2D20((v12 + 24456), v158);
    sub_88100();
    sub_16C3FC();
    sub_106D88();
    sub_2D64((v12 + 24496));
  }

  sub_2D64((v12 + 24576));
  sub_2D64((v12 + 24656));
  v162 = *(v12 + 29656);
  v163 = sub_16D69C();
  *(v12 + 30264) = v164;
  *(v12 + 30272) = v163;
  if (v162 == 5)
  {
    v165 = *(v12 + 30216);
    sub_1059C0();
    v166 = *(v12 + 29040);
    v167 = *(v12 + 28864);
    sub_38474();
    v158(v166, 5, v167);
    sub_106F78();
    v168 = swift_allocObject();
    *(v168 + 16) = v15;
    v280 = v15;
    v169 = sub_16DBDC();
    v170 = sub_16E36C();
    sub_106420();
    v171 = swift_allocObject();
    *(v171 + 16) = 32;
    sub_106420();
    v172 = swift_allocObject();
    sub_106AF0(v172);
    sub_106264();
    v173 = swift_allocObject();
    *(v173 + 16) = sub_103B48;
    *(v173 + 24) = v168;
    sub_106264();
    v174 = swift_allocObject();
    *(v174 + 16) = sub_104B28;
    *(v174 + 24) = v173;
    sub_106F30(v165);
    sub_61090();
    *v175 = sub_104B38;
    v175[1] = v171;
    v175[2] = sub_104B38;
    v175[3] = v172;
    v175[4] = sub_1049F0;
    v175[5] = v174;

    if (sub_106984())
    {
      v176 = sub_3A58C(12);
      v177 = sub_CA30();
      *v176 = 258;
      *&v289[0] = v177;
      v290 = v176 + 2;
      v291[0] = 0;
      __src = sub_104B38;
      v288 = v171;
      sub_105C10();
      if (v22)
      {

        sub_106710();
      }

      sub_105C10();

      __src = sub_1049F0;
      v288 = v174;
      sub_105C10();
      v273 = *(v12 + 30232);
      v259 = v176;
      v219 = *(v12 + 29648);
      v270 = *(v12 + 29040);
      v260 = *(v12 + 28864);

      _os_log_impl(&def_259DC, v169, v170, "got .rejectedOverwriteInGroup, starting with %s matchingMeds", v259, 0xCu);
      sub_2D64(v177);
      sub_8A2C(v177);
      sub_3A5E0(v259);

      v273(v270, v260);
      v221 = v280;
    }

    else
    {
      v272 = *(v12 + 30232);
      v219 = *(v12 + 29648);
      v177 = *(v12 + 28864);

      v220 = sub_4B4EC();
      v272(v220);
      v221 = v280;
    }

    sub_10543C();
    v224 = sub_103600(v221, v222, v223);
    if (!v224)
    {
      goto LABEL_90;
    }

    v225 = v224;
    sub_3B35C(v224);
    sub_1068E8();

    if (v219 == 1)
    {
      sub_1069E4();
      *(v12 + 30336) = v225;

      sub_10543C();
      v235 = sub_103600(v221, v233, v234);
      if (v235 && (v236 = sub_9AE60(v235), , v236) && (sub_16B9FC(v236), v237))
      {
        sub_16E23C();

        v238 = 0;
      }

      else
      {
        v238 = 1;
      }

      sub_1071A0(*(v12 + 28664), v238);
      v249 = swift_task_alloc();
      *(v12 + 30344) = v249;
      *v249 = v12;
      v249[1] = sub_F5A8C;
      goto LABEL_108;
    }

    if (!v219)
    {
LABEL_90:
      v226 = *(v12 + 28528);
      v227 = *(v12 + 27984);

      *(v12 + 30280) = *(v227 + 336);
      sub_8AB4();
      sub_214C(v228, v229, v230, v226);

      v231 = swift_task_alloc();
      *(v12 + 30288) = v231;
      *v231 = v12;
      v231[1] = sub_F465C;
LABEL_108:
      sub_106710();

      return sub_166794();
    }

    sub_10709C();

    sub_10543C();
    v241 = sub_103600(v221, v239, v240);
    if (v241)
    {
      v242 = *(v12 + 27984);
      sub_3B35C(v241);
      sub_1068E8();

      *(v12 + 30376) = *(v242 + 336);

      sub_10543C();
      v245 = sub_103600(v221, v243, v244);
      if (v245 && (v246 = sub_9AE60(v245), , v246) && (sub_16B9FC(v246), v247))
      {
        sub_16E23C();

        v248 = 0;
      }

      else
      {
        v248 = 1;
      }

      sub_1071A0(*(v12 + 28656), v248);
      v250 = swift_task_alloc();
      *(v12 + 30384) = v250;
      *v250 = v12;
      v250[1] = sub_F70D4;
      goto LABEL_108;
    }

    sub_105A08();
    sub_38474();
    v252 = sub_105BF0();
    v177(v252);
    v253 = sub_16DBDC();
    sub_16E37C();
    sub_106A70();
    sub_106344();
    v254 = *(v12 + 30232);
    sub_106568();
    if (v255)
    {
      v174 = sub_3A58C(2);
      *&v289[0] = 0;
      __src = 0;
      sub_106114(v174);
      v291[0] = v256;
      sub_1028F0(v177, v291, v289, &__src);

      sub_105B90(&def_259DC, v257, v258, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_3A5E0(v174);
    }

    else
    {
    }

    v261 = sub_105A64();
    v254(v261);
    v262 = *(v12 + 30256);
    v263 = *(v12 + 30240);
    v286 = *(v12 + 28856);
    v281 = *(v12 + 28816);
    v277 = *(v12 + 28568);
    v274 = *(v12 + 28480);
    v264 = sub_105980();
    sub_8284(v264, v12 + 15008);
    sub_6361C((v12 + 15008), (v12 + 14848));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v12 + 14848);
    sub_8748(v174, &qword_1C57F8, &unk_172510);
    v265 = sub_4B4EC();
    v266(v265);
    sub_1054D0();
    sub_103BA0(v274, v267);
    sub_105424();
    sub_103BA0(v277, v268);
    sub_8748(v281, &qword_1C5800, &unk_16F510);
    v216 = v286;
    goto LABEL_82;
  }

  v178 = *(v12 + 28528);
  v179 = *(v12 + 28480);
  v180 = *(v12 + 28472);

  sub_1067B8();

  v181 = (v179 + *(v180 + 36));
  v182 = *v181;
  v183 = *(v181 + 8);
  sub_8AB4();
  sub_214C(v184, v185, v186, v178);
  if ((v183 & 1) == 0)
  {
    v183 = *(v12 + 28800);
    v187 = *(v12 + 28640);
    v188 = *(v12 + 28528);
    sub_2440(&qword_1C8C78, &unk_1747C0);
    swift_allocObject();
    sub_61090();
    v189[3] = &type metadata for Double;
    v189[4] = &protocol witness table for Double;
    *v189 = v182;
    HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
    sub_106A50(v190);
    sub_16E23C();

    sub_8748(v187, &qword_1C5800, &unk_16F510);
    sub_388E4();
    sub_214C(v191, v192, v193, v188);
    v194 = sub_38B40();
    sub_86FC(v194, v195, &qword_1C5800, &unk_16F510);
  }

  v196 = *(v12 + 28528);
  v197 = *(v12 + 28480);
  v198 = *(v12 + 28472);
  sub_1069E4();
  *(v12 + 30448) = v183;
  sub_8AB4();
  sub_214C(v199, v200, v201, v196);

  sub_103660(v15, &selRef_medSchedule);
  sub_16E23C();

  sub_388E4();
  sub_214C(v202, v203, v204, v196);
  v205 = v197 + *(v198 + 40);
  LOBYTE(v197) = *(v197 + *(v198 + 44));
  v206 = swift_task_alloc();
  *(v12 + 30456) = v206;
  *v206 = v12;
  v206[1] = sub_F9370;
  v295 = v197;
  v294 = v205;

  return sub_167D00();
}

uint64_t sub_F465C()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 30296) = v7;
  *(v8 + 30304) = v0;

  sub_8C88();
  v9 = *(v1 + 28672);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v10);
}

uint64_t sub_F47D0()
{
  sub_38AB4();
  sub_38664();
  v1 = *(v0 + 27984);
  v2 = [*(v0 + 30296) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_106C80();
  sub_8284(v1 + 64, v0 + 13728);
  sub_C9294(v1 + 296, v0 + 21856);
  *(v0 + 30312) = *(v1 + 336);
  *(v0 + 30320) = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  *(v0 + 30328) = v3;
  *v3 = v4;
  v3[1] = sub_F4914;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_F4914()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 21856));
  sub_C938(v2 + 13728);
  sub_2D64((v2 + 21896));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v6);
}

void sub_F4A50()
{
  sub_3868C();
  sub_38664();
  if (*(v0 + 21960))
  {
    v4 = *(v0 + 30296);
    v5 = *(v0 + 30256);
    v6 = *(v0 + 30240);
    sub_1062A0();
    v39 = *(v0 + 28480);
    v41 = v7;
    v8 = *(v0 + 28368);
    v36 = *(v0 + 28360);
    v37 = *(v0 + 28400);
    v9 = *(v0 + 28264);
    sub_17464((v0 + v10), v0 + 21976);
    sub_16C1DC();
    sub_106968();
    sub_387F4();
    v11 = swift_allocObject();
    v12 = sub_17464((v0 + 21696), v11 + 16);
    sub_78B14(v12, v47);
    *(v0 + 27848) = sub_16C1BC();
    sub_106918();

    sub_106900();
    sub_2D64((v0 + 21976));
    sub_8748(v9, &qword_1C57F8, &unk_172510);
    (*(v8 + 8))(v37, v36);
    sub_1054D0();
    sub_103BA0(v39, v13);
    sub_105424();
    sub_103BA0(v41, v14);
    sub_8748(v43, &qword_1C5800, &unk_16F510);
    sub_8748(v45, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v16 = sub_8748(v0 + v15, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v16, v0 + 27512);
    v17 = sub_38408();
    v1(v17);
    v18 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v19 = *(v0 + 30232);
      v20 = sub_106514();
      sub_105ACC(v20);

      sub_1061C4(&def_259DC, v21, v22, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v2);

      v23 = sub_105B50();
      v19(v23);
    }

    else
    {
      v24 = *(v0 + 30232);
      sub_106258();

      v25 = sub_1058E8();
      v24(v25);
    }

    v26 = *(v0 + 30296);
    v27 = *(v0 + 30256);
    v28 = *(v0 + 30240);
    sub_106438();
    v44 = v29;
    v46 = v30;
    v40 = *(v0 + 28480);
    v42 = *(v0 + 28568);
    v38 = *(v0 + 28400);
    v31 = sub_105980();
    sub_8284(v31, v0 + 10528);
    sub_6361C((v0 + 10528), (v0 + 11168));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v0 + 11168);
    sub_8748(v2, &qword_1C57F8, &unk_172510);
    (*(v3 + 8))(v38, v1);
    sub_1054D0();
    sub_103BA0(v40, v32);
    sub_105424();
    sub_103BA0(v42, v33);
    sub_8748(v44, &qword_1C5800, &unk_16F510);
    sub_8748(v46, &qword_1C69C0, &unk_174290);
  }

  sub_104B50();
  sub_10586C();
  sub_105768();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F5348()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3779];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3782];
  v16 = v0[3780];
  sub_105B10();
  v17 = sub_105980();
  sub_8284(v17, (v0 + 1916));
  sub_6361C(v0 + 1916, v0 + 1936);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1936));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v18 = sub_4B4EC();
  v19(v18);
  sub_1054D0();
  sub_103BA0(v24, v20);
  sub_105424();
  sub_103BA0(v25, v21);
  sub_8748(v26, &qword_1C5800, &unk_16F510);
  sub_8748(v27, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F5A8C()
{
  sub_76D68();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  v4 = *v1;
  sub_38388();
  *v5 = v4;
  *(v2 + 30352) = v6;

  if (v0)
  {
    sub_106BCC();
    v7 = *(v2 + 28664);
    sub_10642C();

    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(*(v2 + 28664), &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v8);
}

uint64_t sub_F5C4C()
{
  v1 = v0[3794];
  v2 = v0[3782];
  sub_16C7AC();
  v3 = [v1 catId];
  sub_16E1BC();

  sub_4B4EC();
  sub_16C76C();

  v110 = getMedStatus(from:)();

  sub_16BF4C();
  sub_10543C();
  v6 = sub_103600(v2, v4, v5);
  if (v6 && (sub_9AE60(v6), sub_1068E8(), , v2))
  {
    v7 = sub_16BA08(v2);
    v105 = v8;
    v106 = v7;
  }

  else
  {
    v105 = 0;
    v106 = 0;
  }

  sub_10543C();
  v12 = sub_103600(v9, v10, v11);
  if (v12 && (sub_9AE60(v12), sub_1068E8(), , v2))
  {
    v100 = sub_16B9FC(v2);
    v98 = v13;
  }

  else
  {
    v100 = 0;
    v98 = 0;
  }

  v112 = v0[3794];
  v107 = v0[3783];
  v108 = v0[3784];
  v14 = v0[3703];
  v15 = v0[3702];
  v16 = v0[3700];
  v17 = v0[3699];
  v18 = v0[3697];
  v19 = v0[3696];
  v91 = v0[3571];
  v93 = v0[3532];
  v20 = v0[3521];
  v21 = v0[3518];
  sub_106490();
  v22 = v0[3504];
  sub_106C58();
  v109 = v23;
  sub_86B0(v24, v25, &qword_1C57F8, &unk_172510);
  v104 = sub_14D35C();
  if (v18)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0x646567676F4CLL;
  }

  v27 = 0xE600000000000000;
  if (v18)
  {
    v27 = v18;
  }

  v102 = v27;
  v103 = v26;
  v28 = 0x64657070696B53;
  if (v16)
  {
    v28 = v17;
  }

  v101 = v28;
  v29 = 0xE700000000000000;
  if (v16)
  {
    v29 = v16;
  }

  v99 = v29;
  if (v14)
  {
    v30 = v15;
  }

  else
  {
    v30 = 0x6E656B6154;
  }

  v31 = 0xE500000000000000;
  if (v14)
  {
    v31 = v14;
  }

  v96 = v31;
  v97 = v30;
  sub_1055D0();
  sub_1039B4(v91, v22);
  sub_388E4();
  sub_214C(v32, v33, v34, v83);
  v87 = sub_106EC0();
  sub_8AB4();
  sub_214C(v35, v36, v37, v38);
  v39 = v20 + v21[9];
  v40 = (v20 + v21[10]);
  v41 = (v20 + v21[11]);
  v92 = v21[19];
  v42 = sub_106150(v92);
  sub_214C(v42, v43, v44, v83);
  sub_1069CC(v110);
  v20[1] = sub_BA66C();
  v20[2] = v45;
  v20[3] = v106;
  v20[4] = v105;
  v20[5] = v100;
  v20[6] = v98;
  *v39 = 0;
  v39[8] = 1;

  v46 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v40 = sub_147C94(v46, v47);
  v40[1] = v48;
  v49 = 0x656465654E207341;
  if (v98)
  {
    v49 = v100;
  }

  v50 = 0xE900000000000064;
  if (v98)
  {
    v50 = v98;
  }

  *v41 = 0;
  v41[1] = 0;
  v51 = (v20 + v21[12]);
  v52 = (v20 + v21[13]);
  v53 = v21[14];
  v111 = v21[15];
  v54 = (v20 + v21[16]);
  v55 = (v20 + v21[17]);
  v56 = (v20 + v21[18]);
  *v51 = v49;
  v51[1] = v50;
  sub_147DA8(v93);
  sub_8748(v93, &qword_1C57F8, &unk_172510);
  (*(v95 + 8))();
  sub_388E4();
  v60 = sub_214C(v57, v58, v59, v87);
  v66 = sub_106EA4(v60, v61, &qword_1C63F0, &unk_1717F0, v62, v63, v64, v65, v83, v85, v87, v89);
  *v52 = v108;
  v52[1] = v107;
  *(v20 + v53) = 0;
  *(v20 + v111) = v104 & 1;
  *v54 = v103;
  v54[1] = v102;
  *v55 = v101;
  v55[1] = v99;
  *v56 = v97;
  v56[1] = v96;
  sub_106E88(v66, v67, &dword_1C63F8, &qword_171800, v68, v69, v70, v71, v84, v86, v88, v90, v92, v93, v94, v22);
  sub_C9294(v109 + 296, (v0 + 2787));
  v0[2785] = sub_106160();
  sub_1055B8();
  v0[2786] = sub_104478(v72, 255, v73, &protocol conformance descriptor for WellnessSnippets);
  sub_9910(v0 + 2782);
  sub_105584();
  sub_106D70();
  sub_10658C();
  v74 = sub_2440(&qword_1C5ED8, &unk_173090);
  v75 = sub_38DA0(v74);
  sub_60CF0(v75, 1);
  *v76 = v112;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  v0[3795] = v77;
  v78 = v112;
  swift_task_alloc();
  sub_179E8();
  v0[3796] = v79;
  *v79 = v80;
  v79[1] = sub_F6144;
  v81 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v81);
}

uint64_t sub_F6144()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 22256));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_F624C()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 30352);
  v2 = *(v0 + 30256);
  v3 = *(v0 + 30240);
  sub_105C50();
  v17 = *(v0 + 28480);
  v18 = *(v0 + 28568);
  v4 = *(v0 + 28368);
  v15 = *(v0 + 28360);
  v16 = *(v0 + 28400);
  v14 = *(v0 + 28264);
  v5 = *(v0 + 28168);
  sub_106898(v6);
  sub_C9294(v0 + 22536, v0 + 22216);
  sub_387F4();
  v7 = swift_allocObject();
  v8 = sub_17464((v0 + 22216), v7 + 16);
  sub_78B14(v8, v21);
  sub_1068F4();
  *(v0 + 27968) = sub_16C1BC();
  sub_16C4EC();

  sub_106900();
  sub_2D64((v0 + 22536));
  sub_1055A0();
  sub_103BA0(v5, v9);
  sub_8748(v14, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v16, v15);
  sub_1054D0();
  sub_103BA0(v17, v10);
  sub_105424();
  sub_103BA0(v18, v11);
  sub_8748(v19, &qword_1C5800, &unk_16F510);
  sub_8748(v20, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_F6990()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3779];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3782];
  v16 = v0[3780];
  sub_105B10();
  v17 = sub_105980();
  sub_8284(v17, (v0 + 2176));
  sub_6361C(v0 + 2176, v0 + 2156);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 2156));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v18 = sub_4B4EC();
  v19(v18);
  sub_1054D0();
  sub_103BA0(v24, v20);
  sub_105424();
  sub_103BA0(v25, v21);
  sub_8748(v26, &qword_1C5800, &unk_16F510);
  sub_8748(v27, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F70D4()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 30392) = v7;
  *(v8 + 30400) = v0;

  sub_8C88();
  v9 = *(v1 + 28656);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v10);
}

uint64_t sub_F7248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 27984);
  v14 = [*(v12 + 30392) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_C9294(v13 + 24, v12 + 23216);
  v15 = sub_1057EC();
  v16(v15);
  sub_38138((v12 + 23176));
  if (sub_16C40C())
  {
    sub_2D64((v12 + 23176));
    sub_2D64((v12 + 23216));
    v17 = 4;
  }

  else
  {
    v13 = 22976;
    v18 = sub_106474();
    sub_C9294(v18, v12 + 23016);
    sub_3820C((v12 + 23016));
    v19 = sub_17970();
    v20(v19);
    sub_38138((v12 + 22976));
    sub_16C3FC();
    sub_105820();
    if (v21)
    {
      v17 = 0;
    }

    else
    {
      v17 = 4;
    }
  }

  v22 = *(v12 + 28240);
  sub_160444(0, 0, v17);
  v23 = sub_C9C8();
  sub_86B0(v23, v24, v25, v26);
  v27 = sub_16BE9C();
  v28 = sub_369C(v22, 1, v27);
  v29 = *(v12 + 28528);
  v30 = *(v12 + 28240);
  if (v28 == 1)
  {
    sub_8748(*(v12 + 28240), &qword_1C57F8, &unk_172510);
    sub_8AB4();
    sub_214C(v31, v32, v33, v29);
    goto LABEL_10;
  }

  sub_61120(*(v12 + 28648));
  sub_5DE54();
  (*(v34 + 8))(v30, v27);
  v35 = sub_C98CC();
  sub_8B20(v35, v36, v29);
  if (v21)
  {
LABEL_10:
    sub_105A08();
    v37 = sub_8748(*(v12 + 28648), &qword_1C5800, &unk_16F510);
    sub_1B9B4(v37, v12 + 27152);
    v38 = sub_38408();
    sub_5A88(v38, v39, v40, v41, v42, v43, v44, v45, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    v46 = sub_16DBDC();
    sub_16E37C();
    sub_106A08();
    if (sub_10623C())
    {
      v47 = *(v12 + 30232);
      v48 = sub_106514();
      sub_1054E8(v48);
      sub_1028F0(27152, v49, v50, v51);

      sub_1061C4(&def_259DC, v52, v53, "Couldn't create actionAceCommandString while trying to create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_3A5E0(v13);

      v54 = sub_105B50();
      v47(v54);
    }

    else
    {
      v55 = *(v12 + 30232);
      sub_106258();

      v56 = sub_1058E8();
      v55(v56);
    }

    v57 = *(v12 + 30392);
    v58 = *(v12 + 30256);
    v59 = *(v12 + 30240);
    sub_105B10();
    v60 = *(v12 + 28368);
    v146 = *(v12 + 28360);
    v147 = *(v12 + 28400);
    v61 = *(v12 + 28264);
    v62 = *(v12 + 28248);
    sub_107130();
    sub_6361C((v12 + 16128), (v12 + 15968));
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334(v12 + 15968);
    sub_1071E8(v62);
    sub_1071E8(v61);
    (*(v60 + 8))(v147, v146);
    sub_1054D0();
    sub_103BA0(v148, v63);
    sub_105424();
    sub_103BA0(v149, v64);
    sub_8748(v150, &qword_1C5800, &unk_16F510);
    sub_8748(v151, &qword_1C69C0, &unk_174290);
    sub_104B50();
    sub_105454();

    sub_105A18();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v67 = *(v12 + 30256);
  (*(*(v12 + 28536) + 32))(*(v12 + 28544), *(v12 + 28648), *(v12 + 28528));
  *(v12 + 27784) = sub_3A618(0);
  sub_10543C();
  v70 = sub_103600(v67, v68, v69);
  if (!v70)
  {
    v70 = sub_3A600(0);
  }

  v71 = v70;
  v72 = sub_3B35C(v70);
  if (v72)
  {
    v73 = v72;
    result = type metadata accessor for WellnessMedicationDialogObject(0);
    if (v73 < 1)
    {
      __break(1u);
      return result;
    }

    v75 = *(v12 + 28536);
    v76 = sub_16BC94(v71);
    v77 = 0;
    v78 = (v75 + 16);
    do
    {
      if (v76)
      {
        v79 = *(v71 + 8 * v77 + 32);
      }

      else
      {
        v79 = sub_16E48C();
      }

      v80 = v79;
      v81 = *(v12 + 28552);
      ++v77;
      (*v78)(v81, *(v12 + 28544), *(v12 + 28528));
      v82 = v80;
      v83 = sub_129020(v82, v81);
      sub_DB460(v83);
    }

    while (v73 != v77);
  }

  v84 = *(v12 + 30256);
  v85 = *(v12 + 28528);
  v86 = *(v12 + 28000);
  v87 = *(v12 + 27992);
  v88 = *(v12 + 27984);

  sub_2D20((v88 + 144), *(v88 + 168));
  v89 = *(v12 + 27784);
  *(v12 + 30408) = v89;

  v90 = v84;

  sub_8AB4();
  sub_214C(v91, v92, v93, v85);
  v94 = sub_106150(v87[12]);
  sub_214C(v94, v95, v96, v85);
  v97 = sub_106150(v87[15]);
  sub_214C(v97, v98, v99, v85);
  *v86 = 1;
  *(v86 + 8) = 0;
  *(v86 + 16) = 1;
  *(v86 + 17) = 65792;
  *(v86 + 24) = v89;
  sub_106798(v87[13]);
  sub_106798(v87[14]);
  sub_106798(v87[16]);
  sub_106798(v87[17]);

  v100 = sub_FFE84(v86, (v12 + 27784), v90, v88);
  sub_108170(v100, v101, v102, v103, v104, v105, v106, v107, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  *(v12 + 30416) = v108;
  v109 = swift_task_alloc();
  *(v12 + 30424) = v109;
  *v109 = v12;
  v109[1] = sub_F7E38;
  sub_8CC0();

  return v113(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12);
}

uint64_t sub_F7E38()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 30432) = v0;

  if (!v0)
  {
    *(v4 + 30440) = v3;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_F7F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[3805];
  v14 = v12[3782];
  v38 = v12[3780];
  v39 = v12[3799];
  sub_106438();
  v45 = v15;
  v46 = v16;
  v44 = v12[3571];
  v17 = v12[3567];
  v40 = v12[3566];
  v41 = v12[3568];
  v18 = v12[3550];
  v19 = v12[3546];
  v42 = v12[3545];
  v43 = v12[3560];
  v20 = v12[3498];
  sub_106774(v12[3500]);

  sub_C9294(v20 + 64, (v12 + 2827));
  sub_2D20(v12 + 2827, v12[2830]);
  sub_C98B4();
  sub_16C2FC();
  sub_2D64(v12 + 2827);
  sub_16C4FC();

  sub_106900();

  (*(v17 + 8))(v41, v40);
  sub_8B60();
  sub_8748(v21, v22, v23);
  sub_8B60();
  sub_8748(v24, v25, v26);
  (*(v19 + 8))(v18, v42);
  sub_1054D0();
  sub_103BA0(v43, v27);
  sub_105424();
  sub_103BA0(v44, v28);
  sub_8748(v45, &qword_1C5800, &unk_16F510);
  sub_8748(v46, &qword_1C69C0, &unk_174290);

  sub_1053F0();

  sub_C9BC();
  sub_8CC0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

void sub_F8B68()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3782];
  v2 = v0[3689];
  sub_106774(v0[3500]);

  sub_105B70();
  v3 = sub_A77C4();
  v2(v3);
  v4 = sub_16DBDC();
  sub_16E37C();
  sub_106A70();
  if (sub_106344())
  {
    v5 = sub_3A58C(2);
    v6 = sub_1054E8(v5);
    sub_106A88(v6, v7, v8, v9);

    sub_105B90(&def_259DC, v10, v11, "Couldn't create logspecificmedrejectedconfirmationresultset pattern, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v12 = sub_38E50();
  v13(v12);
  v14 = v0[3799];
  v15 = v0[3782];
  v16 = v0[3780];
  v34 = v0[3607];
  v32 = v0[3571];
  v33 = v0[3602];
  v17 = v0[3567];
  v26 = v0[3566];
  v27 = v0[3568];
  v30 = v0[3550];
  v31 = v0[3560];
  v18 = v0[3546];
  v28 = v0[3533];
  v29 = v0[3545];
  sub_8284(v0[3498] + 64, (v0 + 2096));
  sub_6361C(v0 + 2096, v0 + 2076);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 2076));
  (*(v17 + 8))(v27, v26);
  v19 = sub_38408();
  sub_8748(v19, v20, v21);
  sub_8748(v28, &qword_1C57F8, &unk_172510);
  (*(v18 + 8))(v30, v29);
  sub_1054D0();
  sub_103BA0(v31, v22);
  sub_105424();
  sub_103BA0(v32, v23);
  sub_8748(v33, &qword_1C5800, &unk_16F510);
  sub_8748(v34, &qword_1C69C0, &unk_174290);

  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_F9370()
{
  sub_76D68();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {
    sub_106BCC();
    sub_10642C();

    v6 = sub_4B304();
    sub_8748(v6, v7, &unk_16F510);
    v8 = sub_8B9C();
  }

  else
  {

    *(v4 + 30464) = v3;
    sub_106844();
    sub_8748(v10, v11, v12);
    v8 = sub_C9C8();
  }

  sub_8748(v8, v9, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v13);
}

uint64_t sub_F9564()
{
  v85 = v0[3784];
  v86 = v0[3808];
  v84 = v0[3783];
  v63 = v0[3782];
  v66 = v0[3703];
  v68 = v0[3702];
  v70 = v0[3700];
  v72 = v0[3699];
  v74 = v0[3697];
  v76 = v0[3696];
  v61 = v0[3571];
  v65 = v0[3570];
  v78 = v0[3533];
  v1 = v0[3529];
  v64 = v1;
  v2 = v0[3520];
  v3 = v0[3518];
  v59 = v0[3513];
  v81 = v0[3511];
  v82 = v0[3510];
  v87 = v0[3503];
  v80 = v0[3501];
  v83 = v0[3498];
  v4 = [v86 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();

  v60 = getMedStatus(from:)();

  sub_16BF4C();
  v5 = sub_103660(v63, &selRef_medSchedule);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7961646F74;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v57 = v8;
  v58 = v7;
  sub_103660(v63, &selRef_dosageUnit);
  sub_86B0(v78, v1, &qword_1C57F8, &unk_172510);
  v79 = sub_14D35C();
  v9 = 0x646567676F4CLL;
  if (v74)
  {
    v9 = v76;
  }

  v77 = v9;
  if (v74)
  {
    v10 = v74;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = 0x64657070696B53;
  if (v70)
  {
    v11 = v72;
  }

  v73 = v11;
  v75 = v10;
  if (v70)
  {
    v12 = v70;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0x6E656B6154;
  if (v66)
  {
    v13 = v68;
  }

  v69 = v13;
  v71 = v12;
  if (v66)
  {
    v14 = v66;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v67 = v14;
  sub_1055D0();
  sub_1039B4(v61, v87);
  sub_388E4();
  sub_214C(v15, v16, v17, v65);
  v62 = v3[8];
  v53 = sub_16C11C();
  sub_8AB4();
  sub_214C(v18, v19, v20, v21);
  v22 = v2 + v3[9];
  v23 = (v2 + v3[10]);
  v24 = (v2 + v3[11]);
  v25 = (v2 + v3[12]);
  v50 = (v2 + v3[13]);
  v54 = v3[15];
  v55 = v3[14];
  v52 = (v2 + v3[16]);
  v26 = (v2 + v3[17]);
  v51 = (v2 + v3[18]);
  v56 = v3[19];
  sub_8AB4();
  sub_214C(v27, v28, v29, v65);
  *v2 = v60 & 1;
  *(v2 + 8) = sub_BA66C();
  *(v2 + 16) = v30;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v58;
  *(v2 + 48) = v57;
  *v22 = 0;
  *(v22 + 8) = 1;

  v31 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v23 = sub_147C94(v31, v32);
  v23[1] = v33;

  *v24 = 0;
  v24[1] = 0;
  *v25 = v58;
  v25[1] = v57;
  sub_147DA8(v64);
  sub_8748(v64, &qword_1C57F8, &unk_172510);
  (*(v81 + 8))(v59, v82);
  sub_388E4();
  sub_214C(v34, v35, v36, v53);
  sub_1E634(v80, v2 + v62, &qword_1C63F0, &unk_1717F0);
  *v50 = v85;
  v50[1] = v84;
  *(v2 + v55) = 0;
  *(v2 + v54) = v79 & 1;
  *v52 = v77;
  v52[1] = v75;
  *v26 = v73;
  v26[1] = v71;
  *v51 = v69;
  v51[1] = v67;
  sub_1E634(v87, v2 + v56, &dword_1C63F8, &qword_171800);
  sub_C9294(v83 + 296, (v0 + 3022));
  sub_2D20(v0 + 3022, v0[3025]);
  v37 = sub_107090();
  v0[3020] = type metadata accessor for WellnessSnippets(v37);
  sub_1055B8();
  v0[3021] = sub_104478(v38, 255, v39, &protocol conformance descriptor for WellnessSnippets);
  sub_9910(v0 + 3017);
  sub_105584();
  v40 = sub_1064C0();
  sub_1039B4(v40, v41);
  sub_10658C();
  v42 = sub_2440(&qword_1C5ED8, &unk_173090);
  v43 = sub_38DA0(v42);
  sub_60CF0(v43, 1);
  *v44 = v86;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  v0[3809] = v45;
  v46 = v86;
  swift_task_alloc();
  sub_179E8();
  v0[3810] = v47;
  *v47 = v48;
  v47[1] = sub_F9AA0;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v0 + 3042);
}

uint64_t sub_F9AA0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 24136));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_F9BA8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3808];
  v2 = v0[3782];
  v3 = v0[3780];
  sub_105C50();
  v22 = v0[3560];
  v23 = v0[3571];
  v4 = v0[3546];
  v20 = v0[3545];
  v21 = v0[3550];
  v19 = v0[3533];
  v5 = v0[3520];
  sub_106898(v6);
  sub_106F14();
  sub_387F4();
  v7 = swift_allocObject();
  sub_106C24(v7);
  sub_1068F4();
  v0[3485] = sub_16C1BC();
  sub_106E10();

  sub_106900();
  sub_2D64(v0 + 3042);
  sub_1055A0();
  sub_103BA0(v5, v8);
  sub_8B60();
  sub_8748(v9, v10, v11);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v4 + 8))(v21, v20);
  sub_1054D0();
  sub_103BA0(v22, v12);
  sub_105424();
  sub_103BA0(v23, v13);
  sub_8B60();
  sub_8748(v14, v15, v16);
  sub_8748(v24, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FA2D4()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A70();
  sub_106344();
  v5 = v0[3779];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create specificMedicationSuccess_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3782];
  v16 = v0[3780];
  sub_105BD0();
  v17 = v0[3580];
  v26 = v0[3560];
  v27 = v0[3571];
  v25 = v0[3550];
  v18 = v0[3546];
  v19 = v0[3545];
  v20 = v0[3533];
  sub_107130();
  sub_6361C(v0 + 1696, v0 + 1676);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1676));
  sub_1071E8(v17);
  sub_8748(v20, &qword_1C57F8, &unk_172510);
  (*(v18 + 8))(v25, v19);
  sub_1054D0();
  sub_103BA0(v26, v21);
  sub_105424();
  sub_103BA0(v27, v22);
  sub_1071E8(v28);
  sub_8748(v29, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FAA3C(uint64_t a1)
{
  sub_107214();
  sub_C9EC();
  sub_38CAC();
  sub_C990();
  *v4 = v2;
  v5 = *v3;
  sub_38388();
  *v6 = v5;
  *(v2 + 30504) = v7;

  sub_8C88();
  if (v1)
  {
    sub_1062C8();
    sub_10642C();
  }

  else
  {
  }

  sub_105A74();
  sub_107200();

  return _swift_task_switch(v8);
}

uint64_t sub_FABAC()
{
  v2 = 23976;
  v3 = *(v0 + 27984);
  v4 = [*(v0 + 30504) catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_106C80();
  sub_3820C((v0 + 23976));
  v5 = sub_17970();
  v6(v5);
  sub_38138((v0 + 24016));
  if (sub_16C40C())
  {
    v7 = sub_105C94();
  }

  else
  {
    v1 = 24096;
    v3 = 24056;
    v10 = sub_106474();
    sub_C9294(v10, v0 + 24056);
    sub_3820C((v0 + 24056));
    v11 = sub_17970();
    v12(v11);
    sub_38138((v0 + 24096));
    sub_16C3FC();
    sub_106D88();
    v7 = sub_105A84((v0 + 24056));
    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4;
    }
  }

  sub_106680(v7, v8, v9);
  sub_106DF8();
  v14 = sub_1057EC();
  v15(v14);
  sub_38138((v0 + 24256));
  if (sub_16C40C())
  {
    sub_105C70();
  }

  else
  {
    v1 = 24296;
    v2 = 24376;
    v16 = sub_106474();
    sub_C9294(v16, v0 + 24296);
    sub_3820C((v0 + 24296));
    v17 = sub_17970();
    v18(v17);
    sub_38138((v0 + 24376));
    sub_16C3FC();
    sub_105820();
  }

  v19 = *(v0 + 17793);
  v20 = *(v0 + 27984);
  sub_16D69C();
  sub_1071B8();
  v146 = getMedStatus(from:)();

  sub_16BF4C();
  if (v19)
  {
    sub_10543C();
    v24 = sub_103600(v21, v22, v23);
    if (v24 && (sub_9AE60(v24), sub_1068E8(), , v20))
    {
      sub_16B9FC(v20);
      v142 = v25;
    }

    else
    {
      v142 = 0;
    }
  }

  else
  {
    sub_106F90();
  }

  sub_1067C4(*(v0 + 30504));
  v117 = v26;
  v122 = *(v0 + 28216);
  v27 = *(v0 + 28152);
  v28 = *(v0 + 28144);
  sub_106490();
  v29 = *(v0 + 28016);
  sub_106C58();
  v147 = v30;
  sub_86B0(v31, v32, &qword_1C57F8, &unk_172510);
  sub_14D35C();
  if (v19)
  {
    v33 = v3;
  }

  else
  {
    v33 = 0x646567676F4CLL;
  }

  v34 = 0xE600000000000000;
  if (v19)
  {
    v34 = v19;
  }

  v144 = v34;
  v145 = v33;
  v139 = v2;
  if (v1)
  {
    v35 = 24256;
  }

  else
  {
    v35 = 0x6E656B6154;
  }

  v36 = 0xE500000000000000;
  if (v1)
  {
    v36 = v1;
  }

  v133 = v36;
  v135 = v35;
  sub_1055D0();
  sub_1039B4(v117, v29);
  sub_388E4();
  v37 = v97;
  sub_214C(v38, v39, v40, v97);
  v107 = sub_106EC0();
  sub_8AB4();
  sub_214C(v41, v42, v43, v44);
  v45 = (v27 + v28[10]);
  v46 = v27 + v28[11];
  v118 = v28[19];
  v47 = sub_106150(v118);
  sub_214C(v47, v48, v49, v97);
  sub_1069CC(v146);
  v50 = sub_BA66C();
  sub_106A20(v50, v51, v52, v53, v54, v55, v56, v57, v97, v102, v107, v112, v118, v122, v126, v29, v131, v133, v135, v137, v139, 24216, v142);
  v58 = _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  *v45 = sub_147C94(v58, v59);
  v45[1] = v60;
  sub_1065B4(v37, v98, v103, v108, v113, v119, v123);
  sub_8748(v46, &qword_1C57F8, &unk_172510);
  v61 = sub_10701C();
  v62(v61);
  sub_388E4();
  v66 = sub_214C(v63, v64, v65, v109);
  v72 = sub_106EA4(v66, v67, &qword_1C63F0, &unk_1717F0, v68, v69, v70, v71, v99, v104, v109, v114);
  sub_1064CC(v72, v73, v74, v75, v76, v77, v78, v79, v100, v105, v110, v115, v120, v124, v127, v129, v132, v134, v136, v138, v140, v141, v143, v144, v145);
  sub_106E88(v80, v81, &dword_1C63F8, &qword_171800, v82, v83, v84, v85, v101, v106, v111, v116, v121, v125, v128, v130);
  sub_C9294(v147 + 296, v0 + 24536);
  *(v0 + 24640) = sub_106160();
  sub_1055B8();
  *(v0 + 24648) = sub_104478(v86, 255, v87, &protocol conformance descriptor for WellnessSnippets);
  sub_9910((v0 + 24616));
  sub_105584();
  sub_106D70();
  sub_10658C();
  v88 = sub_2440(&qword_1C5ED8, &unk_173090);
  v89 = sub_38DA0(v88);
  sub_60CF0(v89, 1);
  *v90 = v148;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  *(v0 + 30512) = v91;
  v92 = v148;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 30520) = v93;
  *v93 = v94;
  v93[1] = sub_FB0F0;
  v95 = sub_1057CC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v95);
}

uint64_t sub_FB0F0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 24616));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_FB1F8()
{
  sub_3868C();
  sub_38664();
  v1 = v0[3813];
  v2 = v0[3782];
  v3 = v0[3780];
  sub_105C50();
  sub_1067EC();
  v13 = v0[3528];
  v4 = v0[3519];
  sub_106898(v5);
  sub_106968();
  sub_387F4();
  v6 = swift_allocObject();
  sub_106850(v6);
  sub_1068F4();
  v0[3470] = sub_16C1BC();
  sub_106918();

  sub_106900();
  sub_2D64(v0 + 3052);
  sub_1055A0();
  sub_103BA0(v4, v7);
  sub_8748(v13, &qword_1C57F8, &unk_172510);
  v8 = sub_107058();
  v9(v8);
  sub_105424();
  sub_103BA0(v14, v10);
  sub_8748(v15, &qword_1C5800, &unk_16F510);
  sub_8748(v16, &qword_1C69C0, &unk_174290);

  sub_104F9C();
  sub_10550C();

  sub_105C60();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FB8F0()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C(2);
    sub_1070D8();
    sub_105A28(v5);
    sub_106FFC();
    if (v2)
    {
      while (1)
      {
        v6 = sub_105734();
        sub_3A5A4(v6, v7, v8, v9);
        sub_1065A8();
      }
    }

    v10 = v0[3779];
    sub_106404();
    sub_105BB0(&def_259DC, v11, v12, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v1);

    v13 = sub_105B00();
    v10(v13);
  }

  else
  {
    v14 = v0[3779];
    sub_106258();

    v15 = sub_1058E8();
    v14(v15);
  }

  v16 = v0[3782];
  v17 = v0[3780];
  sub_106438();
  v27 = v18;
  v28 = v19;
  v20 = v0[3571];
  v21 = sub_10591C();
  sub_8284(v21, (v0 + 1156));
  sub_6361C(v0 + 1156, v0 + 1136);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1136));
  v22 = sub_387CC();
  v23(v22);
  sub_105424();
  sub_103BA0(v20, v24);
  sub_8748(v27, &qword_1C5800, &unk_16F510);
  sub_8748(v28, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FC054()
{
  sub_C9EC();
  sub_38CAC();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 30544) = v6;
  *(v7 + 30552) = v0;

  sub_8C88();
  if (v0)
  {
  }

  v8 = sub_4B304();
  sub_8748(v8, v9, &unk_16F510);
  v10 = sub_8B9C();
  sub_8748(v10, v11, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v12);
}

uint64_t sub_FC208()
{
  sub_38AB4();
  sub_38664();
  v1 = v0[3818];
  v2 = v0[3498];
  sub_16C45C();
  sub_37FFC();
  v3 = sub_10631C();
  sub_B9BF4(v3, v4, v5);
  sub_16C7AC();
  v6 = [v1 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v2 + 24, (v0 + 2912));
  sub_8284(v2 + 64, (v0 + 956));
  sub_C9294(v2 + 296, (v0 + 2917));
  v0[3820] = *(v2 + 336);
  v0[3821] = *(v2 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3822] = v7;
  *v7 = v8;
  v7[1] = sub_FC374;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_FC374()
{
  sub_107214();
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 23336));
  sub_C938(v2 + 7648);
  sub_2D64((v2 + 23296));
  sub_17960();
  sub_107200();

  return _swift_task_switch(v6);
}

uint64_t sub_FC4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v13[3230])
  {
    v15 = v13[3818];
    v16 = v13[3782];
    v17 = v13[3780];
    v55 = v13[3602];
    v57 = v13[3607];
    v52 = v13[3548];
    v53 = v13[3571];
    v18 = sub_10628C(25816);
    sub_106FB8(v18);
    sub_106AD4();
    sub_387F4();
    v19 = swift_allocObject();
    sub_106810(v19);
    v13[3482] = sub_1066F0();
    sub_1069D8(27856);
    sub_16C4EC();

    sub_106900();
    sub_2D64(v13 + 2887);
    (*(v12 + 8))(v52, v14);
    sub_105424();
    sub_103BA0(v53, v20);
    sub_8748(v55, &qword_1C5800, &unk_16F510);
    sub_8748(v57, &qword_1C69C0, &unk_174290);
  }

  else
  {
    sub_105A08();
    v22 = sub_8748(v13 + v21, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v22, (v13 + 3349));
    v23 = sub_38408();
    v14(v23);
    v24 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v25 = sub_3A58C(2);
      sub_106114(v25);
      v26 = loc_68B8;
      for (i = 32; v26; --v26)
      {
        sub_106DA0(*(i + 26792));
        i += 16;
      }

      v28 = v13[3779];
      sub_106404();
      sub_105BB0(&def_259DC, v29, v30, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v25);

      v31 = sub_105B00();
      v28(v31);
    }

    else
    {
      v32 = v13[3779];
      sub_106258();

      v33 = sub_1058E8();
      v32(v33);
    }

    v34 = v13[3818];
    v35 = v13[3782];
    v36 = v13[3780];
    sub_106438();
    v56 = v37;
    v58 = v38;
    v54 = v13[3571];
    v39 = sub_10591C();
    sub_8284(v39, (v13 + 1036));
    sub_6361C(v13 + 1036, v13 + 1016);
    sub_82E0();
    sub_16C4EC();

    sub_106900();
    sub_8334((v13 + 1016));
    v40 = sub_387CC();
    v41(v40);
    sub_105424();
    sub_103BA0(v54, v42);
    sub_8748(v56, &qword_1C5800, &unk_16F510);
    sub_8748(v58, &qword_1C69C0, &unk_174290);
  }

  sub_104F9C();
  sub_105A50();
  sub_10636C();

  sub_C9BC();
  sub_8CC0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

void sub_FCD5C()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v4 = v1[3616];
  sub_1058F8();
  v5 = sub_38408();
  v2(v5);
  v6 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C(2);
    sub_1070D8();
    sub_105A28(v7);
    sub_106FFC();
    if (v3)
    {
      while (1)
      {
        v8 = sub_105734();
        sub_3A5A4(v8, v9, v10, v11);
        sub_1065A8();
      }
    }

    v12 = v1[3779];
    v0 = v1[3616];
    sub_106404();
    sub_105BB0(&def_259DC, v13, v14, "Couldn't create specificMedicationLogFailed_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);

    v15 = sub_105B00();
    v12(v15);
  }

  else
  {
    v16 = v1[3779];
    v4 = v1[3616];
    sub_106258();

    v17 = sub_1058E8();
    v16(v17);
  }

  v18 = v1[3782];
  v19 = v1[3780];
  v20 = sub_105674();
  sub_8284(v20, (v1 + 876));
  sub_6361C(v1 + 876, v1 + 856);
  sub_82E0();
  sub_16C4EC();

  sub_376FC((v1 + 2513));
  sub_8334((v1 + 856));
  sub_105424();
  sub_103BA0(v0, v21);
  sub_8748(v4, &qword_1C5800, &unk_16F510);
  sub_8748(v6, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_FD4A0()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 30608) = v7;
  *(v8 + 30616) = v0;

  sub_8C88();
  v9 = *(v1 + 28600);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_105A74();

  return _swift_task_switch(v10);
}

uint64_t sub_FD614()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[3826];
  sub_106464();
  sub_16C45C();
  sub_37FFC();
  v3 = sub_10631C();
  sub_B9BF4(v3, v4, v5);
  sub_16C7AC();
  v6 = [v2 catId];
  sub_16E1BC();
  sub_106508();

  sub_C9E0();
  sub_16C76C();
  sub_C9294(v1 + 24, (v0 + 2757));
  sub_8284(v1 + 64, (v0 + 396));
  sub_C9294(v1 + 296, (v0 + 2802));
  v0[3828] = *(v1 + 336);
  v0[3829] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[3830] = v7;
  *v7 = v8;
  v7[1] = sub_FD774;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_FD774()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 22416));
  sub_C938(v2 + 3168);
  sub_2D64((v2 + 22056));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_FD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (*(v12 + 21840))
  {
    v14 = *(v12 + 30608);
    v51 = *(v12 + 28816);
    v52 = *(v12 + 28856);
    v50 = *(v12 + 28568);
    v15 = sub_10628C(21816);
    sub_17464(v15, v12 + 21776);
    sub_16C1DC();
    sub_C9294(v12 + 21776, v12 + 22496);
    sub_387F4();
    v16 = swift_allocObject();
    v17 = sub_17464((v12 + 22496), v16 + 16);
    sub_78B14(v17, v53);
    *(v12 + 27776) = sub_16C1BC();
    sub_1069D8(27776);
    sub_16C4EC();

    sub_106900();
    sub_2D64((v12 + 21776));
    v18 = sub_4B4EC();
    v19(v18);
    sub_105424();
    sub_103BA0(v50, v20);
    sub_8748(v51, &qword_1C5800, &unk_16F510);
    sub_8748(v52, &qword_1C69C0, &unk_174290);
  }

  else
  {
    v21 = &loc_6BC0;
    sub_105A08();
    v22 = *(v12 + 28888);
    v23 = *(v12 + 28864);
    v25 = sub_8748(v12 + v24, &qword_1C5ED0, &qword_171090);
    sub_1B9B4(v25, v12 + v21);
    v26 = sub_38408();
    v13(v26);
    v27 = sub_16DBDC();
    sub_16E36C();
    sub_106A08();
    if (sub_10623C())
    {
      v28 = sub_3A58C(2);
      sub_106114(v28);
      if (*(&dword_10 + v21))
      {
        while (1)
        {
          sub_106DA0(*(&stru_20.cmd + &loc_6BC0));
          sub_1065A8();
        }
      }

      v29 = *(v12 + 30584);
      v23 = *(v12 + 28888);
      sub_106404();
      sub_105BB0(&def_259DC, v30, v31, "Couldn't create output, returning GenericErrorFlow");
      sub_3A5E0(v28);

      v32 = sub_105B00();
      v29(v32);
    }

    else
    {
      v33 = *(v12 + 30584);
      v22 = *(v12 + 28888);
      sub_106258();

      v34 = sub_1058E8();
      v33(v34);
    }

    v35 = *(v12 + 30608);
    v36 = *(v12 + 28856);
    sub_106360();
    v37 = sub_10591C();
    sub_8284(v37, v12 + 3808);
    sub_6361C((v12 + 3808), (v12 + 3648));
    sub_82E0();
    sub_16C4EC();

    sub_376FC(v12 + 20104);
    sub_8334(v12 + 3648);
    v38 = sub_387CC();
    v39(v38);
    sub_105424();
    sub_103BA0(v23, v40);
    sub_8748(v22, &qword_1C5800, &unk_16F510);
    sub_8748(v36, &qword_1C69C0, &unk_174290);
  }

  sub_104F9C();
  sub_105A50();
  sub_10636C();

  sub_C9BC();
  sub_8CC0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

void sub_FE164()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  v4 = v1[3610];
  sub_1058F8();
  v5 = sub_38408();
  v2(v5);
  v6 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C(2);
    sub_1070D8();
    sub_105A28(v7);
    sub_106FFC();
    if (v3)
    {
      while (1)
      {
        v8 = sub_105734();
        sub_3A5A4(v8, v9, v10, v11);
        sub_1065A8();
      }
    }

    v12 = v1[3823];
    v0 = v1[3610];
    sub_106404();
    sub_105BB0(&def_259DC, v13, v14, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);

    v15 = sub_105B00();
    v12(v15);
  }

  else
  {
    v16 = v1[3823];
    v4 = v1[3610];
    sub_106258();

    v17 = sub_1058E8();
    v16(v17);
  }

  v18 = sub_105674();
  sub_8284(v18, (v1 + 316));
  sub_6361C(v1 + 316, v1 + 296);
  sub_82E0();
  sub_16C4EC();
  sub_376FC((v1 + 2513));
  sub_8334((v1 + 296));
  sub_105424();
  sub_103BA0(v0, v19);
  sub_8748(v4, &qword_1C5800, &unk_16F510);
  sub_8748(v6, &qword_1C69C0, &unk_174290);
  sub_104F9C();
  sub_1056B8();

  sub_105BE0();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

void sub_FE890()
{
  sub_3868C();
  sub_38664();
  sub_1059C0();
  sub_1058F8();
  v3 = sub_38408();
  v1(v3);
  v4 = sub_16DBDC();
  sub_16E37C();
  sub_106A70();
  sub_106344();
  v5 = v0[3779];
  sub_106568();
  if (v6)
  {
    v7 = sub_3A58C(2);
    v8 = sub_1054E8(v7);
    sub_106A88(v8, v9, v10, v11);

    sub_105B90(&def_259DC, v12, v13, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_3A5E0(v2);
  }

  else
  {
  }

  v14 = sub_105A64();
  v5(v14);
  v15 = v0[3782];
  v16 = v0[3780];
  sub_105B10();
  v17 = sub_105980();
  sub_8284(v17, (v0 + 1876));
  sub_6361C(v0 + 1876, v0 + 1856);
  sub_82E0();
  sub_16C4EC();

  sub_106900();
  sub_8334((v0 + 1856));
  sub_8748(v2, &qword_1C57F8, &unk_172510);
  v18 = sub_4B4EC();
  v19(v18);
  sub_1054D0();
  sub_103BA0(v24, v20);
  sub_105424();
  sub_103BA0(v25, v21);
  sub_8748(v26, &qword_1C5800, &unk_16F510);
  sub_8748(v27, &qword_1C69C0, &unk_174290);
  sub_104B50();
  sub_105454();

  sub_105A18();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

id sub_FEFD4(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDouble:a1];
}

uint64_t sub_FF05C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  *a2 = getMedStatus(from:)() & 1;
  v10 = [a1 medCount];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    v13 = v12;

    v14 = v13 == 1.0;
  }

  else
  {
    v14 = 0;
    v13 = 0.0;
  }

  a2[1] = v14;
  getLocalizedMedName(from:)();
  if (v15)
  {
    sub_16E23C();

    v16 = sub_16D5CC();
    v17 = 0;
  }

  else
  {
    v16 = sub_16D5CC();
    v17 = 1;
  }

  v18 = v11 == 0;
  sub_214C(v9, v17, 1, v16);
  v19 = type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters(0);
  sub_86FC(v9, &a2[v19[6]], &qword_1C5800, &unk_16F510);
  v20 = &a2[v19[7]];
  *v20 = v13;
  *(v20 + 8) = v18;
  a2[v19[8]] = hasDosageEdit(from:)() & 1;
  v21 = [a1 dosage];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = &a2[v19[9]];
  *v25 = v24;
  v25[8] = v22 == 0;
  sub_103660(a1, &selRef_dosageUnit);
  if (v26)
  {
    sub_16E23C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_16D5CC();
  v29 = 1;
  sub_214C(v7, v27, 1, v28);
  sub_86FC(v7, &a2[v19[10]], &qword_1C5800, &unk_16F510);
  v30 = sub_103600(a1, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v30)
  {
    v31 = v30;
    v32 = sub_3B35C(v30);
    v29 = v32 == 0;
    if (v32 && ((sub_3B360(), (v31 & 0xC000000000000001) != 0) ? (v33 = sub_16E48C()) : (v33 = *(v31 + 32)), v34 = v33, , sub_103424(v34), !v35))
    {
      v29 = 1;
    }

    else
    {
    }
  }

  a2[v19[11]] = v29;
  v36 = [a1 matchingMeds];
  if (v36)
  {
    v37 = v36;
    sub_16D86C();
    v38 = sub_16E2CC();
  }

  else
  {

    v38 = 0;
  }

  *&a2[v19[12]] = v38;
  return result;
}

BOOL sub_FF3F0()
{

  v0 = getUSOMedNames(from:)();

  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1 != 0;
}

uint64_t sub_FF448@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_103660(*a1, &selRef_scheduleID);
  v8 = v7;
  v9 = sub_103660(v5, &selRef_medicationID);
  v11 = v10;
  v12 = [v5 strength];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValue];
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  v16 = sub_103660(v5, &selRef_strengthUnit);
  v38 = 0;
  v18 = 0x64656863536C696ELL;
  if (v8)
  {
    v18 = v6;
  }

  v19 = 0xEB00000000656C75;
  if (v8)
  {
    v19 = v8;
  }

  v39[0] = v18;
  v39[1] = v19;
  v20 = 0x636964654D6C696ELL;
  if (v11)
  {
    v20 = v9;
  }

  v21 = 0xEF44496E6F697461;
  if (v11)
  {
    v21 = v11;
  }

  v39[2] = v20;
  v39[3] = v21;
  *&v39[4] = v15;
  v40 = 0;
  v22 = 0x6E657274536C696ELL;
  if (v17)
  {
    v22 = v16;
  }

  v23 = 0xEF74696E55687467;
  if (v17)
  {
    v23 = v17;
  }

  v41 = v22;
  v42 = v23;
  v34[0] = v18;
  v34[1] = v19;
  v34[2] = v20;
  v34[3] = v21;
  *&v34[4] = v15;
  v35 = 0;
  v36 = v22;
  v37 = v23;
  sub_ACAC8(v39, v31);
  sub_ACB24(v34);
  sub_C9294(a2 + 24, v31);
  v24 = v32;
  v25 = v33;
  sub_2D20(v31, v32);
  (*(v25 + 8))(v30, v24, v25);
  v26 = sub_7BBDC(v30);
  v28 = v27;
  sub_ACB24(v39);
  sub_2D64(v30);
  sub_2D64(v31);
  if (!v28)
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  type metadata accessor for WellnessMedicationDialogObject(0);
  result = sub_129638(v5, v26, v28);
  *a3 = result;
  return result;
}

uint64_t sub_FF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_16E72C();
  if (a2)
  {
    sub_16E74C(1u);
    sub_16E25C();
  }

  else
  {
    sub_16E74C(0);
  }

  v7 = sub_16E75C();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(a3 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_17:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v15 = *v13 == a1 && v14 == a2;
  if (!v15 && (sub_16E6BC() & 1) == 0)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_FF7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2440(&qword_1C9D48, &qword_176840);
  swift_allocObject();
  type metadata accessor for MedNameDisambiguationStrategy();
  sub_104478(&qword_1C9D58, 255, type metadata accessor for MedNameDisambiguationStrategy, &unk_171750);
  return sub_16C27C();
}

uint64_t sub_FF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2440(&qword_1C9D38, &qword_176838);
  swift_allocObject();
  type metadata accessor for MedScheduleDisambiguationStrategy();
  sub_104478(&qword_1C9D68, 255, type metadata accessor for MedScheduleDisambiguationStrategy, &unk_174D28);
  return sub_16C27C();
}

uint64_t sub_FFA7C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_107090();
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_3E204();
  v6 = v2(0);
  sub_38F2C(v6);
  v7 = sub_38E5C();
  return a2(v7);
}

uint64_t sub_FFBC0(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t sub_FFDF0(void *a1)
{
  v1 = sub_103600(a1, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v1)
  {
    sub_3B35C(v1);
  }

  sub_2440(&qword_1C6778, &qword_171C30);
  return sub_16E3DC();
}

uint64_t sub_FFE84(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v43[1] = a4;
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v43 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v43 - v18;
  __chkstk_darwin(v17);
  v21 = v43 - v20;
  v22 = sub_3B35C(*a2);
  v23 = type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters(0);
  v24 = a1 + v23[14];
  *v24 = v22;
  *(v24 + 8) = 0;
  v25 = sub_103600(a3, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v25)
  {
    v26 = v25;
    if (sub_3B35C(v25))
    {
      sub_3B360();
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = sub_16E48C();
      }

      else
      {
        v27 = *(v26 + 32);
      }

      v28 = v27;

      sub_16B9FC(v28);
      if (v29)
      {
        sub_16E23C();

        v30 = sub_16D5CC();
        v31 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v30 = sub_16D5CC();
  v31 = 1;
LABEL_9:
  sub_214C(v21, v31, 1, v30);
  sub_1E634(v21, a1 + v23[12], &qword_1C5800, &unk_16F510);

  getMedStatus(from:)();

  sub_16E23C();
  v32 = sub_16D5CC();
  sub_214C(v19, 0, 1, v32);
  sub_1E634(v19, a1 + v23[15], &qword_1C5800, &unk_16F510);
  v33 = sub_103600(a3, &selRef_matchingMeds, &type metadata accessor for MatchedMedName);
  if (v33)
  {
    v34 = v33;
    if (sub_3B35C(v33))
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

      sub_146C80(v36);
      if (v37)
      {
        sub_16E23C();

        sub_214C(v13, 0, 1, v32);
        (*(*(v32 - 8) + 32))(v16, v13, v32);
        sub_214C(v16, 0, 1, v32);
        return sub_1E634(v16, a1 + v23[11], &qword_1C5800, &unk_16F510);
      }
    }

    else
    {
    }
  }

  v38 = 1;
  sub_214C(v13, 1, 1, v32);
  sub_16BF4C();
  v39 = sub_16BF5C();
  sub_214C(v9, 0, 1, v39);
  sub_9BFAC(v9);
  v41 = v40;
  sub_8748(v9, &qword_1C57E0, &unk_171C60);
  if (v41)
  {
    sub_16E23C();

    v38 = 0;
  }

  sub_214C(v16, v38, 1, v32);
  if (sub_369C(v13, 1, v32) != 1)
  {
    sub_8748(v13, &qword_1C5800, &unk_16F510);
  }

  return sub_1E634(v16, a1 + v23[11], &qword_1C5800, &unk_16F510);
}

uint64_t sub_1003A4(uint64_t a1)
{
  v2 = v1;
  v100 = sub_16DBEC();
  sub_42F0();
  v99 = v4;
  __chkstk_darwin(v5);
  sub_887C();
  v8 = v6 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = (&v92 - v11);
  __chkstk_darwin(v10);
  v97 = &v92 - v13;
  v14 = sub_2440(&qword_1C9D00, &unk_176720);
  sub_42F0();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_887C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v92 - v22;
  v24 = *(v16 + 16);
  v25 = sub_D4D84();
  v24(v25);
  v26 = sub_106F6C();
  if (v27(v26) == enum case for PromptResult.answered<A>(_:))
  {
    v95 = v12;
    v28 = v99;
    v29 = v100;
    v30 = sub_106F6C();
    v31(v30);
    v32 = *v23;
    v33 = *(v23 + 1);
    v34 = *(v23 + 3);
    v96 = *(v23 + 2);
    v35 = *(v23 + 4);
    v111 = v23[40];
    v36 = v111;
    v109[0] = *(v23 + 41);
    *(v109 + 3) = *(v23 + 11);
    v37 = *(v23 + 6);
    v38 = *(v23 + 7);
    v110 = v111;
    if (v33)
    {
      v39 = v32 == 0x64656863536C696ELL && v33 == 0xEB00000000656C75;
      v40 = v28;
      if (v39 || (v98 = v32, (sub_16E6BC() & 1) != 0))
      {

        v98 = 0;
        v33 = 0;
      }
    }

    else
    {
      v98 = v32;
      v40 = v28;
    }

    v58 = v96;
    v59 = v96 == 0x636964654D6C696ELL && v34 == 0xEF44496E6F697461;
    if (v59 || (sub_16E6BC() & 1) != 0)
    {
      v94 = v34;
      v60 = v37;
      v61 = sub_16DBBC();
      sub_8B48(v61, v101);
      v62 = sub_C9C8();
      v63(v62);
      v64 = sub_16DBDC();
      v65 = sub_16E37C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = sub_1BA38();
        *v66 = 0;
        _os_log_impl(&def_259DC, v64, v65, "processNameDisambiguationResult() received nilMedicationID. Setting flow to .failure state.", v66, 2u);
        v67 = v66;
        v40 = v28;
        sub_8A2C(v67);
      }

      (*(v40 + 8))(v97, v29);
      sub_106EDC();
      *(v2 + 232) = 0u;
      *(v2 + 224) = 8;
      *(v2 + 248) = 0u;
      *(v2 + 264) = 0u;
      *(v2 + 280) = 0;
      *(v2 + 288) = -64;
      sub_376FC(v112);
      v36 = v111;
      v37 = v60;
      v34 = v94;
      v58 = v96;
    }

    v68 = v38;
    if ((v36 & 1) == 0 && v35 == -1.0)
    {
      v36 = 1;
      v110 = 1;
      v35 = 0.0;
    }

    if (v38)
    {
      v69 = v37 == 6.20204794e223 && v38 == 0xEF74696E55687467;
      if (v69 || (sub_1064C0(), (sub_16E6BC() & 1) != 0))
      {

        v37 = 0.0;
        v68 = 0;
      }
    }

    LODWORD(v97) = v36 & 1;
    v108[24] = v36 & 1;
    sub_106EDC();
    *(v2 + 224) = v98;
    *(v2 + 232) = v33;
    *(v2 + 240) = v58;
    *(v2 + 248) = v34;
    *(v2 + 256) = v35;
    *(v2 + 264) = v36 & 1;
    *(v2 + 272) = v37;
    *(v2 + 280) = v68;
    *(v2 + 288) = 0;

    sub_376FC(v112);
    v70 = sub_16DBBC();
    sub_8B48(v70, v108);
    (*(v40 + 16))();
    v71 = v58;
    v72 = sub_16DBDC();
    v73 = v68;
    v74 = sub_16E36C();
    if (os_log_type_enabled(v72, v74))
    {
      v75 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v102 = v96;
      *v75 = 136315906;
      sub_1067FC();
      v93 = v33;
      v104 = v33;
      sub_2440(&qword_1C69C8, &qword_174150);
      v92 = v37;
      v94 = v73;
      v76 = sub_16E3DC();
      sub_3AB7C(v76, v77, &v102);
      sub_456D0();

      *(v75 + 4) = &v103;
      *(v75 + 12) = 2080;

      v78 = v71;
      v79 = sub_D4D84();
      v82 = sub_3AB7C(v79, v80, v81);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2080;
      v103 = v35;
      LOBYTE(v104) = v97;
      sub_2440(&qword_1C57A0, &qword_16F3C0);
      v83 = sub_16E3DC();
      sub_3AB7C(v83, v84, &v102);
      sub_456D0();

      *(v75 + 24) = &v103;
      *(v75 + 32) = 2080;
      v85 = v92;
      v103 = v92;
      v86 = v94;
      v104 = v94;
      v87 = sub_16E3DC();
      sub_3AB7C(v87, v88, &v102);
      sub_456D0();

      *(v75 + 34) = &v103;
      _os_log_impl(&def_259DC, v72, v74, "processNameDisambiguationResult() received selected scheduleID (%s), medicationID (%s), strength (%s), strengthUnit (%s)", v75, 0x2Au);
      v89 = v96;
      swift_arrayDestroy();
      sub_8A2C(v89);
      sub_8A2C(v75);

      (*(v99 + 8))(v95, v100);
      sub_1067FC();
      v104 = v93;
      v105 = v78;
      sub_106620();
      v106 = v85;
      v107 = v86;
    }

    else
    {

      v90 = sub_106FE4();
      v91(v90);
      sub_1067FC();
      v104 = v33;
      v105 = v71;
      sub_106620();
      v106 = v37;
      v107 = v73;
    }

    return sub_8748(&v103, &qword_1C63D8, &qword_1717C8);
  }

  else
  {
    v41 = sub_16DBBC();
    sub_8B48(v41, &v103);
    v42 = sub_13298();
    v43(v42);
    (v24)(v20, a1, v14);
    v44 = sub_16DBDC();
    v45 = sub_16E37C();
    if (sub_387B0(v45))
    {
      v46 = sub_8BD8();
      v97 = v46;
      v98 = sub_CA30();
      v112[0] = v98;
      *v46 = 136315138;
      sub_38940(&qword_1C9D08, &qword_1C9D00, &unk_176720);
      LODWORD(v96) = v8;
      sub_16E68C();
      sub_107084();
      v95 = v44;
      v47 = sub_106D28();
      (v44)(v47);
      v48 = sub_38B40();
      v51 = sub_3AB7C(v48, v49, v50);

      v52 = v97;
      *(v97 + 4) = v51;
      v53 = v95;
      v54 = v52;
      _os_log_impl(&def_259DC, v95, v96, "processNameDisambiguationResult() received unknown result: %s. Setting flow to .failure state.", v52, 0xCu);
      sub_2D64(v98);
      sub_1BA00();
      sub_8A2C(v54);
    }

    else
    {

      v55 = sub_106D28();
      (v44)(v55);
    }

    (*(v99 + 8))(v8, v100);
    sub_106EDC();
    sub_1068C4();
    sub_376FC(v112);
    v56 = sub_106F6C();
    return (v44)(v56);
  }
}

uint64_t sub_100CD8(uint64_t a1)
{
  v2 = v1;
  sub_16DBEC();
  sub_42F0();
  v50 = v5;
  v51 = v4;
  __chkstk_darwin(v4);
  sub_887C();
  v49 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_2440(&qword_1C9CF0, &qword_176718);
  sub_42F0();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_887C();
  __chkstk_darwin(v15);
  v17 = (&v46 - v16);
  v18 = *(v13 + 16);
  v18(&v46 - v16, a1, v11);
  if ((*(v13 + 88))(v17, v11) == enum case for PromptResult.answered<A>(_:))
  {
    (*(v13 + 96))(v17, v11);
    v20 = *v17;
    v19 = v17[1];
    memcpy(__dst, (v2 + 224), 0x41uLL);
    *(v2 + 224) = v20;
    *(v2 + 232) = v19;
    *(v2 + 264) = 0;
    *(v2 + 240) = 0;
    *(v2 + 248) = 0;
    *(v2 + 288) = 64;

    sub_376FC(__dst);
    v21 = sub_16DBBC();
    sub_8B48(v21, v54);
    v22 = sub_C9C8();
    v23(v22);

    v24 = sub_16DBDC();
    v25 = sub_16E36C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_8BD8();
      v27 = sub_CA30();
      v52 = v27;
      *v26 = 136315138;
      v28 = sub_3AB7C(v20, v19, &v52);

      *(v26 + 4) = v28;
      _os_log_impl(&def_259DC, v24, v25, "processScheduleDisambiguationResult() received selected scheduleID (%s)", v26, 0xCu);
      sub_2D64(v27);
      sub_8A2C(v27);
      sub_8A2C(v26);
    }

    else
    {
    }

    return (*(v50 + 8))(v10, v51);
  }

  else
  {
    v29 = sub_16DBBC();
    sub_8B48(v29, v54);
    v30 = sub_C9C8();
    v31(v30);
    v32 = sub_C98B4();
    (v18)(v32);
    v33 = sub_16DBDC();
    v34 = sub_16E37C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_8BD8();
      v47 = v35;
      v48 = sub_CA30();
      __dst[0] = v48;
      *v35 = 136315138;
      sub_38940(&qword_1C9CF8, &qword_1C9CF0, &qword_176718);
      v36 = sub_16E68C();
      HIDWORD(v46) = v34;
      v37 = sub_106CF8();
      (v18)(v37);
      v38 = sub_C9C8();
      sub_3AB7C(v38, v39, v40);
      sub_456D0();

      v41 = v47;
      *(v47 + 1) = v36;
      sub_107170(&def_259DC, v33, BYTE4(v46), "processScheduleDisambiguationResult() received unknown result: %s. Setting flow to .failure state.", v46);
      v42 = v48;
      sub_2D64(v48);
      sub_8A2C(v42);
      sub_8A2C(v41);
    }

    else
    {

      v44 = sub_106CF8();
      (v18)(v44);
    }

    (*(v50 + 8))(v49, v51);
    memcpy(__dst, (v2 + 224), 0x41uLL);
    *(v2 + 224) = 8;
    *(v2 + 232) = 0u;
    v45 = v2 + 232;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0;
    *(v45 + 56) = -64;
    sub_376FC(__dst);
    return (v18)(v17, v11);
  }
}

uint64_t sub_1011A8(uint64_t a1, const char *a2, const char *a3, int a4, ...)
{
  v109 = a4;
  v107 = a3;
  v112 = a2;
  v6 = v4;
  v8 = sub_2440(&qword_1C6780, &qword_176710);
  sub_42F0();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v12);
  v13 = sub_107150();
  sub_42F0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v18);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  v23 = sub_16DBBC();
  sub_8B48(v23, v126);
  v24 = *(v15 + 16);
  v122 = v23;
  v117 = v13;
  v121 = v15 + 16;
  v120 = v24;
  v24(v22, v23, v13);
  v25 = *(v10 + 16);
  v118 = a1;
  v116 = v25;
  v25(v5, a1, v8);
  v26 = sub_16DBDC();
  v27 = sub_16E36C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_8BD8();
    v113 = v10;
    v29 = v28;
    v30 = sub_CA30();
    v111 = v6;
    v105 = v30;
    __dst[0] = v30;
    *v29 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v31 = sub_16E68C();
    v106 = v15;
    v33 = v32;
    v34 = *(v113 + 8);
    v34(v5, v8);
    v35 = sub_3AB7C(v31, v33, __dst);

    *(v29 + 4) = v35;
    sub_107170(&def_259DC, v26, v27, v112);
    v36 = v105;
    sub_2D64(v105);
    v37 = v111;
    sub_8A2C(v36);
    sub_8A2C(v29);

    v38 = v34;
    v39 = *(v106 + 8);
    v40 = v22;
  }

  else
  {

    v38 = *(v10 + 8);
    (v38)(v5, v8);
    v39 = *(v15 + 8);
    v40 = v22;
    v37 = v6;
  }

  v41 = v117;
  v39(v40, v117);
  v42 = v119;
  v116(v119, v118, v8);
  v43 = sub_1070E4();
  if (v44(v43) != enum case for PromptResult.answered<A>(_:))
  {
    v69 = sub_1070E4();
    v70 = (v38)(v69);
    sub_106204(v70, v125);
    v71 = v114;
    sub_1069F0();
    sub_1062B4();
    v72();
    v73 = sub_16DBDC();
    v74 = sub_16E37C();
    if (sub_387B0(v74))
    {
      v75 = sub_1BA38();
      sub_1BA50(v75);
      sub_385B8();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      sub_1BA00();
    }

    v81 = v71;
    goto LABEL_23;
  }

  v45 = sub_1070E4();
  v47 = v46(v45);
  v48 = v42[1];
  v49 = v115;
  if (!v48)
  {
LABEL_20:
    sub_106204(v47, v125);
    sub_1069F0();
    sub_1062B4();
    v82();
    v83 = sub_16DBDC();
    v84 = sub_16E37C();
    if (sub_387B0(v84))
    {
      v85 = sub_1BA38();
      sub_1BA50(v85);
      sub_385B8();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      sub_1BA00();
    }

    v81 = v49;
LABEL_23:
    v39(v81, v41);
    memcpy(__dst, (v37 + 224), 0x41uLL);
    sub_1068C4();
    return sub_376FC(__dst);
  }

  v50 = *v42;
  if (*v42 == 2 || !sub_3B35C(v42[1]))
  {

    goto LABEL_20;
  }

  v111 = v37;
  sub_3B360();
  if ((v48 & 0xC000000000000001) != 0)
  {
    v51 = sub_16E48C();
  }

  else
  {
    v51 = *(v48 + 32);
  }

  v52 = v51;

  v53 = sub_103660(v52, &selRef_medicationID);
  if (!v54)
  {

    v37 = v111;
    goto LABEL_20;
  }

  v55 = v54;
  v119 = v53;
  sub_106204(v53, v125);
  v56 = v110;
  sub_C9C8();
  sub_1062B4();
  v57();
  v58 = sub_16DBDC();
  v59 = sub_16E36C();
  if (sub_387B0(v59))
  {
    v38 = sub_93228();
    *v38 = 67109120;
    *(v38 + 4) = v50 & 1;
    sub_385B8();
    _os_log_impl(v60, v61, v62, v63, v64, 8u);
    sub_1BA00();
  }

  v39(v110, v41);
  if (v50)
  {
    sub_103660(v52, &selRef_scheduleID);
    sub_107084();
    v65 = [v52 strength];
    v66 = v65;
    if (v65)
    {
      [v65 doubleValue];
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v98 = [v52 strengthUnit];
    if (v98)
    {
      v99 = v98;
      v100 = sub_16E1BC();
      v102 = v101;
    }

    else
    {

      v100 = 0;
      v102 = 0;
    }

    v123[0] = v66 == 0;
    v103 = v111;
    sub_106BDC(__dst);
    *(v103 + 224) = v56;
    *(v103 + 232) = v38;
    *(v103 + 240) = v119;
    *(v103 + 248) = v55;
    *(v103 + 256) = v68;
    *(v103 + 264) = v66 == 0;
    *(v103 + 272) = v100;
    *(v103 + 280) = v102;
    *(v103 + 288) = v109;
  }

  else
  {

    sub_1B9B4(v92, v123);
    v93 = v108;
    sub_8B60();
    sub_1062B4();
    v94();
    v95 = sub_16DBDC();
    v96 = sub_16E37C();
    if (sub_387B0(v96))
    {
      v97 = sub_1BA38();
      sub_1BA50(v97);
      _os_log_impl(&def_259DC, v95, v93, v107, v38, 2u);
      sub_1BA00();
    }

    v39(v93, v41);
    sub_106BDC(__dst);
    sub_105748(7);
  }

  return sub_376FC(__dst);
}

uint64_t sub_101A14(uint64_t a1)
{
  v3 = sub_2440(&qword_1C9CE0, &qword_176708);
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v7);
  v8 = sub_107150();
  sub_42F0();
  __chkstk_darwin(v9);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v10);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v11);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v12);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v13);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v14);
  v15 = sub_16DBBC();
  sub_8B48(v15, v111);
  sub_1069F0();
  v16();
  v17 = v1;
  v18 = v1;
  v102 = a1;
  v19 = v3;
  v101 = *(v5 + 16);
  v101(v18, a1, v3);
  v20 = sub_16DBDC();
  v21 = sub_16E36C();
  if (os_log_type_enabled(v20, v21))
  {
    v96 = sub_8BD8();
    v97 = sub_CA30();
    __dst[0] = v97;
    *v96 = 136315138;
    sub_38940(&qword_1C9CE8, &qword_1C9CE0, &qword_176708);
    sub_16E68C();
    sub_1070B4();
    v22 = *(v5 + 8);
    v22(v17, v19);
    v23 = sub_3AB7C(v96, v17, __dst);

    v24 = v96;
    *(v96 + 4) = v23;
    v25 = v5;
    sub_107170(&def_259DC, v20, v21, "Received response from PromptForValueFlowAsync for LogMedScheduleMixedStatusConfirmationStrategy: %s", v96);
    v21 = v97;
    sub_2D64(v97);
    v26 = v107;
    sub_8A2C(v97);
    sub_8A2C(v24);

    v27 = v22;
    v28 = sub_106B60();
    v97(v28);
  }

  else
  {

    v25 = v5;
    v27 = *(v5 + 8);
    v27(v17, v3);
    v29 = sub_106B60();
    v21(v29);
    v26 = v107;
  }

  v30 = v105;
  v101(v105, v102, v19);
  if ((*(v25 + 88))(v105, v19) != enum case for PromptResult.answered<A>(_:))
  {
    v34 = (v27)(v105, v19);
    sub_106204(v34, v110);
    v35 = v100;
    sub_1069F0();
    sub_106480();
    v36();
    v37 = sub_16DBDC();
    v38 = sub_16E37C();
    if (sub_387B0(v38))
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v31 = (*(v25 + 96))(v105, v19);
  v32 = v105[1];
  if (!v32)
  {
LABEL_29:
    sub_106204(v31, v110);
    v35 = v99;
    sub_1069F0();
    sub_106480();
    v63();
    v37 = sub_16DBDC();
    v64 = sub_16E37C();
    if (sub_387B0(v64))
    {
LABEL_30:
      v65 = sub_1BA38();
      sub_1BA50(v65);
      sub_385B8();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      sub_1BA00();
    }

LABEL_31:

    (v21)(v35, v8);
    memcpy(__dst, (v26 + 224), 0x41uLL);
    *(v26 + 224) = 8;
    *(v26 + 232) = 0u;
    v71 = v26 + 232;
    *(v71 + 16) = 0u;
    *(v71 + 32) = 0u;
    *(v71 + 48) = 0;
    *(v71 + 56) = -64;
    return sub_376FC(__dst);
  }

  v33 = *v105;
  if (*v105 == 2)
  {
    v31 = sub_1036BC(v33, v105[1]);
    goto LABEL_29;
  }

  if (!v105[3])
  {

    goto LABEL_29;
  }

  v106 = *v105;
  v103 = v30[2];
  v104 = v30[3];
  sub_106204(v33, v110);
  sub_1069F0();
  sub_106480();
  v39();
  v40 = sub_16DBDC();
  v41 = sub_16E36C();
  if (sub_387B0(v41))
  {
    v42 = sub_93228();
    *v42 = 67109120;
    v42[1] = v106 & 1;
    sub_385B8();
    _os_log_impl(v43, v44, v45, v46, v47, 8u);
    sub_1BA00();
  }

  (v21)(v98, v8);
  result = sub_3B35C(v32);
  if (!result)
  {
    v51 = _swiftEmptyArrayStorage;
LABEL_34:

    if (v106)
    {
      sub_106204(v72, v108);
      sub_13298();
      sub_106480();
      v73();
      v74 = sub_16DBDC();
      v75 = sub_16E36C();
      v76 = v107;
      if (sub_387B0(v75))
      {
        v77 = sub_1BA38();
        sub_1BA50(v77);
        sub_385B8();
        _os_log_impl(v78, v79, v80, v81, v82, 2u);
        sub_1BA00();
      }

      sub_1069FC();
      sub_107030();
      v83();

      v84 = getMedStatus(from:)();

      if (v84)
      {
        v85 = 4;
      }

      else
      {
        v85 = 3;
      }
    }

    else
    {
      sub_106204(v72, v108);
      sub_13298();
      sub_106480();
      v86();
      v87 = sub_16DBDC();
      v88 = sub_16E36C();
      v76 = v107;
      if (sub_387B0(v88))
      {
        v89 = sub_1BA38();
        sub_1BA50(v89);
        sub_385B8();
        _os_log_impl(v90, v91, v92, v93, v94, 2u);
        sub_1BA00();
      }

      sub_1069FC();
      sub_107030();
      v95();
      v85 = 5;
    }

    memcpy(__dst, (v76 + 224), 0x41uLL);
    *(v76 + 224) = v103;
    *(v76 + 232) = v104;
    *(v76 + 240) = v51;
    *(v76 + 248) = v85;
    *(v76 + 264) = 0;
    *(v76 + 288) = 64;
    return sub_376FC(__dst);
  }

  v49 = result;
  if (result >= 1)
  {
    v50 = 0;
    v51 = _swiftEmptyArrayStorage;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v52 = sub_16E48C();
      }

      else
      {
        v52 = *(v32 + 8 * v50 + 32);
      }

      v53 = v52;
      v54 = sub_103660(v52, &selRef_medicationID);
      if (v55)
      {
        v56 = v54;
        v57 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_3A724(0, *(v51 + 2) + 1, 1, v51);
          v51 = v61;
        }

        v59 = *(v51 + 2);
        v58 = *(v51 + 3);
        if (v59 >= v58 >> 1)
        {
          sub_3A724(v58 > 1, v59 + 1, 1, v51);
          v51 = v62;
        }

        *(v51 + 2) = v59 + 1;
        v60 = &v51[16 * v59];
        *(v60 + 4) = v56;
        *(v60 + 5) = v57;
      }

      else
      {
      }

      ++v50;
    }

    while (v49 != v50);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_102308(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16DBEC();
  sub_42F0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_887C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_16D21C();
  if (sub_16D20C())
  {
    sub_16D1EC();

    sub_16C31C();

    if (*(&v30 + 1))
    {
      sub_17464(&v29, v32);
      v12 = sub_16DBBC();
      sub_8B48(v12, v28);
      sub_8B60();
      v13();
      v14 = sub_16DBDC();
      v15 = sub_16E36C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = sub_1BA38();
        *v16 = 0;
        sub_105AAC(&def_259DC, v17, v18, "SpecificMedLoggingFlow: Registering corrections flow");
        sub_8A2C(v16);
      }

      v19 = sub_13298();
      v20(v19);
      sub_C9294(v2 + 360, v27);
      sub_2D20(v27, v27[3]);
      sub_BDE9C(a1, &v29);
      sub_2D64(v27);
      sub_2D20(v32, v32[3]);
      sub_106844();
      sub_16C30C();
      sub_2D64(&v29);
      return sub_2D64(v32);
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  sub_8748(&v29, &qword_1C6790, &qword_171C70);
  v22 = sub_16DBBC();
  sub_8B48(v22, v32);
  sub_8B60();
  v23();
  v24 = sub_16DBDC();
  v25 = sub_16E37C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_1BA38();
    *v26 = 0;
    _os_log_impl(&def_259DC, v24, v25, "SpecificMedLoggingFlow: No corrections client available. Continuing without registering corrections flow.", v26, 2u);
    sub_8A2C(v26);
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1025DC()
{

  sub_2D64((v0 + 24));
  sub_C938(v0 + 64);
  sub_37C80(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_2D64((v0 + 296));

  swift_unknownObjectRelease();
  sub_2D64((v0 + 360));
  sub_2D64((v0 + 400));
  return v0;
}

uint64_t sub_102660()
{
  sub_1025DC();

  return _swift_deallocClassInstance(v0, 440, 7);
}

uint64_t sub_1026B8(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1026DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40) >> 1;
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

double sub_102724(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10279C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 64) & 7 | (a2 << 6);
    *(result + 40) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t sub_10281C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_DB820();
}

uint64_t sub_1028B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SpecificMedLoggingFlow();

  return sub_16C37C();
}

uint64_t sub_1028F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(result + 16);
  for (i = result + 40; v7; --v7)
  {
    v9 = *(i - 8);

    v9(a2, a3, a4);

    i += 16;
  }

  return result;
}

void sub_102978()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_3A818(0, v1[2] + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t sub_1029C4(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return sub_16E2EC();
  }

  return result;
}

void sub_1029F0(uint64_t result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    sub_3A818(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_102A30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_16E72C();
  if (a3)
  {
    sub_16E74C(1u);
    sub_16E25C();
  }

  else
  {
    sub_16E74C(0);
  }

  v8 = sub_16E75C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_102E30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_15:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_16E6BC() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_102BB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2440(&qword_1C9D60, &unk_176878);
  result = sub_16E43C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_102FEC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_16E72C();
    if (v17)
    {
      sub_16E74C(1u);
      sub_16E25C();
    }

    else
    {
      sub_16E74C(0);
    }

    result = sub_16E75C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_102E30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_102BB8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_103050();
        goto LABEL_23;
      }

      sub_1031A4(v9 + 1);
    }

    v11 = *v4;
    sub_16E72C();
    if (a2)
    {
      sub_16E74C(1u);
      sub_16E25C();
    }

    else
    {
      sub_16E74C(0);
    }

    v12 = sub_16E75C();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = v12 & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            v19 = *v17 == result && v18 == a2;
            if (v19 || (sub_16E6BC() & 1) != 0)
            {
              goto LABEL_26;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_26;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_26:
    sub_2440(&qword_1C69C8, &qword_174150);
    sub_16E6DC();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

uint64_t sub_102FEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_176550;
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

void sub_103050()
{
  v1 = v0;
  sub_2440(&qword_1C9D60, &unk_176878);
  v2 = *v0;
  v3 = sub_16E42C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1031A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2440(&qword_1C9D60, &unk_176878);
  result = sub_16E43C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_16E72C();
        if (v16)
        {
          sub_16E74C(1u);

          sub_16E25C();
        }

        else
        {
          sub_16E74C(0);
        }

        result = sub_16E75C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_103424(void *a1)
{
  v2 = [a1 scheduleID];

  if (v2)
  {
    sub_16E1BC();
    sub_107084();
  }

  return sub_38B40();
}

void sub_10348C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setScheduleID:v4];
}

void sub_1034E4(uint64_t a1, void *a2)
{
  isa = sub_16E2BC().super.isa;

  [a2 setMedicationIDs:isa];
}

void sub_103550(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setStrengthUnit:v4];
}

void sub_1035A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();
  [a3 setDosageUnit:v4];
}

uint64_t sub_103600(void *a1, SEL *a2, uint64_t (*a3)(uint64_t))
{
  if (![a1 *a2])
  {
    return 0;
  }

  v5 = sub_107090();
  a3(v5);
  v6 = sub_16E2CC();

  return v6;
}

uint64_t sub_103660(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_16E1BC();
  }

  return sub_8B9C();
}

uint64_t sub_1036BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters(uint64_t a1)
{
  result = qword_1C9DE8;
  if (!qword_1C9DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103784()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1037B8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_10387C()
{

  sub_106F60();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_103930()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1039B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_107090();
  v4(v3);
  sub_8B38();
  v5 = sub_8B9C();
  v6(v5);
  return a2;
}

uint64_t sub_103A0C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103A90()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103B14()
{
  sub_106F78();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_103B6C()
{

  sub_106264();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_103BA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_103BF8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103C7C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_103D64()
{

  sub_106AFC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_103DC0(uint64_t (*a1)(_OWORD *))
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 80);
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  v10 = *(v1 + 64);
  v11 = v4;
  return a1(v7);
}

uint64_t sub_103E14()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

void *sub_103E98(uint64_t a1, __int128 *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a12;
  v33 = a14;
  sub_9910(&v31);
  sub_5DE54();
  (*(v18 + 32))();
  v29 = a13;
  v30 = a15;
  sub_9910(&v28);
  sub_5DE54();
  (*(v19 + 32))();
  a11[2] = a1;
  sub_C9294(a2, (a11 + 3));
  sub_8284(a3, (a11 + 8));
  memcpy(a11 + 28, a4, 0x41uLL);
  sub_17464(&v31, (a11 + 37));
  a11[42] = a6;
  a11[43] = a7;
  a11[44] = a8;
  sub_17464(&v28, (a11 + 50));
  if (*(a10 + 24))
  {
    sub_C938(a3);
    sub_2D64(a2);
    sub_17464(a10, &v25);
  }

  else
  {
    v26 = &type metadata for MedsCorrectionsFlowProvider;
    v27 = &off_1BB2F8;
    *&v25 = swift_allocObject();
    sub_17464(a2, v25 + 16);
    memcpy((v25 + 56), a3, 0xA0uLL);
    if (*(a10 + 24))
    {
      sub_8748(a10, &qword_1C67D8, &unk_176890);
    }
  }

  sub_17464(&v25, (a11 + 45));
  return a11;
}