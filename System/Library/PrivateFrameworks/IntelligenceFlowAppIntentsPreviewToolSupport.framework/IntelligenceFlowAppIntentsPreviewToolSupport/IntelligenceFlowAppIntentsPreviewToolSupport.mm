uint64_t PreviewTool.generatePlan(utterance:)()
{
  sub_254E590B4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_254E5DDF8();
  v0[4] = v3;
  sub_254E59014(v3);
  v0[5] = v4;
  v0[6] = sub_254E59084();
  v5 = type metadata accessor for PreviewToolError(0);
  v0[7] = v5;
  sub_254E5903C(v5);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v6 = sub_254E57458(&qword_27F754D50, &qword_254E5E528);
  v0[10] = v6;
  sub_254E5903C(v6);
  v0[11] = sub_254E59084();
  v7 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  sub_254E5903C(v7);
  v0[12] = sub_254E59084();
  v8 = sub_254E57458(&qword_27F754D60, &qword_254E5E538);
  sub_254E5903C(v8);
  v0[13] = sub_254E59084();
  v9 = sub_254E57458(&qword_27F754D68, &qword_254E5E540);
  sub_254E5903C(v9);
  v0[14] = sub_254E59084();
  v10 = sub_254E57458(&qword_27F754D70, &qword_254E5E548);
  sub_254E5903C(v10);
  v0[15] = sub_254E59084();
  v11 = sub_254E57458(&qword_27F754D78, &qword_254E5E550);
  sub_254E5903C(v11);
  v0[16] = sub_254E59084();
  v12 = sub_254E5DB18();
  v0[17] = v12;
  sub_254E59014(v12);
  v0[18] = v13;
  v0[19] = *(v14 + 64);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v15 = sub_254E5DDA8();
  v0[23] = v15;
  sub_254E59014(v15);
  v0[24] = v16;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v17 = sub_254E5DB98();
  v0[27] = v17;
  sub_254E59014(v17);
  v0[28] = v18;
  v0[29] = sub_254E59084();
  sub_254E5909C();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_254E567DC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  sub_254E5DB78();
  sub_254E5DB88();
  sub_254E5DD98();
  sub_254E5DC18();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_254E5DBE8();
  v0[30] = v5;
  v6 = v5;
  v7 = sub_254E5DC08();
  v0[31] = v7;
  v8 = v0[21];
  v49 = v7;
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
  sub_254E5DB08();
  sub_254E5DAE8();
  v12 = *(v9 + 8);
  v0[32] = v12;
  v0[33] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v10);
  v13 = *MEMORY[0x277D1CE88];
  v14 = sub_254E5DD18();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  sub_254E590A8();
  sub_254E574A0(v15, v16, v17, v14);
  sub_254E5DC38();
  sub_254E5DC48();
  sub_254E590A8();
  sub_254E574A0(v18, v19, v20, v21);
  sub_254E5DD38();
  sub_254E5DD48();
  sub_254E590A8();
  sub_254E574A0(v22, v23, v24, v25);
  sub_254E5DD28();
  sub_254E5DD58();
  sub_254E590A8();
  sub_254E574A0(v26, v27, v28, v29);
  sub_254E5DBD8();
  v30 = v0[22];
  v32 = v0[19];
  v31 = v0[20];
  v33 = v0[17];
  v34 = v0[18];
  v35 = v0[12];
  v50 = v0[3];
  v48 = v0[2];
  sub_254E58F24(v0[16], &qword_27F754D78, &qword_254E5E550);

  v36 = sub_254E5E1C8();
  sub_254E574A0(v35, 1, 1, v36);
  (*(v34 + 16))(v31, v30, v33);
  v37 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v38 = (v32 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v6;
  (*(v34 + 32))(&v39[v37], v31, v33);
  v40 = &v39[v38];
  *v40 = v48;
  *(v40 + 1) = v50;
  *&v39[(v38 + 23) & 0xFFFFFFFFFFFFFFF8] = v49;

  v41 = sub_254E587B4(0, 0, v35, &unk_254E5E560, v39);
  v0[34] = v41;
  v42 = swift_task_alloc();
  v0[35] = v42;
  v43 = sub_254E57458(&qword_27F754D80, &qword_254E5E568);
  *v42 = v0;
  v42[1] = sub_254E56CF8;
  v45 = v0[10];
  v44 = v0[11];
  v46 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v44, v41, v45, v43, v46);
}

uint64_t sub_254E56CF8()
{
  sub_254E590B4();
  v2 = *v1;
  sub_254E59074();
  *v3 = v2;
  *(v4 + 288) = v0;

  sub_254E5909C();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254E56DFC()
{
  v1 = v0[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[8];
    v2 = v0[9];
    sub_254E58A44(v1, v2);
    sub_254E5DDD8();
    sub_254E58AA8(v2, v3);
    v4 = sub_254E5DDE8();
    v5 = sub_254E5E1E8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[8];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_254E58FCC();
      sub_254E58F84(v10, v11, &protocol conformance descriptor for PreviewToolError);
      swift_allocError();
      sub_254E58AA8(v7, v12);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      sub_254E58B0C(v7);
      *(v8 + 4) = v13;
      *v9 = v13;
      _os_log_impl(&dword_254E55000, v4, v5, "Error: %@", v8, 0xCu);
      sub_254E58F24(v9, &qword_27F754D90, qword_254E5E570);
      MEMORY[0x259C2AE50](v9, -1, -1);
      MEMORY[0x259C2AE50](v8, -1, -1);
    }

    else
    {

      sub_254E58B0C(v7);
    }

    v23 = v0[32];
    v24 = v0[22];
    v25 = v0[17];
    v26 = v0[9];
    (*(v0[5] + 8))(v0[6], v0[4]);
    sub_254E58FCC();
    sub_254E58F84(v27, v28, &protocol conformance descriptor for PreviewToolError);
    swift_allocError();
    sub_254E58AA8(v26, v29);
    swift_willThrow();

    sub_254E58B0C(v26);
    v23(v24, v25);
    (*(v0[24] + 8))(v0[26], v0[23]);
    v30 = sub_254E59054();
    v31(v30);

    sub_254E59048();

    return v32();
  }

  else
  {
    v34 = v0[32];
    v14 = v0[29];
    v15 = v0[28];
    v16 = v0[26];
    v35 = v0[27];
    v17 = v0[24];
    v33 = v0[23];
    v18 = v0[22];
    v19 = v0[17];

    v34(v18, v19);
    (*(v17 + 8))(v16, v33);
    (*(v15 + 8))(v14, v35);
    v20 = *v1;

    v21 = v0[1];

    return v21(v20);
  }
}

uint64_t sub_254E572CC()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[17];

  v1(v2, v3);
  (*(v0[24] + 8))(v0[26], v0[23]);
  v4 = sub_254E59054();
  v5(v4);

  sub_254E59048();

  return v6();
}

uint64_t sub_254E57458(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254E574C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = sub_254E5DC88();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_254E5DC68();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = sub_254E5DD88();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();
  sub_254E57458(&qword_27F754DA0, qword_254E5E5E8);
  v8[18] = swift_task_alloc();
  v12 = sub_254E5DCE8();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v13 = sub_254E5DCB8();
  v8[22] = v13;
  v8[23] = *(v13 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v14 = sub_254E5DB18();
  v8[26] = v14;
  v8[27] = *(v14 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v15 = sub_254E5DD08();
  v8[30] = v15;
  v8[31] = *(v15 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254E57814);
}

uint64_t sub_254E57814()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 40);
  v16 = *(v0 + 248);
  v6 = *(v4 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  sub_254E5DB08();
  sub_254E5DAE8();
  v7 = *(v4 + 8);
  *(v0 + 288) = v7;
  *(v0 + 296) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);

  sub_254E5DC98();
  sub_254E5DCF8();
  sub_254E5DBF8();
  v8 = *(v0 + 264);
  v9 = *(v0 + 240);

  v10 = *(v16 + 8);
  *(v0 + 304) = v10;
  *(v0 + 312) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v8, v9);
  sub_254E5DCD8();
  *(v0 + 336) = *MEMORY[0x277D1C8B8];
  *(v0 + 340) = *MEMORY[0x277D1C888];
  *(v0 + 344) = *MEMORY[0x277D1C860];
  sub_254E59024();
  sub_254E58F84(v11, v12, MEMORY[0x277D1CD90]);
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v14 = sub_254E58FE4(v13);

  return MEMORY[0x282200308](v14);
}

uint64_t sub_254E57AE0()
{
  sub_254E590B4();
  v2 = *v1;
  sub_254E59074();
  *v3 = v2;
  *(v4 + 328) = v0;

  sub_254E5909C();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254E57BE4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  if (sub_254E58EFC(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 24);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v4 = sub_254E5DB48();
    sub_254E574A0(v3, 1, 1, v4);
    sub_254E57458(&qword_27F754D50, &qword_254E5E528);
LABEL_3:
    swift_storeEnumTagMultiPayload();

    sub_254E59048();
LABEL_23:

    return v5();
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  (*(*(v0 + 128) + 32))(*(v0 + 136), v1, v2);
  sub_254E5DD78();
  v9 = sub_254E5DAF8();
  v6(v7, v8);
  if (v9)
  {
    v10 = *(v0 + 336);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 176);
    sub_254E5DD68();
    v14 = (*(v12 + 88))(v11, v13);
    if (v14 == v10)
    {
      v15 = *(v0 + 328);
      v16 = *(v0 + 128);
      sub_254E5DBC8();
      v17 = *(v16 + 8);
      if (v15)
      {
        v18 = *(v0 + 184);
        v19 = *(v0 + 192);
        v21 = *(v0 + 168);
        v20 = *(v0 + 176);
        v22 = *(v0 + 152);
        v23 = *(v0 + 160);
        v17(*(v0 + 136), *(v0 + 120));
        (*(v23 + 8))(v21, v22);
        (*(v18 + 8))(v19, v20);
        goto LABEL_22;
      }
    }

    else
    {
      if (v14 == *(v0 + 340))
      {
        v71 = *(v0 + 272);
        v77 = *(v0 + 328);
        v24 = *(v0 + 232);
        v25 = *(v0 + 200);
        v69 = *(v0 + 208);
        v26 = *(v0 + 184);
        v27 = *(v0 + 192);
        v28 = *(v0 + 176);
        v29 = *(v0 + 104);
        v30 = *(v0 + 112);
        v31 = *(v0 + 96);
        v32 = *(v0 + 40);
        (*(v26 + 96))(v27, v28);
        (*(v29 + 32))(v30, v27, v31);
        v71(v24, v32, v69);
        sub_254E5DCA8();
        (*(v26 + 104))(v25, *MEMORY[0x277D1C8C0], v28);
        sub_254E5909C();
        sub_254E5DCF8();
        sub_254E5DBF8();
        v33 = *(v0 + 304);
        v34 = *(v0 + 256);
        v35 = *(v0 + 240);
        v36 = *(v0 + 160);
        v74 = *(v0 + 152);
        v75 = *(v0 + 168);
        v37 = *(v0 + 128);
        v38 = *(v0 + 112);
        v72 = *(v0 + 120);
        v73 = *(v0 + 136);
        v39 = *(v0 + 104);
        v70 = *(v0 + 96);
        if (v77)
        {
          v33(v34, v35);
        }

        else
        {

          v33(v34, v35);
          type metadata accessor for PreviewToolError(0);
          sub_254E58FCC();
          sub_254E58F84(v61, v62, &protocol conformance descriptor for PreviewToolError);
          swift_allocError();
          sub_254E5DC58();
          sub_254E5DB48();
          sub_254E590A8();
          sub_254E574A0(v63, v64, v65, v66);
          swift_willThrow();
        }

        (*(v39 + 8))(v38, v70);
        (*(v37 + 8))(v73, v72);
        (*(v36 + 8))(v75, v74);
        goto LABEL_22;
      }

      if (v14 == *(v0 + 344))
      {
        v40 = *(v0 + 328);
        v41 = *(v0 + 192);
        v42 = *(v0 + 160);
        v44 = *(v0 + 80);
        v43 = *(v0 + 88);
        v45 = *(v0 + 72);
        (*(*(v0 + 184) + 96))(v41, *(v0 + 176));
        (*(v44 + 32))(v43, v41, v45);
        sub_254E5DBC8();
        v46 = (v44 + 8);
        v47 = (v42 + 8);
        v76 = *(v0 + 168);
        v48 = *(v0 + 152);
        v50 = *(v0 + 128);
        v49 = *(v0 + 136);
        v51 = *(v0 + 120);
        v52 = *(v0 + 88);
        v53 = *(v0 + 72);
        if (!v40)
        {
          v67 = *(v0 + 24);
          v78 = sub_254E5DC78();
          (*v46)(v52, v53);
          (*(v50 + 8))(v49, v51);
          (*v47)(v76, v48);
          *v67 = v78;
          sub_254E57458(&qword_27F754D50, &qword_254E5E528);
          goto LABEL_3;
        }

        (*v46)(v52, v53);
        (*(v50 + 8))(v49, v51);
        (*v47)(v76, v48);
LABEL_22:
        sub_254E59064();

        sub_254E59048();
        goto LABEL_23;
      }

      v17 = *(*(v0 + 128) + 8);
    }

    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v56 = *(v0 + 176);
    v17(*(v0 + 136), *(v0 + 120));
    (*(v55 + 8))(v54, v56);
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  sub_254E59024();
  sub_254E58F84(v57, v58, MEMORY[0x277D1CD90]);
  v59 = swift_task_alloc();
  *(v0 + 320) = v59;
  *v59 = v0;
  v60 = sub_254E58FE4(v59);

  return MEMORY[0x282200308](v60);
}

uint64_t sub_254E582FC()
{
  sub_254E590B4();
  *(v0 + 16) = *(v0 + 328);
  sub_254E57458(&qword_27F754D80, &qword_254E5E568);
  swift_willThrowTypedImpl();
  sub_254E5909C();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254E58388()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_254E59064();

  sub_254E59048();

  return v1();
}

uint64_t sub_254E58488()
{
  v1 = sub_254E5DB18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_254E58584(uint64_t a1)
{
  v3 = v2;
  v5 = sub_254E5DB18();
  sub_254E59014(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = (v1 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_254E586D0;

  return sub_254E574C8(a1, v11, v12, v13, v1 + v7, v15, v16, v17);
}

uint64_t sub_254E586D0()
{
  sub_254E590B4();
  v1 = *v0;
  sub_254E59074();
  *v2 = v1;

  sub_254E59048();

  return v3();
}

uint64_t sub_254E587B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_254E58E8C(a3, v21 - v9);
  v11 = sub_254E5E1C8();
  v12 = sub_254E58EFC(v10, 1, v11);

  if (v12 == 1)
  {
    sub_254E58F24(v10, &qword_27F754D58, &qword_254E5E530);
  }

  else
  {
    sub_254E5E1B8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_254E5E198();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_254E5E178() + 32;

      sub_254E57458(&qword_27F754D50, &qword_254E5E528);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);

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

  sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);
  sub_254E57458(&qword_27F754D50, &qword_254E5E528);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_254E58A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewToolError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewToolError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58B0C(uint64_t a1)
{
  v2 = type metadata accessor for PreviewToolError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254E58B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  v9 = sub_254E5903C(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_254E58E8C(a3, v22 - v10);
  v12 = sub_254E5E1C8();
  v13 = sub_254E58EFC(v11, 1, v12);

  if (v13 == 1)
  {
    sub_254E58F24(v11, &qword_27F754D58, &qword_254E5E530);
  }

  else
  {
    sub_254E5E1B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254E5E198();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254E5E178() + 32;

      sub_254E57458(&qword_27F754D98, &qword_254E5E5E0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);

      return v20;
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

  sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);
  sub_254E57458(&qword_27F754D98, &qword_254E5E5E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

__n128 sub_254E58DF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254E58E00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_254E58E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254E58E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58F24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254E57458(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_254E58F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254E59084()
{

  return swift_task_alloc();
}

uint64_t static ResponseGenerationPreviewTool.preview(responseManifest:toolDefinition:toolId:)()
{
  sub_254E590B4();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = sub_254E57458(&qword_27F754DB0, &qword_254E5E628);
  sub_254E5903C(v6);
  v0[22] = sub_254E5D91C();
  v0[23] = swift_task_alloc();
  v7 = sub_254E5DB18();
  v0[24] = v7;
  sub_254E5903C(v7);
  v0[25] = sub_254E59084();
  v8 = sub_254E5DE18();
  v0[26] = v8;
  sub_254E59014(v8);
  v0[27] = v9;
  v0[28] = sub_254E59084();
  v10 = sub_254E57458(&qword_27F754DB8, &qword_254E5E630);
  sub_254E5903C(v10);
  v0[29] = sub_254E59084();
  v11 = sub_254E5DED8();
  sub_254E5903C(v11);
  v0[30] = sub_254E59084();
  v12 = sub_254E5DB68();
  v0[31] = v12;
  sub_254E59014(v12);
  v0[32] = v13;
  v0[33] = sub_254E5D91C();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v14 = sub_254E5DF78();
  v0[36] = v14;
  sub_254E59014(v14);
  v0[37] = v15;
  v0[38] = sub_254E59084();
  v16 = sub_254E57458(&qword_27F754DC0, &qword_254E5E638);
  sub_254E5903C(v16);
  v0[39] = sub_254E59084();
  v17 = sub_254E5E118();
  sub_254E5903C(v17);
  v0[40] = sub_254E59084();
  v18 = sub_254E5DCC8();
  v0[41] = v18;
  sub_254E59014(v18);
  v0[42] = v19;
  v0[43] = sub_254E5D91C();
  v0[44] = swift_task_alloc();
  v20 = sub_254E5DC28();
  v0[45] = v20;
  sub_254E59014(v20);
  v0[46] = v21;
  v0[47] = sub_254E59084();
  v22 = sub_254E57458(&qword_27F754DC8, &qword_254E5E640);
  sub_254E5903C(v22);
  v0[48] = sub_254E5D91C();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v23 = sub_254E57458(&qword_27F754DD0, &unk_254E5E648);
  sub_254E5903C(v23);
  v0[51] = sub_254E59084();
  v24 = sub_254E5DB38();
  v0[52] = v24;
  sub_254E59014(v24);
  v0[53] = v25;
  v0[54] = sub_254E59084();
  v26 = sub_254E5DDC8();
  sub_254E5903C(v26);
  v0[55] = sub_254E59084();
  v27 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  sub_254E5903C(v27);
  v0[56] = sub_254E59084();
  v28 = sub_254E5E068();
  v0[57] = v28;
  sub_254E59014(v28);
  v0[58] = v29;
  v0[59] = sub_254E5D91C();
  v0[60] = swift_task_alloc();
  sub_254E5909C();

  return MEMORY[0x2822009F8](v30);
}

void sub_254E59534()
{
  v1 = sub_254E5E0C8();
  v2 = sub_254E5E0B8();
  v3 = v0[60];
  v31 = v0[59];
  v4 = v0[58];
  v5 = v0[56];
  v30 = v0[57];
  v6 = v0[19];
  v7 = MEMORY[0x277D1E9C8];
  v0[10] = v1;
  v0[11] = v7;
  v0[7] = v2;
  v8 = v3;
  sub_254E5ABAC((v0 + 7), (v0 + 12));
  sub_254E5E138();
  sub_254E5E098();
  sub_254E5BAA4();
  sub_254E5E158();
  sub_254E5E148();
  sub_254E5E158();
  sub_254E5BAFC();
  sub_254E57458(&qword_27F754DE8, &qword_254E5E658);
  v9 = sub_254E5E0A8();
  sub_254E5D854();
  v11 = v10;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_254E5E600;
  (*(v11 + 16))(v13 + v12, v6, v9);
  sub_254E5E058();
  sub_254E5DF38();
  sub_254E5DF18();
  sub_254E5E1C8();
  sub_254E5D8F8();
  sub_254E574A0(v14, v15, v16, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_254E58B68(0, 0, v5, &unk_254E5E668, v18);
  sub_254E5DF08();
  sub_254E5DB08();
  v0[61] = sub_254E5DF28();
  sub_254E5DE38();
  (*(v4 + 16))(v31, v8, v30);
  v0[62] = sub_254E5DE28();
  sub_254E5DE78();

  sub_254E5DE58();
  v0[63] = sub_254E5DE48();
  sub_254E5DB28();
  sub_254E5DF48();
  sub_254E5D8F8();
  sub_254E574A0(v19, v20, v21, v22);
  sub_254E5D8F8();
  sub_254E574A0(v23, v24, v25, v26);
  sub_254E5DE68();
  v27 = swift_task_alloc();
  v0[64] = v27;
  *v27 = v0;
  v27[1] = sub_254E59A54;
  sub_254E5D948();

  __asm { BR              X6 }
}

uint64_t sub_254E59A54()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = v2[54];
  v4 = v2[53];
  v5 = v2[52];
  v6 = v2[51];
  v7 = v2[50];
  (*(v2[46] + 8))(v2[47], v2[45]);
  sub_254E5D7A4(v7, &qword_27F754DC8, &qword_254E5E640);
  sub_254E5D7A4(v6, &qword_27F754DD0, &unk_254E5E648);
  (*(v4 + 8))(v3, v5);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_254E59C74()
{
  v1 = v0[48];
  v37 = v0[65];
  v38 = v0[49];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v30 = v0[35];
  v33 = v0[32];
  v34 = v0[33];
  v35 = v0[31];
  v8 = v0[29];
  v36 = v0[38];
  v31 = v0[24];
  v32 = v0[18];
  sub_254E5E108();
  sub_254E5DBA8();
  sub_254E5D8F8();
  sub_254E574A0(v9, v10, v11, v12);
  MEMORY[0x259C2A5C0](v7, 0, v6);
  (*(v5 + 104))(v3, *MEMORY[0x277D1CBF0], v4);
  sub_254E57458(&qword_27F754DF0, &qword_254E5E670);
  v13 = sub_254E5DEA8();
  sub_254E59014(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_254E5E600;
  sub_254E5D8F8();
  sub_254E574A0(v15, v16, v17, v31);
  sub_254E5909C();
  sub_254E5DB58();
  sub_254E5D744(v38, v1, &qword_27F754DC8, &qword_254E5E640);
  (*(v5 + 16))(v2, v3, v4);
  sub_254E5D744(v32, v8, &qword_27F754DB8, &qword_254E5E630);

  sub_254E5DEC8();
  sub_254E5909C();
  sub_254E5DB58();
  (*(v33 + 16))(v34, v30, v35);
  sub_254E5DE98();
  (*(v33 + 8))(v30, v35);
  sub_254E5D7A4(v38, &qword_27F754DC8, &qword_254E5E640);
  sub_254E5AFD8(v14, v36);
  if (v37)
  {
    v39 = v0[60];
    v18 = v0[57];
    v19 = v0[58];
    v20 = v0[44];
    v22 = v0[41];
    v21 = v0[42];

    (*(v21 + 8))(v20, v22);
    (*(v19 + 8))(v39, v18);
    sub_254E5BC34(v0 + 7);

    sub_254E59048();

    return v23();
  }

  else
  {
    v25 = v0[49];
    v26 = v0[24];

    sub_254E5DB08();
    sub_254E5DB08();
    sub_254E574A0(v25, 0, 1, v26);
    sub_254E5DE08();
    v40 = (*MEMORY[0x277D1D6C0] + MEMORY[0x277D1D6C0]);
    v27 = swift_task_alloc();
    v0[66] = v27;
    *v27 = v0;
    v27[1] = sub_254E5A1DC;
    v28 = v0[38];
    v29 = v0[28];

    return v40(v28, v29);
  }
}

uint64_t sub_254E5A1DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254E59074();
  *v6 = v5;
  v7 = v4[27];
  *v6 = *v2;
  v5[67] = v1;

  v8 = v4[28];
  v9 = v4[26];
  if (!v1)
  {
    v5[68] = a1;
  }

  (*(v7 + 8))(v8, v9);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v10);
}

void sub_254E5A35C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  sub_254E5B3FC(*(v0 + 544), v1);

  sub_254E5D744(v1, v2, &qword_27F754DB0, &qword_254E5E628);
  v3 = sub_254E5E048();
  v4 = sub_254E58EFC(v2, 1, v3);
  v5 = *(v0 + 480);
  if (v4 == 1)
  {
    v6 = *(v0 + 464);
    v30 = *(v0 + 352);
    v31 = *(v0 + 456);
    v7 = *(v0 + 336);
    v8 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = *(v0 + 328);
    v27 = *(v0 + 288);
    v26 = *(v0 + 184);
    sub_254E5D7A4(*(v0 + 176), &qword_27F754DB0, &qword_254E5E628);
    sub_254E5DEB8();
    sub_254E5BC80();
    swift_allocError();
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);
    *v11 = *(v0 + 16);
    *(v11 + 16) = v10;
    *(v11 + 32) = v9;
    swift_willThrow();

    sub_254E5D7A4(v26, &qword_27F754DB0, &qword_254E5E628);
    (*(v8 + 8))(v28, v27);
    (*(v7 + 8))(v30, v29);
    (*(v6 + 8))(v5, v31);
  }

  else
  {
    v12 = *(v0 + 464);
    v25 = *(v0 + 456);
    v13 = *(v0 + 336);
    v20 = *(v0 + 328);
    v21 = *(v0 + 352);
    v22 = *(v0 + 480);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = *(v0 + 184);
    v23 = *(v0 + 136);
    v24 = *(v0 + 176);

    sub_254E5D7A4(v17, &qword_27F754DB0, &qword_254E5E628);
    (*(v14 + 8))(v15, v16);
    (*(v13 + 8))(v21, v20);
    (*(v12 + 8))(v22, v25);
    (*(*(v3 - 8) + 32))(v23, v24, v3);
  }

  sub_254E5BC34((v0 + 56));

  sub_254E59048();
  sub_254E5D948();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_254E5A87C()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];

  (*(v3 + 8))(v1, v2);
  sub_254E5BC34(v0 + 7);
  sub_254E5D868(v0[65]);

  sub_254E59048();

  return v4();
}

uint64_t sub_254E5A9F4()
{
  v1 = v0[58];
  v10 = v0[57];
  v11 = v0[60];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[36];

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v11, v10);
  sub_254E5BC34(v0 + 7);
  sub_254E5D868(v0[67]);

  sub_254E59048();

  return v8();
}

uint64_t sub_254E5ABAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254E5AC10(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_254E5E0E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254E5ACD0);
}

uint64_t sub_254E5ACD0()
{
  sub_254E590B4();
  sub_254E5E0D8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_254E5AD6C;
  v2 = *(v0 + 40);

  return MEMORY[0x2821DADB0](v2);
}

uint64_t sub_254E5AD6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254E59074();
  *v6 = v5;
  *v6 = *v2;
  v5[7] = v1;

  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  if (!v1)
  {
    v5[8] = a1;
  }

  (*(v8 + 8))(v7, v9);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_254E5AEE8(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v3 = v2;
  v3[1] = OpaqueTypeConformance2;

  sub_254E59048();

  return v5();
}

uint64_t sub_254E5AF7C()
{
  sub_254E590B4();

  sub_254E59048();

  return v0();
}

uint64_t sub_254E5AFD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_254E5DEF8();
  sub_254E5D854();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  sub_254E5D8D8();
  v37 = v7 - v6;
  v8 = sub_254E5E038();
  sub_254E5D854();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  sub_254E5D8D8();
  v13 = v12 - v11;
  v47 = sub_254E5DB18();
  sub_254E5D854();
  v40 = v14;
  MEMORY[0x28223BE20](v15);
  sub_254E5D8D8();
  v18 = v17 - v16;
  v19 = sub_254E5DFF8();
  v20 = sub_254E5903C(v19);
  MEMORY[0x28223BE20](v20);
  sub_254E5D8D8();
  sub_254E5DB08();
  v46 = v18;
  sub_254E5DFD8();
  v49 = a2;
  sub_254E5DF68();
  v21 = *(a1 + 16);
  if (v21)
  {
    v45 = sub_254E5DEA8();
    sub_254E5D8E8();
    v23 = *(v22 + 16);
    v22 += 16;
    v44 = v23;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v43 = *(v22 + 56);
    v42 = *MEMORY[0x277D1E798];
    do
    {
      v44(v13, v24, v45);
      (*(v41 + 104))(v13, v42, v8);
      v25 = sub_254E5DF58();
      sub_254E5909C();
      sub_254E5B4A4(v26, v27, v28, v29);
      (*(v41 + 8))(v13, v8);
      (*(v40 + 8))(v46, v47);
      v25(v48, 0);
      v24 += v43;
      --v21;
    }

    while (v21);
  }

  sub_254E5DEE8();
  (*(v38 + 16))(v13, v37, v39);
  (*(v41 + 104))(v13, *MEMORY[0x277D1E838], v8);
  v30 = v8;
  v31 = sub_254E5DF58();
  sub_254E5909C();
  sub_254E5B4A4(v32, v33, v34, v35);
  (*(v41 + 8))(v13, v30);
  (*(v40 + 8))(v46, v47);
  v31(v48, 0);
  return (*(v38 + 8))(v37, v39);
}

uint64_t sub_254E5B3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254E5E048();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254E574A0(a2, v7, 1, v6);
}

uint64_t sub_254E5B4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v49 = a4;
  v6 = sub_254E5E088();
  MEMORY[0x28223BE20](v6 - 8);
  v44 = sub_254E5E038();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254E57458(&qword_27F754DC8, &qword_254E5E640);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v41 - v11;
  v12 = sub_254E5DB18();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v41 - v16;
  v17 = sub_254E57458(&qword_27F754DB0, &qword_254E5E628);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_254E5E048();
  v51 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](a3);
  v45 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v48 = v20;
  v50 = v15;
  if (v23)
  {
    v42 = a2;
    v43 = v23;
  }

  else
  {
    v41 = 0;
    v26 = sub_254E5DFC8();
    sub_254E5B9DC(v26, v19);

    if (sub_254E58EFC(v19, 1, v20) == 1)
    {
      sub_254E5D7A4(v19, &qword_27F754DB0, &qword_254E5E628);
      v42 = 49;
      v43 = 0xE100000000000000;
    }

    else
    {
      v27 = v51;
      (*(v51 + 32))(v25, v19, v20);
      v42 = sub_254E5E008();
      v43 = v28;
      (*(v27 + 8))(v25, v20);
    }
  }

  sub_254E5DB08();
  sub_254E5DFE8();
  v29 = v46;
  sub_254E5DB08();
  sub_254E574A0(v29, 0, 1, v12);
  (*(v7 + 16))(v9, v47, v44);
  v47 = sub_254E5DF88();
  v44 = v30;
  sub_254E5DFA8();
  sub_254E5DF98();
  sub_254E5E078();
  sub_254E5DE88();
  sub_254E5D7FC();
  sub_254E5E158();
  v31 = v45;
  sub_254E5E028();
  v32 = sub_254E5DFB8();
  v34 = v33;
  sub_254E5C0B8();
  v35 = *(*v34 + 16);
  sub_254E5C104(v35);
  v36 = *v34;
  *(v36 + 16) = v35 + 1;
  v37 = v51;
  v38 = v36 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v35;
  v39 = v48;
  (*(v51 + 16))(v38, v31, v48);
  v32(v53, 0);
  sub_254E5DFE8();
  return (*(v37 + 8))(v31, v39);
}

uint64_t sub_254E5B9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_254E5E048();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_254E5E048();
    v7 = a2;
    v8 = 1;
  }

  return sub_254E574A0(v7, v8, 1, v9);
}

unint64_t sub_254E5BAA4()
{
  result = qword_27F754DD8;
  if (!qword_27F754DD8)
  {
    sub_254E5E138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DD8);
  }

  return result;
}

unint64_t sub_254E5BAFC()
{
  result = qword_27F754DE0;
  if (!qword_27F754DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DE0);
  }

  return result;
}

uint64_t sub_254E5BB50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254E5BB88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254E586D0;

  return sub_254E5AC10(a1);
}

uint64_t sub_254E5BC34(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_254E5BC80()
{
  result = qword_27F754DF8;
  if (!qword_27F754DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationPreviewTool(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationPreviewTool(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254E5BDC8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_254E5BE00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254E5BE14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_254E5BE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_254E5BF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_254E5E258();
  sub_254E5E188();
  v6 = sub_254E5E268();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_254E5E208();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void *sub_254E5C0B8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_254E5C144(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_254E5C104(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_254E5C144((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_254E5C144(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_254E5C230(v8, v7);
  v10 = *(sub_254E5E048() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254E5C32C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_254E5C230(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254E57458(&qword_27F754E28, &unk_254E5E760);
  v4 = *(sub_254E5E048() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254E5C32C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_254E5E048(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_254E5E048();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_254E5C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = swift_bridgeObjectRetain_n();
  if (v10 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](v12);
    sub_254E5C5D8(0, v11, v22 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));

    sub_254E5D904();
    v13 = a4();
    if (v5)
    {
      swift_willThrow();
    }

    else
    {
      a2 = v13;
    }

    goto LABEL_5;
  }

  v15 = swift_slowAlloc();

  sub_254E5D904();
  v21 = sub_254E5D24C(v16, v17, v18, v19, v20, a5);
  if (!v5)
  {
    a2 = v21;
  }

  MEMORY[0x259C2AE50](v15, -1, -1);
LABEL_5:
  swift_bridgeObjectRelease_n();

  return a2;
}

uint64_t sub_254E5C5D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254E5E610;
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

uint64_t sub_254E5C63C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v71 = a4;
  v66 = a2;
  v67 = a1;
  v88 = sub_254E57458(&qword_27F754E10, &qword_254E5E750);
  v6 = MEMORY[0x28223BE20](v88);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v87 = sub_254E5E098();
  v11 = *(v87 - 8);
  MEMORY[0x28223BE20](v87 - 8);
  v86 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254E5E138();
  result = MEMORY[0x28223BE20](v13);
  v17 = 0;
  v80 = a3;
  v18 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 64);
  v70 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v68 = 0;
  v69 = (v20 + 63) >> 6;
  v76 = v11 + 16;
  v77 = v15 + 2;
  v84 = v10;
  v85 = v15;
  v81 = v15 + 1;
  v78 = v8;
  v79 = v11;
  v23 = (v11 + 8);
  v24 = v18;
  v74 = v23;
  v75 = v18;
  v25 = result;
  v72 = result;
  while (v22)
  {
    v83 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v17 << 6);
    v27 = v84;
LABEL_11:
    v30 = v80;
    v31 = v80[6] + v85[9] * v26;
    v82 = v85[2];
    v82(v24, v31, v25);
    v32 = v30[7];
    v33 = *(v79 + 72);
    v73 = v26;
    v34 = v32 + v33 * v26;
    v35 = *(v79 + 16);
    v36 = v24;
    v37 = v86;
    v38 = v87;
    v39 = v25;
    v40 = v36;
    v35(v86, v34, v87);
    v82(v27, v40, v39);
    v35((v27 + *(v88 + 48)), v37, v38);
    v41 = v78;
    sub_254E5D744(v27, v78, &qword_27F754E10, &qword_254E5E750);
    v42 = v27;
    v43 = sub_254E5E128();
    v45 = v44;
    v46 = v85[1];
    v46(v41, v39);
    if (v89)
    {
      v82 = v46;
      v47 = v75;
      if (v43 == v71 && v45 == v89)
      {

        v58 = *(v88 + 48);
        sub_254E5D7A4(v84, &qword_27F754E10, &qword_254E5E750);
        v59 = *v74;
        v60 = v41 + v58;
        v61 = v87;
        (*v74)(v60, v87);
        v59(v86, v61);
        v24 = v47;
        v62 = v47;
        v25 = v72;
        result = (v82)(v62, v72);
        v22 = v83;
LABEL_20:
        *(v67 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        if (__OFADD__(v68++, 1))
        {
          __break(1u);
LABEL_23:
          v64 = sub_254E5D304(v67, v66, v68, v80, MEMORY[0x277D721E0], &qword_27F754E18, &qword_254E5E758);

          return v64;
        }
      }

      else
      {
        v49 = sub_254E5E208();

        v50 = *(v88 + 48);
        sub_254E5D7A4(v84, &qword_27F754E10, &qword_254E5E750);
        v51 = *v74;
        v52 = v87;
        (*v74)(v41 + v50, v87);
        v51(v86, v52);
        v24 = v47;
        v53 = v47;
        v25 = v72;
        result = (v82)(v53, v72);
        v22 = v83;
        if (v49)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      v54 = *(v88 + 48);
      sub_254E5D7A4(v42, &qword_27F754E10, &qword_254E5E750);
      v55 = *v74;
      v56 = v41 + v54;
      v57 = v87;
      (*v74)(v56, v87);
      v55(v86, v57);
      v25 = v39;
      v24 = v75;
      result = (v46)(v75, v39);
      v22 = v83;
    }
  }

  v28 = v17;
  v27 = v84;
  while (1)
  {
    v17 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v17 >= v69)
    {
      goto LABEL_23;
    }

    v29 = *(v70 + 8 * v17);
    ++v28;
    if (v29)
    {
      v83 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) | (v17 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254E5CC44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v71 = a4;
  v66 = a2;
  v67 = a1;
  v88 = sub_254E57458(&qword_27F754E00, &qword_254E5E740);
  v6 = MEMORY[0x28223BE20](v88);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v87 = sub_254E5E148();
  v11 = *(v87 - 8);
  MEMORY[0x28223BE20](v87 - 8);
  v86 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254E5E138();
  result = MEMORY[0x28223BE20](v13);
  v17 = 0;
  v80 = a3;
  v18 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 64);
  v70 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v68 = 0;
  v69 = (v20 + 63) >> 6;
  v76 = v11 + 16;
  v77 = v15 + 2;
  v84 = v10;
  v85 = v15;
  v81 = v15 + 1;
  v78 = v8;
  v79 = v11;
  v23 = (v11 + 8);
  v24 = v18;
  v74 = v23;
  v75 = v18;
  v25 = result;
  v72 = result;
  while (v22)
  {
    v83 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v17 << 6);
    v27 = v84;
LABEL_11:
    v30 = v80;
    v31 = v80[6] + v85[9] * v26;
    v82 = v85[2];
    v82(v24, v31, v25);
    v32 = v30[7];
    v33 = *(v79 + 72);
    v73 = v26;
    v34 = v32 + v33 * v26;
    v35 = *(v79 + 16);
    v36 = v24;
    v37 = v86;
    v38 = v87;
    v39 = v25;
    v40 = v36;
    v35(v86, v34, v87);
    v82(v27, v40, v39);
    v35((v27 + *(v88 + 48)), v37, v38);
    v41 = v78;
    sub_254E5D744(v27, v78, &qword_27F754E00, &qword_254E5E740);
    v42 = v27;
    v43 = sub_254E5E128();
    v45 = v44;
    v46 = v85[1];
    v46(v41, v39);
    if (v89)
    {
      v82 = v46;
      v47 = v75;
      if (v43 == v71 && v45 == v89)
      {

        v58 = *(v88 + 48);
        sub_254E5D7A4(v84, &qword_27F754E00, &qword_254E5E740);
        v59 = *v74;
        v60 = v41 + v58;
        v61 = v87;
        (*v74)(v60, v87);
        v59(v86, v61);
        v24 = v47;
        v62 = v47;
        v25 = v72;
        result = (v82)(v62, v72);
        v22 = v83;
LABEL_20:
        *(v67 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        if (__OFADD__(v68++, 1))
        {
          __break(1u);
LABEL_23:
          v64 = sub_254E5D304(v67, v66, v68, v80, MEMORY[0x277D733D8], &qword_27F754E08, &qword_254E5E748);

          return v64;
        }
      }

      else
      {
        v49 = sub_254E5E208();

        v50 = *(v88 + 48);
        sub_254E5D7A4(v84, &qword_27F754E00, &qword_254E5E740);
        v51 = *v74;
        v52 = v87;
        (*v74)(v41 + v50, v87);
        v51(v86, v52);
        v24 = v47;
        v53 = v47;
        v25 = v72;
        result = (v82)(v53, v72);
        v22 = v83;
        if (v49)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      v54 = *(v88 + 48);
      sub_254E5D7A4(v42, &qword_27F754E00, &qword_254E5E740);
      v55 = *v74;
      v56 = v41 + v54;
      v57 = v87;
      (*v74)(v56, v87);
      v55(v86, v57);
      v25 = v39;
      v24 = v75;
      result = (v46)(v75, v39);
      v22 = v83;
    }
  }

  v28 = v17;
  v27 = v84;
  while (1)
  {
    v17 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v17 >= v69)
    {
      goto LABEL_23;
    }

    v29 = *(v70 + 8 * v17);
    ++v28;
    if (v29)
    {
      v83 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) | (v17 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_254E5D24C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_254E5D304(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v67 = a5(0);
  sub_254E5D854();
  v63 = v13;
  MEMORY[0x28223BE20](v14);
  sub_254E5D934();
  v66 = v15;
  MEMORY[0x28223BE20](v16);
  v57 = v53 - v17;
  v18 = sub_254E5E138();
  sub_254E5D854();
  v62 = v19;
  MEMORY[0x28223BE20](v20);
  sub_254E5D934();
  v65 = v21;
  MEMORY[0x28223BE20](v22);
  v56 = v53 - v23;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_254E57458(a6, a7);
  result = sub_254E5E1F8();
  v25 = result;
  if (a2 < 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *a1;
  }

  v27 = 0;
  v53[3] = v62 + 16;
  v54 = a2;
  v64 = v62 + 32;
  v28 = result + 64;
  v55 = a1;
  v53[0] = a4;
  v53[1] = v63 + 32;
  v53[2] = v63 + 16;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v58 = (v26 - 1) & v26;
LABEL_16:
    v32 = v29 | (v27 << 6);
    v33 = a4[6];
    v34 = v62;
    v61 = *(v62 + 72);
    v35 = v56;
    (*(v62 + 16))(v56, v33 + v61 * v32, v18);
    v36 = a4[7];
    v37 = v63;
    v60 = *(v63 + 72);
    v38 = v36 + v60 * v32;
    v39 = v18;
    v40 = v57;
    v41 = v67;
    (*(v63 + 16))(v57, v38, v67);
    v59 = *(v34 + 32);
    v59(v65, v35, v39);
    v42 = *(v37 + 32);
    v43 = v40;
    v18 = v39;
    v42(v66, v43, v41);
    sub_254E5BAA4();
    result = sub_254E5E168();
    v44 = -1 << *(v25 + 32);
    v45 = result & ~v44;
    v46 = v45 >> 6;
    if (((-1 << v45) & ~*(v28 + 8 * (v45 >> 6))) == 0)
    {
      v48 = 0;
      v49 = (63 - v44) >> 6;
      a2 = v54;
      a1 = v55;
      while (++v46 != v49 || (v48 & 1) == 0)
      {
        v50 = v46 == v49;
        if (v46 == v49)
        {
          v46 = 0;
        }

        v48 |= v50;
        v51 = *(v28 + 8 * v46);
        if (v51 != -1)
        {
          v47 = __clz(__rbit64(~v51)) + (v46 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v47 = __clz(__rbit64((-1 << v45) & ~*(v28 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
    a2 = v54;
    a1 = v55;
LABEL_25:
    *(v28 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v59(*(v25 + 48) + v47 * v61, v65, v39);
    result = (v42)(*(v25 + 56) + v47 * v60, v66, v67);
    ++*(v25 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v53[0];
    v26 = v58;
    if (!a3)
    {
      return v25;
    }
  }

  v30 = v27;
  while (1)
  {
    v27 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v27 >= a2)
    {
      return v25;
    }

    v31 = a1[v27];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v58 = (v31 - 1) & v31;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254E5D744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254E57458(a3, a4);
  sub_254E5D8E8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254E5D7A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_254E57458(a2, a3);
  sub_254E5D8E8();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_254E5D7FC()
{
  result = qword_27F754E20;
  if (!qword_27F754E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754E20);
  }

  return result;
}

uint64_t sub_254E5D868@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  *(v2 - 88) = *(v1 + 176);
}

uint64_t sub_254E5D91C()
{

  return swift_task_alloc();
}

uint64_t sub_254E5D988(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E5DB48();
  v5 = sub_254E58EFC(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254E5D9E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_254E5DB48();

  return sub_254E574A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for PreviewToolError(uint64_t a1)
{
  result = qword_27F754E30;
  if (!qword_27F754E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254E5DA90(uint64_t a1)
{
  v1 = sub_254E5DB48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}