id sub_261372E48(void *a1, uint64_t a2, unint64_t a3)
{
  v64 = a2;
  v5 = sub_26139FB0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v66 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v19 = sub_26139FB2C();
  if (swift_dynamicCast())
  {
    v20 = v65;
    v21 = sub_26129B934();
    sub_26125A870(v21, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) == 1)
    {
      v24 = v17;
LABEL_15:
      sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
      return v20;
    }

    v20 = v20;
    v26 = sub_2613A122C();
    v27 = sub_2613A1D8C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_26124C11C(v64, a3, &v66);
      *(v28 + 12) = 2112;
      *(v28 + 14) = v20;
      *v29 = v20;
      v31 = v20;
      _os_log_impl(&dword_261243000, v26, v27, "%s: Returning error [%@]", v28, 0x16u);
      sub_26124C718(v29, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x266701350](v30, -1, -1);
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v23 + 8))(v17, v22);
  }

  else
  {
    v62 = sub_26129B934();
    sub_26125A870(v62, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v63 = *(v25 - 8);
    v61 = *(v63 + 48);
    if (v61(v15, 1, v25) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v57 = v6;
      v58 = v5;
      v32 = a1;

      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();

      v56 = v34;
      v59 = v33;
      v35 = os_log_type_enabled(v33, v34);
      v60 = a3;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v55 = v25;
        v37 = v36;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v66 = v39;
        *v37 = 136315394;
        *(v37 + 4) = sub_26124C11C(v64, a3, &v66);
        *(v37 + 12) = 2112;
        v40 = a1;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v41;
        v42 = v38;
        *v38 = v41;
        v43 = v59;
        _os_log_impl(&dword_261243000, v59, v56, "%s: Unexpected error [%@]", v37, 0x16u);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x266701350](v39, -1, -1);
        v44 = v37;
        v25 = v55;
        MEMORY[0x266701350](v44, -1, -1);
      }

      else
      {
      }

      v6 = v57;
      v5 = v58;
      (*(v63 + 8))(v15, v25);
      a3 = v60;
    }

    swift_getErrorValue();
    *v8 = sub_2613A250C();
    (*(v6 + 104))(v8, *MEMORY[0x277D43890], v5);
    v45 = objc_allocWithZone(v19);
    v20 = sub_26139FB3C();
    sub_26125A870(v62, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v61(v12, 1, v25) == 1)
    {
      v24 = v12;
      goto LABEL_15;
    }

    v20 = v20;
    v46 = sub_2613A122C();
    v47 = sub_2613A1D8C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v25;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v66 = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_26124C11C(v64, a3, &v66);
      *(v49 + 12) = 2112;
      *(v49 + 14) = v20;
      *v50 = v20;
      v52 = v20;
      _os_log_impl(&dword_261243000, v46, v47, "%s: Returning error [%@]", v49, 0x16u);
      sub_26124C718(v50, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x266701350](v51, -1, -1);
      v53 = v49;
      v25 = v48;
      MEMORY[0x266701350](v53, -1, -1);
    }

    (*(v63 + 8))(v12, v25);
  }

  return v20;
}

uint64_t sub_2613735D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261335160(v3, v4, v5, v2);
}

uint64_t sub_26137366C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = *(*(v2 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);

  v9 = sub_26125735C(a1, v7, v8);

  if (!v3)
  {
    *a2 = v9 & 1;
  }

  return result;
}

uint64_t sub_2613736F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_2613A1EBC();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v6 = sub_26139F13C();
  v4[31] = v6;
  v7 = *(v6 - 8);
  v4[32] = v7;
  v4[33] = *(v7 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261373878, 0, 0);
}

uint64_t sub_261373878()
{
  v1 = *(v0 + 288);
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 288);
  if (v5 == 1)
  {
    sub_26124C718(*(v0 + 288), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = *(v0 + 192);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0xD000000000000031, 0x80000002613BD910, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  sub_26139F12C();
  v18 = *(v13 + 16);
  *(v0 + 296) = v18;
  *(v0 + 304) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v12, v11, v15);
  v19 = *(v13 + 80);
  *(v0 + 560) = v19;
  v20 = (v19 + 32) & ~v19;
  v21 = swift_allocObject();
  *(v0 + 312) = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
  v22 = *(v13 + 32);
  *(v0 + 320) = v22;
  *(v0 + 328) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v21 + v20, v12, v15);
  v23 = v16;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0818, &qword_2613AD3C8);
  sub_2612529C0(v14);
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  *v25 = v0;
  v25[1] = sub_261373B14;
  v26 = *(v0 + 240);
  v27 = *(v0 + 176);

  return sub_261252A34(v0 + 152, v26, sub_261376BBC, v21, v27, v24);
}

uint64_t sub_261373B14()
{
  v2 = *v1;
  v2[43] = v0;

  v3 = v2[30];
  v4 = v2[27];
  v5 = v2[26];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v2[52] = v7;
    v7(v3, v5);

    v9 = sub_261373ED0;
  }

  else
  {
    v2[44] = v7;
    v2[45] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_261373CC4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_261373CC4()
{
  v1 = *(v0 + 192);
  v8 = *(v0 + 152);
  *(v0 + 368) = v8;
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  *(v0 + 384) = v2;
  v4 = *(v2 + 64);
  v3 = *(v2 + 72);
  *(v0 + 392) = v3;

  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = sub_261373DB4;
  v6 = *(v0 + 280);

  return sub_26136CEE8(v0 + 16, v6, v8, v4, v3);
}

uint64_t sub_261373DB4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_26137438C;
  }

  else
  {

    v2 = sub_26137419C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261373ED0()
{
  v1 = *(v0 + 344);
  *(v0 + 496) = *(v0 + 416);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v6;
    v7 = (v5 + 24) & ~v5;
    v8 = *(v0 + 272);
    v9 = (*(v0 + 264) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 192);
    v6(*(v0 + 224));
    v10(v8, v11, v12);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = v13;
    v24(v14 + v7, v8, v12);
    *(v14 + v9) = v25;
    *(v14 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v15 = v13;

    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_261375718;
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v16, v17, sub_26137722C, v14, v18, v19);
  }

  else
  {

    v21 = swift_task_alloc();
    *(v0 + 552) = v21;
    *v21 = v0;
    v21[1] = sub_261375BEC;
    v22 = *(v0 + 280);
    v23 = *(v0 + 176);

    return sub_261366994(v23, v22);
  }
}

uint64_t sub_26137419C()
{
  v1 = v0[48];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v0[53] = v2;
  v4 = v0[4];
  v5 = v0[5];

  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_261374270;
  v7 = v0[22];

  return sub_26136D308(v7, v3, v2, v4, v5);
}

uint64_t sub_261374270()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_261374828;
  }

  else
  {

    v2 = sub_261374660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26137438C()
{

  v1 = *(v0 + 408);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v6;
    v7 = (v5 + 24) & ~v5;
    v8 = *(v0 + 272);
    v9 = (*(v0 + 264) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 192);
    v6(*(v0 + 224));
    v10(v8, v11, v12);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = v13;
    v24(v14 + v7, v8, v12);
    *(v14 + v9) = v25;
    *(v14 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v15 = v13;

    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_261375718;
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v16, v17, sub_26137722C, v14, v18, v19);
  }

  else
  {

    v21 = swift_task_alloc();
    *(v0 + 552) = v21;
    *v21 = v0;
    v21[1] = sub_261375BEC;
    v22 = *(v0 + 280);
    v23 = *(v0 + 176);

    return sub_261366994(v23, v22);
  }
}

uint64_t sub_261374660(uint64_t a1)
{
  v2 = v1[46];
  v3 = sub_2613A0D6C();
  if (v3 < v2)
  {
    v2 = v3;
  }

  v4 = swift_task_alloc();
  v1[56] = v4;
  *v4 = v1;
  v4[1] = sub_261374714;
  v5 = v1[46];
  v6 = v1[35];
  v7 = v1[24];
  v8 = v1[25];
  v9 = v1[22];

  return sub_26136E4F0(v9, v5, v6, v2, v7, v8);
}

uint64_t sub_261374714()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_261374E3C;
  }

  else
  {
    v2 = sub_261374B04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261374828()
{

  sub_261295F30(v0 + 16);
  v1 = *(v0 + 440);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v6;
    v7 = (v5 + 24) & ~v5;
    v8 = *(v0 + 272);
    v9 = (*(v0 + 264) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 192);
    v6(*(v0 + 224));
    v10(v8, v11, v12);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = v13;
    v24(v14 + v7, v8, v12);
    *(v14 + v9) = v25;
    *(v14 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v15 = v13;

    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_261375718;
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v16, v17, sub_26137722C, v14, v18, v19);
  }

  else
  {

    v21 = swift_task_alloc();
    *(v0 + 552) = v21;
    *v21 = v0;
    v21[1] = sub_261375BEC;
    v22 = *(v0 + 280);
    v23 = *(v0 + 176);

    return sub_261366994(v23, v22);
  }
}

uint64_t sub_261374B04()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 560);
  v3 = *(v0 + 272);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v18 = *(v0 + 368);
  v19 = *(v0 + 232);
  v6 = *(v0 + 192);
  (*(v0 + 296))(v3, *(v0 + 280), v5);
  v7 = (v2 + 24) & ~v2;
  v8 = (v7 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  *(v9 + 16) = v6;
  v1(v9 + v7, v3, v5);
  *(v9 + v8) = v18;
  v10 = v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 48) = *(v0 + 64);
  v11 = *(v0 + 48);
  *(v10 + 16) = *(v0 + 32);
  *(v10 + 32) = v11;
  *v10 = *(v0 + 16);
  v12 = v6;
  sub_261259E1C(v0 + 16, v0 + 72);
  v13 = MEMORY[0x277D84F78];
  sub_2612529C0(v19);
  v14 = swift_task_alloc();
  *(v0 + 472) = v14;
  *v14 = v0;
  v14[1] = sub_261374CA0;
  v15 = *(v0 + 232);
  v16 = *(v0 + 176);

  return sub_261252A34(v14, v15, sub_261376DEC, v9, v16, v13 + 8);
}

uint64_t sub_261374CA0()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 208);
  *(*v1 + 480) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_261375444;
  }

  else
  {
    v5 = sub_261375110;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261374E3C()
{
  sub_261295F30(v0 + 16);
  v1 = *(v0 + 456);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v6;
    v7 = (v5 + 24) & ~v5;
    v8 = *(v0 + 272);
    v9 = (*(v0 + 264) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 192);
    v6(*(v0 + 224));
    v10(v8, v11, v12);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = v13;
    v24(v14 + v7, v8, v12);
    *(v14 + v9) = v25;
    *(v14 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v15 = v13;

    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_261375718;
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v16, v17, sub_26137722C, v14, v18, v19);
  }

  else
  {

    v21 = swift_task_alloc();
    *(v0 + 552) = v21;
    *v21 = v0;
    v21[1] = sub_261375BEC;
    v22 = *(v0 + 280);
    v23 = *(v0 + 176);

    return sub_261366994(v23, v22);
  }
}

uint64_t sub_261375110()
{
  v1 = v0[24];
  type metadata accessor for SafMonitorEventDispatcher();
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v3 = swift_task_alloc();
  v0[61] = v3;
  *v3 = v0;
  v3[1] = sub_2613751D8;
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  v7 = v0[35];

  return sub_26129FE18(v5, v1 + v2, v7, v6, v4, 0);
}

uint64_t sub_2613751D8()
{

  return MEMORY[0x2822009F8](sub_2613752D4, 0, 0);
}

uint64_t sub_2613752D4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v9 = *(v0 + 248);
  (*(v0 + 296))(*(v0 + 272), v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = objc_allocWithZone(sub_2613A00AC());
  sub_26124C778(v3, v4);

  v6 = sub_2613A009C();
  sub_261295F30(v0 + 16);
  (*(v2 + 8))(v1, v9);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_261375444()
{
  sub_261295F30(v0 + 16);
  v1 = *(v0 + 480);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v6;
    v7 = (v5 + 24) & ~v5;
    v8 = *(v0 + 272);
    v9 = (*(v0 + 264) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *(v0 + 520);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 248);
    v13 = *(v0 + 192);
    v6(*(v0 + 224));
    v10(v8, v11, v12);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = v13;
    v24(v14 + v7, v8, v12);
    *(v14 + v9) = v25;
    *(v14 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v15 = v13;

    v16 = swift_task_alloc();
    *(v0 + 544) = v16;
    *v16 = v0;
    v16[1] = sub_261375718;
    v17 = *(v0 + 224);
    v18 = *(v0 + 176);
    v19 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v16, v17, sub_26137722C, v14, v18, v19);
  }

  else
  {

    v21 = swift_task_alloc();
    *(v0 + 552) = v21;
    *v21 = v0;
    v21[1] = sub_261375BEC;
    v22 = *(v0 + 280);
    v23 = *(v0 + 176);

    return sub_261366994(v23, v22);
  }
}

uint64_t sub_261375718()
{
  v2 = *v1;

  v3 = v2[62];
  v4 = v2[28];
  v5 = v2[26];
  if (v0)
  {

    v3(v4, v5);
    v6 = sub_261375B3C;
  }

  else
  {
    v3(v4, v5);

    v6 = sub_2613758E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2613758E4()
{
  v1 = *(v0 + 520);
  if (*(v1 + 16) == 1)
  {
    v20 = *(v0 + 512);
    v19 = *(v0 + 320);
    v18 = *(v0 + 296);
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 248);
    v5 = *(v0 + 192);
    v6 = (*(v0 + 560) + 24) & ~*(v0 + 560);
    v7 = (v6 + *(v0 + 264) + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 528))(*(v0 + 224), *(v0 + 564), *(v0 + 208));
    v18(v3, v2, v4);
    v8 = swift_allocObject();
    *(v0 + 536) = v8;
    *(v8 + 16) = v5;
    v19(v8 + v6, v3, v4);
    *(v8 + v7) = v1;
    *(v8 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v9 = v5;

    v10 = swift_task_alloc();
    *(v0 + 544) = v10;
    *v10 = v0;
    v10[1] = sub_261375718;
    v11 = *(v0 + 224);
    v12 = *(v0 + 176);
    v13 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v10, v11, sub_26137722C, v8, v12, v13);
  }

  else
  {

    v15 = swift_task_alloc();
    *(v0 + 552) = v15;
    *v15 = v0;
    v15[1] = sub_261375BEC;
    v16 = *(v0 + 280);
    v17 = *(v0 + 176);

    return sub_261366994(v17, v16);
  }
}

uint64_t sub_261375B3C()
{

  v1 = swift_task_alloc();
  v0[69] = v1;
  *v1 = v0;
  v1[1] = sub_261375BEC;
  v2 = v0[35];
  v3 = v0[22];

  return sub_261366994(v3, v2);
}

uint64_t sub_261375BEC()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_261375CF4, 0, 0);
}

uint64_t sub_261375CF4()
{
  v1 = v0[63];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = sub_261372E48(v1, 0xD000000000000031, 0x80000002613BD910);
  v0[21] = v5;
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  swift_willThrowTypedImpl();

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t objectdestroy_6Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261375EA0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261335160(v3, v4, v5, v2);
}

uint64_t sub_261375F68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_261375FD0(unsigned __int8 *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_26139FB0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_26129B7C4();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v57 = v14;
    v58 = v16;
    v17 = *(a1 + 8);
    v60 = *(a1 + 24);
    v61 = v17;
    sub_2612DDE08(&v61, v59);
    sub_2612DDE08(&v60, v59);
    v18 = sub_2613A122C();
    v19 = sub_2613A1D8C();
    sub_26130105C(&v61);
    sub_26130105C(&v60);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v54 = v10;
      v21 = v20;
      v22 = swift_slowAlloc();
      v55 = v15;
      v23 = v22;
      *v21 = 138412290;
      sub_26129DF9C();
      swift_allocError();
      v53 = v3;
      v24 = *(a1 + 4);
      v25 = *(a1 + 1);
      *v26 = *a1;
      *(v26 + 16) = v25;
      *(v26 + 32) = v24;
      sub_2612DDE08(&v61, v59);
      sub_2612DDE08(&v60, v59);
      v3 = v53;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v27;
      *v23 = v27;
      _os_log_impl(&dword_261243000, v18, v19, "Could not validate batch deletion token: [%@]", v21, 0xCu);
      sub_26124C718(v23, &qword_27FEA0410, &qword_2613AA780);
      v28 = v23;
      v15 = v55;
      MEMORY[0x266701350](v28, -1, -1);
      v29 = v21;
      v10 = v54;
      MEMORY[0x266701350](v29, -1, -1);
    }

    v14 = v57;
    (*(v15 + 8))(v12, v57);
    v16 = v58;
  }

  v30 = *a1;
  if (v30 == 3)
  {
    v36 = MEMORY[0x277D43880];
LABEL_12:
    (*(v4 + 104))(v6, *v36, v3);
    goto LABEL_15;
  }

  if (v30 != 4)
  {
    v36 = MEMORY[0x277D438C8];
    goto LABEL_12;
  }

  v58 = v16;
  v55 = v15;
  v31 = sub_2613A197C();
  v33 = v32;
  v34 = sub_2613A0E0C();
  LOBYTE(v31) = sub_261371684(v31, v33, v34);

  if (v31)
  {
    v35 = MEMORY[0x277D438C0];
  }

  else
  {
    v35 = MEMORY[0x277D438C8];
  }

  (*(v4 + 104))(v6, *v35, v3);
  v15 = v55;
  v16 = v58;
LABEL_15:
  v37 = objc_allocWithZone(sub_26139FB2C());
  v38 = sub_26139FB3C();
  v39 = sub_26129B934();
  sub_26125A870(v39, v10, &qword_27FE9F560, &qword_2613A3CB0);
  if (v16(v10, 1, v14) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v40 = v56;

    v41 = v38;
    v42 = sub_2613A122C();
    v43 = sub_2613A1D8C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v15;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57 = v14;
      v48 = v47;
      v59[0] = v47;
      *v44 = 136315394;
      *(v44 + 4) = sub_26124C11C(0xD000000000000021, v40, v59);
      *(v44 + 12) = 2112;
      *(v44 + 14) = v41;
      *v46 = v41;
      v49 = v41;
      _os_log_impl(&dword_261243000, v42, v43, "%s: Returning error [%@]", v44, 0x16u);
      sub_26124C718(v46, &qword_27FEA0410, &qword_2613AA780);
      v50 = v46;
      v15 = v45;
      MEMORY[0x266701350](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      v51 = v48;
      v14 = v57;
      MEMORY[0x266701350](v51, -1, -1);
      MEMORY[0x266701350](v44, -1, -1);
    }

    (*(v15 + 8))(v10, v14);
  }

  return v38;
}

uint64_t sub_2613765A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261376698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_261376720(uint64_t a1)
{
  sub_2613767EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2613767EC(uint64_t a1)
{
  if (!qword_27FEA0810)
  {
    type metadata accessor for StoreAnalytics(255);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA0810);
    }
  }
}

uint64_t sub_261376844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26136BC30(v2, v3, v4);
}

uint64_t sub_2613768F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261367018(v2, v3);
}

uint64_t sub_2613769A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613647C0(v2, v3, v4);
}

uint64_t sub_261376A58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2613621E8(v2, v3);
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_261376D34(NSObject *a1, NSObject *a2)
{
  v5 = *(sub_26139F13C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2613718EC(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_261376DEC(uint64_t a1, void *a2)
{
  v4 = *(sub_26139F13C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(*(v2 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);

  sub_261256F30(a2, v10, v11, v2 + v5, v8, (v2 + v7));
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_261377048(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = MEMORY[0x266700BB0]();
  sub_2613702FC(a1, a2, v6, v5, &v8);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_2613770D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261377120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2613771B0(uint64_t a1)
{
  result = sub_26139F13C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_261377274()
{
  v0 = sub_26139F30C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_2613A121C();
  result = sub_2613A10FC();
  if ((result & 1) == 0)
  {
    v8 = sub_26129BA7C();
    sub_26124AA44(v8, v6);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_26124D0CC(v6);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D8C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "Passcode disabled", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v10 + 8))(v6, v9);
    }

    (*(v1 + 104))(v3, *MEMORY[0x277D43690], v0);
    sub_26139F33C();
    sub_26137778C();
    swift_allocError();
    sub_26139F31C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2613774F8()
{
  v0 = sub_26139F30C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_2613A121C();
  result = sub_2613A10EC();
  if (result)
  {
    v8 = sub_26129BA7C();
    sub_26124AA44(v8, v6);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_26124D0CC(v6);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D8C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "Ongoing call detected", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v10 + 8))(v6, v9);
    }

    (*(v1 + 104))(v3, *MEMORY[0x277D43640], v0);
    sub_26139F33C();
    sub_26137778C();
    swift_allocError();
    sub_26139F31C();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_26137778C()
{
  result = qword_27FEA0760;
  if (!qword_27FEA0760)
  {
    sub_26139F33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0760);
  }

  return result;
}

uint64_t sub_2613777E4(uint64_t a1)
{
  v2 = a1 - 4000;
  result = 1;
  switch(v2)
  {
    case 0:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 28:
    case 29:
    case 31:
    case 32:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
      return a1;
    case 1:
    case 33:
      return 0;
    case 2:
      return result;
    case 5:
      return 6;
    case 6:
    case 30:
    case 35:
    case 46:
      return 10;
    case 13:
      return 2;
    case 15:
      return 1;
    case 21:
      return 8;
    case 22:
      return 9;
    case 25:
    case 57:
      return 3;
    case 26:
      return 5;
    case 27:
      return 7;
    case 36:
      return 4;
    case 37:
    case 38:
    case 39:
      return 2;
    default:
      if (a1 == 4999)
      {
        return 10;
      }

      else
      {
        return a1;
      }
  }
}

uint64_t sub_2613778B4(void *a1)
{
  v33[0] = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  type metadata accessor for ConfigurationError(0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v4 = sub_26139F2CC();
    *(inited + 32) = sub_26139F29C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v5;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000002613BD9D0;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_261378344(inited + 32);
    v6 = objc_allocWithZone(v4);
    return sub_26139F2DC();
  }

  v2 = v34;
  v33[0] = v34;
  sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);
  sub_26139EE1C();
  if (v34 == 2031 || (v33[0] = v34, sub_26139EE1C(), v34 == 2022) || (v33[0] = v34, sub_26139EE1C(), v34 == 2036))
  {
    sub_26139FBAC();
    swift_allocObject();
    sub_26139FB8C();
    sub_26139FB9C();
  }

  sub_26139EE1C();
  switch(v33[12])
  {
    case 0x7D0:
    case 0x7D4:
    case 0x7E3:
    case 0x7E5:
    case 0x7E6:
    case 0x7ECLL:
    case 0x7F3:
    case 0x7F4:
    case 0x7F5:
    case 0x7F9:
    case 0x7FELL:
      v29 = objc_allocWithZone(sub_26139F2CC());
      v30 = sub_26139F2DC();
      goto LABEL_47;
    case 0x7D7:
      v8 = "Unexpected session error";
      v9 = 0xD000000000000021;
      goto LABEL_45;
    case 0x7D8:
      v13 = "Reader initialized by wrong component";
      goto LABEL_20;
    case 0x7D9:
      v14 = "Reader install failed";
      goto LABEL_38;
    case 0x7DALL:
      v8 = "Reader install failed";
      v9 = 0xD00000000000001ALL;
      goto LABEL_45;
    case 0x7DBLL:
      v15 = "Reader configuration not valid";
      goto LABEL_34;
    case 0x7DCLL:
      v10 = "Reader configuration expired";
      goto LABEL_26;
    case 0x7DFLL:
      v8 = "Reader configuration expired";
      v9 = 0xD000000000000023;
      goto LABEL_45;
    case 0x7E0:
      v8 = "tion cannot be read";
      v9 = 0xD000000000000017;
      goto LABEL_45;
    case 0x7E1:
      v10 = "Reader could not be attested";
      goto LABEL_26;
    case 0x7E2:
      v33[11] = v34;
      v17 = sub_26139EE3C();
      v18 = sub_26139F2CC();
      v19 = sub_26139F2AC();
      if (!*(v17 + 16))
      {

        goto LABEL_49;
      }

      v21 = sub_26124E5EC(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
LABEL_49:

        goto LABEL_50;
      }

      sub_26124C994(*(v17 + 56) + 32 * v21, v33);

      v24 = MEMORY[0x277D839F8];
      if (swift_dynamicCast())
      {
        v25 = v33[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_2613A4310;
        *(v26 + 32) = sub_26139F2AC();
        *(v26 + 40) = v27;
        *(v26 + 72) = v24;
        *(v26 + 48) = v25;
        sub_261259E78(v26);
        swift_setDeallocating();
        sub_261378344(v26 + 32);
      }

LABEL_50:
      v32 = objc_allocWithZone(v18);
      v30 = sub_26139F2DC();
LABEL_47:
      v31 = v30;

      return v31;
    case 0x7E4:
      v13 = "Attestation failed due to clock issue";
LABEL_20:
      v8 = (v13 - 32);
      v9 = 0xD000000000000025;
      goto LABEL_45;
    case 0x7E7:
      v8 = "ed due to clock issue";
      v9 = 0xD00000000000001FLL;
      goto LABEL_45;
    case 0x7E8:
      v11 = "Attestation has wrong format or is expired";
      goto LABEL_40;
    case 0x7E9:
      v28 = "Cannot renew certificate";
      goto LABEL_42;
    case 0x7EALL:
      v8 = "Cannot renew certificate";
      v9 = 0xD000000000000016;
      goto LABEL_45;
    case 0x7EBLL:
      v14 = "Invalid reader script";
LABEL_38:
      v8 = (v14 - 32);
      v9 = 0xD000000000000015;
      goto LABEL_45;
    case 0x7EDLL:
      v28 = "Reader attestation error";
LABEL_42:
      v8 = (v28 - 32);
      v9 = 0xD000000000000018;
      goto LABEL_45;
    case 0x7EELL:
      v8 = "Reader attestation error";
      v9 = 0xD000000000000026;
      goto LABEL_45;
    case 0x7EFLL:
      v11 = "Reader configuration incompatible baseline";
LABEL_40:
      v8 = (v11 - 32);
      v9 = 0xD00000000000002ALL;
      goto LABEL_45;
    case 0x7F0:
      v12 = "Configuration endpoint not found";
      goto LABEL_44;
    case 0x7F1:
      v10 = "Reader software update issue";
      goto LABEL_26;
    case 0x7F6:
      v12 = "The environment is not supported";
LABEL_44:
      v8 = (v12 - 32);
      v9 = 0xD000000000000020;
      goto LABEL_45;
    case 0x7F7:
      v8 = "Reader secure pairing violation";
      v9 = 0xD000000000000022;
      goto LABEL_45;
    case 0x7F8:
      v15 = "Reader configuration cancelled";
LABEL_34:
      v8 = (v15 - 32);
      v9 = 0xD00000000000001ELL;
      goto LABEL_45;
    case 0x7FALL:
    case 0x7FBLL:
    case 0x7FCLL:
      v8 = "ot be synchronized";
      v9 = 0xD000000000000012;
LABEL_45:
      v16 = v8 | 0x8000000000000000;
      goto LABEL_46;
    default:
      v10 = "Reader could not be prepared";
LABEL_26:
      v16 = (v10 - 32) | 0x8000000000000000;
      v9 = 0xD00000000000001CLL;
LABEL_46:
      v30 = sub_2613783AC(v9, v16, v34);
      goto LABEL_47;
  }
}

uint64_t sub_261377F98(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_261378004(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_261378070(void *a1, uint64_t a2)
{
  v4 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_261378100(uint64_t a1, uint64_t a2)
{
  v4 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26137817C(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0870, type metadata accessor for ConfigurationError, &unk_2613AD5F8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2613781E8(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0870, type metadata accessor for ConfigurationError, &unk_2613AD5F8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261378254(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2613782C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_261378344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2613783AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a1;
  if (a3)
  {
    v5 = a3;

    MEMORY[0x2666FFEA0](10272, 0xE200000000000000);
    type metadata accessor for ConfigurationError(0);
    sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError, &unk_2613AD63C);
    sub_26139EE1C();
    v6 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v6);

    MEMORY[0x2666FFEA0](41, 0xE100000000000000);

    v4 = a1;
    v3 = a2;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  v8 = sub_26139F2CC();
  *(inited + 32) = sub_26139F29C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v9;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_261259E78(inited);
  swift_setDeallocating();
  sub_261378344(inited + 32);
  v10 = objc_allocWithZone(v8);
  return sub_26139F2DC();
}

uint64_t sub_2613785C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26137887C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v56 = a4;
  v57 = a3;
  v7 = sub_26139F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47[-v12];
  v14 = a1[1];
  if (!v14)
  {
    v24 = v57;
    sub_261378F40(a2, v57);
    v25 = [objc_opt_self() standardUserDefaults];
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_2613A211C();

    v60 = 0xD000000000000013;
    v61 = 0x80000002613BDE80;
    MEMORY[0x2666FFEA0](a2, v24);
    v26 = sub_2613A189C();

    [v25 removeObjectForKey_];

    return 0;
  }

  v51 = v10;
  v52 = v8;
  v50 = v7;
  v15 = *a1;
  v17 = a1[2];
  v16 = a1[3];
  v18 = a1[4];
  v19 = sub_26129B5FC();
  sub_26124AA44(v19, v13);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v13, 1, v20);
  v54 = v16;
  v55 = v15;
  if (v22 == 1)
  {
    sub_26124D0CC(v13);
    v23 = v18;
  }

  else
  {
    v49 = a2;

    v27 = sub_2613A122C();
    v28 = v14;
    v29 = sub_2613A1D9C();
    sub_261273F3C(v15, v28, v17, v16, v18);
    v48 = v29;
    v30 = v29;
    v14 = v28;
    v23 = v18;
    if (os_log_type_enabled(v27, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v60 = v55;
      v61 = v28;
      v62 = v17;
      v63 = v54;
      v64 = v18;
      *(v31 + 4) = DeprecationWarning.remainingTimeUntilDeprecation.getter();
      _os_log_impl(&dword_261243000, v27, v48, "There is a OS deprecation warning, remaining time: %f", v31, 0xCu);
      MEMORY[0x266701350](v31, -1, -1);
    }

    (*(v21 + 8))(v13, v20);
    a2 = v49;
  }

  v33 = v54;
  v32 = v55;
  v60 = v55;
  v61 = v14;
  v62 = v17;
  v63 = v54;
  v64 = v23;
  v34 = DeprecationWarning.remainingTimeUntilDeprecation.getter();
  v35 = sub_261379024(a2, v57, v56, v34);
  v36 = v51;
  v37 = v52;
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  v60 = v32;
  v61 = v14;
  v62 = v17;
  v63 = v33;
  v64 = v23;
  v38 = DeprecationWarning.remainingTimeUntilDeprecation.getter();
  v39 = [objc_opt_self() standardUserDefaults];
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_2613A211C();

  v58 = 0xD000000000000013;
  v59 = 0x80000002613BDE80;
  MEMORY[0x2666FFEA0](a2, v57);
  v40 = sub_2613A189C();

  [v39 setDouble:v40 forKey:v38];

  v41 = v55;
  v42 = v53;
  if (v53)
  {
    v60 = v55;
    v61 = v14;
    v62 = v17;
    v63 = v33;
    v64 = v23;
    DeprecationWarning.deprecationDate.getter();
    sub_26139B0AC(v36);
    (*(v37 + 8))(v36, v50);
  }

  sub_2613A121C();
  v60 = v41;
  v61 = v14;
  v62 = v17;
  v63 = v33;
  v64 = v23;
  DeprecationWarning.deprecationDate.getter();
  v43 = swift_allocObject();
  v43[2] = a2;
  v44 = v56;
  v43[3] = v57;
  v43[4] = v44;
  v43[5] = v42;

  v45 = sub_2613A114C();

  (*(v37 + 8))(v36, v50);
  return v45;
}

uint64_t sub_261378DC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26139F0BC();
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  if (v8)
  {
    v9 = a1[4];
    v13 = *(a1 + 1);
    v10 = *a1;
    v14 = v5;
    sub_26139F09C();
    v15 = v10;
    v16 = v8;
    v17 = v13;
    v18 = v9;
    DeprecationWarning.remainingTimeUntilDeprecation.getter();
    sub_26139F04C();
    (*(v14 + 8))(v7, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4);
  }
}

uint64_t sub_261378F40(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](a1, a2);
  v5 = sub_2613A189C();

  [v4 doubleForKey_];
  v7 = v6;

  return v7;
}

uint64_t sub_261379024(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = (*(*a3 + 352))(v18);
  if ((v23 & 1) != 0 || ((v24 = v21, v25 = v22, v26 = sub_2612FF320(), v28 = v27 - v25, v26 == v24) ? (v29 = v28 > 2592000.0) : (v29 = 1), v29))
  {
    v30 = sub_26129B7C4();
    sub_26124AA44(v30, v11);
    v31 = sub_2613A124C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v11, 1, v31) != 1)
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "OS deprecation received but merchant is not active, alert is not needed", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v32 + 8))(v11, v31);
      return 0;
    }

    v33 = v11;
LABEL_9:
    sub_26124D0CC(v33);
    return 0;
  }

  if (a4 < 0.0)
  {
    v38 = sub_26129B7C4();
    sub_26124AA44(v38, v14);
    v39 = sub_2613A124C();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v14, 1, v39) != 1)
    {
      v44 = sub_2613A122C();
      v45 = sub_2613A1D8C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_261243000, v44, v45, "OS is deprecated, unexpected negative remaining time", v46, 2u);
        MEMORY[0x266701350](v46, -1, -1);
      }

      (*(v40 + 8))(v14, v39);
      return 0;
    }

    v33 = v14;
    goto LABEL_9;
  }

  if (a4 > 7776000.0)
  {
    v41 = sub_26129B7C4();
    sub_26124AA44(v41, v17);
    v42 = sub_2613A124C();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v17, 1, v42) != 1)
    {
      v51 = sub_2613A122C();
      v52 = sub_2613A1D9C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_261243000, v51, v52, "OS deprecation is greater than 90 days, alert is not needed", v53, 2u);
        MEMORY[0x266701350](v53, -1, -1);
      }

      (*(v43 + 8))(v17, v42);
      return 0;
    }

    v33 = v17;
    goto LABEL_9;
  }

  v47 = COERCE_DOUBLE(sub_261378F40(a1, a2));
  if (v47 >= a4)
  {
    if (a4 <= 259200.0)
    {
      v57 = 86400.0;
      if (a4 > 86400.0)
      {
        *&v58 = 172800.0;
        if (a4 > 172800.0)
        {
          *&v58 = 259200.0;
        }

        v57 = *&v58;
      }

      if (v57 >= v47)
      {
        return 0;
      }
    }

    else if (v47 - a4 < 604800.0)
    {
      return 0;
    }
  }

  else
  {
    v48 = sub_26129B7C4();
    sub_26124AA44(v48, v20);
    v49 = sub_2613A124C();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v20, 1, v49) == 1)
    {
      sub_26124D0CC(v20);
    }

    else
    {
      v54 = sub_2613A122C();
      v55 = sub_2613A1D9C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v54, v55, "OS deprecation was postponed, showing alert with new deadline", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      (*(v50 + 8))(v20, v49);
    }
  }

  v59 = [objc_opt_self() standardUserDefaults];
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_2613A211C();

  v61 = 0xD000000000000013;
  v62 = 0x80000002613BDE80;
  MEMORY[0x2666FFEA0](a1, a2);
  v60 = sub_2613A189C();

  [v59 setDouble:v60 forKey:a4];

  return 1;
}

uint64_t sub_2613796F8(uint64_t result)
{
  if (*(v1 + 40))
  {
    return sub_26139B28C(result & 1);
  }

  return result;
}

uint64_t sub_261379734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (!*(v14 + 16) || (v15 = sub_26124E5EC(a1, a2), (v16 & 1) == 0))
  {
    LODWORD(v53) = a3;
    swift_endAccess();
    v35 = sub_26129B858();
    sub_26125A870(v35, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v36 = sub_2613A124C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v12, 1, v36) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v53 & 1) == 0)
      {
LABEL_6:
        v38 = sub_2613A040C();
LABEL_11:
        v45 = v38;
        v46 = v39;
        v47 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext + 16);
        v61[0] = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext);
        v61[1] = v47;
        v62 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext + 32);
        v63 = v61[0];
        v64 = v47;
        v65 = v62;
        sub_2612DDE08(&v63, &v55);
        sub_2612DDE08(&v64, &v55);
        sub_2612DDE08(&v65, &v55);
        sub_2612D88E0(v61, v45, v46, &v55);
        swift_beginAccess();

        sub_26135F62C(&v55, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = *(v5 + v13);
        *(v5 + v13) = 0x8000000000000000;
        sub_26135A79C(&v55, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v5 + v13) = v54[0];
        result = swift_endAccess();
        v34 = *(&v60 + 1);
        v33 = v60;
        v32 = *(&v59 + 1);
        v31 = v59;
        v23 = *(&v58 + 1);
        v22 = v58;
        v25 = *(&v55 + 1);
        v24 = v55;
        v27 = *(&v56 + 1);
        v26 = v56;
        v29 = *(&v57 + 1);
        v28 = v57;
        goto LABEL_12;
      }
    }

    else
    {
      v52 = a1;
      v40 = sub_2613A122C();
      v41 = sub_2613A1D9C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v51 = a2;
        v43 = v42;
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Identity analytics session is not available, trying to create it", v42, 2u);
        v44 = v43;
        a2 = v51;
        MEMORY[0x266701350](v44, -1, -1);
      }

      (*(v37 + 8))(v12, v36);
      a1 = v52;
      if ((v53 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v38 = sub_2613A03FC();
    goto LABEL_11;
  }

  v17 = (*(v14 + 56) + 96 * v15);
  v18 = v17[1];
  v55 = *v17;
  v56 = v18;
  v19 = v17[5];
  v21 = v17[2];
  v20 = v17[3];
  v59 = v17[4];
  v60 = v19;
  v57 = v21;
  v58 = v20;
  swift_endAccess();
  v52 = *(&v60 + 1);
  v53 = v60;
  v50 = *(&v59 + 1);
  v51 = v59;
  v23 = *(&v58 + 1);
  v22 = v58;
  v25 = *(&v55 + 1);
  v24 = v55;
  v27 = *(&v56 + 1);
  v26 = v56;
  v29 = *(&v57 + 1);
  v28 = v57;
  result = sub_26135F62C(&v55, v54);
  v32 = v50;
  v31 = v51;
  v34 = v52;
  v33 = v53;
LABEL_12:
  *a4 = v24;
  a4[1] = v25;
  a4[2] = v26;
  a4[3] = v27;
  a4[4] = v28;
  a4[5] = v29;
  a4[6] = v22;
  a4[7] = v23;
  a4[8] = v31;
  a4[9] = v32;
  a4[10] = v33;
  a4[11] = v34;
  return result;
}

uint64_t sub_261379ADC(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  v6 = swift_task_alloc();
  v3[6] = v6;
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_261379BC8;

  return sub_261379D64(v6, a1, a2);
}

uint64_t sub_261379BC8()
{

  return MEMORY[0x2822009F8](sub_261379CC4, 0, 0);
}

uint64_t sub_261379CC4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  sub_261349F44(v2, v1 + v3);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261379D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[18] = swift_task_alloc();
  type metadata accessor for IdentityAnalyticsRequestInformation(0);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for IdentityAnalyticsReporter(0);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_2613A006C();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261379F20, 0, 0);
}

uint64_t sub_261379F20()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_2613A00DC();
  v4 = sub_2613A005C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = sub_2613A08FC();
  }

  else
  {
    v5 = sub_2613A08EC();
  }

  v7 = v5;
  v8 = v6;
  *(v0 + 216) = v6;
  *(v0 + 224) = v5;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_26137A03C;
  v10 = *(v0 + 160);

  return sub_26137AED4(v10, v7, v8);
}

uint64_t sub_26137A03C()
{

  return MEMORY[0x2822009F8](sub_26137A138, 0, 0);
}

uint64_t sub_26137A138()
{
  v44 = v0;
  v1 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 112);

    sub_26124C718(v1, &qword_27FE9FD30, "HM");
    v3 = type metadata accessor for IdentityAnalyticsTransaction(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  else
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);
    v41 = *(v0 + 152);
    v6 = *(v0 + 120);
    sub_26137D284(v1, *(v0 + 184), type metadata accessor for IdentityAnalyticsReporter);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v7 = sub_2613A00FC();
    v9 = v8;
    v10 = sub_26139FF0C();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    sub_261379734(v7, v9, v13 != 0, (v0 + 16));

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v14 = sub_2613A00CC();
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v15 = sub_2613A00EC();
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2613A00DC();
    sub_2612D92B4(v14 & 1, v15, v4, v41);
    sub_26139FEFC();
    sub_26139FF0C();
    nullsub_1();
    v17 = v16;
    v19 = v18;
    v42 = v20;
    v22 = v21;
    v23 = sub_26129B858();
    sub_26125A870(v23, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 48))(v5, 1, v24);
    v27 = *(v0 + 144);
    if (v26 == 1)
    {

      sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = v17;

      v28 = sub_2613A122C();
      v29 = sub_2613A1D9C();

      if (os_log_type_enabled(v28, v29))
      {
        v39 = v22;
        v31 = *(v0 + 216);
        v30 = *(v0 + 224);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v43 = v33;
        *v32 = 136315138;
        v34 = sub_26124C11C(v30, v31, &v43);
        v22 = v39;

        *(v32 + 4) = v34;
        _os_log_impl(&dword_261243000, v28, v29, "Identity analytics transaction for [%s] is ready", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x266701350](v33, -1, -1);
        MEMORY[0x266701350](v32, -1, -1);
      }

      else
      {
      }

      (*(v25 + 8))(*(v0 + 144), v24);
      v17 = v40;
    }

    v35 = *(v0 + 184);
    v36 = *(v0 + 152);
    sub_2612D8F54(v35, v17, v19, v42, v22, v36, *(v0 + 112));
    sub_26137D2EC(v0 + 16);

    sub_26137D340(v36, type metadata accessor for IdentityAnalyticsRequestInformation);
    sub_26137D340(v35, type metadata accessor for IdentityAnalyticsReporter);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26137A604(char a1, uint64_t a2)
{
  v5 = sub_26139F33C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_2613A1C1C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v2;
  *(v13 + 40) = a1;
  (*(v6 + 32))(v13 + v12, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = v2;
  sub_261266800(0, 0, v10, &unk_2613AD7E0, v13);
}

uint64_t sub_26137A7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 352) = a5;
  *(v6 + 256) = a4;
  *(v6 + 264) = a6;
  v7 = sub_26139F30C();
  *(v6 + 272) = v7;
  *(v6 + 280) = *(v7 - 8);
  *(v6 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v6 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  *(v6 + 304) = swift_task_alloc();
  v8 = type metadata accessor for IdentityAnalyticsReporter(0);
  *(v6 + 312) = v8;
  *(v6 + 320) = *(v8 - 8);
  *(v6 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26137A97C, 0, 0);
}

uint64_t sub_26137A97C(uint64_t a1)
{
  v2 = sub_2613A08EC();
  v4 = v3;
  v1[42] = v3;
  v5 = swift_task_alloc();
  v1[43] = v5;
  *v5 = v1;
  v5[1] = sub_26137AA34;
  v6 = v1[38];

  return sub_26137AED4(v6, v2, v4);
}

uint64_t sub_26137AA34()
{

  return MEMORY[0x2822009F8](sub_26137AB4C, 0, 0);
}

uint64_t sub_26137AB4C()
{
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) != 1)
  {
    v6 = *(v0 + 352);
    sub_26137D284(v1, *(v0 + 328), type metadata accessor for IdentityAnalyticsReporter);
    if (v6 == 1)
    {
      v7 = sub_2613A03FC();
    }

    else
    {
      v7 = sub_2613A040C();
    }

    v13 = v7;
    v14 = v8;
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = (*(v0 + 256) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext);
    v20 = v18[1];
    v19 = v18[2];
    *(v0 + 112) = *v18;
    *(v0 + 128) = v20;
    *(v0 + 144) = v19;
    *(v0 + 192) = *v18;
    *(v0 + 176) = v18[1];
    *(v0 + 160) = v18[2];
    sub_2612DDE08(v0 + 192, v0 + 208);
    sub_2612DDE08(v0 + 176, v0 + 224);
    sub_2612DDE08(v0 + 160, v0 + 240);
    sub_2612D88E0((v0 + 112), v13, v14, v0 + 16);
    sub_26139F32C();
    v21 = (*(v16 + 88))(v15, v17);
    if (v21 == *MEMORY[0x277D43648])
    {
      v22 = sub_2613A099C();
    }

    else
    {
      if (v21 != *MEMORY[0x277D43698])
      {
        v27 = *(v0 + 280);
        v26 = *(v0 + 288);
        v28 = *(v0 + 272);
        v24 = sub_2613A09AC();
        v25 = v29;
        (*(v27 + 8))(v26, v28);
        goto LABEL_16;
      }

      v22 = sub_2613A09CC();
    }

    v24 = v22;
    v25 = v23;
LABEL_16:
    v30 = *(v0 + 328);
    sub_2612D8B9C(v30, v24, v25);

    sub_26137D2EC(v0 + 16);
    sub_26137D340(v30, type metadata accessor for IdentityAnalyticsReporter);
    goto LABEL_17;
  }

  v2 = *(v0 + 296);
  sub_26124C718(v1, &qword_27FE9FD30, "HM");
  v3 = sub_26129B858();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(*(v0 + 296), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Identity analytics reporter could not be created", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = *(v0 + 296);

    (*(v5 + 8))(v12, v4);
  }

LABEL_17:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_26137AED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26137AFAC, 0, 0);
}

uint64_t sub_26137AFAC()
{
  v6 = (*(**(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsManager) + 120) + **(**(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsManager) + 120));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_26137B0DC;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];

  return v6(v2, v3, v4);
}

uint64_t sub_26137B0DC()
{

  return MEMORY[0x2822009F8](sub_26137B1D8, 0, 0);
}

uint64_t sub_26137B1D8()
{
  v18 = v0;
  v1 = v0[7];
  v2 = type metadata accessor for IdentityAnalyticsReporter(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    sub_26124C718(v1, &qword_27FE9FD30, "HM");
    v5 = sub_26129B858();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v9 = sub_2613A122C();
      v10 = sub_2613A1D9C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v0[3];
        v16 = v0[4];
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_26124C11C(v11, v16, &v17);
        _os_log_impl(&dword_261243000, v9, v10, "Could not create identity analytics reporter [%s]", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x266701350](v13, -1, -1);
        MEMORY[0x266701350](v12, -1, -1);
      }

      (*(v7 + 8))(v0[6], v6);
    }

    v8 = 1;
  }

  else
  {
    sub_26137D284(v1, v0[2], type metadata accessor for IdentityAnalyticsReporter);
    v8 = 0;
  }

  (*(v3 + 56))(v0[2], v8, 1, v2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_26137B4C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26139F33C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_2613A1C1C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2612B5A20(a1, v17);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  sub_26124A200(v17, (v13 + 40));
  (*(v6 + 32))(&v13[v12], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = v2;
  sub_261266800(0, 0, v10, &unk_2613AD7F0, v13);
}

uint64_t sub_26137B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_26139F30C();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v10 = sub_26139FF3C();
  v6[13] = v10;
  v6[14] = *(v10 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08A8, &qword_2613AD7F8);
  v6[16] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[17] = v11;
  v12 = swift_task_alloc();
  v6[18] = v12;
  *v12 = v6;
  v12[1] = sub_26137B938;

  return sub_26134FBC8(v11, a5);
}

uint64_t sub_26137B938()
{

  if (v0)
  {

    v1 = sub_26137C07C;
  }

  else
  {
    v1 = sub_26137BA50;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26137BA50()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_26125A870(v2, v1, &qword_27FEA08A8, &qword_2613AD7F8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[13];
    sub_26139FF1C();
    if (v5(v7, 1, v8) != 1)
    {
      sub_26124C718(v0[16], &qword_27FEA08A8, &qword_2613AD7F8);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[16], v0[13]);
  }

  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_26137BBD0;
  v10 = v0[15];
  v11 = v0[9];
  v12 = v0[3];

  return sub_261379D64(v11, v12, v10);
}

uint64_t sub_26137BBD0()
{

  return MEMORY[0x2822009F8](sub_26137BCCC, 0, 0);
}

uint64_t sub_26137BCCC()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) != 1)
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    sub_26137D284(v1, v0[12], type metadata accessor for IdentityAnalyticsTransaction);
    sub_26139F32C();
    v14 = (*(v12 + 88))(v11, v13);
    if (v14 == *MEMORY[0x277D43648])
    {
      v15 = sub_2613A099C();
      v17 = v16;
    }

    else if (v14 == *MEMORY[0x277D43698])
    {
      v15 = sub_2613A09CC();
      v17 = v26;
    }

    else
    {
      v28 = v0[6];
      v27 = v0[7];
      v29 = v0[5];
      v30 = sub_2613A09AC();
      v17 = v31;
      (*(v28 + 8))(v27, v29);
      v15 = v30;
    }

    v32 = v0[17];
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[12];
    v36 = v0[13];
    sub_2612DBA44(v15, v17);

    sub_26137D340(v35, type metadata accessor for IdentityAnalyticsTransaction);
    (*(v34 + 8))(v33, v36);
    v8 = &qword_27FEA08A8;
    v9 = &qword_2613AD7F8;
    v10 = v32;
    goto LABEL_13;
  }

  v2 = v0[8];
  sub_26124C718(v1, &qword_27FEA0750, &qword_2613ACF00);
  v3 = sub_26129B858();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    v6 = v0[17];
    v7 = v0[8];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_26124C718(v6, &qword_27FEA08A8, &qword_2613AD7F8);
    v8 = &qword_27FE9F560;
    v9 = &qword_2613A3CB0;
    v10 = v7;
LABEL_13:
    sub_26124C718(v10, v8, v9);
    goto LABEL_14;
  }

  v18 = sub_2613A122C();
  v19 = sub_2613A1D8C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_261243000, v18, v19, "Could not create identity analytics transaction", v20, 2u);
    MEMORY[0x266701350](v20, -1, -1);
  }

  v21 = v0[17];
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[13];
  v25 = v0[8];

  (*(v23 + 8))(v22, v24);
  sub_26124C718(v21, &qword_27FEA08A8, &qword_2613AD7F8);
  (*(v5 + 8))(v25, v4);
LABEL_14:

  v37 = v0[1];

  return v37();
}

uint64_t sub_26137C07C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_26125A870(v2, v1, &qword_27FEA08A8, &qword_2613AD7F8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[13];
    sub_26139FF1C();
    if (v5(v7, 1, v8) != 1)
    {
      sub_26124C718(v0[16], &qword_27FEA08A8, &qword_2613AD7F8);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[16], v0[13]);
  }

  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_26137BBD0;
  v10 = v0[15];
  v11 = v0[9];
  v12 = v0[3];

  return sub_261379D64(v11, v12, v10);
}

uint64_t sub_26137C1FC()
{
  v1 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v5, 1, v1);
  if (!result)
  {
    sub_26135E584(v0 + v5, v4);
    v7 = sub_2613A096C();
    v9 = v8;
    v10 = sub_2613A08BC();
    sub_2612DC0FC(v7, v9, v10, v11);

    return sub_26137D340(v4, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137C34C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55[-1] - v7;
  v9 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v55[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 16:
    case 18:
    case 19:
    case 20:
      return result;
    case 1:
      v25 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v25, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v25, v13);
        v23 = sub_2613A0A7C();
        goto LABEL_19;
      }

      break;
    case 2:
      v28 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v28, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v28, v13);
        v23 = sub_2613A0A1C();
        goto LABEL_19;
      }

      break;
    case 3:
      if ((a2 & 1) != 0 || (v21 = sub_26139F92C(), result = sub_26139F92C(), v21 != result))
      {
        v22 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v10 + 48))(v3 + v22, 1, v9);
        if (!result)
        {
          sub_26135E584(v3 + v22, v13);
          v23 = sub_2613A0A3C();
LABEL_19:
          sub_2612DC210(v23, v24);
          goto LABEL_6;
        }
      }

      break;
    case 6:
      if ((a2 & 1) == 0 && ((v42 = sub_26139F92C(), v42 == sub_26139F92C()) || (v43 = sub_26139F92C(), v43 == sub_26139F92C()) || (v44 = sub_26139F92C(), v44 == sub_26139F92C())))
      {
        v45 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v10 + 48))(v3 + v45, 1, v9);
        if (!result)
        {
          sub_26135E584(v3 + v45, v13);
          v17 = sub_2613A0AFC();
          v18 = v46;
          v19 = sub_2613A09DC();
          goto LABEL_5;
        }
      }

      else
      {
        v26 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v10 + 48))(v3 + v26, 1, v9);
        if (!result)
        {
          sub_26135E584(v3 + v26, v13);
          v17 = sub_2613A0B9C();
          v18 = v27;
          v19 = sub_2613A09BC();
          goto LABEL_5;
        }
      }

      break;
    case 7:
    case 8:
    case 9:
    case 12:
    case 13:
    case 14:
    case 21:
      v14 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v14, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v14, v13);
        v15 = sub_2613A0AFC();
        goto LABEL_4;
      }

      break;
    case 10:
      v33 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v33, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v33, v13);
        v17 = sub_2613A0A4C();
        v18 = v34;
        v19 = sub_2613A09CC();
        goto LABEL_5;
      }

      break;
    case 11:
      v38 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v38, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v38, v13);
        v17 = sub_2613A0A4C();
        v18 = v39;
        v19 = sub_2613A099C();
        goto LABEL_5;
      }

      break;
    case 15:
      if ((a2 & 1) != 0 || (v29 = sub_26139F92C(), v29 != sub_26139F92C()))
      {
        v40 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v10 + 48))(v3 + v40, 1, v9);
        if (!result)
        {
          sub_26135E584(v3 + v40, v13);
          v17 = sub_2613A0AFC();
          v18 = v41;
          v19 = sub_2613A098C();
          goto LABEL_5;
        }
      }

      else
      {
        v30 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v10 + 48))(v3 + v30, 1, v9);
        if (!result)
        {
          sub_26135E584(v3 + v30, v13);
          v17 = sub_2613A0B9C();
          v18 = v31;
          v19 = sub_2613A09EC();
          goto LABEL_5;
        }
      }

      break;
    case 17:
      v32 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v10 + 48))(v3 + v32, 1, v9);
      if (!result)
      {
        sub_26135E584(v3 + v32, v13);
        v15 = sub_2613A0A4C();
LABEL_4:
        v17 = v15;
        v18 = v16;
        v19 = sub_2613A09AC();
LABEL_5:
        sub_2612DC2FC(v17, v18, v19, v20);

LABEL_6:

        result = sub_26137D340(v13, type metadata accessor for IdentityAnalyticsTransaction);
      }

      break;
    default:
      v35 = sub_26129B858();
      sub_26125A870(v35, v8, &qword_27FE9F560, &qword_2613A3CB0);
      v36 = sub_2613A124C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v8, 1, v36) == 1)
      {
        result = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v47 = sub_2613A122C();
        v48 = sub_2613A1D8C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v55[0] = v50;
          *v49 = 136315138;
          v51 = sub_26139F91C();
          v53 = sub_26124C11C(v51, v52, v55);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_261243000, v47, v48, "No analytics for UI event: [%s]", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v50);
          MEMORY[0x266701350](v50, -1, -1);
          MEMORY[0x266701350](v49, -1, -1);
        }

        result = (*(v37 + 8))(v8, v36);
      }

      break;
  }

  return result;
}

uint64_t sub_26137CAE0()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_26129B858();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_26125A798();
    v13 = sub_261291AA8();
    sub_26129BC3C(v12 & 1, v1, 0xD000000000000015, 0x80000002613BDEA0, v13, v14);

    (*(v11 + 8))(v8, v10);
  }

  v15 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v15, 1, v2);
  if (!result)
  {
    sub_26135E584(v1 + v15, v5);
    v17 = sub_2613A0A8C();
    sub_2612DC210(v17, v18);

    return sub_26137D340(v5, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137CDA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_26129B858();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v25 = v3;
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    v24 = v7;
    v3 = v25;
    sub_26129BC3C(v16 & 1, v25, 0xD000000000000017, 0x80000002613BDEC0, v17, v18);
    v7 = v24;

    (*(v15 + 8))(v12, v14);
  }

  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v7 + 48))(v3 + v19, 1, v6);
  if (!result)
  {
    sub_26135E584(v3 + v19, v9);
    v21 = sub_2613A0BCC();
    sub_2612DC2FC(v21, v22, a1, a2);

    return sub_26137D340(v9, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137D0C8()
{
  v2 = *(sub_26139F33C() - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26137A7EC(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_26137D1A8()
{
  v2 = *(sub_26139F33C() - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26137B6B8(v5, v6, v7, v4, v0 + 40, v0 + v3);
}

uint64_t sub_26137D284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26137D340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26137D3A0()
{
  v1 = *v0;
  sub_2613A256C();
  MEMORY[0x2667009F0](v1 + 1);
  return sub_2613A25CC();
}

uint64_t sub_26137D418(uint64_t a1)
{
  v2 = *v1;
  sub_2613A256C();
  MEMORY[0x2667009F0](v2 + 1);
  return sub_2613A25CC();
}

uint64_t sub_26137D45C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261390F80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26137D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_26137D500(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_26137D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B0, &qword_2613AD828);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v18 - v14;
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask) = 0;
  sub_2613A14FC();
  *(v4 + 112) = sub_2613A149C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v19 = v15;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_2613A1C7C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events, v12, v9);
  sub_261375F68(v15, v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, &qword_27FEA08B8, &qword_2613AD830);
  return v4;
}

uint64_t sub_26137D7C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_26124C718(v3, &qword_27FEA08B8, &qword_2613AD830);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_26137D8A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  sub_26125A870(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, &v11 - v3, &qword_27FEA08B8, &qword_2613AD830);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FEA08B8, &qword_2613AD830);
  }

  else
  {
    sub_2613A1C3C();
    (*(v7 + 8))(v4, v6);
  }

  sub_26124C718(v1 + v5, &qword_27FEA08B8, &qword_2613AD830);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_26137DA78@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a3;
  v141 = sub_26139F33C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v143 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v152 = &v133 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v133 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v133 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v133 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v162 = &v133 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v165 = &v133 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v133 - v26;
  MEMORY[0x28223BE20](v25);
  v160 = &v133 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v142 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v151 = &v133 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v153 = &v133 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v145 = &v133 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v147 = &v133 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v155 = &v133 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v149 = &v133 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v161 = &v133 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v164 = &v133 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v157 = &v133 - v48;
  MEMORY[0x28223BE20](v47);
  v159 = &v133 - v49;
  v50 = sub_26139F30C();
  v171 = *(v50 - 8);
  v172 = v50;
  MEMORY[0x28223BE20](v50);
  v170 = &v133 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2613A14DC();
  v166 = *(v52 - 8);
  v167 = v52;
  MEMORY[0x28223BE20](v52);
  v54 = &v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v144 = &v133 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v133 - v58;
  v60 = sub_2613A14AC();
  MEMORY[0x28223BE20](v60);
  v168 = a1;
  sub_2613A14CC();
  v61 = sub_2613A195C();
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v64 = 4 * v63;
    while (sub_2613A1ACC() != 40 || v65 != 0xE100000000000000)
    {
      v66 = sub_2613A241C();

      if ((v66 & 1) != 0 || v64 == sub_2613A19FC() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v67 = sub_2613A1AEC();
  v69 = v68;
  v163 = v70;
  v72 = v71;

  v138 = sub_26129BA7C();
  sub_26125A870(v138, v59, &qword_27FE9F560, &qword_2613A3CB0);
  v73 = sub_2613A124C();
  v74 = *(v73 - 8);
  v137 = *(v74 + 48);
  if (v137(v59, 1, v73) == 1)
  {

    sub_26124C718(v59, &qword_27FE9F560, &qword_2613A3CB0);
    v76 = v171;
    v75 = v172;
    v77 = v170;
    v78 = v168;
  }

  else
  {
    v136 = v74;

    v79 = sub_2613A122C();
    v80 = sub_2613A1D8C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v134 = v73;
      v82 = v81;
      v83 = swift_slowAlloc();
      v135 = a2;
      v84 = v83;
      v173 = v83;
      *v82 = 136315138;
      v85 = MEMORY[0x2666FFE20](v67, v69, v163, v72);
      v87 = v86;

      v88 = sub_26124C11C(v85, v87, &v173);

      *(v82 + 4) = v88;
      _os_log_impl(&dword_261243000, v79, v80, "Identity session error: [ %s ]", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      v89 = v84;
      a2 = v135;
      MEMORY[0x266701350](v89, -1, -1);
      v90 = v82;
      v73 = v134;
      MEMORY[0x266701350](v90, -1, -1);
    }

    else
    {
    }

    v76 = v171;
    v75 = v172;
    v77 = v170;
    v78 = v168;
    v74 = v136;
    (*(v136 + 8))(v59, v73);
  }

  (*(v166 + 16))(v54, v78, v167);
  sub_26139F34C();
  sub_26139F32C();
  result = (*(v76 + 88))(v77, v75);
  if (result == *MEMORY[0x277D436C8])
  {
    return (*(v76 + 8))(v77, v75);
  }

  if (result == *MEMORY[0x277D436D0])
  {
    v92 = v165;
    sub_26125A870(a2, v165, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v164;
LABEL_29:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v97 - 8) + 56))(v96, v95, 1, v97);
      v98 = v96;
      return sub_26124C718(v98, &qword_27FEA0908, &qword_2613AD998);
    }

    v173 = 14;
    v96 = v164;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43638])
  {
    return result;
  }

  if (result == *MEMORY[0x277D436D8])
  {
    v92 = v162;
    sub_26125A870(a2, v162, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v161;
      goto LABEL_29;
    }

    v173 = 8;
    v96 = v161;
LABEL_28:
    sub_2613A1C2C();
    (*(v94 + 8))(v92, v93);
    v95 = 0;
    goto LABEL_29;
  }

  if (result == *MEMORY[0x277D43630] || result == *MEMORY[0x277D43670])
  {
    goto LABEL_59;
  }

  if (result == *MEMORY[0x277D43680])
  {
    v92 = v158;
    sub_26125A870(a2, v158, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v157;
      goto LABEL_29;
    }

    v173 = 7;
    v96 = v157;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43658] || result == *MEMORY[0x277D43640])
  {
LABEL_59:
    v92 = v160;
    sub_26125A870(a2, v160, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v159;
      goto LABEL_29;
    }

    v173 = 9;
    v96 = v159;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43648])
  {
    v92 = v156;
    sub_26125A870(a2, v156, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v155;
      goto LABEL_29;
    }

    v173 = 11;
    v96 = v155;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43650])
  {
    v92 = v154;
    sub_26125A870(a2, v154, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v153;
      goto LABEL_29;
    }

    v173 = 12;
    v96 = v153;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D436B8])
  {
    v92 = v152;
    sub_26125A870(a2, v152, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v151;
      goto LABEL_29;
    }

    v173 = 13;
    v96 = v151;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43698])
  {
    v92 = v150;
    sub_26125A870(a2, v150, &qword_27FEA08B8, &qword_2613AD830);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) == 1)
    {
      sub_26124C718(v92, &qword_27FEA08B8, &qword_2613AD830);
      v95 = 1;
      v96 = v149;
      goto LABEL_29;
    }

    v173 = 10;
    v96 = v149;
    goto LABEL_28;
  }

  if (result != *MEMORY[0x277D436C0] && result != *MEMORY[0x277D43688])
  {
    if (result == *MEMORY[0x277D43660])
    {
      goto LABEL_59;
    }

    if (result != *MEMORY[0x277D43690])
    {
      v99 = a2;
      if (result == *MEMORY[0x277D43628])
      {
        v100 = v148;
        sub_26125A870(a2, v148, &qword_27FEA08B8, &qword_2613AD830);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
        v102 = *(v101 - 8);
        if ((*(v102 + 48))(v100, 1, v101) == 1)
        {
          sub_26124C718(v148, &qword_27FEA08B8, &qword_2613AD830);
          v103 = 1;
        }

        else
        {
          v173 = 15;
          v107 = v148;
          sub_2613A1C2C();
          (*(v102 + 8))(v107, v101);
          v103 = 0;
        }

        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
        v109 = *(*(v108 - 8) + 56);
        v110 = &v175;
LABEL_80:
        v113 = *(v110 - 32);
        v109(v113, v103, 1, v108);
        v98 = v113;
        return sub_26124C718(v98, &qword_27FEA0908, &qword_2613AD998);
      }

      if (result == *MEMORY[0x277D43668])
      {
        v104 = v146;
        sub_26125A870(a2, v146, &qword_27FEA08B8, &qword_2613AD830);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
        v106 = *(v105 - 8);
        if ((*(v106 + 48))(v104, 1, v105) == 1)
        {
          sub_26124C718(v146, &qword_27FEA08B8, &qword_2613AD830);
          v103 = 1;
        }

        else
        {
          v173 = 6;
          v112 = v146;
          sub_2613A1C2C();
          (*(v106 + 8))(v112, v105);
          v103 = 0;
        }

        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
        v109 = *(*(v108 - 8) + 56);
        v110 = &v174;
        goto LABEL_80;
      }

      if (result == *MEMORY[0x277D43678] || result == *MEMORY[0x277D436A0] || result == *MEMORY[0x277D436A8] || result == *MEMORY[0x277D436B0])
      {
        goto LABEL_59;
      }

      v111 = v144;
      sub_26125A870(v138, v144, &qword_27FE9F560, &qword_2613A3CB0);
      if (v137(v111, 1, v73) == 1)
      {
        sub_26124C718(v144, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v114 = *(v140 + 16);
        v114(v139, v169, v141);
        v115 = sub_2613A122C();
        v116 = sub_2613A1D8C();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v168 = v117;
          v169 = swift_slowAlloc();
          *v117 = 138412290;
          sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
          v118 = v141;
          swift_allocError();
          v119 = v139;
          v114(v120, v139, v118);
          v121 = _swift_stdlib_bridgeErrorToNSError();
          (*(v140 + 8))(v119, v118);
          v122 = v168;
          v123 = v169;
          *(v168 + 1) = v121;
          *v123 = v121;
          v124 = v116;
          v125 = v122;
          _os_log_impl(&dword_261243000, v115, v124, "Could not parse identity session error: [ %@ ]", v122, 0xCu);
          sub_26124C718(v123, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v123, -1, -1);
          MEMORY[0x266701350](v125, -1, -1);
        }

        else
        {

          (*(v140 + 8))(v139, v141);
        }

        (*(v74 + 8))(v144, v73);
      }

      v126 = v143;
      sub_26125A870(v99, v143, &qword_27FEA08B8, &qword_2613AD830);
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v128 = *(v127 - 8);
      if ((*(v128 + 48))(v126, 1, v127) == 1)
      {
        sub_26124C718(v143, &qword_27FEA08B8, &qword_2613AD830);
        v129 = 1;
      }

      else
      {
        v173 = 9;
        v130 = v143;
        sub_2613A1C2C();
        (*(v128 + 8))(v130, v127);
        v129 = 0;
      }

      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      v132 = v142;
      (*(*(v131 - 8) + 56))(v142, v129, 1, v131);
      sub_26124C718(v132, &qword_27FEA0908, &qword_2613AD998);
      return (*(v171 + 8))(v170, v172);
    }
  }

  return result;
}

uint64_t sub_26137F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v5 = sub_26139F30C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_2613A1BFC();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_2613A14DC();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_26137F554;

  return sub_261387684((v3 + 2), a3);
}

uint64_t sub_26137F554()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_26137F77C;
  }

  else
  {
    v4 = sub_26137F680;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26137F680()
{

  v3 = *(v0 + 16);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_26137F77C()
{
  v1 = *(v0 + 216);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 216);
  if (v3)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 56);

    (*(v8 + 32))(v6, v5, v7);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26137DA78(v6, v9, v10);
    swift_willThrow();
    (*(v8 + 8))(v6, v7);
    v11 = *(v0 + 24);
LABEL_20:

    goto LABEL_23;
  }

  *(v0 + 32) = v4;
  v12 = v4;
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 144);

    v14 = sub_26129BA7C();
    sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v15 = sub_2613A124C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "Identity request was cancelled, returning error: .cancelled", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      v24 = *(v0 + 144);

      (*(v16 + 8))(v24, v15);
    }

    v25 = *(v0 + 112);
    sub_26125A870(*(v0 + 56), v25, &qword_27FEA08B8, &qword_2613AD830);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_26124C718(*(v0 + 112), &qword_27FEA08B8, &qword_2613AD830);
      v28 = 1;
    }

    else
    {
      v43 = *(v0 + 112);
      *(v0 + 48) = 16;
      sub_2613A1C2C();
      (*(v27 + 8))(v43, v26);
      v28 = 0;
    }

    v45 = *(v0 + 160);
    v44 = *(v0 + 168);
    v46 = *(v0 + 152);
    v47 = *(v0 + 128);
    v49 = *(v0 + 88);
    v48 = *(v0 + 96);
    v50 = *(v0 + 80);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v51 - 8) + 56))(v47, v28, 1, v51);
    sub_26124C718(v47, &qword_27FEA0908, &qword_2613AD998);
    (*(v49 + 104))(v48, *MEMORY[0x277D436D8], v50);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v45 + 8))(v44, v46);
    v11 = *(v0 + 32);
    goto LABEL_20;
  }

  v17 = *(v0 + 136);

  v18 = sub_26129BA7C();
  sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = *(v0 + 216);
    v30 = v29;
    v31 = sub_2613A122C();
    v32 = sub_2613A1D8C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 216);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v33;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_261243000, v31, v32, "Identity unexpected error: %@", v34, 0xCu);
      sub_26124C718(v35, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v35, -1, -1);
      MEMORY[0x266701350](v34, -1, -1);
    }

    v38 = *(v0 + 136);

    (*(v20 + 8))(v38, v19);
  }

  v39 = *(v0 + 104);
  sub_26125A870(*(v0 + 56), v39, &qword_27FEA08B8, &qword_2613AD830);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
    v42 = 1;
  }

  else
  {
    v52 = *(v0 + 104);
    *(v0 + 40) = 9;
    sub_2613A1C2C();
    (*(v41 + 8))(v52, v40);
    v42 = 0;
  }

  v53 = *(v0 + 216);
  v54 = *(v0 + 120);
  v56 = *(v0 + 88);
  v55 = *(v0 + 96);
  v57 = *(v0 + 80);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v58 - 8) + 56))(v54, v42, 1, v58);
  sub_26124C718(v54, &qword_27FEA0908, &qword_2613AD998);
  (*(v56 + 104))(v55, *MEMORY[0x277D436D0], v57);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();

LABEL_23:

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_261380094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a2;
  v11 = sub_26139F30C();
  v6[12] = v11;
  v6[13] = *(v11 - 8);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v12 = sub_2613A1BFC();
  v6[21] = v12;
  v6[22] = *(v12 - 8);
  v6[23] = swift_task_alloc();
  v13 = sub_2613A14DC();
  v6[24] = v13;
  v6[25] = *(v13 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[28] = v14;
  *v14 = v6;
  v14[1] = sub_26138034C;

  return sub_261387EB4((v6 + 2), a3, a4, v8, a6);
}

uint64_t sub_26138034C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_26138057C;
  }

  else
  {
    v4 = sub_261380478;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261380478()
{

  v3 = v0[3];
  v4 = v0[2];

  v1 = v0[1];

  return v1(v4, v3);
}

uint64_t sub_26138057C()
{
  v1 = *(v0 + 232);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 232);
  if (v3)
  {
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 64);

    (*(v8 + 32))(v6, v5, v7);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26137DA78(v6, v9, v10);
    swift_willThrow();
    (*(v8 + 8))(v6, v7);

LABEL_22:

    goto LABEL_23;
  }

  *(v0 + 40) = v4;
  v11 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = *(v0 + 152);

    v17 = sub_26129BA7C();
    sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      sub_26124C718(*(v0 + 152), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = *(v0 + 232);
      v29 = v28;
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 232);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = v32;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_261243000, v30, v31, "Identity unexpected error: %@", v33, 0xCu);
        sub_26124C718(v34, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v34, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      v37 = *(v0 + 152);

      (*(v19 + 8))(v37, v18);
    }

    v38 = *(v0 + 120);
    sub_26125A870(*(v0 + 64), v38, &qword_27FEA08B8, &qword_2613AD830);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_26124C718(*(v0 + 120), &qword_27FEA08B8, &qword_2613AD830);
      v41 = 1;
    }

    else
    {
      v51 = *(v0 + 120);
      *(v0 + 48) = 9;
      sub_2613A1C2C();
      (*(v40 + 8))(v51, v39);
      v41 = 0;
    }

    v52 = *(v0 + 232);
    v53 = *(v0 + 136);
    v55 = *(v0 + 104);
    v54 = *(v0 + 112);
    v56 = *(v0 + 96);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v57 - 8) + 56))(v53, v41, 1, v57);
    sub_26124C718(v53, &qword_27FEA0908, &qword_2613AD998);
    (*(v55 + 104))(v54, *MEMORY[0x277D436D0], v56);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();

    goto LABEL_22;
  }

  v12 = *(v0 + 160);

  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(*(v0 + 160), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v20 = sub_2613A122C();
    v21 = sub_2613A1D8C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Identity request was cancelled, returning error: .cancelled", v22, 2u);
      MEMORY[0x266701350](v22, -1, -1);
    }

    v23 = *(v0 + 160);

    (*(v15 + 8))(v23, v14);
  }

  v24 = *(v0 + 128);
  sub_26125A870(*(v0 + 64), v24, &qword_27FEA08B8, &qword_2613AD830);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_26124C718(*(v0 + 128), &qword_27FEA08B8, &qword_2613AD830);
    v27 = 1;
  }

  else
  {
    v42 = *(v0 + 128);
    *(v0 + 56) = 16;
    sub_2613A1C2C();
    (*(v26 + 8))(v42, v25);
    v27 = 0;
  }

  v44 = *(v0 + 176);
  v43 = *(v0 + 184);
  v45 = *(v0 + 168);
  v46 = *(v0 + 144);
  v47 = *(v0 + 104);
  v48 = *(v0 + 112);
  v49 = *(v0 + 96);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v50 - 8) + 56))(v46, v27, 1, v50);
  sub_26124C718(v46, &qword_27FEA0908, &qword_2613AD998);
  (*(v47 + 104))(v48, *MEMORY[0x277D436D8], v49);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v44 + 8))(v43, v45);

LABEL_23:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_261380EB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v6[6] = a2;
  v6[7] = v3;
  v8 = sub_26139F30C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = sub_2613A1BFC();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v10 = sub_2613A14DC();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v13 = (a3 + *a3);
  v11 = swift_task_alloc();
  v6[24] = v11;
  *v11 = v6;
  v11[1] = sub_2613811B4;

  return v13(a1);
}

uint64_t sub_2613811B4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_261381380, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_261381380()
{
  v1 = *(v0 + 200);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  if (v3)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 48);

    (*(v8 + 32))(v5, v6, v7);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26137DA78(v5, v9, v10);
    swift_willThrow();
    (*(v8 + 8))(v5, v7);
    v11 = *(v0 + 16);
  }

  else
  {

    *(v0 + 24) = v4;
    v12 = v4;
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 128);

      v14 = sub_26129BA7C();
      sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v15 = sub_2613A124C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v13, 1, v15) == 1)
      {
        sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v21 = sub_2613A122C();
        v22 = sub_2613A1D8C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_261243000, v21, v22, "Identity request was cancelled, returning error: .cancelled", v23, 2u);
          MEMORY[0x266701350](v23, -1, -1);
        }

        v24 = *(v0 + 128);

        (*(v16 + 8))(v24, v15);
      }

      v25 = *(v0 + 96);
      sub_26125A870(*(v0 + 48), v25, &qword_27FEA08B8, &qword_2613AD830);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26) == 1)
      {
        sub_26124C718(*(v0 + 96), &qword_27FEA08B8, &qword_2613AD830);
        v28 = 1;
      }

      else
      {
        v43 = *(v0 + 96);
        *(v0 + 40) = 16;
        sub_2613A1C2C();
        (*(v27 + 8))(v43, v26);
        v28 = 0;
      }

      v45 = *(v0 + 144);
      v44 = *(v0 + 152);
      v46 = *(v0 + 136);
      v47 = *(v0 + 112);
      v49 = *(v0 + 72);
      v48 = *(v0 + 80);
      v50 = *(v0 + 64);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v51 - 8) + 56))(v47, v28, 1, v51);
      sub_26124C718(v47, &qword_27FEA0908, &qword_2613AD998);
      (*(v49 + 104))(v48, *MEMORY[0x277D436D8], v50);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      (*(v45 + 8))(v44, v46);
      v11 = *(v0 + 24);
    }

    else
    {
      v17 = *(v0 + 120);

      v18 = sub_26129BA7C();
      sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_26124C718(*(v0 + 120), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v29 = *(v0 + 200);
        v30 = v29;
        v31 = sub_2613A122C();
        v32 = sub_2613A1D8C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = *(v0 + 200);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v33;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_261243000, v31, v32, "Identity unexpected error: %@", v34, 0xCu);
          sub_26124C718(v35, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v35, -1, -1);
          MEMORY[0x266701350](v34, -1, -1);
        }

        v38 = *(v0 + 120);

        (*(v20 + 8))(v38, v19);
      }

      v39 = *(v0 + 88);
      sub_26125A870(*(v0 + 48), v39, &qword_27FEA08B8, &qword_2613AD830);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) == 1)
      {
        sub_26124C718(*(v0 + 88), &qword_27FEA08B8, &qword_2613AD830);
        v42 = 1;
      }

      else
      {
        v52 = *(v0 + 88);
        *(v0 + 32) = 9;
        sub_2613A1C2C();
        (*(v41 + 8))(v52, v40);
        v42 = 0;
      }

      v53 = *(v0 + 200);
      v54 = *(v0 + 104);
      v56 = *(v0 + 72);
      v55 = *(v0 + 80);
      v57 = *(v0 + 64);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v58 - 8) + 56))(v54, v42, 1, v58);
      sub_26124C718(v54, &qword_27FEA0908, &qword_2613AD998);
      (*(v56 + 104))(v55, *MEMORY[0x277D436D0], v57);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      v11 = v53;
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_261381C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[8] = a4;
  v10[9] = a6;
  v10[6] = a2;
  v10[7] = a3;
  v12 = sub_26139F30C();
  v10[10] = v12;
  v10[11] = *(v12 - 8);
  v10[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v10[13] = swift_task_alloc();
  v10[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v10[15] = swift_task_alloc();
  v10[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10[17] = swift_task_alloc();
  v10[18] = swift_task_alloc();
  v13 = sub_2613A1BFC();
  v10[19] = v13;
  v10[20] = *(v13 - 8);
  v10[21] = swift_task_alloc();
  v14 = sub_2613A14DC();
  v10[22] = v14;
  v10[23] = *(v14 - 8);
  v10[24] = swift_task_alloc();
  v10[25] = swift_task_alloc();
  v15 = swift_task_alloc();
  v10[26] = v15;
  *v15 = v10;
  v15[1] = sub_261381F3C;

  return sub_261389418(a1, a4, a5, a6);
}

uint64_t sub_261381F3C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_261382160;
  }

  else
  {
    v4 = sub_261382068;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261382068()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261382160()
{
  v1 = *(v0 + 216);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 216);
  if (v3)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 48);

    (*(v8 + 32))(v6, v5, v7);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26137DA78(v6, v9, v10);
    swift_willThrow();
    (*(v8 + 8))(v6, v7);

LABEL_22:

    goto LABEL_23;
  }

  *(v0 + 24) = v4;
  v11 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = *(v0 + 136);

    v17 = sub_26129BA7C();
    sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = *(v0 + 216);
      v29 = v28;
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 216);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = v32;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_261243000, v30, v31, "Identity unexpected error: %@", v33, 0xCu);
        sub_26124C718(v34, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v34, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      v37 = *(v0 + 136);

      (*(v19 + 8))(v37, v18);
    }

    v38 = *(v0 + 104);
    sub_26125A870(*(v0 + 48), v38, &qword_27FEA08B8, &qword_2613AD830);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
      v41 = 1;
    }

    else
    {
      v51 = *(v0 + 104);
      *(v0 + 32) = 9;
      sub_2613A1C2C();
      (*(v40 + 8))(v51, v39);
      v41 = 0;
    }

    v52 = *(v0 + 216);
    v53 = *(v0 + 120);
    v55 = *(v0 + 88);
    v54 = *(v0 + 96);
    v56 = *(v0 + 80);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v57 - 8) + 56))(v53, v41, 1, v57);
    sub_26124C718(v53, &qword_27FEA0908, &qword_2613AD998);
    (*(v55 + 104))(v54, *MEMORY[0x277D436D0], v56);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();

    goto LABEL_22;
  }

  v12 = *(v0 + 144);

  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v20 = sub_2613A122C();
    v21 = sub_2613A1D8C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Identity request was cancelled, returning error: .cancelled", v22, 2u);
      MEMORY[0x266701350](v22, -1, -1);
    }

    v23 = *(v0 + 144);

    (*(v15 + 8))(v23, v14);
  }

  v24 = *(v0 + 112);
  sub_26125A870(*(v0 + 48), v24, &qword_27FEA08B8, &qword_2613AD830);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FEA08B8, &qword_2613AD830);
    v27 = 1;
  }

  else
  {
    v42 = *(v0 + 112);
    *(v0 + 40) = 16;
    sub_2613A1C2C();
    (*(v26 + 8))(v42, v25);
    v27 = 0;
  }

  v44 = *(v0 + 160);
  v43 = *(v0 + 168);
  v45 = *(v0 + 152);
  v46 = *(v0 + 128);
  v47 = *(v0 + 88);
  v48 = *(v0 + 96);
  v49 = *(v0 + 80);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v50 - 8) + 56))(v46, v27, 1, v50);
  sub_26124C718(v46, &qword_27FEA0908, &qword_2613AD998);
  (*(v47 + 104))(v48, *MEMORY[0x277D436D8], v49);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v44 + 8))(v43, v45);

LABEL_23:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_261382A9C(uint64_t a1, int *a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = sub_26139F30C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_2613A1BFC();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_2613A14DC();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v3[25] = v8;
  *v8 = v3;
  v8[1] = sub_261382D8C;

  return v10(v3 + 2);
}

uint64_t sub_261382D8C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_2613913AC;
  }

  else
  {
    v4 = sub_2613913A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261382EB8(uint64_t a1, int *a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = sub_26139F30C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_2613A1BFC();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_2613A14DC();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v3[25] = v8;
  *v8 = v3;
  v8[1] = sub_2613831A8;

  return v10(v3 + 2);
}

uint64_t sub_2613831A8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_2613833C0;
  }

  else
  {
    v4 = sub_2613832D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2613832D4()
{
  v3 = *(v0 + 16);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_2613833C0()
{
  v1 = *(v0 + 208);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 208);
  if (v3)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 56);

    (*(v8 + 32))(v5, v6, v7);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26137DA78(v5, v9, v10);
    swift_willThrow();
    (*(v8 + 8))(v5, v7);
    v11 = *(v0 + 24);
  }

  else
  {

    *(v0 + 32) = v4;
    v12 = v4;
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 136);

      v14 = sub_26129BA7C();
      sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v15 = sub_2613A124C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v13, 1, v15) == 1)
      {
        sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v21 = sub_2613A122C();
        v22 = sub_2613A1D8C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_261243000, v21, v22, "Identity request was cancelled, returning error: .cancelled", v23, 2u);
          MEMORY[0x266701350](v23, -1, -1);
        }

        v24 = *(v0 + 136);

        (*(v16 + 8))(v24, v15);
      }

      v25 = *(v0 + 104);
      sub_26125A870(*(v0 + 56), v25, &qword_27FEA08B8, &qword_2613AD830);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26) == 1)
      {
        sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
        v28 = 1;
      }

      else
      {
        v43 = *(v0 + 104);
        *(v0 + 48) = 16;
        sub_2613A1C2C();
        (*(v27 + 8))(v43, v26);
        v28 = 0;
      }

      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 144);
      v47 = *(v0 + 120);
      v49 = *(v0 + 80);
      v48 = *(v0 + 88);
      v50 = *(v0 + 72);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v51 - 8) + 56))(v47, v28, 1, v51);
      sub_26124C718(v47, &qword_27FEA0908, &qword_2613AD998);
      (*(v49 + 104))(v48, *MEMORY[0x277D436D8], v50);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      (*(v45 + 8))(v44, v46);
      v11 = *(v0 + 32);
    }

    else
    {
      v17 = *(v0 + 128);

      v18 = sub_26129BA7C();
      sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v29 = *(v0 + 208);
        v30 = v29;
        v31 = sub_2613A122C();
        v32 = sub_2613A1D8C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = *(v0 + 208);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v33;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_261243000, v31, v32, "Identity unexpected error: %@", v34, 0xCu);
          sub_26124C718(v35, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v35, -1, -1);
          MEMORY[0x266701350](v34, -1, -1);
        }

        v38 = *(v0 + 128);

        (*(v20 + 8))(v38, v19);
      }

      v39 = *(v0 + 96);
      sub_26125A870(*(v0 + 56), v39, &qword_27FEA08B8, &qword_2613AD830);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) == 1)
      {
        sub_26124C718(*(v0 + 96), &qword_27FEA08B8, &qword_2613AD830);
        v42 = 1;
      }

      else
      {
        v52 = *(v0 + 96);
        *(v0 + 40) = 9;
        sub_2613A1C2C();
        (*(v41 + 8))(v52, v40);
        v42 = 0;
      }

      v53 = *(v0 + 208);
      v54 = *(v0 + 112);
      v56 = *(v0 + 80);
      v55 = *(v0 + 88);
      v57 = *(v0 + 72);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v58 - 8) + 56))(v54, v42, 1, v58);
      sub_26124C718(v54, &qword_27FEA0908, &qword_2613AD998);
      (*(v56 + 104))(v55, *MEMORY[0x277D436D0], v57);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      v11 = v53;
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_261383CC4()
{
  v1[2] = v0;
  v2 = sub_2613A15EC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261383DBC, v0, 0);
}

uint64_t sub_261383DBC()
{
  type metadata accessor for Mock();
  v1 = sub_26129B284(17);
  v2 = v1 - 1;
  if ((v1 - 1) > 3)
  {

    v15 = v0[1];

    return v15();
  }

  else
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = sub_2613A1C1C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v2;
    *(v7 + 40) = v6;
    v8 = sub_2613850A0(0, 0, v3, &unk_2613AD9B8, v7);
    v9 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
    v0[7] = v8;
    v0[8] = v9;
    *(v4 + v9) = v8;

    v10 = swift_task_alloc();
    v0[9] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    *v10 = v0;
    v10[1] = sub_261383FC4;
    v12 = v0[5];
    v13 = v0[3];
    v14 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v12, v8, v13, v11, v14);
  }
}

uint64_t sub_261383FC4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2613841A0;
  }

  else
  {
    v4 = sub_2613840F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2613840F0()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);
  *(v5 + v1) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_2613841A0()
{
  v1 = v0[8];
  v2 = v0[2];

  *(v2 + v1) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_261384230(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 58) = a4;
  v6 = sub_2613A14AC();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_2613A21CC();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v8 = sub_2613A21DC();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  *(v5 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261384460, 0, 0);
}

uint64_t sub_261384460()
{
  v1 = *(v0 + 58);
  if (v1 >= 3)
  {
    LOBYTE(v1) = 3;
  }

  *(v0 + 59) = v1;
  swift_beginAccess();
  *(v0 + 200) = 0;
  sub_2613A1CEC();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = *(v0 + 176);
  sub_26125A870(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v3, &qword_27FEA08B8, &qword_2613AD830);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26124C718(*(v0 + 176), &qword_27FEA08B8, &qword_2613AD830);
LABEL_6:
    v6 = 1;
    goto LABEL_8;
  }

  v7 = *(v0 + 176);
  *(v0 + 80) = 0;
  sub_2613A1C2C();
  (*(v5 + 8))(v7, v4);
  v6 = 0;
LABEL_8:
  v8 = *(v0 + 184);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v12 - 8) + 56))(v8, v6, 1, v12);
  sub_26124C718(v8, &qword_27FEA0908, &qword_2613AD998);
  sub_2613A24CC();
  *(v0 + 64) = xmmword_2613AD810;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v13 = sub_2613912F8(&qword_27FE9FCB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2613A24AC();
  sub_2613912F8(&qword_27FE9FCB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2613A21EC();
  v14 = *(v10 + 8);
  *(v0 + 208) = v14;
  *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v11);
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_26138484C;
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);

  return MEMORY[0x2822008C8](v17, v0 + 40, v16, v13);
}

uint64_t sub_26138484C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    v3 = sub_261384FC4;
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = sub_2613849A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2613849A4(uint64_t a1)
{
  v37 = v1;
  v2 = *(v1 + 200);
  if (v2 == *(v1 + 59))
  {
    v3 = *(v1 + 192);
    swift_unknownObjectRelease();
    v4 = sub_26129BA7C();
    sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v5 = sub_2613A124C();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_26124C718(*(v1 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = sub_2613A122C();
      v11 = sub_2613A1D9C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v1 + 58);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v36 = v14;
        *v13 = 136315138;
        *(v1 + 57) = v12;
        v15 = sub_2613A195C();
        v17 = sub_26124C11C(v15, v16, &v36);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_261243000, v10, v11, ">>> Throwing SIMULATED error: [ .unknown ] at stage [ %s ] <<<", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x266701350](v14, -1, -1);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v6 + 8))(*(v1 + 192), v5);
    }

    (*(*(v1 + 104) + 104))(*(v1 + 112), *MEMORY[0x277CFEF68], *(v1 + 96));
    sub_2613A14DC();
    sub_2613912F8(&qword_27FEA0918, MEMORY[0x277CFEF78], MEMORY[0x277CFEF80]);
    swift_allocError();
    sub_2613A14BC();
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v2 + 1;
  v8 = *(v1 + 232);
  *(v1 + 200) = v7;
  v9 = qword_2873BE1E0[v7 + 4];
  sub_2613A1CEC();
  if (v8)
  {
    swift_unknownObjectRelease();
LABEL_10:

    v18 = *(v1 + 8);

    return v18();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(v1 + 176);
    sub_26125A870(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v21, &qword_27FEA08B8, &qword_2613AD830);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      v25 = *(v1 + 176);
      *(v1 + 80) = v9;
      sub_2613A1C2C();
      (*(v23 + 8))(v25, v22);
      v24 = 0;
      goto LABEL_18;
    }

    sub_26124C718(*(v1 + 176), &qword_27FEA08B8, &qword_2613AD830);
  }

  v24 = 1;
LABEL_18:
  v26 = *(v1 + 184);
  v28 = *(v1 + 128);
  v27 = *(v1 + 136);
  v29 = *(v1 + 120);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v30 - 8) + 56))(v26, v24, 1, v30);
  sub_26124C718(v26, &qword_27FEA0908, &qword_2613AD998);
  sub_2613A24CC();
  *(v1 + 64) = xmmword_2613AD810;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  v31 = sub_2613912F8(&qword_27FE9FCB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2613A24AC();
  sub_2613912F8(&qword_27FE9FCB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2613A21EC();
  v32 = *(v28 + 8);
  *(v1 + 208) = v32;
  *(v1 + 216) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v29);
  v33 = swift_task_alloc();
  *(v1 + 224) = v33;
  *v33 = v1;
  v33[1] = sub_26138484C;
  v35 = *(v1 + 144);
  v34 = *(v1 + 152);

  return MEMORY[0x2822008C8](v35, v1 + 40, v34, v31);
}

uint64_t sub_261384FC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2613850A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26125A870(a3, v22 - v9, &unk_27FE9F580, &qword_2613A5480);
  v11 = sub_2613A1C1C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26124C718(v10, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2613A1BCC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_2613A198C() + 32;
      sub_2613A15EC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

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

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  sub_2613A15EC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_261385358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139F30C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2613A164C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v8 = sub_2613A147C();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[18] = v10;
  *v10 = v4;
  v10[1] = sub_261385548;

  return sub_261383CC4();
}

uint64_t sub_261385548()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return MEMORY[0x2822009F8](sub_2613856AC, v6, 0);
  }
}

uint64_t sub_2613856AC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
  v0[19] = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
  if (*(v1 + v2))
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D43640], v0[6]);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[14];
    v8 = v0[12];
    v9 = v0[13];
    v25 = v9;
    v26 = v6;
    v27 = v8;
    v28 = v0[15];
    v10 = v0[10];
    v29 = v5;
    v11 = v0[9];
    v23 = v0[3];
    v24 = v0[4];
    v12 = sub_2613A1C1C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    (*(v7 + 16))(v6, v23, v9);
    (*(v10 + 16))(v8, v24, v11);
    v13 = sub_2613912F8(&qword_27FEA08E8, type metadata accessor for IdentityReaderAdapter, &unk_2613AD8D8);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = (v28 + *(v10 + 80) + v14) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = v1;
    *(v16 + 3) = v13;
    *(v16 + 4) = v1;
    (*(v7 + 32))(&v16[v14], v26, v25);
    (*(v10 + 32))(&v16[v15], v27, v11);
    swift_retain_n();
    v17 = sub_2613850A0(0, 0, v29, &unk_2613AD978, v16);
    v0[20] = v17;
    *(v1 + v2) = v17;

    v18 = swift_task_alloc();
    v0[21] = v18;
    v19 = sub_2613A15EC();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    *v18 = v0;
    v18[1] = sub_261385A64;
    v21 = v0[2];
    v22 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v21, v17, v19, v20, v22);
  }
}

uint64_t sub_261385A64()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_261385C40;
  }

  else
  {
    v4 = sub_261385B90;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261385B90()
{
  v1 = v0[19];
  v2 = v0[5];

  *(v2 + v1) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_261385C40()
{
  v1 = v0[19];
  v2 = v0[5];

  *(v2 + v1) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_261385CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v8 = sub_26139F30C();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_2613A164C();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = sub_2613A14EC();
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08F0, &qword_2613AD980);
  v6[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08F8, &qword_2613AD988);
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0900, &qword_2613AD990);
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138608C, a4, 0);
}

uint64_t sub_26138608C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  *(v0 + 320) = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  sub_26125A870(v2 + v3, v1, &qword_27FEA08B8, &qword_2613AD830);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  *(v0 + 328) = v4;
  v5 = *(v4 - 8);
  *(v0 + 336) = v5;
  v6 = *(v5 + 48);
  *(v0 + 344) = v6;
  *(v0 + 352) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v4) == 1)
  {
    v7 = *(v0 + 312);
    sub_26124C718(*(v0 + 280), &qword_27FEA08B8, &qword_2613AD830);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    *(v0 + 48) = 0;
    v9 = *(v0 + 312);
    v10 = *(v0 + 280);
    sub_2613A1C2C();
    (*(v5 + 8))(v10, v4);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  sub_26124C718(*(v0 + 312), &qword_27FEA0908, &qword_2613AD998);
  sub_2613A148C();
  sub_2613A1C4C();
  v12 = sub_2613912F8(&qword_27FEA08E8, type metadata accessor for IdentityReaderAdapter, &unk_2613AD8D8);
  *(v0 + 360) = v12;
  *(v0 + 376) = *MEMORY[0x277CFEFA0];
  *(v0 + 380) = *MEMORY[0x277CFEF98];
  *(v0 + 384) = *MEMORY[0x277CFEF88];
  *(v0 + 388) = *MEMORY[0x277CFEF90];
  *(v0 + 392) = *MEMORY[0x277CFF1A0];
  v13 = *(v0 + 64);
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_2613863A8;
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);

  return MEMORY[0x2822005A8](v15, v13, v12, v16, v0 + 16);
}

uint64_t sub_2613863A8()
{
  v2 = *v1;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_261387178;
  }

  else
  {
    v4 = sub_2613864BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2613864BC()
{
  v109 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 192);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v5 = sub_26129BA7C();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "Request document stream unexpectedly finished", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      v27 = *(v0 + 192);

      (*(v7 + 8))(v27, v6);
    }

    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v0 + 232);
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D436D0], *(v0 + 88));
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v29 + 8))(v28, v30);

    v23 = *(v0 + 8);
    goto LABEL_10;
  }

  v8 = *(v0 + 376);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  (*(v3 + 32))(v9, v1, v2);
  v11 = *(v3 + 16);
  v11(v10, v9, v2);
  v12 = (*(v3 + 88))(v10, v2);
  if (v12 == v8)
  {
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);
    v21 = *(v0 + 136);
    v102 = *(v0 + 56);
    (*(v20 + 8))();
    (*(v17 + 8))(v15, v18);
    (*(v14 + 8))(v13, v16);
    (*(v20 + 96))(v19, v21);
    v22 = sub_2613A15EC();
    (*(*(v22 - 8) + 32))(v102, v19, v22);

    v23 = *(v0 + 8);
LABEL_10:

    return v23();
  }

  if (v12 != *(v0 + 380))
  {
    if (v12 == *(v0 + 384))
    {
      v41 = *(v0 + 344);
      v43 = *(v0 + 320);
      v42 = *(v0 + 328);
      v44 = *(v0 + 264);
      v46 = *(v0 + 120);
      v45 = *(v0 + 128);
      v47 = *(v0 + 112);
      v48 = *(v0 + 64);
      (*(v46 + 104))(v45, *(v0 + 392), v47);
      v49 = sub_2613A163C();
      (*(v46 + 8))(v45, v47);
      sub_26125A870(v48 + v43, v44, &qword_27FEA08B8, &qword_2613AD830);
      if (v41(v44, 1, v42) == 1)
      {
        v50 = *(v0 + 264);
        (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
        sub_26124C718(v50, &qword_27FEA08B8, &qword_2613AD830);
        v40 = 1;
        v51 = *(v0 + 296);
      }

      else
      {
        v62 = *(v0 + 328);
        v63 = *(v0 + 336);
        v64 = *(v0 + 264);
        v65 = *(v0 + 176);
        v66 = *(v0 + 136);
        v67 = *(v0 + 144);
        v68 = 2;
        if ((v49 & 1) == 0)
        {
          v68 = 3;
        }

        *(v0 + 32) = v68;
        sub_2613A1C2C();
        (*(v67 + 8))(v65, v66);
        (*(v63 + 8))(v64, v62);
        v40 = 0;
        v51 = *(v0 + 296);
      }
    }

    else
    {
      if (v12 != *(v0 + 388))
      {
        v69 = *(v0 + 184);
        v70 = sub_26129BA7C();
        sub_26125A870(v70, v69, &qword_27FE9F560, &qword_2613A3CB0);
        v71 = sub_2613A124C();
        v72 = *(v71 - 8);
        v73 = (*(v72 + 48))(v69, 1, v71);
        v74 = *(v0 + 184);
        if (v73 == 1)
        {
          v75 = *(*(v0 + 144) + 8);
          v75(*(v0 + 176), *(v0 + 136));
          sub_26124C718(v74, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v11(*(v0 + 160), *(v0 + 176), *(v0 + 136));
          v88 = sub_2613A122C();
          v89 = sub_2613A1D8C();
          v90 = os_log_type_enabled(v88, v89);
          v91 = *(v0 + 176);
          v92 = *(v0 + 160);
          if (v90)
          {
            v107 = *(v0 + 176);
            v93 = *(v0 + 152);
            v104 = *(v0 + 144);
            v106 = v89;
            v94 = *(v0 + 136);
            v95 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v108 = v105;
            *v95 = 136315138;
            v11(v93, v92, v94);
            v96 = sub_2613A195C();
            log = v88;
            v98 = v97;
            v75 = *(v104 + 8);
            v75(v92, v94);
            v99 = sub_26124C11C(v96, v98, &v108);

            *(v95 + 4) = v99;
            _os_log_impl(&dword_261243000, log, v106, "Unexpected read event: %s", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v105);
            MEMORY[0x266701350](v105, -1, -1);
            MEMORY[0x266701350](v95, -1, -1);

            v75(v107, v94);
          }

          else
          {
            v100 = *(v0 + 136);
            v101 = *(v0 + 144);

            v75 = *(v101 + 8);
            v75(v92, v100);
            v75(v91, v100);
          }

          (*(v72 + 8))(*(v0 + 184), v71);
        }

        v75(*(v0 + 168), *(v0 + 136));
        goto LABEL_34;
      }

      v52 = *(v0 + 344);
      v53 = *(v0 + 328);
      v54 = *(v0 + 256);
      sub_26125A870(*(v0 + 64) + *(v0 + 320), v54, &qword_27FEA08B8, &qword_2613AD830);
      if (v52(v54, 1, v53) == 1)
      {
        v55 = *(v0 + 256);
        (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
        sub_26124C718(v55, &qword_27FEA08B8, &qword_2613AD830);
        v40 = 1;
      }

      else
      {
        v76 = *(v0 + 328);
        v77 = *(v0 + 336);
        v78 = *(v0 + 256);
        v79 = *(v0 + 176);
        v80 = *(v0 + 136);
        v81 = *(v0 + 144);
        *(v0 + 24) = 4;
        sub_2613A1C2C();
        (*(v81 + 8))(v79, v80);
        (*(v77 + 8))(v78, v76);
        v40 = 0;
      }

      v51 = *(v0 + 288);
    }

    goto LABEL_33;
  }

  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v34 = *(v0 + 112);
  (*(v33 + 104))(v32, *(v0 + 392), v34);
  v35 = sub_2613A163C();
  (*(v33 + 8))(v32, v34);
  if (v35)
  {
    v36 = *(v0 + 344);
    v37 = *(v0 + 328);
    v38 = *(v0 + 272);
    sub_26125A870(*(v0 + 64) + *(v0 + 320), v38, &qword_27FEA08B8, &qword_2613AD830);
    if (v36(v38, 1, v37) == 1)
    {
      v39 = *(v0 + 272);
      (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
      sub_26124C718(v39, &qword_27FEA08B8, &qword_2613AD830);
      v40 = 1;
    }

    else
    {
      v56 = *(v0 + 328);
      v57 = *(v0 + 336);
      v58 = *(v0 + 272);
      v59 = *(v0 + 176);
      v60 = *(v0 + 136);
      v61 = *(v0 + 144);
      *(v0 + 40) = 1;
      sub_2613A1C2C();
      (*(v61 + 8))(v59, v60);
      (*(v57 + 8))(v58, v56);
      v40 = 0;
    }

    v51 = *(v0 + 304);
LABEL_33:
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v82 - 8) + 56))(v51, v40, 1, v82);
    sub_26124C718(v51, &qword_27FEA0908, &qword_2613AD998);
    goto LABEL_34;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
LABEL_34:
  v83 = *(v0 + 360);
  v84 = *(v0 + 64);
  v85 = swift_task_alloc();
  *(v0 + 368) = v85;
  *v85 = v0;
  v85[1] = sub_2613863A8;
  v86 = *(v0 + 200);
  v87 = *(v0 + 208);

  return MEMORY[0x2822005A8](v86, v84, v83, v87, v0 + 16);
}

uint64_t sub_261387178()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_261387308()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613873A4, v0, 0);
}

uint64_t sub_2613873A4()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261387498;
  v4 = v0[2];
  v5 = v0[3];

  return sub_26137F2C4(v5, v4, v4);
}

uint64_t sub_261387498(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  if (v1)
  {
    v5 = v4[2];
    sub_26124C718(v4[3], &qword_27FEA08B8, &qword_2613AD830);

    return MEMORY[0x2822009F8](sub_261387620, v5, 0);
  }

  else
  {
    sub_26124C718(v4[3], &qword_27FEA08B8, &qword_2613AD830);

    v6 = v4[1];

    return v6(a1);
  }
}

uint64_t sub_261387620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261387684(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261387724, a2, 0);
}

uint64_t sub_261387724()
{
  v3 = (*MEMORY[0x277CFEEC0] + MEMORY[0x277CFEEC0]);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2613877CC;

  return v3();
}

uint64_t sub_2613877CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[7];

    return MEMORY[0x2822009F8](sub_261387920, v8, 0);
  }
}

uint64_t sub_261387920()
{
  v1 = v0[8];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "Mapping IDV configuration response", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[8];

    (*(v4 + 8))(v8, v3);
  }

  v9 = v0[6];
  v10 = objc_allocWithZone(sub_2613A001C());
  *v9 = sub_2613A000C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_261387AEC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261387B90, v3, 0);
}

uint64_t sub_261387B90()
{
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_261387CA0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_261380094(v5, v4, v7, v8, v6, v4);
}

uint64_t sub_261387CA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  v6[7] = v2;

  v8 = v6[5];
  if (v2)
  {
    v9 = v6[4];
    sub_26124C718(v8, &qword_27FEA08B8, &qword_2613AD830);

    return MEMORY[0x2822009F8](sub_261387E50, v9, 0);
  }

  else
  {
    sub_26124C718(v8, &qword_27FEA08B8, &qword_2613AD830);

    v10 = v7[1];

    return v10(a1, a2);
  }
}

uint64_t sub_261387E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261387EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_2613A166C();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v8 = sub_2613A162C();
  *(v5 + 88) = v8;
  *(v5 + 96) = *(v8 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388020, a5, 0);
}

uint64_t sub_261388020()
{
  v1 = v0[10];

  sub_2613A161C();
  v2 = sub_26129BA7C();
  v0[14] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[15] = v3;
  v4 = *(v3 - 8);
  v0[16] = v4;
  v5 = *(v4 + 48);
  v0[17] = v5;
  v0[18] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Performing IDV prepare request", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[10];

    (*(v4 + 8))(v9, v3);
  }

  v14 = (*MEMORY[0x277CFEFA8] + MEMORY[0x277CFEFA8]);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26138824C;
  v11 = v0[13];
  v12 = v0[8];

  return v14(v12, v11);
}

uint64_t sub_26138824C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_261388578;
  }

  else
  {
    v4 = sub_261388378;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261388378()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v23 = sub_2613A165C();
  v9 = v8;
  (*(v6 + 8))(v4, v7);
  sub_26125A870(v3, v5, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v5, 1, v2) == 1)
  {
    v10 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Mapping IDV prepare response", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    v19 = v0[9];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v19, v15);
  }

  v20 = v0[2];
  *v20 = v23;
  v20[1] = v9;

  v21 = v0[1];

  return v21();
}

uint64_t sub_261388578()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26138861C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v2[4] = swift_task_alloc();
  v3 = sub_26139F64C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388714, v1, 0);
}

uint64_t sub_261388714()
{
  v2 = v0[3].i64[0];
  v1 = v0[3].i64[1];
  v4 = v0[2].i64[0];
  v3 = v0[2].i64[1];
  v11 = v0[1];
  sub_26139F53C();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  v0[4].i64[0] = v5;
  v0[4].i64[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[5].i64[0] = v7;
  v7[1] = vextq_s8(v11, v11, 8uLL);
  v8 = swift_task_alloc();
  v0[5].i64[1] = v8;
  *v8 = v0;
  v8[1] = sub_261388874;
  v9 = v0[2].i64[0];

  return sub_261380EB8(v8, v9, dword_2613ADA00);
}

uint64_t sub_261388874()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  sub_26124C718(v3, &qword_27FEA08B8, &qword_2613AD830);

  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_261388A90;
  }

  else
  {
    v5 = sub_2613889F0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2613889F0()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  sub_26139F53C();
  sub_26139F5BC();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_261388A90()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  sub_26139F53C();
  sub_26139F5BC();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_261388B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388BDC, a2, 0);
}

uint64_t sub_261388BDC()
{
  v1 = v0[5];
  v2 = sub_26129BA7C();
  v0[6] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  v5 = *(v4 + 48);
  v0[9] = v5;
  v0[10] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Running IDV pre-flight checks", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[5];

    (*(v4 + 8))(v9, v3);
  }

  v13 = (*MEMORY[0x277CFEEB8] + MEMORY[0x277CFEEB8]);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_261388DDC;
  v11 = v0[3];

  return v13(v11);
}

uint64_t sub_261388DDC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_261388F30, v6, 0);
  }
}

uint64_t sub_261388F30()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  sub_26125A870(v0[6], v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v4 = sub_2613A122C();
    v5 = sub_2613A1D9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261243000, v4, v5, "IDV pre-flight checks passed", v6, 2u);
      MEMORY[0x266701350](v6, -1, -1);
    }

    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[4];

    (*(v8 + 8))(v9, v7);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_261389090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389130, v3, 0);
}

uint64_t sub_261389130()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_261389240;
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_261381C84(v8, v4, v5, v5, v6, v7);
}

uint64_t sub_261389240()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[8] = v0;

  sub_26124C718(v2, &qword_27FEA08B8, &qword_2613AD830);
  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_2613893B4, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2613893B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261389418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0978, &qword_2613ADA38);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389524, a2, 0);
}

uint64_t sub_261389524()
{
  v1 = v0[11];
  v2 = sub_26129BA7C();
  v0[12] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[13] = v3;
  v4 = *(v3 - 8);
  v0[14] = v4;
  v5 = *(v4 + 48);
  v0[15] = v5;
  v0[16] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[11], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Performing IDV merchant request", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[11];

    (*(v4 + 8))(v9, v3);
  }

  v15 = (*MEMORY[0x277CFEFB0] + MEMORY[0x277CFEFB0]);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_261389728;
  v11 = v0[9];
  v12 = v0[4];
  v13 = v0[5];

  return v15(v11, v12, v13);
}

uint64_t sub_261389728()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_261389C3C;
  }

  else
  {
    v4 = sub_261389854;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261389854()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  sub_26125A870(v0[12], v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v4 = sub_2613A122C();
    v5 = sub_2613A1D9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261243000, v4, v5, "Mapping IDV merchant response", v6, 2u);
      MEMORY[0x266701350](v6, -1, -1);
    }

    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[10];

    (*(v8 + 8))(v9, v7);
  }

  v10 = v0[8];
  sub_26125A870(v0[9], v10, &qword_27FEA0978, &qword_2613ADA38);
  v11 = sub_2613A153C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v10, 1, v11);
  v15 = v0[8];
  if (v14 == 1)
  {
    sub_26124C718(v0[8], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    sub_2613A152C();
    v17 = v16;
    (*(v12 + 8))(v15, v11);
    if (v17 >> 60 != 15)
    {
      goto LABEL_10;
    }
  }

  sub_2613A0D5C();
LABEL_10:
  v18 = v0[7];
  sub_26125A870(v0[9], v18, &qword_27FEA0978, &qword_2613ADA38);
  v19 = v13(v18, 1, v11);
  v20 = v0[7];
  if (v19 == 1)
  {
    sub_26124C718(v0[7], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    sub_2613A151C();
    (*(v12 + 8))(v20, v11);
  }

  v21 = v0[6];
  sub_26125A870(v0[9], v21, &qword_27FEA0978, &qword_2613ADA38);
  v22 = v13(v21, 1, v11);
  v23 = v0[6];
  if (v22 == 1)
  {
    sub_26124C718(v0[6], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    sub_2613A150C();
    v25 = v24;
    (*(v12 + 8))(v23, v11);
    if (v25)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v26 = v0[9];
  sub_26139FF2C();
  sub_26124C718(v26, &qword_27FEA0978, &qword_2613ADA38);

  v27 = v0[1];

  return v27();
}

uint64_t sub_261389C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261389CE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C8, &qword_2613AD878);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_2613A141C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_2613A145C();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389E18, v2, 0);
}

uint64_t sub_261389E18(uint64_t a1)
{
  v2 = sub_2613A010C();
  sub_2613A011C();
  v3 = sub_2613A012C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v24 = v2;
    v5 = v1[9];
    v27 = v1[5];
    v33 = MEMORY[0x277D84F90];
    sub_261390854(0, v4, 0);
    v6 = v33;
    v7 = v3 + 64;
    result = sub_2613A204C();
    v9 = result;
    v28 = v5;
    v26 = v3;
    v25 = v3 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v30 = v4;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      v29 = *(v3 + 36);
      v31 = v1[10];
      v32 = v6;
      v10 = v1[6];
      v11 = v1[7];
      v12 = *(v3 + 48);
      v13 = v3;
      v14 = sub_26139FD9C();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v11, v12 + *(v15 + 72) * v9, v14);
      v16 = *(*(v13 + 56) + 8 * v9);
      (*(v15 + 32))(v10, v11, v14);
      *(v10 + *(v27 + 48)) = v16;

      v17 = v16;
      v6 = v32;
      sub_26138A478(v17, v31);
      sub_26124C718(v10, &qword_27FEA08C8, &qword_2613AD878);
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_261390854((v18 > 1), v19 + 1, 1);
        v6 = v32;
      }

      v20 = v1[10];
      v21 = v1[8];
      *(v6 + 16) = v19 + 1;
      result = (*(v28 + 32))(v6 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19, v20, v21);
      v3 = v26;
      if (v9 >= -(-1 << *(v26 + 32)))
      {
        goto LABEL_22;
      }

      v7 = v25;
      if ((*(v25 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v29 != *(v26 + 36))
      {
        goto LABEL_24;
      }

      result = sub_2613A206C();
      v9 = result;
      --v4;
      if (v30 == 1)
      {

        v2 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    if (v2)
    {
      (sub_26138A470)(v6);
    }

    else
    {
      (sub_26138A474)(v6);
    }

    sub_2613A146C();
    v22 = swift_task_alloc();
    v1[12] = v22;
    *v22 = v1;
    v22[1] = sub_26138A1EC;
    v23 = v1[2];

    return sub_26138861C(v23);
  }

  return result;
}

uint64_t sub_26138A1EC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_26138A3A0;
  }

  else
  {
    v4 = sub_26138A318;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26138A318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26138A3A0()
{
  v1 = *(v0 + 16);
  v2 = sub_2613A147C();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26138A478@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  v72 = sub_2613A160C();
  v3 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v71 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08D0, &unk_2613AD8B0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = v62 - v8;
  v82 = sub_2613A13FC();
  v9 = *(v82 - 8);
  v10 = MEMORY[0x28223BE20](v82);
  v73 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = v62 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0950, &qword_2613ADA18);
  v13 = MEMORY[0x28223BE20](v80);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = v62 - v16;
  v17 = sub_2613A128C();
  MEMORY[0x28223BE20](v17 - 8);
  v74 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26138AC04();
  v76 = sub_2613910D8(MEMORY[0x277D84F90]);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v79 = (v9 + 48);
  v66 = (v9 + 32);
  v68 = (v3 + 32);
  v69 = (v9 + 16);
  v63 = v9;
  v64 = (v9 + 8);
  v65 = v3;
  v62[1] = v3 + 40;
  v83 = a1;

  v24 = 0;
  v77 = v19;
  v78 = v23;
  while (2)
  {
    while (2)
    {
      v25 = v24;
      if (!v22)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v26 = v84;
        v24 = v25;
LABEL_10:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = v27 | (v24 << 6);
        v29 = v83;
        v30 = *(v83 + 48);
        v31 = sub_2613A002C();
        v32 = *(v31 - 8);
        v33 = v81;
        (*(v32 + 16))(v81, v30 + *(v32 + 72) * v28, v31);
        *(v33 + *(v80 + 48)) = *(*(v29 + 56) + v28);
        sub_26125A870(v33, v15, &qword_27FEA0950, &qword_2613ADA18);
        sub_26138B100(v26);
        if ((*v79)(v26, 1, v82) != 1)
        {
          break;
        }

        sub_26124C718(v33, &qword_27FEA0950, &qword_2613ADA18);
        sub_26124C718(v84, &qword_27FEA08D0, &unk_2613AD8B0);
        (*(v32 + 8))(v15, v31);
        v25 = v24;
        v19 = v77;
        v23 = v78;
        if (!v22)
        {
LABEL_6:
          while (1)
          {
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v24 >= v23)
            {

              return sub_2613A140C();
            }

            v22 = *(v19 + 8 * v24);
            ++v25;
            if (v22)
            {
              v26 = v84;
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_25;
        }
      }

      v34 = v70;
      v35 = v82;
      (*v66)(v70, v84, v82);
      (*(v32 + 8))(v15, v31);
      v36 = *v69;
      v37 = v73;
      (*v69)(v73, v34, v35);
      v38 = v67;
      sub_2613A15FC();
      v39 = *v68;
      (*v68)(v71, v38, v72);
      v40 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v40;
      v42 = sub_26138FE00(v37);
      v44 = *(v40 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v48 = v43;
      v23 = v78;
      if (*(v40 + 24) >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v42;
          sub_261390500();
          v42 = v60;
        }
      }

      else
      {
        sub_261390058(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_26138FE00(v73);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_27;
        }
      }

      v50 = v85;
      v76 = v85;
      if (v48)
      {
        (*(v65 + 40))(*(v85 + 56) + *(v65 + 72) * v42, v71, v72);
        v51 = *v64;
        v52 = v82;
        (*v64)(v73, v82);
        v51(v70, v52);
        sub_26124C718(v81, &qword_27FEA0950, &qword_2613ADA18);
        v19 = v77;
        continue;
      }

      break;
    }

    *(v85 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v53 = v63;
    v54 = v42;
    v55 = v73;
    v56 = v82;
    v36(*(v50 + 48) + *(v63 + 72) * v42, v73, v82);
    v39((*(v76 + 56) + *(v65 + 72) * v54), v71, v72);
    v57 = *(v53 + 8);
    v57(v55, v56);
    v57(v70, v56);
    sub_26124C718(v81, &qword_27FEA0950, &qword_2613ADA18);
    v58 = *(v76 + 16);
    v46 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (!v46)
    {
      *(v76 + 16) = v59;
      v19 = v77;
      continue;
    }

    break;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2613A249C();
  __break(1u);
  return result;
}

uint64_t sub_26138AC04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = &v32 - v2;
  v3 = sub_26139F19C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139FD9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = *(v8 + 16);
  v37 = v0;
  v15(&v32 - v13, v0, v7);
  v16 = (*(v8 + 88))(v14, v7);
  if (v16 == *MEMORY[0x277D43928])
  {
    (*(v8 + 96))(v14, v7);
    (*(v4 + 32))(v6, v14, v3);
    sub_2613A126C();
    return (*(v4 + 8))(v6, v3);
  }

  else if (v16 == *MEMORY[0x277D43920])
  {
    return sub_2613A125C();
  }

  else if (v16 == *MEMORY[0x277D43930])
  {
    return sub_2613A127C();
  }

  else
  {
    v18 = sub_26129BA7C();
    v19 = v38;
    sub_26125A870(v18, v38, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = v20;
      v22 = v36;
      v15(v36, v37, v7);
      v23 = sub_2613A122C();
      LODWORD(v37) = sub_2613A1D8C();
      if (os_log_type_enabled(v23, v37))
      {
        v24 = swift_slowAlloc();
        v32 = v24;
        v33 = swift_slowAlloc();
        v39 = v33;
        *v24 = 136315138;
        v15(v35, v22, v7);
        v25 = sub_2613A195C();
        v26 = v22;
        v28 = v27;
        (*(v8 + 8))(v26, v7);
        v29 = sub_26124C11C(v25, v28, &v39);

        v30 = v32;
        *(v32 + 1) = v29;
        v19 = v38;
        _os_log_impl(&dword_261243000, v23, v37, "Unknown document type %s", v30, 0xCu);
        v31 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x266701350](v31, -1, -1);
        MEMORY[0x266701350](v30, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v22, v7);
      }

      (*(v21 + 8))(v19, v34);
    }

    sub_2613A125C();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_26138B100@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_2613A002C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v8 + 16);
  v17(&v34 - v15, v2, v7);
  v18 = (*(v8 + 88))(v16, v7);
  if (v18 == *MEMORY[0x277D43A48])
  {
    (*(v8 + 96))(v16, v7);
    sub_2613A12BC();
LABEL_41:
    v19 = sub_2613A13FC();
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  if (v18 == *MEMORY[0x277D43AD8])
  {
    sub_2613A13DC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A50])
  {
    sub_2613A12CC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AD0])
  {
    sub_2613A13CC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AA0])
  {
    sub_2613A136C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A58])
  {
    sub_2613A12DC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AA8])
  {
    sub_2613A137C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AC0])
  {
    sub_2613A13AC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AB0])
  {
    sub_2613A138C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AB8])
  {
    sub_2613A139C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AC8])
  {
    sub_2613A13BC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43AE0])
  {
    sub_2613A13EC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A78])
  {
    sub_2613A131C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A60])
  {
    sub_2613A12EC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A70])
  {
    sub_2613A130C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A88])
  {
    sub_2613A133C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A68])
  {
    sub_2613A12FC();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A80])
  {
    sub_2613A132C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A90])
  {
    sub_2613A134C();
    goto LABEL_41;
  }

  if (v18 == *MEMORY[0x277D43A98])
  {
    sub_2613A135C();
    goto LABEL_41;
  }

  v21 = sub_26129BA7C();
  sub_26125A870(v21, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v37 = *(v22 - 8);
  v38 = v22;
  if ((*(v37 + 48))(v6, 1) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v17(v14, v2, v7);
    v23 = sub_2613A122C();
    v35 = sub_2613A1D7C();
    v36 = v23;
    if (os_log_type_enabled(v23, v35))
    {
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v24 = 136315138;
      v17(v11, v14, v7);
      v25 = sub_2613A195C();
      v27 = v26;
      (*(v8 + 8))(v14, v7);
      v28 = sub_26124C11C(v25, v27, &v39);

      v29 = v24;
      *(v24 + 4) = v28;
      v30 = v36;
      v31 = v29;
      _os_log_impl(&dword_261243000, v36, v35, "Unknown document element: %s", v29, 0xCu);
      v32 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x266701350](v32, -1, -1);
      MEMORY[0x266701350](v31, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    (*(v37 + 8))(v6, v38);
  }

  v33 = sub_2613A13FC();
  (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
  return (*(v8 + 8))(v16, v7);
}

uint64_t sub_26138B7C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return MEMORY[0x2822009F8](sub_26138B7EC, v4, 0);
}

uint64_t sub_26138B7EC()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  v4 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_26138B8EC;

  return sub_261382A9C(v1 + v4, dword_2613AD898);
}

uint64_t sub_26138B8EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 40);

    return MEMORY[0x2822009F8](sub_2613893B4, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_26138BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 400) = a6;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = sub_26139F30C();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0928, &qword_2613AD9D0);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_2613A15AC();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0920, &qword_2613AD9C8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v10 = sub_2613A01BC();
  *(v6 + 160) = v10;
  *(v6 + 168) = *(v10 - 8);
  *(v6 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v11 = sub_26139F64C();
  *(v6 + 232) = v11;
  *(v6 + 240) = *(v11 - 8);
  *(v6 + 248) = swift_task_alloc();
  v12 = sub_2613A15EC();
  *(v6 + 256) = v12;
  *(v6 + 264) = *(v12 - 8);
  *(v6 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v13 = sub_2613A164C();
  *(v6 + 312) = v13;
  *(v6 + 320) = *(v13 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138BE70, a2, 0);
}

uint64_t sub_26138BE70()
{
  v1 = v0[8];
  v2 = v0[42];
  if (v1 >> 60 == 15)
  {
    (*(v0[40] + 104))(v0[42], *MEMORY[0x277CFF1A0], v0[39]);
  }

  else
  {
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[39];
    *v3 = v0[7];
    v3[1] = v1;
    (*(v4 + 104))(v3, *MEMORY[0x277CFF198], v5);
    (*(v4 + 32))(v2, v3, v5);
  }

  v6 = v0[38];
  sub_26125C348(v0[7], v0[8]);
  v7 = sub_26129BA7C();
  v0[43] = v7;
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v0[44] = v8;
  v9 = *(v8 - 8);
  v0[45] = v9;
  v10 = *(v9 + 48);
  v0[46] = v10;
  v0[47] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v6, 1, v8) == 1)
  {
    sub_26124C718(v0[38], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Performing IDV Data request", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = v0[38];

    (*(v9 + 8))(v14, v8);
  }

  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_26138C0F8;
  v16 = v0[42];
  v17 = v0[34];
  v18 = v0[9];

  return sub_261385358(v17, v18, v16);
}

uint64_t sub_26138C0F8()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_26138D0CC;
  }

  else
  {
    v4 = sub_26138C224;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26138C224(uint64_t a1)
{
  v2 = *(v1 + 232);
  v3 = (*(v1 + 240) + 8);
  v4 = *(v1 + 248);
  if (*(v1 + 400) != 1)
  {
    v11 = *(v1 + 112);
    v12 = *(v1 + 120);
    v13 = *(v1 + 104);
    sub_26139F57C();
    sub_26139F5DC();
    (*v3)(v4, v2);
    sub_2613A154C();
    if ((*(v12 + 48))(v13, 1, v11) == 1)
    {
      sub_26124C718(*(v1 + 104), &qword_27FEA0928, &qword_2613AD9D0);
      goto LABEL_16;
    }

    v14 = *(v1 + 136);
    v15 = *(v1 + 144);
    v17 = *(v1 + 120);
    v16 = *(v1 + 128);
    v18 = *(v1 + 112);
    (*(v17 + 32))(v14, *(v1 + 104), v18);
    (*(v17 + 16))(v16, v14, v18);
    sub_2613A15DC();
    v19 = sub_2613A12AC();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v15, 1, v19);
    v22 = *(v1 + 144);
    if (v21 == 1)
    {
      sub_26124C718(*(v1 + 144), &qword_27FEA0920, &qword_2613AD9C8);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v23 = sub_2613A129C();
      v24 = v34;
      (*(v20 + 8))(v22, v19);
    }

    v35 = *(v1 + 128);
    sub_2613A020C();
    v36 = sub_26138D25C(v35, v23, v24);
    if (!v36)
    {
      (*(*(v1 + 120) + 8))(*(v1 + 136), *(v1 + 112));
      goto LABEL_16;
    }

    v125 = v36;
    v37 = *(v1 + 192);
    sub_26125A870(*(v1 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v37, &qword_27FEA08B8, &qword_2613AD830);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v39 = *(v38 - 8);
    v40 = (*(v39 + 48))(v37, 1, v38);
    v41 = *(v1 + 216);
    v42 = *(v1 + 192);
    if (v40 == 1)
    {
      sub_26124C718(*(v1 + 192), &qword_27FEA08B8, &qword_2613AD830);
      v43 = 1;
    }

    else
    {
      *(v1 + 24) = 5;
      sub_2613A1C2C();
      (*(v39 + 8))(v42, v38);
      v43 = 0;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v68 - 8) + 56))(v41, v43, 1, v68);
    v69 = *(v1 + 368);
    v70 = *(v1 + 344);
    v71 = *(v1 + 352);
    v72 = *(v1 + 288);
    sub_26124C718(*(v1 + 216), &qword_27FEA0908, &qword_2613AD998);
    sub_26125A870(v70, v72, &qword_27FE9F560, &qword_2613A3CB0);
    if (v69(v72, 1, v71) == 1)
    {
      v73 = *(v1 + 336);
      v74 = *(v1 + 312);
      v75 = *(v1 + 320);
      v76 = *(v1 + 288);
      v78 = *(v1 + 264);
      v77 = *(v1 + 272);
      v79 = *(v1 + 256);
      (*(*(v1 + 120) + 8))(*(v1 + 136), *(v1 + 112));
      (*(v78 + 8))(v77, v79);
      (*(v75 + 8))(v73, v74);
      sub_26124C718(v76, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v80 = sub_2613A122C();
      v81 = sub_2613A1D9C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_261243000, v80, v81, "Returning IDV Data response", v82, 2u);
        MEMORY[0x266701350](v82, -1, -1);
      }

      v83 = *(v1 + 360);
      v84 = *(v1 + 320);
      v118 = *(v1 + 312);
      v119 = *(v1 + 336);
      v121 = *(v1 + 288);
      v123 = *(v1 + 352);
      v85 = *(v1 + 264);
      v86 = *(v1 + 272);
      v87 = *(v1 + 256);
      v88 = *(v1 + 136);
      v90 = *(v1 + 112);
      v89 = *(v1 + 120);

      (*(v89 + 8))(v88, v90);
      (*(v85 + 8))(v86, v87);
      (*(v84 + 8))(v119, v118);
      (*(v83 + 8))(v121, v123);
    }

    v91 = v125;
    goto LABEL_42;
  }

  sub_26139F5AC();
  sub_26139F5DC();
  (*v3)(v4, v2);
  v5 = sub_2613A15BC();
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_2613A15CC();
    if (v10 >> 60 == 15)
    {
      sub_26124A168(v7, v8);
      goto LABEL_16;
    }

    v25 = v10;
    v26 = v9;
    v27 = *(v1 + 200);
    sub_26125A870(*(v1 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v27, &qword_27FEA08B8, &qword_2613AD830);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v27, 1, v28);
    v31 = *(v1 + 224);
    v32 = *(v1 + 200);
    if (v30 == 1)
    {
      sub_26124C718(*(v1 + 200), &qword_27FEA08B8, &qword_2613AD830);
      v33 = 1;
    }

    else
    {
      *(v1 + 32) = 5;
      sub_2613A1C2C();
      (*(v29 + 8))(v32, v28);
      v33 = 0;
    }

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v92 - 8) + 56))(v31, v33, 1, v92);
    v93 = *(v1 + 368);
    v95 = *(v1 + 344);
    v94 = *(v1 + 352);
    v96 = *(v1 + 296);
    sub_26124C718(*(v1 + 224), &qword_27FEA0908, &qword_2613AD998);
    sub_26125A870(v95, v96, &qword_27FE9F560, &qword_2613A3CB0);
    if (v93(v96, 1, v94) == 1)
    {
      sub_26124C718(*(v1 + 296), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v97 = sub_2613A122C();
      v98 = sub_2613A1D9C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_261243000, v97, v98, "Returning IDV Raw Data response", v99, 2u);
        MEMORY[0x266701350](v99, -1, -1);
      }

      v101 = *(v1 + 352);
      v100 = *(v1 + 360);
      v102 = *(v1 + 296);

      (*(v100 + 8))(v102, v101);
    }

    v104 = *(v1 + 168);
    v103 = *(v1 + 176);
    v105 = *(v1 + 152);
    *v103 = v7;
    v103[1] = v8;
    v103[2] = v26;
    v103[3] = v25;
    (*(v104 + 104))();
    sub_26125C348(v7, v8);
    v124 = v26;
    sub_26125C348(v26, v25);
    sub_2613A15DC();
    v106 = sub_2613A12AC();
    v107 = *(v106 - 8);
    v108 = (*(v107 + 48))(v105, 1, v106);
    v109 = *(v1 + 152);
    v126 = v7;
    v122 = v25;
    if (v108 == 1)
    {
      sub_26124C718(v109, &qword_27FEA0920, &qword_2613AD9C8);
    }

    else
    {
      sub_2613A129C();
      (*(v107 + 8))(v109, v106);
    }

    v120 = *(v1 + 336);
    v111 = *(v1 + 312);
    v110 = *(v1 + 320);
    v112 = *(v1 + 264);
    v113 = *(v1 + 272);
    v114 = *(v1 + 256);
    v115 = objc_allocWithZone(sub_2613A020C());
    v116 = sub_2613A01DC();
    sub_26124A168(v124, v122);
    sub_26124A168(v126, v8);
    (*(v112 + 8))(v113, v114);
    (*(v110 + 8))(v120, v111);
    v91 = v116;
LABEL_42:
    **(v1 + 40) = v91;

    v67 = *(v1 + 8);
    goto LABEL_43;
  }

LABEL_16:
  v44 = *(v1 + 368);
  v45 = *(v1 + 352);
  v46 = *(v1 + 280);
  sub_26125A870(*(v1 + 344), v46, &qword_27FE9F560, &qword_2613A3CB0);
  if (v44(v46, 1, v45) == 1)
  {
    sub_26124C718(*(v1 + 280), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v47 = sub_2613A122C();
    v48 = sub_2613A1D8C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_261243000, v47, v48, "No response data", v49, 2u);
      MEMORY[0x266701350](v49, -1, -1);
    }

    v50 = *(v1 + 352);
    v51 = *(v1 + 360);
    v52 = *(v1 + 280);

    (*(v51 + 8))(v52, v50);
  }

  v53 = *(v1 + 184);
  sub_26125A870(*(v1 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v53, &qword_27FEA08B8, &qword_2613AD830);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = *(v1 + 208);
  v58 = *(v1 + 184);
  if (v56 == 1)
  {
    sub_26124C718(*(v1 + 184), &qword_27FEA08B8, &qword_2613AD830);
    v59 = 1;
  }

  else
  {
    *(v1 + 16) = 9;
    sub_2613A1C2C();
    (*(v55 + 8))(v58, v54);
    v59 = 0;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v60 - 8) + 56))(v57, v59, 1, v60);
  v62 = *(v1 + 264);
  v61 = *(v1 + 272);
  v63 = *(v1 + 256);
  v65 = *(v1 + 88);
  v64 = *(v1 + 96);
  v66 = *(v1 + 80);
  sub_26124C718(*(v1 + 208), &qword_27FEA0908, &qword_2613AD998);
  (*(v65 + 104))(v64, *MEMORY[0x277D436D0], v66);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v62 + 8))(v61, v63);
  (*(*(v1 + 320) + 8))(*(v1 + 336), *(v1 + 312));

  v67 = *(v1 + 8);
LABEL_43:

  return v67();
}

uint64_t sub_26138D0CC()
{
  (*(v0[40] + 8))(v0[42], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26138D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v27 = a2;
  v4 = sub_2613A01BC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0780, &qword_2613AD110);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_2613A128C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26139FD9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2613A156C();
  sub_26138F530(v9);
  (*(v11 + 8))(v13, v10);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    v18 = sub_2613A15AC();
    (*(*(v18 - 8) + 8))(a1, v18);

    sub_26124C718(v9, &qword_27FEA0780, &qword_2613AD110);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v9, v14);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0798, &qword_2613AD9F0) + 48);
    (*(v15 + 16))(v6, v17, v14);
    v21 = sub_2613A15AC();
    v22 = *(v21 - 8);
    (*(v22 + 16))(&v6[v20], a1, v21);
    (*(v25 + 104))(v6, *MEMORY[0x277D43BE8], v26);
    v23 = sub_2613A01CC();
    (*(v22 + 8))(a1, v21);
    (*(v15 + 8))(v17, v14);
    return v23;
  }
}

uint64_t sub_26138D62C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08D0, &unk_2613AD8B0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_2613A13FC();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_26139FD9C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_2613A128C();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_2613A002C();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_2613A145C();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138D874, v2, 0);
}

uint64_t sub_26138D874()
{
  sub_2613A017C();
  v1 = sub_2613A016C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[11];
    v41 = MEMORY[0x277D84F90];
    sub_261390898(0, v2, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v37 = *(v5 + 56);
    v39 = v6;
    do
    {
      v8 = v0[12];
      v9 = v0[10];
      v39(v8, v7, v9);
      sub_26138AC04();
      (*(v5 - 8))(v8, v9);
      v11 = *(v41 + 16);
      v10 = *(v41 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_261390898((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[15];
      v13 = v0[13];
      *(v41 + 16) = v11 + 1;
      (*(v3 + 32))(v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v7 += v37;
      --v2;
    }

    while (v2);
  }

  v14 = sub_2613A019C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v0[17];
    v17 = v0[8];
    v40 = *(v16 + 16);
    v18 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v36 = (v16 + 8);
    v38 = *(v16 + 72);
    v33 = v17;
    v34 = (v17 + 32);
    v35 = (v17 + 48);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = v0[18];
      v21 = v0[16];
      v23 = v0[6];
      v22 = v0[7];
      v24 = v0[5];
      v40(v20, v18, v21);
      sub_26138B100(v24);
      sub_261375F68(v24, v23, &qword_27FEA08D0, &unk_2613AD8B0);
      (*v36)(v20, v21);
      if ((*v35)(v23, 1, v22) == 1)
      {
        sub_26124C718(v0[6], &qword_27FEA08D0, &unk_2613AD8B0);
      }

      else
      {
        v25 = *v34;
        (*v34)(v0[9], v0[6], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_26138FC28(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_26138FC28((v26 > 1), v27 + 1, 1, v19);
        }

        v28 = v0[9];
        v29 = v0[7];
        *(v19 + 2) = v27 + 1;
        v25(&v19[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27], v28, v29);
      }

      v18 += v38;
      --v15;
    }

    while (v15);
  }

  sub_2613A143C();

  sub_2613A146C();
  v30 = swift_task_alloc();
  v0[20] = v30;
  *v30 = v0;
  v30[1] = sub_26138DCB8;
  v31 = v0[2];

  return sub_26138861C(v31);
}

uint64_t sub_26138DCB8()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_26138DE50, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_26138DE50()
{
  v1 = *(v0 + 16);
  v2 = sub_2613A147C();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26138DF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26138DF70, v3, 0);
}

uint64_t sub_26138DF70()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v7;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_26138E068;

  return sub_261382EB8(v1 + v3, dword_2613AD8C8);
}

uint64_t sub_26138E068(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 40);

    return MEMORY[0x2822009F8](sub_2613913B0, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_26138E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = sub_26139F30C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0920, &qword_2613AD9C8);
  v5[13] = swift_task_alloc();
  v8 = sub_26139EDCC();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0928, &qword_2613AD9D0);
  v5[17] = swift_task_alloc();
  v9 = sub_2613A15AC();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = sub_26139F64C();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v11 = sub_2613A15EC();
  v5[24] = v11;
  v5[25] = *(v11 - 8);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v12 = sub_2613A164C();
  v5[30] = v12;
  v5[31] = *(v12 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138E594, a2, 0);
}

uint64_t sub_26138E594()
{
  v1 = v0[6];
  v2 = v0[33];
  if (v1 >> 60 == 15)
  {
    (*(v0[31] + 104))(v0[33], *MEMORY[0x277CFF1A0], v0[30]);
  }

  else
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[30];
    *v3 = v0[5];
    v3[1] = v1;
    (*(v4 + 104))(v3, *MEMORY[0x277CFF198], v5);
    (*(v4 + 32))(v2, v3, v5);
  }

  v6 = v0[29];
  sub_26125C348(v0[5], v0[6]);
  v7 = sub_26129BA7C();
  v0[34] = v7;
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v0[35] = v8;
  v9 = *(v8 - 8);
  v0[36] = v9;
  v10 = *(v9 + 48);
  v0[37] = v10;
  v0[38] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v6, 1, v8) == 1)
  {
    sub_26124C718(v0[29], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Performing IDV Display Only request", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = v0[29];

    (*(v9 + 8))(v14, v8);
  }

  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = sub_26138E81C;
  v16 = v0[33];
  v17 = v0[26];
  v18 = v0[7];

  return sub_261385358(v17, v18, v16);
}

uint64_t sub_26138E81C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_26138F200;
  }

  else
  {
    v4 = sub_26138E948;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26138E948(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[17];
  sub_26139F58C();
  sub_26139F5DC();
  (*(v3 + 8))(v2, v4);
  sub_2613A154C();
  v8 = (*(v6 + 48))(v7, 1, v5);
  v9 = v1[37];
  v10 = v1[34];
  v11 = v1[35];
  if (v8 == 1)
  {
    v12 = v1[28];
    sub_26124C718(v1[17], &qword_27FEA0928, &qword_2613AD9D0);
    sub_26125A870(v10, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v9(v12, 1, v11) == 1)
    {
      sub_26124C718(v1[28], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261243000, v23, v24, "No response data", v25, 2u);
        MEMORY[0x266701350](v25, -1, -1);
      }

      v26 = v1[35];
      v27 = v1[36];
      v28 = v1[28];

      (*(v27 + 8))(v28, v26);
    }

    v29 = v1[11];
    sub_26125A870(v1[4] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v29, &qword_27FEA08B8, &qword_2613AD830);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v31 = *(v30 - 8);
    v32 = (*(v31 + 48))(v29, 1, v30);
    v34 = v1[11];
    v33 = v1[12];
    if (v32 == 1)
    {
      sub_26124C718(v1[11], &qword_27FEA08B8, &qword_2613AD830);
      v35 = 1;
    }

    else
    {
      v1[2] = 9;
      sub_2613A1C2C();
      (*(v31 + 8))(v34, v30);
      v35 = 0;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v48 - 8) + 56))(v33, v35, 1, v48);
    v50 = v1[25];
    v49 = v1[26];
    v51 = v1[24];
    v53 = v1[9];
    v52 = v1[10];
    v54 = v1[8];
    sub_26124C718(v1[12], &qword_27FEA0908, &qword_2613AD998);
    (*(v53 + 104))(v52, *MEMORY[0x277D436D0], v54);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v50 + 8))(v49, v51);
    (*(v1[31] + 8))(v1[33], v1[30]);

    v55 = v1[1];
  }

  else
  {
    v13 = v1[27];
    v15 = v1[15];
    v14 = v1[16];
    v16 = v1[14];
    (*(v1[19] + 32))(v1[20], v1[17], v1[18]);
    v17 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
    sub_2613A158C();
    v18 = sub_26139EDBC();
    (*(v15 + 8))(v14, v16);
    v69 = v17;
    v19 = [v17 stringFromPersonNameComponents_];

    v20 = sub_2613A18CC();
    v22 = v21;

    sub_26125A870(v10, v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (v9(v13, 1, v11) == 1)
    {
      sub_26124C718(v1[27], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D9C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "Returning IDV Display Only response", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = v1[35];
      v40 = v1[36];
      v41 = v1[27];

      (*(v40 + 8))(v41, v39);
    }

    sub_2613A157C();
    v42 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v42 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42)
    {
    }

    v43 = v1[13];
    sub_2613A159C();
    sub_2613A155C();
    sub_2613A15DC();
    v44 = sub_2613A12AC();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v43, 1, v44);
    v47 = v1[13];
    if (v46 == 1)
    {
      sub_26124C718(v47, &qword_27FEA0920, &qword_2613AD9C8);
    }

    else
    {
      sub_2613A129C();
      (*(v45 + 8))(v47, v44);
    }

    v56 = v1[33];
    v57 = v1[31];
    v68 = v1[30];
    v58 = v1[26];
    v59 = v1[25];
    v60 = v1[19];
    v61 = v1[20];
    v62 = v1[18];
    v66 = v1[3];
    v67 = v1[24];
    v63 = objc_allocWithZone(sub_26139FBFC());
    v64 = sub_26139FBDC();

    (*(v60 + 8))(v61, v62);
    (*(v59 + 8))(v58, v67);
    (*(v57 + 8))(v56, v68);
    *v66 = v64;

    v55 = v1[1];
  }

  return v55();
}

uint64_t sub_26138F200()
{
  (*(v0[31] + 8))(v0[33], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26138F338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_26129BA7C();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    result = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Canceling document read task", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    result = (*(v7 + 8))(v4, v6);
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask))
  {
    sub_2613A15EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    sub_2613A1C9C();
  }

  return result;
}

uint64_t sub_26138F530@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v43 - v3;
  v48 = sub_26139F19C();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2613A128C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = *(v8 + 16);
  v45 = v1;
  v46 = v16;
  v16(&v43 - v14, v1, v7);
  sub_2613A125C();
  sub_2613912F8(&qword_27FEA0940, MEMORY[0x277CFEE88], MEMORY[0x277CFEE90]);
  v17 = sub_2613A188C();
  v18 = *(v8 + 8);
  v18(v13, v7);
  if (v17)
  {
    v18(v15, v7);
    v19 = *MEMORY[0x277D43920];
    v20 = sub_26139FD9C();
    v21 = *(v20 - 8);
    v22 = v49;
    (*(v21 + 104))(v49, v19, v20);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }

  sub_26139F18C();
  sub_2613A126C();
  (*(v4 + 8))(v6, v48);
  v23 = sub_2613A188C();
  v18(v13, v7);
  if (v23)
  {
    v18(v15, v7);
    v22 = v49;
    sub_26139F18C();
    v24 = *MEMORY[0x277D43928];
    v20 = sub_26139FD9C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v22, v24, v20);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }

  sub_2613A127C();
  v26 = sub_2613A188C();
  v18(v13, v7);
  v18(v15, v7);
  if (v26)
  {
    v27 = *MEMORY[0x277D43930];
    v20 = sub_26139FD9C();
    v21 = *(v20 - 8);
    v22 = v49;
    (*(v21 + 104))(v49, v27, v20);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }

  v28 = sub_26129BA7C();
  v29 = v47;
  sub_26125A870(v28, v47, &qword_27FE9F560, &qword_2613A3CB0);
  v30 = sub_2613A124C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v32 = v44;
    v46(v44, v45, v7);
    v33 = sub_2613A122C();
    LODWORD(v48) = sub_2613A1D8C();
    if (os_log_type_enabled(v33, v48))
    {
      v34 = swift_slowAlloc();
      v43 = v34;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v34 = 136315138;
      v46(v13, v32, v7);
      v35 = sub_2613A195C();
      v37 = v36;
      v18(v32, v7);
      v38 = sub_26124C11C(v35, v37, &v50);
      v29 = v47;

      v39 = v43;
      *(v43 + 1) = v38;
      _os_log_impl(&dword_261243000, v33, v48, "Unknown document type %s", v39, 0xCu);
      v40 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x266701350](v40, -1, -1);
      MEMORY[0x266701350](v39, -1, -1);
    }

    else
    {

      v18(v32, v7);
    }

    (*(v31 + 8))(v29, v30);
  }

  v41 = v49;
  v42 = sub_26139FD9C();
  return (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
}

void *sub_26138FC28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0930, &qword_2613AD9D8);
  v10 = *(sub_2613A13FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2613A13FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26138FE00(uint64_t a1)
{
  sub_2613A13FC();
  sub_2613912F8(&qword_27FEA0960, MEMORY[0x277CFEE98], MEMORY[0x277CFEEA0]);
  v2 = sub_2613A182C();

  return sub_26138FE98(a1, v2);
}

unint64_t sub_26138FE98(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2613A13FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2613912F8(&qword_27FEA0968, MEMORY[0x277CFEE98], MEMORY[0x277CFEEA8]);
      v15 = sub_2613A188C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_261390058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2613A160C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2613A13FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
  v47 = v4;
  result = sub_2613A223C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2613912F8(&qword_27FEA0960, MEMORY[0x277CFEE98], MEMORY[0x277CFEEA0]);
      result = sub_2613A182C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

char *sub_261390500()
{
  v1 = v0;
  v41 = sub_2613A160C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2613A13FC();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_261390854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2613908DC(a1, a2, a3, *v3, &qword_27FEA0948, &qword_2613ADA10, MEMORY[0x277CFEEB0]);
  *v3 = result;
  return result;
}

void *sub_261390898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2613908DC(a1, a2, a3, *v3, &qword_27FEA0938, &unk_2613AD9E0, MEMORY[0x277CFEE88]);
  *v3 = result;
  return result;
}

void *sub_2613908DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_261390AB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261265144;

  return sub_26138BA44(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_261390B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261265144;

  return sub_26138E1C0(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for IdentityReaderAdapter(uint64_t a1)
{
  result = qword_27FEAE960;
  if (!qword_27FEAE960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261390C94(uint64_t a1)
{
  sub_261390D80(319);
  if (v1 <= 0x3F)
  {
    sub_261390DE4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_261390D80(uint64_t a1)
{
  if (!qword_27FEA08D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA08C0, &unk_2613AD838);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA08D8);
    }
  }
}

void sub_261390DE4()
{
  if (!qword_27FEA08E0)
  {
    v0 = sub_2613A1C6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA08E0);
    }
  }
}

uint64_t sub_261390E34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2613A147C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2613A164C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_261262AA4;

  return sub_261385CE4(a1, v11, v12, v10, v1 + v6, v1 + v9);
}

uint64_t sub_261390F80(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_261390FA4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261384230(v4, v5, v6, v3, v2);
}

uint64_t sub_261391040()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261388B30(v4, v2, v3);
}

unint64_t sub_2613910D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0970, &qword_2613ADA28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
    v7 = sub_2613A224C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26125A870(v9, v5, &qword_27FEA0970, &qword_2613ADA28);
      result = sub_26138FE00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2613A13FC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2613A160C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2613912F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261391354()
{
  result = qword_27FEAE9F0[0];
  if (!qword_27FEAE9F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE9F0);
  }

  return result;
}

void *sub_2613913B4(void *a1)
{
  swift_allocObject();
  v2 = sub_26139C80C(a1);

  return v2;
}

uint64_t sub_261391400()
{
  v0 = sub_26139FA0C();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v55 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v54 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v49 - v8;
  v10 = sub_26129B858();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Destroying AnalyticsTask", v15, 2u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  v17 = v61;
  swift_beginAccess();
  v49[1] = v16;
  v18 = *(v17 + v16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v58 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer;
  v56 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
  v23 = (v20 + 63) >> 6;
  v51 = v60 + 16;
  v50 = v2 + 7;
  v49[2] = v60 + 32;
  v57 = v18;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  v53 = v19;
  v52 = v23;
  while (v22)
  {
LABEL_15:
    v27 = (*(v57 + 56) + ((v25 << 10) | (16 * __clz(__rbit64(v22)))));
    v28 = v27[1];
    v63 = *v27;
    v29 = v61;
    v65 = *(v61 + v58);
    v66 = v28;
    v30 = sub_2613A1C1C();
    v62 = *(v30 - 8);
    v31 = v64;
    (*(v62 + 56))(v64, 1, 1, v30);
    v32 = v59;
    v33 = v60;
    v34 = v55;
    (*(v60 + 16))(v55, v29 + v56, v59);
    v35 = (*(v33 + 80) + 40) & ~*(v33 + 80);
    v36 = (v50 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    *(v37 + 4) = v65;
    (*(v33 + 32))(&v37[v35], v34, v32);
    v38 = &v37[v36];
    v39 = v66;
    *v38 = v63;
    *(v38 + 1) = v39;
    v40 = v31;
    v41 = v62;
    v42 = v54;
    sub_26125A870(v40, v54, &unk_27FE9F580, &qword_2613A5480);
    LODWORD(v33) = (*(v41 + 48))(v42, 1, v30);
    swift_bridgeObjectRetain_n();

    if (v33 == 1)
    {
      sub_26124C718(v42, &unk_27FE9F580, &qword_2613A5480);
    }

    else
    {
      sub_2613A1C0C();
      (*(v41 + 8))(v42, v30);
    }

    v43 = *(v37 + 2);
    swift_unknownObjectRetain();

    v19 = v53;
    if (v43)
    {
      swift_getObjectType();
      v44 = sub_2613A1BCC();
      v46 = v45;
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    sub_26124C718(v64, &unk_27FE9F580, &qword_2613A5480);
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_2613ADB38;
    *(v47 + 24) = v37;
    if (v46 | v44)
    {
      v67 = 0;
      v68 = 0;
      v69 = v44;
      v70 = v46;
    }

    v22 &= v22 - 1;
    swift_task_create();

    v23 = v52;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      v48 = v61;

      (*(v60 + 8))(v48 + v56, v59);

      return v48;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261391ADC()
{
  sub_261391400();

  return swift_deallocClassInstance();
}

uint64_t sub_261391B34(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2613A1C1C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = a1;

  sub_261266800(0, 0, v5, &unk_2613ADB58, v7);
}

uint64_t sub_261391C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_261391C68, 0, 0);
}

uint64_t sub_261391C68()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 24) = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v5 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261391D40, v5, v4);
}

uint64_t sub_261391D40()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261391DC0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 328) = a3;
  *(v3 + 168) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261391E6C, 0, 0);
}

uint64_t sub_261391E6C(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v1 + 192) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v4 = (v2 + v3);
  v5 = v4[1];
  if (v5)
  {
    *(v1 + 232) = v5;
    v6 = *(v1 + 328);
    v7 = *v4;

    if (v6 == 1)
    {
      v8 = sub_2613A0A6C();
    }

    else
    {
      v8 = sub_2613A0ADC();
    }

    v15 = v8;
    v16 = v9;
    *(v1 + 240) = v9;
    *(v1 + 248) = v8;
    *(v1 + 256) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v18;
    *(inited + 48) = v15;
    *(inited + 56) = v16;

    v19 = sub_261268144(inited);
    *(v1 + 264) = v19;
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
    v20 = swift_task_alloc();
    *(v1 + 272) = v20;
    *v20 = v1;
    v20[1] = sub_26139256C;

    return MEMORY[0x2821A5190](v7, v5, v19, 0);
  }

  else
  {
    v10 = *v4;
    *(v1 + 200) = *v4;
    v11 = sub_2613A090C();
    v13 = v12;
    *(v1 + 208) = v12;
    v14 = swift_task_alloc();
    *(v1 + 216) = v14;
    *v14 = v1;
    v14[1] = sub_2613920B4;

    return MEMORY[0x2821A5168](v11, v13, v10, 0);
  }
}

uint64_t sub_2613920B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[18] = v2;
  v3[19] = a1;
  v3[20] = a2;
  v3[28] = a2;

  return MEMORY[0x2822009F8](sub_2613921D8, 0, 0);
}

uint64_t sub_2613921D8()
{
  v27 = v0;
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 152);
    swift_beginAccess();

    sub_2612BB7A4(&v26, v2, v1);
    swift_endAccess();

    v3 = *(v0 + 224);
  }

  else
  {
    v3 = 0;
    v2 = *(v0 + 200);
  }

  v4 = (*(v0 + 168) + *(v0 + 192));
  *v4 = v2;
  v4[1] = v3;

  v5 = v4[1];
  if (v5)
  {
    *(v0 + 232) = v5;
    v6 = *(v0 + 328);
    v7 = *(*(v0 + 168) + *(v0 + 192));

    if (v6)
    {
      v8 = sub_2613A0A6C();
    }

    else
    {
      v8 = sub_2613A0ADC();
    }

    v14 = v8;
    v15 = v9;
    *(v0 + 240) = v9;
    *(v0 + 248) = v8;
    *(v0 + 256) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = v14;
    *(inited + 56) = v15;

    v18 = sub_261268144(inited);
    *(v0 + 264) = v18;
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
    v19 = swift_task_alloc();
    *(v0 + 272) = v19;
    *v19 = v0;
    v19[1] = sub_26139256C;

    return MEMORY[0x2821A5190](v7, v5, v18, 0);
  }

  else
  {
    v10 = *(v0 + 184);
    v11 = sub_26129B858();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "ParentID could not be created", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      v23 = *(v0 + 184);

      (*(v13 + 8))(v23, v12);
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_26139256C()
{

  return MEMORY[0x2822009F8](sub_2613926A0, 0, 0);
}

uint64_t sub_2613926A0()
{
  v34 = v0;
  v1 = *(v0 + 176);
  v2 = sub_26129B858();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 176);
  if (v5 == 1)
  {

    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    if (*(v0 + 328))
    {
LABEL_19:

      v31 = *(v0 + 8);

      return v31();
    }
  }

  else
  {

    v7 = sub_2613A122C();
    v8 = sub_2613A1D7C();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 240);
      v9 = *(v0 + 248);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = sub_26124C11C(v9, v10, &v33);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_261243000, v7, v8, "Sending reader state: [%s]", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(*(v0 + 176), v3);
    if (*(v0 + 328))
    {
      goto LABEL_19;
    }
  }

  v14 = *(v0 + 168);
  v15 = (v14 + *(v0 + 192));
  *v15 = 0;
  v15[1] = 0;

  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions;
  *(v0 + 280) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions;
  swift_beginAccess();
  v17 = *(v14 + v16);
  *(v0 + 288) = v17;
  v18 = *(v17 + 32);
  *(v0 + 329) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 56);

  if (!v21)
  {
    v24 = 0;
    while (((63 - v20) >> 6) - 1 != v24)
    {
      v23 = v24 + 1;
      v21 = *(v22 + 8 * v24++ + 64);
      if (v21)
      {
        goto LABEL_15;
      }
    }

    v29 = *(v0 + 280);
    v30 = *(v0 + 168);

    *(v30 + v29) = MEMORY[0x277D84FA0];

    goto LABEL_19;
  }

  v23 = 0;
LABEL_15:
  *(v0 + 296) = v21;
  *(v0 + 304) = v23;
  v25 = (*(v22 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
  v26 = *v25;
  v27 = v25[1];
  *(v0 + 312) = v27;

  v28 = swift_task_alloc();
  *(v0 + 320) = v28;
  *v28 = v0;
  v28[1] = sub_261392A68;

  return MEMORY[0x2821A5178](v26, v27);
}

uint64_t sub_261392A68()
{

  return MEMORY[0x2822009F8](sub_261392B80, 0, 0);
}

uint64_t sub_261392B80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  v4 = (*(v2 + 296) - 1) & *(v2 + 296);
  if (v4)
  {
    a1 = *(v2 + 288);
LABEL_7:
    *(v2 + 296) = v4;
    *(v2 + 304) = v3;
    v6 = (*(a1 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v7 = *v6;
    v8 = v6[1];
    *(v2 + 312) = v8;

    v9 = swift_task_alloc();
    *(v2 + 320) = v9;
    *v9 = v2;
    v9[1] = sub_261392A68;
    a1 = v7;
    a2 = v8;

    return MEMORY[0x2821A5178](a1, a2);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return MEMORY[0x2821A5178](a1, a2);
      }

      a1 = *(v2 + 288);
      if (v5 >= (((1 << *(v2 + 329)) + 63) >> 6))
      {
        break;
      }

      v4 = *(a1 + 8 * v5 + 56);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v10 = *(v2 + 280);
    v11 = *(v2 + 168);

    *(v11 + v10) = MEMORY[0x277D84FA0];

    v12 = *(v2 + 8);

    return v12();
  }
}

uint64_t sub_261392D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139F13C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261392E0C, 0, 0);
}

uint64_t sub_261392E0C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v0[8] = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v9 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261392F38, v9, v8);
}

uint64_t sub_261392F38()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261392FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[7] = swift_task_alloc();
  v4 = sub_26139FA0C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613930C4, 0, 0);
}

uint64_t sub_2613930C4(uint64_t a1)
{
  sub_26139F9FC();
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_261393160;

  return MEMORY[0x2821A5198]();
}

uint64_t sub_261393160()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  v5 = *(v3 + 8);
  *(v1 + 96) = v5;
  *(v1 + 104) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_2613932C4, 0, 0);
}

uint64_t sub_2613932C4()
{
  v1 = (v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  v2 = v1[1];
  v0[14] = v2;
  if (v2)
  {
    v3 = *v1;

    sub_26139F9FC();
    v4 = sub_2613A090C();
    v6 = v5;
    v0[15] = v5;
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_261393534;

    return MEMORY[0x2821A5188](v4, v6, v3, v2);
  }

  else
  {
    v8 = v0[7];
    v9 = sub_26129B858();
    sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_26124C718(v0[7], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "Parent session not available", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = v0[7];

      (*(v11 + 8))(v15, v10);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_261393534(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[12];
  v6 = v3[10];
  v7 = v3[8];
  v4[17] = a2;

  v5(v6, v7);

  return MEMORY[0x2822009F8](sub_2613936E0, 0, 0);
}

uint64_t sub_2613936E0()
{
  v7 = v0;
  v1 = v0[17];
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v6[0] = v0[3];
    v6[1] = v1;

    sub_261393790(v6, v3, v2);
    swift_bridgeObjectRelease_n();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_261393790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a2 + v15);
  *(a2 + v15) = 0x8000000000000000;
  sub_26139BEC8(v13, v14, a3, isUniquelyReferenced_nonNull_native);
  *(a2 + v15) = v35;
  swift_endAccess();
  v17 = sub_26129B858();
  sub_26125A870(v17, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v21 = v33;
  (*(v34 + 16))(v9, a3, v33);

  v22 = sub_2613A122C();
  v23 = sub_2613A1D9C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v24 = 136315394;
    *(v24 + 4) = sub_26124C11C(v13, v14, v36);
    *(v24 + 12) = 2080;
    sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = v23;
    v26 = sub_2613A23EC();
    v28 = v27;
    (*(v34 + 8))(v9, v21);
    v29 = sub_26124C11C(v26, v28, v36);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_261243000, v22, v25, "Child Session: [%s] is ready for: [%s]", v24, 0x16u);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x266701350](v30, -1, -1);
    MEMORY[0x266701350](v24, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v9, v21);
  }

  return (*(v19 + 8))(v12, v18);
}

uint64_t sub_261393B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_26139BEC8(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_26139F13C();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_26128A6E4(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_26139C0A4();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_26139F13C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_26139BBA8(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_26139F13C();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_261393D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return MEMORY[0x2822009F8](sub_261393D58, 0, 0);
}

uint64_t sub_261393D58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 32) = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v6 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261393E38, v6, v5);
}

uint64_t sub_261393E38()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261393EB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 152) = a4;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261393F64, 0, 0);
}

uint64_t sub_261393F64()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v0 + 120) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v3 = (v1 + v2);
  v4 = *v3;
  *(v0 + 128) = *v3;
  v5 = v3[1];
  *(v0 + 136) = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_2613941C8;
    v7 = *(v0 + 152);
    v8 = *(v0 + 96);

    return MEMORY[0x2821A5190](v4, v5, v8, v7);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = sub_26129B858();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "ParentID could not be created to send session event", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v16 = *(v0 + 112);

      (*(v12 + 8))(v16, v11);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2613941C8()
{

  return MEMORY[0x2822009F8](sub_2613942C4, 0, 0);
}

uint64_t sub_2613942C4(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 96);
  v3 = sub_2613A087C();
  if (*(v2 + 16))
  {
    v5 = sub_26124E5EC(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_26124C994(*(*(v1 + 96) + 56) + 32 * v5, v1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v8 = *(v1 + 104);
        v10 = *(v1 + 72);
        v9 = *(v1 + 80);
        v11 = sub_26129B858();
        sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        v14 = (*(v13 + 48))(v8, 1, v12);
        v15 = *(v1 + 104);
        if (v14 == 1)
        {

          sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {

          v21 = sub_2613A122C();
          v22 = sub_2613A1D7C();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v29 = v24;
            *v23 = 136315394;
            v25 = sub_26124C11C(v10, v9, &v29);

            *(v23 + 4) = v25;
            *(v23 + 12) = 2080;
            v26 = sub_2613A180C();
            v28 = sub_26124C11C(v26, v27, &v29);

            *(v23 + 14) = v28;
            _os_log_impl(&dword_261243000, v21, v22, "Sending session event: [%s] %s", v23, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v24, -1, -1);
            MEMORY[0x266701350](v23, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(*(v1 + 104), v12);
        }
      }
    }
  }

  else
  {
  }

  v16 = *(v1 + 136);
  if (*(v1 + 152) == 1)
  {
    v17 = *(v1 + 128);
    v18 = (*(v1 + 88) + *(v1 + 120));
    *v18 = 0;
    v18[1] = 0;

    swift_beginAccess();
    sub_26139C330(v17, v16);
    swift_endAccess();
  }

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_26139465C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 89) = a8;
  *(v8 + 88) = a7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_26139F13C();
  *(v8 + 40) = v9;
  v10 = *(v9 - 8);
  *(v8 + 48) = v10;
  *(v8 + 56) = *(v10 + 64);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261394730, 0, 0);
}

uint64_t sub_261394730()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v15 = *(v0 + 88);
  v16 = *(v0 + 89);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  *(v0 + 72) = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = v8 + v2;
  v10 = swift_allocObject();
  *(v0 + 80) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v15;
  v11[1] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v13 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261394894, v13, v12);
}

uint64_t sub_261394894()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261394928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 225) = a6;
  *(v6 + 224) = a5;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  *(v6 + 112) = a2;
  v7 = sub_26139F13C();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261394A44, 0, 0);
}

uint64_t sub_261394A44(uint64_t a1)
{
  v63 = v1;
  v2 = *(v1 + 112);
  v3 = sub_2613A087C();
  if (*(v2 + 16))
  {
    v5 = sub_26124E5EC(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_26124C994(*(*(v1 + 112) + 56) + 32 * v5, v1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v8 = *(v1 + 176);
        v10 = *(v1 + 96);
        v9 = *(v1 + 104);
        v11 = sub_26129B858();
        sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        v14 = (*(v13 + 48))(v8, 1, v12);
        v15 = *(v1 + 176);
        if (v14 == 1)
        {

          sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {

          v52 = sub_2613A122C();
          v53 = sub_2613A1D7C();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v62 = v55;
            *v54 = 136315394;
            v56 = sub_26124C11C(v10, v9, &v62);

            *(v54 + 4) = v56;
            *(v54 + 12) = 2080;
            v57 = sub_2613A180C();
            v59 = sub_26124C11C(v57, v58, &v62);

            *(v54 + 14) = v59;
            _os_log_impl(&dword_261243000, v52, v53, "Sending event: [%s] %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v55, -1, -1);
            MEMORY[0x266701350](v54, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(*(v1 + 176), v12);
        }
      }
    }
  }

  else
  {
  }

  v16 = *(v1 + 120);
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (*(v18 + 16) && (v19 = sub_26128A6E4(*(v1 + 128)), (v20 & 1) != 0))
  {
    v21 = *(v1 + 224);
    v22 = (*(v18 + 56) + 16 * v19);
    v23 = *v22;
    *(v1 + 184) = *v22;
    v24 = v22[1];
    *(v1 + 192) = v24;
    swift_endAccess();
    if (v21)
    {
      v25 = *(v1 + 160);
      (*(*(v1 + 144) + 16))(v25, *(v1 + 128), *(v1 + 136));
      swift_beginAccess();

      sub_261393B68(0, 0, v25);
      swift_endAccess();
    }

    else
    {
    }

    if (*(v1 + 225) == 1)
    {
      v43 = sub_26139F0DC();
      v45 = v44;
      *(v1 + 200) = v44;
      v46 = swift_task_alloc();
      *(v1 + 208) = v46;
      *v46 = v1;
      v46[1] = sub_2613951B0;

      return MEMORY[0x2821A5180](v23, v24, v43, v45);
    }

    else
    {
      v47 = swift_task_alloc();
      *(v1 + 216) = v47;
      *v47 = v1;
      v47[1] = sub_261395368;
      v49 = *(v1 + 184);
      v48 = *(v1 + 192);
      v50 = *(v1 + 224);
      v51 = *(v1 + 112);

      return MEMORY[0x2821A5190](v49, v48, v51, v50);
    }
  }

  else
  {
    v26 = *(v1 + 168);
    swift_endAccess();
    v27 = sub_26129B858();
    sub_26125A870(v27, v26, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_26124C718(*(v1 + 168), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      (*(*(v1 + 144) + 16))(*(v1 + 152), *(v1 + 128), *(v1 + 136));
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();
      v32 = os_log_type_enabled(v30, v31);
      v34 = *(v1 + 144);
      v33 = *(v1 + 152);
      v35 = *(v1 + 136);
      if (v32)
      {
        v61 = v31;
        v36 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v62 = v60;
        *v36 = 136315138;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v37 = sub_2613A23EC();
        v39 = v38;
        (*(v34 + 8))(v33, v35);
        v40 = sub_26124C11C(v37, v39, &v62);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_261243000, v30, v61, "No RTC session for: [%s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x266701350](v60, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      else
      {

        (*(v34 + 8))(v33, v35);
      }

      (*(v29 + 8))(*(v1 + 168), v28);
    }

    v41 = *(v1 + 8);

    return v41();
  }
}

uint64_t sub_2613951B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 216) = v3;
  *v3 = v2;
  v3[1] = sub_261395368;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  v6 = *(v1 + 224);
  v7 = *(v1 + 112);

  return MEMORY[0x2821A5190](v5, v4, v7, v6);
}

uint64_t sub_261395368()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2613954F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261395518, 0, 0);
}

uint64_t sub_261395518(uint64_t a1)
{
  v2 = sub_26139F0DC();
  v4 = v3;
  v1[6] = v3;
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_2613955EC;
  v7 = v1[3];
  v6 = v1[4];

  return MEMORY[0x2821A5180](v7, v6, v2, v4);
}

uint64_t sub_2613955EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2613956FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v55 - v9;
  v60 = sub_26139F13C();
  v57 = *(v60 - 8);
  v10 = MEMORY[0x28223BE20](v60);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v55 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613ADB10;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v15;
  v16 = sub_2613A0BBC();
  v17 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 80) = sub_2613A07CC();
  *(inited + 88) = v19;
  v21 = a1[13];
  v20 = a1[14];
  *(inited + 120) = v17;
  *(inited + 96) = v21;
  *(inited + 104) = v20;

  *(inited + 128) = sub_2613A07BC();
  *(inited + 136) = v22;
  v24 = *(v4 + 32);
  v23 = *(v4 + 40);
  v61 = v4;
  *(inited + 168) = v17;
  *(inited + 144) = v24;
  *(inited + 152) = v23;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v25;
  v26 = a1[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v26;
  *(inited + 224) = sub_2613A083C();
  *(inited + 232) = v27;
  sub_26139FCBC();
  v28 = sub_26139FB5C();
  if (v28 == sub_26139FB5C())
  {
    sub_26139FC8C();
    v29 = sub_26139FF4C();
  }

  else
  {
    v30 = 0xEC0000006E6F6974;
    v29 = 0x6163696669726556;
  }

  *(inited + 264) = v17;
  *(inited + 240) = v29;
  *(inited + 248) = v30;
  *(inited + 272) = sub_2613A05CC();
  *(inited + 280) = v31;
  sub_26139FD1C();
  v32 = sub_2613A033C();
  *(inited + 312) = v17;
  *(inited + 288) = v32;
  *(inited + 296) = v33;
  *(inited + 320) = sub_2613A071C();
  *(inited + 328) = v34;
  *(inited + 360) = v17;
  *(inited + 336) = a3;
  *(inited + 344) = a4;

  *(inited + 368) = sub_2613A06AC();
  *(inited + 376) = v35;
  v36 = sub_26139FCDC();
  v38 = v37;
  v39 = sub_26139CC00(v36, v37);
  v41 = v40;
  sub_26124A168(v36, v38);
  *(inited + 408) = v17;
  *(inited + 384) = v39;
  *(inited + 392) = v41;
  *(inited + 416) = sub_2613A06BC();
  *(inited + 424) = v42;
  if (sub_26139FCAC())
  {
    v43 = sub_2613A04EC();
  }

  else
  {
    v43 = sub_2613A04DC();
  }

  *(inited + 456) = v17;
  *(inited + 432) = v43;
  *(inited + 440) = v44;
  v55 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v45 = v58;
  sub_26139FCEC();
  v46 = sub_2613A1C1C();
  v47 = v59;
  (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
  v48 = v57;
  v49 = v60;
  (*(v57 + 16))(v12, v45, v60);
  v50 = (*(v48 + 80) + 48) & ~*(v48 + 80);
  v51 = v50 + v56;
  v52 = swift_allocObject();
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  v53 = v55;
  *(v52 + 4) = v61;
  *(v52 + 5) = v53;
  (*(v48 + 32))(&v52[v50], v12, v49);
  *&v52[v51] = 0;

  sub_261266800(0, 0, v47, &unk_2613ADB80, v52);

  return (*(v48 + 8))(v45, v49);
}

uint64_t sub_261395B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v59 = a3;
  v60 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v58 - v11;
  v65 = sub_26139F13C();
  v62 = *(v65 - 8);
  v12 = MEMORY[0x28223BE20](v65);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v13;
  MEMORY[0x28223BE20](v12);
  v63 = &v58 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4350;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v17;
  v18 = sub_2613A0ACC();
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 80) = sub_2613A07CC();
  *(inited + 88) = v21;
  v23 = a1[13];
  v22 = a1[14];
  *(inited + 120) = v19;
  *(inited + 96) = v23;
  *(inited + 104) = v22;

  *(inited + 128) = sub_2613A07BC();
  *(inited + 136) = v24;
  v26 = *(v6 + 32);
  v25 = *(v6 + 40);
  v66 = v6;
  *(inited + 168) = v19;
  *(inited + 144) = v26;
  *(inited + 152) = v25;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v27;
  v28 = a1[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v28;
  *(inited + 224) = sub_2613A083C();
  *(inited + 232) = v29;
  sub_26139FCBC();
  v30 = sub_26139FB5C();
  if (v30 == sub_26139FB5C())
  {
    sub_26139FC8C();
    v31 = sub_26139FF4C();
  }

  else
  {
    v32 = 0xEC0000006E6F6974;
    v31 = 0x6163696669726556;
  }

  *(inited + 264) = v19;
  *(inited + 240) = v31;
  *(inited + 248) = v32;
  *(inited + 272) = sub_2613A05CC();
  *(inited + 280) = v33;
  sub_26139FD1C();
  v34 = sub_2613A033C();
  *(inited + 312) = v19;
  *(inited + 288) = v34;
  *(inited + 296) = v35;
  *(inited + 320) = sub_2613A086C();
  *(inited + 328) = v36;
  *(inited + 360) = v19;
  *(inited + 336) = v59;
  *(inited + 344) = a4;

  *(inited + 368) = sub_2613A071C();
  *(inited + 376) = v37;
  *(inited + 408) = v19;
  *(inited + 384) = v60;
  *(inited + 392) = a6;

  *(inited + 416) = sub_2613A06AC();
  *(inited + 424) = v38;
  v39 = sub_26139FCDC();
  v41 = v40;
  v42 = sub_26139CC00(v39, v40);
  v44 = v43;
  sub_26124A168(v39, v41);
  *(inited + 456) = v19;
  *(inited + 432) = v42;
  *(inited + 440) = v44;
  *(inited + 464) = sub_2613A06BC();
  *(inited + 472) = v45;
  if (sub_26139FCAC())
  {
    v46 = sub_2613A04EC();
  }

  else
  {
    v46 = sub_2613A04DC();
  }

  *(inited + 504) = v19;
  *(inited + 480) = v46;
  *(inited + 488) = v47;
  v60 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v48 = v63;
  sub_26139FCEC();
  v49 = sub_2613A1C1C();
  v50 = v64;
  (*(*(v49 - 8) + 56))(v64, 1, 1, v49);
  v51 = v62;
  v52 = v65;
  (*(v62 + 16))(v14, v48, v65);
  v53 = (*(v51 + 80) + 48) & ~*(v51 + 80);
  v54 = v53 + v61;
  v55 = swift_allocObject();
  *(v55 + 2) = 0;
  *(v55 + 3) = 0;
  v56 = v60;
  *(v55 + 4) = v66;
  *(v55 + 5) = v56;
  (*(v51 + 32))(&v55[v53], v14, v52);
  *&v55[v54] = 0;

  sub_261266800(0, 0, v50, &unk_2613ADD30, v55);

  return (*(v51 + 8))(v48, v52);
}

uint64_t sub_261395FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, char a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v25 = a1;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v15;
  v16 = a2();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v18 = sub_261268144(inited);
  swift_setDeallocating();
  sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
  v19 = sub_2613A1C1C();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v8);
  v20 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v5;
  *(v21 + 5) = v18;
  (*(v9 + 32))(&v21[v20], &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v22 = &v21[v20 + v10];
  *v22 = a4;
  v22[1] = a4;

  sub_261266800(0, 0, v13, v27, v21);
}

uint64_t sub_261396250(uint64_t a1, uint64_t a2)
{
  v41[1] = a2;
  v43 = sub_26139F13C();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - v6;
  v8 = sub_2612CCA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613ADB20;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v10;
  v11 = sub_2613A0A2C();
  v12 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 80) = sub_2613A05EC();
  *(inited + 88) = v14;
  v15 = type metadata accessor for TransactionData(0);
  v16 = (a1 + *(v15 + 20));
  v18 = *v16;
  v17 = v16[1];
  *(inited + 120) = v12;
  *(inited + 96) = v18;
  *(inited + 104) = v17;

  *(inited + 128) = sub_2613A07AC();
  *(inited + 136) = v19;
  v20 = sub_2612CB3E8(*(a1 + *(v15 + 24)));
  *(inited + 168) = v12;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  *(inited + 176) = sub_2613A05CC();
  *(inited + 184) = v22;
  v23 = sub_2612CBC48(v8);
  *(inited + 216) = v12;
  *(inited + 192) = v23;
  *(inited + 200) = v24;
  *(inited + 224) = sub_2613A06BC();
  *(inited + 232) = v25;
  if (sub_26139FCAC())
  {
    v26 = sub_2613A04EC();
  }

  else
  {
    v26 = sub_2613A04DC();
  }

  *(inited + 264) = v12;
  *(inited + 240) = v26;
  *(inited + 248) = v27;
  *(inited + 272) = sub_2613A072C();
  *(inited + 280) = v28;
  v29 = sub_26139FF6C();
  *(inited + 312) = v12;
  *(inited + 288) = v29;
  *(inited + 296) = v30;
  *(inited + 320) = sub_2613A075C();
  *(inited + 328) = v31;
  v32 = sub_26139FF8C();
  *(inited + 360) = v12;
  *(inited + 336) = v32;
  *(inited + 344) = v33;
  v34 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v35 = sub_2613A1C1C();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v37 = v42;
  v36 = v43;
  (*(v3 + 16))(v42, a1, v43);
  v38 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v44;
  *(v39 + 5) = v34;
  (*(v3 + 32))(&v39[v38], v37, v36);
  *&v39[v38 + v4] = 0;

  sub_261266800(0, 0, v7, &unk_2613ADB98, v39);
}

uint64_t sub_2613965D4(uint64_t *a1, char a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_26139F13C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  if (a2)
  {
    v58 = v18;
    v59 = v4;
    sub_26139FCEC();
    v21 = a1[3];
    v57 = a1[2];
    ErrorEventData = type metadata accessor for ReadErrorEventData(0);
    sub_26125A870(a1 + *(ErrorEventData + 36), v13, &qword_27FE9F340, &unk_2613A4B40);
    v23 = type metadata accessor for TransactionData(0);
    if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F340, &unk_2613A4B40);
      v56 = 0;
      v24 = 0;
    }

    else
    {
      v30 = &v13[*(v23 + 20)];
      v24 = *(v30 + 1);
      v56 = *v30;

      sub_26125D0E4(v13);
    }

    v31 = sub_26139FCAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A3CA0;
    *(inited + 32) = sub_2613A087C();
    *(inited + 40) = v33;
    v34 = sub_2613A0A0C();
    v35 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v34;
    *(inited + 56) = v36;
    *(inited + 80) = sub_2613A06BC();
    *(inited + 88) = v37;
    if (v31)
    {
      v38 = sub_2613A04EC();
    }

    else
    {
      v38 = sub_2613A04DC();
    }

    *(inited + 120) = v35;
    *(inited + 96) = v38;
    *(inited + 104) = v39;
    *(inited + 128) = sub_2613A086C();
    *(inited + 136) = v40;
    *(inited + 168) = v35;
    *(inited + 144) = v57;
    *(inited + 152) = v21;

    v41 = sub_261268144(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
    swift_arrayDestroy();
    if (v24)
    {
      v42 = sub_2613A05EC();
      v44 = v43;
      v65 = v35;
      *&v64 = v56;
      *(&v64 + 1) = v24;
      sub_26125A7B0(&v64, &v62);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v41;
      v46 = __swift_mutable_project_boxed_opaque_existential_0(&v62, v63);
      MEMORY[0x28223BE20](v46);
      v48 = (&v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v49 + 16))(v48);
      sub_261267EDC(*v48, v48[1], v42, v44, isUniquelyReferenced_nonNull_native, &v61);

      __swift_destroy_boxed_opaque_existential_0Tm(&v62);
      v41 = v61;
    }

    v50 = sub_2613A1C1C();
    v51 = v60;
    (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
    v52 = v58;
    (*(v15 + 16))(v58, v20, v14);
    v53 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v54 = swift_allocObject();
    *(v54 + 2) = 0;
    *(v54 + 3) = 0;
    *(v54 + 4) = v59;
    *(v54 + 5) = v41;
    (*(v15 + 32))(&v54[v53], v52, v14);
    *&v54[v53 + v16] = 0;

    sub_261266800(0, 0, v51, &unk_2613ADBA8, v54);

    return (*(v15 + 8))(v20, v14);
  }

  else
  {
    v26 = *a1;
    v25 = a1[1];
    v27 = a1[2];
    v28 = a1[3];

    return sub_261395B24(v25, v26, v27, v28, a3, a4);
  }
}

uint64_t sub_261396BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v12;
  v13 = sub_2613A0B7C();
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_2613A086C();
  *(inited + 88) = v16;
  *(inited + 120) = v14;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  v17 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v18 = sub_2613A1C1C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  (*(v6 + 16))(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22[0], v5);
  v19 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v22[1];
  *(v20 + 5) = v17;
  (*(v6 + 32))(&v20[v19], v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v20[v19 + v7] = 1;

  sub_261266800(0, 0, v10, &unk_2613ADBB8, v20);
}

uint64_t sub_261396E70(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  v91 = a8;
  v93 = a6;
  v94 = a4;
  v95 = a5;
  v98 = a1;
  v16 = sub_26139F13C();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v97 = v17;
  v100 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = &v91 - v19;
  if (a2)
  {
    v20 = sub_2613A039C();
  }

  else
  {
    v20 = sub_2613A03AC();
  }

  v22 = v20;
  v23 = v21;
  if (a3)
  {
    v24 = sub_2613A037C();
  }

  else
  {
    v24 = sub_2613A038C();
  }

  v26 = v24;
  v27 = v25;
  v92 = a10;
  sub_2613A121C();
  v28 = sub_2613A115C();
  v103 = v12;
  if (v28)
  {
    v29 = sub_2613A034C();
  }

  else
  {
    v29 = sub_2613A035C();
  }

  v30 = v29;
  v96 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A066C();
  v32 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v33;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 80) = sub_2613A062C();
  *(inited + 88) = v34;
  *(inited + 120) = v32;
  *(inited + 96) = v26;
  *(inited + 104) = v27;
  *(inited + 128) = sub_2613A073C();
  *(inited + 136) = v35;
  v36 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v30;
  *(inited + 176) = sub_2613A071C();
  *(inited + 184) = v37;
  *(inited + 216) = v32;
  *(inited + 192) = v93;
  *(inited + 200) = a7;

  *(inited + 224) = sub_2613A079C();
  *(inited + 232) = v38;
  v39 = sub_26139FABC();
  *(inited + 264) = v32;
  *(inited + 240) = v39;
  *(inited + 248) = v40;
  *(inited + 272) = sub_2613A074C();
  *(inited + 280) = v41;
  *(inited + 312) = v36;
  *(inited + 288) = v95;
  v42 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (v92)
  {
    v43 = v91;
    if (v91 != 2)
    {
      v44 = sub_2613A088C();
      v46 = v45;
      if (v43)
      {
        v47 = sub_2613A0BDC();
      }

      else
      {
        v47 = sub_2613A0BEC();
      }

      v108 = v36;
      *&v107 = v47;
      sub_26125A7B0(&v107, &v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v42;
      v70 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
      sub_26139C630(*v70, v44, v46, isUniquelyReferenced_nonNull_native, &v104);

      __swift_destroy_boxed_opaque_existential_0Tm(&v105);
      v42 = v104;
    }

    v71 = sub_2613A087C();
    v73 = v72;
    v74 = sub_2613A0B0C();
    v108 = v32;
    *&v107 = v74;
    *(&v107 + 1) = v75;
    sub_26125A7B0(&v107, &v105);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v42;
    v77 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    MEMORY[0x28223BE20](v77);
    v79 = (&v91 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    sub_261267EDC(*v79, v79[1], v71, v73, v76, &v104);
  }

  else
  {
    v48 = sub_2613A087C();
    v50 = v49;
    v51 = sub_2613A0ABC();
    v108 = v32;
    *&v107 = v51;
    *(&v107 + 1) = v52;
    sub_26125A7B0(&v107, &v105);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v42;
    v54 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    MEMORY[0x28223BE20](v54);
    v56 = (&v91 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    sub_261267EDC(*v56, v56[1], v48, v50, v53, &v104);

    __swift_destroy_boxed_opaque_existential_0Tm(&v105);
    v58 = v104;
    v59 = sub_2613A086C();
    v61 = v60;
    v62 = sub_26139FACC();
    v108 = v32;
    *&v107 = v62;
    *(&v107 + 1) = v63;
    sub_26125A7B0(&v107, &v105);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v58;
    v65 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    MEMORY[0x28223BE20](v65);
    v67 = (&v91 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    sub_261267EDC(*v67, v67[1], v59, v61, v64, &v104);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v105);
  v81 = v104;
  v82 = sub_2613A1C1C();
  v83 = v99;
  (*(*(v82 - 8) + 56))(v99, 1, 1, v82);
  v85 = v100;
  v84 = v101;
  v86 = v102;
  (*(v101 + 16))(v100, v98, v102);
  v87 = (*(v84 + 80) + 48) & ~*(v84 + 80);
  v88 = v87 + v97;
  v89 = swift_allocObject();
  *(v89 + 2) = 0;
  *(v89 + 3) = 0;
  *(v89 + 4) = v103;
  *(v89 + 5) = v81;
  (*(v84 + 32))(&v89[v87], v85, v86);
  *&v89[v88] = v96 & 1;

  sub_261266800(0, 0, v83, &unk_2613ADBC0, v89);
}

uint64_t sub_261397594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4300;

    v15 = sub_2613A087C();
    v29 = v4;
    *(inited + 32) = v15;
    *(inited + 40) = v16;
    v17 = sub_2613A0B5C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v17;
    *(inited + 56) = v18;
    *(inited + 80) = sub_2613A086C();
    *(inited + 88) = v19;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = a2;
    *(inited + 104) = a3;
    v20 = sub_261268144(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
    v4 = v29;
    swift_arrayDestroy();
  }

  else
  {
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_2613A4310;
    *(v21 + 32) = sub_2613A087C();
    *(v21 + 40) = v22;
    v23 = sub_2613A0B6C();
    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 48) = v23;
    *(v21 + 56) = v24;
    v20 = sub_261268144(v21);
    swift_setDeallocating();
    sub_26124C718(v21 + 32, &qword_27FE9F410, &qword_2613A54F0);
  }

  v25 = sub_2613A1C1C();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v26 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v4;
  *(v27 + 5) = v20;
  (*(v9 + 32))(&v27[v26], &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v27[v26 + v10] = 0;

  sub_261266800(0, 0, v13, &unk_2613ADBC8, v27);
}

uint64_t sub_2613978BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a1;
  v28 = sub_26139F13C();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (a2)
  {
    v11 = sub_2613A0AAC();
  }

  else
  {
    v11 = sub_2613A0B4C();
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v16 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v17;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 80) = sub_2613A060C();
  *(inited + 88) = v18;
  *(inited + 120) = v16;
  *(inited + 96) = v26;
  *(inited + 104) = a4;

  v19 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v20 = sub_2613A1C1C();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = v28;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v28);
  v22 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v29;
  *(v23 + 5) = v19;
  (*(v6 + 32))(&v23[v22], &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *&v23[v22 + v7] = 0;

  sub_261266800(0, 0, v10, &unk_2613ADBD0, v23);
}

uint64_t sub_261397B74(uint64_t a1, char a2, int a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v13;
  v14 = sub_2613A09FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 80) = sub_2613A081C();
  *(inited + 88) = v16;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = a2;
  *(inited + 128) = sub_2613A05DC();
  *(inited + 136) = v17;
  *(inited + 168) = MEMORY[0x277D84CC0];
  *(inited + 144) = a3;
  v18 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v19 = sub_2613A1C1C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v23;
  *(v21 + 5) = v18;
  (*(v7 + 32))(&v21[v20], &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v21[v20 + v8] = 0;

  sub_261266800(0, 0, v11, &unk_2613ADBD8, v21);
}

uint64_t sub_261397E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v3;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_261266800(0, 0, v11, a3, v14);
}

uint64_t sub_26139802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139F13C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613980F4, 0, 0);
}

uint64_t sub_2613980F4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v0[8] = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v9 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261398220, v9, v8);
}

uint64_t sub_261398220()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613982B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26139F13C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613983C4, 0, 0);
}

uint64_t sub_2613983C4(uint64_t a1)
{
  v2 = sub_26139F0DC();
  v4 = v3;
  *(v1 + 104) = v3;
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v1;
  v5[1] = sub_26139848C;

  return MEMORY[0x2821A5170](v2, v4);
}

uint64_t sub_26139848C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_2613985AC, 0, 0);
}

uint64_t sub_2613985AC()
{
  v39 = v0;
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[15];
    v4 = v0[10];
    v3 = v0[11];
    v5 = *(v0[8] + 16);
    v5(v4, v0[6], v0[7]);
    swift_beginAccess();

    sub_261393B68(v2, v1, v4);
    swift_endAccess();
    v6 = sub_26129B858();
    sub_26125A870(v6, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v3, 1, v7);
    v10 = v0[11];
    if (v9 == 1)
    {

      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v5(v0[9], v0[6], v0[7]);

      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[15];
        v36 = v16;
        v19 = v0[8];
        v18 = v0[9];
        v20 = v0[7];
        v21 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v21 = 136315394;
        v22 = sub_26124C11C(v17, v1, &v38);

        *(v21 + 4) = v22;
        *(v21 + 12) = 2080;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v23 = sub_2613A23EC();
        v25 = v24;
        (*(v19 + 8))(v18, v20);
        v26 = sub_26124C11C(v23, v25, &v38);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_261243000, v15, v36, "Child session: [%s] reloaded successfully for: [%s]", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v37, -1, -1);
        MEMORY[0x266701350](v21, -1, -1);
      }

      else
      {
        v32 = v0[8];
        v31 = v0[9];
        v33 = v0[7];

        (*(v32 + 8))(v31, v33);
      }

      (*(v8 + 8))(v0[11], v7);
    }
  }

  else
  {
    v11 = v0[12];
    v12 = sub_26129B858();
    sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "Could not reload child session", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      v30 = v0[12];

      (*(v14 + 8))(v30, v13);
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_261398A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_26139FA0C();
  v51 = *(v7 - 1);
  v52 = v7;
  v8 = *(v51 + 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v48 - v10;
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (*(v19 + 16) && (v20 = sub_26128A6E4(a1), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v23 = v22[1];
    v48 = *v22;
    swift_endAccess();
    (*(v12 + 16))(v17, a1, v11);
    swift_beginAccess();

    sub_261393B68(0, 0, v17);
    swift_endAccess();
    v24 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
    v25 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    v26 = sub_2613A1C1C();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49, 1, 1, v26);
    v29 = v50;
    v28 = v51;
    v30 = v52;
    (*(v51 + 2))(v50, v2 + v25, v52);
    v31 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v24;
    (*(v28 + 4))(&v32[v31], v29, v30);
    v33 = &v32[(v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v33 = v48;
    *(v33 + 1) = v23;

    sub_261266800(0, 0, v27, &unk_2613ADBF0, v32);
  }

  else
  {
    swift_endAccess();
    v35 = sub_26129B858();
    sub_26125A870(v35, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v36 = sub_2613A124C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v6, 1, v36) == 1)
    {
      return sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      (*(v12 + 16))(v15, a1, v11);
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v51 = v40;
        v52 = swift_slowAlloc();
        v53[0] = v52;
        *v40 = 136315138;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = sub_2613A23EC();
        v43 = v42;
        (*(v12 + 8))(v15, v11);
        v44 = sub_26124C11C(v41, v43, v53);

        v45 = v51;
        *(v51 + 1) = v44;
        v46 = v45;
        _os_log_impl(&dword_261243000, v38, v39, "No child session to be released for: [%s]", v45, 0xCu);
        v47 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v47, -1, -1);
        MEMORY[0x266701350](v46, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v15, v11);
      }

      return (*(v37 + 8))(v6, v36);
    }
  }
}

uint64_t sub_261399030(uint64_t a1, uint64_t a2, char a3)
{
  v31 = a2;
  v32 = a1;
  v4 = ~a3;
  v33 = sub_26139F13C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v11;
  v12 = sub_2613A0AEC();
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v15 = sub_261268144(inited);
  swift_setDeallocating();
  sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
  if (v4)
  {
    v16 = sub_2613A086C();
    v18 = v17;
    v19 = sub_261272B0C(v31, a3);
    v39 = v13;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    sub_26125A7B0(&v38, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v15;
    v22 = __swift_mutable_project_boxed_opaque_existential_0(&v36, v37);
    MEMORY[0x28223BE20](v22);
    v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_261267EDC(*v24, v24[1], v16, v18, isUniquelyReferenced_nonNull_native, &v35);

    __swift_destroy_boxed_opaque_existential_0Tm(&v36);
    v15 = v35;
  }

  v26 = sub_2613A1C1C();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = v33;
  (*(v5 + 16))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v33);
  v28 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = v34;
  *(v29 + 5) = v15;
  (*(v5 + 32))(&v29[v28], &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  *&v29[v28 + v6] = 1;

  sub_261266800(0, 0, v9, &unk_2613ADBF8, v29);
}

uint64_t sub_2613993D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive))
  {
    v9 = sub_26129B858();
    sub_26125A870(v9, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      return sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Analytics SAF session is already active", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      return (*(v11 + 8))(v5, v10);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 1;
    v13 = sub_2613A1C1C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;
    v14[5] = a1;

    sub_261266800(0, 0, v8, &unk_2613ADC08, v14);
  }
}

uint64_t sub_261399678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_261399698, 0, 0);
}

uint64_t sub_261399698()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v5 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261399770, v5, v4);
}

uint64_t sub_261399770()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613997F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139988C, 0, 0);
}

uint64_t sub_26139988C(uint64_t a1)
{
  v2 = v1[39];
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v1[42] = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v4 = (v2 + v3);
  v5 = v4[1];
  v1[43] = v5;
  if (v5)
  {
    v6 = *v4;
    swift_beginAccess();

    sub_26139C330(v6, v5);
    swift_endAccess();

    v7 = swift_task_alloc();
    v1[44] = v7;
    *v7 = v1;
    v7[1] = sub_261399A3C;

    return MEMORY[0x2821A5178](v6, v5);
  }

  else
  {
    v8 = sub_2613A090C();
    v10 = v9;
    v1[45] = v9;
    v11 = swift_task_alloc();
    v1[46] = v11;
    *v11 = v1;
    v11[1] = sub_261399C1C;

    return MEMORY[0x2821A5168](v8, v10, 0, 0);
  }
}

uint64_t sub_261399A3C()
{

  return MEMORY[0x2822009F8](sub_261399B54, 0, 0);
}

uint64_t sub_261399B54(uint64_t a1)
{
  v2 = sub_2613A090C();
  v4 = v3;
  *(v1 + 360) = v3;
  v5 = swift_task_alloc();
  *(v1 + 368) = v5;
  *v5 = v1;
  v5[1] = sub_261399C1C;

  return MEMORY[0x2821A5168](v2, v4, 0, 0);
}

uint64_t sub_261399C1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[36] = v2;
  v3[37] = a1;
  v3[38] = a2;
  v3[47] = a2;

  return MEMORY[0x2822009F8](sub_261399D40, 0, 0);
}

uint64_t sub_261399D40()
{
  v27 = v0;
  v1 = v0[47];
  if (v1)
  {
    v2 = v0[37];
    swift_beginAccess();

    sub_2612BB7A4(&v26, v2, v1);
    swift_endAccess();

    v3 = v0[47];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = v0[41];
  v5 = v0[39];
  v6 = v0[40];
  v7 = (v5 + v0[42]);
  *v7 = v2;
  v7[1] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4D40;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v9;
  v10 = sub_2613A0B3C();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v13;
  v15 = *(v5 + 32);
  v14 = *(v5 + 40);
  *(inited + 120) = v11;
  *(inited + 96) = v15;
  *(inited + 104) = v14;

  *(inited + 128) = sub_2613A07CC();
  *(inited + 136) = v16;
  v18 = v6[13];
  v17 = v6[14];
  *(inited + 168) = v11;
  *(inited + 144) = v18;
  *(inited + 152) = v17;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v19;
  v20 = v6[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v20;
  v21 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v22 = sub_2613A1C1C();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v5;
  *(v23 + 40) = v21;
  *(v23 + 48) = 0;

  sub_261266800(0, 0, v4, &unk_2613ADD08, v23);

  v24 = v0[1];

  return v24();
}

uint64_t sub_261399FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a1;

  sub_261266800(0, 0, v9, &unk_2613ADC18, v11);
}

uint64_t sub_26139A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[65] = a7;
  v7[63] = a5;
  v7[64] = a6;
  v7[62] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139A17C, 0, 0);
}

uint64_t sub_26139A17C()
{
  v65 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v6;
  v7 = sub_2613A0B8C();
  v8 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v10;
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  *(inited + 120) = v8;
  *(inited + 96) = v12;
  *(inited + 104) = v11;

  *(inited + 128) = sub_2613A086C();
  *(inited + 136) = v13;
  *(inited + 168) = v8;
  *(inited + 144) = v2;
  *(inited + 152) = v3;

  v14 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (v1)
  {
    v15 = *(v0 + 520);

    v16 = sub_2613A07CC();
    v18 = v17;
    v19 = v15[13];
    v20 = v15[14];
    *(v0 + 344) = v8;
    *(v0 + 320) = v19;
    *(v0 + 328) = v20;
    sub_26125A7B0((v0 + 320), (v0 + 352));

    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v64 = v14;
    v21 = *(v0 + 376);
    v22 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 352, v21);
    v23 = *(v21 - 8);
    v24 = swift_task_alloc();
    (*(v23 + 16))(v24, v22, v21);
    sub_261267EDC(*v24, v24[1], v16, v18, v20, &v64);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 352));

    v25 = v64;
    v26 = sub_2613A06EC();
    v28 = v27;
    v29 = v15[10];
    *(v0 + 408) = MEMORY[0x277D83B88];
    *(v0 + 384) = v29;
    sub_26125A7B0((v0 + 384), (v0 + 416));
    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    v30 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 416, *(v0 + 440));
    sub_26139C630(*v30, v26, v28, v20, &v64);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
  }

  else
  {
    v31 = sub_2613A07CC();
    v33 = v32;
    *(v0 + 192) = sub_2613A089C();
    *(v0 + 216) = v8;
    *(v0 + 200) = v34;
    sub_26125A7B0((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v14;
    v36 = *(v0 + 248);
    v37 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v36);
    v38 = *(v36 - 8);
    v39 = swift_task_alloc();
    (*(v38 + 16))(v39, v37, v36);
    sub_261267EDC(*v39, v39[1], v31, v33, isUniquelyReferenced_nonNull_native, &v64);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));

    v40 = v64;
    v41 = sub_2613A06EC();
    v43 = v42;
    v44 = sub_2613A089C();
    *(v0 + 280) = v8;
    *(v0 + 256) = v44;
    *(v0 + 264) = v45;
    sub_26125A7B0((v0 + 256), (v0 + 288));
    LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
    v64 = v40;
    v46 = *(v0 + 312);
    v47 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 288, v46);
    v48 = *(v46 - 8);
    v49 = swift_task_alloc();
    (*(v48 + 16))(v49, v47, v46);
    sub_261267EDC(*v49, v49[1], v41, v43, isUniquelyReferenced_nonNull_native, &v64);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  }

  v50 = v64;
  *(v0 + 536) = v64;
  v51 = *(v0 + 496);
  v52 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v0 + 544) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v53 = (v51 + v52);
  if (v53[1])
  {
    v54 = *(v0 + 528);
    v55 = sub_2613A1C1C();
    (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v51;
    *(v56 + 40) = v50;
    *(v56 + 48) = 0;

    sub_261266800(0, 0, v54, &unk_2613ADCF0, v56);

    v57 = *(v0 + 8);

    return v57();
  }

  else
  {
    v59 = *v53;
    *(v0 + 552) = *v53;
    v60 = sub_2613A090C();
    v62 = v61;
    *(v0 + 560) = v61;
    v63 = swift_task_alloc();
    *(v0 + 568) = v63;
    *v63 = v0;
    v63[1] = sub_26139A77C;

    return MEMORY[0x2821A5168](v60, v62, v59, 0);
  }
}

uint64_t sub_26139A77C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[59] = v2;
  v3[60] = a1;
  v3[61] = a2;
  v3[72] = a2;

  return MEMORY[0x2822009F8](sub_26139A8A0, 0, 0);
}

uint64_t sub_26139A8A0()
{
  v13 = v0;
  v1 = v0[72];
  if (v1)
  {
    v2 = v0[60];
    swift_beginAccess();

    sub_2612BB7A4(&v12, v2, v1);
    swift_endAccess();

    v3 = v0[72];
  }

  else
  {
    v3 = 0;
    v2 = v0[69];
  }

  v4 = (v0[62] + v0[68]);
  *v4 = v2;
  v4[1] = v3;

  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[62];
  v8 = sub_2613A1C1C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = 0;

  sub_261266800(0, 0, v6, &unk_2613ADCF0, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26139AA34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-v3];
  if (*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD40, &qword_2613AA880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 40) = v6;
    *(inited + 48) = sub_2613A0B2C();
    *(inited + 56) = v7;
    v8 = sub_2612BEECC(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9FD48, qword_2613AA888);
    v9 = sub_2612D8CF0(v8);

    v10 = sub_2613A1C1C();
    v11 = *(*(v10 - 8) + 56);
    v11(v4, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v0;
    *(v12 + 40) = v9;
    *(v12 + 48) = 1;

    sub_261266800(0, 0, v4, &unk_2613ADC28, v12);

    v11(v4, 1, 1, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v0;

    sub_261266800(0, 0, v4, &unk_2613ADC38, v13);
  }

  return result;
}

uint64_t sub_26139AC88()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v2 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_26139AD30, v2, v1);
}

uint64_t sub_26139AD30()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26139ADD0(uint64_t a1)
{
  v2 = sub_2613A090C();
  v4 = v3;
  *(v1 + 72) = v3;
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_26139AE98;

  return MEMORY[0x2821A5168](v2, v4, 0, 0);
}

uint64_t sub_26139AE98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = a2;
  v3[11] = a2;

  return MEMORY[0x2822009F8](sub_26139AFBC, 0, 0);
}

uint64_t sub_26139AFBC()
{
  v8 = v0;
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[6];
    swift_beginAccess();

    sub_2612BB7A4(&v7, v2, v1);
    swift_endAccess();

    v3 = v0[11];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = (v0[8] + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  *v4 = v2;
  v4[1] = v3;

  v5 = v0[1];

  return v5();
}

uint64_t sub_26139B0AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_26139DF90();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v9;
  v10 = sub_2613A0A9C();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v13;
  v14 = sub_2613A08AC();
  *(inited + 120) = v11;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_2613A078C();
  *(inited + 136) = v16;
  *(inited + 168) = v11;
  *(inited + 144) = v5;
  *(inited + 152) = v7;
  v17 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v18 = sub_2613A1C1C();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v1;
  *(v19 + 40) = v17;
  *(v19 + 48) = 0;

  sub_261266800(0, 0, v4, &unk_2613ADC40, v19);
}

uint64_t sub_26139B28C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23[-v4];
  if (a1)
  {
    v6 = sub_2613A097C();
  }

  else
  {
    v6 = sub_2613A095C();
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v11;
  v12 = sub_2613A0BAC();
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v15;
  v16 = sub_2613A08AC();
  *(inited + 120) = v13;
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  *(inited + 128) = sub_2613A084C();
  *(inited + 136) = v18;
  *(inited + 168) = v13;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  v19 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v20 = sub_2613A1C1C();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v1;
  *(v21 + 40) = v19;
  *(v21 + 48) = 0;

  sub_261266800(0, 0, v5, &unk_2613ADC48, v21);
}

uint64_t sub_26139B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_26139FA0C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139B540, 0, 0);
}

uint64_t sub_26139B540()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  (*(v4 + 16))(v1, v0[3], v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[10] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  v12 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_26139B67C, v12, v11);
}

uint64_t sub_26139B67C()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26139B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_261262F8C;

  return MEMORY[0x2821A5178](a3, a4);
}

uint64_t sub_26139B7C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0988, &unk_2613ADD10);
  v44 = v4;
  result = sub_2613A223C();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_26139E7E4(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2613A182C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_26139BBA8(int64_t a1, uint64_t a2)
{
  v40 = sub_26139F13C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2613A205C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26139E7E4(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2613A182C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_26139BEC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_26128A6E4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_26139C0A4();
      goto LABEL_9;
    }

    sub_26139B7C0(v18, a4 & 1);
    v21 = sub_26128A6E4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_2612EFB0C(v15, v12, v23, a2, v24);
  }
}

char *sub_26139C0A4()
{
  v1 = v0;
  v35 = sub_26139F13C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0988, &unk_2613ADD10);
  v3 = *v0;
  v4 = sub_2613A222C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26139C330(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2613A256C();
  sub_2613A19DC();
  v6 = sub_2613A25CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2613A241C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2612BBCD4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_26139C46C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_26139C46C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2613A205C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2613A256C();

        sub_2613A19DC();
        v10 = sub_2613A25CC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

_OWORD *sub_26139C630(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_26124E5EC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_26125A7B0(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v14, a4 & 1);
  v20 = sub_26124E5EC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D83B88]);
  sub_26139C788(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *sub_26139C788(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26125A7B0(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_26139C80C(void *a1)
{
  v2 = v1;
  v4 = sub_26139FA0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 0;
  v9 = a1[9];
  v2[2] = a1[8];
  v2[3] = v9;
  v10 = a1[4];
  v11 = a1[5];
  v2[4] = v10;
  v2[5] = v11;

  sub_26139F9FC();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager, v7, v4);
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap) = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer) = sub_26139F8BC();
  return v2;
}

uint64_t sub_26139C974()
{
  v2 = *(sub_26139FA0C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_261265144;

  return sub_26139B474(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_26139CA8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261391C44(v4, v5, v6, v2, v3);
}

uint64_t sub_26139CB28()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261392D44(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26139CC00(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v100 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v93 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  v103 = sub_26139FDAC();
  v11 = *(v103 - 1);
  v12 = MEMORY[0x28223BE20](v103);
  v102 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0990, &qword_2613ADD48);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v93 - v22;
  v24 = sub_2613A00BC();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v93 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  if (a2 >> 60 == 15)
  {
    return sub_2613A041C();
  }

  v97 = v11;
  v98 = &v93 - v33;
  v34 = v32;
  sub_26124C778(a1, a2);
  sub_26139E7E4(&qword_27FEA0998, MEMORY[0x277D43B78], MEMORY[0x277D43B88]);
  sub_26124B218(v34, v34, v23);
  if ((*(v25 + 48))(v23, 1, v34) == 1)
  {
    sub_26124A168(a1, a2);
    sub_26124C718(v23, &qword_27FEA0990, &qword_2613ADD48);
    return sub_2613A041C();
  }

  v95 = a1;
  v96 = a2;
  v36 = v98;
  (*(v25 + 32))(v98, v23, v34);
  v37 = *(v25 + 16);
  v37(v31, v36, v34);
  v38 = (*(v25 + 88))(v31, v34);
  if (v38 == *MEMORY[0x277D43B68])
  {
    v39 = sub_2613A045C();
    sub_26124A168(v95, v96);
    v40 = *(v25 + 8);
    v41 = v36;
LABEL_7:
    v40(v41, v34);
    return v39;
  }

  v93 = v34;
  v94 = v25;
  if (v38 != *MEMORY[0x277D43B48])
  {
    v44 = v37;
    v45 = v95;
    v46 = v96;
    if (v38 == *MEMORY[0x277D43B58])
    {
      v34 = v93;
      v47 = v94;
      (*(v94 + 96))(v31, v93);
      v48 = v97;
      v49 = v31;
      v50 = v103;
      (*(v97 + 32))(v20, v49, v103);
      (*(v48 + 16))(v18, v20, v50);
      v51 = (*(v48 + 88))(v18, v50);
      if (v51 == *MEMORY[0x277D43950])
      {
        v39 = sub_2613A049C();
        sub_26124A168(v45, v46);
        (*(v48 + 8))(v20, v50);
        v40 = *(v47 + 8);
        v41 = v98;
        goto LABEL_7;
      }

      if (v51 == *MEMORY[0x277D43960])
      {
        v39 = sub_2613A04BC();
        sub_26124A168(v45, v46);
        (*(v97 + 8))(v20, v50);
        goto LABEL_12;
      }

      v61 = v97;
      if (v51 == *MEMORY[0x277D43958])
      {
        v39 = sub_2613A04AC();
        sub_26124A168(v45, v46);
        (*(v61 + 8))(v20, v50);
        goto LABEL_12;
      }

      v62 = sub_26129B858();
      sub_26125A870(v62, v10, &qword_27FE9F560, &qword_2613A3CB0);
      v63 = sub_2613A124C();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v10, 1, v63) == 1)
      {
        sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v69 = sub_2613A122C();
        v70 = sub_2613A1D8C();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_261243000, v69, v70, "Unknown cycle", v71, 2u);
          MEMORY[0x266701350](v71, -1, -1);
        }

        (*(v64 + 8))(v10, v63);
        v45 = v95;
        v61 = v97;
      }

      v39 = sub_2613A041C();
      sub_26124A168(v45, v96);
      v72 = *(v61 + 8);
      v72(v20, v50);
      (*(v94 + 8))(v98, v93);
      v73 = v18;
LABEL_51:
      v72(v73, v50);
      return v39;
    }

    if (v38 != *MEMORY[0x277D43B50])
    {
      if (v38 == *MEMORY[0x277D43B40])
      {
        v59 = sub_2613A04CC();
      }

      else if (v38 == *MEMORY[0x277D43B60])
      {
        v59 = sub_2613A044C();
      }

      else
      {
        if (v38 != *MEMORY[0x277D43B70])
        {
          v74 = sub_26129B858();
          v75 = v100;
          sub_26125A870(v74, v100, &qword_27FE9F560, &qword_2613A3CB0);
          v76 = sub_2613A124C();
          v77 = *(v76 - 8);
          if ((*(v77 + 48))(v75, 1, v76) == 1)
          {
            sub_26124C718(v75, &qword_27FE9F560, &qword_2613A3CB0);
          }

          else
          {
            v82 = v93;
            v44(v28, v98, v93);
            v83 = sub_2613A122C();
            v84 = sub_2613A1D8C();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v104 = v103;
              *v85 = 136315138;
              sub_26139E7E4(&unk_27FEA09A0, MEMORY[0x277D43B78], MEMORY[0x277D43B90]);
              v86 = sub_2613A23EC();
              v88 = v87;
              (*(v94 + 8))(v28, v82);
              v89 = sub_26124C11C(v86, v88, &v104);

              *(v85 + 4) = v89;
              _os_log_impl(&dword_261243000, v83, v84, "Unknown transaction description: [ %s ]", v85, 0xCu);
              v90 = v103;
              __swift_destroy_boxed_opaque_existential_0Tm(v103);
              MEMORY[0x266701350](v90, -1, -1);
              v75 = v100;
              MEMORY[0x266701350](v85, -1, -1);
            }

            else
            {

              (*(v94 + 8))(v28, v82);
            }

            (*(v77 + 8))(v75, v76);
            v45 = v95;
          }

          v39 = sub_2613A041C();
          sub_26124A168(v45, v96);
          v91 = v93;
          v92 = *(v94 + 8);
          v92(v98, v93);
          v92(v31, v91);
          return v39;
        }

        v59 = sub_2613A042C();
      }

      v39 = v59;
      v42 = v45;
      v43 = v46;
      goto LABEL_11;
    }

    v53 = v93;
    v52 = v94;
    (*(v94 + 96))(v31, v93);
    v54 = v97;
    v55 = v101;
    v56 = v31;
    v50 = v103;
    (*(v97 + 32))(v101, v56, v103);
    v57 = v102;
    (*(v54 + 16))(v102, v55, v50);
    v58 = (*(v54 + 88))(v57, v50);
    if (v58 == *MEMORY[0x277D43950])
    {
      v39 = sub_2613A046C();
      sub_26124A168(v45, v46);
      (*(v54 + 8))(v55, v50);
      (*(v52 + 8))(v98, v53);
      return v39;
    }

    if (v58 == *MEMORY[0x277D43960])
    {
      v60 = sub_2613A048C();
    }

    else
    {
      if (v58 != *MEMORY[0x277D43958])
      {
        v65 = sub_26129B858();
        v66 = v99;
        sub_26125A870(v65, v99, &qword_27FE9F560, &qword_2613A3CB0);
        v67 = sub_2613A124C();
        v68 = *(v67 - 8);
        if ((*(v68 + 48))(v66, 1, v67) == 1)
        {
          sub_26124C718(v66, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v78 = sub_2613A122C();
          v79 = sub_2613A1D8C();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_261243000, v78, v79, "Unknown cycle", v80, 2u);
            v81 = v80;
            v55 = v101;
            MEMORY[0x266701350](v81, -1, -1);
          }

          (*(v68 + 8))(v66, v67);
        }

        v39 = sub_2613A041C();
        sub_26124A168(v45, v46);
        v72 = *(v54 + 8);
        v72(v55, v50);
        (*(v94 + 8))(v98, v93);
        v73 = v102;
        goto LABEL_51;
      }

      v60 = sub_2613A047C();
    }

    v39 = v60;
    sub_26124A168(v45, v46);
    (*(v54 + 8))(v55, v50);
    goto LABEL_12;
  }

  v39 = sub_2613A043C();
  v42 = v95;
  v43 = v96;
LABEL_11:
  sub_26124A168(v42, v43);
LABEL_12:
  (*(v94 + 8))(v98, v93);
  return v39;
}

uint64_t sub_26139D924()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v0 + v3;
  v8 = *(v7 + v4);
  v9 = *(v7 + v4 + 1);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_261265144;

  return sub_26139465C(v10, v11, v12, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26139DB08()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26139802C(v5, v6, v7, v4, v0 + v3);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_26139FA0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26139DCC4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261399678(v4, v5, v6, v2, v3);
}

uint64_t sub_26139DD5C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26139A0D8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_26139DE08()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261393D34(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26139DEFC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26139AC68(v3, v4, v5, v2);
}

uint64_t sub_26139DF90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0980, &qword_2613ADCC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v4 = sub_2613A189C();
  [v3 setDateFormat_];

  sub_26139F21C();
  v5 = sub_26139F23C();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v2, 1, v5) != 1)
  {
    v7 = sub_26139F22C();
    (*(v6 + 8))(v2, v5);
  }

  [v3 setTimeZone_];

  v8 = sub_26139F05C();
  v9 = [v3 stringFromDate_];

  v10 = sub_2613A18CC();
  return v10;
}

uint64_t type metadata accessor for AnalyticsTask(uint64_t a1)
{
  result = qword_27FEAEB30;
  if (!qword_27FEAEB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26139E1C0(uint64_t a1)
{
  result = sub_26139FA0C();
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

uint64_t sub_26139E28C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261265144;

  return sub_26139ADB0(v2, v0);
}

uint64_t sub_26139E31C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261393EB8(v5, v2, v3, v4);
}

uint64_t objectdestroy_114Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26139E420()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2613997F0(v4, v2, v3);
}

uint64_t objectdestroy_84Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26139E51C()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613982B4(v5, v4, v0 + v3);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_26139E6CC()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *(v7 + v4);
  v9 = *(v7 + v4 + 1);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_261265144;

  return sub_261394928(v10, v5, v6, v7, v8, v9);
}

uint64_t sub_26139E7E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_136Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26139E8F0()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261392FCC(v5, v4, v0 + v3);
}

uint64_t sub_26139E9C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261391DC0(v4, v2, v3);
}

uint64_t sub_26139EA64()
{
  v2 = *(sub_26139FA0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261265144;

  return sub_26139B710(v7, v0 + v3, v5, v6);
}