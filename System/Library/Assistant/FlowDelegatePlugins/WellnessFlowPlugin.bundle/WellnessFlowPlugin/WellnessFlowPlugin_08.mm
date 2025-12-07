uint64_t sub_C5D10()
{
  sub_386A8();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_38440();
  *v6 = v5;
  *(v8 + 1552) = v7;

  v9 = *(v2 + 1304);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_C5E8C()
{
  sub_8430C();
  v1 = v0[194];
  v2 = v0[190];
  sub_1B9B4(v3, (v0 + 120));
  v4 = sub_38408();
  v2(v4);
  v5 = v1;
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[194];
    v9 = sub_8BD8();
    v58 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = [v8 dialog];
    v11 = sub_16E2CC();

    if (sub_3B35C(v11))
    {
      sub_3B360();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_16E48C();
      }

      else
      {
        v12 = *(v11 + 32);
      }

      v13 = v12;

      v14 = [v13 fullPrint];

      v15 = sub_16E1BC();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v56 = v0[192];
    v0[128] = v15;
    v0[129] = v17;
    sub_2440(&qword_1C69C8, &qword_174150);
    sub_16E3DC();

    v21 = sub_C98C0();
    v24 = sub_3AB7C(v21, v22, v23);

    *(v9 + 4) = v24;
    sub_38EA4(&def_259DC, v25, v26, "#LogPeriodFlow: Snippet dialog is %s");
    sub_2D64(v58);
    sub_8A2C(v58);
    sub_38604();

    v27 = sub_C98B4();
    v20 = v56(v27);
  }

  else
  {
    v18 = v0[192];

    v19 = sub_38B40();
    v20 = v18(v19);
  }

  v28 = v0[190];
  sub_1B9B4(v20, (v0 + 123));
  v29 = sub_38408();
  v28(v29);

  v30 = sub_16DBDC();
  v31 = sub_16E36C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[188];
    v33 = v0[162];
    v34 = sub_8BD8();
    v35 = swift_slowAlloc();
    *v34 = 136315138;
    sub_16D45C();
    sub_8B20(v33, 1, v32);
    if (v36)
    {
      sub_8748(v0[162], &qword_1C5800, &unk_16F510);
      v41 = 0;
      v43 = 0;
    }

    else
    {
      v39 = v0[188];
      v40 = v0[162];
      v41 = sub_16D5BC();
      v43 = v42;
      sub_5DE54();
      (*(v44 + 8))(v40, v39);
    }

    v57 = v0[150];
    v59 = v0[192];
    v45 = v0[143];
    v0[126] = v41;
    v0[127] = v43;
    sub_2440(&qword_1C69C8, &qword_174150);
    sub_16E3DC();

    v46 = sub_C98C0();
    v49 = sub_3AB7C(v46, v47, v48);

    *(v34 + 4) = v49;
    sub_38EA4(&def_259DC, v50, v51, "#LogPeriodFlow: Date is %s");
    sub_2D64(v35);
    sub_89F4();
    sub_38604();

    v59(v57, v45);
  }

  else
  {
    v37 = v0[192];

    v38 = sub_38B40();
    v37(v38);
  }

  v0[95] = type metadata accessor for WellnessSnippets(0);
  v0[96] = sub_C9498(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  sub_9910(v0 + 92);
  sub_C96F0();
  sub_38B40();
  sub_C91E4();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[195] = v52;
  *v52 = v53;
  v52[1] = sub_C6390;
  sub_841E0();

  return sub_672C0();
}

uint64_t sub_C6390()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 736));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_C6474()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1360);
  v12 = *(v0 + 1352);
  v13 = *(v0 + 1376);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1272);
  sub_C9294(v0 + 696, v0 + 776);
  v6 = swift_allocObject();
  sub_17464((v0 + 776), v6 + 16);
  sub_16C73C();
  v7 = sub_16C1DC();
  sub_8D14(v7);
  *(v0 + 1064) = sub_16C1CC();
  v14 = sub_16C32C();

  sub_2D64((v0 + 696));
  sub_C96D8();
  sub_C923C(v5, v8);
  sub_C9784();
  sub_C923C(v4, v9);

  sub_8748(v3, &qword_1C57F8, &unk_172510);
  (*(v2 + 8))(v13, v12);
  sub_C961C();

  sub_5D948();

  return v10(v14);
}

uint64_t sub_C66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v31 = v30[190];
  v32 = v30[149];
  sub_1B9B4(v33, (v30 + 117));
  v34 = sub_38408();
  v31(v34);
  v35 = sub_16DBDC();
  v36 = sub_16E37C();
  if (sub_1BA1C(v36))
  {
    v37 = sub_1BA38();
    sub_1BA50(v37);
    sub_8420C();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    sub_1BA00();
  }

  v43 = v30[192];
  sub_C9888();
  v60 = v30[161];
  v44 = v30[159];
  v45 = v30[149];
  v46 = v30[143];
  v47 = v30[135];

  v43(v45, v46);
  sub_8284(v47 + 80, (v30 + 62));
  sub_82E0();
  v61 = sub_16C32C();

  sub_8334((v30 + 62));
  sub_C96D8();
  sub_C923C(v44, v48);
  sub_C9784();
  sub_C923C(v60, v49);
  sub_8748(a24, &qword_1C57F8, &unk_172510);
  (*(v32 + 8))(a26, a25);
  sub_C961C();
  sub_C979C(v50);

  sub_8938();
  sub_A78CC();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v60, a24, a25, a26, v61, a28, a29, a30);
}

uint64_t sub_C693C(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 1584) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v32 = v31[198];
  sub_C9888();
  v33 = v31[142];
  v34 = v31[141];
  v53 = v31[140];
  v35 = v31[139];
  v36 = v31[138];
  v37 = v31[137];
  v38 = v31[136];
  v39 = v31[135];
  sub_16C43C();
  (*(v37 + 16))(v36, v35, v38);
  sub_16C75C();
  v40 = sub_C98C0();
  v41(v40);
  v42 = [v32 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20((v39 + 80), *(v39 + 104));
  sub_4B4EC();
  v31[132] = sub_16C2FC();
  sub_16C28C();
  v54 = sub_16C32C();

  (*(v34 + 8))(v33, v53);

  sub_8748(a24, &qword_1C57F8, &unk_172510);
  (*(v30 + 8))(a26, a25);
  sub_C961C();
  sub_C979C(v43);

  sub_8938();
  sub_A78CC();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v53, a24, a25, a26, v54, a28, a29, a30);
}

uint64_t sub_C6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  sub_C9908();
  v31 = v30[134];
  v32 = sub_16DBBC();
  sub_8B48(v32, (v30 + 105));
  v33 = sub_3BD68();
  v34(v33);
  v35 = v31;
  v36 = sub_16DBDC();
  v37 = sub_16E37C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v30[134];
    v39 = sub_8BD8();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v38;
    *v40 = v38;
    v41 = v38;
    sub_8420C();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    sub_8748(v40, &qword_1C57B8, &qword_1715A0);
    sub_38604();
    sub_1BA00();
  }

  v47 = v30[168];
  v48 = v30[135];

  v49 = sub_4B4EC();
  v50(v49);
  sub_8284(v48 + 80, (v30 + 22));
  sub_82E0();
  v63 = sub_16C32C();
  sub_8334((v30 + 22));
  sub_8748(v47, &qword_1C57F8, &unk_172510);
  v51 = sub_C9F8();
  v52(v51);
  sub_C961C();
  sub_C979C(v53);

  sub_8938();
  sub_A78CC();

  return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v63, a28, a29, a30);
}

uint64_t sub_C6FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v32 = v30[144];
  v33 = sub_16DBBC();
  sub_8B48(v33, (v30 + 108));
  v34 = (v32 + 16);
  v35 = sub_C97B8();
  v36(v35);
  swift_errorRetain();
  v37 = sub_16DBDC();
  v38 = sub_16E37C();

  if (os_log_type_enabled(v37, v38))
  {
    sub_8BD8();
    v34 = sub_8A44();
    *v33 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v39;
    *v34 = v39;
    sub_4B3D0();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    sub_8748(v34, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  else
  {
  }

  (*(v30[144] + 8))(v30[145], v30[143]);
  sub_C9908();
  v45 = sub_16DBBC();
  sub_8B48(v45, (v30 + 111));
  v46 = sub_3BD68();
  v47(v46);
  sub_16DBDC();
  v48 = sub_16E37C();
  if (sub_1BA1C(v48))
  {
    v49 = sub_1BA38();
    sub_1BA50(v49);
    sub_8420C();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    sub_1BA00();
  }

  sub_C97C8();
  v55 = sub_C98B4();
  v56(v55);
  sub_8284(v45 + 80, (v30 + 42));
  sub_82E0();
  v67 = sub_16C32C();

  sub_8334((v30 + 42));
  sub_8748(v34, &qword_1C57F8, &unk_172510);
  (*(v31 + 8))(a26, v33);
  sub_C961C();
  sub_C979C(v57);

  sub_8938();
  sub_A78CC();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v67, a28, a29, a30);
}

uint64_t sub_C72C0(uint64_t a1)
{
  v2[131] = v1;
  v2[130] = a1;
  sub_2440(&qword_1C57E0, &unk_171C60);
  v2[132] = swift_task_alloc();
  v3 = sub_16DBEC();
  v2[133] = v3;
  v2[134] = *(v3 - 8);
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();
  sub_16D63C();
  v2[139] = swift_task_alloc();
  v4 = sub_16C0BC();
  v2[140] = v4;
  v2[141] = *(v4 - 8);
  v2[142] = swift_task_alloc();
  v5 = sub_16BD9C();
  v2[143] = v5;
  v2[144] = *(v5 - 8);
  v2[145] = swift_task_alloc();
  sub_2440(&qword_1C5690, &dword_16F320);
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v6 = sub_16BF5C();
  v2[148] = v6;
  v2[149] = *(v6 - 8);
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();

  return _swift_task_switch(sub_C7588);
}

uint64_t sub_C7588()
{
  v1 = v0[131];
  sub_2D20((v1 + 40), *(v1 + 64));
  v2 = sub_C9F8();
  v3(v2);
  sub_2D20(v0 + 112, v0[115]);
  sub_C9F8();
  v4 = sub_16C41C();
  sub_2D64(v0 + 112);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = v0[147];
  v6 = v0[143];
  sub_2D20(v0[131], *(v0[131] + 24));
  v7 = sub_3E1B8();
  v8(v7);
  sub_8B20(v5, 1, v6);
  if (v9)
  {
    sub_8748(v0[147], &qword_1C5690, &dword_16F320);
LABEL_7:
    v19 = v0[134];
    v20 = sub_16DBBC();
    v0[154] = v20;
    sub_8B48(v20, (v0 + 117));
    v0[155] = *(v19 + 16);
    v0[156] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21 = sub_38B40();
    v22(v21);
    v23 = sub_16DBDC();
    v24 = sub_16E36C();
    if (sub_1BA1C(v24))
    {
      v25 = sub_1BA38();
      sub_1BA50(v25);
      sub_8420C();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      sub_1BA00();
    }

    v31 = v0[143];
    v32 = v0[134];
    v33 = v0[131];

    v0[157] = *(v32 + 8);
    v34 = sub_4B4EC();
    v35(v34);
    sub_2D20(v33, v33[3]);
    v36 = sub_4B4EC();
    v37(v36);
    v38 = sub_C98CC();
    if (sub_369C(v38, v39, v31) == 1)
    {
      sub_8748(v0[146], &qword_1C5690, &dword_16F320);
      v40 = 1;
    }

    else
    {
      sub_16BD7C();
      v41 = sub_38B40();
      v42(v41);
      v40 = 0;
    }

    sub_214C(v0[132], v40, 1, v0[148]);
    v43 = sub_38B40();
    sub_2D20(v43, v44);
    v45 = sub_8427C();
    v46(v45);
    sub_16D85C();
    v47 = swift_task_alloc();
    v0[158] = v47;
    *v47 = v0;
    v47[1] = sub_C7B60;
    sub_C98D8(v0[132]);

    return sub_C25B0();
  }

  v10 = v0[152];
  v11 = v0[149];
  v57 = v0[148];
  v58 = v0[153];
  v12 = v0[147];
  v60 = v0[150];
  v61 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v59 = v0[140];
  sub_16BD7C();
  v17 = *(v13 + 8);
  v17(v12, v14);
  (*(v11 + 32))(v58, v10, v57);
  sub_16C08C();
  sub_16C02C();
  (*(v16 + 8))(v15, v59);
  sub_7B6B8(v60);
  sub_16BD5C();
  v18 = sub_16DADC();
  v17(v61, v14);
  if (v18)
  {
    (*(v0[149] + 8))(v0[153], v0[148]);
    goto LABEL_7;
  }

  v49 = v0[131];
  sub_16D70C();
  sub_C9294(v49, (v0 + 2));
  sub_C9294(v1 + 40, (v0 + 7));
  sub_8284(v49 + 80, (v0 + 12));
  v50 = sub_16C58C();
  sub_8D14(v50);
  v51 = sub_16C57C();
  v0[35] = v50;
  v0[36] = &protocol witness table for ResponseFactory;
  v0[32] = v51;
  type metadata accessor for WellnessLoggingCATsSimple(0);
  sub_16D62C();
  v52 = sub_16D5FC();
  type metadata accessor for WellnessCATs(0);
  sub_16D62C();
  v53 = sub_16D58C();
  v0[37] = v52;
  v0[38] = v53;
  sub_17858();
  sub_16C4EC();
  v54 = sub_C9F8();
  v55(v54);
  sub_83B2C((v0 + 2));
  sub_C96A4();

  sub_C9BC();

  return v56();
}

uint64_t sub_C7B60()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v5 = *(v4 + 1056);
  v6 = *v1;
  sub_C990();
  *v7 = v6;
  *(v9 + 1272) = v8;
  *(v9 + 1280) = v0;

  sub_8748(v5, &qword_1C57E0, &unk_171C60);
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_C7C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  if (v16[159])
  {
    v18 = swift_task_alloc();
    v16[161] = v18;
    *v18 = v16;
    v18[1] = sub_C7E9C;
    sub_4B510();

    return sub_C467C();
  }

  else
  {
    v21 = v16[155];
    sub_1B9B4(v17, (v16 + 126));
    v22 = sub_38408();
    v21(v22);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_1BA1C(v24))
    {
      v25 = sub_1BA38();
      sub_1BA50(v25);
      sub_8420C();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      sub_1BA00();
    }

    v31 = v16[157];
    v32 = v16[131];

    v33 = sub_C9F8();
    v31(v33);
    sub_16D6FC();
    sub_8284(v32 + 80, (v16 + 92));
    sub_82E0();
    sub_16C4EC();
    sub_8334((v16 + 92));
    sub_C96A4();
    sub_C985C();

    sub_C9BC();
    sub_4B510();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_C7E9C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1296) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_C7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  v17 = *(v16 + 1272);
  sub_16D72C();
  sub_16C4FC();

  sub_C96A4();
  sub_C985C();

  sub_C9BC();
  sub_4B510();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_C8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  *(v16 + 1032) = *(v16 + 1280);
  swift_errorRetain();
  sub_2440(&qword_1C9680, &unk_175DE0);
  v17 = swift_dynamicCast();
  v18 = *(v16 + 1240);
  if (v17)
  {

    sub_1B9B4(v19, v16 + 984);
    sub_8B60();
    v18();
    v20 = sub_16DBDC();
    v21 = sub_16E36C();
    if (sub_1BA1C(v21))
    {
      v22 = sub_1BA38();
      sub_1BA50(v22);
      sub_8420C();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_1BA00();
    }

    v28 = *(v16 + 1256);
    v29 = *(v16 + 1088);
    v30 = *(v16 + 1064);
    v31 = *(v16 + 1048);

    v28(v29, v30);
    sub_C9294(v31 + 40, v16 + 320);
    sub_8284(v31 + 80, v16 + 360);
    v32 = sub_16C58C();
    sub_8D14(v32);
    v33 = sub_16C57C();
    *(v16 + 544) = v32;
    *(v16 + 552) = &protocol witness table for ResponseFactory;
    *(v16 + 520) = v33;
    type metadata accessor for WellnessCATsSimple(0);
    sub_16D62C();
    v34 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v35 = sub_16D58C();
    *(v16 + 312) = 42;
    *(v16 + 560) = v34;
    *(v16 + 568) = v35;
    sub_84F0();
    sub_16C4EC();
    sub_8544(v16 + 312);
  }

  else
  {
    v36 = *(v16 + 1080);

    sub_1B9B4(v37, v16 + 960);
    sub_8B60();
    v18();
    swift_errorRetain();
    v38 = sub_16DBDC();
    v39 = sub_16E37C();

    if (os_log_type_enabled(v38, v39))
    {
      sub_8BD8();
      v40 = sub_8A44();
      *v36 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&def_259DC, v38, v39, "Tring to save spotting record threw %@", v36, 0xCu);
      sub_8748(v40, &qword_1C57B8, &qword_1715A0);
      sub_89F4();
      sub_38604();
    }

    v42 = *(v16 + 1256);
    v43 = *(v16 + 1048);

    v44 = sub_C9E0();
    v42(v44);
    sub_16D6FC();
    sub_8284(v43 + 80, v16 + 576);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v16 + 576);
  }

  sub_C96A4();
  sub_C985C();

  sub_C9BC();
  sub_4B510();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t LogPeriodFlow.execute()()
{
  sub_8A88();
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_16D63C();
  sub_4348(v3);
  v1[52] = sub_8BC0();
  v4 = sub_16DBEC();
  v1[53] = v4;
  sub_888C(v4);
  v1[54] = v5;
  v1[55] = sub_8C38();
  v1[56] = swift_task_alloc();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v1[57] = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_C8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[51];
  v24 = sub_C9F8();
  sub_2D20(v24, v25);
  v26 = sub_C9E0();
  v28 = v27(v26);
  if (sub_C1F00(v28, &off_1B8620))
  {
    v29 = v22[57];
    sub_2D20(v22[51], *(v23 + 24));
    v30 = sub_3E1B8();
    v31(v30);
    v32 = sub_C2070();
    sub_8748(v29, &qword_1C5690, &dword_16F320);
    if (v32)
    {
      sub_2D20(v22[51], *(v23 + 24));
      v33 = sub_8427C();
      if (v34(v33) == 191)
      {
        swift_task_alloc();
        sub_179E8();
        v22[58] = v35;
        *v35 = v36;
        v35[1] = sub_C89F0;
        sub_A77E4();

        return sub_C72C0(v37);
      }

      else
      {
        swift_task_alloc();
        sub_179E8();
        v22[59] = v64;
        *v64 = v65;
        v64[1] = sub_C8B50;
        sub_A77E4();

        return sub_C3B5C(v66);
      }
    }

    v90 = v22 + 23;
    v55 = sub_16DBBC();
    sub_8B48(v55, (v22 + 47));
    v56 = sub_C97B8();
    v57(v56);
    v43 = sub_16DBDC();
    v58 = sub_16E37C();
    if (!sub_4B3A8(v58))
    {
      sub_C981C();
      v89 = v68;
      v88 = 296;
      v87 = 288;
      v86 = 264;
      v85 = 256;
      v53 = 31;
      v62 = 224;
      goto LABEL_17;
    }

    a10 = v22 + 56;
    v59 = sub_1BA38();
    sub_1BA50(v59);
    sub_C9914(&def_259DC, v60, v61, "Only one day is loggable");
    sub_C981C();
    v49 = 296;
    v50 = 288;
    v51 = 264;
    v52 = 256;
    v53 = 31;
    v54 = 224;
  }

  else
  {
    v90 = v22 + 2;
    v40 = sub_16DBBC();
    sub_8B48(v40, (v22 + 44));
    v41 = sub_C97B8();
    v42(v41);
    v43 = sub_16DBDC();
    v44 = sub_16E37C();
    if (!sub_4B3A8(v44))
    {
      sub_C983C();
      v89 = v63;
      v88 = 128;
      v87 = 120;
      v86 = 96;
      v85 = 88;
      v53 = 10;
      v62 = 56;
      goto LABEL_17;
    }

    a10 = v22 + 55;
    v45 = sub_1BA38();
    sub_1BA50(v45);
    sub_C9914(&def_259DC, v46, v47, "Trying to save future record, which is not allowed");
    sub_C983C();
    v49 = 128;
    v50 = 120;
    v51 = 96;
    v52 = 88;
    v53 = 10;
    v54 = 56;
  }

  v85 = v52;
  v86 = v51;
  v87 = v50;
  v88 = v49;
  v89 = v48;
  sub_1BA00();
  v62 = v54;
LABEL_17:

  v69 = sub_4B4EC();
  v70(v69);
  sub_16D74C();
  sub_C1F30(v90);
  v71 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_8D2C(v71);
  sub_8CB4();
  v72 = sub_16D58C();
  v22[v53] = v43;
  *(v22 + v85) = &off_1BA5B0;
  *(v22 + v62) = v72;
  v73 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_8D2C(v73);
  sub_8CB4();
  v74 = sub_16D58C();
  *(v22 + v87) = v43;
  *(v22 + v88) = &off_1BC5D0;
  *(v22 + v86) = v74;
  v75 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_8D2C(v75);
  sub_8CB4();
  v76 = sub_16D58C();
  *(v22 + a16) = v43;
  *(v22 + a17) = &off_1BA360;
  *(v22 + v89) = v76;
  *(v22 + a18) = 0;
  sub_17358();
  sub_16C4EC();
  sub_173AC(v90);

  sub_C9BC();
  sub_A77E4();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, v85, v86, v87, v88, v89, a16, a17, a18, v90, a20, a21, a22);
}

uint64_t sub_C89F0()
{
  sub_386A8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_C8B50()
{
  sub_386A8();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_C8CB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_C8CD0);
}

uint64_t sub_C8CD0()
{
  sub_8A88();
  sub_C9294(*(v0 + 24), *(v0 + 16));
  sub_C9BC();

  return v1();
}

uint64_t sub_C8D2C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = a2[3];
  v17 = a2[4];
  sub_2D20(a2, v16);
  v18 = (*(v17 + 24))(v16, v17);
  if (v18 == 270)
  {
    v19 = sub_16D5CC();
    v20 = 1;
  }

  else
  {
    sub_140650(v18);
    sub_16E23C();

    v19 = sub_16D5CC();
    v20 = 0;
  }

  sub_214C(v15, v20, 1, v19);
  v21 = type metadata accessor for WellnessLoggingMenstruationParameters(0);
  sub_C93C0();
  sub_16D4EC();
  v22 = sub_16D47C();
  v23 = *(v21 + 24);

  *(a1 + v23) = v22;
  v24 = [a4 flow];
  v25 = a1 + *(v21 + 32);
  *v25 = v24;
  *(v25 + 8) = 0;
  sub_A7028();
  v26 = sub_16BE9C();
  if (sub_369C(v9, 1, v26) == 1)
  {
    sub_8748(v9, &qword_1C57F8, &unk_172510);
    v27 = sub_16D5CC();
    sub_214C(v13, 1, 1, v27);
  }

  else
  {
    sub_61120(v13);
    (*(*(v26 - 8) + 8))(v9, v26);
  }

  return sub_C93C0();
}

uint64_t sub_C900C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return LogPeriodFlow.execute()();
}

uint64_t sub_C90A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_C90E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C9180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C91E4()
{
  sub_A78A8();
  v1(0);
  sub_8B38();
  v2 = sub_8B9C();
  v3(v2);
  return v0;
}

uint64_t sub_C923C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_C9294(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_5DE54();
  (*v3)(a2);
  return a2;
}

uint64_t sub_C92F4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C932C()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

uint64_t sub_C93C0()
{
  sub_A78A8();
  sub_2440(v1, v2);
  sub_8B38();
  v3 = sub_8B9C();
  v4(v3);
  return v0;
}

unint64_t sub_C9418()
{
  result = qword_1C9698;
  if (!qword_1C9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9698);
  }

  return result;
}

uint64_t sub_C9498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SpottingErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xC957CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C95B8()
{
  result = qword_1C96C8;
  if (!qword_1C96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C96C8);
  }

  return result;
}

uint64_t sub_C9708()
{

  return type metadata accessor for LogPeriodIntentResponse(0);
}

uint64_t sub_C975C()
{
}

uint64_t sub_C979C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = v1;
  *(v3 - 96) = a1;
  *(v3 - 88) = *(v2 + 1104);
}

void sub_C97C8()
{
  *(v2 - 88) = *(v1 + 1376);
}

uint64_t sub_C985C()
{
}

void sub_C9888()
{
  v2 = v0[172];
  *(v1 - 96) = v0[169];
  *(v1 - 88) = v2;
  *(v1 - 104) = v0[168];
}

uint64_t sub_C98E4(uint64_t a1)
{

  return sub_16E6BC();
}

void sub_C9914(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_C9934(char a1)
{
  result = 0x6B65655773696874;
  switch(a1)
  {
    case 1:
      v3 = 1936287860;
      goto LABEL_4;
    case 2:
      result = 0x7261655973696874;
      break;
    case 3:
      result = 0x6B6565577473616CLL;
      break;
    case 4:
      v3 = 1953718636;
LABEL_4:
      result = v3 | 0x746E6F4D00000000;
      break;
    case 5:
      result = 0x726165597473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_C99EC()
{
  sub_8A88();
  v2 = *v0;
  v1[11] = v3;
  v1[12] = v2;
  v4 = sub_16C89C();
  v1[13] = v4;
  sub_888C(v4);
  v1[14] = v5;
  v1[15] = sub_8BC0();
  v6 = sub_16C80C();
  v1[16] = v6;
  sub_888C(v6);
  v1[17] = v7;
  v1[18] = sub_8BC0();
  v8 = sub_16C83C();
  v1[19] = v8;
  sub_888C(v8);
  v1[20] = v9;
  v1[21] = sub_8BC0();
  v10 = sub_16C7DC();
  v1[22] = v10;
  sub_888C(v10);
  v1[23] = v11;
  v1[24] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[25] = v12;
  sub_888C(v12);
  v1[26] = v13;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v14);
}

uint64_t sub_C9C08(uint64_t a1)
{
  v80 = v1;
  v2 = v1[29];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[22];
  v8 = v1[11];
  v9 = sub_16DBBC();
  sub_8B48(v9, (v1 + 2));
  v78 = v9;
  v77 = *(v4 + 16);
  v77(v2, v9, v3);
  (*(v5 + 16))(v6, v8, v7);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[25];
  v14 = v1[26];
  v16 = v1[23];
  v15 = v1[24];
  v17 = v1[22];
  if (v12)
  {
    v74 = v1[29];
    v18 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79 = v71;
    *v18 = 136315394;
    v19 = sub_16E7AC();
    v72 = v13;
    v21 = sub_3AB7C(v19, v20, &v79);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v16 + 8))(v15, v17);
    v22 = sub_C9F8();
    v25 = sub_3AB7C(v22, v23, v24);

    *(v18 + 14) = v25;
    _os_log_impl(&def_259DC, v10, v11, "%s received input: %s", v18, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v71);
    sub_8A2C(v18);

    v26 = *(v14 + 8);
    v26(v74, v72);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    v26 = *(v14 + 8);
    v27 = sub_C9F8();
    v26(v27, v28);
  }

  sub_16C7CC();
  v29 = sub_C9F8();
  if (v30(v29) != enum case for Parse.uso(_:))
  {
    goto LABEL_16;
  }

  v75 = v26;
  v31 = v1[15];
  v32 = v1[14];
  v73 = v1[13];
  (*(v1[17] + 96))(v1[18], v1[16]);
  v33 = sub_6B5B8();
  v34(v33);
  sub_16C82C();
  v35 = sub_10E3DC();
  (*(v32 + 8))(v31, v73);
  if (!v35)
  {
    v26 = v75;
LABEL_16:
    v50 = sub_CBF70();
    v51(v50);
    sub_8B48(v78, (v1 + 5));
    v52 = sub_6B5B8();
    (v77)(v52);
    v53 = sub_16DBDC();
    v54 = sub_16E37C();
    if (os_log_type_enabled(v53, v54))
    {
      v76 = v26;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v79 = v56;
      *v55 = 136315138;
      v57 = sub_16E7AC();
      v59 = sub_3AB7C(v57, v58, &v79);

      *(v55 + 4) = v59;
      _os_log_impl(&def_259DC, v53, v54, "%s received unsupported input", v55, 0xCu);
      sub_2D64(v56);
      sub_8A2C(v56);
      sub_8A2C(v55);

      v60 = sub_C9F8();
      v76(v60);
    }

    else
    {

      v61 = sub_C9F8();
      (v26)(v61);
    }

LABEL_19:
    v38 = 0;
    v62 = 0;
    v63 = 1;
    goto LABEL_20;
  }

  v36 = sub_B337C(v35);
  if (sub_3B35C(v36) < 2)
  {
    goto LABEL_11;
  }

  sub_3B360();
  if ((v36 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
  }

  v37 = sub_16CDFC();

  if (!v37 || (v38 = sub_16CA9C(), v40 = v39, , (v40 & 1) != 0))
  {
LABEL_11:

LABEL_12:
    sub_8B48(v78, (v1 + 8));
    v41 = sub_6B5B8();
    (v77)(v41);
    v42 = sub_16DBDC();
    v43 = sub_16E37C();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v1[28];
    v46 = v1[25];
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&def_259DC, v42, v43, "Failed to populate LogBloodPressureIntent: missing systolic/diastolic values", v47, 2u);
      sub_8A2C(v47);
    }

    v75(v45, v46);
    v48 = sub_C9C8();
    v49(v48);
    goto LABEL_19;
  }

  sub_3B360();
  if ((v36 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
  }

  v66 = sub_16CDFC();

  if (!v66)
  {
    goto LABEL_12;
  }

  v62 = sub_16CA9C();
  v68 = v67;

  if (v68)
  {
    goto LABEL_12;
  }

  v69 = sub_CBF70();
  v70(v69);

  v63 = 0;
LABEL_20:

  v64 = v1[1];

  return v64(v38, v62, v63);
}

uint64_t sub_CA2D0(uint64_t a1)
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
  v16 = sub_16DBBC();
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
    _os_log_impl(&def_259DC, v17, v18, "%s handling input: %s", v19, 0x16u);
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

uint64_t sub_CA5D4()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  sub_2440(&qword_1C5990, &unk_16F760);
  v1[9] = sub_8BC0();
  v3 = sub_16C46C();
  v1[10] = v3;
  sub_888C(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[14] = v5;
  sub_888C(v5);
  v1[15] = v6;
  v1[16] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_CA70C()
{
  sub_386A8();
  sub_2D20((*(v0 + 64) + 104), *(*(v0 + 64) + 128));

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_CA7D8;

  return sub_1091CC();
}

uint64_t sub_CA7D8()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_CA92C(uint64_t a1)
{
  v2 = v1[18];
  v4 = v1[12];
  v3 = v1[13];
  v5 = v1[10];
  v6 = v1[11];
  v8 = v1[8];
  v7 = v1[9];
  sub_16C44C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C79C();
  sub_16C77C();
  sub_CB5AC(v7);
  v9 = sub_16C55C();
  sub_214C(v7, 0, 1, v9);
  sub_16C78C();
  v10 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v8 + 184, (v1 + 2));
  v11 = v1[5];
  v12 = v1[6];
  sub_2D20(v1 + 2, v11);
  v13 = swift_task_alloc();
  v1[19] = v13;
  *v13 = v1;
  v13[1] = sub_CAAE4;
  v14 = v1[18];
  v15 = v1[16];
  v16 = v1[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v16, v14, v15, v11, v12);
}

uint64_t sub_CAAE4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_CABE0()
{
  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_CAC9C()
{
  sub_386A8();

  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_CAD4C()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_CAECC(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 64), *(v1[12] + 88));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_CB11C;

  return sub_7AA38();
}

uint64_t sub_CB11C()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_CB270(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 184, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_CB3F4;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_CB3F4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_CB4F0()
{
  v1 = sub_C9F8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_CB5AC@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v70 = sub_16DBEC();
  sub_42F0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_887C();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v68 = &v58 - v8;
  sub_16C55C();
  sub_42F0();
  v59 = v10;
  v60 = v9;
  __chkstk_darwin(v9);
  sub_4304();
  v13 = v12 - v11;
  sub_16C96C();
  sub_42F0();
  v66 = v15;
  v67 = v14;
  __chkstk_darwin(v14);
  sub_4304();
  v63 = v17 - v16;
  sub_16C92C();
  sub_42F0();
  v64 = v19;
  v65 = v18;
  __chkstk_darwin(v18);
  sub_887C();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = sub_2440(&qword_1C5980, &qword_16F748);
  __chkstk_darwin(v26 - 8);
  v28 = &v58 - v27;
  v29 = sub_16C87C();
  sub_42F0();
  v62 = v30;
  __chkstk_darwin(v31);
  sub_887C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v61 = &v58 - v36;
  sub_16CF7C();
  v37 = sub_16CF5C();
  sub_16C9DC();
  if (sub_369C(v28, 1, v29) == 1)
  {
    sub_C878(v28, &qword_1C5980, &qword_16F748);
    v38 = sub_16DBCC();
    sub_8B48(v38, v73);
    (*(v2 + 16))(v6, v38, v70);
    v39 = sub_16DBDC();
    v40 = sub_16E37C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&def_259DC, v39, v40, "Failed to create protobuf UsoGraph from UsoTask", v41, 2u);
      sub_8A2C(v41);
    }

    (*(v2 + 8))(v6, v70);
    sub_16C54C();
  }

  else
  {
    v44 = v61;
    v43 = v62;
    (*(v62 + 32))(v61, v28, v29);
    sub_16C91C();
    (*(v43 + 16))(v34, v44, v29);
    sub_16C90C();
    v45 = v63;
    sub_16C95C();
    (*(v64 + 16))(v22, v25, v65);
    sub_16C94C();
    sub_16C54C();
    sub_2440(&qword_1C5988, &unk_16F750);
    v46 = v66;
    v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_16F530;
    (*(v46 + 16))(v48 + v47, v45, v67);
    sub_16C53C();
    v49 = sub_16DBCC();
    sub_8B48(v49, v73);
    (*(v2 + 16))(v68, v49, v70);

    v50 = sub_16DBDC();
    v51 = sub_16E36C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v58 = v13;
      v53 = v52;
      v54 = swift_slowAlloc();
      v71 = v37;
      v72 = v54;
      *v53 = 136315138;
      sub_16CE4C();

      v55 = sub_16E1EC();
      v57 = sub_3AB7C(v55, v56, &v72);

      *(v53 + 4) = v57;
      _os_log_impl(&def_259DC, v50, v51, "Built nlContextUpdate with SystemPrompted for task: %s", v53, 0xCu);
      sub_2D64(v54);
      sub_8A2C(v54);
      v13 = v58;
      sub_8A2C(v53);
    }

    (*(v2 + 8))(v68, v70);
    (*(v66 + 8))(v63, v67);
    (*(v64 + 8))(v25, v65);
    (*(v62 + 8))(v61, v29);
    return (*(v59 + 32))(v69, v13, v60);
  }
}

uint64_t sub_CBC80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_CBD18;

  return sub_C99EC();
}

uint64_t sub_CBD18(uint64_t a1, uint64_t a2, char a3)
{
  sub_C9D4();
  v9 = v8;
  sub_8A60();
  *v10 = v9;
  v11 = *v4;
  sub_C990();
  *v12 = v11;

  if (!v3)
  {
    v13 = *(v9 + 16);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3 & 1;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_CBE30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_CA5D4();
}

uint64_t sub_CBEC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_CAD4C();
}

uint64_t sub_CBF8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
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

uint64_t sub_CBFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_CC064()
{
  sub_92840();
  sub_8427C();

  return sub_16C33C();
}

uint64_t sub_CC0B4()
{
  sub_8A88();
  v1[109] = v0;
  v1[108] = v2;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  v1[110] = v3;
  sub_4348(v3);
  v1[111] = sub_8BC0();
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v4);
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v5 = sub_16D63C();
  sub_4348(v5);
  v1[114] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[115] = v6;
  sub_888C(v6);
  v1[116] = v7;
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v8 = sub_16BD9C();
  v1[119] = v8;
  sub_888C(v8);
  v1[120] = v9;
  v1[121] = sub_8BC0();
  v10 = sub_16BF5C();
  v1[122] = v10;
  sub_888C(v10);
  v1[123] = v11;
  v1[124] = sub_8C38();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v12 = sub_17960();

  return _swift_task_switch(v12);
}

uint64_t sub_CC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 872);
  v16 = sub_CD350();
  *(v14 + 1040) = v16;
  *(v14 + 1128) = *(v15 + 248);
  sub_16D78C();
  sub_2D20((v15 + 40), *(v15 + 64));
  v17 = sub_C9E0();
  v18(v17);
  sub_2D20((v14 + 728), *(v14 + 752));
  sub_C9E0();
  LOBYTE(v15) = sub_16C41C();
  sub_2D64((v14 + 728));
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = [v16 start];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  sub_16BF3C();

  v21 = [v16 end];
  v22 = *(v14 + 1032);
  if (!v21)
  {
    (*(*(v14 + 984) + 8))(*(v14 + 1032), *(v14 + 976));
    goto LABEL_7;
  }

  v23 = v21;
  v24 = *(v14 + 1016);
  v25 = *(v14 + 984);
  v26 = *(v14 + 976);
  v27 = *(v14 + 968);
  v28 = *(v14 + 960);
  v68 = *(v14 + 1008);
  v69 = *(v14 + 952);
  sub_16BF3C();

  v29 = *(v25 + 16);
  v29(v24, v22, v26);
  v30 = sub_389C0();
  (v29)(v30);
  sub_16BD5C();
  v31 = sub_16DA4C();
  (*(v28 + 8))(v27, v69);
  if (v31)
  {
    v32 = *(*(v14 + 984) + 8);
    (v32)(*(v14 + 1024), *(v14 + 976));
    v33 = sub_38B40();
    v32(v33);
LABEL_7:
    v34 = *(v14 + 928);
    v35 = sub_16DBBC();
    *(v14 + 1048) = v35;
    sub_8B48(v35, v14 + 808);
    *(v14 + 1056) = *(v34 + 16);
    *(v14 + 1064) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36 = sub_389C0();
    v37(v36);
    v38 = v16;
    v39 = sub_16DBDC();
    v40 = sub_16E36C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_8BD8();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      sub_88FC(&def_259DC, v44, v45, "Trying to fetch sleep data with intent: %@");
      sub_8748(v42, &qword_1C57B8, &qword_1715A0);
      sub_8A2C(v42);
      sub_8A2C(v41);
    }

    v46 = *(v14 + 944);
    v47 = *(v14 + 928);
    v48 = *(v14 + 920);
    v49 = *(v14 + 872);

    v50 = *(v47 + 8);
    *(v14 + 1072) = v50;
    *(v14 + 1080) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v46, v48);
    v51 = *(v49 + 240);
    *(v14 + 16) = v14;
    *(v14 + 56) = v14 + 856;
    *(v14 + 24) = sub_CC7A8;
    v52 = swift_continuation_init();
    *(v14 + 720) = sub_2440(&qword_1C97D8, &qword_176118);
    *(v14 + 696) = v52;
    *(v14 + 664) = _NSConcreteStackBlock;
    *(v14 + 672) = 1107296256;
    *(v14 + 680) = sub_53C4;
    *(v14 + 688) = &unk_1BB688;
    [v51 handleGetSleepAnalysis:v38 completion:v14 + 664];
    sub_841E0();

    return _swift_continuation_await(v53);
  }

  v55 = *(v14 + 984);
  sub_BC848((v14 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v14 + 504);
  v56 = *(v55 + 8);
  v57 = sub_C9E0();
  v56(v57);
  v58 = sub_389C0();
  v56(v58);
  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, v68, v69, a12, a13, a14);
}

uint64_t sub_CC7A8()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_CC878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 1056);
  v16 = *(v14 + 1048);
  v17 = *(v14 + 936);
  v18 = *(v14 + 920);
  v19 = *(v14 + 856);
  *(v14 + 1088) = v19;
  sub_1B9B4(v20, v14 + 832);
  v15(v17, v16, v18);
  v21 = v19;
  v22 = sub_16DBDC();
  LOBYTE(v17) = sub_16E36C();

  if (os_log_type_enabled(v22, v17))
  {
    v23 = sub_8BD8();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v21;
    *v24 = v21;
    v25 = v21;
    sub_88FC(&def_259DC, v26, v27, "Received response: %@");
    sub_8748(v24, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v24);
    sub_8A2C(v23);
  }

  v28 = (*(v14 + 1072))(*(v14 + 936), *(v14 + 920));
  v29 = (*(&stru_20.maxprot + (swift_isaMask & *v21)))(v28);
  if (v29 == 4)
  {
    *(v14 + 792) = &type metadata for WellnessFeatureFlagsKey;
    *(v14 + 800) = sub_3736C();
    *(v14 + 768) = 4;
    v61 = sub_16C86C();
    sub_2D64((v14 + 768));
    if (v61)
    {
      v62 = swift_task_alloc();
      *(v14 + 1096) = v62;
      *v62 = v14;
      v62[1] = sub_CCFA8;
      sub_C98D8(*(v14 + 1040));
      sub_841E0();

      return sub_CD8C0();
    }

    else
    {
      v67 = swift_task_alloc();
      *(v14 + 1112) = v67;
      *v67 = v14;
      v67[1] = sub_CD17C;
      sub_C98D8(*(v14 + 1040));
      sub_841E0();

      return sub_D1E60();
    }
  }

  else
  {
    if (v29 == 102)
    {
      v37 = *(v14 + 1040);
      v38 = *(v14 + 952);
      sub_16D6FC();
      sub_8AB4();
      sub_214C(v39, v40, v41, v38);
      v42 = [v37 start];
      if (v42)
      {
        v43 = v42;
        v44 = *(v14 + 1040);
        sub_16BF3C();

        v45 = [v44 end];
        if (v45)
        {
          v46 = v45;
          v47 = *(v14 + 1016);
          v48 = *(v14 + 1008);
          v49 = *(v14 + 1000);
          v50 = *(v14 + 992);
          v51 = *(v14 + 984);
          v52 = *(v14 + 976);
          a10 = *(v14 + 904);
          v87 = *(v14 + 952);
          a9 = *(v14 + 896);
          sub_16BF3C();

          v53 = *(v51 + 16);
          v53(v47, v49, v52);
          v53(v48, v50, v52);
          sub_16BD5C();
          v54 = *(v51 + 8);
          v55 = sub_A76B4();
          v54(v55);
          (v54)(v49, v52);
          v56 = sub_389C0();
          sub_8748(v56, v57, &dword_16F320);
          sub_388E4();
          sub_214C(v58, v59, v60, v87);
          sub_86FC(a9, a10, &qword_1C5690, &dword_16F320);
        }

        else
        {
          (*(*(v14 + 984) + 8))(*(v14 + 1000), *(v14 + 976));
        }
      }

      a11 = *(v14 + 1040);
      v69 = *(v14 + 904);
      v70 = *(v14 + 888);
      v71 = *(v14 + 880);
      v72 = *(v14 + 872);
      v73 = *(v72 + 272);
      sub_86B0(v69, &v70[v71[5]], &qword_1C5690, &dword_16F320);
      sub_C9294(v72 + 40, &v70[v71[6]]);
      sub_8284(v72 + 80, &v70[v71[7]]);
      v74 = sub_16C58C();
      sub_8D14(v74);
      v75 = sub_16C57C();
      v76 = &v70[v71[8]];
      v76[3] = v74;
      v76[4] = &protocol witness table for ResponseFactory;
      *v76 = v75;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v77 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v78 = sub_16D58C();
      *v70 = v73;
      *&v70[v71[9]] = v77;
      *&v70[v71[10]] = v78;
      sub_D4798(&qword_1C57C8, type metadata accessor for UnavailableDataFlow, &unk_179388);
      sub_16C4EC();

      sub_8748(v69, &qword_1C5690, &dword_16F320);
      sub_D47F4(v70, type metadata accessor for UnavailableDataFlow);
    }

    else if (v29 == 101)
    {
      v30 = *(v14 + 1040);
      v31 = *(v14 + 872);
      sub_16D76C();
      v32 = *(v31 + 272);
      sub_C9294(v31 + 40, v14 + 88);
      sub_8284(v31 + 80, v14 + 128);
      v33 = sub_16C58C();
      sub_8D14(v33);
      v34 = sub_16C57C();
      *(v14 + 312) = v33;
      *(v14 + 320) = &protocol witness table for ResponseFactory;
      *(v14 + 288) = v34;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v35 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v36 = sub_16D58C();
      *(v14 + 80) = v32;
      *(v14 + 328) = v35;
      *(v14 + 336) = v36;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v14 + 80);
    }

    else
    {
      v65 = *(v14 + 1040);
      v66 = *(v14 + 872);
      sub_16D6FC();
      sub_8284(v66 + 80, v14 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v14 + 344);
    }

    sub_D49F8();

    sub_C9BC();
    sub_841E0();

    return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_CCFA8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1104) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_CD090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  sub_D4E1C();
  sub_16D72C();
  sub_16C4FC();

  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_CD17C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1120) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_CD264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  sub_D4E1C();
  sub_16D72C();
  sub_16C4FC();

  sub_D49F8();

  sub_C9BC();
  sub_841E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

id sub_CD350()
{
  v1 = v0;
  v60 = sub_16C0BC();
  sub_42F0();
  v62 = v2;
  __chkstk_darwin(v3);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440(&qword_1C5690, &dword_16F320);
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_38634();
  v63 = v7;
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = sub_2440(&qword_1C57E0, &unk_171C60);
  v12 = sub_4348(v11);
  __chkstk_darwin(v12);
  sub_38634();
  v65 = v13;
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_16BF5C();
  sub_42F0();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_38634();
  v64 = v21;
  v23 = __chkstk_darwin(v22);
  v25 = &v59 - v24;
  __chkstk_darwin(v23);
  v27 = &v59 - v26;
  v66 = [objc_allocWithZone(sub_16D96C()) init];
  v28 = v0[3];
  v29 = v0[4];
  sub_2D20(v0, v28);
  (*(v29 + 32))(v28, v29);
  v30 = sub_16BD9C();
  if (sub_369C(v10, 1, v30) == 1)
  {
    sub_8748(v10, &qword_1C5690, &dword_16F320);
    sub_8AB4();
    sub_214C(v31, v32, v33, v17);
    sub_16BF4C();
    v34 = v61;
    sub_16C08C();
    sub_16C02C();
    (*(v62 + 8))(v34, v60);
    (*(v19 + 8))(v25, v17);
    if (sub_369C(v16, 1, v17) != 1)
    {
      sub_8748(v16, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_16BD7C();
    sub_5DE54();
    (*(v35 + 8))(v10, v30);
    sub_388E4();
    sub_214C(v36, v37, v38, v17);
    (*(v19 + 32))(v27, v16, v17);
  }

  isa = sub_16BEEC().super.isa;
  v40 = *(v19 + 8);
  v41 = sub_8427C();
  v40(v41);
  [v66 setStart:isa];

  v42 = v1[3];
  v43 = v1[4];
  sub_2D20(v1, v42);
  v44 = v63;
  (*(v43 + 32))(v42, v43);
  if (sub_369C(v44, 1, v30) == 1)
  {
    sub_8748(v44, &qword_1C5690, &dword_16F320);
    v45 = v65;
    v46 = sub_D4B6C();
    sub_214C(v46, v47, v48, v17);
    sub_16BF4C();
    v49 = v64;
    sub_7B6B8(v64);
    (v40)(v25, v17);
    if (sub_369C(v45, 1, v17) != 1)
    {
      sub_8748(v45, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    v50 = v65;
    sub_16BD4C();
    sub_5DE54();
    v51 = sub_D4E5C();
    v52(v51);
    sub_388E4();
    sub_214C(v53, v54, v55, v17);
    v49 = v64;
    (*(v19 + 32))(v64, v50, v17);
  }

  v56 = sub_16BEEC().super.isa;
  (v40)(v49, v17);
  v57 = v66;
  [v66 setEnd:v56];

  return v57;
}

uint64_t sub_CD8C0()
{
  sub_8A88();
  v1[145] = v0;
  v1[144] = v2;
  v1[143] = v3;
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  v1[146] = sub_8BC0();
  v5 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v5);
  v1[147] = sub_8BC0();
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v1[148] = sub_8C38();
  v1[149] = swift_task_alloc();
  Model = type metadata accessor for SleepQueryModel(0);
  v1[150] = Model;
  sub_4348(Model);
  v1[151] = sub_8C38();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v8 = type metadata accessor for SnippetHeaderModel(0);
  v1[154] = v8;
  sub_4348(v8);
  v1[155] = sub_8C38();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v9 = sub_16DBEC();
  v1[159] = v9;
  sub_888C(v9);
  v1[160] = v10;
  v1[161] = sub_8C38();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v11 = sub_16C09C();
  v1[170] = v11;
  sub_888C(v11);
  v1[171] = v12;
  v1[172] = sub_8BC0();
  v13 = sub_16C0BC();
  v1[173] = v13;
  sub_888C(v13);
  v1[174] = v14;
  v1[175] = sub_8BC0();
  v15 = sub_16BD9C();
  v1[176] = v15;
  sub_888C(v15);
  v1[177] = v16;
  v1[178] = sub_8C38();
  v1[179] = swift_task_alloc();
  v17 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v17);
  v1[180] = sub_8C38();
  v1[181] = swift_task_alloc();
  v18 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v18);
  v1[182] = sub_8C38();
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  v19 = sub_16BF5C();
  v1[185] = v19;
  sub_888C(v19);
  v1[186] = v20;
  v1[187] = sub_8C38();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v21);
  v1[192] = sub_8C38();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_CDD54()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  *(v0 + 1608) = sub_D4F4C();
  [v1 totalInBedDuration];
  *(v0 + 1616) = v3;
  [v1 totalAsleepDuration];
  *(v0 + 1624) = v4;
  *(v0 + 1632) = sub_D4F4C();
  *(v0 + 1640) = [v1 daysSummarized];
  v5 = sub_16D38C();
  sub_8D14(v5);
  sub_16D37C();
  v6 = &off_1C4000;
  v7 = [v2 start];
  if (v7)
  {
    v8 = v7;
    sub_16BF3C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v0 + 1480);
  sub_214C(*(v0 + 1592), v9, 1, v10);
  v11 = sub_8B9C();
  sub_86FC(v11, v12, v13, v14);
  v15 = sub_A76DC();
  v17 = sub_369C(v15, v16, v10);
  v18 = *(v0 + 1600);
  if (v17)
  {
    sub_8748(*(v0 + 1600), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v19 = sub_D4CEC();
    v20(v19);
    sub_8748(v18, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v21 = sub_387CC();
    v22(v21);
  }

  v23 = *(v0 + 1144);
  sub_16D35C();

  v24 = &off_1C4000;
  v25 = [v23 end];
  if (v25)
  {
    v26 = v25;
    sub_16BF3C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v0 + 1584);
  v29 = *(v0 + 1576);
  v30 = *(v0 + 1480);
  sub_214C(v29, v27, 1, v30);
  sub_86FC(v29, v28, &qword_1C57E0, &unk_171C60);
  v31 = sub_A76DC();
  LODWORD(v29) = sub_369C(v31, v32, v30);
  v33 = *(v0 + 1584);
  if (v29)
  {
    sub_8748(*(v0 + 1584), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v34 = sub_D4CEC();
    v35(v34);
    sub_8748(v33, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v36 = sub_387CC();
    v37(v36);
  }

  v38 = *(v0 + 1408);
  v39 = *(v0 + 1144);
  sub_16D34C();

  *(v0 + 1648) = sub_16D36C();

  v40 = sub_D4B6C();
  sub_214C(v40, v41, v42, v38);
  v43 = [v39 start];
  if (v43)
  {
    v44 = v43;
    v45 = *(v0 + 1144);
    sub_16BF3C();

    v46 = [v45 end];
    if (v46)
    {
      v47 = v46;
      v48 = *(v0 + 1520);
      v49 = *(v0 + 1512);
      v50 = *(v0 + 1504);
      v51 = *(v0 + 1488);
      v52 = *(v0 + 1480);
      v154 = *(v0 + 1408);
      sub_16BF3C();

      v53 = *(v51 + 16);
      v54 = sub_387CC();
      v53(v54);
      (v53)(v50, v49, v52);
      v6 = &off_1C4000;
      sub_16BD5C();
      v55 = *(v51 + 8);
      v55(v49, v52);
      v56 = v52;
      v24 = &off_1C4000;
      v55(v48, v56);
      v57 = sub_38B40();
      sub_8748(v57, v58, &dword_16F320);
      sub_388E4();
      sub_214C(v59, v60, v61, v154);
      v62 = sub_8B9C();
      sub_86FC(v62, v63, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v0 + 1488) + 8))(*(v0 + 1520), *(v0 + 1480));
    }
  }

  v64 = *(v0 + 1472);
  v65 = *(v0 + 1456);
  v66 = *(v0 + 1448);
  v67 = *(v0 + 1408);
  v68 = *(*(v0 + 1160) + 272);
  *(v0 + 1976) = v68;
  sub_12093C(v68, v64, v66);
  v69 = sub_38B40();
  sub_86B0(v69, v70, v71, v72);
  if (sub_369C(v65, 1, v67) == 1)
  {
    sub_8748(*(v0 + 1456), &qword_1C5690, &dword_16F320);
    goto LABEL_29;
  }

  v155 = v68;
  v73 = *(v0 + 1568);
  v74 = *(v0 + 1528);
  v75 = *(v0 + 1488);
  v76 = *(v0 + 1480);
  v77 = *(v0 + 1400);
  v78 = *(v0 + 1392);
  v153 = *(v0 + 1384);
  (*(*(v0 + 1416) + 32))(*(v0 + 1432), *(v0 + 1456), *(v0 + 1408));
  sub_16C08C();
  v79 = sub_D4E68();
  v80(v79);
  sub_16BF4C();
  sub_16C06C();
  v81 = v74;
  v82 = *(v75 + 8);
  v82(v81, v76);
  v83 = sub_D4D84();
  v84(v83);
  v85 = *(v78 + 8);
  v85(v77, v153);
  v86 = sub_369C(v73, 1, v76);
  v87 = *(v0 + 1568);
  if (v86 == 1)
  {
    (*(*(v0 + 1416) + 8))(*(v0 + 1432), *(v0 + 1408));
    sub_8748(v87, &qword_1C57E0, &unk_171C60);
LABEL_26:
    v6 = &off_1C4000;
    v24 = &off_1C4000;
    v68 = v155;
    goto LABEL_29;
  }

  v88 = *(v0 + 1528);
  v89 = *(v0 + 1504);
  v151 = v85;
  v90 = *(v0 + 1480);
  v91 = *(v0 + 1400);
  v92 = *(v0 + 1384);
  (*(*(v0 + 1488) + 32))();
  sub_16C08C();
  sub_16BD7C();
  sub_16BD4C();
  v150 = sub_16C07C();
  v82(v89, v90);
  v82(v88, v90);
  v151(v91, v92);
  sub_16C08C();
  sub_16BD4C();
  v93 = sub_16C07C();
  v82(v88, v90);
  v151(v91, v92);
  if ((v150 & 1) == 0 || (v93 & 1) == 0)
  {
    v82(*(v0 + 1496), *(v0 + 1480));
    v113 = sub_8B9C();
    v114(v113);
    goto LABEL_26;
  }

  v152 = v82;
  v94 = sub_16DBBC();
  sub_8B48(v94, v0 + 1104);
  v95 = sub_D4E5C();
  v96(v95);
  v97 = sub_8427C();
  v98(v97);
  v99 = sub_16DBDC();
  v100 = sub_16E36C();
  v101 = os_log_type_enabled(v99, v100);
  v102 = *(v0 + 1352);
  v103 = *(v0 + 1280);
  v104 = *(v0 + 1272);
  if (v101)
  {
    sub_8BD8();
    v156 = sub_5D98C();
    *v100 = 136315138;
    sub_D4C54();
    sub_D4798(v105, v106, &protocol conformance descriptor for DateInterval);
    sub_16E68C();
    v107 = sub_D4D68();
    v108(v107);
    v109 = sub_C9F8();
    v112 = sub_3AB7C(v109, v110, v111);

    *(v100 + 4) = v112;
    _os_log_impl(&def_259DC, v99, v100, "%s seems like a request for last night, removing intervals from deep link", v100, 0xCu);
    sub_2D64(v156);
    sub_8A2C(v156);
    sub_8A2C(v100);

    (*(v103 + 8))(v102, v104);
  }

  else
  {

    v115 = sub_D4D68();
    v116(v115);
    v117 = sub_C9F8();
    v119(v117, v118);
  }

  v120 = *(v0 + 1464);
  v121 = *(v0 + 1448);
  v122 = *(v0 + 1440);
  v123 = *(v0 + 1432);
  v124 = *(v0 + 1408);
  v125 = sub_D4B6C();
  sub_214C(v125, v126, v127, v124);
  v68 = v155;
  sub_12093C(v155, v120, v122);
  sub_8748(v120, &qword_1C5690, &dword_16F320);
  v128 = sub_C9C8();
  v152(v128);
  v151(v123, v124);
  sub_8748(v121, &qword_1C57F8, &unk_172510);
  sub_86FC(v122, v121, &qword_1C57F8, &unk_172510);
  v6 = &off_1C4000;
  v24 = &off_1C4000;
LABEL_29:
  v129 = [*(v0 + 1144) v6[338]];
  if (v129)
  {
    v130 = v129;
    sub_16BF3C();

    v131 = 0;
  }

  else
  {
    v131 = 1;
  }

  v132 = *(v0 + 1144);
  sub_214C(*(v0 + 1560), v131, 1, *(v0 + 1480));
  v133 = [v132 v24[339]];
  if (v133)
  {
    v136 = v133;
    sub_16BF3C();
  }

  v137 = *(v0 + 1152);
  v138 = 1;
  sub_5DC74(*(v0 + 1552), v134, v135, *(v0 + 1480));
  v139 = [v137 summaryStartDate];
  if (v139)
  {
    v140 = v139;
    sub_16BF3C();

    v138 = 0;
  }

  v141 = *(v0 + 1152);
  sub_214C(*(v0 + 1544), v138, 1, *(v0 + 1480));
  v142 = [v141 summaryEndDate];
  if (v142)
  {
    v145 = v142;
    sub_16BF3C();
  }

  sub_5DC74(*(v0 + 1536), v143, v144, *(v0 + 1480));
  type metadata accessor for WellnessTime(0);
  sub_C9F8();
  sub_15BF80();
  *(v0 + 1656) = v146;
  sub_208C0(v68);
  *(v0 + 1664) = v147;
  v148 = swift_task_alloc();
  *(v0 + 1672) = v148;
  *v148 = v0;
  v148[1] = sub_CE8B8;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_CE8B8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;
  v2[210] = v6;
  v2[211] = v7;

  v8 = swift_task_alloc();
  v2[212] = v8;
  *v8 = v4;
  v8[1] = sub_CEA08;
  v9 = sub_C98D8(0x6867694E7473616CLL);

  return sub_66A84(v9, 0xE900000000000074);
}

uint64_t sub_CEA08()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[213] = v5;
  v2[214] = v6;

  v7 = swift_task_alloc();
  v2[215] = v7;
  *v7 = v4;
  v7[1] = sub_CEB48;
  v8 = sub_C98D8(0x6D69546C61746F74);

  return sub_66A84(v8, v9);
}

uint64_t sub_CEB48()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1728) = v3;
  *(v1 + 1736) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_CEC34()
{
  if (!*(v0 + 1688) || !*(v0 + 1736))
  {

    v14 = sub_16DBBC();
    sub_8B48(v14, v0 + 816);
    v15 = sub_38B40();
    v16(v15);
    v17 = sub_16DBDC();
    v18 = sub_16E37C();
    if (sub_1BA1C(v18))
    {
      v19 = sub_1BA38();
      sub_1BA50(v19);
      sub_1B9D0(&def_259DC, v20, v21, "#GetSleepAnalysisFlow: Category label or last night label is nil");
      sub_1BA00();
    }

    v22 = *(v0 + 1472);
    v23 = *(v0 + 1448);
    v24 = *(v0 + 1288);
    v25 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1160);

    (*(v25 + 8))(v24, v26);
    sub_8284(v27 + 80, v0 + 176);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 176);
    sub_8748(v23, &qword_1C57F8, &unk_172510);
    sub_8748(v22, &qword_1C5690, &dword_16F320);
    sub_D4914();
    sub_D4AA8();

    sub_5D948();
    sub_D4DFC();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 1264);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1976);

  sub_C9F8();
  sub_16E23C();
  v4 = sub_25948(v3);
  v6 = v5;
  v7 = sub_208C0(v3);
  v8 = (v1 + *(v2 + 20));
  *v8 = v4;
  v8[1] = v6;
  v9 = (v1 + *(v2 + 24));
  *v9 = v7;
  v9[1] = v10;
  if (!sub_16D33C())
  {
LABEL_17:
    if (sub_16D30C())
    {
      if (!*(*(v0 + 1656) + 48))
      {
LABEL_23:
        v13 = 0;
        v12 = 0;
        goto LABEL_25;
      }

      sub_16D45C();
      v30 = sub_16D5CC();
      v31 = sub_D4EEC(v30);
      v32 = *(v0 + 1192);
      if (v31 != 1)
      {
        sub_16D5BC();
        sub_5DE54();
        v33 = sub_C9C8();
        v34(v33);
        v13 = sub_16E24C();
        v12 = v35;

        goto LABEL_25;
      }
    }

    else
    {
      sub_16D31C();
      v36 = sub_16D5CC();
      v37 = sub_D4EEC(v36);
      v32 = *(v0 + 1184);
      if (v37 != 1)
      {
        v13 = sub_16D5BC();
        v12 = v38;
        sub_5DE54();
        v39 = sub_C9C8();
        v40(v39);
        goto LABEL_25;
      }
    }

    sub_8748(v32, &qword_1C5800, &unk_16F510);
    goto LABEL_23;
  }

  if (!sub_16D32C())
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((sub_16D44C() & 1) == 0 || (sub_16D44C() & 1) == 0 || (sub_16D4DC() & 1) == 0)
  {

    goto LABEL_16;
  }

  v11 = sub_16D4DC();

  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(v0 + 1712);

  v13 = *(v0 + 1704);
LABEL_25:
  *(v0 + 1752) = v12;
  *(v0 + 1744) = v13;
  v41 = *(v0 + 1624);
  v42 = *(v0 + 1616);
  if ([*(v0 + 1152) daysSummarized] == &def_259DC + 1 || v42 <= 0.0 || v41 <= 0.0)
  {
    v121 = *(v0 + 1728);
    v123 = *(v0 + 1736);
    v119 = v12;
    v120 = v13;
    v127 = *(v0 + 1448);
    v49 = *(v0 + 1440);
    v50 = *(v0 + 1264);
    v51 = *(v0 + 1232);
    v52 = *(v0 + 1224);
    v53 = *(v0 + 1200);
    v54 = *(v0 + 1176);
    v117 = *(v0 + 1168);
    v118 = v54;
    v125 = *(v0 + 1152);

    sub_D4870();
    sub_D45F4(v50, v54, v55);
    sub_388E4();
    sub_214C(v56, v57, v58, v51);
    sub_86B0(v127, v49, &qword_1C57F8, &unk_172510);
    v59 = sub_16C11C();
    sub_8AB4();
    sub_214C(v60, v61, v62, v59);
    v116 = v53[5];
    sub_8AB4();
    sub_214C(v63, v64, v65, v51);
    v114 = (v52 + v53[6]);
    v115 = (v52 + v53[7]);
    v66 = (v52 + v53[8]);
    v113 = (v52 + v53[9]);
    v67 = v53[11];
    v68 = (v52 + v53[10]);
    v111 = v53[12];
    v112 = v53[13];
    v69 = v53[14];
    v70 = (v52 + v53[15]);
    *v70 = 0;
    v70[1] = 0;
    v126 = v70;
    v128 = v53;
    v71 = (v52 + v53[16]);
    *v71 = 0;
    v71[1] = 0;
    v72 = (v52 + v53[17]);
    *v72 = 0;
    v72[1] = 0;
    sub_152BF0(v49);
    sub_8748(v49, &qword_1C57F8, &unk_172510);
    sub_388E4();
    sub_214C(v73, v74, v75, v59);
    sub_1E634(v117, v52, &qword_1C63F0, &unk_1717F0);
    sub_1E634(v118, v52 + v116, &dword_1C63F8, &qword_171800);
    *v114 = v120;
    v114[1] = v119;
    *v115 = v121;
    v115[1] = v123;
    *v66 = 0;
    v66[1] = 0;
    *v113 = 0;
    v113[1] = 0;
    *v68 = 0;
    v68[1] = 0;
    v122 = v69;
    v124 = v67;
    *(v52 + v67) = 0;
    *(v52 + v111) = 0;
    *(v52 + v112) = 0;
    *(v52 + v69) = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = &off_1C4000;
    if ([v125 daysSummarized] == &def_259DC + 1)
    {
      if (*(v0 + 1608) < 1)
      {
        v76 = 0;
        v78 = 0;
      }

      else
      {
        v81 = *(v0 + 1152);
        v82 = sub_16D53C();
        sub_8D14(v82);
        sub_16D52C();
        [v81 totalAsleepDuration];
        sub_D4DD8(v83);

        v84 = sub_16D50C();

        v78 = v84;
        *(v52 + v112) = v84;
        swift_allocObject();
        sub_16D52C();
        [v81 averageAsleepDuration];
        sub_D4DD8(v85);

        v76 = sub_16D50C();

        *(v52 + v124) = v76;
      }

      v86 = *(v0 + 1152);
      v87 = sub_16D53C();
      sub_8D14(v87);
      sub_16D52C();
      [v86 totalInBedDuration];
      sub_D4DD8(v88);

      v79 = sub_16D50C();

      *(v52 + v122) = v79;
      swift_allocObject();
      sub_16D52C();
      v80 = &off_1C4000;
      [v86 averageInBedDuration];
      sub_D4DD8(v89);

      v77 = sub_16D50C();

      *(v52 + v111) = v77;
    }

    *(v0 + 1768) = v79;
    *(v0 + 1760) = v78;
    if (*(v0 + 1616) <= 0.0 || v41 <= 0.0)
    {
      if (*(v0 + 1608) >= 1)
      {
        v90 = *(v0 + 1152);
        v91 = sub_16D53C();
        sub_8D14(v91);
        sub_16D52C();
        [v90 averageAsleepDuration];
        sub_D4DD8(v92);

        v93 = sub_16D50C();

        *(v52 + v124) = v93;
        v76 = v93;
      }

      v94 = *(v0 + 1152);
      v95 = sub_16D53C();
      sub_8D14(v95);
      sub_16D52C();
      [v94 v80[354]];
      sub_D4DD8(v96);

      v97 = sub_16D50C();

      *(v52 + v111) = v97;
      v77 = v97;
    }

    *(v0 + 1784) = v77;
    *(v0 + 1776) = v76;
    v98 = *(v0 + 1216);
    sub_D4960();
    sub_D45F4(v99, v98, v100);
    v101 = *(v0 + 1216);
    if (*(v98 + v128[11]) || *(v101 + v128[12]) || *(v101 + v128[13]) || *(v101 + v128[14]))
    {

      SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
      sub_A7800();

      v101 = *(v0 + 1216);
    }

    else
    {
      v80 = 0;
      v78 = 0;
    }

    sub_D4948();
    sub_D47F4(v101, v102);
    *v126 = v80;
    v126[1] = v78;

    v103 = swift_task_alloc();
    *(v0 + 1792) = v103;
    *v103 = v0;
    v103[1] = sub_CF7F8;
    sub_D4DFC();

    return sub_B0D6C(v104, v105, v106, v107, v108, v109);
  }

  else
  {
    v43 = swift_task_alloc();
    *(v0 + 1856) = v43;
    *v43 = v0;
    sub_D4E90(v43);
    sub_C98D8(v44 & 0xFFFFFFFFFFFFLL | 0x4165000000000000);
    sub_D4DFC();

    return sub_66A84(v45, v46);
  }
}

uint64_t sub_CF7F8(uint64_t a1)
{
  v3 = *v2;
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v3 + 1800) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_CFA08(uint64_t a1)
{
  v73 = v1;
  v69 = v1[225];
  v1[226] = v69;
  v2 = v1[160];
  v3 = sub_16DBBC();
  v1[227] = v3;
  sub_8B48(v3, (v1 + 105));
  v6 = *(v2 + 16);
  v4 = v2 + 16;
  v5 = v6;
  v1[228] = v6;
  v1[229] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_38B40();
  v6(v7);
  v8 = sub_16DBDC();
  v9 = sub_16E36C();
  v68 = v6;
  if (sub_4B3A8(v9))
  {
    v70 = v1[168];
    v10 = v1[160];
    v11 = v1[153];
    v12 = v1[151];
    v66 = v1[159];
    sub_8BD8();
    v13 = sub_5D98C();
    v72 = v13;
    *v4 = 136315138;
    sub_8B48(v11, (v1 + 135));
    sub_D4960();
    sub_D45F4(v11, v12, v14);
    v15 = sub_16E1EC();
    v17 = sub_3AB7C(v15, v16, &v72);

    *(v4 + 4) = v17;
    sub_D4F2C(&def_259DC, v18, v19, "#GetSleepAnalysisFlow: snippet model is %s");
    sub_2D64(v13);
    v20 = v13;
    v5 = v68;
    sub_8A2C(v20);
    sub_D4C6C();

    v21 = *(v10 + 8);
    v21(v70, v66);
  }

  else
  {
    v22 = v1[168];
    v23 = v1[160];
    v24 = v1[159];

    v21 = *(v23 + 8);
    v21(v22, v24);
  }

  v71 = v21;
  v1[230] = v21;
  sub_8B48(v3, (v1 + 108));
  v25 = sub_38B40();
  v5(v25);
  sub_D4870();
  v26 = sub_387CC();
  sub_D45F4(v26, v27, v28);
  v29 = sub_16DBDC();
  v30 = sub_16E36C();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v1[157];
  if (v31)
  {
    v65 = v1[167];
    v67 = v1[159];
    v33 = v1[156];
    sub_8BD8();
    v34 = sub_5D98C();
    v72 = v34;
    *v4 = 136315138;
    sub_D4870();
    sub_D45F4(v32, v33, v35);
    sub_8B9C();
    sub_16E1EC();
    sub_D4858();
    sub_D47F4(v32, v36);
    v37 = sub_C9C8();
    v40 = sub_3AB7C(v37, v38, v39);

    *(v4 + 4) = v40;
    _os_log_impl(&def_259DC, v29, v30, "#GetSleepAnalysisFlow: snippet header model is %s", v4, 0xCu);
    sub_2D64(v34);
    v41 = v34;
    v5 = v68;
    sub_8A2C(v41);
    sub_D4C6C();

    v42 = v65;
    v43 = v67;
  }

  else
  {

    sub_D4858();
    sub_D47F4(v32, v44);
    v42 = sub_C9C8();
  }

  v71(v42, v43);
  if (!v69)
  {
    sub_8B48(v3, (v1 + 111));
    v55 = sub_38B40();
    v5(v55);
    sub_16DBDC();
    v56 = sub_16E37C();
    if (sub_1BA1C(v56))
    {
      v57 = sub_1BA38();
      sub_1BA50(v57);
      sub_1B9D0(&def_259DC, v58, v59, "Couldn't create sleep analysis dialog returning nil");
      sub_1BA00();
    }

    sub_D4C8C();
    v60 = sub_D4D84();
    (v71)(v60);
    sub_8284(v3 + 80, (v1 + 2));
    sub_82E0();
    sub_16C32C();

    sub_8334((v1 + 2));
    sub_D4858();
    sub_D47F4(v32, v61);
    sub_8748(0, &qword_1C57F8, &unk_172510);
    sub_8748(v4, &qword_1C5690, &dword_16F320);
    sub_D4948();
    sub_D47F4(0, v62);
    sub_D4914();
    sub_D4978();
    sub_D4B94();

    sub_5D948();
    sub_D4EB0();

    __asm { BRAA            X2, X16 }
  }

  v1[90] = type metadata accessor for WellnessSnippets(0);
  sub_D4C3C();
  v1[91] = sub_D4798(v45, v46, &protocol conformance descriptor for WellnessSnippets);
  v47 = sub_9910(v1 + 87);
  sub_1B9B4(v47, (v1 + 120));
  sub_D4960();
  v48 = sub_38B40();
  sub_D45F4(v48, v49, v50);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v1[231] = v51;
  *v51 = v52;
  v51[1] = sub_D0064;
  sub_D4EB0();

  return sub_672C0();
}

uint64_t sub_D0064()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 696));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_D0148(uint64_t a1)
{
  v2 = *(v1 + 1824);
  sub_1B9B4(a1, v1 + 984);
  v3 = sub_8B9C();
  v2(v3);
  sub_C9294(v1 + 776, v1 + 576);
  v4 = sub_16DBDC();
  v5 = sub_16E36C();
  if (sub_4B3A8(v5))
  {
    v22 = *(v1 + 1840);
    v6 = *(v1 + 1272);
    v7 = sub_8BD8();
    v24 = sub_CA30();
    *v7 = 136315138;
    sub_C9294(v1 + 576, v1 + 496);
    sub_2440(&qword_1C97E0, &qword_176150);
    sub_16E1EC();
    sub_2D64((v1 + 576));
    v8 = sub_D4D84();
    v11 = sub_3AB7C(v8, v9, v10);

    *(v7 + 4) = v11;
    _os_log_impl(&def_259DC, v4, v5, "#GetSleepAnalysisFlow: output is %s", v7, 0xCu);
    sub_2D64(v24);
    sub_8A2C(v24);
    sub_8A2C(v7);

    v12 = sub_C9F8();
    v22(v12);
  }

  else
  {
    v5 = *(v1 + 1840);
    v7 = *(v1 + 1280);
    v6 = *(v1 + 1272);

    sub_2D64((v1 + 576));
    v13 = sub_C9F8();
    v5(v13);
  }

  v14 = *(v1 + 1808);
  sub_D4D10();
  sub_C9294(v1 + 776, v1 + 536);
  v15 = swift_allocObject();
  sub_17464((v1 + 536), v15 + 16);
  sub_16C73C();
  v16 = sub_16C1DC();
  sub_8D14(v16);
  *(v1 + 1136) = sub_384FC();
  v23 = sub_16C32C();

  sub_2D64((v1 + 776));
  sub_D4858();
  sub_D47F4(v7, v17);
  sub_8748(v5, &qword_1C57F8, &unk_172510);
  sub_8748(v6, &qword_1C5690, &dword_16F320);

  sub_D4948();
  sub_D47F4(v21, v18);
  sub_D4914();
  sub_D4978();
  sub_D4BE8();

  sub_5D948();

  return v19(v23);
}

uint64_t sub_D0578()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[233] = v5;
  v2[234] = v6;

  v7 = swift_task_alloc();
  v2[235] = v7;
  *v7 = v4;
  sub_D4E90(v7);
  v9 = sub_C98D8(v8 & 0xFFFFFFFFFFFFLL | 0x4965000000000000);

  return sub_66A84(v9, v10);
}

uint64_t sub_D06A8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1888) = v3;
  *(v1 + 1896) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_D0794()
{
  v109 = v0;
  v94 = v0[237];
  v99 = v0[236];
  v102 = v0[234];
  v98 = v0[233];
  v95 = v0[218];
  v96 = v0[219];
  v90 = v0[180];
  v91 = v0[181];
  v106 = v0[160];
  v1 = v0[154];
  v2 = v0[153];
  v97 = v0[151];
  v3 = v0[150];
  v4 = v0[147];
  v93 = v0[146];
  v5 = v0[144];
  sub_D4870();
  sub_D45F4(v6, v4, v7);
  sub_388E4();
  sub_214C(v8, v9, v10, v1);
  v11 = sub_16D53C();
  sub_8D14(v11);

  sub_16D52C();
  [v5 averageAsleepDuration];
  sub_D4DD8(v12);

  v105 = sub_16D50C();
  v0[238] = v105;

  swift_allocObject();
  sub_16D52C();
  [v5 averageInBedDuration];
  sub_D4DD8(v13);

  v104 = sub_16D50C();
  v0[239] = v104;

  sub_86B0(v91, v90, &qword_1C57F8, &unk_172510);
  v14 = sub_16C11C();
  sub_8AB4();
  sub_214C(v15, v16, v17, v14);
  v88 = v3[5];
  sub_8AB4();
  sub_214C(v18, v19, v20, v1);
  v21 = (v2 + v3[6]);
  v87 = (v2 + v3[7]);
  v22 = (v2 + v3[8]);
  v83 = (v2 + v3[9]);
  v89 = v3[11];
  v23 = (v2 + v3[10]);
  v85 = v3[13];
  v86 = v3[12];
  v84 = v3[14];
  v24 = (v2 + v3[15]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v2 + v3[16]);
  *v25 = 0;
  v25[1] = 0;
  v92 = (v2 + v3[17]);
  *v92 = 0;
  v92[1] = 0;
  sub_152BF0(v90);
  sub_8748(v90, &qword_1C57F8, &unk_172510);
  sub_388E4();
  sub_214C(v26, v27, v28, v14);
  sub_1E634(v93, v2, &qword_1C63F0, &unk_1717F0);
  sub_1E634(v4, v2 + v88, &dword_1C63F8, &qword_171800);
  *v21 = v95;
  v21[1] = v96;
  *v87 = 0;
  v87[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v83 = v98;
  v83[1] = v102;
  *v23 = v99;
  v23[1] = v94;
  *(v2 + v89) = v105;
  *(v2 + v86) = v104;
  *(v2 + v85) = 0;
  *(v2 + v84) = 0;
  sub_D45F4(v2, v97, type metadata accessor for SleepQueryModel);

  v29 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
  v31 = v30;

  sub_D47F4(v97, type metadata accessor for SleepQueryModel);
  *v25 = v29;
  v25[1] = v31;
  sub_D45F4(v2, v97, type metadata accessor for SleepQueryModel);

  swift_bridgeObjectRelease_n();

  v32 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
  v34 = v33;

  sub_D47F4(v97, type metadata accessor for SleepQueryModel);
  *v92 = v32;
  v92[1] = v34;
  v35 = sub_16DBBC();
  v0[240] = v35;
  sub_8B48(v35, (v0 + 132));
  v36 = *(v106 + 16);
  v0[241] = v36;
  v0[242] = (v106 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37 = sub_C9C8();
  (v36)(v37);
  v38 = sub_16DBDC();
  v39 = sub_16E36C();
  if (sub_4B3A8(v39))
  {
    v40 = v0[160];
    v100 = v0[159];
    v101 = v0[164];
    v41 = v0[153];
    sub_8BD8();
    v42 = sub_5D98C();
    v108[0] = v42;
    *v36 = 136315138;
    sub_8B48(v41, (v0 + 114));
    sub_D4960();
    v43 = sub_A76B4();
    sub_D45F4(v43, v44, v45);
    v46 = sub_16E1EC();
    v48 = sub_3AB7C(v46, v47, v108);

    *(v36 + 4) = v48;
    sub_D4F2C(&def_259DC, v49, v50, "#GetSleepAnalysisFlow: snippet model is %s");
    sub_2D64(v42);
    sub_1BA00();
    sub_8A2C(v36);

    v51 = *(v40 + 8);
    v51(v101, v100);
  }

  else
  {
    v52 = v0[160];

    v51 = *(v52 + 8);
    v53 = sub_C9E0();
    v51(v53, v54);
  }

  v0[243] = v51;
  sub_8B48(v35, (v0 + 129));
  v55 = sub_C9C8();
  (v36)(v55);
  sub_D4870();
  v56 = sub_387CC();
  sub_D45F4(v56, v57, v58);
  v59 = sub_16DBDC();
  v60 = sub_16E36C();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v0[163];
  v63 = v0[159];
  if (v61)
  {
    v107 = v0[163];
    v64 = v0[156];
    v65 = v0[155];
    v103 = v51;
    v66 = sub_8BD8();
    v67 = sub_CA30();
    v108[0] = v67;
    *v66 = 136315138;
    sub_D4870();
    sub_D45F4(v65, v64, v68);
    v69 = sub_16E1EC();
    v71 = v70;
    sub_D4858();
    sub_D47F4(v65, v72);
    v73 = sub_3AB7C(v69, v71, v108);

    *(v66 + 4) = v73;
    sub_D4ECC(&def_259DC, v74, v75, "#GetSleepAnalysisFlow: snippet header model is %s");
    sub_2D64(v67);
    sub_1BA00();
    sub_8A2C(v66);

    v103(v107, v63);
  }

  else
  {
    v76 = v0[155];

    sub_D4858();
    sub_D47F4(v76, v77);
    v51(v62, v63);
  }

  v78 = v0[206];

  v79 = swift_task_alloc();
  v0[244] = v79;
  *v79 = v0;
  v79[1] = sub_D0F10;
  v80 = sub_C9E0();

  return sub_B0A0C(v80, v81, 0, v104, v105, v78);
}

uint64_t sub_D0F10(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 1960) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_D10CC()
{
  v0[85] = type metadata accessor for WellnessSnippets(0);
  sub_D4C3C();
  v0[86] = sub_D4798(v1, v2, &protocol conformance descriptor for WellnessSnippets);
  v3 = sub_9910(v0 + 82);
  sub_1B9B4(v3, (v0 + 117));
  sub_D4960();
  v4 = sub_38B40();
  sub_D45F4(v4, v5, v6);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[246] = v7;
  *v7 = v8;
  v7[1] = sub_D11D4;

  return sub_672C0();
}

uint64_t sub_D11D4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 656));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_D12B8(uint64_t a1)
{
  v5 = *(v2 + 1960);
  sub_D4D10();
  sub_C9294(v2 + 616, v2 + 736);
  v6 = swift_allocObject();
  sub_17464((v2 + 736), v6 + 16);
  sub_16C73C();
  v7 = sub_16C1DC();
  sub_8D14(v7);
  *(v2 + 1128) = sub_384FC();
  v13 = sub_16C32C();

  sub_2D64((v2 + 616));
  sub_D4858();
  sub_D47F4(v4, v8);
  sub_8748(v3, &qword_1C57F8, &unk_172510);
  sub_8748(v1, &qword_1C5690, &dword_16F320);

  sub_D4948();
  sub_D47F4(v12, v9);
  sub_D4914();
  sub_D4978();
  sub_D4BE8();

  sub_5D948();

  return v10(v13);
}

uint64_t sub_D1580(uint64_t a1)
{
  v2 = v1[241];
  sub_1B9B4(a1, (v1 + 126));
  v3 = sub_8B9C();
  v2(v3);
  v4 = sub_16DBDC();
  v5 = sub_16E37C();
  if (sub_1BA1C(v5))
  {
    v6 = sub_1BA38();
    sub_1BA50(v6);
    sub_1B9D0(&def_259DC, v7, v8, "Couldn't create detailed sleep analysis dialog returning nil");
    sub_1BA00();
  }

  v9 = v1[243];
  v17 = v1[181];
  v18 = v1[184];
  v10 = v1[158];
  v19 = v1[153];
  v11 = v1[145];

  v12 = sub_D4D84();
  v9(v12);
  sub_8284(v11 + 80, (v1 + 42));
  sub_82E0();
  v20 = sub_16C32C();

  sub_8334((v1 + 42));
  sub_D4858();
  sub_D47F4(v10, v13);
  sub_8748(v17, &qword_1C57F8, &unk_172510);
  sub_8748(v18, &qword_1C5690, &dword_16F320);
  sub_D4948();
  sub_D47F4(v19, v14);
  sub_D4914();
  sub_D4AA8();

  sub_5D948();

  return v15(v20);
}

void sub_D18CC(uint64_t a1)
{
  v1[226] = 0;
  v2 = v1[160];
  v3 = sub_16DBBC();
  v1[227] = v3;
  sub_8B48(v3, (v1 + 105));
  v5 = *(v2 + 16);
  v2 += 16;
  v4 = v5;
  v1[228] = v5;
  v1[229] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = sub_C9C8();
  v5(v6);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  v55 = v5;
  v56 = v2;
  if (sub_4B3A8(v8))
  {
    v57 = v1[168];
    v9 = v1[160];
    v10 = v1[153];
    v53 = v1[159];
    v11 = sub_8BD8();
    v4 = sub_CA30();
    v59[0] = v4;
    *v11 = 136315138;
    sub_8B48(v10, (v1 + 135));
    sub_D4960();
    v12 = sub_A76B4();
    sub_D45F4(v12, v13, v14);
    v15 = sub_16E1EC();
    v17 = sub_3AB7C(v15, v16, v59);

    *(v11 + 4) = v17;
    _os_log_impl(&def_259DC, v7, v8, "#GetSleepAnalysisFlow: snippet model is %s", v11, 0xCu);
    sub_2D64(v4);
    sub_D4C6C();
    sub_8A2C(v11);

    v18 = *(v9 + 8);
    v18(v57, v53);
  }

  else
  {
    v19 = v1[160];

    v18 = *(v19 + 8);
    v20 = sub_C9E0();
    (v18)(v20);
  }

  v1[230] = v18;
  sub_8B48(v3, (v1 + 108));
  v21 = sub_C9C8();
  v4(v21);
  sub_D4870();
  v22 = sub_387CC();
  sub_D45F4(v22, v23, v24);
  v25 = sub_16DBDC();
  v26 = sub_16E36C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[167];
  v54 = v1[159];
  v29 = v1[157];
  v58 = v18;
  if (v27)
  {
    v52 = v1[167];
    v30 = sub_8BD8();
    v4 = sub_CA30();
    v59[0] = v4;
    *v30 = 136315138;
    sub_D4870();
    v31 = sub_A76B4();
    sub_D45F4(v31, v32, v33);
    v34 = sub_16E1EC();
    v18 = v35;
    sub_D4858();
    sub_D47F4(v29, v36);
    v37 = sub_3AB7C(v34, v18, v59);

    *(v30 + 4) = v37;
    sub_D4ECC(&def_259DC, v38, v39, "#GetSleepAnalysisFlow: snippet header model is %s");
    sub_2D64(v4);
    sub_D4C6C();
    sub_8A2C(v30);

    v58(v52, v54);
  }

  else
  {

    sub_D4858();
    sub_D47F4(v29, v40);
    v18(v28, v54);
  }

  v41 = v1[159];
  sub_8B48(v3, (v1 + 111));
  v42 = sub_C9C8();
  v4(v42);
  sub_16DBDC();
  v43 = sub_16E37C();
  if (sub_1BA1C(v43))
  {
    v44 = sub_1BA38();
    sub_1BA50(v44);
    sub_1B9D0(&def_259DC, v45, v46, "Couldn't create sleep analysis dialog returning nil");
    sub_1BA00();
  }

  sub_D4C8C();
  v47 = sub_D4D84();
  (v58)(v47);
  sub_8284(v41 + 80, (v1 + 2));
  sub_82E0();
  sub_16C32C();

  sub_8334((v1 + 2));
  sub_D4858();
  sub_D47F4(v18, v48);
  sub_8748(v25, &qword_1C57F8, &unk_172510);
  sub_8748(v55, &qword_1C5690, &dword_16F320);
  sub_D4948();
  sub_D47F4(v56, v49);
  sub_D4914();
  sub_D4978();
  sub_D4B94();

  sub_5D948();
  sub_D4EB0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_D1E60()
{
  sub_8A88();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v4 = sub_16C46C();
  v1[38] = v4;
  sub_888C(v4);
  v1[39] = v5;
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[42] = v6;
  sub_888C(v6);
  v1[43] = v7;
  v1[44] = sub_8BC0();
  v8 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  v1[45] = v8;
  sub_4348(v8);
  v1[46] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[47] = v9;
  sub_888C(v9);
  v1[48] = v10;
  v1[49] = sub_8BC0();
  v11 = sub_16C09C();
  v1[50] = v11;
  sub_888C(v11);
  v1[51] = v12;
  v1[52] = sub_8BC0();
  v13 = sub_16C0BC();
  v1[53] = v13;
  sub_888C(v13);
  v1[54] = v14;
  v1[55] = sub_8BC0();
  v15 = sub_16BD9C();
  v1[56] = v15;
  sub_888C(v15);
  v1[57] = v16;
  v1[58] = sub_8C38();
  v1[59] = swift_task_alloc();
  v17 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v17);
  v1[60] = sub_8C38();
  v1[61] = swift_task_alloc();
  v18 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v18);
  v1[62] = sub_8C38();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v19 = sub_16BF5C();
  v1[65] = v19;
  sub_888C(v19);
  v1[66] = v20;
  v1[67] = sub_8C38();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v21);
  v1[72] = sub_8C38();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v22 = sub_17960();

  return _swift_task_switch(v22);
}

uint64_t sub_D2244(uint64_t a1)
{
  v201 = v1;
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = 1851392;
  v197 = sub_D4F4C();
  [v3 totalInBedDuration];
  v6 = v5;
  [v3 totalAsleepDuration];
  v8 = v7;
  v196 = sub_D4F4C();
  v9 = &off_1C4000;
  v195 = [v3 daysSummarized];
  v10 = sub_16D38C();
  sub_8D14(v10);
  sub_16D37C();
  v11 = &off_1C4000;
  v12 = [v2 start];
  if (v12)
  {
    v13 = v12;
    sub_16BF3C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_D4F0C(v12, v14);
  v15 = sub_8B9C();
  sub_86FC(v15, v16, v17, v18);
  v19 = sub_A76DC();
  v21 = sub_369C(v19, v20, 1851392);
  v22 = *(v1 + 640);
  if (v21)
  {
    sub_8748(*(v1 + 640), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v4 = *(v1 + 568);
    v23 = sub_D4E7C();
    v24(v23);
    sub_8748(v22, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v25 = sub_C9E0();
    v26(v25);
  }

  v27 = *(v1 + 280);
  sub_16D35C();

  v28 = &off_1C4000;
  v29 = [v27 end];
  if (v29)
  {
    v30 = v29;
    sub_16BF3C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_D4F0C(v29, v31);
  v32 = sub_8B9C();
  sub_86FC(v32, v33, v34, v35);
  v36 = sub_A76DC();
  v38 = sub_369C(v36, v37, v4);
  v39 = *(v1 + 624);
  if (v38)
  {
    sub_8748(*(v1 + 624), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v40 = sub_D4E7C();
    v41(v40);
    sub_8748(v39, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v42 = sub_C9E0();
    v43(v42);
    v28 = &off_1C4000;
  }

  v44 = *(v1 + 448);
  v45 = *(v1 + 280);
  sub_16D34C();

  v46 = sub_16D36C();
  *(v1 + 648) = v46;

  sub_8AB4();
  sub_214C(v47, v48, v49, v44);
  v50 = [v45 start];
  if (v50)
  {
    v51 = v50;
    v52 = *(v1 + 280);
    sub_16BF3C();

    v53 = [v52 end];
    if (v53)
    {
      v54 = v53;
      v55 = *(v1 + 560);
      v56 = *(v1 + 552);
      v57 = *(v1 + 544);
      v58 = *(v1 + 528);
      v198 = v46;
      v59 = *(v1 + 520);
      v193 = *(v1 + 448);
      sub_16BF3C();

      v60 = *(v58 + 16);
      v61 = sub_D4E5C();
      v60(v61);
      (v60)(v57, v56, v59);
      v11 = &off_1C4000;
      sub_16BD5C();
      v62 = *(v58 + 8);
      v63 = v56;
      v9 = &off_1C4000;
      v62(v63, v59);
      v64 = v55;
      v28 = &off_1C4000;
      v65 = v59;
      v46 = v198;
      v62(v64, v65);
      v66 = sub_38B40();
      sub_8748(v66, v67, &dword_16F320);
      sub_388E4();
      sub_214C(v68, v69, v70, v193);
      v71 = sub_8B9C();
      sub_86FC(v71, v72, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v1 + 528) + 8))(*(v1 + 560), *(v1 + 520));
    }
  }

  v73 = *(v1 + 496);
  v74 = *(v1 + 448);
  v75 = *(*(v1 + 296) + 272);
  sub_12093C(v75, *(v1 + 512), *(v1 + 488));
  v76 = sub_C9C8();
  sub_86B0(v76, v77, v78, v79);
  if (sub_369C(v73, 1, v74) == 1)
  {
    sub_8748(*(v1 + 496), &qword_1C5690, &dword_16F320);
  }

  else
  {
    v191 = v75;
    v199 = v46;
    v80 = *(v1 + 608);
    v81 = *(v1 + 568);
    v82 = *(v1 + 528);
    v83 = *(v1 + 520);
    v85 = *(v1 + 432);
    v84 = *(v1 + 440);
    v194 = *(v1 + 424);
    (*(*(v1 + 456) + 32))(*(v1 + 472), *(v1 + 496), *(v1 + 448));
    sub_16C08C();
    v86 = sub_D4E68();
    v87(v86);
    sub_16BF4C();
    sub_16C06C();
    v192 = *(v82 + 8);
    v192(v81, v83);
    v88 = sub_D4D84();
    v89(v88);
    v90 = *(v85 + 8);
    v90(v84, v194);
    v91 = sub_369C(v80, 1, v83);
    v92 = *(v1 + 608);
    if (v91 == 1)
    {
      (*(*(v1 + 456) + 8))(*(v1 + 472), *(v1 + 448));
      sub_8748(v92, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v93 = *(v1 + 568);
      v94 = *(v1 + 544);
      v95 = *(v1 + 520);
      (*(*(v1 + 528) + 32))();
      sub_16C08C();
      sub_16BD7C();
      sub_16BD4C();
      v188 = sub_16C07C();
      v192(v94, v95);
      v192(v93, v95);
      v96 = sub_C9E0();
      (v90)(v96);
      sub_16C08C();
      sub_16BD4C();
      v97 = sub_16C07C();
      v192(v93, v95);
      v98 = sub_C9E0();
      (v90)(v98);
      v100 = *(v1 + 448);
      v99 = *(v1 + 456);
      if (v188 & 1) != 0 && (v97)
      {
        v101 = sub_16DBBC();
        sub_8B48(v101, v1 + 176);
        v102 = sub_D4E5C();
        v103(v102);
        v104 = sub_8427C();
        v105(v104);
        v106 = sub_16DBDC();
        v107 = sub_16E36C();
        v108 = os_log_type_enabled(v106, v107);
        v109 = *(v1 + 456);
        v110 = *(v1 + 384);
        v111 = *(v1 + 376);
        if (v108)
        {
          v190 = *(v1 + 392);
          v112 = sub_8BD8();
          v189 = sub_CA30();
          v200 = v189;
          *v112 = 136315138;
          sub_D4C54();
          sub_D4798(v113, v114, &protocol conformance descriptor for DateInterval);
          v187 = v111;
          v115 = sub_16E68C();
          v186 = v107;
          v117 = v116;
          log = v106;
          v118 = *(v109 + 8);
          v119 = sub_C9C8();
          v118(v119);
          v120 = v118;
          v121 = sub_3AB7C(v115, v117, &v200);

          *(v112 + 4) = v121;
          _os_log_impl(&def_259DC, log, v186, "%s seems like a request for last night, removing intervals from deep link", v112, 0xCu);
          sub_2D64(v189);
          sub_8A2C(v189);
          sub_8A2C(v112);

          (*(v110 + 8))(v190, v187);
        }

        else
        {

          v123 = *(v109 + 8);
          v124 = sub_C9C8();
          v123(v124);
          v120 = v123;
          v125 = sub_387CC();
          v127(v125, v126);
        }

        v128 = *(v1 + 504);
        v130 = *(v1 + 480);
        v129 = *(v1 + 488);
        v131 = *(v1 + 472);
        v132 = *(v1 + 448);
        v133 = sub_D4B6C();
        sub_214C(v133, v134, v135, v132);
        sub_12093C(v191, v128, v130);
        sub_8748(v128, &qword_1C5690, &dword_16F320);
        v136 = sub_C9C8();
        (v192)(v136);
        (v120)(v131, v132);
        sub_1E634(v130, v129, &qword_1C57F8, &unk_172510);
      }

      else
      {
        v122 = *(v1 + 472);
        v192(*(v1 + 536), *(v1 + 520));
        (*(v99 + 8))(v122, v100);
      }
    }

    v9 = &off_1C4000;
    v46 = v199;
    v11 = &off_1C4000;
    v28 = &off_1C4000;
  }

  v137 = [*(v1 + 280) v11[338]];
  if (v137)
  {
    v138 = v137;
    sub_16BF3C();

    v139 = 0;
  }

  else
  {
    v139 = 1;
  }

  v140 = *(v1 + 280);
  sub_214C(*(v1 + 600), v139, 1, *(v1 + 520));
  v141 = [v140 v28[339]];
  if (v141)
  {
    v144 = v141;
    sub_16BF3C();
  }

  v145 = *(v1 + 288);
  v146 = 1;
  sub_5DC74(*(v1 + 592), v142, v143, *(v1 + 520));
  v147 = [v145 summaryStartDate];
  if (v147)
  {
    v148 = v147;
    sub_16BF3C();

    v146 = 0;
  }

  v149 = *(v1 + 288);
  sub_214C(*(v1 + 584), v146, 1, *(v1 + 520));
  v150 = [v149 summaryEndDate];
  if (v150)
  {
    v153 = v150;
    sub_16BF3C();
  }

  v154 = *(v1 + 288);
  sub_5DC74(*(v1 + 576), v151, v152, *(v1 + 520));
  type metadata accessor for WellnessTime(0);
  sub_C9F8();
  sub_15BF80();
  v156 = v155;
  *(v1 + 656) = v155;
  if ([v154 v9[405]] == &def_259DC + 1)
  {
    v157 = *(v1 + 488);
    v159 = *(v1 + 360);
    v158 = *(v1 + 368);
    v160 = *(v1 + 288);
    sub_2D20((*(v1 + 296) + 200), *(*(v1 + 296) + 224));
    v161 = sub_16D5CC();

    v162 = v160;
    v163 = sub_D4B6C();
    sub_214C(v163, v164, v165, v161);
    *(v158 + v159[5]) = 0;
    *(v158 + v159[6]) = 0;
    sub_8AB4();
    sub_214C(v166, v167, v168, v161);
    *(v158 + v159[8]) = 0;
    *(v158 + v159[9]) = 0;
    *(v158 + v159[10]) = 0;
    *(v158 + v159[11]) = 0;
    sub_D3DA4(v158, v157, v46, v156, v197 > 0, v162);
    sub_6E354();
    *(v1 + 664) = v169;
    v170 = swift_task_alloc();
    *(v1 + 672) = v170;
    *v170 = v1;
    v170[1] = sub_D3038;
    sub_5E24C();

    __asm { BR              X3 }
  }

  sub_2D20((*(v1 + 296) + 200), *(*(v1 + 296) + 224));
  if (v6 <= 0.0 || v8 <= 0.0)
  {
    v180 = *(v1 + 288);

    v181 = v180;
    v182 = swift_task_alloc();
    *(v1 + 688) = v182;
    *v182 = v1;
    v182[1] = sub_D3578;
    sub_5E24C();

    __asm { BR              X6 }
  }

  v173 = *(v1 + 488);
  v175 = *(v1 + 288);
  v174 = *(v1 + 296);
  v176 = swift_task_alloc();
  *(v1 + 696) = v176;
  *(v176 + 16) = v174;
  *(v176 + 24) = v173;
  *(v176 + 32) = v46;
  *(v176 + 40) = v156;
  *(v176 + 48) = v175;
  *(v176 + 56) = v196 / v195;
  v177 = swift_task_alloc();
  *(v1 + 704) = v177;
  *v177 = v1;
  v177[1] = sub_D3A44;
  sub_5E24C();

  return sub_72DB4();
}

uint64_t sub_D3038()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v7 + 680) = v0;

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_D3154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v33 = *(v32 + 288);
  sub_D4CC8(*(v32 + 368));

  v34 = sub_D4A74(*(v32 + 208));
  sub_16C43C();
  v35 = sub_D4B7C();
  v36(v35);
  sub_D4A44();
  v37 = sub_D4D90();
  v38(v37);
  v39 = [v34 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v40 = sub_D4B28();
  sub_D4E40(v40);
  v52 = sub_16C32C();

  v41 = sub_D4DA0();
  v42(v41);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v33, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_D33A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v33 = v32[81];
  v34 = v32[36];
  sub_D4CC8(v32[46]);

  sub_D4DB0();
  sub_82E0();
  v44 = sub_16C32C();

  sub_8334((v32 + 2));
  sub_8748(v34, &qword_1C5690, &dword_16F320);
  sub_D4888();
  sub_8748(v33, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v44, a30, a31, a32);
}

uint64_t sub_D3578()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_D367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v34 = sub_D4A74(*(v33 + 232));
  sub_16C43C();
  v35 = sub_D4B7C();
  v36(v35);
  sub_D4A44();
  v37 = sub_D4D90();
  v38(v37);
  v39 = [v34 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v40 = sub_D4B28();
  sub_D4E40(v40);
  v52 = sub_16C32C();

  v41 = sub_D4DA0();
  v42(v41);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_D38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  sub_D4DB0();
  sub_82E0();
  v44 = sub_16C32C();

  sub_8334(v33 + 16);
  sub_8748(v34, &qword_1C5690, &dword_16F320);
  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v44, a30, a31, a32);
}

uint64_t sub_D3A44()
{
  sub_38388();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_D3B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_D4D4C();
  sub_D4DF0();
  v34 = sub_D4A74(*(v33 + 256));
  sub_16C43C();
  v35 = sub_D4B7C();
  v36(v35);
  sub_D4A44();
  v37 = sub_D4D90();
  v38(v37);
  v39 = [v34 patternId];
  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16C76C();
  v40 = sub_D4B28();
  sub_D4E40(v40);
  v52 = sub_16C32C();

  v41 = sub_D4DA0();
  v42(v41);
  sub_8748(a28, &qword_1C5690, &dword_16F320);

  sub_D4888();
  sub_8748(v32, &qword_1C57F8, &unk_172510);

  sub_8938();
  sub_D4D30();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52, a30, a31, a32);
}

uint64_t sub_D3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_16BE9C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - v17;
  if (sub_369C(a2, 1, v12))
  {
    v19 = sub_16D5CC();
    sub_214C(v18, 1, 1, v19);
  }

  else
  {
    (*(v13 + 16))(v15, a2, v12);
    sub_61120(v18);
    (*(v13 + 8))(v15, v12);
  }

  sub_1E634(v18, a1, &qword_1C5800, &unk_16F510);
  v20 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  v21 = v20[8];

  *(a1 + v21) = a3;
  v22 = v20[9];

  *(a1 + v22) = a4;
  if (a5)
  {
    sub_16D53C();
    swift_allocObject();
    sub_16D52C();
    [a6 totalAsleepDuration];
    sub_16D51C();

    v23 = sub_16D50C();

    v24 = v20[10];

    *(a1 + v24) = v23;
    swift_allocObject();
    sub_16D52C();
    [a6 averageAsleepDuration];
    sub_16D51C();

    v25 = sub_16D50C();

    v26 = v20[5];

    *(a1 + v26) = v25;
  }

  sub_16D53C();
  swift_allocObject();
  sub_16D52C();
  [a6 totalInBedDuration];
  sub_16D51C();

  v27 = sub_16D50C();

  v28 = v20[11];

  *(a1 + v28) = v27;
  swift_allocObject();
  sub_16D52C();
  [a6 averageInBedDuration];
  sub_16D51C();

  v29 = sub_16D50C();

  v30 = v20[6];

  *(a1 + v30) = v29;
  return result;
}

uint64_t sub_D414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v11 = sub_16BE9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C5800, &unk_16F510);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  sub_208C0(*(a2 + 272));
  sub_16E23C();

  v21 = sub_16D5CC();
  sub_214C(v20, 0, 1, v21);
  v22 = type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(0);
  sub_1E634(v20, a1 + v22[7], &qword_1C5800, &unk_16F510);
  if (sub_369C(a3, 1, v11))
  {
    sub_214C(v18, 1, 1, v21);
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    sub_61120(v18);
    (*(v12 + 8))(v14, v11);
  }

  sub_1E634(v18, a1, &qword_1C5800, &unk_16F510);
  v23 = v22[14];
  v24 = v35;

  *(a1 + v23) = v24;
  v25 = v22[15];
  v26 = v36;

  *(a1 + v25) = v26;
  sub_16D53C();
  swift_allocObject();
  sub_16D52C();
  v27 = v37;
  [v37 averageAsleepDuration];
  sub_16D51C();

  v28 = sub_16D50C();

  v29 = v22[5];

  *(a1 + v29) = v28;
  swift_allocObject();
  sub_16D52C();
  [v27 averageInBedDuration];
  sub_16D51C();

  v30 = sub_16D50C();

  v31 = v22[6];

  *(a1 + v31) = v30;
  v33 = a1 + v22[13];
  *v33 = a7;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_D44B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_D4854);
}

uint64_t sub_D44DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_CC0B4();
}

uint64_t sub_D45F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  v4 = sub_8B9C();
  v5(v4);
  return a2;
}

uint64_t sub_D4650()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D4688()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_C8CB0(v3, v4);
}

uint64_t sub_D4710()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_D4798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D47F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_D4888()
{
  v2 = v0[44];
  *(v1 - 112) = v0[46];
  *(v1 - 104) = v2;
  v3 = v0[40];
  *(v1 - 96) = v0[41];
  *(v1 - 88) = v3;
}

uint64_t sub_D49F8()
{
}

uint64_t sub_D4A44()
{

  return sub_16C75C();
}

id sub_D4A74@<X0>(void *a1@<X8>)
{
  v4 = v1[82];
  *(v2 - 88) = v1[64];
  v5 = v1[42];
  *(v2 - 104) = v4;
  *(v2 - 96) = v5;

  return a1;
}

uint64_t sub_D4B28()
{
  sub_2D20((v0 + 80), *(v0 + 104));

  return sub_16C2FC();
}

uint64_t sub_D4B94()
{
  v3 = v0[156];
  *(v1 - 176) = v0[157];
  *(v1 - 168) = v3;
  v4 = v0[153];
  *(v1 - 160) = v0[155];
  *(v1 - 152) = v4;
  v5 = v0[151];
  *(v1 - 144) = v0[152];
  *(v1 - 136) = v5;
  v6 = v0[148];
  *(v1 - 128) = v0[149];
  *(v1 - 120) = v6;
  v7 = v0[146];
  *(v1 - 112) = v0[147];
  *(v1 - 104) = v7;
}

uint64_t sub_D4BE8()
{
  v3 = v0[153];
  *(v1 - 192) = v0[155];
  *(v1 - 184) = v3;
  v4 = v0[151];
  *(v1 - 176) = v0[152];
  *(v1 - 168) = v4;
  v5 = v0[148];
  *(v1 - 160) = v0[149];
  *(v1 - 152) = v5;
  v6 = v0[146];
  *(v1 - 144) = v0[147];
  *(v1 - 136) = v6;
}

uint64_t sub_D4C6C()
{
}

void sub_D4C8C()
{
  v4 = *(v1 + 1224);
  *(v2 - 112) = *(v1 + 1472);
  *(v2 - 104) = v4;
}

uint64_t sub_D4CC8(uint64_t a1)
{

  return sub_D47F4(a1, type metadata accessor for WellnessQueryingSleep_SimpleResultParameters);
}

uint64_t sub_D4DB0()
{
  v2 = *(v0 + 296) + 80;

  return sub_8284(v2, v0 + 16);
}

uint64_t sub_D4DD8(double a1)
{

  return sub_16D51C();
}

uint64_t sub_D4E1C()
{
}

uint64_t sub_D4E40(uint64_t a1)
{
  *(v1 + 272) = a1;

  return sub_16C28C();
}

void sub_D4ECC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_D4EEC(uint64_t a1)
{

  return sub_369C(v1, 1, a1);
}

uint64_t sub_D4F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + 520);

  return sub_214C(v2, a2, 1, v5);
}

void sub_D4F2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_D4F4C()
{
  v3 = *(v1 + 3216);

  return [v0 v3];
}

uint64_t type metadata accessor for TemperatureQueryModel(uint64_t a1)
{
  result = qword_1C9860;
  if (!qword_1C9860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureQueryModel.averageValueString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.averageValueString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.maxValueString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.maxValueString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.minValueString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.minValueString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.mostRecentValueString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.mostRecentValueString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.basalTemperatureValueString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TemperatureQueryModel.averageLabelString.getter()
{
  type metadata accessor for TemperatureQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t TemperatureQueryModel.averageLabelString.setter()
{
  sub_D78BC();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_D588C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_D5A34(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  v7 = sub_4348(v6);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if ((a2 & 1) == 0)
  {
    sub_16D3DC();
    swift_allocObject();
    sub_16D3CC();
    sub_16D43C();

    sub_16D42C();

    sub_16D41C();

    if (a4)
    {
      sub_16D3AC();
      v13 = sub_16D5CC();
      if (sub_369C(v12, 1, v13) != 1)
      {
        v16 = sub_16D5BC();

        (*(*(v13 - 8) + 8))(v12, v13);
        return v16;
      }

      v14 = v12;
    }

    else
    {
      sub_16D3BC();
      v15 = sub_16D5CC();
      if (sub_369C(v10, 1, v15) != 1)
      {
        v16 = sub_16D5BC();

        (*(*(v15 - 8) + 8))(v10, v15);
        return v16;
      }

      v14 = v10;
    }

    sub_8748(v14, &qword_1C5800, &unk_16F510);
  }

  return 0;
}

uint64_t sub_D5C84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000000017F5C0 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x800000000017F600 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_16E6BC();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_D6144(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
    case 10:
      return 0xD000000000000015;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_17;
    case 9:
      v3 = 1450076525;
LABEL_17:
      result = v3 | 0x65756C6100000000;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x6972745374696E75;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D6334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D5C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D635C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D613C();
  *a1 = result;
  return result;
}

uint64_t sub_D6384(uint64_t a1)
{
  v2 = sub_D67F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D63C0(uint64_t a1)
{
  v2 = sub_D67F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TemperatureQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C97F0, &qword_176158);
  sub_42F0();
  v5 = v4;
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  sub_2D20(a1, a1[3]);
  sub_D67F0();
  sub_16E77C();
  v17[31] = 0;
  sub_16C11C();
  sub_D7874();
  sub_D7124(v9, v10, &protocol conformance descriptor for AppPunchout);
  sub_205DC();
  sub_16E63C();
  if (!v1)
  {
    Model = type metadata accessor for TemperatureQueryModel(0);
    sub_669D0(Model[5]);
    v17[30] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v17[29] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v17[28] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v17[27] = 4;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[9]);
    v17[26] = 5;
    sub_20584();
    sub_16E62C();
    v17[25] = 6;
    sub_16D5CC();
    sub_D788C();
    sub_D7124(v12, v13, &protocol conformance descriptor for SpeakableString);
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[11]);
    v17[24] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v17[15] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v17[14] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v17[13] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v17[12] = 11;
    sub_20584();
    sub_16E61C();
    v17[11] = 12;
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[17]);
    v17[10] = 13;
    sub_20584();
    sub_16E61C();
    v17[9] = 14;
    type metadata accessor for SnippetHeaderModel(0);
    sub_D78A4();
    sub_D7124(v14, v15, &protocol conformance descriptor for SnippetHeaderModel);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_D67F0()
{
  result = qword_1C97F8;
  if (!qword_1C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C97F8);
  }

  return result;
}

uint64_t TemperatureQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v96 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v97 = &v91 - v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = sub_4348(v5);
  v7 = __chkstk_darwin(v6);
  v110 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v9;
  v10 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v10);
  sub_433C();
  __chkstk_darwin(v11);
  v111 = &v91 - v12;
  v112 = sub_2440(&qword_1C9800, &qword_176160);
  sub_42F0();
  v108 = v13;
  sub_433C();
  __chkstk_darwin(v14);
  v115 = &v91 - v15;
  Model = type metadata accessor for TemperatureQueryModel(0);
  v17 = (Model - 8);
  __chkstk_darwin(Model);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v107 = v20;
  sub_214C(v21, v22, v23, v20);
  sub_D78F0(v17[7]);
  v106 = v24;
  *(v24 + 8) = 1;
  sub_D78F0(v17[8]);
  v105 = v25;
  *(v25 + 8) = 1;
  sub_D78F0(v17[9]);
  v104 = v26;
  *(v26 + 8) = 1;
  sub_D78F0(v17[10]);
  v103 = v27;
  *(v27 + 8) = 1;
  sub_D78F0(v17[11]);
  v101 = v28;
  *(v28 + 8) = 1;
  v29 = v17[12];
  v30 = sub_16D5CC();
  v100 = v29;
  sub_8AB4();
  sub_214C(v31, v32, v33, v30);
  v34 = &v19[v17[13]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v99 = v34;
  v35 = &v19[v17[14]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v19[v17[15]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v19[v17[16]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v19[v17[17]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v98 = v17[18];
  sub_8AB4();
  v102 = v30;
  sub_214C(v39, v40, v41, v30);
  v42 = &v19[v17[19]];
  *v42 = 0;
  v42[1] = 0;
  v43 = v17[20];
  v44 = type metadata accessor for SnippetHeaderModel(0);
  v114 = v19;
  v95 = v43;
  sub_8AB4();
  sub_214C(v45, v46, v47, v44);
  v48 = sub_2D20(v116, v116[3]);
  sub_D67F0();
  v49 = v113;
  sub_16E76C();
  if (v49)
  {
    v90 = v114;
  }

  else
  {
    v113 = v35;
    v94 = v36;
    v93 = v37;
    v92 = v38;
    v50 = v109;
    v91 = v44;
    v51 = v110;
    v52 = v108;
    v131 = 0;
    sub_D7874();
    sub_D7124(v53, v54, &protocol conformance descriptor for AppPunchout);
    v55 = v111;
    sub_D7868();
    sub_16E5AC();
    v57 = v55;
    v58 = v114;
    sub_1E634(v57, v114, &qword_1C63F0, &unk_1717F0);
    v130 = 1;
    v59 = sub_16E59C();
    sub_D7858(v59, v60);
    v129 = 2;
    sub_D7848();
    v61 = sub_16E59C();
    sub_D7858(v61, v62);
    v128 = 3;
    sub_D7848();
    v63 = sub_16E59C();
    sub_D7858(v63, v64);
    v127 = 4;
    sub_D7848();
    v65 = sub_16E59C();
    sub_D7858(v65, v66);
    v126 = 5;
    sub_D7848();
    v67 = sub_16E59C();
    sub_D7858(v67, v68);
    v125 = 6;
    sub_D788C();
    sub_D7124(v69, v70, &protocol conformance descriptor for SpeakableString);
    sub_D7868();
    sub_16E5AC();
    sub_1E634(v50, v58 + v100, &qword_1C5800, &unk_16F510);
    v124 = 7;
    sub_D7848();
    v71 = sub_16E58C();
    v72 = v99;
    *v99 = v71;
    v72[1] = v73;
    v123[0] = 8;
    sub_D7848();
    v74 = sub_16E58C();
    v75 = v113;
    *v113 = v74;
    v75[1] = v76;
    v122 = 9;
    sub_D7848();
    v77 = sub_16E58C();
    v78 = v94;
    *v94 = v77;
    v78[1] = v79;
    v121 = 10;
    sub_D7848();
    v80 = sub_16E58C();
    v81 = v93;
    *v93 = v80;
    v81[1] = v82;
    v120 = 11;
    sub_D7848();
    v83 = sub_16E58C();
    v84 = v92;
    *v92 = v83;
    v84[1] = v85;
    v119 = 12;
    sub_D7868();
    sub_16E5AC();
    sub_1E634(v51, &v114[v98], &qword_1C5800, &unk_16F510);
    v118 = 13;
    sub_D7848();
    *v42 = sub_16E58C();
    v42[1] = v86;
    v117 = 14;
    sub_D78A4();
    sub_D7124(v87, v88, &protocol conformance descriptor for SnippetHeaderModel);
    v89 = v112;
    sub_D7868();
    sub_16E5AC();
    (*(v52 + 8))(v48, v89);
    v90 = v114;
    sub_1E634(v97, &v114[v95], &dword_1C63F8, &qword_171800);
    sub_D7030(v90, v96);
  }

  sub_2D64(v116);
  return sub_D6FD4(v90);
}

uint64_t sub_D6FD4(uint64_t a1)
{
  Model = type metadata accessor for TemperatureQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_D7030(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for TemperatureQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_D7124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D71B0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[10];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v12 = a3[18];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_D7304(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    sub_2440(&qword_1C5800, &unk_16F510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[11] + 8) = a2;
        return;
      }

      v10 = sub_2440(&dword_1C63F8, &qword_171800);
      v14 = a4[18];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

uint64_t sub_D7434(uint64_t a1)
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8, &type metadata for String);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
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

uint64_t getEnumTagSinglePayload for TemperatureQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemperatureQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0xD7708);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_D7744()
{
  result = qword_1C98D0;
  if (!qword_1C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98D0);
  }

  return result;
}

unint64_t sub_D779C()
{
  result = qword_1C98D8;
  if (!qword_1C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98D8);
  }

  return result;
}

unint64_t sub_D77F4()
{
  result = qword_1C98E0;
  if (!qword_1C98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C98E0);
  }

  return result;
}

uint64_t sub_D7858(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_D78BC()
{

  return type metadata accessor for TemperatureQueryModel(0);
}

uint64_t sub_D78D8()
{

  return type metadata accessor for TemperatureQueryModel(0);
}

uint64_t sub_D78FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16DCCC();
  sub_42F0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_4304();
  v10 = v9 - v8;
  sub_2440(&qword_1C5610, &qword_1763B0);
  sub_8B38();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_4B010(v2, &v17 - v12, &qword_1C5610, &qword_1763B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_16DC4C();
    sub_8B38();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    sub_16E38C();
    v16 = sub_16DDEC();
    sub_16DB9C();

    sub_16DCBC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

void *PhoneRingsSnippet.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2440(&qword_1C5610, &qword_1763B0);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for PhoneRingsSnippet(0) + 20);

  return memcpy(v4, a1, 0xF1uLL);
}

uint64_t type metadata accessor for PhoneRingsSnippet(uint64_t a1)
{
  result = qword_1C99B8;
  if (!qword_1C99B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneRingsSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  sub_16E10C();
  sub_42F0();
  v102 = v3;
  v103 = v2;
  __chkstk_darwin(v2);
  sub_4304();
  v101 = v5 - v4;
  v6 = type metadata accessor for PhoneRingsSnippet(0);
  v7 = v6 - 8;
  v98 = *(v6 - 8);
  v97 = *(v98 + 64);
  __chkstk_darwin(v6);
  v96 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2440(&qword_1C98E8, &qword_1763B8);
  sub_8B38();
  __chkstk_darwin(v9);
  v99 = &v82 - v10;
  v11 = sub_2440(&qword_1C98F0, &qword_1763C0);
  v12 = sub_888C(v11);
  v95 = v13;
  v94 = *(v14 + 64);
  v15 = __chkstk_darwin(v12);
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = (&v82 - v17);
  v18 = sub_16DF9C();
  sub_42F0();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_4304();
  v24 = v23 - v22;
  v25 = *(v7 + 28);
  v91 = v1;
  memcpy(v117, (v1 + v25), 0xF1uLL);
  memcpy(v108, (v1 + v25), 0xF1uLL);
  sub_13E04(v117, v133);
  sub_16E01C();
  sub_16DC2C();
  (*(v20 + 104))(v24, enum case for Color.RGBColorSpace.sRGB(_:), v18);
  v26 = sub_16DFDC();
  sub_16DC1C();
  v27 = v111;
  v28 = v112;
  v29 = v113;
  v30 = v114;
  v31 = v115;
  v32 = v116;
  v33 = sub_16E00C();
  v35 = v34;
  v36 = sub_16E00C();
  v38 = v37;
  v118[0] = v27;
  v118[1] = __PAIR64__(v29, v28);
  v118[2] = v30;
  v118[3] = v31;
  v118[4] = v32;
  v118[5] = v26;
  LOWORD(v118[6]) = 256;
  *(&v118[6] + 2) = v106;
  HIWORD(v118[6]) = v107;
  v118[7] = v33;
  v118[8] = v35;
  v118[9] = v36;
  v118[10] = v37;
  memcpy(v109, v108, 0x128uLL);
  memcpy(&v109[296], v118, 0x58uLL);
  v119 = v27;
  v120 = v28;
  v121 = v29;
  v122 = v30;
  v123 = v31;
  v124 = v32;
  v125 = v26;
  v126 = 256;
  v127 = v106;
  v128 = v107;
  v129 = v33;
  v130 = v35;
  v131 = v36;
  v132 = v38;
  sub_4B010(v118, v133, &qword_1C98F8, &qword_1763C8);
  sub_8748(&v119, &qword_1C98F8, &qword_1763C8);
  LOBYTE(v33) = sub_16DE0C();
  sub_16DBFC();
  v89 = v40;
  v90 = v39;
  v87 = v42;
  v88 = v41;
  LOBYTE(v133[0]) = 0;
  LOBYTE(v35) = sub_16DE2C();
  sub_16DBFC();
  v85 = v44;
  v86 = v43;
  v83 = v46;
  v84 = v45;
  LOBYTE(v105[0]) = 0;
  LOBYTE(v36) = sub_16DE3C();
  sub_16DBFC();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  LOBYTE(v133[0]) = 0;
  LOBYTE(v38) = sub_16DE1C();
  sub_16DBFC();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v109[384] = 0;
  memcpy(v133, v109, 0x180uLL);
  LOBYTE(v133[48]) = v33;
  v133[49] = v90;
  v133[50] = v89;
  v133[51] = v88;
  v133[52] = v87;
  LOBYTE(v133[53]) = 0;
  LOBYTE(v133[54]) = v35;
  v133[55] = v86;
  v133[56] = v85;
  v133[57] = v84;
  v133[58] = v83;
  LOBYTE(v133[59]) = 0;
  LOBYTE(v133[60]) = v36;
  v133[61] = v48;
  v133[62] = v50;
  v133[63] = v52;
  v133[64] = v54;
  LOBYTE(v133[65]) = 0;
  *(&v133[65] + 1) = v105[0];
  HIDWORD(v133[65]) = *(v105 + 3);
  LOBYTE(v133[66]) = v38;
  *(&v133[66] + 1) = *v110;
  HIDWORD(v133[66]) = *&v110[3];
  v133[67] = v56;
  v133[68] = v58;
  v133[69] = v60;
  v133[70] = v62;
  LOBYTE(v133[71]) = 0;
  v63 = sub_16DCFC();
  v64 = v92;
  *v92 = v63;
  *(v64 + 8) = 0x401C000000000000;
  *(v64 + 16) = 0;
  v65 = sub_2440(&qword_1C9900, &qword_1763D0);
  v66 = v91;
  sub_D83C8(v91, (v64 + *(v65 + 44)));
  v67 = v96;
  sub_D94BC(v66, v96);
  memcpy(v105, v133, 0x239uLL);
  v68 = v93;
  sub_4B010(v64, v93, &qword_1C98F0, &qword_1763C0);
  v69 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v70 = (v97 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (*(v95 + 80) + v70 + 569) & ~*(v95 + 80);
  v72 = swift_allocObject();
  sub_D97F8(v67, v72 + v69);
  memcpy((v72 + v70), v105, 0x239uLL);
  sub_D985C(v68, v72 + v71);
  sub_4B010(v133, v105, &qword_1C9918, &qword_1763E8);
  sub_2440(&qword_1C9920, &qword_1763F0);
  sub_98C8(&qword_1C9928, &qword_1C9920, &qword_1763F0, &protocol conformance descriptor for TupleView<A>);
  v73 = v99;
  sub_16E08C();
  v74 = sub_16DFCC();
  v75 = sub_16DDFC();
  v76 = v101;
  v77 = &v73[*(v100 + 36)];
  v78 = v73;
  *v77 = v74;
  v77[8] = v75;
  v80 = v102;
  v79 = v103;
  (*(v102 + 104))(v76, enum case for ComponentStackBottomSpacing.none(_:), v103);
  sub_D99AC();
  sub_16DF4C();
  sub_8748(v133, &qword_1C9918, &qword_1763E8);
  (*(v80 + 8))(v76, v79);
  sub_8748(v78, &qword_1C98E8, &qword_1763B8);
  return sub_8748(v64, &qword_1C98F0, &qword_1763C0);
}

uint64_t sub_D83C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v76 = sub_2440(&qword_1C9A80, &qword_176520);
  __chkstk_darwin(v76);
  v4 = &v55 - v3;
  v72 = sub_16DF9C();
  v5 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440(&qword_1C9908, &qword_1763D8);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = __chkstk_darwin(v7);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v59 = &v55 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v55 - v13;
  v14 = __chkstk_darwin(v12);
  v58 = &v55 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v55 - v17;
  __chkstk_darwin(v16);
  v75 = &v55 - v18;
  v19 = *(type metadata accessor for PhoneRingsSnippet(0) + 20);
  v74 = a1;
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 152);
  if (v21)
  {
    v65 = v20[18];
    v22 = v21;
  }

  else
  {
    v22 = 0xE400000000000000;
    v65 = 1702260557;
  }

  v64 = 3157808;
  v23 = v20[21];
  if (v23)
  {
    v57 = v20[20];
    v24 = v23;
  }

  else
  {
    v24 = 0xE300000000000000;
    v57 = 3157808;
  }

  if (v20[23])
  {
    v25 = v20[22];
    v26 = v20[23];
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 4997443;
  }

  v27 = *(v5 + 104);
  v68 = enum case for Color.RGBColorSpace.sRGB(_:);
  v69 = v5 + 104;
  v67 = v27;
  v27(v73);

  v28 = sub_16DFDC();
  v77[0] = -3.0;
  if (sub_DA2C8())
  {
    v77[0] = -6.0;
  }

  *v4 = sub_16DCFC();
  *(v4 + 1) = 0xC014000000000000;
  v4[16] = 0;
  v66 = sub_2440(&qword_1C9A88, &qword_176528);
  sub_DA670(v65, v22, v77, v57, v24, v25, v26, v28, &v4[*(v66 + 44)]);

  v65 = sub_98C8(&qword_1C9A90, &qword_1C9A80, &qword_176520, &protocol conformance descriptor for VStack<A>);
  sub_16DF3C();

  sub_8748(v4, &qword_1C9A80, &qword_176520);
  v29 = v20[13];
  if (v29)
  {
    v57 = v20[12];
    v30 = v29;
  }

  else
  {
    v30 = 0xE800000000000000;
    v57 = 0x6573696372657845;
  }

  v31 = v20[15];
  if (v31)
  {
    v56 = v20[14];
    v32 = v31;
  }

  else
  {
    v32 = 0xE300000000000000;
    v56 = 3157808;
  }

  if (v20[17])
  {
    v33 = v20[16];
    v34 = v20[17];
  }

  else
  {
    v34 = 0xE300000000000000;
    v33 = 5130573;
  }

  v67(v73, v68, v72);

  v35 = sub_16DFDC();
  v77[0] = -3.0;
  if (sub_DA2C8())
  {
    v77[0] = -6.0;
  }

  *v4 = sub_16DCFC();
  *(v4 + 1) = 0xC014000000000000;
  v4[16] = 0;
  sub_DA670(v57, v30, v77, v56, v32, v33, v34, v35, &v4[*(v66 + 44)]);

  sub_16DF3C();

  sub_8748(v4, &qword_1C9A80, &qword_176520);
  v36 = v20[25];
  if (v36)
  {
    v57 = v20[24];
    v37 = v36;
  }

  else
  {
    v37 = 0xE500000000000000;
    v57 = 0x646E617453;
  }

  v38 = v20[27];
  if (v38)
  {
    v64 = v20[26];
    v39 = v38;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  if (v20[29])
  {
    v40 = v20[28];
    v41 = v20[29];
  }

  else
  {
    v41 = 0xE300000000000000;
    v40 = 5460552;
  }

  v67(v73, v68, v72);

  v42 = sub_16DFDC();
  v77[0] = -3.0;
  if (sub_DA2C8())
  {
    v77[0] = -6.0;
  }

  *v4 = sub_16DCFC();
  *(v4 + 1) = 0xC014000000000000;
  v4[16] = 0;
  sub_DA670(v57, v37, v77, v64, v39, v40, v41, v42, &v4[*(v66 + 44)]);

  v43 = v58;
  sub_16DF3C();

  sub_8748(v4, &qword_1C9A80, &qword_176520);
  v45 = v61;
  v44 = v62;
  v46 = *(v61 + 16);
  v47 = v71;
  v46(v71, v75, v62);
  v48 = v59;
  v49 = v70;
  v46(v59, v70, v44);
  v50 = v60;
  v46(v60, v43, v44);
  v51 = v63;
  v46(v63, v47, v44);
  v52 = sub_2440(&qword_1C9910, &qword_1763E0);
  v46(&v51[*(v52 + 48)], v48, v44);
  v46(&v51[*(v52 + 64)], v50, v44);
  v53 = *(v45 + 8);
  v53(v43, v44);
  v53(v49, v44);
  v53(v75, v44);
  v53(v50, v44);
  v53(v48, v44);
  return (v53)(v71, v44);
}

uint64_t sub_D8CAC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v54 = a2;
  v62 = a4;
  v63 = a1;
  v60 = sub_2440(&qword_1C99F8, &qword_1764A8);
  __chkstk_darwin(v60);
  v52 = (&v50 - v4);
  v55 = sub_2440(&qword_1C9A00, &qword_1764B0);
  __chkstk_darwin(v55);
  v58 = &v50 - v5;
  v57 = sub_2440(&qword_1C9A08, &qword_1764B8);
  __chkstk_darwin(v57);
  v51 = (&v50 - v6);
  v7 = sub_2440(&qword_1C9A10, &qword_1764C0);
  v8 = __chkstk_darwin(v7 - 8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v50 - v10;
  v11 = sub_2440(&qword_1C9A18, &qword_1764C8);
  v12 = __chkstk_darwin(v11 - 8);
  v50 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_2440(&qword_1C9A20, &qword_1764D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_16C12C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_16C14C();
  __chkstk_darwin(v23 - 8);
  v24 = sub_16E0DC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2440(&qword_1C9A28, &qword_1764D8);
  v29 = __chkstk_darwin(v28 - 8);
  v53 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v50 - v31;
  if (*(v63 + *(type metadata accessor for PhoneRingsSnippet(0) + 20) + 240))
  {
    v33 = 1;
  }

  else
  {
    *v22 = 0xD000000000000011;
    v22[1] = 0x800000000017F640;
    (*(v20 + 104))(v22, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v19);
    v34 = sub_16C17C();
    sub_214C(v18, 1, 1, v34);
    v35 = sub_16C18C();
    sub_214C(v15, 1, 1, v35);
    sub_214C(v50, 1, 1, v35);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    sub_16C13C();
    sub_16E0CC();
    (*(v25 + 32))(v32, v27, v24);
    v33 = 0;
  }

  sub_214C(v32, v33, 1, v24);
  v36 = sub_D9AAC();
  v37 = v59;
  if (v36)
  {
    v38 = sub_16DCFC();
    v39 = v51;
    *v51 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v40 = sub_2440(&qword_1C9A50, &qword_1764F0);
    sub_D9D8C(v54, v56, (v39 + *(v40 + 44)));
    v41 = &qword_1C9A08;
    v42 = &qword_1764B8;
    sub_4B010(v39, v58, &qword_1C9A08, &qword_1764B8);
  }

  else
  {
    v43 = sub_16DCEC();
    v39 = v52;
    *v52 = v43;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v44 = sub_2440(&qword_1C9A30, &qword_1764E0);
    sub_DA044(v54, v56, (v39 + *(v44 + 44)));
    v41 = &qword_1C99F8;
    v42 = &qword_1764A8;
    sub_4B010(v39, v58, &qword_1C99F8, &qword_1764A8);
  }

  swift_storeEnumTagMultiPayload();
  sub_98C8(&qword_1C9A38, &qword_1C9A08, &qword_1764B8, &protocol conformance descriptor for VStack<A>);
  sub_98C8(&qword_1C9A40, &qword_1C99F8, &qword_1764A8, &protocol conformance descriptor for HStack<A>);
  sub_16DDCC();
  sub_8748(v39, v41, v42);
  v45 = v53;
  sub_4B010(v32, v53, &qword_1C9A28, &qword_1764D8);
  v46 = v61;
  sub_4B010(v37, v61, &qword_1C9A10, &qword_1764C0);
  v47 = v62;
  sub_4B010(v45, v62, &qword_1C9A28, &qword_1764D8);
  v48 = sub_2440(&qword_1C9A48, &qword_1764E8);
  sub_4B010(v46, v47 + *(v48 + 48), &qword_1C9A10, &qword_1764C0);
  sub_8748(v37, &qword_1C9A10, &qword_1764C0);
  sub_8748(v32, &qword_1C9A28, &qword_1764D8);
  sub_8748(v46, &qword_1C9A10, &qword_1764C0);
  return sub_8748(v45, &qword_1C9A28, &qword_1764D8);
}

uint64_t sub_D94BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D9520()
{
  v1 = *(type metadata accessor for PhoneRingsSnippet(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2440(&qword_1C98F0, &qword_1763C0);
  sub_888C(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  sub_2440(&qword_1C5610, &qword_1763B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_16DC4C();
    sub_8B38();
    (*(v10 + 8))(v0 + v3);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 569) & ~v7;

  v13 = v0 + *(sub_2440(&qword_1C9900, &qword_1763D0) + 44) + v12;
  v14 = sub_2440(&qword_1C9908, &qword_1763D8);
  sub_8B38();
  v16 = *(v15 + 8);
  v16(v13, v14);
  v17 = sub_2440(&qword_1C9910, &qword_1763E0);
  v16(v13 + *(v17 + 48), v14);
  v16(v13 + *(v17 + 64), v14);

  return _swift_deallocObject(v0, v12 + v9, v11 | 7);
}

uint64_t sub_D97F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D985C(uint64_t a1, uint64_t a2)
{
  sub_2440(&qword_1C98F0, &qword_1763C0);
  sub_8B38();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_D98C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhoneRingsSnippet(0);
  sub_888C(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2440(&qword_1C98F0, &qword_1763C0) - 8);
  v9 = v1 + ((v7 + *(v8 + 80) + 569) & ~*(v8 + 80));

  return sub_D8CAC(v1 + v5, (v1 + v7), v9, a1);
}

unint64_t sub_D99AC()
{
  result = qword_1C9930;
  if (!qword_1C9930)
  {
    sub_9790(&qword_1C98E8, &qword_1763B8);
    sub_98C8(&qword_1C9938, &qword_1C9940, &qword_1763F8, &protocol conformance descriptor for ComponentStack<A>);
    sub_98C8(&qword_1C9948, &qword_1C9950, &qword_176400, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9930);
  }

  return result;
}

uint64_t sub_D9AAC()
{
  v0 = sub_16DC4C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  sub_D78FC(&v15 - v5);
  v7 = *(v1 + 104);
  v7(v4, enum case for DynamicTypeSize.accessibility1(_:), v0);
  v8 = sub_16DC3C();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8 & 1) != 0 || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility2(_:), v0), v10 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v10) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility3(_:), v0), v11 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v11) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility4(_:), v0), v12 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v12))
  {
    v13 = 1;
  }

  else
  {
    sub_D78FC(v6);
    v7(v4, enum case for DynamicTypeSize.accessibility5(_:), v0);
    v13 = sub_16DC3C();
    v9(v4, v0);
    v9(v6, v0);
  }

  return v13 & 1;
}

uint64_t sub_D9D8C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2440(&qword_1C9A58, &qword_1764F8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v12 = &v39[-v11 - 8];
  memcpy(v40, a1, 0x239uLL);
  sub_4B010(v40, v42, &qword_1C9918, &qword_1763E8);
  LOBYTE(a1) = sub_16DE3C();
  sub_16DBFC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_4B010(a2, v12, &qword_1C98F0, &qword_1763C0);
  v21 = &v12[*(sub_2440(&qword_1C9A60, &qword_176500) + 36)];
  *v21 = a1;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  LOBYTE(a1) = sub_16DE2C();
  sub_16DBFC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v12[*(sub_2440(&qword_1C9A68, &qword_176508) + 36)];
  *v30 = a1;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(a1) = sub_16DE1C();
  sub_16DBFC();
  v31 = &v12[*(v7 + 44)];
  *v31 = a1;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  memcpy(v39, v40, sizeof(v39));
  sub_4B010(v12, v10, &qword_1C9A58, &qword_1764F8);
  memcpy(v41, v39, 0x239uLL);
  memcpy(a3, v39, 0x239uLL);
  v36 = sub_2440(&qword_1C9A70, &qword_176510);
  sub_4B010(v10, a3 + *(v36 + 48), &qword_1C9A58, &qword_1764F8);
  sub_4B010(v41, v42, &qword_1C9918, &qword_1763E8);
  sub_8748(v12, &qword_1C9A58, &qword_1764F8);
  sub_8748(v10, &qword_1C9A58, &qword_1764F8);
  memcpy(v42, v39, 0x239uLL);
  return sub_8748(v42, &qword_1C9918, &qword_1763E8);
}

uint64_t sub_DA044@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2440(&qword_1C9A68, &qword_176508);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v12 = &v31[-v11 - 8];
  memcpy(v32, a1, 0x239uLL);
  sub_4B010(v32, v34, &qword_1C9918, &qword_1763E8);
  LOBYTE(a1) = sub_16DE0C();
  sub_16DBFC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_4B010(a2, v12, &qword_1C98F0, &qword_1763C0);
  v21 = &v12[*(sub_2440(&qword_1C9A60, &qword_176500) + 36)];
  *v21 = a1;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  LOBYTE(a1) = sub_16DE1C();
  sub_16DBFC();
  v22 = &v12[*(v7 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  memcpy(v31, v32, sizeof(v31));
  sub_4B010(v12, v10, &qword_1C9A68, &qword_176508);
  memcpy(v33, v31, 0x239uLL);
  memcpy(a3, v31, 0x239uLL);
  v27 = sub_2440(&qword_1C9A78, &qword_176518);
  sub_4B010(v10, &a3[*(v27 + 48)], &qword_1C9A68, &qword_176508);
  v28 = &a3[*(v27 + 64)];
  *v28 = 0;
  v28[8] = 1;
  sub_4B010(v33, v34, &qword_1C9918, &qword_1763E8);
  sub_8748(v12, &qword_1C9A68, &qword_176508);
  sub_8748(v10, &qword_1C9A68, &qword_176508);
  memcpy(v34, v31, 0x239uLL);
  return sub_8748(v34, &qword_1C9918, &qword_1763E8);
}

uint64_t sub_DA2C8()
{
  v0 = sub_16DC4C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  sub_D78FC(&v17 - v5);
  v7 = *(v1 + 104);
  v7(v4, enum case for DynamicTypeSize.accessibility1(_:), v0);
  v8 = sub_16DC3C();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8 & 1) != 0 || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility2(_:), v0), v10 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v10) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility3(_:), v0), v11 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v11) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility4(_:), v0), v12 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v12) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.accessibility5(_:), v0), v13 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v13) || (sub_D78FC(v6), v7(v4, enum case for DynamicTypeSize.xxLarge(_:), v0), v14 = sub_16DC3C(), v9(v4, v0), v9(v6, v0), (v14))
  {
    v15 = 1;
  }

  else
  {
    sub_D78FC(v6);
    v7(v4, enum case for DynamicTypeSize.xxxLarge(_:), v0);
    v15 = sub_16DC3C();
    v9(v4, v0);
    v9(v6, v0);
  }

  return v15 & 1;
}

uint64_t sub_DA670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v54 = a9;
  v55 = a8;
  v51 = a6;
  v52 = a7;
  v49 = a4;
  v50 = a5;
  v47 = a3;
  v53 = sub_2440(&qword_1C9A98, &qword_176530);
  v48 = *(v53 - 8);
  v11 = __chkstk_darwin(v53);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v47 - v13;
  v61 = a1;
  v62 = a2;
  sub_9854();

  v14 = sub_16DF0C();
  v16 = v15;
  v18 = v17;
  sub_16DE4C();
  v19 = sub_16DEFC();
  v21 = v20;
  v23 = v22;

  sub_DB238(v14, v16, v18 & 1);

  sub_16DE7C();
  v24 = sub_16DEDC();
  v26 = v25;
  v28 = v27;
  sub_DB238(v19, v21, v23 & 1);

  v61 = sub_16DFBC();
  v29 = sub_16DEEC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_DB238(v24, v26, v28 & 1);

  v61 = v29;
  v62 = v31;
  LOBYTE(v19) = v33 & 1;
  v63 = v33 & 1;
  *&v64[7] = v35;
  v36 = v56;
  sub_16DF3C();
  sub_DB238(v29, v31, v19);

  v37 = sub_16DCDC();
  LOBYTE(v61) = 0;
  sub_DAA60(v49, v50, v51, v52, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  LOBYTE(v31) = v61;
  v38 = v48;
  v39 = *(v48 + 16);
  v40 = v57;
  v41 = v53;
  v39(v57, v36, v53);
  v42 = v54;
  v39(v54, v40, v41);
  v43 = *(sub_2440(&qword_1C9AA0, &qword_176538) + 48);
  v60[0] = v37;
  v60[1] = 0;
  LOBYTE(v60[2]) = v31;
  memcpy(&v60[2] + 1, v58, 0x47uLL);
  v44 = v55;
  v60[11] = v55;
  memcpy(&v42[v43], v60, 0x60uLL);

  sub_4B010(v60, &v61, &qword_1C9AA8, &qword_176540);
  v45 = *(v38 + 8);
  v45(v56, v41);
  v61 = v37;
  v62 = 0;
  v63 = v31;
  memcpy(v64, v58, sizeof(v64));
  v65 = v44;
  sub_8748(&v61, &qword_1C9AA8, &qword_176540);
  return (v45)(v57, v41);
}

uint64_t sub_DAA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v7 = sub_2440(&qword_1C9AB0, &qword_176548);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_16DEBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v74 = a2;
  v68 = sub_9854();

  v14 = sub_16DF0C();
  v65 = v15;
  v17 = v16;
  v67 = enum case for Font.TextStyle.title2(_:);
  v18 = *(v11 + 104);
  v55 = v11 + 104;
  v66 = v18;
  v19 = v10;
  v56 = v10;
  v18(v13);
  v20 = enum case for Font.Design.rounded(_:);
  v60 = enum case for Font.Design.rounded(_:);
  v21 = sub_16DE5C();
  v53 = v21;
  v22 = *(v21 - 8);
  v59 = *(v22 + 104);
  v61 = v22 + 104;
  v59(v9, v20, v21);
  sub_214C(v9, 0, 1, v21);
  v54 = v13;
  sub_16DE9C();
  sub_8748(v9, &qword_1C9AB0, &qword_176548);
  v23 = *(v11 + 8);
  v57 = v11 + 8;
  v58 = v23;
  v23(v13, v19);
  LOBYTE(v21) = v17;
  v24 = v65;
  v25 = sub_16DEFC();
  v27 = v26;
  LOBYTE(v19) = v28;

  sub_DB238(v14, v24, v21 & 1);

  sub_16DE8C();
  v29 = sub_16DEDC();
  v64 = v30;
  v65 = v29;
  v63 = v31;
  v62 = v32;
  sub_DB238(v25, v27, v19 & 1);

  v73 = v69;
  v74 = v70;

  v33 = sub_16DF0C();
  v35 = v34;
  LOBYTE(v19) = v36;
  v37 = v54;
  v38 = v56;
  v66(v54, v67, v56);
  v39 = v53;
  v59(v9, v60, v53);
  sub_214C(v9, 0, 1, v39);
  sub_16DE9C();
  sub_8748(v9, &qword_1C9AB0, &qword_176548);
  v58(v37, v38);
  sub_16DE6C();
  sub_16DEAC();

  sub_16DECC();

  v40 = sub_16DEFC();
  v42 = v41;
  LOBYTE(v39) = v43;
  v45 = v44;

  sub_DB238(v33, v35, v19 & 1);

  v46 = v62 & 1;
  v72 = v62 & 1;
  LOBYTE(v73) = v62 & 1;
  LOBYTE(v37) = v39 & 1;
  v75 = v39 & 1;
  v47 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v63;
  *v71 = v65;
  v47[1] = v50;
  *(v47 + 16) = v46;
  v47[3] = v48;
  v47[4] = v40;
  v47[5] = v42;
  *(v47 + 48) = v37;
  v47[7] = v45;
  sub_DB248(v49, v50, v46);

  sub_DB248(v40, v42, v37);

  sub_DB238(v40, v42, v37);

  sub_DB238(v49, v50, v72);
}

uint64_t sub_DAF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C9958, qword_176460);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 104);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_DB050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C9958, qword_176460);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 104) = a2;
  }

  return result;
}

void sub_DB108(uint64_t a1)
{
  sub_DB17C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_DB17C(uint64_t a1)
{
  if (!qword_1C99C8)
  {
    sub_16DC4C();
    v1 = sub_16DC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C99C8);
    }
  }
}

uint64_t sub_DB1D4()
{
  sub_9790(&qword_1C98E8, &qword_1763B8);
  sub_D99AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DB238(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_DB248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

id sub_DB27C(char a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBool:a1 & 1];
}

uint64_t sub_DB30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_2440(&qword_1C67A8, &qword_171CC0);
  swift_allocObject();
  a3(0);
  sub_104478(a4, 255, a5, a6);
  sub_1069FC();
  return sub_16C21C();
}

uint64_t sub_DB3B4(uint64_t a1, uint64_t a2)
{
  sub_2440(&qword_1C9D20, &qword_176760);
  swift_allocObject();
  type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
  sub_104478(&qword_1C9D80, 255, type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy, &unk_173028);
  return sub_16C21C();
}

uint64_t sub_DB460(uint64_t a1)
{
  sub_16E2AC();
  sub_1029C4(*(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8)));
  sub_8427C();

  return sub_16E30C();
}

__n128 sub_DB4B4(__int128 *a1)
{
  v9 = a1[1];
  v10 = *a1;
  v8 = a1[2];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  sub_102978();
  v4 = *(*v1 + 16);
  sub_1029F0(v4);
  v5 = *v1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v10;
  *(v6 + 48) = v9;
  result = v8;
  *(v6 + 64) = v8;
  *(v6 + 80) = v2;
  *(v6 + 88) = v3;
  *v1 = v5;
  return result;
}

uint64_t sub_DB530@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_3E204();
  sub_C1F30(a1);
  v5 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_38F2C(v5);
  sub_38E5C();
  v6 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v6;
  v7 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_38F2C(v7);
  sub_38E5C();
  v8 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v8;
  v9 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_38F2C(v9);
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

void *sub_DB600(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    while (1)
    {
      v14 = _swiftEmptyArrayStorage;
      v6 = &v14;
      sub_16E4FC();
      if (v5 < 0)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = sub_16E48C();
        }

        else
        {
          if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_14;
          }

          v9 = *(a1 + 8 * i + 32);
        }

        v6 = v9;
        v12 = v9;
        sub_FF448(&v12, a2, &v13);
        if (v3)
        {
          goto LABEL_18;
        }

        v3 = 0;

        sub_16E4DC();
        sub_16E50C();
        sub_16E51C();
        sub_16E4EC();
        if (v8 == v5)
        {

          return v14;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v5 = sub_16E54C();
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:

    __break(1u);
  }

  else
  {
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_DB798(uint64_t a1)
{
  type metadata accessor for SpecificMedLoggingFlow();
  sub_104478(&qword_1C67C8, v1, type metadata accessor for SpecificMedLoggingFlow, &unk_1766A8);
  sub_8427C();
  return sub_16C33C();
}

uint64_t sub_DB820()
{
  sub_8A88();
  v1[3498] = v0;
  v1[3497] = v2;
  v3 = type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters(0);
  v1[3499] = v3;
  sub_4348(v3);
  v1[3500] = sub_8BC0();
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  v1[3501] = sub_8BC0();
  v5 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v5);
  v1[3502] = sub_8C38();
  v1[3503] = swift_task_alloc();
  v1[3504] = swift_task_alloc();
  v1[3505] = swift_task_alloc();
  v1[3506] = swift_task_alloc();
  v1[3507] = swift_task_alloc();
  v1[3508] = swift_task_alloc();
  v1[3509] = swift_task_alloc();
  v6 = sub_16BF5C();
  v1[3510] = v6;
  sub_888C(v6);
  v1[3511] = v7;
  v1[3512] = sub_8C38();
  v1[3513] = swift_task_alloc();
  v1[3514] = swift_task_alloc();
  v1[3515] = swift_task_alloc();
  v1[3516] = swift_task_alloc();
  v1[3517] = swift_task_alloc();
  v8 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v1[3518] = v8;
  sub_4348(v8);
  v1[3519] = sub_8C38();
  v1[3520] = swift_task_alloc();
  v1[3521] = swift_task_alloc();
  v1[3522] = swift_task_alloc();
  v1[3523] = swift_task_alloc();
  v1[3524] = swift_task_alloc();
  v1[3525] = swift_task_alloc();
  v1[3526] = swift_task_alloc();
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v9);
  v1[3527] = sub_8C38();
  v1[3528] = swift_task_alloc();
  v1[3529] = swift_task_alloc();
  v1[3530] = swift_task_alloc();
  v1[3531] = swift_task_alloc();
  v1[3532] = swift_task_alloc();
  v1[3533] = swift_task_alloc();
  v1[3534] = swift_task_alloc();
  v1[3535] = swift_task_alloc();
  v1[3536] = swift_task_alloc();
  v1[3537] = swift_task_alloc();
  v1[3538] = swift_task_alloc();
  v1[3539] = swift_task_alloc();
  v1[3540] = swift_task_alloc();
  v1[3541] = swift_task_alloc();
  v1[3542] = swift_task_alloc();
  v1[3543] = swift_task_alloc();
  v10 = sub_16C46C();
  sub_4348(v10);
  v1[3544] = sub_8BC0();
  v11 = sub_16C7BC();
  v1[3545] = v11;
  sub_888C(v11);
  v1[3546] = v12;
  v1[3547] = sub_8C38();
  v1[3548] = swift_task_alloc();
  v1[3549] = swift_task_alloc();
  v1[3550] = swift_task_alloc();
  v1[3551] = swift_task_alloc();
  v1[3552] = swift_task_alloc();
  v1[3553] = swift_task_alloc();
  v1[3554] = swift_task_alloc();
  v1[3555] = swift_task_alloc();
  v1[3556] = swift_task_alloc();
  v1[3557] = swift_task_alloc();
  v1[3558] = swift_task_alloc();
  v13 = type metadata accessor for SpecificMedLoggingFlow.SpecifiedMedicationSuccessParameters(0);
  v1[3559] = v13;
  sub_4348(v13);
  v1[3560] = sub_8C38();
  v1[3561] = swift_task_alloc();
  v1[3562] = swift_task_alloc();
  v14 = sub_2440(&qword_1C6990, &qword_1725A0);
  v1[3563] = v14;
  sub_4348(v14);
  v1[3564] = sub_8C38();
  v1[3565] = swift_task_alloc();
  v15 = sub_16D5CC();
  v1[3566] = v15;
  sub_888C(v15);
  v1[3567] = v16;
  v1[3568] = sub_8C38();
  v1[3569] = swift_task_alloc();
  v17 = type metadata accessor for SnippetHeaderModel(0);
  v1[3570] = v17;
  sub_4348(v17);
  v1[3571] = sub_8BC0();
  v18 = sub_2440(&qword_1C89E8, &unk_1742E0);
  sub_4348(v18);
  v1[3572] = sub_8C38();
  v1[3573] = swift_task_alloc();
  v19 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v19);
  v1[3574] = sub_8BC0();
  v20 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v20);
  v1[3575] = sub_8C38();
  v1[3576] = swift_task_alloc();
  v1[3577] = swift_task_alloc();
  v1[3578] = swift_task_alloc();
  v1[3579] = swift_task_alloc();
  v1[3580] = swift_task_alloc();
  v1[3581] = swift_task_alloc();
  v1[3582] = swift_task_alloc();
  v1[3583] = swift_task_alloc();
  v1[3584] = swift_task_alloc();
  v1[3585] = swift_task_alloc();
  v1[3586] = swift_task_alloc();
  v1[3587] = swift_task_alloc();
  v1[3588] = swift_task_alloc();
  v1[3589] = swift_task_alloc();
  v1[3590] = swift_task_alloc();
  v1[3591] = swift_task_alloc();
  v1[3592] = swift_task_alloc();
  v1[3593] = swift_task_alloc();
  v1[3594] = swift_task_alloc();
  v1[3595] = swift_task_alloc();
  v1[3596] = swift_task_alloc();
  v1[3597] = swift_task_alloc();
  v1[3598] = swift_task_alloc();
  v1[3599] = swift_task_alloc();
  v1[3600] = swift_task_alloc();
  v1[3601] = swift_task_alloc();
  v1[3602] = swift_task_alloc();
  v21 = sub_2440(&qword_1C69C0, &unk_174290);
  sub_4348(v21);
  v1[3603] = sub_8C38();
  v1[3604] = swift_task_alloc();
  v1[3605] = swift_task_alloc();
  v1[3606] = swift_task_alloc();
  v1[3607] = swift_task_alloc();
  v22 = sub_16DBEC();
  v1[3608] = v22;
  sub_888C(v22);
  v1[3609] = v23;
  v1[3610] = sub_8C38();
  v1[3611] = swift_task_alloc();
  v1[3612] = swift_task_alloc();
  v1[3613] = swift_task_alloc();
  v1[3614] = swift_task_alloc();
  v1[3615] = swift_task_alloc();
  v1[3616] = swift_task_alloc();
  v1[3617] = swift_task_alloc();
  v1[3618] = swift_task_alloc();
  v1[3619] = swift_task_alloc();
  v1[3620] = swift_task_alloc();
  v1[3621] = swift_task_alloc();
  v1[3622] = swift_task_alloc();
  v1[3623] = swift_task_alloc();
  v1[3624] = swift_task_alloc();
  v1[3625] = swift_task_alloc();
  v1[3626] = swift_task_alloc();
  v1[3627] = swift_task_alloc();
  v1[3628] = swift_task_alloc();
  v1[3629] = swift_task_alloc();
  v1[3630] = swift_task_alloc();
  v1[3631] = swift_task_alloc();
  v1[3632] = swift_task_alloc();
  v1[3633] = swift_task_alloc();
  v1[3634] = swift_task_alloc();
  v1[3635] = swift_task_alloc();
  v1[3636] = swift_task_alloc();
  v1[3637] = swift_task_alloc();
  v1[3638] = swift_task_alloc();
  v1[3639] = swift_task_alloc();
  v1[3640] = swift_task_alloc();
  v1[3641] = swift_task_alloc();
  v1[3642] = swift_task_alloc();
  v1[3643] = swift_task_alloc();
  v1[3644] = swift_task_alloc();
  v1[3645] = swift_task_alloc();
  v1[3646] = swift_task_alloc();
  v1[3647] = swift_task_alloc();
  v1[3648] = swift_task_alloc();
  v1[3649] = swift_task_alloc();
  v1[3650] = swift_task_alloc();
  v1[3651] = swift_task_alloc();
  v1[3652] = swift_task_alloc();
  v1[3653] = swift_task_alloc();
  v1[3654] = swift_task_alloc();
  v1[3655] = swift_task_alloc();
  v1[3656] = swift_task_alloc();
  v1[3657] = swift_task_alloc();
  v1[3658] = swift_task_alloc();
  v1[3659] = swift_task_alloc();
  v1[3660] = swift_task_alloc();
  v1[3661] = swift_task_alloc();
  v1[3662] = swift_task_alloc();
  v1[3663] = swift_task_alloc();
  v1[3664] = swift_task_alloc();
  v1[3665] = swift_task_alloc();
  v1[3666] = swift_task_alloc();
  v1[3667] = swift_task_alloc();
  v1[3668] = swift_task_alloc();
  v1[3669] = swift_task_alloc();
  v1[3670] = swift_task_alloc();
  v1[3671] = swift_task_alloc();
  v1[3672] = swift_task_alloc();
  v1[3673] = swift_task_alloc();
  v1[3674] = swift_task_alloc();
  v1[3675] = swift_task_alloc();
  v1[3676] = swift_task_alloc();
  v1[3677] = swift_task_alloc();
  v1[3678] = swift_task_alloc();
  v1[3679] = swift_task_alloc();
  v1[3680] = swift_task_alloc();
  v1[3681] = swift_task_alloc();
  v1[3682] = swift_task_alloc();
  v1[3683] = swift_task_alloc();
  v1[3684] = swift_task_alloc();
  v1[3685] = swift_task_alloc();
  v1[3686] = swift_task_alloc();
  v1[3687] = swift_task_alloc();
  v24 = sub_17960();

  return _swift_task_switch(v24);
}

uint64_t sub_DC334(uint64_t a1)
{
  v73 = v1;
  v4 = *(v1 + 28872);
  v5 = sub_16DBBC();
  *(v1 + 29504) = v5;
  sub_8B48(v5, v1 + 27608);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  *(v1 + 29512) = v7;
  *(v1 + 29520) = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8 = sub_38B40();
  v9(v8);
  v10 = sub_16DBDC();
  sub_16E36C();
  sub_106A08();
  if (sub_10623C())
  {
    sub_3A58C(2);
    sub_1070D8();
    v70 = 0;
    v71 = 0;
    sub_106114(v11);
    v69 = v12;
    sub_106FFC();
    if (v2)
    {
      while (1)
      {
        *v72 = *(v3 + 27608);
        sub_3A5A4(v72, &v69, &v70, &v71);
        sub_1065A8();
      }
    }

    sub_105BB0(&def_259DC, v13, v14, "Specific med request: checking for defined value in schedule.");
    sub_3A5E0(v6);

    v15 = sub_C98B4();
    v16(v15);
  }

  else
  {

    v17 = sub_C9F8();
    v18(v17);
    v5 = 0;
  }

  *(v1 + 29528) = v5;
  v19 = *(v1 + 27984);
  v20 = *(v19 + 16);
  sub_C9294(v19 + 24, v1 + 22336);
  v21 = *(v1 + 22368);
  sub_2D20((v1 + 22336), *(v1 + 22360));
  v22 = *(v21 + 8);

  v23 = sub_4B4EC();
  v22(v23);
  getMedScheduleWithDefinedValues(from:deviceState:)(v20, v1 + 20656);

  sub_2D64((v1 + 20656));
  sub_2D64((v1 + 22336));
  v24 = sub_C9F8();
  sub_86B0(v24, v25, v26, v27);
  v28 = sub_2440(&qword_1C6988, &unk_176730);
  *(v1 + 29536) = v28;
  v29 = sub_C98CC();
  v31 = sub_369C(v29, v30, v28);
  v32 = *(v1 + 28848);
  if (v31 == 1)
  {
    sub_8748(v32, &qword_1C69C0, &unk_174290);
    v33 = 0;
  }

  else
  {
    v34 = (v32 + *(v28 + 48));
    v33 = *v34;
    v35 = v34[1];
    sub_8748(v32, &qword_1C89E8, &unk_1742E0);
    if (v35)
    {

      sub_38B40();
      sub_16E23C();
      v36 = 0;
      v37 = v35;
LABEL_18:

      v65 = 0;
      goto LABEL_20;
    }
  }

  sub_86B0(*(v1 + 28856), *(v1 + 28840), &qword_1C69C0, &unk_174290);
  v38 = sub_C98CC();
  v40 = sub_369C(v38, v39, v28);
  v41 = *(v1 + 28840);
  if (v40 == 1)
  {
    v42 = &qword_1C69C0;
    v43 = &unk_174290;
    v44 = *(v1 + 28840);
  }

  else
  {
    v45 = *(v1 + 28584);
    v46 = *(v1 + 28504);

    v47 = sub_C9E0();
    sub_86FC(v47, v48, v49, v50);
    sub_8B20(v45, 1, v46);
    if (!v51)
    {
      v41 = *(v1 + 28584);
      v56 = *(v1 + 28088);
      v57 = *(v1 + 28080);
      v58 = *(*(v1 + 28504) + 48);
      v59 = sub_C9F8();
      v60(v59);
      sub_388E4();
      sub_214C(v61, v62, v63, v57);
      (*(v56 + 8))(v41 + v58, v57);
      goto LABEL_16;
    }

    v44 = *(v1 + 28584);
    v42 = &qword_1C89E8;
    v43 = &unk_1742E0;
  }

  sub_8748(v44, v42, v43);
  sub_8AB4();
  sub_214C(v52, v53, v54, v55);
LABEL_16:
  v64 = *(v1 + 28592);
  sub_9BFAC(v64);
  sub_1070A8();
  sub_8748(v64, &qword_1C57E0, &unk_171C60);
  if (v41)
  {
    sub_C9F8();
    sub_16E23C();
    v37 = 0;
    v36 = 1;
    goto LABEL_18;
  }

  v37 = 0;
  v65 = 1;
  v36 = 1;
LABEL_20:
  *(v1 + 29552) = v33;
  *(v1 + 29544) = v37;
  *(v1 + 17793) = v36;
  sub_1071A0(*(v1 + 28816), v65);
  v66 = swift_task_alloc();
  *(v1 + 29560) = v66;
  *v66 = v1;
  v66[1] = sub_DC7E8;
  v67 = sub_C98D8(0x646567676F6CLL);

  return sub_66A84(v67, 0xE600000000000000);
}

uint64_t sub_DC7E8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[3696] = v5;
  v2[3697] = v6;

  v7 = swift_task_alloc();
  v2[3698] = v7;
  *v7 = v4;
  v7[1] = sub_DC91C;
  v8 = sub_C98D8(0x64657070696B73);

  return sub_66A84(v8, 0xE700000000000000);
}

uint64_t sub_DC91C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[3699] = v5;
  v2[3700] = v6;

  v7 = swift_task_alloc();
  v2[3701] = v7;
  *v7 = v4;
  v7[1] = sub_DCA4C;
  v8 = sub_C98D8(0x6E656B6174);

  return sub_66A84(v8, 0xE500000000000000);
}

uint64_t sub_DCA4C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 29616) = v3;
  *(v1 + 29624) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_DCB38()
{
  sub_8A88();
  sub_208C0(88);
  *(v0 + 29632) = v1;
  v2 = swift_task_alloc();
  *(v0 + 29640) = v2;
  *v2 = v0;
  v2[1] = sub_DCBD8;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_DCBD8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[3466] = v0;
  v1[3467] = v3;
  v1[3468] = v4;
  sub_38800();
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 29648) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_DCCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 29648);
  v14 = *(v12 + 28552);
  v15 = *(v12 + 27984);
  if (v13)
  {
    v16 = *(v12 + 27736);
  }

  else
  {
    v16 = 0x697461636964654DLL;
  }

  if (v13)
  {
    v17 = *(v12 + 29648);
  }

  else
  {
    v17 = 0xEB00000000736E6FLL;
  }

  sub_16E23C();
  sub_25948(0x58u);
  sub_106508();
  sub_208C0(88);
  v18 = sub_C9F8();
  SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)(v18, v19, v17, v20, v21, v22);
  v442 = (v12 + 20104);
  v23 = memcpy((v12 + 20104), (v15 + 224), 0x41uLL);
  v24 = *(v12 + 20104);
  v25 = *(v12 + 20112);
  v26 = *(v12 + 20120);
  v27 = *(v12 + 20128);
  *(v12 + 29656) = v27;
  v28 = *(v12 + 20136);
  *(v12 + 29664) = v28;
  v29 = *(v12 + 20144);
  v30 = *(v12 + 20145) | ((*(v12 + 20149) | (*(v12 + 20151) << 16)) << 32);
  *(v12 + 30648) = v29;
  v31 = *(v12 + 20152);
  *(v12 + 29672) = v31;
  v32 = *(v12 + 20160);
  *(v12 + 29680) = v32;
  v33 = *(v12 + 20168);
  switch(v33 >> 6)
  {
    case 1u:
      v73 = v25;
      v74 = *(v12 + 29512);
      v75 = v26;
      v76 = v24;
      sub_106204(v23, v12 + 27368);
      v77 = sub_C9C8();
      v74(v77);
      sub_106F60();
      v78 = swift_allocObject();
      *(v78 + 16) = v76;
      *(v78 + 24) = v73;
      *(v78 + 32) = v75;
      *(v78 + 40) = v27;
      sub_106F60();
      v79 = swift_allocObject();
      *(v79 + 16) = v76;
      *(v79 + 24) = v73;
      *(v79 + 32) = v75;
      *(v79 + 40) = v27;
      sub_106F60();
      v80 = swift_allocObject();
      v428 = v76;
      *(v80 + 16) = v76;
      *(v80 + 24) = v73;
      *(v80 + 32) = v75;
      v420 = v27;
      *(v80 + 40) = v27;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_10374C(v442, v12 + 17800);
      v439 = v73;

      v418 = v75;

      v427 = sub_16DBDC();
      v435 = sub_16E36C();
      sub_106420();
      v443 = swift_allocObject();
      *(v443 + 16) = 32;
      sub_106420();
      v432 = swift_allocObject();
      *(v432 + 16) = 8;
      sub_106264();
      v81 = swift_allocObject();
      *(v81 + 16) = sub_103840;
      *(v81 + 24) = v78;
      sub_106264();
      v82 = swift_allocObject();
      *(v82 + 16) = sub_1038F4;
      *(v82 + 24) = v81;
      sub_106420();
      v83 = swift_allocObject();
      *(v83 + 16) = 32;
      sub_106420();
      v84 = swift_allocObject();
      *(v84 + 16) = 8;
      sub_106264();
      v85 = swift_allocObject();
      *(v85 + 16) = sub_10386C;
      *(v85 + 24) = v79;
      sub_106264();
      v86 = swift_allocObject();
      *(v86 + 16) = sub_104B28;
      *(v86 + 24) = v85;
      sub_106420();
      v87 = swift_allocObject();
      *(v87 + 16) = 32;
      sub_106420();
      v88 = swift_allocObject();
      *(v88 + 16) = 8;
      sub_106264();
      v89 = swift_allocObject();
      *(v89 + 16) = sub_1038B8;
      *(v89 + 24) = v80;
      sub_106264();
      v90 = swift_allocObject();
      *(v90 + 16) = sub_104B28;
      *(v90 + 24) = v89;
      *(v12 + 30216) = sub_2440(&qword_1C9D10, &qword_176750);
      swift_allocObject();
      sub_61090();
      *v91 = sub_1038EC;
      v91[1] = v443;
      v91[2] = sub_104B38;
      v91[3] = v432;
      v91[4] = sub_1038FC;
      v91[5] = v82;
      v91[6] = sub_104B38;
      v91[7] = v83;
      v91[8] = sub_104B38;
      v91[9] = v84;
      v91[10] = sub_1049F0;
      v91[11] = v86;
      v91[12] = sub_104B38;
      v91[13] = v87;
      v91[14] = sub_104B38;
      v91[15] = v88;
      v91[16] = sub_1049F0;
      v91[17] = v90;

      if (os_log_type_enabled(v427, v435))
      {
        v92 = *(v12 + 29528);
        v93 = sub_3A58C(32);
        v94 = swift_slowAlloc();
        sub_106ABC(770);
        v95 = sub_105734();
        sub_3A5A4(v95, v96, v97, v98);
        if (v92)
        {

          goto LABEL_104;
        }

        v161 = sub_105734();
        sub_3A5A4(v161, v162, v163, v164);

        v317 = sub_105734();
        sub_3A5A4(v317, v318, v319, v320);

        v330 = sub_105734();
        sub_3A5A4(v330, v331, v332, v333);

        v342 = sub_105734();
        sub_3A5A4(v342, v343, v344, v345);

        v352 = sub_105734();
        sub_3A5A4(v352, v353, v354, v355);

        v360 = sub_105734();
        sub_3A5A4(v360, v361, v362, v363);

        v368 = sub_105734();
        sub_3A5A4(v368, v369, v370, v371);

        v376 = sub_105734();
        sub_3A5A4(v376, v377, v378, v379);
        v380 = *(v12 + 29056);
        v381 = *(v12 + 28872);
        v382 = *(v12 + 28864);

        _os_log_impl(&def_259DC, v427, v435, "Entering .scheduleSelected case with value (scheduleID: %s), potentially medicationIDs: (%s), confirmationStatus: (%s)", v93, 0x20u);
        swift_arrayDestroy();
        sub_8A2C(v94);
        sub_3A5E0(v93);

        v131 = *(v381 + 8);
        v131(v380, v382);
        v132 = 0;
      }

      else
      {
        v129 = *(v12 + 29056);
        v130 = *(v12 + 28872);
        v436 = *(v12 + 28864);

        v131 = *(v130 + 8);
        v131(v129, v436);
        v132 = *(v12 + 29528);
      }

      *(v12 + 30232) = v131;
      *(v12 + 30224) = v132;
      sub_16DA3C();
      v133 = sub_16DA2C();
      *(v12 + 30240) = v133;
      sub_37750();

      v134 = getMedStatus(from:)();

      v135 = sub_DB27C(v134 & 1);
      sub_106D40(v135, "setMedStatus:");

      sub_10348C(v428, v439, v133);
      isa = v418;
      if (v418)
      {
        isa = sub_16E2BC().super.isa;
        v137 = isa;
      }

      else
      {
        v137 = 0;
      }

      sub_106D40(isa, "setMedicationIDs:");

      switch(v420)
      {
        case 3:
          v166 = sub_16E3BC(1).super.super.isa;
          sub_106D40(v166, "setConfirmedAsScheduled:");

          v167 = sub_16E3BC(0).super.super.isa;
          sub_106D40(v167, "setConfirmedAsNeeded:");

          v140 = 0;
          goto LABEL_60;
        case 5:
          v165 = 1;
          break;
        case 4:
          v138 = sub_16E3BC(1).super.super.isa;
          sub_106D40(v138, "setConfirmedAsScheduled:");

          v139 = sub_16E3BC(0).super.super.isa;
          sub_106D40(v139, "setConfirmedAsNeeded:");

          v140 = 1;
LABEL_60:
          v168 = sub_DB27C(v140);
          v169 = &selRef_setMedStatus_;
          goto LABEL_63;
        default:
          v165 = 0;
          break;
      }

      v170 = sub_16E3BC(v165).super.super.isa;
      sub_106D40(v170, "setConfirmedAsScheduled:");

      v168 = sub_16E3BC(0).super.super.isa;
      v169 = &selRef_setConfirmedAsNeeded_;
LABEL_63:
      v171 = *(v12 + 27984);
      [v133 *v169];

      *(v12 + 30248) = *(v171 + 352);
      *(v12 + 16) = v12;
      *(v12 + 56) = v12 + 27800;
      *(v12 + 24) = sub_F2344;
      v172 = swift_continuation_init();
      *(v12 + 20648) = sub_2440(&qword_1C9D18, &qword_176758);
      *(v12 + 20624) = v172;
      *(v12 + 20592) = _NSConcreteStackBlock;
      *(v12 + 20600) = 1107296256;
      sub_10660C();
      *(v12 + 20608) = v173;
      *(v12 + 20616) = &unk_1BBAC8;
      [swift_unknownObjectRetain() handleLogSpecificMedications:v133 completion:v12 + 20592];
      goto LABEL_99;
    case 2u:
      goto LABEL_28;
    case 3u:
      v66 = v29 | (v30 << 8);
      if (v26 | v25 | v24 | v27 | v28 | v31 | v32 | v66 || v33 != 192)
      {
        v99 = v33 == 192 && v24 == 7;
        if (!v99 || v26 | v25 | v27 | v28 | v31 | v32 | v66)
        {
LABEL_28:
          v440 = *(v12 + 28856);
          sub_106360();
          v115 = *(v12 + 27984);
          sub_10374C(v442, v12 + v116);

          sub_376FC(v442);
          sub_8284(v115 + 64, v12 + 1888);
          sub_6361C((v12 + 1888), (v12 + 1728));
          sub_82E0();
          sub_16C4EC();
          sub_8334(v12 + 1728);
          sub_105424();
          sub_103BA0(v16, v117);
          sub_8748(v14, &qword_1C5800, &unk_16F510);
          sub_8748(v440, &qword_1C69C0, &unk_174290);
          sub_104F9C();
          sub_1056B8();

          sub_105BE0();
          sub_8CC0();

          __asm { BRAA            X1, X16 }
        }

        v100 = *(v12 + 29512);
        v101 = *(v12 + 28864);

        sub_106F48();

        sub_106CBC();

        sub_1069B4();

        sub_106204(v102, v12 + 26936);
        v103 = sub_105C00();
        v100(v103);
        v104 = sub_16DBDC();
        sub_16E36C();
        sub_106A08();
        if (sub_10623C())
        {
          v105 = sub_3A58C(2);
          sub_105A28(v105);
          if (*(v101 + 16))
          {
            while (1)
            {
              v106 = sub_105734();
              sub_3A5A4(v106, v107, v108, v109);
              sub_1065A8();
            }
          }

          v110 = *(v12 + 28872);

          sub_105BB0(&def_259DC, v111, v112, "Received .rejectedConfirmation code, creating output.");
          sub_3A5E0(v105);

          v113 = *(v110 + 8);
          v114 = sub_1064C0();
          v113(v114);
        }

        else
        {
          v194 = *(v12 + 28872);

          v113 = *(v194 + 8);
          v195 = sub_C9F8();
          v113(v195);
        }

        *(v12 + 30584) = v113;
        sub_1069E4();
        *(v12 + 30592) = v113;
        sub_8AB4();
        sub_214C(v196, v197, v198, v199);

        v200 = swift_task_alloc();
        *(v12 + 30600) = v200;
        *v200 = v12;
        v200[1] = sub_FD4A0;
        _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
        sub_8CC0();

        return sub_166794();
      }

      v67 = *(v12 + 27984);
      sub_16DA3C();
      v68 = sub_16DA2C();
      *(v12 + 29688) = v68;
      sub_37750();

      v69 = getMedStatus(from:)();

      v70 = sub_DB27C(v69 & 1);
      sub_106DC4(v70, "setMedStatus:");

      v71 = *(v67 + 16);

      getUSOMedNames(from:)();
      sub_1068E8();

      if (v69)
      {
        sub_16E2BC();
        sub_456D0();
      }

      else
      {
        v71 = 0;
      }

      v147 = *(v12 + 29536);
      v148 = *(v12 + 28856);
      v149 = *(v12 + 28832);
      sub_106DC4(v72, "setMedicationIDs:");

      sub_86B0(v148, v149, &qword_1C69C0, &unk_174290);
      sub_8B20(v149, 1, v147);
      if (v99)
      {
        v150 = *(v12 + 28504);
        sub_8748(*(v12 + 28832), &qword_1C69C0, &unk_174290);
        sub_8AB4();
        sub_214C(v151, v152, v153, v150);
      }

      else
      {
        v154 = *(v12 + 28576);
        v155 = *(v12 + 28504);

        v156 = sub_C9C8();
        sub_86FC(v156, v157, v158, v159);
        sub_8B20(v154, 1, v155);
        if (!v160)
        {
          v202 = *(v12 + 28520);
          v203 = *(v12 + 28512);
          v204 = *(v12 + 28504);
          v205 = *(v12 + 28088);
          v206 = *(v12 + 28080);
          sub_86FC(*(v12 + 28576), v202, &qword_1C6990, &qword_1725A0);
          sub_86B0(v202, v203, &qword_1C6990, &qword_1725A0);
          v207 = *(v204 + 48);
          v208 = sub_16BEEC().super.isa;
          v209 = *(v205 + 8);
          v209(v203 + v207, v206);
          v210 = (v209)(v203, v206);
          sub_106DC4(v210, "setStartTime:");

          sub_86B0(v202, v203, &qword_1C6990, &qword_1725A0);
          v211 = *(v204 + 48);
          v212 = sub_16BEEC().super.isa;
          v209(v203 + v211, v206);
          v213 = (v209)(v203, v206);
          sub_106DC4(v213, "setEndTime:");

          v214 = v202;
          v215 = &qword_1C6990;
          v216 = &qword_1725A0;
          goto LABEL_73;
        }
      }

      v214 = *(v12 + 28576);
      v215 = &qword_1C89E8;
      v216 = &unk_1742E0;
LABEL_73:
      sub_8748(v214, v215, v216);
      v217 = *(v12 + 29536);
      v218 = *(v12 + 28824);
      sub_86B0(*(v12 + 28856), v218, &qword_1C69C0, &unk_174290);
      sub_8B20(v218, 1, v217);
      if (v99)
      {
        sub_8748(*(v12 + 28824), &qword_1C69C0, &unk_174290);
        v221 = 0;
      }

      else
      {
        v219 = *(v12 + 29536);
        v220 = *(v12 + 28824);

        v221 = *(v220 + *(v219 + 64));
        sub_8748(v220, &qword_1C89E8, &unk_1742E0);
      }

      v222 = *(v12 + 29512);
      v223 = *(v12 + 28864);
      v224 = sub_DB27C(v221);
      sub_106DC4(v224, "setHasMeridiem:");

      sub_106204(v225, v12 + 26384);
      v226 = sub_8427C();
      (v222)(v226);
      v227 = sub_16DBDC();
      sub_16E36C();
      v228 = sub_106A70();
      v441 = v68;
      if (os_log_type_enabled(v227, v223))
      {
        v229 = sub_3A58C(2);
        sub_105A28(v229);
        v230 = *(v228 + 16);
        v231 = *(v12 + 29528);
        for (i = 32; v230; --v230)
        {
          v233 = sub_105734();
          sub_3A5A4(v233, v234, v235, v236);
          i += 16;
        }

        v237 = *(v12 + 28872);

        sub_1063E8(&def_259DC, v238, v223, "Specific med request: checking for dosage and dosageUnit in task");
        sub_3A5E0(v229);

        v240 = *(v237 + 8);
        v222 = v237 + 8;
        v239 = v240;
        v241 = sub_38E50();
        v240(v241);
      }

      else
      {
        v242 = *(v12 + 28872);

        v239 = *(v242 + 8);
        v243 = sub_C9F8();
        v239(v243);
        v231 = *(v12 + 29528);
      }

      *(v12 + 29696) = v239;
      sub_106B28();
      v244 = getMedDosageValue(from:)();
      v246 = v245;

      v444 = v239;
      if ((v246 & 1) == 0)
      {
        sub_106F84();
        v247 = *(v12 + 29504);
        v248 = *(v12 + 29480);
        v249 = *(v12 + 28864);
        v250 = sub_FEFD4(*&v244);
        v251 = sub_106DC4(v250, "setDosage:");
        sub_106204(v251, v12 + 25856);
        (v239)(v248, v247, v249);
        sub_106F78();
        v252 = swift_allocObject();
        *(v252 + 16) = v250;
        v433 = v250;
        v253 = sub_16DBDC();
        v223 = sub_16E36C();
        sub_106420();
        v254 = swift_allocObject();
        *(v254 + 16) = 64;
        sub_106420();
        v255 = swift_allocObject();
        sub_106AF0(v255);
        sub_106264();
        v256 = swift_allocObject();
        *(v256 + 16) = sub_104B34;
        *(v256 + 24) = v252;
        sub_106264();
        v222 = swift_allocObject();
        *(v222 + 16) = sub_104B30;
        *(v222 + 24) = v256;
        v257 = sub_2440(&qword_1C9D10, &qword_176750);
        sub_106F30(v257);
        sub_61090();
        *v258 = sub_104B38;
        v258[1] = v254;
        v258[2] = sub_104B38;
        v258[3] = v255;
        v258[4] = sub_1049F4;
        v258[5] = v222;

        if (os_log_type_enabled(v253, v223))
        {
          v259 = sub_3A58C(12);
          v260 = sub_93228();
          sub_106ABC(258);
          v261 = sub_105734();
          sub_3A5A4(v261, v262, v263, v264);
          if (v231)
          {
LABEL_89:

            goto LABEL_102;
          }

          v265 = sub_105734();
          sub_3A5A4(v265, v266, v267, v268);

          v269 = sub_105734();
          sub_3A5A4(v269, v270, v271, v272);
          v273 = *(v12 + 29480);
          sub_106258();

          sub_107170(&def_259DC, v253, v223, "Specific med request: parsed dosage (%@) in task");
          sub_8748(v260, &qword_1C57B8, &qword_1715A0);
          sub_8A2C(v260);
          sub_3A5E0(v259);

          v274 = v273;
          v239 = v444;
          (v444)(v274, 0);
          v231 = 0;
        }

        else
        {
          v223 = *(v12 + 28872);

          v275 = sub_38E50();
          v239 = v444;
          v444(v275);
        }
      }

      sub_106B28();
      v276 = getMedDosageUnit(from:)();
      v278 = v277;

      if (v278)
      {
        v279 = *(v12 + 29512);
        sub_1035A8(v276, v278, v68);
        sub_106204(v280, v12 + 25952);
        v281 = sub_13298();
        v279(v281);
        sub_106264();
        v282 = swift_allocObject();
        *(v282 + 16) = v276;
        *(v282 + 24) = v278;

        v283 = sub_16DBDC();
        v284 = sub_16E36C();
        sub_106420();
        v285 = swift_allocObject();
        *(v285 + 16) = 32;
        v222 = v284;
        sub_106420();
        v286 = swift_allocObject();
        sub_106AF0(v286);
        sub_106264();
        v287 = swift_allocObject();
        *(v287 + 16) = sub_104B2C;
        *(v287 + 24) = v282;
        sub_106264();
        v288 = swift_allocObject();
        *(v288 + 16) = sub_104B28;
        *(v288 + 24) = v287;
        v289 = sub_2440(&qword_1C9D10, &qword_176750);
        sub_106F30(v289);
        sub_61090();
        *v290 = sub_104B38;
        v290[1] = v285;
        v290[2] = sub_104B38;
        v290[3] = v286;
        v290[4] = sub_1049F0;
        v290[5] = v288;

        if (os_log_type_enabled(v283, v222))
        {
          v291 = sub_3A58C(12);
          v292 = sub_CA30();
          sub_106ABC(258);
          v293 = sub_105734();
          sub_3A5A4(v293, v294, v295, v296);
          if (v231)
          {
            goto LABEL_89;
          }

          v321 = sub_105734();
          sub_3A5A4(v321, v322, v323, v324);

          v334 = sub_105734();
          sub_3A5A4(v334, v335, v336, v337);
          v346 = v292;
          v223 = *(v12 + 28872);

          _os_log_impl(&def_259DC, v283, v222, "Specific med request: parsed dosageUnit (%s) in task", v291, 0xCu);
          sub_2D64(v346);
          sub_8A2C(v346);
          sub_3A5E0(v291);

          v347 = sub_C9F8();
          v239 = v444;
          v444(v347);
          v231 = 0;
        }

        else
        {
          v222 = *(v12 + 28872);
          v223 = *(v12 + 28864);

          v297 = sub_106FE4();
          v239 = v444;
          v444(v297);
        }

        v68 = v441;
      }

      else
      {
      }

      sub_105A08();
      sub_38474();
      v298 = sub_105BF0();
      (v222)(v298);
      v299 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v300 = sub_3A58C(2);
        sub_105A28(v300);
        if (*(v223 + 16))
        {
          while (1)
          {
            v301 = sub_105734();
            sub_3A5A4(v301, v302, v303, v304);
            sub_1066E4();
          }
        }

        v305 = *(v12 + 29464);
        sub_106E50();
        sub_105AAC(&def_259DC, v306, v307, "Specific med request is being sent to intent handler for handling.");
        sub_3A5E0(v300);

        (v444)(v305, 32);
      }

      else
      {
        sub_10654C();

        v308 = sub_38E50();
        v239(v308);
      }

      *(v12 + 29704) = v231;
      *(v12 + 29712) = *(*(v12 + 27984) + 352);
      *(v12 + 144) = v12;
      *(v12 + 184) = v12 + 27920;
      *(v12 + 152) = sub_E0044;
      v309 = swift_continuation_init();
      *(v12 + 20584) = sub_2440(&qword_1C9D18, &qword_176758);
      *(v12 + 20560) = v309;
      *(v12 + 20528) = _NSConcreteStackBlock;
      *(v12 + 20536) = 1107296256;
      sub_10660C();
      *(v12 + 20544) = v310;
      *(v12 + 20552) = &unk_1BC298;
      [swift_unknownObjectRetain() handleLogSpecificMedications:v68 completion:v12 + 20528];
LABEL_99:
      sub_8CC0();

      return _swift_continuation_await(v311);
    default:
      v429 = *(v12 + 29512);
      v438 = v25;
      v426 = v33 & 0x3F;
      v34 = v26;
      v35 = v24;
      v414 = v32;
      sub_106204(v23, v12 + 26672);
      sub_106844();
      v429();
      sub_106AFC();
      v421 = swift_allocObject();
      *(v421 + 16) = v35;
      *(v421 + 24) = v438;
      v36 = sub_106454(v421);
      *(v36 + 64) = v31;
      *(v36 + 72) = v414;
      *(v36 + 80) = v426;
      sub_106AFC();
      v425 = swift_allocObject();
      *(v425 + 16) = v35;
      *(v425 + 24) = v438;
      v37 = sub_106454(v425);
      *(v37 + 64) = v31;
      *(v37 + 72) = v414;
      *(v37 + 80) = v426;
      sub_106AFC();
      v423 = swift_allocObject();
      *(v423 + 16) = v35;
      *(v423 + 24) = v438;
      v38 = sub_106454(v423);
      *(v38 + 64) = v31;
      *(v38 + 72) = v414;
      *(v38 + 80) = v426;
      sub_10374C(v442, v12 + 19312);
      sub_106AFC();
      v430 = swift_allocObject();
      *(v430 + 16) = v35;
      *(v430 + 24) = v438;
      v39 = sub_106454(v430);
      *(v39 + 64) = v31;
      *(v39 + 72) = v414;
      *(v39 + 80) = v426;
      sub_107188(19384);
      sub_106AFC();
      v409 = swift_allocObject();
      *(v409 + 16) = v35;
      *(v409 + 24) = v438;
      v417 = v34;
      v419 = v27;
      v40 = sub_106454(v409);
      *(v40 + 64) = v31;
      *(v40 + 72) = v414;
      *(v40 + 80) = v426;
      sub_107188(19456);
      memcpy((v12 + 19168), v442, 0x41uLL);
      *(v12 + 19232) &= 0x3Fu;
      sub_107188(19528);
      sub_107188(19600);
      sub_86B0(v12 + 19168, v12 + 19672, &qword_1C9D30, &qword_1767C8);
      oslog = sub_16DBDC();
      v410 = sub_16E36C();
      sub_106420();
      v416 = swift_allocObject();
      *(v416 + 16) = 32;
      sub_106420();
      v434 = swift_allocObject();
      sub_106AF0(v434);
      sub_106264();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_103D04;
      *(v41 + 24) = v421;
      sub_106264();
      v42 = swift_allocObject();
      *(v42 + 16) = sub_104B28;
      *(v42 + 24) = v41;
      v43 = v42;
      sub_106420();
      v44 = swift_allocObject();
      *(v44 + 16) = 32;
      v45 = v44;
      sub_106420();
      v437 = swift_allocObject();
      *(v437 + 16) = 8;
      sub_106264();
      v46 = swift_allocObject();
      *(v46 + 16) = sub_103D1C;
      *(v46 + 24) = v425;
      sub_106264();
      v47 = swift_allocObject();
      *(v47 + 16) = sub_104B28;
      *(v47 + 24) = v46;
      v48 = v47;
      sub_106420();
      v413 = swift_allocObject();
      *(v413 + 16) = 32;
      sub_106420();
      v49 = swift_allocObject();
      *(v49 + 16) = 8;
      sub_106264();
      v50 = swift_allocObject();
      *(v50 + 16) = sub_103D34;
      *(v50 + 24) = v423;
      sub_106264();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_104B28;
      *(v51 + 24) = v50;
      sub_106420();
      v424 = swift_allocObject();
      *(v424 + 16) = 32;
      sub_106420();
      v422 = swift_allocObject();
      *(v422 + 16) = 8;
      sub_106264();
      v52 = swift_allocObject();
      *(v52 + 16) = sub_103D4C;
      *(v52 + 24) = v430;
      sub_106264();
      v415 = swift_allocObject();
      *(v415 + 16) = sub_104B28;
      *(v415 + 24) = v52;
      sub_106420();
      v53 = swift_allocObject();
      *(v53 + 16) = 32;
      v54 = v53;
      sub_106420();
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v56 = v55;
      sub_106264();
      v57 = swift_allocObject();
      *(v57 + 16) = sub_103DA8;
      *(v57 + 24) = v409;
      sub_106264();
      v431 = swift_allocObject();
      *(v431 + 16) = sub_104B28;
      *(v431 + 24) = v57;
      *(v12 + 29976) = sub_2440(&qword_1C9D10, &qword_176750);
      swift_allocObject();
      sub_61090();
      *v58 = sub_104B38;
      v58[1] = v416;
      v58[2] = sub_104B38;
      v58[3] = v434;
      v58[4] = sub_1049F0;
      v58[5] = v43;
      v58[6] = sub_104B38;
      v58[7] = v45;
      v58[8] = sub_104B38;
      v58[9] = v437;
      v58[10] = sub_1049F0;
      v58[11] = v48;
      v58[12] = sub_104B38;
      v58[13] = v413;
      v58[14] = sub_104B38;
      v58[15] = v49;
      v58[16] = sub_1049F0;
      v58[17] = v51;
      v58[18] = sub_104B38;
      v58[19] = v424;
      v58[20] = sub_104B38;
      v58[21] = v422;
      v58[22] = sub_1049F0;
      v58[23] = v415;
      v58[24] = sub_104B38;
      v58[25] = v54;
      v58[26] = sub_104B38;
      v58[27] = v56;
      v58[28] = sub_1049F0;
      v58[29] = v431;

      if (!os_log_type_enabled(oslog, v410))
      {
        v120 = *(v12 + 29216);
        v121 = *(v12 + 28872);
        v411 = *(v12 + 28864);

        v122 = *(v121 + 8);
        v122(v120, v411);
        v123 = *(v12 + 29528);
LABEL_32:
        *(v12 + 29992) = v122;
        *(v12 + 29984) = v123;
        sub_16DA3C();
        v124 = sub_16DA2C();
        *(v12 + 30000) = v124;
        *(v12 + 30008) = sub_37750();
        sub_1071B8();
        v125 = getMedStatus(from:)();

        v126 = sub_DB27C(v125 & 1);
        sub_106D58(v126, "setMedStatus:");

        if (v438)
        {
          v127 = sub_16E1AC();
          v128 = v127;
        }

        else
        {
          v128 = 0;
        }

        sub_106D58(v127, "setScheduleID:");

        sub_103660(v124, &selRef_scheduleID);
        if (v141)
        {
        }

        else
        {
          v142 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v142, "setLogAsNeeded:");
        }

        if (v426 == 3)
        {
          v175 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v175, "setConfirmedAsScheduled:");

          v176 = sub_16E3BC(0).super.super.isa;
          sub_106D58(v176, "setConfirmedAsNeeded:");

          v178.super.super.isa = sub_DB27C(0);
          v179 = &selRef_setMedStatus_;
        }

        else if (v426 == 2)
        {
          v174 = sub_16E3BC(1).super.super.isa;
          sub_106D58(v174, "setConfirmedAsScheduled:");

          v178.super.super.isa = sub_16E3BC(0).super.super.isa;
          v179 = &selRef_setConfirmedAsNeeded_;
        }

        else
        {
          v177 = sub_16E3BC(v426 == 1).super.super.isa;
          sub_106D58(v177, "setConfirmedAsNeeded:");

          v178.super.super.isa = sub_16E3BC(0).super.super.isa;
          v179 = &selRef_setConfirmedAsScheduled_;
        }

        v180 = *(v12 + 27984);
        [v124 *v179];

        sub_2440(&qword_1C6828, &qword_1767D0);
        swift_allocObject();
        sub_61090();
        v182 = v181;
        memcpy((v12 + 19744), v442, 0x41uLL);
        *(v12 + 19808) &= 0x3Fu;
        sub_86B0(v12 + 19744, v12 + 19816, &qword_1C9D30, &qword_1767C8);

        *v182 = v417;
        v182[1] = v419;
        HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
        sub_1034E4(v183, v124);
        sub_C9294(v180 + 400, v12 + 21496);
        sub_2D20((v12 + 21496), *(v12 + 21520));
        v184 = swift_task_alloc();
        *(v12 + 30016) = v184;
        *v184 = v12;
        v184[1] = sub_EA4F8;
        sub_8CC0();

        return v189(v185, v186, v187, v188, v189, v190, v191, v192, a9, a10, a11, a12);
      }

      v59 = *(v12 + 29528);
      v60 = sub_3A58C(52);
      v61 = swift_slowAlloc();
      sub_106ABC(1282);
      v62 = sub_105734();
      sub_3A5A4(v62, v63, v64, v65);
      if (!v59)
      {

        v143 = sub_105734();
        sub_3A5A4(v143, v144, v145, v146);

        v313 = sub_105734();
        sub_3A5A4(v313, v314, v315, v316);

        v326 = sub_105734();
        sub_3A5A4(v326, v327, v328, v329);

        v338 = sub_105734();
        sub_3A5A4(v338, v339, v340, v341);

        v348 = sub_105734();
        sub_3A5A4(v348, v349, v350, v351);

        v356 = sub_105734();
        sub_3A5A4(v356, v357, v358, v359);

        v364 = sub_105734();
        sub_3A5A4(v364, v365, v366, v367);

        v372 = sub_105734();
        sub_3A5A4(v372, v373, v374, v375);

        v383 = sub_105734();
        sub_3A5A4(v383, v384, v385, v386);

        v387 = sub_105734();
        sub_3A5A4(v387, v388, v389, v390);

        v391 = sub_105734();
        sub_3A5A4(v391, v392, v393, v394);

        v395 = sub_105734();
        sub_3A5A4(v395, v396, v397, v398);

        v399 = sub_105734();
        sub_3A5A4(v399, v400, v401, v402);

        v403 = sub_105734();
        sub_3A5A4(v403, v404, v405, v406);
        v407 = *(v12 + 28872);

        _os_log_impl(&def_259DC, oslog, v410, "Entering .nameSelected case with value (scheduleID: %s), (medicationID: %s), strength (%s), strengthUnit (%s), confirmationStatus (%s", v60, 0x34u);
        swift_arrayDestroy();
        sub_8A2C(v61);
        sub_3A5E0(v60);

        v122 = *(v407 + 8);
        v408 = sub_13298();
        (v122)(v408);
        v123 = 0;
        goto LABEL_32;
      }

LABEL_102:

LABEL_104:

      sub_8CC0();
  }
}

uint64_t sub_E0044()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_E0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  v494 = v20;
  v495 = v21;
  sub_38664();
  v493 = v14;
  v22 = *(v14 + 27920);
  *(v14 + 29720) = v22;
  v23 = swift_unknownObjectRelease();
  v24 = (*(&stru_20.maxprot + (swift_isaMask & *v22)))(v23);
  switch(v24)
  {
    case 'e':
      v481 = v22;
      sub_1058C8();
      v25 = *(v14 + 29456);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v26 = sub_105C00();
      v19(v26);
      v27 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v28 = sub_3A58C(2);
        sub_105654(v28);
        if (v12)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v29 = *(v14 + 29696);
        sub_10669C();
        sub_105AAC(&def_259DC, v30, v31, "Received .requiresAuthorization, returning AskAuthorizationFlow");
        sub_3A5E0(v17);

        v32 = sub_C9F8();
        v29(v32);
      }

      else
      {
        v15 = *(v14 + 29696);
        sub_106258();

        v180 = sub_1058E8();
        v15(v180);
      }

      v181 = *(v14 + 29688);
      sub_105B60();
      v182 = *(v14 + 27984);
      sub_C9294(v182 + 24, v14 + 1152);
      sub_8284(v182 + 64, v14 + 1192);
      sub_789CC((v14 + 1352));
      v183 = sub_78A24();
      v184 = sub_78A50();
      *(v14 + 1144) = 88;
      *(v14 + 1392) = v183;
      *(v14 + 1400) = v184;
      sub_84F0();
      sub_16C4EC();

      sub_106900();
      sub_8544(v14 + 1144);
      goto LABEL_112;
    case 'f':
      goto LABEL_12;
    case 'g':
      sub_105C30();
      v79 = *(v14 + 27984);
      sub_10642C();
      if (v80)
      {
        m = v80;
      }

      else
      {
        m = 0xE700000000000000;
      }

      memcpy((v14 + 19096), (v79 + 224), 0x41uLL);
      *(v79 + 224) = 1;
      *(v79 + 232) = 0u;
      v81 = v79 + 232;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0u;
      *(v81 + 48) = 0;
      *(v81 + 56) = -64;
      sub_376FC(v14 + 19096);
      sub_10543C();
      v480 = v22;
      v84 = sub_103600(v22, v82, v83);
      if (v84)
      {
        v85 = v84;
        m = *(v14 + 29704);
        v86 = *(v14 + 27984);

        v478 = sub_DB600(v85, v86);
        v492 = &_swiftEmptySetSingleton;
        v87 = sub_3B35C(v85);
        for (i = 0; v87 != i; ++i)
        {
          v89 = sub_16BC94(v85);
          sub_3B360();
          if (v89)
          {
            v90 = v85[i + 4];
          }

          else
          {
            v90 = sub_16E48C();
          }

          v91 = v90;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_211;
          }

          v92 = v492;
          v93 = sub_103660(v90, &selRef_schedule);
          v95 = sub_FF684(v93, v94, v92);

          if (v95)
          {

            goto LABEL_167;
          }

          v96 = sub_103660(v91, &selRef_schedule);
          sub_102A30(&v483, v96, v97);
        }

LABEL_167:

        sub_1071B8();
        v395 = getLocalizedMedName(from:)();
        v397 = v396;

        if (v397)
        {
          v469 = *(v14 + 29688);
          v476 = *(v14 + 28856);
          v473 = *(v14 + 28816);
          v471 = *(v14 + 28568);
          v398 = *(v14 + 27984);
          sub_8284(v398 + 64, v14 + 5568);
          sub_C9294(v398 + 24, v14 + 22936);
          v399 = sub_3B35C(v478);
          sub_789CC(&v483);
          type metadata accessor for MedNameDisambiguationStrategy();
          swift_allocObject();
          v400 = sub_1C4B0((v14 + 5568), &v483, (v14 + 22936), v395, v397, v399, v87 != i);

          sub_16C73C();
          *(v14 + 27808) = sub_FF7AC(v478, v400, &v483);
          sub_FF924();
          v401 = sub_106AC8();
          sub_2440(v401, v402);
          sub_1066B8(&qword_1C9D50);
          sub_1069D8(27808);
          sub_16C4CC();

          sub_106900();

          sub_105424();
          sub_103BA0(v471, v403);
          sub_8748(v473, &qword_1C5800, &unk_16F510);
          v281 = v476;
          goto LABEL_169;
        }

        sub_105A08();
        v47 = *(v14 + 29376);

        sub_38474();
        v416 = sub_105BF0();
        (v85)(v416);
        v27 = sub_16DBDC();
        sub_16E37C();
        sub_106C68();
        v417 = sub_106530();
        v418 = *(v14 + 29696);
        if (v417)
        {
          v419 = sub_3A58C(2);
          sub_105690(v419);
          sub_1028F0(i, v420, v421, v422);

          sub_1062FC(&def_259DC, v423, v424, "Needed name disambiguation but unable to unwrap med name from task. Returning GenericErrorFlow");
          sub_3A5E0(v47);
        }

        else
        {
        }

        v460 = sub_387CC();
        v418(v460);
        v145 = *(v14 + 29688);
        v461 = sub_105674();
        sub_8284(v461, v14 + 5888);
        v147 = 6368;
LABEL_203:
        v149 = sub_106BC0();
LABEL_204:
        sub_6361C(v149, v148);
        sub_82E0();
        sub_16C4EC();

        sub_106900();
        v459 = v14 + v147;
        goto LABEL_205;
      }

      v345 = 6528;
      v346 = "/usr/lib/swift/libswiftCoreLocation.dylib";
      sub_1059C0();
      v354 = *(v14 + 29368);
      sub_1058F8();
      v355 = sub_38408();
      (v81)(v355);
      v27 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (!sub_106220())
      {
        v427 = *(v14 + 29696);
        v47 = *(v14 + 29368);
        goto LABEL_179;
      }

      v356 = sub_3A58C(2);
      sub_105654(v356);
      for (j = 32; v354; --v354)
      {
        sub_10599C(*(v81 + j));
        j += 16;
      }

      v351 = *(v14 + 29696);
      v47 = *(v14 + 29368);
      sub_10669C();
      sub_105AAC(&def_259DC, v358, v359, "Needed name disambiguation but intentResponse.matchingMeds was nil.");
      sub_3A5E0(v17);

      v345 = 6528;
      goto LABEL_150;
    case 'h':
      sub_1059D0();
      sub_105A3C();
      if (v73)
      {
        v74 = v72;
      }

      else
      {
        v74 = v70;
      }

      if (v71)
      {
        v75 = v71;
      }

      else
      {
        v75 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(2);
      sub_376FC(v14 + 18952);
      sub_105B70();
      v76 = sub_106194();
      v18(v76);
      v77 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v78 = sub_3A58C(2);
        sub_105654(v78);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v188 = *(v14 + 29696);
      sub_106258();

      v189 = sub_1058E8();
      v188(v189);
      v475 = *(v14 + 29704);
      v190 = sub_103600(v480, &selRef_matchingSchedules, &type metadata accessor for MatchedMedSchedule);
      if (v190)
      {
        m = v190;
        v492 = sub_3A690(0);
        v479 = sub_3B35C(m);
        for (k = 0; v479 != k; k = k + 1)
        {
          v192 = sub_16BC94(m);
          sub_3B360();
          if (v192)
          {
            v193 = *(m + 8 * k + 32);
          }

          else
          {
            v193 = sub_16E48C();
          }

          v194 = v193;
          if (__OFADD__(k, 1))
          {
LABEL_211:
            __break(1u);
            JUMPOUT(0xE3120);
          }

          v195 = sub_103660(v193, &selRef_scheduleID);
          if (!v196)
          {
            sub_106FF0();
LABEL_196:
            v446 = *(v14 + 29512);
            v47 = *(v14 + 29352);

            sub_38474();
            v447 = sub_8B9C();
            v446(v447);
            v448 = sub_16DBDC();
            v449 = sub_16E36C();
            v450 = sub_3A5EC(0);
            v451 = os_log_type_enabled(v448, v449);
            v452 = *(v14 + 29696);
            if (v451)
            {
              v453 = sub_3A58C(2);
              sub_105690(v453);
              m = v475;
              sub_1028F0(v450, v454, v455, v456);

              _os_log_impl(&def_259DC, v448, v449, "Missing fields while unpacking matchingScheduleObjects from intentResponse, returning GenericErrorFlow", v47, 2u);
              sub_3A5E0(v47);
            }

            else
            {
            }

            v457 = sub_105B50();
            v452(v457);
            v458 = *(v14 + 29688);
            v27 = *(v14 + 28856);
            sub_106360();
            sub_8284(*(v14 + 27984) + 64, v14 + 7488);
            v346 = (&stru_1E78 + 8);
            sub_6361C((v14 + 7488), (v14 + 7808));
            sub_82E0();
            sub_16C4EC();

            goto LABEL_200;
          }

          v197 = v195;
          v198 = v196;
          v199 = sub_103660(v194, &selRef_schedule);
          if (!v200)
          {
            sub_106FF0();
LABEL_195:

            m = v198;
            goto LABEL_196;
          }

          v201 = v199;
          v202 = v200;
          v203 = sub_103660(v194, &selRef_medName);
          if (!v204)
          {
            sub_106FF0();
LABEL_194:

            goto LABEL_195;
          }

          v205 = v203;
          v206 = v204;
          v207 = sub_103660(v194, &selRef_remainingMedCount);
          if (!v208)
          {
            sub_106FF0();

            goto LABEL_194;
          }

          *&v485 = v197;
          *(&v485 + 1) = v198;
          v486 = v201;
          v487 = v202;
          v488 = v205;
          v489 = v206;
          v490 = v207;
          v491 = v208;
          sub_DB4B4(&v485);
        }

        v437 = *(v14 + 29688);
        v477 = *(v14 + 28856);
        v474 = *(v14 + 28816);
        v472 = *(v14 + 28568);
        v438 = *(v14 + 27984);

        type metadata accessor for MedScheduleDisambiguationStrategy();
        sub_8284(v438 + 64, v14 + 7328);
        sub_C9294(v438 + 24, v14 + 23136);
        sub_789CC(&v483);
        sub_AAC28((v14 + 7328), &v483, (v14 + 23136));

        sub_16C73C();
        v439 = sub_1070E4();
        *(v14 + 27832) = sub_FF868(v439, v440, v441);
        sub_FF964();
        v442 = sub_106AC8();
        sub_2440(v442, v443);
        sub_1066B8(&qword_1C9D40);
        sub_1069D8(27832);
        sub_1069F0();
        sub_16C4CC();

        sub_106900();

LABEL_116:

        sub_105424();
        sub_103BA0(v472, v280);
        sub_8748(v474, &qword_1C5800, &unk_16F510);
        v281 = v477;
LABEL_169:
        sub_8748(v281, &qword_1C69C0, &unk_174290);
LABEL_170:
      }

      else
      {
        v345 = 7968;
        v346 = &loc_2100;
        sub_105A08();
        sub_38474();
        v347 = sub_105BF0();
        v75(v347);
        v27 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v348 = sub_3A58C(2);
          sub_105858(v348);
          v349 = *(v74 + 16);
          v350 = 32;
          for (m = v475; v349; --v349)
          {
            sub_10599C(*(v74 + v350));
            v350 += 16;
          }

          v351 = *(v14 + 29696);
          v47 = *(v14 + 29344);
          sub_10669C();
          sub_105AAC(&def_259DC, v352, v353, "Needed schedule disambiguation but intentResponse.matchingSchedules was nil.");
          sub_3A5E0(v348);

          v345 = 7968;
LABEL_150:
          v360 = sub_C9F8();
          v351(v360);
        }

        else
        {
          v427 = *(v14 + 29696);
          v47 = *(v14 + 29344);
LABEL_179:
          sub_106258();

          v428 = sub_1058E8();
          v427(v428);
        }

        v429 = *(v14 + 29688);
        v430 = sub_105674();
        sub_8284(v430, v14 + v345);
        sub_6361C((v14 + v345), &v346[v14]);
        sub_82E0();
        sub_16C4EC();

LABEL_200:
        sub_106900();

        v459 = &v346[v14];
LABEL_205:
        sub_8334(v459);
        sub_105424();
        sub_103BA0(m, v462);
        v261 = v47;
LABEL_206:
        sub_8748(v261, &qword_1C5800, &unk_16F510);
        sub_8748(v27, &qword_1C69C0, &unk_174290);
      }

      sub_1053F0();
      sub_105CB8();

      sub_C9BC();
      sub_106574();

      return v463();
    case 'i':
      sub_1058C8();
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v63 = sub_105C00();
      v19(v63);
      v64 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v65 = sub_3A58C(2);
        sub_105858(v65);
        sub_106C14();
        if (v17)
        {
          while (1)
          {
            sub_10599C(*(v22 + v15));
            sub_1065A8();
          }
        }

        v66 = *(v14 + 29696);
        sub_106404();
        sub_105BB0(&def_259DC, v67, v68, "Received failure intent response, creating output.");
        sub_3A5E0(v65);

        v69 = sub_105B00();
        v66(v69);
      }

      else
      {
        v185 = *(v14 + 29696);
        v12 = *(v14 + 29400);
        sub_106258();

        v186 = sub_1058E8();
        v185(v186);
      }

      sub_1069E4();
      *(v14 + 29832) = v64;

      getLocalizedMedName(from:)();
      sub_106EF8();
      if (v12)
      {
        sub_8427C();
        sub_16E23C();

        v187 = 0;
      }

      else
      {
        v187 = 1;
      }

      sub_214C(*(v14 + 28760), v187, 1, *(v14 + 28528));
      sub_FF3F0();
      v343 = swift_task_alloc();
      *(v14 + 29840) = v343;
      *v343 = v14;
      v343[1] = sub_E5D10;
      sub_C98D8(*(v14 + 28760));
      sub_106574();

      return sub_1678C4();
    case 'j':
      sub_1059D0();
      sub_105A3C();
      if (v103)
      {
        v104 = v103;
      }

      else
      {
        v104 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(4);
      sub_376FC(v14 + 18808);
      sub_105B70();
      v105 = sub_106194();
      v18(v105);
      v106 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v107 = sub_3A58C(2);
        sub_105654(v107);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v230 = *(v14 + 29696);
      sub_106258();

      v231 = sub_1058E8();
      v230(v231);
      m = *(v14 + 29704);
      sub_10543C();
      v234 = sub_103600(v480, v232, v233);
      if (v234)
      {
        v235 = v234;

        v236 = getLocalizedMedName(from:)();
        v238 = v237;

        if (v238)
        {
          sub_105930();
          v468 = v236;

          v467 = getMedStatus(from:)();

          sub_8284((v22 + 8), v14 + 8768);
          v239 = sub_105618();
          v466 = sub_FFA7C(v239, &CATWrapperSimple.__allocating_init(options:globals:));
          v240 = sub_105600();
          v465 = sub_FFA7C(v240, &CATWrapper.__allocating_init(options:globals:));
          sub_789CC((v14 + 23416));
          type metadata accessor for LogMedAsScheduledConfirmationStrategy();
          v241 = swift_allocObject();
          v242 = *(v14 + 23440);
          v243 = *(v14 + 23448);
          v244 = sub_37BE8(v14 + 23416, v242);
          v245 = *(v242 - 8);
          v246 = sub_8BC0();
          (*(v245 + 16))(v246, v244, v242);
          v247 = sub_98AFC(v468, v238, v467 & 1, v235, (v14 + 8768), v466, v465, v246, v241, v242, v243);
          sub_2D64((v14 + 23416));

          sub_16C73C();
          sub_1060FC();
          *(v14 + 27864) = sub_DB30C(v247, &v483, v248, v249, type metadata accessor for LogMedAsScheduledConfirmationStrategy, &unk_1748A0);
          sub_FF9A4();
          sub_1070A8();
          v250 = sub_387CC();
          sub_2440(v250, v251);
          sub_1055E8();
          sub_98C8(v252, &qword_1C67A8, &qword_171CC0, v253);
          sub_106844();
          sub_16C4CC();

          sub_106900();

          goto LABEL_116;
        }

        v404 = *(v14 + 29520);
        v405 = *(v14 + 29512);
        v47 = *(v14 + 29328);

        sub_1B9B4(v406, v14 + 26552);
        v407 = sub_105BF0();
        v405(v407);
        v27 = sub_16DBDC();
        sub_16E37C();
        sub_106C68();
        sub_106530();
        v408 = *(v14 + 29696);
        sub_106CEC();
        if (v409)
        {
          v410 = sub_3A58C(2);
          sub_105690(v410);
          sub_1028F0(v404, v411, v412, v413);

          sub_1062FC(&def_259DC, v414, v415, "Needed confirmation log as scheduled but unable to unwrap med name from task. Returning GenericErrorFlow");
          sub_3A5E0(v47);
        }

        else
        {
        }

        v444 = sub_387CC();
        v408(v444);
        v145 = *(v14 + 29688);
        v445 = sub_105674();
        sub_8284(v445, v14 + 8928);
        v147 = 9408;
      }

      else
      {
        sub_105A08();
        v47 = *(v14 + 29320);
        sub_38474();
        v370 = sub_105BF0();
        v104(v370);
        v27 = sub_16DBDC();
        sub_16E36C();
        sub_106C68();
        sub_106530();
        v371 = *(v14 + 29696);
        sub_106CEC();
        if (v372)
        {
          v373 = sub_3A58C(2);
          sub_105690(v373);
          sub_1028F0(v22, v374, v375, v376);

          sub_1062FC(&def_259DC, v377, v378, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
          sub_3A5E0(v47);
        }

        else
        {
        }

        v433 = sub_387CC();
        v371(v433);
        v145 = *(v14 + 29688);
        v434 = sub_105674();
        sub_8284(v434, v14 + 9568);
        v147 = 9728;
      }

      goto LABEL_203;
    case 'k':
      sub_1059D0();
      sub_105A3C();
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        v99 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(3);
      sub_376FC(v14 + 18664);
      sub_105B70();
      v100 = sub_106194();
      v18(v100);
      v101 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v102 = sub_3A58C(2);
        sub_105654(v102);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v209 = *(v14 + 29696);
      sub_106258();

      v210 = sub_1058E8();
      v209(v210);
      m = *(v14 + 29704);
      sub_10543C();
      v161 = v480;
      if (sub_103600(v480, v211, v212))
      {
        sub_105930();
        sub_1070C0();
        type metadata accessor for LogMedAsNeededConfirmationStrategy();
        sub_8284((v22 + 8), v14 + 10048);
        v213 = sub_105618();
        sub_FFA7C(v213, &CATWrapperSimple.__allocating_init(options:globals:));
        v214 = sub_105600();
        sub_FFA7C(v214, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(&v483);
        v215 = sub_106B88();
        v220 = sub_143FF8(v215, v216, v217, v218, v219);

        sub_16C73C();
        sub_106650();
        *(v14 + 27896) = sub_DB30C(v220, &v483, v221, v222, type metadata accessor for LogMedAsNeededConfirmationStrategy, &unk_179CF0);
        sub_FF9E4();
        sub_1070B4();
        v223 = sub_106AC8();
        sub_2440(v223, v224);
        sub_1055E8();
        sub_106B7C();
        sub_98C8(v225, v226, v227, v228);
        goto LABEL_106;
      }

      sub_105A08();
      v47 = *(v14 + 29304);
      sub_38474();
      v361 = sub_105BF0();
      v99(v361);
      v27 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      sub_106530();
      v362 = *(v14 + 29696);
      sub_106CEC();
      if (v363)
      {
        v364 = sub_3A58C(2);
        sub_105690(v364);
        sub_1028F0(v22, v365, v366, v367);

        sub_1062FC(&def_259DC, v368, v369, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        sub_3A5E0(v47);
      }

      else
      {
      }

      v431 = sub_387CC();
      v362(v431);
      v145 = *(v14 + 29688);
      v432 = sub_105674();
      sub_8284(v432, v14 + 10208);
      v147 = 10368;
      goto LABEL_203;
    case 'l':
      sub_1059C0();
      v125 = *(v14 + 29280);
      sub_1058F8();
      v126 = sub_38408();
      v16(v126);
      v127 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v128 = v22;
        v129 = sub_3A58C(2);
        sub_105654(v129);
        if (v125)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v130 = *(v14 + 29696);
        sub_10669C();
        sub_105AAC(&def_259DC, v131, v132, "SpecificMedLoggingFlow received .statusBothSkipped intent response, creating output.");
        sub_3A5E0(v17);

        v133 = sub_C9F8();
        v130(v133);
        v22 = v128;
      }

      else
      {
        v282 = *(v14 + 29696);
        sub_106258();

        v283 = sub_1058E8();
        v282(v283);
      }

      v284 = *(v14 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v285, v286);
      v287 = 1;
      sub_16C7AC();
      *(v14 + 29888) = *(v284 + 336);

      sub_10543C();
      v290 = sub_103600(v22, v288, v289);
      if (v290)
      {
        v291 = sub_9AE60(v290);

        if (v291 && (sub_146C80(v291), v292))
        {
          sub_16E23C();

          v287 = 0;
        }

        else
        {
          v287 = 1;
        }
      }

      sub_214C(*(v14 + 28752), v287, 1, *(v14 + 28528));
      v332 = swift_task_alloc();
      *(v14 + 29896) = v332;
      *v332 = v14;
      v332[1] = sub_E7098;
      sub_C98D8(*(v14 + 28752));
      sub_106574();

      return sub_1683D0();
    case 'm':
      sub_1059D0();
      sub_105A3C();
      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0xE700000000000000;
      }

      sub_106AA0();
      sub_105748(5);
      sub_376FC(v14 + 18592);
      sub_105B70();
      v60 = sub_106194();
      v18(v60);
      v61 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v62 = sub_3A58C(2);
        sub_105654(v62);
        while (1)
        {
          sub_105958();
          sub_1066E4();
        }
      }

      v159 = *(v14 + 29696);
      sub_106258();

      v160 = sub_1058E8();
      v159(v160);
      m = *(v14 + 29704);
      sub_10543C();
      v161 = v480;
      if (!sub_103600(v480, v162, v163))
      {
        sub_105A08();
        v47 = *(v14 + 29288);
        sub_38474();
        v334 = sub_105BF0();
        v59(v334);
        v27 = sub_16DBDC();
        sub_16E36C();
        sub_106C68();
        sub_106530();
        v335 = *(v14 + 29696);
        sub_106CEC();
        if (v336)
        {
          v337 = sub_3A58C(2);
          sub_105690(v337);
          sub_1028F0(v22, v338, v339, v340);

          sub_1062FC(&def_259DC, v341, v342, "Needed confirmation update to status but intentResponse.matchingMeds was nil.");
          sub_3A5E0(v47);
        }

        else
        {
        }

        v425 = sub_387CC();
        v335(v425);
        v145 = *(v14 + 29688);
        v426 = sub_105674();
        sub_8284(v426, v14 + 10848);
        v147 = 11008;
        goto LABEL_203;
      }

      sub_105930();
      sub_1070C0();
      type metadata accessor for MedUpdateLogStatusStrategy();
      sub_8284((v22 + 8), v14 + 10688);
      v164 = sub_105618();
      sub_FFA7C(v164, &CATWrapperSimple.__allocating_init(options:globals:));
      v165 = sub_105600();
      sub_FFA7C(v165, &CATWrapper.__allocating_init(options:globals:));
      sub_789CC(&v483);
      v166 = sub_106B88();
      v171 = sub_143FF8(v166, v167, v168, v169, v170);

      sub_16C73C();
      sub_106668();
      *(v14 + 27928) = sub_DB30C(v171, &v483, v172, v173, type metadata accessor for MedUpdateLogStatusStrategy, &unk_178328);
      sub_FFAF8();
      sub_1070B4();
      v174 = sub_106AC8();
      sub_2440(v174, v175);
      sub_1055E8();
      sub_106B7C();
      sub_98C8(v176, v177, v178, v179);
LABEL_106:
      sub_106E2C();

      sub_106900();

      sub_105424();
      sub_103BA0(v472, v229);
      sub_8748(v474, &qword_1C5800, &unk_16F510);
      sub_8748(v477, &qword_1C69C0, &unk_174290);
      goto LABEL_170;
    case 'n':
      v480 = v22;
      v114 = *(v14 + 29600);
      v115 = *(v14 + 29576);
      v116 = *(v14 + 29512);
      v117 = *(v14 + 29504);
      m = *(v14 + 29240);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v118 = sub_105C00();
      v116(v118);
      v119 = sub_16DBDC();
      sub_16E36C();
      sub_10699C();
      if (sub_106220())
      {
        v120 = sub_3A58C(2);
        sub_105654(v120);
        v115 = 32;
        if (v117)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v121 = *(v14 + 29696);
        sub_106600();

        sub_105AAC(&def_259DC, v122, v123, "SpecificMedLoggingFlow received .needsConfirmMixedLogging in intent response, creating confirmation.");
        sub_3A5E0(v114);

        v124 = sub_1063DC();
        v121(v124, 32);
      }

      else
      {
        v262 = *(v14 + 29696);
        sub_106258();

        v263 = sub_1058E8();
        v262(v263);
        m = *(v14 + 29704);
      }

      memcpy((v14 + 19024), (*(v14 + 27984) + 224), 0x41uLL);
      sub_106934();
      sub_10543C();
      v266 = sub_103600(v480, v264, v265);
      if (v266)
      {
        v267 = v266;
        sub_105930();

        v268 = getMedStatus(from:)();

        sub_DB530(&v483);
        v269 = sub_105618();
        v270 = sub_FFA7C(v269, &CATWrapperSimple.__allocating_init(options:globals:));
        v271 = sub_105600();
        v272 = sub_FFA7C(v271, &CATWrapper.__allocating_init(options:globals:));
        sub_789CC(v484);
        type metadata accessor for LogMedScheduleMixedStatusConfirmationStrategy();
        swift_allocObject();
        v273 = sub_68120(v268 & 1, v267, &v483, v270, v272, v484);

        sub_16C73C();
        *(v14 + 27936) = sub_DB3B4(v273, &v483);
        sub_FFB38();
        sub_1070B4();
        v274 = sub_106AC8();
        sub_2440(v274, v275);
        sub_1055E8();
        sub_106B7C();
        sub_98C8(v276, v277, v278, v279);
        sub_106E2C();

        sub_106900();

        goto LABEL_116;
      }

      sub_105A08();
      v47 = *(v14 + 29232);
      sub_38474();
      v379 = sub_105BF0();
      v114(v379);
      v27 = sub_16DBDC();
      sub_16E36C();
      sub_106C68();
      sub_106530();
      v380 = *(v14 + 29696);
      sub_106CEC();
      if (v381)
      {
        v382 = sub_3A58C(2);
        sub_105690(v382);
        sub_1028F0(v115, v383, v384, v385);

        sub_1062FC(&def_259DC, v386, v387, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
        sub_3A5E0(v47);
      }

      else
      {
      }

      v435 = sub_387CC();
      v380(v435);
      v145 = *(v14 + 29688);
      v436 = sub_105674();
      sub_8284(v436, v14 + 12448);
      v147 = 12608;
      goto LABEL_203;
    case 'o':
      sub_1059C0();
      sub_1058F8();
      v51 = sub_38408();
      v16(v51);
      v52 = sub_16DBDC();
      sub_16E36C();
      sub_106A08();
      if (sub_10623C())
      {
        v53 = sub_3A58C(2);
        sub_105858(v53);
        sub_106C14();
        if (v17)
        {
          while (1)
          {
            sub_10599C(*(v22 + v15));
            sub_1065A8();
          }
        }

        v54 = *(v14 + 29696);
        sub_106404();
        sub_105BB0(&def_259DC, v55, v56, "SpecificMedLoggingFlow received .allMedsLoggedAlready in intent response, creating output.");
        sub_3A5E0(v53);

        v57 = sub_105B00();
        v54(v57);
      }

      else
      {
        v150 = *(v14 + 29696);
        sub_106258();

        v151 = sub_1058E8();
        v150(v151);
      }

      v152 = *(v14 + 27984);
      sub_16C45C();
      sub_37FFC();
      sub_106DDC(v153, v154);
      sub_16C7AC();
      *(v14 + 29936) = *(v152 + 336);

      getMedStatus(from:)();

      swift_task_alloc();
      sub_179E8();
      *(v14 + 29944) = v155;
      *v155 = v156;
      sub_106FA4(v155);
      sub_106574();

      return sub_16746C();
    case 'p':
      v482 = v22;
      sub_1058C8();
      v25 = *(v14 + 29432);
      sub_106120();

      sub_1069C0();

      sub_106730();

      sub_1061A4();
      v108 = sub_105C00();
      v19(v108);
      v27 = sub_16DBDC();
      sub_16E37C();
      sub_10699C();
      if (sub_106220())
      {
        v109 = sub_3A58C(2);
        sub_105654(v109);
        if (v12)
        {
          while (1)
          {
            sub_105958();
            sub_1066E4();
          }
        }

        v110 = *(v14 + 29696);
        sub_10669C();
        sub_105AAC(&def_259DC, v111, v112, "Received gotComplexDosageLoggingError, creating output.");
        sub_3A5E0(v17);

        v113 = sub_C9F8();
        v110(v113);
      }

      else
      {
        v15 = *(v14 + 29696);
        sub_106258();

        v254 = sub_1058E8();
        v15(v254);
      }

      v255 = *(v14 + 29688);
      sub_105B60();
      v256 = *(v14 + 27984);
      v257 = *(v256 + 16);
      sub_8284(v256 + 64, v14 + 216);
      sub_C9294(v256 + 24, v14 + 376);

      sub_789CC((v14 + 424));
      v258 = sub_87C00();
      v259 = sub_87C2C();
      sub_309A0((v14 + 480));
      *(v14 + 208) = v257;
      *(v14 + 416) = 0;
      *(v14 + 464) = v258;
      *(v14 + 472) = v259;
      sub_87F90();
      sub_16C4EC();

      sub_106900();
      sub_A9C4C(v14 + 208);
LABEL_112:
      sub_105424();
      sub_103BA0(v15, v260);
      v261 = v25;
      goto LABEL_206;
    default:
      if (v24 == 4)
      {
        sub_1059C0();
        v134 = *(v14 + 29448);
        sub_1058F8();
        v135 = sub_38408();
        v16(v135);
        v136 = sub_16DBDC();
        sub_16E36C();
        sub_10699C();
        if (sub_106220())
        {
          v137 = v22;
          v138 = sub_3A58C(2);
          sub_105654(v138);
          if (v134)
          {
            while (1)
            {
              sub_105958();
              sub_1066E4();
            }
          }

          v139 = *(v14 + 29696);
          sub_10669C();
          sub_105AAC(&def_259DC, v140, v141, "Received successful intent response, creating output.");
          sub_3A5E0(v17);

          v142 = sub_C9F8();
          v139(v142);
          v22 = v137;
        }

        else
        {
          v293 = *(v14 + 29696);
          sub_106258();

          v294 = sub_1058E8();
          v293(v294);
        }

        sub_10543C();
        v297 = sub_103600(v22, v295, v296);
        if (!v297)
        {
          v297 = sub_3A600(0);
        }

        v298 = *(v14 + 28528);
        v299 = *(v14 + 28496);
        v300 = *(v14 + 28472);
        v301 = *(v14 + 27984);
        sub_102308(v297);

        v302 = v22;
        sub_456D0();

        v303 = sub_C9C8();
        sub_FF05C(v303, v304);
        v305 = (v299 + *(v300 + 36));
        v306 = *v305;
        *(v14 + 29728) = *v305;
        v307 = *(v305 + 8);
        *(v14 + 17794) = v307;
        sub_8AB4();
        sub_214C(v308, v309, v310, v298);
        if ((v307 & 1) == 0)
        {
          v311 = *(v14 + 28528);
          sub_2440(&qword_1C8C78, &unk_1747C0);
          swift_allocObject();
          sub_61090();
          v312[3] = &type metadata for Double;
          v312[4] = &protocol witness table for Double;
          *v312 = v306;
          HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
          sub_106A50(v313);
          sub_16E23C();

          v314 = sub_106FE4();
          sub_8748(v314, v315, &unk_16F510);
          sub_388E4();
          sub_214C(v316, v317, v318, v311);
          v319 = sub_8427C();
          sub_86FC(v319, v320, &qword_1C5800, &unk_16F510);
        }

        v321 = *(v14 + 28792);
        v322 = *(v14 + 28496);
        v323 = *(v14 + 28472);
        *(v14 + 29736) = *(*(v14 + 27984) + 336);
        sub_86B0(v322 + *(v323 + 24), v321, &qword_1C5800, &unk_16F510);
        sub_106B7C();
        sub_86B0(v324, v325, v326, &unk_16F510);

        sub_103660(v301, &selRef_dosageUnit);
        if (v327)
        {
          sub_16E23C();

          v328 = 0;
        }

        else
        {
          v328 = 1;
        }

        v388 = *(v14 + 28496);
        v389 = *(v14 + 28472);
        sub_214C(*(v14 + 28776), v328, 1, *(v14 + 28528));
        LOBYTE(v388) = *(v388 + *(v389 + 44));
        v390 = swift_task_alloc();
        *(v14 + 29744) = v390;
        *v390 = v14;
        v390[1] = sub_E3150;
        v391 = *(v14 + 28776);
        v497 = v388;
        v496 = v391;
        sub_8CC0();

        return sub_167D00();
      }

      else
      {
        if (v24 != 5)
        {
LABEL_12:
          v480 = v22;
          v40 = *(v14 + 29600);
          v41 = *(v14 + 29512);
          v42 = *(v14 + 29504);
          m = *(v14 + 29224);
          sub_106120();

          sub_1069C0();

          sub_1069B4();

          sub_1061A4();
          v43 = sub_105C00();
          v41(v43);
          v27 = sub_16DBDC();
          sub_16E36C();
          sub_10699C();
          if (sub_106220())
          {
            v44 = sub_3A58C(2);
            sub_105654(v44);
            for (n = 32; v42; --v42)
            {
              sub_10599C(*(n + 26216));
              n += 16;
            }

            v46 = *(v14 + 29696);
            v47 = *(v14 + 29224);
            sub_10669C();
            sub_105AAC(&def_259DC, v48, v49, "Intent response code was not an expected one or is one we're not handling yet, returning nil output.");
            sub_3A5E0(v40);

            v50 = sub_C9F8();
            v46(v50);
          }

          else
          {
            v143 = *(v14 + 29696);
            v47 = *(v14 + 29224);
            sub_106258();

            v144 = sub_1058E8();
            v143(v144);
          }

          v145 = *(v14 + 29688);
          v146 = sub_105674();
          sub_8284(v146, v14 + 1408);
          v147 = 13088;
          v148 = (v14 + 13088);
          v149 = (v14 + 1408);
          goto LABEL_204;
        }

        sub_1058C8();
        sub_106120();

        sub_1069C0();

        sub_106730();

        sub_1061A4();
        v33 = sub_105C00();
        v19(v33);
        v34 = sub_16DBDC();
        sub_16E37C();
        sub_106A08();
        if (sub_10623C())
        {
          v35 = sub_3A58C(2);
          sub_105858(v35);
          sub_106C14();
          if (v17)
          {
            while (1)
            {
              sub_10599C(*(v22 + v15));
              sub_1065A8();
            }
          }

          v36 = *(v14 + 29696);
          sub_106404();
          sub_105BB0(&def_259DC, v37, v38, "Received failure intent response, creating output.");
          sub_3A5E0(v35);

          v39 = sub_105B00();
          v36(v39);
        }

        else
        {
          v329 = *(v14 + 29696);
          v12 = *(v14 + 29424);
          sub_106258();

          v330 = sub_1058E8();
          v329(v330);
        }

        sub_1069E4();
        *(v14 + 29776) = v34;

        getLocalizedMedName(from:)();
        sub_106EF8();
        if (v12)
        {
          sub_8427C();
          sub_16E23C();

          v331 = 0;
        }

        else
        {
          v331 = 1;
        }

        sub_1071A0(*(v14 + 28768), v331);
        v393 = swift_task_alloc();
        *(v14 + 29784) = v393;
        *v393 = v14;
        v393[1] = sub_E4994;
        sub_C98D8(*(v14 + 28768));
        sub_106574();

        return sub_167658();
      }
  }
}