uint64_t sub_22C827748()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    v7 = sub_22C8279B4;
  }

  else
  {
    (*(v3[7] + 8))(v3[10], v3[6]);

    v7 = sub_22C82786C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C82786C()
{
  sub_22C3743E4();
  sub_22C90400C();
  sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C37B204(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Entity Hydration: Background hydration complete");
    sub_22C372FB0();
  }

  sub_22C3829D0();
  v7 = sub_22C36BAFC();
  v2(v7);
  sub_22C374168(v1, v1[3]);
  v8 = sub_22C36BAFC();
  v9(v8);
  v10 = sub_22C36DD28(v0, &qword_27D9C0240, &qword_22C926718);
  sub_22C829EF4(v10, v11, v12, v13, v14, v15, v16, v17);

  sub_22C369C50();

  return v18();
}

uint64_t sub_22C8279B4()
{
  sub_22C3743E4();
  v4 = *(v0 + 192);

  sub_22C90400C();
  v5 = v4;
  v6 = sub_22C9063CC();
  v7 = sub_22C90AADC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  if (v8)
  {
    v1 = sub_22C36FB44();
    v2 = swift_slowAlloc();
    *v1 = 138412290;
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v2 = v11;
    _os_log_impl(&dword_22C366000, v6, v7, "Entity Hydration: Error while caching hydrated context: %@", v1, 0xCu);
    sub_22C36DD28(v2, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  else
  {
  }

  (*(v0 + 168))(*(v0 + 136), *(v0 + 120));
  sub_22C90400C();
  sub_22C9063CC();
  v12 = sub_22C90AACC();
  if (sub_22C37B204(v12))
  {
    v13 = sub_22C36D240();
    sub_22C36C890(v13);
    sub_22C36BB14(&dword_22C366000, v14, v15, "Entity Hydration: Background hydration complete");
    sub_22C372FB0();
  }

  sub_22C3829D0();
  v16 = sub_22C36BAFC();
  v3(v16);
  sub_22C374168(v2, v2[3]);
  v17 = sub_22C36BAFC();
  v18(v17);
  v19 = sub_22C36DD28(v1, &qword_27D9C0240, &qword_22C926718);
  sub_22C829EF4(v19, v20, v21, v22, v23, v24, v25, v26);

  sub_22C369C50();

  return v27();
}

uint64_t sub_22C827C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C827C2C, 0, 0);
}

uint64_t sub_22C827C2C()
{
  sub_22C369980();
  v1 = sub_22C903E4C();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22C827CCC;
  v3 = v0[4];

  return sub_22C826130(v1, v3);
}

uint64_t sub_22C827CCC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 56) = v5;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C827DD0()
{
  sub_22C36FB38();
  sub_22C903E5C();
  sub_22C903E3C();
  sub_22C369C50();

  return v0();
}

uint64_t sub_22C827E44()
{
  v0 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullPlannerPreferences.init()(v2);
  qword_27D9C0690 = type metadata accessor for FullPlannerHydrationArbiter(0);
  unk_27D9C0698 = &protocol witness table for FullPlannerHydrationArbiter;
  v3 = sub_22C36D548(qword_27D9C0678);
  return sub_22C3E17AC(v2, v3);
}

uint64_t sub_22C827EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_22C9063DC();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C06B0, &qword_22C9283F8);
  v4[23] = swift_task_alloc();
  v6 = sub_22C3A5908(&qword_27D9C06B8, &qword_22C928400);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_22C90399C();
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v4[29] = *(v8 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = sub_22C3A5908(&qword_27D9C02F8, &unk_22C927B20);
  v4[36] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C04B8, &unk_22C927B30);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = *(sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40) - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C828224, 0, 0);
}

uint64_t sub_22C828224()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 120);
  sub_22C36A748();
  sub_22C36C640(v3, v4, v5, v6);
  v7 = *(v2 + 16);
  v8 = sub_22C825BF4(v1, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    sub_22C8876B0();
    v8 = v53;
  }

  v9 = 0;
  v10 = *(v0 + 224);
  v65 = (v10 + 16);
  v11 = (v10 + 32);
  v62 = (v10 + 8);
  v63 = (v10 + 32);
  v12 = *(v0 + 232) + 7;
  *(v0 + 352) = v8;
  v55 = *(v0 + 312);
  v56 = v12;
  v64 = *(v0 + 280);
  v58 = v8;
  v59 = v7;
  v57 = v10;
  while (1)
  {
    if (v9 == v7)
    {
      v13 = 1;
      v14 = v7;
    }

    else
    {
      if (v9 >= v7)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

      v16 = *(v0 + 288);
      v15 = *(v0 + 296);
      v17 = *(v0 + 216);
      v18 = *(v0 + 120) + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9;
      v19 = *(v64 + 48);
      *v16 = v9;
      (*(v10 + 16))(v16 + v19, v18, v17);
      sub_22C3DB08C(v16, v15, &qword_27D9C02F8, &unk_22C927B20);
      v13 = 0;
    }

    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = *(v0 + 280);
    sub_22C36C640(v21, v13, 1, v22);
    sub_22C3DB08C(v21, v20, &qword_27D9C04B8, &unk_22C927B30);
    if (sub_22C370B74(v20, 1, v22) == 1)
    {
      break;
    }

    v66 = v14;
    v23 = *(v0 + 304);
    v24 = *v23;
    v25 = *v11;
    (*v11)(*(v0 + 272), &v23[*(v64 + 48)], *(v0 + 216));
    sub_22C83C4EC();
    v26 = *(v0 + 216);
    if (v27)
    {
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      v60 = *(v0 + 176);
      v61 = *(v0 + 168);
      v30 = *(v0 + 136);
      v31 = sub_22C90A75C();
      sub_22C36A748();
      sub_22C36C640(v32, v33, v34, v31);
      (*(v10 + 16))(v28, v29, v26);
      sub_22C378A4C(v30, v0 + 16);
      v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v36 = (v56 + v35) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      v25(v37 + v35, v28, v26);
      *(v37 + v36) = v24;
      sub_22C36C730((v0 + 16), v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_22C3DB138(v60, v61, &qword_27D9BBB48, &qword_22C910F00);
      LODWORD(v35) = sub_22C370B74(v61, 1, v31);

      v38 = *(v0 + 168);
      if (v35 == 1)
      {
        sub_22C36DD28(*(v0 + 168), &qword_27D9BBB48, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v31 - 8) + 8))(v38, v31);
      }

      v9 = v66;
      if (*(v37 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v41 = sub_22C90A6DC();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v7 = v59;
      v44 = **(v0 + 112);
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_22C928410;
      *(v45 + 24) = v37;
      sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
      v46 = v43 | v41;
      if (v43 | v41)
      {
        v46 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v41;
        *(v0 + 80) = v43;
      }

      v47 = *(v0 + 272);
      v48 = *(v0 + 216);
      v49 = *(v0 + 176);
      *(v0 + 88) = 1;
      *(v0 + 96) = v46;
      *(v0 + 104) = v44;
      swift_task_create();

      sub_22C36DD28(v49, &qword_27D9BBB48, &qword_22C910F00);
      (*v62)(v47, v48);
      v10 = v57;
      v8 = v58;
      v11 = v63;
    }

    else
    {
      v39 = *(v0 + 344);
      v40 = *(v0 + 272);
      (*v65)(v39, v40, *(v0 + 216));
      sub_22C36C640(v39, 0, 1, v26);
      (*v62)(v40, v26);
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v24 >= *(v8 + 16))
      {
        goto LABEL_28;
      }

      sub_22C829A88(*(v0 + 344), v8 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v24);
      v9 = v66;
    }
  }

  *(v0 + 360) = sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
  sub_22C90A70C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 368) = v50;
  *v50 = v51;
  v52 = sub_22C3788C4(v50);

  return MEMORY[0x2822002E8](v52);
}

uint64_t sub_22C8287E8()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C8288CC()
{
  v69 = v0;
  v1 = v0[45];
  v2 = v0[23];
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    v3 = v0[44];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[39];
      v6 = v0[44] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v7 = *(v5 + 72);
      v8 = MEMORY[0x277D84F90];
      v66 = v7;
      do
      {
        v10 = v0[40];
        v9 = v0[41];
        v11 = v0[27];
        sub_22C3DB138(v6, v9, &qword_27D9BB670, &unk_22C90FA40);
        sub_22C3DB08C(v9, v10, &qword_27D9BB670, &unk_22C90FA40);
        if (sub_22C370B74(v10, 1, v11) == 1)
        {
          sub_22C38AA18();
          sub_22C36DD28(v12, v13, v14);
        }

        else
        {
          v15 = *(v0[28] + 32);
          v15(v0[31], v0[40], v0[27]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C595C60();
            v8 = v20;
          }

          v16 = *(v8 + 16);
          if (v16 >= *(v8 + 24) >> 1)
          {
            sub_22C595C60();
            v8 = v21;
          }

          v17 = v0[31];
          v18 = v0[27];
          v19 = v0[28];
          *(v8 + 16) = v16 + 1;
          v15(v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v17, v18);
          v7 = v66;
        }

        v6 += v7;
        --v4;
      }

      while (v4);
    }

    sub_22C385830();
    sub_22C378644();

    __asm { BRAA            X2, X16 }
  }

  v22 = v0[42];
  v23 = v0[27];
  v24 = *v2;
  sub_22C3DB08C(v2 + *(v1 + 48), v22, &qword_27D9BB670, &unk_22C90FA40);
  if (sub_22C370B74(v22, 1, v23) == 1)
  {
    sub_22C36DD28(v0[42], &qword_27D9BB670, &unk_22C90FA40);
    goto LABEL_23;
  }

  v25 = v0[43];
  v26 = v0[32];
  v27 = v0[27];
  v28 = v0[28];
  (*(v28 + 32))(v26, v0[42], v27);
  v29 = *(v28 + 16);
  (v29)(v25, v26, v27);
  v30 = sub_22C36C640(v25, 0, 1, v27);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v31 = v0[44];
  if (v24 >= *(v31 + 16))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x2822002E8](v30);
  }

  v32 = v0[32];
  v33 = v0[30];
  v34 = v0[27];
  sub_22C829A88(v0[43], v31 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)) + *(v0[39] + 72) * v24);
  sub_22C90400C();
  (v29)(v33, v32, v34);
  v35 = sub_22C9063CC();
  v36 = sub_22C90AACC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v0[30];
    v38 = v0[27];
    v60 = v0[28];
    v65 = v0[20];
    v67 = v0[32];
    v63 = v0[19];
    v64 = v0[18];
    v39 = sub_22C36FB44();
    v61 = sub_22C370060();
    v68 = v61;
    *v39 = 136315138;
    sub_22C38AA18();
    v29();
    v40 = v38;
    v62 = v38;
    v41 = sub_22C90A1AC();
    v43 = v42;
    v44 = *(v60 + 8);
    v44(v37, v40);
    v45 = sub_22C36F9F4(v41, v43, &v68);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_22C366000, v35, v36, "Entity Hydration: entity hydrated as %s.", v39, 0xCu);
    sub_22C36FF94(v61);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v63 + 8))(v65, v64);
    v44(v67, v62);
  }

  else
  {
    v48 = v0[32];
    v49 = v0[30];
    v50 = v0[27];
    v51 = v0[28];
    v53 = v0[19];
    v52 = v0[20];
    v54 = v0[18];

    v55 = *(v51 + 8);
    v55(v49, v50);
    (*(v53 + 8))(v52, v54);
    v55(v48, v50);
  }

LABEL_23:
  swift_task_alloc();
  sub_22C36CC90();
  v0[46] = v56;
  *v56 = v57;
  sub_22C3788C4(v56);
  sub_22C378644();

  return MEMORY[0x2822002E8](v30);
}

uint64_t sub_22C828EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_22C90399C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C829000, 0, 0);
}

uint64_t sub_22C829000(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 88);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 24);
  sub_22C90400C();
  v6 = *(v4 + 16);
  *(v1 + 128) = v6;
  *(v1 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_22C9063CC();
  v8 = sub_22C90AACC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 120);
  v12 = *(v1 + 96);
  v11 = *(v1 + 104);
  v13 = *(v1 + 88);
  if (v9)
  {
    v37 = *(v1 + 96);
    v38 = *(v1 + 120);
    v14 = *(v1 + 80);
    v16 = *(v1 + 48);
    v15 = *(v1 + 56);
    v35 = *(v1 + 104);
    v17 = sub_22C36FB44();
    v36 = sub_22C370060();
    v39 = v36;
    *v17 = 136315138;
    v6(v14, v13, v16);
    v18 = sub_22C90A1AC();
    v19 = v8;
    v21 = v20;
    v22 = v7;
    v23 = *(v15 + 8);
    v23(v13, v16);
    v24 = sub_22C36F9F4(v18, v21, &v39);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_22C366000, v22, v19, "Entity Hydration: calling entity.hydrate for %s.", v17, 0xCu);
    sub_22C36FF94(v36);
    sub_22C372FB0();
    sub_22C3699EC();

    v25 = *(v35 + 8);
    v25(v38, v37);
  }

  else
  {
    v26 = *(v1 + 48);
    v27 = *(v1 + 56);

    v23 = *(v27 + 8);
    v23(v13, v26);
    v25 = *(v11 + 8);
    v25(v10, v12);
  }

  *(v1 + 144) = v25;
  *(v1 + 152) = v23;
  v28 = *(v1 + 32);
  v29 = *(v1 + 16);
  *(v1 + 176) = *(sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8) + 48);
  *v29 = v28;
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 160) = v30;
  *v30 = v31;
  v30[1] = sub_22C829280;
  v32 = *(v1 + 72);
  v33 = *(v1 + 40);

  return sub_22C82B154(v32, v33);
}

uint64_t sub_22C829280()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    v7 = sub_22C829448;
  }

  else
  {
    v7 = sub_22C829380;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C829380()
{
  (*(*(v0 + 56) + 32))(*(v0 + 16) + *(v0 + 176), *(v0 + 72), *(v0 + 48));
  v1 = sub_22C36DBC8();
  sub_22C36C640(v1, 0, 1, v2);

  sub_22C369A24();

  return v3();
}

void sub_22C829448(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 128);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 24);
  sub_22C90400C();
  v3(v4, v6, v5);
  v7 = v2;
  v8 = sub_22C9063CC();
  v9 = sub_22C90AADC();

  v10 = os_log_type_enabled(v8, v9);
  v37 = *(v1 + 168);
  v12 = *(v1 + 144);
  v11 = *(v1 + 152);
  if (v10)
  {
    v13 = *(v1 + 128);
    v35 = *(v1 + 144);
    v36 = *(v1 + 112);
    v34 = *(v1 + 96);
    v14 = *(v1 + 64);
    v15 = *(v1 + 48);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = sub_22C370060();
    v38 = v33;
    *v16 = 136315394;
    sub_22C38AA18();
    v13();
    v18 = sub_22C90A1AC();
    v20 = v19;
    v11(v14, v15);
    v21 = sub_22C36F9F4(v18, v20, &v38);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v37;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_22C366000, v8, v9, "Entity Hydration: Hydration failed for %s error: %@. This entity will be dropped.", v16, 0x16u);
    sub_22C36DD28(v17, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C36FF94(v33);
    sub_22C372FB0();
    sub_22C3699EC();

    v35(v36, v34);
  }

  else
  {
    v24 = *(v1 + 64);
    v25 = *(v1 + 48);

    v11(v24, v25);
    v26 = sub_22C36BAFC();
    v12(v26);
  }

  **(v1 + 16) = *(v1 + 32);
  sub_22C36DBC8();
  sub_22C36A748();
  sub_22C36C640(v27, v28, v29, v30);

  sub_22C369A24();
  sub_22C378644();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C829710(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C588ED8;

  return v6(a1);
}

uint64_t sub_22C829808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22C8298C0;

  return sub_22C827EE0(a2, a3, a4, a5);
}

uint64_t sub_22C8298C0()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;

  *v4 = v2;
  sub_22C369A24();

  return v7();
}

uint64_t sub_22C8299BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C829808(a1, a2, v6, v7, v8);
}

uint64_t sub_22C829A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C829AF8()
{
  sub_22C3743E4();
  v2 = sub_22C90399C();
  sub_22C3699B8(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22C46BC08;
  sub_22C38AA18();

  return sub_22C828EB0(v7, v8, v9, v10, v5, v11);
}

uint64_t sub_22C829C20()
{
  sub_22C36FB38();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_22C46BC08;

  return sub_22C829710(v3, v4);
}

uint64_t sub_22C829CD0()
{
  sub_22C3743E4();
  v2 = sub_22C903E7C();
  sub_22C3699B8(v2);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22C46BC08;
  sub_22C38AA18();

  return sub_22C827160(v6, v7, v8, v3, v4, v9, v10, v11);
}

uint64_t sub_22C829DF8()
{
  sub_22C36FB38();
  v3 = v2;
  v4 = sub_22C903E7C();
  sub_22C3699B8(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C827C08(v3, v0 + v6, v8);
}

uint64_t sub_22C829EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void static QueryDecorationAnalytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_22C82A05C(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

void sub_22C82A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  strcpy(v8, "com.apple.qd.");
  MEMORY[0x2318B7850](a1, a2);
  v6 = sub_22C90A0EC();

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22C82A164;
  v8[3] = &unk_283FC1460;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

id sub_22C82A164(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22C389D24();
    v4 = sub_22C909EAC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_22C82A290(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C389D24();
  v3 = sub_22C909ECC();

  return v3;
}

id QueryDecorationAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryDecorationAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id QueryDecorationAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C82A3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for QueryDecorationFeatureControl(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for QueryDecorationFeatureControl(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for QueryDecorationFeatureControl(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t QueryDecorationError.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

unint64_t sub_22C82A538()
{
  result = qword_27D9C06E0;
  if (!qword_27D9C06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C06E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C82A6A4()
{
  sub_22C3A5908(&qword_27D9C06E8, &qword_22C9286F0);
  v0 = (sub_22C3A5908(&qword_27D9C06F0, &qword_22C9286F8) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = *(*v0 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90D070;
  v3 = (v20 + v1);
  v4 = (v20 + v1 + v0[14]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000015;
  *(v5 + 24) = 0x800000022C937130;
  strcpy((v5 + 32), "ContactEntity");
  *(v5 + 46) = -4864;
  *v3 = v5;
  v6 = *MEMORY[0x277D72D28];
  v7 = sub_22C90952C();
  v8 = *(*(v7 - 8) + 104);
  v8(v3, v6, v7);
  *v4 = 0xD00000000000001BLL;
  v4[1] = 0x800000022C92EBF0;
  v9 = (v3 + v2);
  v10 = v2;
  v11 = (v3 + v2 + v0[14]);
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000015;
  v12[3] = 0x800000022C937130;
  v12[4] = 0x6F6365526C6C6143;
  v12[5] = 0xEA00000000006472;
  *v9 = v12;
  v8(v9, v6, v7);
  *v11 = 0xD000000000000028;
  v11[1] = 0x800000022C937150;
  v13 = (v3 + 2 * v10);
  v14 = (v13 + v0[14]);
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000015;
  v15[3] = 0x800000022C937130;
  v15[4] = 0x7373654D6C6C6143;
  v15[5] = 0xEB00000000656761;
  *v13 = v15;
  v8(v13, v6, v7);
  *v14 = 0xD000000000000028;
  v14[1] = 0x800000022C937150;
  v16 = (v3 + 3 * v10);
  v17 = (v16 + v0[14]);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000013;
  *(v18 + 24) = 0x800000022C92EC30;
  strcpy((v18 + 32), "ReminderEntity");
  *(v18 + 47) = -18;
  *v16 = v18;
  v8(v16, v6, v7);
  *v17 = 0xD000000000000013;
  v17[1] = 0x800000022C937180;
  sub_22C82AF08();
  result = sub_22C909F0C();
  qword_27D9C06D8 = result;
  return result;
}

uint64_t sub_22C82AA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v53 - v4;
  v5 = sub_22C90952C();
  sub_22C369824();
  v61 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (v53 - v13);
  v15 = sub_22C9093BC();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90910C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v15);
  v27 = (*(v17 + 88))(v20, v15);
  if (v27 != *MEMORY[0x277D729F8])
  {
    (*(v17 + 8))(v20, v15);
LABEL_10:
    v46 = v60;
    v47 = 1;
    return sub_22C36C640(v46, v47, 1, v15);
  }

  v28 = v27;
  (*(v17 + 96))(v20, v15);
  v29 = swift_projectBox();
  (*(v23 + 16))(v26, v29, v21);

  sub_22C9090AC();
  v30 = (*(v61 + 88))(v14, v5);
  if (v30 != *MEMORY[0x277D72D28])
  {
    v48 = sub_22C373B04();
    v49(v48);
    (*(v61 + 8))(v14, v5);
    goto LABEL_10;
  }

  v31 = v30;
  (*(v61 + 96))(v14, v5);
  v32 = *v14;
  v33 = *(v32 + 40);
  v56 = *(v32 + 32);
  v57 = v33;

  if (qword_27D9BA7C0 != -1)
  {
    swift_once();
  }

  v34 = qword_27D9C06D8;
  sub_22C9090AC();
  v55 = sub_22C605D88(v12, v34);
  v36 = v35;
  (*(v61 + 8))(v12, v5);
  if (!v36)
  {
    v50 = sub_22C373B04();
    v51(v50);

    goto LABEL_10;
  }

  v37 = swift_allocBox();
  v53[1] = v38;
  v54 = v37;
  v39 = swift_allocObject();
  v40 = v56;
  v39[2] = v55;
  v39[3] = v36;
  v41 = v57;
  v42 = v58;
  v39[4] = v40;
  v39[5] = v41;
  *v42 = v39;
  (*(v61 + 104))(v42, v31, v5);
  sub_22C90908C();
  sub_22C9090DC();
  sub_22C9090EC();
  v43 = sub_22C373B04();
  v44(v43);
  v45 = v60;
  *v60 = v54;
  (*(v17 + 104))(v45, v28, v15);
  v46 = v45;
  v47 = 0;
  return sub_22C36C640(v46, v47, 1, v15);
}

unint64_t sub_22C82AF08()
{
  result = qword_28142FA80;
  if (!qword_28142FA80)
  {
    sub_22C90952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142FA80);
  }

  return result;
}

uint64_t sub_22C82AF60(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C90355C();
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C90390C();
  sub_22C9038EC();
  sub_22C531200(a1, v11);
  sub_22C90398C();
  sub_22C90394C();
  sub_22C90397C();
  return sub_22C9038FC();
}

uint64_t sub_22C82B154(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v4);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_22C9093BC();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C82B258, 0, 0);
}

uint64_t sub_22C82B258(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  sub_22C90391C();
  if (sub_22C370B74(v3, 1, v2) == 1)
  {
    v4 = v1[4];
    v5 = v1[2];
    sub_22C3E259C(v1[6]);
    v6 = sub_22C90399C();
    (*(*(v6 - 8) + 16))(v5, v4, v6);

    sub_22C369A24();

    return v7();
  }

  else
  {
    v9 = v1[3];
    (*(v1[8] + 32))(v1[9], v1[6], v1[7]);
    v10 = v9[3];
    v11 = v9[4];
    sub_22C374168(v9, v10);
    v12 = swift_task_alloc();
    v1[10] = v12;
    *v12 = v1;
    v12[1] = sub_22C82B3F8;
    v13 = v1[9];
    v14 = v1[5];

    return MEMORY[0x282178338](v14, v13, v10, v11);
  }
}

uint64_t sub_22C82B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*v9 + 88) = v8;

  if (v8)
  {
    v10 = sub_22C82B5E0;
  }

  else
  {
    v10 = sub_22C82B50C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C82B50C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  sub_22C36C640(v4, 0, 1, v3);
  sub_22C82AF60(v4);
  sub_22C3E259C(v4);
  (*(v2 + 8))(v1, v3);

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C82B5E0()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_22C369A24();

  return v1();
}

void sub_22C82B678()
{
  sub_22C36BA7C();
  sub_22C83AAE0();
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C37BC84();
  sub_22C3E8FB4(v6, v7, &qword_27D9BBB48, &qword_22C910F00);
  v8 = sub_22C90A75C();
  v9 = sub_22C3707B4();
  v11 = sub_22C370B74(v9, v10, v8);

  if (v11 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8();
    (*(v12 + 8))(v1, v8);
  }

  v13 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
    sub_22C383918();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C383918();
  swift_task_create();
  sub_22C37BB14();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C82B8E4()
{
  sub_22C36BA7C();
  sub_22C83AAE0();
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C37BC84();
  sub_22C3E8FB4(v6, v7, &qword_27D9BBB48, &qword_22C910F00);
  v8 = sub_22C90A75C();
  v9 = sub_22C3707B4();
  v11 = sub_22C370B74(v9, v10, v8);

  if (v11 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8();
    (*(v12 + 8))(v1, v8);
  }

  v13 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C383918();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  sub_22C383918();
  swift_task_create();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C82BB44()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C37BC84();
  sub_22C3E8FB4(v9, v10, &qword_27D9BBB48, &qword_22C910F00);
  v11 = sub_22C90A75C();
  v12 = sub_22C3707B4();
  v14 = sub_22C370B74(v12, v13, v11);

  if (v14 == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8();
    v15 = sub_22C379FC8();
    v16(v15);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v4, &qword_27D9BBB48, &qword_22C910F00);
    v20 = sub_22C371510();
    sub_22C3A5908(v20, v21);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  v18 = sub_22C371510();
  sub_22C3A5908(v18, v19);
  swift_task_create();
  sub_22C83AAD4();

  sub_22C36DD28(v4, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

uint64_t QueryDecorationRemoteStateHandler.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281431278 != -1)
  {
    swift_once();
  }

  v3 = sub_22C381880();
  result = sub_22C373E78(v3, v4, type metadata accessor for QueryDecorationCache, &unk_22C928A2C);
  if (!v1)
  {
    v6 = result;
    DecorationCache = type metadata accessor for QueryDecorationCache(0);
    v9 = &off_283FC17B8;
    *&v7 = v6;
    return sub_22C36C730(&v7, a1);
  }

  return result;
}

uint64_t sub_22C82BE88()
{
  type metadata accessor for QueryDecorationReferenceCache(0);
  swift_allocObject();
  result = sub_22C82BEC8();
  qword_281437508 = result;
  return result;
}

uint64_t sub_22C82BEC8()
{
  type metadata accessor for QueryDecorationReferenceCache.CacheCallbacks();
  swift_allocObject();
  sub_22C373F18(qword_281431318, v1, type metadata accessor for QueryDecorationReferenceCache.CacheCallbacks, &unk_22C928ADC);
  sub_22C90412C();
  return v0;
}

uint64_t sub_22C82BFF4()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime29QueryDecorationReferenceCache_instance;
  sub_22C90413C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_22C82C088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v69 = a1;
  v4 = sub_22C90063C();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v67 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v9 = MEMORY[0x28223BE20](v67);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v68 = (&v62 - v13);
  MEMORY[0x28223BE20](v12);
  v66 = &v62 - v14;
  v15 = sub_22C3A5908(&qword_27D9C0768, &unk_22C928BE0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_22C9063DC();
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = &v62 - v27;
  v29 = v3[15];
  if (v29 < 1)
  {
    sub_22C90400C();

    v39 = sub_22C9063CC();
    v40 = sub_22C90AACC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v76);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v29;

      _os_log_impl(&dword_22C366000, v39, v40, "%s Not using cache as cacheSize=%ld", v41, 0x16u);
      sub_22C36FF94(v42);
      MEMORY[0x2318B9880](v42, -1, -1);
      MEMORY[0x2318B9880](v41, -1, -1);
    }

    else
    {
    }

    return (*(v72 + 8))(v28, v73);
  }

  else
  {
    v65 = v26;
    swift_beginAccess();
    if (v29 <= *(v3[14] + 16))
    {
      sub_22C90400C();
      sub_22C3E8FB4(v74, v20, &qword_27D9C0260, &unk_22C926740);

      v30 = sub_22C9063CC();
      v63 = sub_22C90AACC();
      v31 = os_log_type_enabled(v30, v63);
      v64 = v4;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v76[0] = v62;
        *v32 = 136315650;
        *(v32 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v76);
        *(v32 + 12) = 2048;
        *(v32 + 14) = v29;

        *(v32 + 22) = 2080;
        sub_22C3E8FB4(v20, v17, &qword_27D9C0768, &unk_22C928BE0);
        v33 = sub_22C90A1AC();
        v35 = v34;
        sub_22C36DD28(v20, &qword_27D9C0260, &unk_22C926740);
        v36 = sub_22C36F9F4(v33, v35, v76);

        *(v32 + 24) = v36;
        _os_log_impl(&dword_22C366000, v30, v63, "%s New entry would exceed cacheSize=%ld for key.query=%s", v32, 0x20u);
        v37 = v62;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v37, -1, -1);
        v38 = v32;
        v4 = v64;
        MEMORY[0x2318B9880](v38, -1, -1);
      }

      else
      {

        sub_22C36DD28(v20, &qword_27D9C0260, &unk_22C926740);
      }

      v44 = *(v72 + 8);
      v44(v25, v73);
      v45 = v68;
      v46 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      swift_beginAccess();
      sub_22C3E8FB4(v3 + v46, v8, &qword_27D9C0760, &qword_22C928BD8);
      if (sub_22C370B74(v8, 1, v67) == 1)
      {
        sub_22C36DD28(v8, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v47 = v8;
        v48 = v66;
        sub_22C839CD0(v47, v66);
        swift_beginAccess();
        sub_22C62BE24(v76);
        sub_22C36DD28(v76, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        swift_beginAccess();
        sub_22C62BA88();
        swift_endAccess();
        v49 = v65;
        sub_22C90400C();
        sub_22C839D2C(v48, v45);
        v50 = sub_22C9063CC();
        v51 = sub_22C90AACC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v76[0] = v53;
          *v52 = 136315394;
          *(v52 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v76);
          *(v52 + 12) = 2080;
          sub_22C839D2C(v45, v11);
          v54 = sub_22C90A1AC();
          v68 = v44;
          v56 = v55;
          sub_22C839C78(v45, type metadata accessor for CacheKeyHashableRepresentation);
          v57 = sub_22C36F9F4(v54, v56, v76);

          *(v52 + 14) = v57;
          _os_log_impl(&dword_22C366000, v50, v51, "%s Removed LRU key: %s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v53, -1, -1);
          MEMORY[0x2318B9880](v52, -1, -1);

          v68(v49, v73);
          v58 = v66;
        }

        else
        {

          sub_22C839C78(v45, type metadata accessor for CacheKeyHashableRepresentation);
          v44(v49, v73);
          v58 = v48;
        }

        sub_22C839C78(v58, type metadata accessor for CacheKeyHashableRepresentation);
        v4 = v64;
      }
    }

    sub_22C82E1A0(v11);
    v76[3] = sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    v76[0] = v69;
    v77 = 1;
    swift_beginAccess();

    sub_22C6041CC(v76, v11);
    swift_endAccess();
    sub_22C82E1A0(v11);
    v59 = v70;
    sub_22C90062C();
    sub_22C9005DC();
    v61 = v60;
    (*(v71 + 8))(v59, v4);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v3[16];
    sub_22C62E050(v11, v61);
    v3[16] = v75;
    sub_22C839C78(v11, type metadata accessor for CacheKeyHashableRepresentation);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82CAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v71 = a1;
  v4 = sub_22C90063C();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v69 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v9 = MEMORY[0x28223BE20](v69);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v70 = (&v64 - v13);
  MEMORY[0x28223BE20](v12);
  v68 = &v64 - v14;
  v15 = sub_22C3A5908(&qword_27D9C0770, &unk_22C928BF8);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_22C9063DC();
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = &v64 - v27;
  v29 = v3[15];
  if (v29 < 1)
  {
    sub_22C90400C();

    v39 = sub_22C9063CC();
    v40 = sub_22C90AACC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v78[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v78);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v29;

      _os_log_impl(&dword_22C366000, v39, v40, "%s Not using cache as cacheSize=%ld", v41, 0x16u);
      sub_22C36FF94(v42);
      MEMORY[0x2318B9880](v42, -1, -1);
      MEMORY[0x2318B9880](v41, -1, -1);
    }

    else
    {
    }

    return (*(v74 + 8))(v28, v75);
  }

  else
  {
    v67 = v26;
    swift_beginAccess();
    if (v29 <= *(v3[14] + 16))
    {
      sub_22C90400C();
      sub_22C3E8FB4(v76, v20, &qword_27D9C0240, &qword_22C926718);

      v30 = sub_22C9063CC();
      v65 = sub_22C90AACC();
      v31 = os_log_type_enabled(v30, v65);
      v66 = v4;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v78[0] = v64;
        *v32 = 136315650;
        *(v32 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v78);
        *(v32 + 12) = 2048;
        *(v32 + 14) = v29;

        *(v32 + 22) = 2080;
        sub_22C3E8FB4(v20, v17, &qword_27D9C0770, &unk_22C928BF8);
        v33 = sub_22C90A1AC();
        v35 = v34;
        sub_22C36DD28(v20, &qword_27D9C0240, &qword_22C926718);
        v36 = sub_22C36F9F4(v33, v35, v78);

        *(v32 + 24) = v36;
        _os_log_impl(&dword_22C366000, v30, v65, "%s New entry would exceed cacheSize=%ld for key.query=%s", v32, 0x20u);
        v37 = v64;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v37, -1, -1);
        v38 = v32;
        v4 = v66;
        MEMORY[0x2318B9880](v38, -1, -1);
      }

      else
      {

        sub_22C36DD28(v20, &qword_27D9C0240, &qword_22C926718);
      }

      v44 = *(v74 + 8);
      v44(v25, v75);
      v45 = v70;
      v46 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      swift_beginAccess();
      sub_22C3E8FB4(v3 + v46, v8, &qword_27D9C0760, &qword_22C928BD8);
      if (sub_22C370B74(v8, 1, v69) == 1)
      {
        sub_22C36DD28(v8, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v47 = v8;
        v48 = v68;
        sub_22C839CD0(v47, v68);
        swift_beginAccess();
        sub_22C62BE24(v78);
        sub_22C36DD28(v78, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        swift_beginAccess();
        sub_22C62BA88();
        swift_endAccess();
        v49 = v67;
        sub_22C90400C();
        sub_22C839D2C(v48, v45);
        v50 = sub_22C9063CC();
        v51 = sub_22C90AACC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v78[0] = v53;
          *v52 = 136315394;
          *(v52 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v78);
          *(v52 + 12) = 2080;
          sub_22C839D2C(v45, v11);
          v54 = sub_22C90A1AC();
          v70 = v44;
          v56 = v55;
          sub_22C839C78(v45, type metadata accessor for CacheKeyHashableRepresentation);
          v57 = sub_22C36F9F4(v54, v56, v78);

          *(v52 + 14) = v57;
          _os_log_impl(&dword_22C366000, v50, v51, "%s Removed LRU key: %s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v53, -1, -1);
          MEMORY[0x2318B9880](v52, -1, -1);

          v70(v49, v75);
          v58 = v68;
        }

        else
        {

          sub_22C839C78(v45, type metadata accessor for CacheKeyHashableRepresentation);
          v44(v49, v75);
          v58 = v48;
        }

        sub_22C839C78(v58, type metadata accessor for CacheKeyHashableRepresentation);
        v4 = v66;
      }
    }

    sub_22C82DF18(v11);
    v59 = sub_22C903E7C();
    v78[3] = v59;
    v60 = sub_22C36D548(v78);
    (*(*(v59 - 8) + 16))(v60, v71, v59);
    v79 = 1;
    swift_beginAccess();
    sub_22C6041CC(v78, v11);
    swift_endAccess();
    sub_22C82DF18(v11);
    v61 = v72;
    sub_22C90062C();
    sub_22C9005DC();
    v63 = v62;
    (*(v73 + 8))(v61, v4);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v77 = v3[16];
    sub_22C62E050(v11, v63);
    v3[16] = v77;
    sub_22C839C78(v11, type metadata accessor for CacheKeyHashableRepresentation);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v112 = a2;
  v106 = a1;
  v8 = sub_22C90063C();
  sub_22C369824();
  v109 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v108 = v12 - v11;
  v13 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C36D5B4();
  v102 = v15;
  v16 = sub_22C36BA0C();
  v103 = type metadata accessor for CacheKeyHashableRepresentation(v16);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v104 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v105 = v24;
  v25 = sub_22C38B534();
  v29 = sub_22C83AAA8(v25, v26, v27, v28);
  sub_22C369824();
  v101 = v30;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C50B438();
  v107 = a3;
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, a3, v32, v33);
  sub_22C369824();
  v35 = v34;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v38 = &v97 - v37;
  sub_22C9063DC();
  sub_22C369824();
  v110 = v40;
  v111 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22C369ABC();
  sub_22C37EBC0();
  v42 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v42);
  v45 = &v97 - v44;
  v46 = v6[15];
  if (v46 < 1)
  {
    sub_22C90400C();

    v57 = sub_22C9063CC();
    v58 = sub_22C90AACC();
    v59 = sub_22C370214();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = sub_22C383050();
      sub_22C370220();
      v62 = swift_slowAlloc();
      v115[0] = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
      *(v61 + 12) = 2048;
      *(v61 + 14) = v46;

      _os_log_impl(&dword_22C366000, v57, v58, "%s Not using cache as cacheSize=%ld", v61, 0x16u);
      sub_22C36FF94(v62);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    return (*(v110 + 8))(v4, v111);
  }

  else
  {
    v100 = v43;
    sub_22C3870A4();
    swift_beginAccess();
    v47 = DecorationCacheKey;
    if (v46 <= *(v6[14] + 16))
    {
      sub_22C90400C();
      (*(v35 + 16))(v38, v112, v47);

      v48 = sub_22C9063CC();
      v99 = sub_22C90AACC();
      if (os_log_type_enabled(v48, v99))
      {
        sub_22C370220();
        v49 = swift_slowAlloc();
        v98 = v8;
        v50 = v49;
        v97 = sub_22C37A180();
        v115[0] = v97;
        *v50 = 136315650;
        *(v50 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
        *(v50 + 12) = 2048;
        *(v50 + 14) = v46;

        *(v50 + 22) = 2080;
        (*(v101 + 16))(v5, v38, v29);
        v51 = sub_22C90A1AC();
        v53 = v52;
        v54 = DecorationCacheKey;
        (*(v35 + 8))(v38, DecorationCacheKey);
        v55 = sub_22C36F9F4(v51, v53, v115);

        *(v50 + 24) = v55;
        _os_log_impl(&dword_22C366000, v48, v99, "%s New entry would exceed cacheSize=%ld for key.query=%s", v50, 0x20u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v8 = v98;
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v56 = *(v110 + 8);
        v56(v45, v111);
        v47 = v54;
      }

      else
      {

        v47 = DecorationCacheKey;
        (*(v35 + 8))(v38, DecorationCacheKey);
        v56 = *(v110 + 8);
        v56(v45, v111);
      }

      v64 = v105;
      v65 = v104;
      v66 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      sub_22C3870A4();
      swift_beginAccess();
      v67 = v6 + v66;
      v68 = v102;
      sub_22C3E8FB4(v67, v102, &qword_27D9C0760, &qword_22C928BD8);
      v69 = sub_22C3707B4();
      if (sub_22C370B74(v69, v70, v103) == 1)
      {
        sub_22C36DD28(v68, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v104 = v56;
        sub_22C36A42C();
        sub_22C839CD0(v68, v64);
        sub_22C79D0C0((v6 + 14), v114);
        sub_22C62BE24(v115);
        sub_22C36DD28(v115, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        sub_22C79D0C0((v6 + 16), v115);
        sub_22C62BA88();
        swift_endAccess();
        sub_22C90400C();
        sub_22C839D2C(v64, v65);
        v71 = sub_22C9063CC();
        v72 = sub_22C90AACC();
        v73 = sub_22C370214();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = sub_22C383050();
          v115[0] = sub_22C37A180();
          *v75 = 136315394;
          *(v75 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
          *(v75 + 12) = 2080;
          v76 = sub_22C371510();
          sub_22C839D2C(v76, v77);
          sub_22C377C4C();
          v78 = sub_22C90A1AC();
          v79 = v8;
          v81 = v80;
          sub_22C36B7F4();
          v103 = v82;
          sub_22C839C78(v83, v84);
          v85 = sub_22C36F9F4(v78, v81, v115);
          v8 = v79;

          *(v75 + 14) = v85;
          _os_log_impl(&dword_22C366000, v71, v72, "%s Removed LRU key: %s", v75, 0x16u);
          swift_arrayDestroy();
          v47 = DecorationCacheKey;
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v86 = sub_22C83A9AC();
          v87(v86);
          v88 = v105;
          v89 = v103;
        }

        else
        {

          sub_22C839C78(v65, type metadata accessor for CacheKeyHashableRepresentation);
          v90 = sub_22C83A9AC();
          v91(v90);
          v88 = v64;
          v89 = type metadata accessor for CacheKeyHashableRepresentation;
        }

        sub_22C839C78(v88, v89);
      }
    }

    sub_22C82E428(v47, v20);
    v115[3] = v107;
    sub_22C36D548(v115);
    sub_22C36BBA8();
    (*(v92 + 16))();
    v116 = 1;
    sub_22C79D0C0((v6 + 14), v114);
    sub_22C6041CC(v115, v20);
    swift_endAccess();
    sub_22C82E428(v47, v20);
    v93 = v108;
    sub_22C90062C();
    sub_22C9005DC();
    v95 = v94;
    (*(v109 + 8))(v93, v8);
    sub_22C79D0C0((v6 + 16), v115);
    swift_isUniquelyReferenced_nonNull_native();
    v114[0] = v6[16];
    sub_22C62E050(v20, v95);
    v6[16] = v114[0];
    sub_22C36B7F4();
    sub_22C839C78(v20, v96);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82DF18@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C908D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9C0770, &unk_22C928BF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v32 - v9);
  sub_22C3E8FB4(v2, &v32 - v9, &qword_27D9C0770, &unk_22C928BF8);
  v11 = sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
  v12 = 0;
  v13 = 0;
  if (sub_22C370B74(v10, 1, v11) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      v12 = sub_22C908D1C();
      v13 = v14;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v12 = *v10;
      v13 = v10[1];
    }
  }

  v33 = v12;
  v15 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v16 = (v2 + v15[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v2 + v15[8]);
  v20 = v19[1];
  v34 = *v19;
  v35 = v17;
  v21 = v15[10];
  v22 = (v2 + v15[9]);
  v23 = *v22;
  v24 = v22[1];
  v25 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v2 + v21, a1 + v25[8], &qword_27D9C06F8, &qword_22C929520);
  v26 = (v2 + v15[11]);
  v28 = *v26;
  v27 = v26[1];
  LOBYTE(v26) = *(v2 + v15[12]);
  *a1 = v33;
  a1[1] = v13;
  v29 = v34;
  a1[2] = v35;
  a1[3] = v18;
  a1[4] = v29;
  a1[5] = v20;
  a1[6] = v23;
  a1[7] = v24;
  v30 = (a1 + v25[9]);
  *v30 = v28;
  v30[1] = v27;
  *(a1 + v25[10]) = v26;
}

uint64_t sub_22C82E1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C908D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9C0768, &unk_22C928BE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v32 - v9);
  sub_22C3E8FB4(v2, &v32 - v9, &qword_27D9C0768, &unk_22C928BE0);
  v11 = sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
  v12 = 0;
  v13 = 0;
  if (sub_22C370B74(v10, 1, v11) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      v12 = sub_22C908D1C();
      v13 = v14;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v12 = *v10;
      v13 = v10[1];
    }
  }

  v33 = v12;
  v15 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v16 = (v2 + v15[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v2 + v15[8]);
  v20 = v19[1];
  v34 = *v19;
  v35 = v17;
  v21 = v15[10];
  v22 = (v2 + v15[9]);
  v23 = *v22;
  v24 = v22[1];
  v25 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v2 + v21, a1 + v25[8], &qword_27D9C06F8, &qword_22C929520);
  v26 = (v2 + v15[11]);
  v28 = *v26;
  v27 = v26[1];
  LOBYTE(v26) = *(v2 + v15[12]);
  *a1 = v33;
  a1[1] = v13;
  v29 = v34;
  a1[2] = v35;
  a1[3] = v18;
  a1[4] = v29;
  a1[5] = v20;
  a1[6] = v23;
  a1[7] = v24;
  v30 = (a1 + v25[9]);
  *v30 = v28;
  v30[1] = v27;
  *(a1 + v25[10]) = v26;
}

uint64_t sub_22C82E428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_22C908D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input(255, *(a1 + 16), v10, v11);
  v13 = sub_22C90AC6C();
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - v14);
  (*(v16 + 16))(&v38 - v14, v3);
  v17 = 0;
  v18 = 0;
  if (sub_22C370B74(v15, 1, DecorationCache) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v9, v15, v6);
      v17 = sub_22C908D1C();
      v18 = v19;
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v17 = *v15;
      v18 = v15[1];
    }
  }

  v20 = *(a1 + 32);
  v21 = (v3 + *(a1 + 28));
  v22 = v21[1];
  v41 = *v21;
  v23 = v3 + v20;
  v24 = *(v3 + v20);
  v25 = *(v23 + 8);
  v39 = v17;
  v40 = v24;
  v26 = v18;
  v27 = *(a1 + 40);
  v28 = (v3 + *(a1 + 36));
  v29 = *v28;
  v30 = v28[1];
  v31 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v3 + v27, a2 + v31[8], &qword_27D9C06F8, &qword_22C929520);
  v32 = (v3 + *(a1 + 44));
  v34 = *v32;
  v33 = v32[1];
  LOBYTE(v32) = *(v3 + *(a1 + 48));
  *a2 = v39;
  a2[1] = v26;
  v35 = v40;
  a2[2] = v41;
  a2[3] = v22;
  a2[4] = v35;
  a2[5] = v25;
  a2[6] = v29;
  a2[7] = v30;
  v36 = (a2 + v31[9]);
  *v36 = v34;
  v36[1] = v33;
  *(a2 + v31[10]) = v32;
}

uint64_t sub_22C82E6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = (v10 - v9);
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, a3, v12, v13);
  sub_22C82E428(DecorationCacheKey, v11);
  v17[0] = a2;
  v18 = 0;
  sub_22C79D0C0(v4 + 112, v16);

  sub_22C6041CC(v17, v11);
  return swift_endAccess();
}

uint64_t sub_22C82E788(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, a2, v8, v9);
  sub_22C82E428(DecorationCacheKey, v3);
  memset(v14, 0, sizeof(v14));
  v15 = -1;
  sub_22C79D0C0(v4 + 112, v13);
  sub_22C6041CC(v14, v3);
  swift_endAccess();
  sub_22C82E428(DecorationCacheKey, v3);
  sub_22C79D0C0(v4 + 128, v14);
  sub_22C62BA88();
  sub_22C36B7F4();
  sub_22C839C78(v3, v11);
  return swift_endAccess();
}

void sub_22C82E888()
{
  sub_22C370030();
  v97 = v1;
  v2 = v0;
  v4 = v3;
  v93 = v5;
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, v5, v6, v7);
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v94 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v90 = v14;
  sub_22C369930();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v87[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v87[-v19];
  sub_22C9063DC();
  sub_22C369824();
  v95 = v22;
  v96 = v21;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v91 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v102 = v29;
  v30 = sub_22C36BA0C();
  v31 = type metadata accessor for CacheKeyHashableRepresentation(v30);
  v32 = sub_22C369914(v31);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v35 = v34 - v33;
  sub_22C82E428(DecorationCacheKey, (v34 - v33));
  sub_22C3870A4();
  swift_beginAccess();

  sub_22C6059A4();

  sub_22C36B7F4();
  sub_22C839C78(v35, v36);
  if (v99 == 255)
  {
    v92 = v0;
    v93 = v25;
    sub_22C36DD28(v98, &qword_27D9BF3C8, &qword_22C928BF0);
    v56 = v91;
    sub_22C90400C();
    v57 = *(v10 + 16);
    v58 = v90;
    v59 = sub_22C377C4C();
    v57(v59);
    (v57)(v94, v4, DecorationCacheKey);
    v60 = sub_22C9063CC();
    v61 = sub_22C90AACC();
    v62 = sub_22C83AA7C();
    if (os_log_type_enabled(v62, v63))
    {
      sub_22C370220();
      v64 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v100[0] = v89;
      *v64 = 136315650;
      *(v64 + 4) = sub_22C36F9F4(0xD000000000000016, 0x800000022C9372F0, v100);
      *(v64 + 12) = 2080;
      v88 = v61;
      v65 = sub_22C82F03C(DecorationCacheKey);
      v66 = *(v10 + 8);
      v66(v58, DecorationCacheKey);
      v67 = sub_22C36EC8C();
      sub_22C36F9F4(v67, v68, v69);
      sub_22C83AAD4();

      *(v64 + 14) = v65;
      *(v64 + 22) = 2080;
      v70 = v94;
      sub_22C82F144();
      v71 = sub_22C379FC8();
      (v66)(v71);
      v72 = sub_22C377C4C();
      sub_22C36F9F4(v72, v73, v74);
      sub_22C83AAD4();

      *(v64 + 24) = v70;
      _os_log_impl(&dword_22C366000, v60, v88, "%s %s cache MISS for %s.", v64, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v77 = *(v10 + 8);
      v77(v94, DecorationCacheKey);
      v77(v58, DecorationCacheKey);
    }

    v78 = *(v95 + 8);
    v78(v56, v96);
    sub_22C83144C();
    if (v79)
    {
      sub_22C90400C();
      v80 = sub_22C9063CC();
      v81 = sub_22C90AACC();
      v82 = sub_22C83AA7C();
      if (os_log_type_enabled(v82, v83))
      {
        sub_22C3720F4();
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_22C366000, v80, v81, "Handling new request. Clear cache completely.", v84, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v85 = sub_22C36CA88();
      (v78)(v85);
      sub_22C8317F4();
    }

    v86 = v97;
    *v97 = 0u;
    v86[1] = 0u;
    *(v86 + 32) = -1;
  }

  else
  {
    v100[0] = v98[0];
    v100[1] = v98[1];
    v101 = v99;
    sub_22C90400C();
    v37 = *(v10 + 16);
    v37(v20, v4, DecorationCacheKey);
    v37(v18, v4, DecorationCacheKey);
    swift_retain_n();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AACC();
    v40 = sub_22C370214();
    v42 = v2;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v98[0] = v94;
      *v43 = 136315906;
      *(v43 + 4) = sub_22C36F9F4(0xD000000000000016, 0x800000022C9372F0, v98);
      *(v43 + 12) = 2080;
      v91 = v38;
      sub_22C82F03C(DecorationCacheKey);
      LODWORD(v90) = v39;
      v92 = v42;
      v44 = *(v10 + 8);
      (v44)(v20, DecorationCacheKey);
      v45 = sub_22C372164();
      v48 = sub_22C36F9F4(v45, v46, v47);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2080;
      sub_22C82F144();
      v49 = sub_22C383CCC();
      v44(v49);
      v42 = v92;
      v50 = sub_22C372164();
      v53 = sub_22C36F9F4(v50, v51, v52);

      *(v43 + 24) = v53;
      *(v43 + 32) = 2048;
      v54 = *(*(v42 + 112) + 16);

      *(v43 + 34) = v54;

      v55 = v91;
      _os_log_impl(&dword_22C366000, v91, v90, "%s %s cache HIT for %s from cache size of %ld", v43, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v75 = *(v10 + 8);
      v76 = sub_22C383CCC();
      v75(v76);
      (v75)(v20, DecorationCacheKey);
    }

    (*(v95 + 8))(v102, v96);
    sub_22C6337B8(v100, v97);
    sub_22C82F53C(v42, v4, v93);
    sub_22C83A014(v100);
  }

  sub_22C36FB20();
}

uint64_t sub_22C82F03C(uint64_t a1)
{
  sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C383814();
  BYTE8(v7) = 0;
  sub_22C3E8FB4(v1 + *(a1 + 52), v2, &qword_27D9C0588, &qword_22C927FD0);
  v5 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v5);

  MEMORY[0x2318B7850](2108704, 0xE300000000000000);
  *&v7 = *(v1 + *(a1 + 48));
  sub_22C90B12C();
  return *(&v7 + 1);
}

void sub_22C82F144()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36D5B4();
  v26 = v5;
  v6 = *(v3 + 16);
  v9 = sub_22C83AAA8(255, v6, v7, v8);
  sub_22C369824();
  v11 = v10;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C50B41C();

  sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
  v13 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v13);

  type metadata accessor for QueryDecorationCacheValue.Identifier(0, v6, v14, v15);

  v16 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v16);

  MEMORY[0x2318B7850](0x636976726573200ALL, 0xEB00000000203A65);

  *&v27 = 0x3A7475706E69200ALL;
  *(&v27 + 1) = 0xE900000000000020;
  (*(v11 + 16))(v1, v0, v9);
  v17 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v17);

  sub_22C385E2C();
  v18 = sub_22C36CA88();
  MEMORY[0x2318B7850](v18);

  v19 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v19);

  sub_22C385E2C();
  v20 = sub_22C36CA88();
  MEMORY[0x2318B7850](v20);

  sub_22C90AF5C();

  *&v27 = 0xD00000000000001DLL;
  *(&v27 + 1) = 0x800000022C9372D0;
  sub_22C3E8FB4(v0 + *(v3 + 40), v26, &qword_27D9C06F8, &qword_22C929520);
  v21 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v21);

  sub_22C385E2C();
  v22 = sub_22C36CA88();
  MEMORY[0x2318B7850](v22);

  v23 = v27;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_22C90AF5C();

  strcpy(&v27, "\n deviceIdsID:");
  HIBYTE(v27) = -18;

  v24 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v24);

  v27 = v23;

  v25 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v25);

  sub_22C36CC48();
}

uint64_t sub_22C82F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90063C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CacheKeyHashableRepresentation(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, a3, v12, v13);
  sub_22C82E428(DecorationCacheKey, v11);
  sub_22C90062C();
  sub_22C9005DC();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 128);
  sub_22C62E050(v11, v16);
  *(a1 + 128) = v18;
  sub_22C839C78(v11, type metadata accessor for CacheKeyHashableRepresentation);
  swift_endAccess();
  return sub_22C831298();
}

uint64_t sub_22C82F6F8()
{
  sub_22C36FB38();
  sub_22C83AA94(v1, v2, v3);
  v4 = sub_22C90AC6C();
  v0[28] = v4;
  sub_22C3699B8(v4);
  v0[29] = v5;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v6 = sub_22C83A980();
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(v6, v7, v8, v9);
  v0[32] = DecorationCacheKey;
  sub_22C3699B8(DecorationCacheKey);
  v0[33] = v11;
  v0[34] = sub_22C3856B8();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v0[37] = v12;
  sub_22C3699B8(v12);
  v0[38] = v13;
  v0[39] = sub_22C3856B8();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v14 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C82F880()
{
  v87 = v0;
  sub_22C82E888();
  sub_22C3E8FB4(v0 + 16, v0 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
  v2 = *(v0 + 88);
  if (v2 == 255)
  {
    v22 = *(v0 + 208);
    sub_22C36DD28(v0 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
    v23 = sub_22C36CCF8();
    goto LABEL_6;
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 200);
  if (v2)
  {
    sub_22C456E34((v0 + 56), (v0 + 96));
    sub_22C90400C();
    v6 = sub_22C370018();
    v7(v6);
    v8 = sub_22C9063CC();
    v9 = sub_22C90AACC();
    v10 = sub_22C83AA00(v9);
    v12 = *(v0 + 304);
    v11 = *(v0 + 312);
    v13 = *(v0 + 296);
    v14 = *(v0 + 272);
    if (v10)
    {
      v85 = *(v0 + 296);
      v15 = sub_22C36FB44();
      sub_22C370220();
      LODWORD(v81) = v1;
      v16 = swift_slowAlloc();
      v86[0] = v16;
      sub_22C83AB44(4.8149e-34);
      v83 = v11;
      v17 = sub_22C83A858();
      v18(v17);
      v19 = sub_22C36D390();
      sub_22C36F9F4(v19, v20, v21);
      sub_22C37BB14();

      *(v15 + 4) = v14;
      sub_22C36D418(&dword_22C366000, "%s No cache operation in progress, returning result now.", v81);
      sub_22C36FF94(v16);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v12 + 8))(v11, v85);
    }

    else
    {

      v51 = sub_22C83A858();
      v52(v51);
      (*(v12 + 8))(v11, v13);
    }

    sub_22C831118(v0 + 96, *(v0 + 224), *(v0 + 240));
    v64 = *(v0 + 208);
    sub_22C36FF94((v0 + 96));
    sub_22C36DD28(v0 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
    v65 = sub_22C3707B4();
    v67 = sub_22C370B74(v65, v66, v64);
    v68 = *(v0 + 240);
    v22 = *(v0 + 208);
    v69 = *(v0 + 192);
    if (v67 == 1)
    {
      sub_22C36A748();
      sub_22C36C640(v70, v71, v72, v22);
      v73 = sub_22C36CCF8();
      v25 = sub_22C370B74(v73, v74, v22);
      if (v25 != 1)
      {
        v25 = (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      }

LABEL_7:
      sub_22C36CBAC(v25, v26, v27, v28, v29, v30, v31, v32, v77, v79, v81, v83, v85, v86[0], v86[1], v86[2], v86[3], v86[4], v86[5], v86[6]);

      sub_22C369C50();
      sub_22C375E04();

      __asm { BRAA            X1, X16 }
    }

    sub_22C36BBA8();
    (*(v75 + 32))(v69, v68, v22);
    v23 = v69;
    v24 = 0;
LABEL_6:
    v25 = sub_22C36C640(v23, v24, 1, v22);
    goto LABEL_7;
  }

  v33 = *(v0 + 288);
  *(v0 + 336) = *(v0 + 56);
  sub_22C90400C();
  v34 = *(v4 + 16);
  *(v0 + 344) = v34;
  *(v0 + 352) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v33, v5, v3);
  v35 = sub_22C9063CC();
  v36 = sub_22C90AACC();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 328);
  v40 = *(v0 + 296);
  v39 = *(v0 + 304);
  v41 = *(v0 + 288);
  v43 = *(v0 + 256);
  v42 = *(v0 + 264);
  if (v37)
  {
    v44 = sub_22C36FB44();
    sub_22C370220();
    v84 = v40;
    v45 = swift_slowAlloc();
    v86[0] = v45;
    *v44 = 136315138;
    v78 = sub_22C82F03C(v43);
    v82 = v38;
    v47 = v46;
    v80 = v36;
    v48 = *(v42 + 8);
    v49 = sub_22C36EC8C();
    v48(v49);
    sub_22C36F9F4(v78, v47, v86);
    sub_22C37FF48();

    *(v44 + 4) = v41;
    _os_log_impl(&dword_22C366000, v35, v80, "%s A cache operation is in progress. Waiting for result.", v44, 0xCu);
    sub_22C36FF94(v45);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v50 = *(v39 + 8);
    v50(v82, v84);
  }

  else
  {

    v48 = *(v42 + 8);
    v55 = sub_22C36EC8C();
    v48(v55);
    v50 = *(v39 + 8);
    v50(v38, v40);
  }

  *(v0 + 360) = v50;
  *(v0 + 368) = v48;
  v56 = swift_task_alloc();
  *(v0 + 376) = v56;
  sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C83A99C();
  *v56 = v57;
  v56[1] = sub_22C82FE3C;
  sub_22C375E04();

  return MEMORY[0x282200430](v58, v59, v60, v61, v62);
}

uint64_t sub_22C82FE3C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_22C82FF54(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[35];
  v4 = v1[32];
  v5 = v1[25];
  sub_22C90400C();
  v2(v3, v5, v4);
  v6 = sub_22C9063CC();
  v7 = sub_22C90AACC();
  v8 = sub_22C83AA7C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[45];
  v63 = v1[46];
  v12 = v1[40];
  v13 = v1[37];
  v14 = v1[38];
  v15 = v1[35];
  if (v10)
  {
    v62 = v1[40];
    v16 = sub_22C36FB44();
    sub_22C370220();
    v61 = v13;
    v17 = swift_slowAlloc();
    v64 = v17;
    v59 = v14;
    v60 = v11;
    v18 = sub_22C83AB44(4.8149e-34);
    v20 = v19;
    v21 = sub_22C379FC8();
    v63(v21);
    sub_22C36F9F4(v18, v20, &v64);
    sub_22C37FF48();

    *(v16 + 4) = v15;
    _os_log_impl(&dword_22C366000, v6, v7, "%s Cache operation complete. Returning result.", v16, 0xCu);
    sub_22C36FF94(v17);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v60(v62, v61);
  }

  else
  {

    v22 = sub_22C379FC8();
    v63(v22);
    v11(v12, v13);
  }

  v23 = v1[48];
  v24 = v1[19];
  sub_22C83AB5C(v1 + 16);
  v1[23] = v24;
  sub_22C36D548(v1 + 20);
  sub_22C36BBA8();
  sub_22C634004();
  v25();
  sub_22C381574();
  sub_22C831118(v26, v27, v28);
  if (v23)
  {
    sub_22C36DD28((v1 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v1 + 20);
    sub_22C36FF94(v1 + 16);
    sub_22C3730BC(v1[41], v29, v30, v31, v32, v33, v34, v35, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

    sub_22C369A24();
  }

  else
  {
    v36 = v1[26];
    sub_22C36DD28((v1 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v1 + 20);
    v37 = sub_22C36CCF8();
    v39 = sub_22C370B74(v37, v38, v36);
    v40 = v1[31];
    v41 = v1[26];
    v42 = v1[24];
    if (v39 == 1)
    {
      sub_22C36A748();
      sub_22C36C640(v43, v44, v45, v41);
      v46 = sub_22C36CCF8();
      if (sub_22C370B74(v46, v47, v41) != 1)
      {
        (*(v1[29] + 8))(v1[31], v1[28]);
      }
    }

    else
    {
      sub_22C36BBA8();
      (*(v48 + 32))(v42, v40, v41);
      sub_22C36C640(v42, 0, 1, v41);
    }

    v49 = sub_22C36FF94(v1 + 16);
    sub_22C36CBAC(v49, v50, v51, v52, v53, v54, v55, v56, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

    sub_22C369C50();
  }

  sub_22C375E04();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C8303E8()
{
  sub_22C369980();
  v4 = sub_22C83AA94(v1, v2, v3);
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(v4, v5, v6, v7);
  v0[28] = DecorationCacheKey;
  sub_22C3699B8(DecorationCacheKey);
  v0[29] = v9;
  v0[30] = sub_22C3856B8();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v0[36] = v10;
  sub_22C3699B8(v10);
  v0[37] = v11;
  v0[38] = sub_22C3856B8();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9C0788, &qword_22C928C48);
  sub_22C369914(v12);
  v0[42] = sub_22C3699D4();
  v13 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C830560(uint64_t a1)
{
  v118 = v1;
  v3 = *(v1 + 200);
  v4 = (v3 + *(*(v1 + 224) + 44));
  v5 = v4[1];
  if (v5)
  {
    v6 = *(v1 + 208);
    v7 = *v4;
    sub_22C3870A4();
    swift_beginAccess();
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v8[5] = v3;

    sub_22C838538();
    sub_22C37BB14();

    if (*(v3 + 16) <= 1uLL)
    {
      sub_22C58B7C8(v3, *(v1 + 336));

      v9 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
      v10 = sub_22C36CCF8();
      v12 = sub_22C370B74(v10, v11, v9);
      v13 = *(v1 + 336);
      if (v12 == 1)
      {
        sub_22C36DD28(v13, &qword_27D9C0788, &qword_22C928C48);
        *(v1 + 56) = 0u;
        *(v1 + 72) = 0u;
        *(v1 + 88) = -1;
      }

      else
      {
        v42 = v13 + *(v9 + 48);
        v43 = *v42;
        v44 = *(v42 + 16);
        *(v1 + 88) = *(v42 + 32);
        *(v1 + 72) = v44;
        *(v1 + 56) = v43;
        sub_22C36B7F4();
        sub_22C839C78(v45, v46);
        if (*(v1 + 88) != 255)
        {
          v47 = *(v1 + 72);
          *(v1 + 16) = *(v1 + 56);
          *(v1 + 32) = v47;
          *(v1 + 48) = *(v1 + 88);
          sub_22C6337B8(v1 + 16, v1 + 96);
          if (*(v1 + 128))
          {
            v49 = *(v1 + 272);
            v48 = *(v1 + 280);
            v50 = *(v1 + 224);
            v51 = *(v1 + 232);
            v52 = *(v1 + 200);
            sub_22C456E34((v1 + 96), (v1 + 136));
            sub_22C90400C();
            v53 = *(v51 + 16);
            v53(v48, v52, v50);
            v53(v49, v52, v50);
            v54 = sub_22C9063CC();
            v116 = sub_22C90AACC();
            v55 = os_log_type_enabled(v54, v116);
            v56 = *(v1 + 328);
            v58 = *(v1 + 288);
            v57 = *(v1 + 296);
            v59 = *(v1 + 280);
            v61 = *(v1 + 224);
            v60 = *(v1 + 232);
            if (v55)
            {
              v114 = *(v1 + 328);
              v62 = sub_22C383050();
              v117 = sub_22C37A180();
              *v62 = 136315394;
              log = v54;
              v63 = sub_22C82F03C(v61);
              v112 = v58;
              v65 = v64;
              v66 = *(v60 + 8);
              v66(v59, v61);
              sub_22C36F9F4(v63, v65, &v117);
              sub_22C83AAD4();

              *(v62 + 4) = v59;
              *(v62 + 12) = 2080;
              sub_22C82F144();
              v67 = sub_22C36DA14();
              (v66)(v67);
              v68 = sub_22C372164();
              v71 = sub_22C36F9F4(v68, v69, v70);

              *(v62 + 14) = v71;
              _os_log_impl(&dword_22C366000, log, v116, "%s Cache HIT for remote state with key %s", v62, 0x16u);
              swift_arrayDestroy();
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              (*(v57 + 8))(v114, v112);
            }

            else
            {

              v105 = *(v60 + 8);
              v106 = sub_22C36DA14();
              v105(v106);
              (v105)(v59, v61);
              (*(v57 + 8))(v56, v58);
            }

            v107 = *(v1 + 192);
            v108 = sub_22C90AC6C();
            sub_22C831118(v1 + 136, v108, v107);
            sub_22C36FF94((v1 + 136));
            sub_22C83A014(v1 + 16);
            goto LABEL_21;
          }

          sub_22C83A014(v1 + 16);
          sub_22C83A014(v1 + 96);
          goto LABEL_16;
        }
      }

      sub_22C36DD28(v1 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
LABEL_16:
      v72 = *(v1 + 232);
      sub_22C90400C();
      v73 = *(v72 + 16);
      sub_22C634004();
      v73();
      sub_22C634004();
      v73();
      v74 = sub_22C9063CC();
      v75 = sub_22C90AADC();
      v76 = sub_22C83AA7C();
      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v1 + 320);
      v80 = *(v1 + 288);
      v81 = *(v1 + 296);
      v83 = *(v1 + 256);
      v82 = *(v1 + 264);
      v85 = *(v1 + 224);
      v84 = *(v1 + 232);
      if (v78)
      {
        v110 = v75;
        v86 = sub_22C383050();
        v117 = sub_22C37A180();
        *v86 = 136315394;
        sub_22C82F03C(v85);
        v87 = *(v84 + 8);
        v88 = sub_22C36EC8C();
        v87(v88);
        v89 = sub_22C36BAFC();
        sub_22C36F9F4(v89, v90, v91);
        sub_22C37FF48();

        *(v86 + 4) = v82;
        *(v86 + 12) = 2080;
        sub_22C82F144();
        v93 = v92;
        (v87)(v83, v85);
        v94 = sub_22C36BBCC();
        sub_22C36F9F4(v94, v95, v96);
        sub_22C37BB14();

        *(v86 + 14) = v93;
        _os_log_impl(&dword_22C366000, v74, v110, "%s Cache MISS for remote request with key %s", v86, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {

        v97 = *(v84 + 8);
        v97(v83, v85);
        v98 = sub_22C36EC8C();
        (v97)(v98);
      }

      (*(v81 + 8))(v79, v80);
      goto LABEL_20;
    }

    sub_22C90400C();
    sub_22C634004();
    v30();
    v15 = sub_22C9063CC();
    v31 = sub_22C90AADC();
    v32 = sub_22C83AA00(v31);
    v18 = *(v1 + 312);
    v20 = *(v1 + 288);
    v19 = *(v1 + 296);
    v33 = *(v1 + 248);
    if (v32)
    {
      v115 = *(v1 + 288);
      v34 = sub_22C36FB44();
      sub_22C370220();
      v111 = v2;
      v23 = swift_slowAlloc();
      v117 = v23;
      sub_22C83AB44(4.8149e-34);
      v113 = v18;
      v35 = sub_22C83A858();
      v36(v35);
      v37 = sub_22C36D390();
      sub_22C36F9F4(v37, v38, v39);
      sub_22C37BB14();

      *(v34 + 4) = v33;
      v29 = "%s Cache error: multiple remote cache entries found";
      goto LABEL_9;
    }

LABEL_10:

    v40 = sub_22C83A858();
    v41(v40);
    (*(v19 + 8))(v18, v20);
    goto LABEL_20;
  }

  sub_22C90400C();
  sub_22C37017C();
  v14();
  v15 = sub_22C9063CC();
  v16 = sub_22C90AACC();
  v17 = sub_22C83AA00(v16);
  v19 = *(v1 + 296);
  v18 = *(v1 + 304);
  v20 = *(v1 + 288);
  v21 = *(v1 + 240);
  if (!v17)
  {
    goto LABEL_10;
  }

  v115 = *(v1 + 288);
  v22 = sub_22C36FB44();
  sub_22C370220();
  v111 = v2;
  v23 = swift_slowAlloc();
  v117 = v23;
  sub_22C83AB44(4.8149e-34);
  v113 = v18;
  v24 = sub_22C83A858();
  v25(v24);
  v26 = sub_22C36D390();
  sub_22C36F9F4(v26, v27, v28);
  sub_22C37BB14();

  *(v22 + 4) = v21;
  v29 = "%s Not checking remote cache as deviceIdsID is nil";
LABEL_9:
  sub_22C36D418(&dword_22C366000, v29, v111);
  sub_22C36FF94(v23);
  sub_22C369B50();
  MEMORY[0x2318B9880]();
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  (*(v19 + 8))(v113, v115);
LABEL_20:
  sub_22C36A748();
  sub_22C36C640(v99, v100, v101, v102);
LABEL_21:

  sub_22C369C50();

  return v103();
}

uint64_t sub_22C830E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v37 = a3;
  v9 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_22C839D2C(a1, &v36 - v16);
  sub_22C6337B8(a2, &v17[*(v9 + 48)]);
  sub_22C3E8FB4(v17, v15, &qword_27D9BE230, &unk_22C928C50);
  v18 = *(v9 + 48);
  v19 = v15[*(type metadata accessor for CacheKeyHashableRepresentation(0) + 40)];
  sub_22C839C78(v15, type metadata accessor for CacheKeyHashableRepresentation);
  v20 = &v15[v18];
  v21 = a5;
  sub_22C83A014(v20);
  if (v19 == 1 && (DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(0, v39, v22, v23), v25 = (a5 + *(DecorationCacheKey + 44)), (v26 = v25[1]) != 0) && ((v27 = DecorationCacheKey, *v25 == v37) ? (v28 = v26 == v38) : (v28 = 0), v28 || (sub_22C90B4FC() & 1) != 0))
  {
    sub_22C3E8FB4(v17, v12, &qword_27D9BE230, &unk_22C928C50);
    v30 = *(v12 + 4);
    v29 = *(v12 + 5);

    sub_22C839C78(v12, type metadata accessor for CacheKeyHashableRepresentation);
    v31 = (v21 + *(v27 + 32));
    if (v30 == *v31 && v29 == v31[1])
    {
      v33 = 1;
    }

    else
    {
      v33 = sub_22C90B4FC();
    }

    v34 = *(v9 + 48);
    sub_22C36DD28(v17, &qword_27D9BE230, &unk_22C928C50);
    sub_22C83A014(&v12[v34]);
  }

  else
  {
    sub_22C36DD28(v17, &qword_27D9BE230, &unk_22C928C50);
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_22C831118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90AC6C();
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  sub_22C36F998(a1, v18);
  if (swift_dynamicCast())
  {
    sub_22C36C640(v11, 0, 1, a2);
    sub_22C36BBA8();
    return (*(v12 + 32))(a3, v11, a2);
  }

  else
  {
    sub_22C36A748();
    sub_22C36C640(v14, v15, v16, a2);
    (*(v8 + 8))(v11, v6);
    sub_22C839C24();
    sub_22C37A198();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_22C831298()
{
  v3 = sub_22C3A5908(&qword_27D9C0780, &qword_22C928C38);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C3717BC();
  v5 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3721C8();
  sub_22C3870A4();
  swift_beginAccess();

  v14[0] = sub_22C470270(v7);
  sub_22C836F64(v14);

  sub_22C58B484(v14[0], v2);

  v8 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  if (sub_22C370B74(v2, 1, v8) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9C0780, &qword_22C928C38);
    v9 = 1;
  }

  else
  {
    sub_22C36A42C();
    sub_22C839CD0(v2, v0);
    v9 = 0;
  }

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v10 = sub_22C598F54();
  sub_22C36C640(v10, v9, 1, v11);
  v12 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
  sub_22C79D0C0(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU, v14);
  sub_22C839EF8(v0, v1 + v12);
  return swift_endAccess();
}

void sub_22C83144C()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C3717BC();
  if (!v3)
  {
LABEL_23:
    sub_22C36CC48();
    return;
  }

  v34 = v5;
  v35 = v3;
  sub_22C3870A4();
  swift_beginAccess();
  v18 = *(v0 + 112);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_9:
      sub_22C839D2C(*(v18 + 48) + *(v8 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v15);
      sub_22C36A42C();
      v25 = sub_22C371510();
      sub_22C839CD0(v25, v26);
      if (*(v12 + 24))
      {
        break;
      }

      v21 &= v21 - 1;
      sub_22C36B7F4();
      sub_22C839C78(v12, v27);
      v23 = v24;
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    sub_22C36A42C();
    sub_22C839CD0(v12, v1);
    v28 = 0;
LABEL_13:
    sub_22C36C640(v1, v28, 1, v6);

    if (sub_22C370B74(v1, 1, v6) == 1)
    {
      sub_22C36DD28(v1, &qword_27D9C0760, &qword_22C928BD8);
    }

    else
    {
      v30 = *(v1 + 16);
      v29 = *(v1 + 24);

      sub_22C36B7F4();
      sub_22C839C78(v1, v31);
      if (v29)
      {
        if (v30 != v34 || v29 != v35)
        {
          sub_22C90B4FC();
        }
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v28 = 1;
      goto LABEL_13;
    }

    v21 = *(v18 + 64 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22C8316FC()
{
  v1 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C3721C8();
  sub_22C3870A4();
  swift_beginAccess();

  sub_22C58B920(v3, v0);

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v4 = sub_22C36CCF8();
  if (sub_22C370B74(v4, v5, v6) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9C0760, &qword_22C928BD8);
    return 0;
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  sub_22C36B7F4();
  sub_22C839C78(v0, v9);
  if (!v8)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_22C8317F4()
{
  v2 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C3721C8();
  v4 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C373F18(&qword_281430CF0, 255, type metadata accessor for CacheKeyHashableRepresentation, &unk_22C9289EC);
  sub_22C370018();
  v5 = sub_22C909F0C();
  swift_beginAccess();
  *(v1 + 112) = v5;

  sub_22C370018();
  v6 = sub_22C909F0C();
  swift_beginAccess();
  *(v1 + 128) = v6;

  sub_22C36A748();
  sub_22C36C640(v7, v8, v9, v4);
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
  sub_22C79D0C0(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU, v12);
  sub_22C839EF8(v0, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_22C83195C()
{
  sub_22C369980();
  v3 = v2;
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v4;
  v1[35] = v5;
  v1[32] = v6;
  v1[33] = v7;
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v8);
  v1[38] = sub_22C3699D4();
  v1[39] = *(v3 - 8);
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v9 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C831A4C()
{
  sub_22C3743E4();
  sub_22C82E888();
  sub_22C3E8FB4(v0 + 16, v0 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
  v1 = *(v0 + 88);
  if (v1 == 255)
  {
    sub_22C90A75C();
    sub_22C598F54();
    sub_22C36A748();
    sub_22C36C640(v5, v6, v7, v8);
    v9 = swift_allocObject();
    sub_22C83AA1C(v9);
    sub_22C83A954();
    v11 = v10;
    *(v0 + 368) = v10;
    sub_22C37275C();
    sub_22C82E6C0(v12, v13, v14);
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    v16 = sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    sub_22C83A99C();
    *v15 = v18;
    v15[1] = sub_22C83203C;
    v19 = MEMORY[0x277D84950];
    v20 = v0 + 96;
    v21 = v11;
  }

  else
  {
    if (v1)
    {
      sub_22C456E34((v0 + 56), (v0 + 160));
      sub_22C381574();
      sub_22C831118(v2, v3, v4);
      sub_22C36FF94((v0 + 160));
      sub_22C36DD28(v0 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
      sub_22C37017C();
      v24();
      sub_22C83A9C4();

      sub_22C369C50();

      return v25();
    }

    v22 = *(v0 + 56);
    *(v0 + 344) = v22;
    v23 = swift_task_alloc();
    *(v0 + 352) = v23;
    v16 = sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
    v17 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v23 = v0;
    v23[1] = sub_22C831D88;
    v19 = MEMORY[0x277D84950];
    v20 = v0 + 192;
    v21 = v22;
  }

  return MEMORY[0x282200430](v20, v21, v16, v17, v19);
}

uint64_t sub_22C831D88()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 360) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C831EA0()
{
  sub_22C36D5EC();
  v1 = v0[45];
  v2 = v0[27];
  sub_22C83AB5C(v0 + 24);
  v0[31] = v2;
  sub_22C36D548(v0 + 28);
  sub_22C36BBA8();
  sub_22C634004();
  v3();
  sub_22C381574();
  sub_22C831118(v4, v5, v6);
  sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

  sub_22C36FF94(v0 + 28);
  sub_22C36FF94(v0 + 24);
  if (v1)
  {
    sub_22C83A9C4();

    sub_22C369A24();
  }

  else
  {
    sub_22C37275C();
    v8();
    sub_22C83A9C4();

    sub_22C369C50();
  }

  return v7();
}

uint64_t sub_22C83203C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C832154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  v11 = v10[48];
  v12 = v10[15];
  sub_22C83AB5C(v10 + 12);
  v10[19] = v12;
  sub_22C36D548(v10 + 16);
  sub_22C36BBA8();
  sub_22C634004();
  v13();
  sub_22C381574();
  sub_22C831118(v14, v15, v16);
  sub_22C36FF94(v10 + 16);
  sub_22C36FF94(v10 + 12);
  if (v11)
  {
    sub_22C82E788(v10[33], v10[36]);
    swift_willThrow();

    sub_22C36DD28((v10 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C369A24();
  }

  else
  {
    sub_22C82D568(v10[40], v10[33], v10[36]);

    sub_22C36DD28((v10 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
    sub_22C37275C();
    v17();
    sub_22C83A9C4();

    sub_22C369C50();
  }

  sub_22C83AB2C();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_22C8322FC()
{
  sub_22C36FB38();

  sub_22C36DD28(v0 + 16, &qword_27D9BF3C8, &qword_22C928BF0);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8323A0()
{
  sub_22C36D5EC();
  sub_22C82E788(*(v0 + 264), *(v0 + 288));
  swift_willThrow();

  sub_22C36DD28(v0 + 16, &qword_27D9BF3C8, &qword_22C928BF0);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C832468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22C83248C, 0, 0);
}

uint64_t sub_22C83248C()
{
  sub_22C36FB38();
  v1 = v0[2];
  v1[3] = v0[5];
  sub_22C36D548(v1);
  sub_22C37F5D8();
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v2;
  *v2 = v3;
  v4 = sub_22C37E1E8(v2);

  return v5(v4);
}

uint64_t sub_22C83254C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C83A850, 0, 0);
  }

  else
  {
    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C832668()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v7 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v7);
  v1[16] = sub_22C3699D4();
  v8 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8326F4()
{
  sub_22C3743E4();
  sub_22C90A75C();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v1, v2, v3, v4);
  v5 = swift_allocObject();
  sub_22C83AA1C(v5);
  sub_22C83A954();
  *(v0 + 136) = v6;
  sub_22C37275C();
  sub_22C82E6C0(v7, v8, v9);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C83A99C();
  *v10 = v11;
  v10[1] = sub_22C83283C;
  sub_22C37275C();

  return MEMORY[0x282200430](v12, v13, v14, v15, v16);
}

uint64_t sub_22C83283C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C832954()
{
  sub_22C3743E4();
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[5];
  sub_22C83AB5C(v0 + 2);
  v0[9] = v4;
  sub_22C36D548(v0 + 6);
  sub_22C36BBA8();
  sub_22C634004();
  v5();
  sub_22C831118((v0 + 6), v2, v3);
  sub_22C36FF94(v0 + 6);
  sub_22C36FF94(v0 + 2);
  v6 = v0[14];
  if (v1)
  {
    sub_22C82E788(v0[11], v6);
    swift_willThrow();
  }

  else
  {
    sub_22C82D568(v0[10], v0[11], v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22C832A8C()
{
  sub_22C36D5EC();
  sub_22C82E788(*(v0 + 88), *(v0 + 112));
  swift_willThrow();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C832B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22C832B40, 0, 0);
}

uint64_t sub_22C832B40()
{
  sub_22C36FB38();
  v1 = v0[2];
  v1[3] = v0[5];
  sub_22C36D548(v1);
  sub_22C37F5D8();
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v2;
  *v2 = v3;
  v4 = sub_22C37E1E8(v2);

  return v5(v4);
}

uint64_t sub_22C832C00()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C832D1C, 0, 0);
  }

  else
  {
    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C832D1C()
{
  sub_22C369980();
  sub_22C4BF5D8(*(v0 + 16));
  sub_22C369A24();

  return v1();
}

void sub_22C832D78()
{
  sub_22C370030();
  v3 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  sub_22C903E7C();
  sub_22C369824();
  v51 = v8;
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B438();
  v9 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3721C8();
  v53 = sub_22C903EAC();
  if (v11)
  {
    v12 = v11;
    v50 = v1;
    v13 = sub_22C903EBC();
    if (v13)
    {
      v14 = v13;
      sub_22C902DBC();
      sub_22C36A748();
      sub_22C36C640(v15, v16, v17, v18);
      sub_22C903D4C();
      sub_22C36A748();
      sub_22C36C640(v19, v20, v21, v22);
      sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
      sub_22C598F54();
      sub_22C36A748();
      sub_22C36C640(v23, v24, v25, v26);
      v27 = (v0 + v9[7]);
      *v27 = 0;
      v27[1] = 0;
      v28 = (v0 + v9[8]);
      *v28 = 0x736E617073;
      v28[1] = 0xE500000000000000;
      v29 = (v0 + v9[9]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v0 + v9[11]);
      *v30 = v53;
      v30[1] = v12;
      *(v0 + v9[12]) = 1;

      sub_22C82C088(v14, v0);

      sub_22C36DD28(v0, &qword_27D9C0260, &unk_22C926740);
    }

    if (sub_22C903ECC())
    {
      sub_22C903E3C();
      sub_22C902DBC();
      sub_22C36A748();
      sub_22C36C640(v31, v32, v33, v34);
      sub_22C903D4C();
      sub_22C36A748();
      sub_22C36C640(v35, v36, v37, v38);
      sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
      sub_22C36A748();
      sub_22C36C640(v39, v40, v41, v42);
      v43 = &v6[v3[7]];
      *v43 = 0;
      *(v43 + 1) = 0;
      v44 = &v6[v3[8]];
      *v44 = 0x747865746E6F63;
      *(v44 + 1) = 0xE700000000000000;
      v45 = &v6[v3[9]];
      *v45 = 0;
      *(v45 + 1) = 0;
      v46 = &v6[v3[11]];
      *v46 = v53;
      v46[1] = v12;
      v6[v3[12]] = 1;
      v47 = sub_22C370114();
      sub_22C82CAE8(v47, v48);
      sub_22C36DD28(v6, &qword_27D9C0240, &qword_22C926718);
      (*(v51 + 8))(v2, v52);
    }

    else
    {
    }
  }

  else
  {
    sub_22C839C24();
    sub_22C37A198();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
  }

  sub_22C36FB20();
}

uint64_t sub_22C8330E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C82F6F8();
}

uint64_t sub_22C83319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22C8331C0, v5, 0);
}

uint64_t sub_22C8331C0()
{
  sub_22C369980();
  sub_22C82D568(v0[2], v0[3], v0[4]);
  sub_22C369C50();

  return v1();
}

uint64_t sub_22C83321C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C8303E8();
}

uint64_t sub_22C8332D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22C8332F4, v4, 0);
}

uint64_t sub_22C8332F4()
{
  sub_22C36FB38();
  sub_22C832D78();
  sub_22C369A24();

  return v0();
}

uint64_t sub_22C83336C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C83195C();
}

uint64_t sub_22C833438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C832668();
}

void sub_22C83353C()
{
  sub_22C36BA7C();
  v34 = v2;
  v35 = v3;
  sub_22C908D2C();
  sub_22C369824();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C50B530();
  v6 = sub_22C83A980();
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input(v6, v7, v8, v9);
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v14);
  v16 = (v31 - v15);
  sub_22C83A980();
  swift_getTupleTypeMetadata2();
  sub_22C369824();
  v31[1] = v17;
  sub_22C36D5A8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (v31 + *(v19 + 48) - v20);
  v22 = *(v12 + 16);
  (v22)(v31 - v20, v34, DecorationCache);
  (v22)(v21, v35, DecorationCache);
  sub_22C36BBCC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C37017C();
    v22();
    sub_22C36D390();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v32;
      v23 = v33;
      (*(v32 + 32))(v0, v21, v33);
      sub_22C370018();
      sub_22C908D0C();
      v25 = *(v24 + 8);
      v25(v0, v23);
      v25(v1, v23);
    }

    else
    {
      (*(v32 + 8))(v1, v33);
    }
  }

  else
  {
    sub_22C37017C();
    v22();
    v27 = *v16;
    v26 = v16[1];
    sub_22C36D390();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      if (v27 != *v21 || v26 != v21[1])
      {
        sub_22C90B4FC();
      }
    }
  }

  v28 = sub_22C36BBCC();
  v29(v28);
  sub_22C36CC48();
}

uint64_t sub_22C833858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575516C6F6F74 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C833924(char a1)
{
  if (a1)
  {
    return 0x726575516C6F6F74;
  }

  else
  {
    return 0x7972657571;
  }
}

void sub_22C83395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v26 = *(v25 + 16);
  v27 = v25;
  v64 = v25;
  type metadata accessor for QueryDecorationCacheKey.Input.ToolQueryCodingKeys(255, v26, v28, v29);
  sub_22C381C08();
  swift_getWitnessTable();
  sub_22C83AA88();
  sub_22C90B43C();
  sub_22C369824();
  v62 = v31;
  v63 = v30;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C36D5B4();
  v59 = v33;
  sub_22C36BA0C();
  sub_22C908D2C();
  sub_22C369824();
  v60 = v35;
  v61 = v34;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v58 = v37 - v36;
  type metadata accessor for QueryDecorationCacheKey.Input.QueryCodingKeys(255, v26, v38, v39);
  sub_22C83A8D4();
  swift_getWitnessTable();
  sub_22C83AA88();
  sub_22C90B43C();
  sub_22C369824();
  v56 = v41;
  v57 = v40;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C36D5B4();
  v55 = v43;
  v44 = *(v27 - 8);
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  sub_22C50B438();
  type metadata accessor for QueryDecorationCacheKey.Input.CodingKeys(255, v26, v46, v47);
  sub_22C380628();
  swift_getWitnessTable();
  sub_22C90B43C();
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  sub_22C3721C8();
  v49 = sub_22C36EC8C();
  sub_22C374168(v49, v50);
  sub_22C90B6CC();
  (*(v44 + 16))(v24, v23, v64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v60 + 32))(v58, v24, v61);
    sub_22C90B36C();
    sub_22C36C504();
    sub_22C373F18(v51, 255, v52, MEMORY[0x277D1E9B0]);
    sub_22C90B41C();
    (*(v62 + 8))(v59, v63);
    (*(v60 + 8))(v58, v61);
  }

  else
  {
    sub_22C90B36C();
    sub_22C90B3CC();

    (*(v56 + 8))(v55, v57);
  }

  v53 = sub_22C36DA14();
  v54(v53);
  sub_22C36FB20();
}

uint64_t sub_22C833DB8(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v5 = sub_22C908D2C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C50B530();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v3, v12, v5);
    MEMORY[0x2318B8B10](1);
    sub_22C36C504();
    sub_22C373F18(v14, 255, v15, MEMORY[0x277D1E9B8]);
    sub_22C909F8C();
    return (*(v7 + 8))(v3, v5);
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C36BBCC();
    sub_22C909FFC();
  }
}

uint64_t sub_22C833F8C(uint64_t a1)
{
  sub_22C37B5C8();
  sub_22C833DB8(v3, a1);
  return sub_22C90B66C();
}

void sub_22C833FCC()
{
  sub_22C370030();
  v89 = v0;
  v4 = v3;
  v6 = v5;
  v82 = v7;
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input.ToolQueryCodingKeys(255, v3, v8, v9);
  sub_22C381C08();
  swift_getWitnessTable();
  sub_22C83AA88();
  v80 = DecorationCache;
  v81 = v11;
  v78 = sub_22C90B35C();
  sub_22C369824();
  v77 = v12;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v83 = v14;
  v15 = sub_22C38B534();
  v19 = type metadata accessor for QueryDecorationCacheKey.Input.QueryCodingKeys(v15, v16, v17, v18);
  sub_22C83A8D4();
  swift_getWitnessTable();
  sub_22C83AA88();
  v86 = v19;
  v79 = v20;
  v76 = sub_22C90B35C();
  sub_22C369824();
  v75 = v21;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D5B4();
  v85 = v23;
  v24 = sub_22C38B534();
  type metadata accessor for QueryDecorationCacheKey.Input.CodingKeys(v24, v25, v26, v27);
  sub_22C380628();
  swift_getWitnessTable();
  sub_22C83A980();
  sub_22C90B35C();
  sub_22C369824();
  v87 = v28;
  v88 = v29;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C50B438();
  v84 = type metadata accessor for QueryDecorationCacheKey.Input(0, v4, v31, v32);
  sub_22C369824();
  v74 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v39);
  v41 = &v70 - v40;
  v94 = v6;
  sub_22C374168(v6, v6[3]);
  v42 = v89;
  sub_22C90B6BC();
  if (!v42)
  {
    v71 = v1;
    v73 = v37;
    v72 = v41;
    v89 = 0;
    v43 = v87;
    *&v90 = sub_22C90B34C();
    sub_22C83A980();
    sub_22C90A68C();
    swift_getWitnessTable();
    *&v92 = sub_22C90ADFC();
    *(&v92 + 1) = v44;
    *&v93 = v45;
    *(&v93 + 1) = v46;
    sub_22C83A980();
    sub_22C90ADEC();
    swift_getWitnessTable();
    sub_22C36DA14();
    sub_22C90A99C();
    v47 = v90;
    if (v90 == 2 || (v70 = v92, v90 = v92, v91 = v93, sub_22C36DA14(), (sub_22C90A9AC() & 1) == 0))
    {
      sub_22C90AFBC();
      sub_22C37A198();
      swift_allocError();
      v53 = v52;
      sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
      *v53 = v84;
      v54 = sub_22C90B25C();
      sub_22C387D6C(v54);
      sub_22C36BBA8();
      (*(v55 + 104))(v53);
      swift_willThrow();
      (*(v88 + 8))(v2, v43);
    }

    else
    {
      if (v47)
      {
        LOBYTE(v90) = 1;
        v48 = v89;
        sub_22C90B24C();
        v49 = v82;
        if (!v48)
        {
          sub_22C908D2C();
          sub_22C36C504();
          sub_22C373F18(v50, 255, v51, MEMORY[0x277D1E9C0]);
          sub_22C90B32C();
          v58 = sub_22C372164();
          v59(v58);
          (*(v88 + 8))(v2, v43);
          sub_22C386048();
          swift_unknownObjectRelease();
          v60 = v84;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          v67 = *(v74 + 32);
          v68 = v72;
          v69 = sub_22C36CA88();
          v67(v69);
          (v67)(v49, v68, v60);
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v90) = 0;
        v56 = v89;
        sub_22C90B24C();
        v57 = v88;
        if (!v56)
        {
          v61 = sub_22C90B2DC();
          v63 = v62;
          v64 = sub_22C36CD78();
          v65(v64);
          (*(v57 + 8))(v2, v43);
          sub_22C386048();
          swift_unknownObjectRelease();
          v66 = v71;
          *v71 = v61;
          v66[1] = v63;
          v60 = v84;
          swift_storeEnumTagMultiPayload();
          v49 = v82;
          goto LABEL_14;
        }
      }

      (*(v88 + 8))(v2, v43);
      sub_22C386048();
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  sub_22C36FF94(v94);
  sub_22C36FB20();
}

uint64_t sub_22C8346B8(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C3A4FC0(v3, *v1);
  return sub_22C90B66C();
}

uint64_t sub_22C834710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C833858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C834764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3C4E48();
  *a1 = result;
  return result;
}

uint64_t sub_22C834790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C8347E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834880@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3772DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22C8348B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C834904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void))
{
  sub_22C90B62C();
  a4(v7, *(a2 + 16));
  return sub_22C90B66C();
}

uint64_t sub_22C8349A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C8349F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834A90(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C833DB8(v4, a2);
  return sub_22C90B66C();
}

unint64_t sub_22C834AD4(uint64_t a1)
{
  sub_22C90B21C();
  sub_22C37BB14();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

void sub_22C834B1C()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C369A48();
  v6 = sub_22C902DBC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  v8 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C383814();
  v10 = sub_22C3A5908(&qword_27D9C0708, &qword_22C928B88);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C3717BC();
  v12 = v0[1];
  v13 = v5[1];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = *v0 == *v5 && v12 == v13;
    if (!v14 && (sub_22C90B4FC() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v13)
  {
    goto LABEL_42;
  }

  v15 = v0[3];
  v16 = v5[3];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v17 = v0[2] == v5[2] && v15 == v16;
    if (!v17 && (sub_22C90B4FC() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v16)
  {
    goto LABEL_42;
  }

  v18 = v0[4] == v5[4] && v0[5] == v5[5];
  if (!v18 && (sub_22C90B4FC() & 1) == 0)
  {
    goto LABEL_42;
  }

  v19 = v0[7];
  v20 = v5[7];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_42;
    }

    v21 = v0[6] == v5[6] && v19 == v20;
    if (!v21 && (sub_22C90B4FC() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v20)
  {
    goto LABEL_42;
  }

  v32 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v22 = *(v32 + 32);
  v23 = *(v10 + 48);
  sub_22C3E8FB4(v0 + v22, v2, &qword_27D9C06F8, &qword_22C929520);
  sub_22C3E8FB4(v5 + v22, v2 + v23, &qword_27D9C06F8, &qword_22C929520);
  sub_22C37BFE0(v2);
  if (!v14)
  {
    sub_22C3E8FB4(v2, v3, &qword_27D9C06F8, &qword_22C929520);
    sub_22C37BFE0(v2 + v23);
    if (!v24)
    {
      sub_22C37B83C();
      sub_22C839CD0(v2 + v23, v1);
      v25 = sub_22C90067C();
      sub_22C839C78(v1, v6);
      sub_22C839C78(v3, v6);
      sub_22C36DD28(v2, &qword_27D9C06F8, &qword_22C929520);
      if ((v25 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    sub_22C839C78(v3, MEMORY[0x277D1D2C8]);
LABEL_41:
    sub_22C36DD28(v2, &qword_27D9C0708, &qword_22C928B88);
    goto LABEL_42;
  }

  sub_22C37BFE0(v2 + v23);
  if (!v14)
  {
    goto LABEL_41;
  }

  sub_22C36DD28(v2, &qword_27D9C06F8, &qword_22C929520);
LABEL_44:
  v26 = *(v32 + 36);
  v27 = (v0 + v26);
  v28 = *(v0 + v26 + 8);
  v29 = (v5 + v26);
  v30 = v29[1];
  if (v28 && v30 && (*v27 != *v29 || v28 != v30))
  {
    sub_22C90B4FC();
  }

LABEL_42:
  sub_22C36CC48();
}

uint64_t sub_22C834E6C(uint64_t a1)
{
  v3 = sub_22C902DBC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C383814();
  if (v1[1])
  {
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  if (v1[3])
  {
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  sub_22C909FFC();
  if (v1[7])
  {
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  v10 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v1 + v10[8], v2, &qword_27D9C06F8, &qword_22C929520);
  sub_22C37BFE0(v2);
  if (v11)
  {
    sub_22C387CC4();
  }

  else
  {
    sub_22C37B83C();
    sub_22C839CD0(v2, v7);
    sub_22C36D354();
    sub_22C902D9C();
    sub_22C839C78(v7, v3);
  }

  if (*(v1 + v10[9] + 8))
  {
    sub_22C36D354();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  return MEMORY[0x2318B8B10](*(v1 + v10[10]));
}

uint64_t sub_22C83504C()
{
  sub_22C90B62C();
  sub_22C834E6C(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C83508C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C83514C(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

void sub_22C83517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  v45 = v26;
  v28 = v27;
  sub_22C3A5908(&qword_27D9C0740, &qword_22C928BB0);
  sub_22C369824();
  v43 = v30;
  v44 = v29;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C383814();
  v42 = sub_22C3A5908(&qword_27D9C0748, &qword_22C928BB8);
  sub_22C369824();
  v33 = v32;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C50B41C();
  v35 = sub_22C3A5908(&qword_27D9C0750, &unk_22C928BC0);
  sub_22C369824();
  v37 = v36;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v40 = &v42 - v39;
  sub_22C374168(v28, v28[3]);
  sub_22C836F10();
  sub_22C90B6CC();
  v41 = (v37 + 8);
  if (v45)
  {
    sub_22C839B7C();
    sub_22C90B36C();
    (*(v43 + 8))(v24, v44);
  }

  else
  {
    sub_22C839BD0();
    sub_22C90B36C();
    (*(v33 + 8))(v25, v42);
  }

  (*v41)(v40, v35);
  sub_22C36FB20();
}

void sub_22C8353E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  sub_22C3A5908(&qword_27D9C0710, &qword_22C928B90);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C3721C8();
  v30 = sub_22C3A5908(&qword_27D9C0718, &qword_22C928B98);
  sub_22C369824();
  v52 = v31;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C50B41C();
  sub_22C3A5908(&qword_27D9C0720, &unk_22C928BA0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C383814();
  sub_22C374168(v28, v28[3]);
  sub_22C836F10();
  sub_22C90B6BC();
  if (v23)
  {
    goto LABEL_8;
  }

  v53 = v28;
  sub_22C90B34C();
  sub_22C3E1F24();
  if (v35 == v36 >> 1)
  {
LABEL_7:
    sub_22C90AFBC();
    sub_22C37A198();
    swift_allocError();
    v43 = v42;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v43 = &type metadata for DeviceSource;
    v44 = sub_22C90B25C();
    sub_22C387D6C(v44);
    sub_22C36BBA8();
    (*(v45 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = sub_22C377C4C();
    v47(v46);
    v28 = v53;
LABEL_8:
    sub_22C36FF94(v28);
LABEL_9:
    sub_22C36FB20();
    return;
  }

  if (v35 < (v36 >> 1))
  {
    v37 = *(v34 + v35);
    sub_22C3E1F20();
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 == v41 >> 1)
    {
      if (v37)
      {
        a13 = 1;
        sub_22C839B7C();
        sub_22C38B284(&type metadata for DeviceSource.RemoteCodingKeys, &a13);
        swift_unknownObjectRelease();
        v48 = sub_22C370114();
        v49(v48);
      }

      else
      {
        a12 = 0;
        sub_22C839BD0();
        sub_22C38B284(&type metadata for DeviceSource.LocalCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v52 + 8))(v24, v30);
      }

      v50 = sub_22C83A90C();
      v51(v50);
      sub_22C36FF94(v53);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22C83582C(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C834E6C(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C83588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C83508C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8358B4(uint64_t a1)
{
  v2 = sub_22C836F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8358F0(uint64_t a1)
{
  v2 = sub_22C836F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C83592C(uint64_t a1)
{
  v2 = sub_22C839BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C835968(uint64_t a1)
{
  v2 = sub_22C839BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8359A4(uint64_t a1)
{
  v2 = sub_22C839B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8359E0(uint64_t a1)
{
  v2 = sub_22C839B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C835A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C835ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C90B4FC();
  }
}

uint64_t sub_22C835AE8()
{
  sub_22C37B5C8();
  sub_22C37017C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C835B34(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C573C50(v3, *v1, v1[1]);
  return sub_22C90B66C();
}

uint64_t sub_22C835BA8()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[2] = v1;
  sub_22C3699B8(v1);
  v0[3] = v2;
  v0[4] = sub_22C3699D4();
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C835C48()
{
  sub_22C36D5EC();
  sub_22C90400C();
  v0 = sub_22C9063CC();
  sub_22C90AAEC();
  v1 = sub_22C370214();
  if (os_log_type_enabled(v1, v2))
  {
    sub_22C3720F4();
    v3 = swift_slowAlloc();
    sub_22C36C890(v3);
    sub_22C36BB14(&dword_22C366000, v4, v5, "QueryDecorationCache failed to initialise. The remote state cannot be read so this remote intelligence request will fail");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v6 = sub_22C36BAFC();
  v7(v6);
  sub_22C839C24();
  sub_22C37A198();
  v8 = swift_allocError();
  sub_22C83AAF4(v8, v9, v10, v11);

  sub_22C369A24();

  return v12();
}

uint64_t sub_22C835D40()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[2] = v1;
  sub_22C3699B8(v1);
  v0[3] = v2;
  v0[4] = sub_22C3699D4();
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C835DE0()
{
  sub_22C36D5EC();
  sub_22C90400C();
  v0 = sub_22C9063CC();
  sub_22C90AAEC();
  v1 = sub_22C370214();
  if (os_log_type_enabled(v1, v2))
  {
    sub_22C3720F4();
    v3 = swift_slowAlloc();
    sub_22C36C890(v3);
    sub_22C36BB14(&dword_22C366000, v4, v5, "QueryDecorationCache failed to initialise. The remote state cannot be stored so this remote intelligence request will fail");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v6 = sub_22C36BAFC();
  v7(v6);
  sub_22C839C24();
  sub_22C37A198();
  v8 = swift_allocError();
  sub_22C83AAF4(v8, v9, v10, v11);

  sub_22C369A24();

  return v12();
}

uint64_t sub_22C835ED8()
{
  sub_22C369980();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22C9063DC();
  v0[4] = v3;
  sub_22C3699B8(v3);
  v0[5] = v4;
  v0[6] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C835F7C()
{
  sub_22C36D5EC();
  sub_22C90400C();
  v1 = sub_22C9063CC();
  sub_22C90AADC();
  v2 = sub_22C370214();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v7 = *(v0 + 24);

  v8 = sub_22C36BAFC();
  v9(v8);
  sub_22C36A748();
  sub_22C36C640(v10, v11, v12, v7);

  sub_22C369C50();

  return v13();
}

uint64_t sub_22C83606C()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C9063DC();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v0[7] = sub_22C3699D4();
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C836114()
{
  sub_22C36D5EC();
  sub_22C90400C();
  v1 = sub_22C9063CC();
  sub_22C90AADC();
  v2 = sub_22C370214();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v7 = sub_22C36BAFC();
  v8(v7);
  sub_22C38AB9C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 64) = v9;
  *v9 = v10;
  v11 = sub_22C83A9D0(v9);

  return v12(v11);
}

uint64_t sub_22C836248()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C9063DC();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v0[7] = sub_22C3699D4();
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8362F0()
{
  sub_22C36D5EC();
  sub_22C90400C();
  v1 = sub_22C9063CC();
  sub_22C90AADC();
  v2 = sub_22C370214();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v7 = sub_22C36BAFC();
  v8(v7);
  sub_22C38AB9C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 64) = v9;
  *v9 = v10;
  v11 = sub_22C83A9D0(v9);

  return v12(v11);
}

uint64_t sub_22C836424()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C836520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835ED8();
}

uint64_t sub_22C8365C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835B88();
}

uint64_t sub_22C83664C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835BA8();
}

uint64_t sub_22C8366D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835D40();
}

uint64_t sub_22C836764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C83606C();
}

uint64_t sub_22C836814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C836248();
}

uint64_t QueryDecorationRemoteStateHandler.cacheRemoteDeviceState(remoteState:sessionId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8368F0()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  sub_22C37FF48();
  sub_22C369B5C();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22C469418;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_22C836A38(uint64_t a1)
{
  result = sub_22C90413C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22C836AF4(uint64_t a1)
{
  sub_22C836D70(319, &qword_281430C90, type metadata accessor for CacheKeyHashableRepresentation);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22C836BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C836C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C836C6C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_22C836CA0(uint64_t a1)
{
  sub_22C436620();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22C836D70(319, &qword_281435798, MEMORY[0x277D1D2C8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_22C836D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22C836DD8()
{
  result = qword_27D9C0700;
  if (!qword_27D9C0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0700);
  }

  return result;
}

unint64_t sub_22C836F10()
{
  result = qword_27D9C0728;
  if (!qword_27D9C0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0728);
  }

  return result;
}

uint64_t sub_22C836F64(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C468();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C837018(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C837018(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C8373B0(v8, v9, a1, v4);
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
    return sub_22C837160(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C837160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v34 = v19;
      v35 = a3;
      v32 = v21;
      v33 = v20;
      v22 = v20;
      v23 = v39;
      do
      {
        sub_22C3E8FB4(v21, v16, &qword_27D9BAB78, &qword_22C928C40);
        sub_22C3E8FB4(v19, v12, &qword_27D9BAB78, &qword_22C928C40);
        v24 = *(v23 + 48);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        sub_22C36DD28(v12, &qword_27D9BAB78, &qword_22C928C40);
        result = sub_22C36DD28(v16, &qword_27D9BAB78, &qword_22C928C40);
        if (v25 >= v26)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        v27 = v38;
        sub_22C839F68(v21, v38);
        v23 = v39;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C839F68(v27, v19);
        v19 += v36;
        v21 += v36;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v19 = v34 + v30;
      v20 = v33 - 1;
      v21 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C8373B0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v121 = a1;
  v8 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v129 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v125 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v117 - v14;
  MEMORY[0x28223BE20](v13);
  v134 = &v117 - v15;
  v130 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_98:
    v136 = *v121;
    if (!v136)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v109 = v18 + 16;
      v110 = *(v18 + 2);
      while (v110 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_136;
        }

        v111 = v5;
        v112 = v18;
        v5 = &v18[16 * v110];
        v113 = *v5;
        v114 = &v109[2 * v110];
        v115 = *(v114 + 1);
        sub_22C837CC0(*v130 + *(v129 + 72) * *v5, *v130 + *(v129 + 72) * *v114, *v130 + *(v129 + 72) * v115, v136);
        if (v111)
        {
          break;
        }

        if (v115 < v113)
        {
          goto LABEL_124;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_125;
        }

        *v5 = v113;
        *(v5 + 1) = v115;
        v116 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_126;
        }

        v110 = *v109 - 1;
        sub_22C56BFF0(v114 + 16, v116, v114);
        *v109 = v110;
        v18 = v112;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v18 = sub_22C56BFD8();
    goto LABEL_100;
  }

  v119 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v136 = v8;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v122 = v17;
    if (v17 + 1 < v16)
    {
      v120 = v5;
      v21 = *v130;
      v127 = v21;
      v128 = v16;
      v22 = *(v129 + 72);
      v131 = v17 + 1;
      v23 = v21 + v22 * v20;
      v24 = v134;
      sub_22C3E8FB4(v23, v134, &qword_27D9BAB78, &qword_22C928C40);
      v25 = v21 + v22 * v19;
      v26 = v135;
      sub_22C3E8FB4(v25, v135, &qword_27D9BAB78, &qword_22C928C40);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v29 = *(v26 + v27);
      sub_22C36DD28(v26, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v24, &qword_27D9BAB78, &qword_22C928C40);
      v30 = v128;
      v31 = v19 + 2;
      v132 = v22;
      v32 = v127 + v22 * (v19 + 2);
      while (1)
      {
        v33 = v31;
        if (++v131 >= v30)
        {
          break;
        }

        v34 = v134;
        sub_22C3E8FB4(v32, v134, &qword_27D9BAB78, &qword_22C928C40);
        v35 = v135;
        sub_22C3E8FB4(v23, v135, &qword_27D9BAB78, &qword_22C928C40);
        v36 = *(v136 + 48);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_22C36DD28(v35, &qword_27D9BAB78, &qword_22C928C40);
        sub_22C36DD28(v34, &qword_27D9BAB78, &qword_22C928C40);
        v30 = v128;
        v32 += v132;
        v23 += v132;
        v31 = v33 + 1;
        if (v28 < v29 == v37 >= v38)
        {
          goto LABEL_9;
        }
      }

      v131 = v30;
LABEL_9:
      v5 = v120;
      if (v28 >= v29)
      {
        v20 = v131;
        v19 = v122;
        v8 = v136;
      }

      else
      {
        v20 = v131;
        v19 = v122;
        if (v131 < v122)
        {
          goto LABEL_130;
        }

        v8 = v136;
        if (v122 < v131)
        {
          v118 = v18;
          if (v30 >= v33)
          {
            v39 = v33;
          }

          else
          {
            v39 = v30;
          }

          v40 = v132 * (v39 - 1);
          v41 = v131;
          v42 = v132 * v39;
          v43 = v122 * v132;
          do
          {
            if (v19 != --v41)
            {
              v44 = *v130;
              if (!*v130)
              {
                goto LABEL_137;
              }

              sub_22C839F68(v44 + v43, v125);
              v45 = v43 < v40 || v44 + v43 >= v44 + v42;
              if (v45)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C839F68(v125, v44 + v40);
            }

            ++v19;
            v40 -= v132;
            v42 -= v132;
            v43 += v132;
          }

          while (v19 < v41);
          v5 = v120;
          v18 = v118;
          v8 = v136;
          v20 = v131;
          v19 = v122;
        }
      }
    }

    v46 = v130[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_129;
      }

      if (v20 - v19 < v119)
      {
        break;
      }
    }

LABEL_46:
    if (v20 < v19)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C590218(0, *(v18 + 2) + 1, 1, v18);
      v18 = v107;
    }

    v63 = *(v18 + 2);
    v62 = *(v18 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      sub_22C590218(v62 > 1, v63 + 1, 1, v18);
      v18 = v108;
    }

    *(v18 + 2) = v64;
    v65 = v18 + 32;
    v66 = &v18[16 * v63 + 32];
    v67 = v131;
    *v66 = v122;
    *(v66 + 1) = v67;
    v132 = *v121;
    if (!v132)
    {
      goto LABEL_138;
    }

    if (v63)
    {
      while (1)
      {
        v68 = v64 - 1;
        v69 = &v65[16 * v64 - 16];
        v70 = &v18[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v18 + 4);
          v72 = *(v18 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_66:
          if (v74)
          {
            goto LABEL_115;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_123;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v64 < 2)
        {
          goto LABEL_117;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_81:
        if (v89)
        {
          goto LABEL_120;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v96 < v88)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v68 - 1 >= v64)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_132;
        }

        if (!*v130)
        {
          goto LABEL_135;
        }

        v100 = &v65[16 * v68 - 16];
        v101 = *v100;
        v102 = &v65[16 * v68];
        v103 = *(v102 + 1);
        sub_22C837CC0(*v130 + *(v129 + 72) * *v100, *v130 + *(v129 + 72) * *v102, *v130 + *(v129 + 72) * v103, v132);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v103 < v101)
        {
          goto LABEL_110;
        }

        v104 = v18;
        v105 = *(v18 + 2);
        if (v68 > v105)
        {
          goto LABEL_111;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        if (v68 >= v105)
        {
          goto LABEL_112;
        }

        v64 = v105 - 1;
        sub_22C56BFF0(v102 + 16, v105 - 1 - v68, &v65[16 * v68]);
        *(v104 + 2) = v105 - 1;
        v106 = v105 > 2;
        v18 = v104;
        v8 = v136;
        if (!v106)
        {
          goto LABEL_95;
        }
      }

      v75 = &v65[16 * v64];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_113;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_114;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_116;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_119;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_127;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v17 = v131;
    v16 = v130[1];
    if (v131 >= v16)
    {
      goto LABEL_98;
    }
  }

  v47 = v19 + v119;
  if (__OFADD__(v19, v119))
  {
    goto LABEL_131;
  }

  if (v47 >= v46)
  {
    v47 = v130[1];
  }

  if (v47 < v19)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v20 == v47)
  {
    goto LABEL_46;
  }

  v118 = v18;
  v120 = v5;
  v48 = *(v129 + 72);
  v49 = *v130 + v48 * (v20 - 1);
  v50 = -v48;
  v51 = v19 - v20;
  v132 = *v130;
  v123 = v48;
  v124 = v47;
  v52 = v132 + v20 * v48;
LABEL_39:
  v131 = v20;
  v126 = v52;
  v127 = v51;
  v53 = v52;
  v128 = v49;
  v54 = v136;
  while (1)
  {
    v55 = v134;
    sub_22C3E8FB4(v53, v134, &qword_27D9BAB78, &qword_22C928C40);
    v56 = v135;
    sub_22C3E8FB4(v49, v135, &qword_27D9BAB78, &qword_22C928C40);
    v57 = *(v54 + 48);
    v58 = *(v55 + v57);
    v59 = *(v56 + v57);
    sub_22C36DD28(v56, &qword_27D9BAB78, &qword_22C928C40);
    sub_22C36DD28(v55, &qword_27D9BAB78, &qword_22C928C40);
    if (v58 >= v59)
    {
LABEL_44:
      v20 = v131 + 1;
      v49 = v128 + v123;
      v51 = v127 - 1;
      v52 = v126 + v123;
      if (v131 + 1 == v124)
      {
        v20 = v124;
        v5 = v120;
        v18 = v118;
        v8 = v136;
        v19 = v122;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v132)
    {
      break;
    }

    v60 = v133;
    sub_22C839F68(v53, v133);
    v54 = v136;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C839F68(v60, v49);
    v49 += v50;
    v53 += v50;
    v45 = __CFADD__(v51++, 1);
    if (v45)
    {
      goto LABEL_44;
    }
  }

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
}

uint64_t sub_22C837CC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = a3;
  v54 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v7 = MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = v52 - a2;
  if (v52 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v57 = a1;
  v56 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_22C3D763C(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v30 = v52;
    v51 = v28;
    v49 = a1;
LABEL_37:
    v52 = a2 + v28;
    v31 = v30;
    v47 = v29;
    v50 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v57 = a2;
        v55 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v29;
      v32 = a4;
      v33 = v31 + v51;
      v34 = v27 + v51;
      sub_22C3E8FB4(v27 + v51, v11, &qword_27D9BAB78, &qword_22C928C40);
      v35 = v11;
      v36 = v53;
      sub_22C3E8FB4(v52, v53, &qword_27D9BAB78, &qword_22C928C40);
      v37 = *(v54 + 48);
      v38 = *(v35 + v37);
      v39 = *(v36 + v37);
      v40 = v36;
      v11 = v35;
      sub_22C36DD28(v40, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v35, &qword_27D9BAB78, &qword_22C928C40);
      if (v38 < v39)
      {
        v42 = v31 < v50 || v33 >= v50;
        v30 = v33;
        a4 = v32;
        if (v42)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v33;
          v28 = v51;
          v29 = v48;
          a1 = v49;
        }

        else
        {
          v29 = v48;
          v15 = v31 == v50;
          v28 = v51;
          v43 = v52;
          a2 = v52;
          a1 = v49;
          if (!v15)
          {
            v44 = v30;
            v45 = v48;
            swift_arrayInitWithTakeBackToFront();
            v30 = v44;
            a2 = v43;
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      v41 = v31 < v27 || v33 >= v27;
      a4 = v32;
      if (v41)
      {
        v31 = v33;
        swift_arrayInitWithTakeFrontToBack();
        v27 = v34;
        v29 = v34;
        a1 = v49;
        a2 = v50;
      }

      else
      {
        v29 = v34;
        v15 = v27 == v31;
        v31 = v33;
        v27 = v34;
        a1 = v49;
        a2 = v50;
        if (!v15)
        {
          v31 = v33;
          swift_arrayInitWithTakeBackToFront();
          v27 = v34;
          v29 = v34;
        }
      }
    }

    v57 = a2;
    v55 = v47;
  }

  else
  {
    sub_22C3D763C(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v55 = v51;
    while (a4 < v51 && a2 < v52)
    {
      sub_22C3E8FB4(a2, v11, &qword_27D9BAB78, &qword_22C928C40);
      v21 = v53;
      sub_22C3E8FB4(a4, v53, &qword_27D9BAB78, &qword_22C928C40);
      v22 = *(v54 + 48);
      v23 = *&v11[v22];
      v24 = *(v21 + v22);
      sub_22C36DD28(v21, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v11, &qword_27D9BAB78, &qword_22C928C40);
      if (v23 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56 = a4 + v13;
        a4 += v13;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v13;
      }

      a1 += v13;
      v57 = a1;
    }
  }

LABEL_59:
  sub_22C838290(&v57, &v56, &v55, &qword_27D9BAB78, &qword_22C928C40);
  return 1;
}

void sub_22C838290(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_22C3A5908(a4, a5);
  sub_22C36985C();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_22C375DB4();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22C838370(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_22C36985C();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_22C375DB4();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_22C36BBCC();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_22C838438(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
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

    v7 = sub_22C370114();
    v8 = a6(v7);

    return v8;
  }

  return result;
}

void sub_22C838538()
{
  sub_22C370030();
  v4 = v3;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(v5 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    v8 = v2;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_22C37E8C0();
      sub_22C838438(v9, v10, v11, v12, v13, v8);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](v1);
  sub_22C88FAFC(0, v7, v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_22C370114();
  sub_22C37E8C0();
  v4();
  if (v0)
  {
    swift_willThrow();
  }

LABEL_4:
  sub_22C36FB20();
}

void sub_22C8386A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v41 = a4;
  v30[1] = a2;
  v31 = a1;
  v40 = sub_22C902D0C();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C902C9C();
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v42 = a3;
  v12 = *(a3 + 64);
  v32 = 0;
  v33 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v36 = v5 + 16;
  v37 = v8 + 16;
  v38 = v8;
  v39 = v5;
  v34 = (v5 + 8);
  v35 = (v8 + 8);
  while (v15)
  {
    v44 = (v15 - 1) & v15;
    v17 = __clz(__rbit64(v15)) | (v11 << 6);
    v18 = v43;
LABEL_11:
    v21 = v42;
    (*(v38 + 16))(v10, *(v42 + 48) + *(v38 + 72) * v17, v7);
    v22 = v17;
    v23 = *(v21 + 56) + *(v39 + 72) * v17;
    v24 = v7;
    v25 = v40;
    (*(v39 + 16))(v18, v23, v40);
    v26 = v45;
    v27 = v41(v10, v18);
    v45 = v26;
    if (v26)
    {
      (*v34)(v18, v25);
      (*v35)(v10, v24);
      return;
    }

    v28 = v27;
    (*v34)(v18, v25);
    (*v35)(v10, v24);
    v7 = v24;
    v15 = v44;
    if (v28)
    {
      *(v31 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_22C838F9C();
        return;
      }
    }
  }

  v19 = v11;
  v18 = v43;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_16;
    }

    v20 = *(v33 + 8 * v11);
    ++v19;
    if (v20)
    {
      v44 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22C838A00(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, _BYTE *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v28 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = 0;
  v31 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v31;
    sub_22C839D2C(v31[6] + *(v28 + 72) * v21, v9);
    sub_22C6337B8(v22[7] + 40 * v21, v30);
    v23 = v29(v9, v30);
    sub_22C83A014(v30);
    result = sub_22C839C78(v9, type metadata accessor for CacheKeyHashableRepresentation);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v26 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_22C8395DC(v26, v25, v27, v31);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_22C8395DC(v26, v25, v27, v31);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22C838C18()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C902D0C();
  sub_22C369824();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v49 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v50 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v45 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v44 = v17;
  if (!v3)
  {
    goto LABEL_28;
  }

  if (*(v1 + 16) == v3)
  {

LABEL_28:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9C0980, &unk_22C929500);
  sub_22C37FF48();
  v18 = sub_22C90B1EC();
  v43 = v1;
  if (v5 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v7;
  }

  v20 = 0;
  v40 = v18;
  v21 = v18 + 64;
  v41 = v5;
  v42 = v7;
  while (v19)
  {
    sub_22C36C050();
    v46 = v23;
LABEL_16:
    v47 = v48[9];
    v26 = v47 * (v22 | (v20 << 6));
    v27 = v48[2];
    v27(v44, *(v43 + 48) + v26, v8);
    v27(v45, *(v43 + 56) + v26, v8);
    v28 = v48[4];
    v28(v50, v44, v8);
    v28(v49, v45, v8);
    sub_22C373F18(&qword_27D9BAAA8, 255, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
    sub_22C83A98C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v29)
    {
      sub_22C370840();
      v5 = v41;
      v7 = v42;
      while (1)
      {
        sub_22C36D130();
        if (v29)
        {
          if (v34)
          {
            goto LABEL_30;
          }
        }

        if (v33 == v35)
        {
          v33 = 0;
        }

        if (*(v21 + 8 * v33) != -1)
        {
          sub_22C83A8EC();
          v32 = v37 + (v36 << 6);
          goto LABEL_26;
        }
      }
    }

    sub_22C83A8FC();
    v32 = v30 | v31;
    v5 = v41;
    v7 = v42;
LABEL_26:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v38 = v32 * v47;
    v28(v40[6] + v32 * v47, v50, v8);
    v28(v40[7] + v38, v49, v8);
    ++v40[2];
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_31;
    }

    v19 = v46;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= v5)
    {
      goto LABEL_28;
    }

    ++v24;
    if (v7[v20])
    {
      sub_22C37FCE8();
      v46 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_22C838F9C()
{
  sub_22C36BA7C();
  sub_22C83A9E8();
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  sub_22C36BA0C();
  sub_22C902C9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  if (!v0)
  {
    goto LABEL_25;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_25:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  sub_22C37FF48();
  sub_22C90B1EC();
  sub_22C83A868();
  while (v10)
  {
    sub_22C83A938();
LABEL_13:
    v13 = sub_22C375BDC();
    v14(v13);
    v15 = sub_22C83A8A0();
    v16(v15);
    v17 = sub_22C83A91C();
    v18(v17);
    v19 = sub_22C3866B0();
    (v4)(v19);
    sub_22C373F18(&qword_27D9BC1A8, 255, MEMORY[0x277D1D780], MEMORY[0x277D1D788]);
    sub_22C83A98C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v20)
    {
      sub_22C370840();
      v1 = v29;
      v2 = v30;
      while (1)
      {
        sub_22C36D130();
        if (v20)
        {
          if (v22)
          {
            goto LABEL_27;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v5 + 8 * v21) != -1)
        {
          sub_22C83A8EC();
          goto LABEL_23;
        }
      }
    }

    sub_22C83A8FC();
    v1 = v29;
    v2 = v30;
LABEL_23:
    v24 = sub_22C370430();
    v25(v24);
    v26 = sub_22C83AA54();
    (v4)(v26);
    sub_22C83AA40();
    if (v27)
    {
      goto LABEL_28;
    }

    v4 = v28;
    v10 = v31;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v1)
    {
      goto LABEL_25;
    }

    ++v11;
    if (*(v2 + 8 * v3))
    {
      sub_22C37FCE8();
      v31 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_22C8392BC()
{
  sub_22C36BA7C();
  sub_22C83A9E8();
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  sub_22C36BA0C();
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  if (!v0)
  {
    goto LABEL_25;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_25:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(&qword_27D9C07A0, &qword_22C92B510);
  sub_22C37FF48();
  sub_22C90B1EC();
  sub_22C83A868();
  while (v10)
  {
    sub_22C83A938();
LABEL_13:
    v13 = sub_22C375BDC();
    v14(v13);
    v15 = sub_22C83A8A0();
    v16(v15);
    v17 = sub_22C83A91C();
    v18(v17);
    v19 = sub_22C3866B0();
    (v4)(v19);
    sub_22C373F18(&qword_27D9BAA98, 255, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
    sub_22C83A98C();
    sub_22C909F7C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v20)
    {
      sub_22C370840();
      v1 = v29;
      v2 = v30;
      while (1)
      {
        sub_22C36D130();
        if (v20)
        {
          if (v22)
          {
            goto LABEL_27;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v5 + 8 * v21) != -1)
        {
          sub_22C83A8EC();
          goto LABEL_23;
        }
      }
    }

    sub_22C83A8FC();
    v1 = v29;
    v2 = v30;
LABEL_23:
    v24 = sub_22C370430();
    v25(v24);
    v26 = sub_22C83AA54();
    (v4)(v26);
    sub_22C83AA40();
    if (v27)
    {
      goto LABEL_28;
    }

    v4 = v28;
    v10 = v31;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v1)
    {
      goto LABEL_25;
    }

    ++v11;
    if (*(v2 + 8 * v3))
    {
      sub_22C37FCE8();
      v31 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void *sub_22C8395DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22C3A5908(&qword_27D9C0790, &qword_22C928C60);
  result = sub_22C90B1EC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v27 = result + 8;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v30 = (v12 - 1) & v12;
LABEL_16:
    v17 = v14 | (v13 << 6);
    v18 = v28;
    v19 = *(v29 + 72);
    sub_22C839D2C(a4[6] + v19 * v17, v28);
    v20 = a4;
    sub_22C6337B8(a4[7] + 40 * v17, v32);
    sub_22C90B62C();
    sub_22C834E6C(v31);
    sub_22C90B66C();
    v21 = v27;
    v22 = sub_22C90AE8C();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_22C839CD0(v18, v11[6] + v22 * v19);
    v23 = v11[7] + 40 * v22;
    v24 = v32[0];
    v25 = v32[1];
    *(v23 + 32) = v33;
    *v23 = v24;
    *(v23 + 16) = v25;
    ++v11[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v20;
    v12 = v30;
    if (!a3)
    {
      return v11;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v30 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22C839890()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v45 = v10;
  v51 = v11(0);
  sub_22C369824();
  v49 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v50 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v46 = v16;
  if (!v7)
  {
    goto LABEL_28;
  }

  if (v5[2] == v7)
  {

LABEL_28:
    sub_22C36CC48();
    return;
  }

  sub_22C3A5908(v3, v1);
  sub_22C37FF48();
  v17 = sub_22C90B1EC();
  if (v9 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v45;
  }

  v19 = 0;
  v44 = v17;
  v20 = v49 + 32;
  v21 = v17 + 64;
  v43 = v5;
  while (v18)
  {
    v22 = v20;
    sub_22C36C050();
    v47 = v24;
LABEL_16:
    v27 = v23 | (v19 << 6);
    v28 = (v5[6] + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v48 = *(v49 + 72);
    (*(v49 + 16))(v46, v5[7] + v48 * v27, v51);
    v31 = *(v49 + 32);
    v20 = v22;
    v31(v50, v46, v51);
    sub_22C90B62C();

    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v32)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v32)
        {
          if (v37)
          {
            goto LABEL_30;
          }
        }

        if (v36 == v38)
        {
          v36 = 0;
        }

        if (*(v21 + 8 * v36) != -1)
        {
          sub_22C83A8EC();
          v35 = v40 + (v39 << 6);
          goto LABEL_26;
        }
      }
    }

    sub_22C83A8FC();
    v35 = v33 | v34;
LABEL_26:
    *(v21 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v41 = (v44[6] + 16 * v35);
    *v41 = v29;
    v41[1] = v30;
    v31(v44[7] + v35 * v48, v50, v51);
    ++v44[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_31;
    }

    v5 = v43;
    v18 = v47;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  v25 = v19;
  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v9)
    {
      goto LABEL_28;
    }

    ++v25;
    if (v45[v19])
    {
      v22 = v20;
      sub_22C37FCE8();
      v47 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t sub_22C839B7C()
{
  result = qword_27D9C0730;
  if (!qword_27D9C0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0730);
  }

  return result;
}

unint64_t sub_22C839BD0()
{
  result = qword_27D9C0738;
  if (!qword_27D9C0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0738);
  }

  return result;
}

unint64_t sub_22C839C24()
{
  result = qword_27D9C0758;
  if (!qword_27D9C0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0758);
  }

  return result;
}

uint64_t sub_22C839C78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C839CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C839D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKeyHashableRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C839D90()
{
  sub_22C36D5EC();
  sub_22C83AA68();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36EE74(v1);

  return sub_22C832B1C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C839E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C839E64()
{
  sub_22C36D5EC();
  sub_22C83AA68();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36EE74(v1);

  return sub_22C832468(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C839EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C839F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C83A084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C83A0C0(uint64_t a1)
{
  result = sub_22C908D2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C83A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for QueryDecorationCacheKey.Input(255, v4, a3, a4);
  v5 = sub_22C90AC6C();
  if (v6 <= 0x3F)
  {
    sub_22C436620();
    v5 = v9;
    if (v10 <= 0x3F)
    {
      DecorationCache = type metadata accessor for QueryDecorationCacheValue.Identifier(319, v4, v7, v8);
      if (v12 > 0x3F)
      {
        return DecorationCache;
      }

      sub_22C836D70(319, &qword_281435798, MEMORY[0x277D1D2C8]);
      if (v13 > 0x3F)
      {
        return DecorationCache;
      }

      else
      {
        sub_22C836D70(319, &qword_281435718, MEMORY[0x277D1F0F8]);
        v5 = v14;
        if (v15 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

unint64_t sub_22C83A2E0()
{
  result = qword_27D9C07B0;
  if (!qword_27D9C07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07B0);
  }

  return result;
}

unint64_t sub_22C83A370()
{
  result = qword_27D9C07B8;
  if (!qword_27D9C07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07B8);
  }

  return result;
}

unint64_t sub_22C83A3C8()
{
  result = qword_27D9C07C0;
  if (!qword_27D9C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07C0);
  }

  return result;
}

unint64_t sub_22C83A420()
{
  result = qword_27D9C07C8;
  if (!qword_27D9C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07C8);
  }

  return result;
}

unint64_t sub_22C83A478()
{
  result = qword_27D9C07D0;
  if (!qword_27D9C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07D0);
  }

  return result;
}

unint64_t sub_22C83A4D0()
{
  result = qword_27D9C07D8;
  if (!qword_27D9C07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07D8);
  }

  return result;
}

unint64_t sub_22C83A528()
{
  result = qword_27D9C07E0;
  if (!qword_27D9C07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C07E0);
  }

  return result;
}

_BYTE *sub_22C83A5C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C83A690(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C83A868()
{
  v5 = *(v4 - 128);
  *(v4 - 200) = v5 + 16;
  *(v4 - 192) = v1;
  v6 = *(v4 - 120);
  *(v4 - 216) = v0;
  *(v4 - 208) = v6 + 16;
  *(v4 - 112) = v5 + 32;
  *(v4 - 184) = v2;
  *(v4 - 224) = v3;
}

uint64_t sub_22C83A91C()
{
  result = *(v1 - 104);
  *(v1 - 152) = *(v0 + 32);
  return result;
}

void sub_22C83A954()
{

  sub_22C82BB44();
}

BOOL sub_22C83AA00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C83AA1C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v3;
  a1[6] = v2;
}

uint64_t sub_22C83AA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return 0;
}

uint64_t sub_22C83AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QueryDecorationCacheKey.Input(a1, a2, a3, a4);

  return sub_22C90AC6C();
}

uint64_t sub_22C83AAF4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t sub_22C83AB44(float a1)
{
  *v1 = a1;

  return sub_22C82F03C(v2);
}

uint64_t sub_22C83AB78()
{
  sub_22C903D4C();
  sub_22C369CE4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C373B14();
  MEMORY[0x28223BE20](v6);
  sub_22C83BEAC();
  sub_22C903BFC();
  if (v7)
  {

    sub_22C903C7C();
    sub_22C9034BC();
    sub_22C386908(&qword_281435730, MEMORY[0x277D1F100]);
    v8 = sub_22C90A0BC();
    v9 = *(v4 + 8);
    v9(v1, v0);
    v9(v2, v0);
    v10 = v8 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_22C83ACAC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C887608();
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for PromptTreeIdentifier(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_22C4ED690(v9, a2);
    sub_22C3D70C8(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

unint64_t sub_22C83AD9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22C8876C8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_22C3D874C((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t QueryDecorationContext.__allocating_init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  *(v7 + 96) = a1;
  sub_22C378A4C(a5, v7 + 16);
  *(v7 + 104) = a2;
  sub_22C5652C0(a3, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_lookback, &qword_27D9C0250, &unk_22C929510);
  sub_22C5652C0(a4, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &qword_27D9C06A0, &qword_22C929950);
  sub_22C378A4C(a6, v7 + 56);
  sub_22C5652C0(a7, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId, &qword_27D9C06F8, &qword_22C929520);
  type metadata accessor for CancellationToken();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C3770B0(a7, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36FF94(a6);
  sub_22C36FF94(a5);
  sub_22C3770B0(a4, &qword_27D9C06A0, &qword_22C929950);
  sub_22C3770B0(a3, &qword_27D9C0250, &unk_22C929510);
  *(v14 + 112) = 1;
  *(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken) = v14;
  return v7;
}

uint64_t QueryDecorationContext.deinit()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_lookback, &qword_27D9C0250, &unk_22C929510);
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &qword_27D9C06A0, &qword_22C929950);
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId, &qword_27D9C06F8, &qword_22C929520);

  return v0;
}

uint64_t QueryDecorationContext.__deallocating_deinit()
{
  QueryDecorationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QueryDecorationContext(uint64_t a1)
{
  result = qword_2814331A8;
  if (!qword_2814331A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C83B288(uint64_t a1)
{
  sub_22C83B3EC(319, &qword_281435710, MEMORY[0x277D1F128]);
  if (v1 <= 0x3F)
  {
    sub_22C83B3EC(319, &qword_281435798, MEMORY[0x277D1D2C8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C83B3EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C83B440()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C83B470(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22C83B490, v1, 0);
}

uint64_t sub_22C83B490()
{
  v1 = v0[9];
  swift_beginAccess();
  v23 = v1;
  v2 = *(v1 + 112);
  v25 = MEMORY[0x277D84F90];
  v3 = sub_22C36E2B8();

  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2318B8460](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }
    }

    if (__OFADD__(i, 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (sub_22C83B9DC())
    {
      sub_22C90AFEC();
      sub_22C90B02C();
      sub_22C90B03C();
      v4 = sub_22C90AFFC();
    }

    else
    {
    }
  }

  v0[10] = v25;
  v4 = sub_22C36E2B8();
  v8 = v1;
  v24 = v4;
  if (v4)
  {
    v9 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2318B8460](v9, v25);
        v10 = v4;
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          goto LABEL_51;
        }

        v10 = *(v25 + 32 + 8 * v9);
      }

      if (__OFADD__(v9++, 1))
      {
        goto LABEL_50;
      }

      v12 = *(v8 + 112);
      if (v12 >> 62)
      {
        v13 = sub_22C90B1BC();
        if (v13)
        {
LABEL_21:

          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2318B8460](v14, v12);
              v4 = swift_unknownObjectRelease();
              if (v15 == v10)
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              if (*(v12 + 8 * v14 + 32) == v10)
              {
LABEL_30:

                v8 = v23;
                sub_22C371E88();
                sub_22C83AD9C(v14);
                swift_endAccess();

                goto LABEL_31;
              }
            }

            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            ++v14;
            if (v16 == v13)
            {

              v8 = v23;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_31:
    }

    while (v9 != v24);
  }

  sub_22C371E88();

  MEMORY[0x2318B7AA0](v17);
  sub_22C3D3460();
  sub_22C90A65C();
  swift_endAccess();
  v4 = sub_22C36E2B8();
  v0[11] = v4;
  if (!v4)
  {

    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  if (v4 < 1)
  {
LABEL_52:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v0[12] = 0;
  if ((v0[10] & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2318B8460](0);
  }

  else
  {
  }

  v0[13] = v18;
  sub_22C36B80C(v18, OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);
  sub_22C378644();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C83B88C()
{
  v1 = *(v0 + 72);
  *(*(v0 + 112) + 112) = 0;

  return MEMORY[0x2822009F8](sub_22C83B8FC, v1, 0);
}

uint64_t sub_22C83B8FC()
{
  v1 = v0[12];
  v2 = v0[11];

  if (v1 + 1 == v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    ++v0[12];
    if ((v0[10] & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318B8460]();
    }

    else
    {
    }

    v0[13] = v5;
    sub_22C36B80C(v5, OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);

    return MEMORY[0x2822009F8](v2, v1, 0);
  }
}

BOOL sub_22C83B9DC()
{
  v0 = sub_22C903D4C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C386908(&qword_281435728, MEMORY[0x277D1F108]);
  sub_22C90A56C();
  sub_22C90A56C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  if (v33 == v32)
  {
    sub_22C903C7C();
    sub_22C9034EC();
    sub_22C90A56C();
    sub_22C90A56C();
    v7(v4, v0);
    v7(v6, v0);
    v8 = v33 == v32;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22C903CAC();
  v11 = v10;
  v12 = sub_22C903CAC();
  if (!v11)
  {
    if (!v13)
    {
      return 1;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  if (v9 == v12 && v11 == v13)
  {

    return 1;
  }

  v15 = sub_22C90B4FC();

  if (v15)
  {
    return 1;
  }

LABEL_14:
  sub_22C903BFC();
  if (v16)
  {

    v17 = sub_22C903BFC();
    v19 = v18;
    v20 = sub_22C903BFC();
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_36;
      }

      if (v17 == v20 && v19 == v21)
      {
      }

      else
      {
        v23 = sub_22C90B4FC();

        if ((v23 & 1) == 0)
        {
          return v8;
        }
      }
    }

    else if (v21)
    {
      goto LABEL_36;
    }

    v24 = sub_22C903C6C();
    v26 = v25;
    if (v24 != sub_22C903C6C() || v26 != v27)
    {
      v29 = sub_22C90B4FC();

      if (v29)
      {
        return v8;
      }

      return 1;
    }

LABEL_36:
  }

  return v8;
}

BOOL sub_22C83BD74()
{
  sub_22C903D4C();
  sub_22C369CE4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C373B14();
  MEMORY[0x28223BE20](v6);
  sub_22C83BEAC();
  sub_22C903C7C();
  sub_22C9034FC();
  sub_22C386908(&qword_281435728, MEMORY[0x277D1F108]);
  sub_22C90A56C();
  sub_22C90A56C();
  v7 = *(v4 + 8);
  v7(v1, v0);
  v7(v2, v0);
  return v10 == v9;
}

uint64_t sub_22C83BEC0(uint64_t a1, void *a2)
{
  v61 = a2;
  v3 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v65 = sub_22C9039FC();
  v9 = MEMORY[0x28223BE20](v65);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v67 = &v51 - v12;
  v13 = 0;
  v58 = *(a1 + 16);
  v60 = v14 + 16;
  v55 = v14;
  v52 = (v14 + 8);
  v53 = (v14 + 32);
  v56 = a1;
  v57 = MEMORY[0x277D84F90];
  while (2)
  {
    v15 = v13;
LABEL_3:
    if (v15 == v58)
    {

      return v57;
    }

    if (v15 < *(a1 + 16))
    {
      v16 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v17 = *(v55 + 72);
      v64 = v15 + 1;
      v66 = v17;
      v59 = *(v55 + 16);
      v59(v67, a1 + v16 + v17 * v15, v65);
      v18 = *v61;
      v19 = *(*v61 + 16);
      v62 = v16;
      v63 = v18;
      v20 = v18 + v16;

      if (!v19)
      {
LABEL_32:

        v36 = v61;
        v37 = *v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v36 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C596C08();
          v37 = v49;
          *v61 = v49;
        }

        v39 = *(v37 + 16);
        if (v39 >= *(v37 + 24) >> 1)
        {
          sub_22C596C08();
          v37 = v50;
          *v61 = v50;
        }

        *(v37 + 16) = v39 + 1;
        v40 = v67;
        v41 = v37 + v62 + v39 * v66;
        v42 = v65;
        v59(v41, v67, v65);
        v43 = *v53;
        (*v53)(v54, v40, v42);
        v44 = v57;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v44;
        v68 = v44;
        if ((v45 & 1) == 0)
        {
          sub_22C3B73FC(0, *(v44 + 16) + 1, 1);
          v46 = v68;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22C3B73FC(v47 > 1, v48 + 1, 1);
          v46 = v68;
        }

        *(v46 + 16) = v48 + 1;
        v57 = v46;
        result = v43((v46 + v62 + v48 * v66), v54, v65);
        a1 = v56;
        v13 = v64;
        continue;
      }

      while (1)
      {
        v21 = sub_22C9039DC();
        v22 = *(v21 + 16);
        v23 = sub_22C90361C();
        v24 = v23;
        if (v22)
        {
          (*(*(v23 - 8) + 16))(v8, v21 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);
          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        sub_22C36C640(v8, v25, 1, v24);

        if (sub_22C370B74(v8, 1, v24) == 1)
        {
          sub_22C376B84(v8, &qword_27D9BDA90, &unk_22C91A460);
          v26 = 0;
          v27 = 0;
        }

        else
        {
          v26 = sub_22C90357C();
          v27 = v28;
          (*(*(v24 - 8) + 8))(v8, v24);
        }

        v29 = sub_22C9039DC();
        if (*(v29 + 16))
        {
          (*(*(v24 - 8) + 16))(v6, v29 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)), v24);
          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        sub_22C36C640(v6, v30, 1, v24);

        if (sub_22C370B74(v6, 1, v24) == 1)
        {
          break;
        }

        v31 = sub_22C90357C();
        v33 = v32;
        (*(*(v24 - 8) + 8))(v6, v24);
        if (!v27)
        {
          if (!v33)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        if (!v33)
        {
          goto LABEL_27;
        }

        if (v26 == v31 && v27 == v33)
        {

LABEL_30:

          result = (*v52)(v67, v65);
          v15 = v64;
          a1 = v56;
          goto LABEL_3;
        }

        v35 = sub_22C90B4FC();

        if (v35)
        {
          goto LABEL_30;
        }

LABEL_28:
        v20 += v66;
        if (!--v19)
        {
          goto LABEL_32;
        }
      }

      sub_22C376B84(v6, &qword_27D9BDA90, &unk_22C91A460);
      if (!v27)
      {
        goto LABEL_30;
      }

LABEL_27:

      goto LABEL_28;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_22C83C4EC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v71 = v68 - v6;
  sub_22C9063DC();
  sub_22C369824();
  v77 = v8;
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v73 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v68 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v68 - v14;
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = v68 - v18;
  v20 = sub_22C9093BC();
  sub_22C369824();
  v74 = v21;
  MEMORY[0x28223BE20](v22);
  v76 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90399C();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v70 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v68 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v68 - v32;
  v34 = v3;
  v36 = v35;
  v72 = *(v25 + 16);
  v72(v68 - v32, v34, v35);
  sub_22C6AEA50(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, &v79, &qword_27D9C06A0, &qword_22C929950);
  if (v80)
  {
    sub_22C36C730(&v79, v81);
    v75 = v33;
    sub_22C90391C();
    sub_22C36D0A8(v19, 1, v20);
    if (v37)
    {
      sub_22C376B84(v19, &qword_27D9BB908, &qword_22C910960);
      sub_22C90400C();
      v38 = sub_22C9063CC();
      v39 = sub_22C90AADC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = sub_22C36D240();
        *v40 = 0;
        _os_log_impl(&dword_22C366000, v38, v39, "Entity Hydration: not a Typed Value skipping", v40, 2u);
        sub_22C3699EC();
      }

      (*(v77 + 8))(v13, v78);
      (*(v25 + 8))(v75, v36);
      sub_22C36FF94(v81);
    }

    else
    {
      v44 = v74;
      v45 = v76;
      (*(v74 + 32))();
      sub_22C375EAC(v81);
      v46 = sub_22C90851C();
      if (v46)
      {
        sub_22C90400C();
        v47 = v72;
        v72(v31, v75, v36);
        v48 = sub_22C9063CC();
        v49 = sub_22C90AACC();
        if (os_log_type_enabled(v48, v49))
        {
          sub_22C36FB44();
          v69 = sub_22C388D58();
          *&v79 = v69;
          *v36 = 136315138;
          v68[1] = v49;
          v50 = sub_22C372164();
          v47(v50);
          v70 = sub_22C90A1AC();
          v52 = v51;
          v53 = *(v25 + 8);
          v53(v31, v36);
          v54 = v53;
          v44 = v74;
          v55 = sub_22C36F9F4(v70, v52, &v79);

          *(v36 + 4) = v55;
          sub_22C84BC84();
          _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
          sub_22C36FF94(v69);
          sub_22C37E124();
          v61 = v54;
          sub_22C3699EC();

          v62 = v72;
        }

        else
        {

          v61 = *(v25 + 8);
          v62 = v47;
          v61(v31, v36);
        }

        (*(v77 + 8))(v73, v78);
        v63 = v71;
        v64 = v75;
        v62(v71, v75, v36);
        sub_22C36BECC();
        sub_22C36C640(v65, v66, v67, v36);
        sub_22C826584(v63);
        sub_22C376B84(v63, &qword_27D9BB670, &unk_22C90FA40);
        (*(v44 + 8))(v76, v20);
        v61(v64, v36);
      }

      else
      {
        (*(v44 + 8))(v45, v20);
        (*(v25 + 8))(v75, v36);
      }

      sub_22C36FF94(v81);
    }
  }

  else
  {
    sub_22C376B84(&v79, &qword_27D9C06A0, &qword_22C929950);
    sub_22C90400C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AADC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = sub_22C36D240();
      *v43 = 0;
      _os_log_impl(&dword_22C366000, v41, v42, "Entity Hydration: ToolExecutionSession is nil so hydration will not run.", v43, 2u);
      sub_22C3699EC();
    }

    (*(v77 + 8))(v15, v78);
    (*(v25 + 8))(v33, v36);
  }

  sub_22C36CC48();
}

uint64_t sub_22C83CBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_22C83D478(a2, a3, a4);
  v16 = v15;

  (v14)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v17 = sub_22C37FF48();
  sub_22C36D3E0(v17);
  if (v18)
  {
    sub_22C376B84(v13, &qword_27D9C06D0, &qword_22C929880);
    v23 = 1;
  }

  else
  {
    v19 = sub_22C36A724();
    sub_22C6AE8BC(v19, v20, v21, v22);
    v23 = 0;
  }

  return sub_22C36C640(a5, v23, 1, v16);
}

uint64_t sub_22C83CD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22C83D664(a2, a3, a4);

  (v13)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v14 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C376B84(v12, &qword_27D9C09D0, &qword_22C929848);
    v15 = 1;
  }

  else
  {
    sub_22C6AE8BC(v12, a5, &qword_27D9C09D8, &qword_22C929850);
    v15 = 0;
  }

  return sub_22C36C640(a5, v15, 1, v14);
}

uint64_t sub_22C83CEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C0A08, &unk_22C9298F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22C83D850(a2, a3, a4);

  (v13)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v14 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C376B84(v12, &qword_27D9C0A08, &unk_22C9298F0);
    v15 = 1;
  }

  else
  {
    sub_22C6AE8BC(v12, a5, &qword_27D9C0260, &unk_22C926740);
    v15 = 0;
  }

  return sub_22C36C640(a5, v15, 1, v14);
}

uint64_t sub_22C83D01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09A0, &qword_22C9297D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22C83DA3C(a2, a3, a4);

  (v13)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v14 = sub_22C3A5908(&qword_27D9C09A8, &qword_22C9297D8);
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C376B84(v12, &qword_27D9C09A0, &qword_22C9297D0);
    v15 = 1;
  }

  else
  {
    sub_22C6AE8BC(v12, a5, &qword_27D9C09A8, &qword_22C9297D8);
    v15 = 0;
  }

  return sub_22C36C640(a5, v15, 1, v14);
}

uint64_t sub_22C83D190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C09B8, &qword_22C929828);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22C83DC28(a2, a3, a4);

  (v13)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v14 = sub_22C3A5908(&qword_27D9C09C0, &qword_22C929830);
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C376B84(v12, &qword_27D9C09B8, &qword_22C929828);
    v15 = 1;
  }

  else
  {
    sub_22C6AE8BC(v12, a5, &qword_27D9C09C0, &qword_22C929830);
    v15 = 0;
  }

  return sub_22C36C640(a5, v15, 1, v14);
}

uint64_t sub_22C83D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9C0998, &qword_22C929798);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22C83DE14(a2, a3, a4);

  (v13)(a1);

  sub_22C376B84(a4, &qword_27D9C06C8, &qword_22C929790);
  v14 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  if (sub_22C370B74(v12, 1, v14) == 1)
  {
    sub_22C376B84(v12, &qword_27D9C0998, &qword_22C929798);
    v15 = 1;
  }

  else
  {
    sub_22C6AE8BC(v12, a5, &qword_27D9C0208, &qword_22C9297A0);
    v15 = 0;
  }

  return sub_22C36C640(a5, v15, 1, v14);
}

uint64_t (*sub_22C83D478(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B6CC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B6A8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B708;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t (*sub_22C83D664(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B4C4;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B4A0;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B500;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t (*sub_22C83D850(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84BAB0;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B9B4;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84BAEC;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t (*sub_22C83DA3C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B1FC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B1D8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B238;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t (*sub_22C83DC28(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B38C;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B368;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B3C8;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t (*sub_22C83DE14(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - v9;

  v11 = sub_22C834AD4(a1);
  if ((v11 - 2) >= 3)
  {
    if (v11 == 7)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v13 = (v15 + 24);
      v14 = sub_22C84B0CC;
    }

    else
    {
      sub_22C6AEA50(a3, v10, &qword_27D9C06C8, &qword_22C929790);
      v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_22C6AE8BC(v10, v18 + v16, &qword_27D9C06C8, &qword_22C929790);
      *(v18 + v17) = a1;
      v13 = (v18 + v17 + 8);
      v14 = sub_22C84B0A8;
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 24);
    v14 = sub_22C84B108;
  }

  v19 = v14;
  *v13 = a2;

  return v19;
}

uint64_t sub_22C83E000()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v8 = sub_22C84BE94(v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_22C37A06C();
    v14 = sub_22C3A5908(v12, v13);
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v15, v16, v17, v18);
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v19, v20, v21, v22);
    sub_22C3A5908(v6, v4);
    v23 = sub_22C3788F8();
    sub_22C36C640(v23, v24, v25, v26);
    v27 = (v1 + v14[7]);
    *v27 = v10;
    v27[1] = v11;
    v28 = (v1 + v14[8]);
    *v28 = v2;
    v28[1] = v0;
    sub_22C84BE04(v14[9]);
    sub_22C84BE04(v14[11]);
    *(v1 + v14[12]) = 0;
    sub_22C36BECC();
    sub_22C36C640(v29, v30, v31, v14);
    sub_22C36CC48();
  }

  else
  {
    v34 = sub_22C37A06C();
    sub_22C3A5908(v34, v35);
    sub_22C3788F8();
    sub_22C36CC48();

    return sub_22C36C640(v36, v37, v38, v39);
  }
}