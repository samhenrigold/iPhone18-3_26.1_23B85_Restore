uint64_t sub_2612CF24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_2613A21CC();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  type metadata accessor for ReaderEvent(0);
  v7[15] = swift_task_alloc();
  v9 = sub_2613A21DC();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612CF430, 0, 0);
}

uint64_t sub_2612CF430(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 208);
  v3 = *(v1 + 56);
  *(v1 + 216) = *(*(v1 + 64) + 56);
  v4 = sub_26139FD0C();
  v5 = (*(*v3 + 280))();
  v7 = v6;

  *(v1 + 224) = v5;
  *(v1 + 33) = v7;
  v8 = sub_26129B780();
  *(v1 + 232) = v8;
  sub_26125A870(v8, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  *(v1 + 240) = v9;
  v10 = *(v9 - 8);
  *(v1 + 248) = v10;
  v11 = *(v10 + 48);
  *(v1 + 256) = v11;
  *(v1 + 264) = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v2, 1, v9) == 1)
  {
    sub_26124C718(*(v1 + 208), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_2612CEAB8(v5, v7);
      v18 = sub_26124C11C(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261243000, v12, v13, "mockAction - %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v10 + 8))(*(v1 + 208), v9);
  }

  v19 = sub_2613A263C();
  v21 = v20;
  sub_2613A24CC();
  v22 = swift_task_alloc();
  *(v1 + 272) = v22;
  *v22 = v1;
  v22[1] = sub_2612CF720;

  return sub_2612D3284(v19, v21, 0, 0, 1);
}

uint64_t sub_2612CF720()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v2[35] = v0;

  v6 = *(v4 + 8);
  v2[36] = v6;
  v2[37] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_2612CFFA8;
  }

  else
  {
    v7 = sub_2612CF8A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2612CF8A4()
{
  v1 = *(v0 + 33);
  v2 = (v1 >> 4) & 3;
  if (v2 - 1 >= 2)
  {
    if (!v2)
    {
      v12 = *(v0 + 224);
      v13 = *(v0 + 120);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_26124A228(v16, v17);
      *v13 = v12;
      *(v13 + 8) = v1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      (*(*(v54 - 8) + 56))(v13, 0, 10, v54);
      v14(v13);
LABEL_37:
      sub_2612D3EC4(v13);
      goto LABEL_38;
    }

    if (!(*(v0 + 224) & 0xFFFFFFFFFFFFFFFELL | v1 ^ 0x30))
    {
      goto LABEL_2;
    }

    v18 = *(v0 + 56);
    v19 = v18[4];
    if (v19 <= 1)
    {
      if (!v19)
      {
        v13 = *(v0 + 120);
        v14 = *(v0 + 72);
        v52 = v18[2];
        v53 = v18[3];
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = 1;
        sub_26124A228(v52, v53);
        *v13 = 0;
        v22 = 66;
        goto LABEL_35;
      }

      if (v19 != 1)
      {
        goto LABEL_41;
      }

      v13 = *(v0 + 120);
      v14 = *(v0 + 72);
      v47 = 2;
    }

    else
    {
      if (v19 != 2)
      {
        if (v19 == 3)
        {
          v13 = *(v0 + 120);
          v14 = *(v0 + 72);
          v50 = v18[2];
          v51 = v18[3];
          v18[2] = 0;
          v18[3] = 0;
          v18[4] = 4;
          sub_26124A228(v50, v51);
          *v13 = 4;
          v22 = 0x80;
          goto LABEL_35;
        }

        if (v19 == 4)
        {
          v13 = *(v0 + 120);
          v14 = *(v0 + 72);
          v20 = v18[2];
          v21 = v18[3];
          v18[2] = 0;
          v18[3] = 0;
          v18[4] = 5;
          sub_26124A228(v20, v21);
          *v13 = 666;
          v22 = 64;
LABEL_35:
          *(v13 + 8) = v22;
          goto LABEL_36;
        }

LABEL_41:
        v18[4] = 0;
        goto LABEL_2;
      }

      v13 = *(v0 + 120);
      v14 = *(v0 + 72);
      v47 = 3;
    }

    v48 = v18[2];
    v49 = v18[3];
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v47;
    sub_26124A228(v48, v49);
    *v13 = 4;
    v22 = 0x80;
    goto LABEL_35;
  }

LABEL_2:
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  *(v0 + 304) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 312) = v7;
  *(v0 + 320) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 10, v5);
  v4(v3);
  sub_2612D3EC4(v3);
  if (v2 == 1)
  {
    if (sub_2612CA6AC())
    {
      sub_2613A24CC();
      v23 = swift_task_alloc();
      *(v0 + 336) = v23;
      *v23 = v0;
      v23[1] = sub_2612D00A8;
      v11 = 5000000000000000000;
      goto LABEL_17;
    }

    v31 = *(v0 + 312);
    v32 = *(v0 + 304);
    v33 = *(v0 + 224);
    v13 = *(v0 + 120);
    v34 = *(v0 + 72);
    v35 = *(v0 + 56);
    v36 = *(v0 + 33) & 0xCF;
    v37 = *(v35 + 16);
    v38 = *(v35 + 24);
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    sub_26124A228(v37, v38);
    *v13 = v33;
    *(v13 + 8) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v31(v13, 0, 10, v32);
    v34(v13);
    goto LABEL_37;
  }

  if (v2 == 2 || *(v0 + 224) | *(v0 + 33) ^ 0x30)
  {
    *(v0 + 328) = type metadata accessor for Mock();
    if ((sub_26129B0F4(43) & 1) == 0)
    {
      v26 = *(v0 + 256);
      v28 = *(v0 + 232);
      v27 = *(v0 + 240);
      v29 = *(v0 + 200);
      v30 = sub_26129B284(35);
      sub_26125A870(v28, v29, &qword_27FE9F560, &qword_2613A3CB0);
      if (v26(v29, 1, v27) == 1)
      {
        sub_26124C718(*(v0 + 200), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v39 = sub_2613A122C();
        v40 = sub_2613A1D9C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = v30;
          _os_log_impl(&dword_261243000, v39, v40, "mockTapDelay %ld", v41, 0xCu);
          MEMORY[0x266701350](v41, -1, -1);
        }

        v42 = *(v0 + 240);
        v43 = *(v0 + 248);
        v44 = *(v0 + 200);

        (*(v43 + 8))(v44, v42);
      }

      sub_2613A24CC();
      v45 = swift_task_alloc();
      *(v0 + 352) = v45;
      *v45 = v0;
      v45[1] = sub_2612D04A0;
      v25 = ((v30 >> 63) & 0xF21F494C589C0000) + ((v30 * 0xDE0B6B3A7640000uLL) >> 64);
      v24 = 1000000000000000000 * v30;
      goto LABEL_25;
    }

    v8 = *(v0 + 120);
    v9 = *(v0 + 72);
    (*(v0 + 312))(v8, 2, 10, *(v0 + 304));
    v9(v8);
    sub_2612D3EC4(v8);
    sub_2613A24CC();
    v10 = swift_task_alloc();
    *(v0 + 368) = v10;
    *v10 = v0;
    v10[1] = sub_2612D0830;
    v11 = 2000000000000000000;
LABEL_17:
    v24 = v11;
    v25 = 0;
LABEL_25:

    return sub_2612D3284(v24, v25, 0, 0, 1);
  }

LABEL_38:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_2612CFFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D00A8()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 128);
  *(*v1 + 344) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_2612D03A0;
  }

  else
  {
    v5 = sub_2612D0228;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2612D0228()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 224);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 33) & 0xCF;
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_26124A228(v8, v9);
  *v4 = v3;
  *(v4 + 8) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v1(v4, 0, 10, v2);
  v5(v4);
  sub_2612D3EC4(v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2612D03A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D04A0()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 360) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_2612D0730;
  }

  else
  {
    v5 = sub_2612D0620;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2612D0620()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  (*(v0 + 312))(v1, 2, 10, *(v0 + 304));
  v2(v1);
  sub_2612D3EC4(v1);
  sub_2613A24CC();
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_2612D0830;

  return sub_2612D3284(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2612D0730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D0830()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 128);
  *(*v1 + 376) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_2612D0F4C;
  }

  else
  {
    v5 = sub_2612D09B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2612D09B0()
{
  v1 = *(v0 + 33);
  if ((v1 & 0x30) == 0x20)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);
    v5 = *(v0 + 120);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = v1 & 0xCF;
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_26124A228(v9, v10);
    *v5 = v4;
    *(v5 + 8) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v2(v5, 0, 10, v3);
    v6(v5);
    sub_2612D3EC4(v5);
LABEL_20:

    v48 = *(v0 + 8);

    return v48();
  }

  if ((sub_26129B0F4(43) & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
  v13 = *(v0 + 192);
  sub_26125A870(*(v0 + 232), v13, &qword_27FE9F560, &qword_2613A3CB0);
  if (v11(v13, 1, v12) == 1)
  {
    sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "waiting for prox tap", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 192);

    (*(v18 + 8))(v19, v17);
  }

  v20 = *(v0 + 56);
  if ((*(v20 + 40) & 1) != 0 || *(v20 + 48) > 999)
  {
LABEL_14:
    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    v34 = *(v0 + 184);
    sub_26125A870(*(v0 + 232), v34, &qword_27FE9F560, &qword_2613A3CB0);
    if (v32(v34, 1, v33) == 1)
    {
      sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = sub_2613A122C();
      v36 = sub_2613A1D9C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, ".completed - success", v37, 2u);
        MEMORY[0x266701350](v37, -1, -1);
      }

      v38 = *(v0 + 240);
      v39 = *(v0 + 248);
      v40 = *(v0 + 184);

      (*(v39 + 8))(v40, v38);
    }

    v41 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 120);
    v44 = *(v0 + 72);
    v45 = *(v0 + 56);
    sub_2612D2138(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v41(v43, 0, 10, v42);
    v44(v43);
    sub_2612D3EC4(v43);
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    v46 = *(v45 + 16);
    v47 = *(v45 + 24);
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    sub_26124A228(v46, v47);
    goto LABEL_20;
  }

  v21 = *(v0 + 104);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v24 = sub_2613A263C();
  v26 = v25;
  sub_2613A24CC();
  *(v0 + 40) = v24;
  *(v0 + 48) = v26;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v27 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2613A24AC();
  sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2613A21EC();
  v28 = *(v23 + 8);
  *(v0 + 384) = v28;
  *(v0 + 392) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v22);
  v29 = swift_task_alloc();
  *(v0 + 400) = v29;
  *v29 = v0;
  v29[1] = sub_2612D104C;
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);

  return MEMORY[0x2822008C8](v31, v0 + 16, v30, v27);
}

uint64_t sub_2612D0F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D104C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    (*(v2 + 384))(*(v2 + 112), *(v2 + 88));
    v3 = sub_2612D15C8;
  }

  else
  {
    v4 = *(v2 + 288);
    v5 = *(v2 + 144);
    v6 = *(v2 + 128);
    (*(v2 + 384))(*(v2 + 112), *(v2 + 88));
    v4(v5, v6);
    v3 = sub_2612D11A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2612D11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  v6 = *(v5 + 48);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  *(v5 + 48) = v8;
  if ((*(v5 + 40) & 1) == 0 && v8 < 1000)
  {
    v9 = *(v4 + 104);
    v10 = *(v4 + 88);
    v11 = *(v4 + 96);
    v12 = sub_2613A263C();
    v14 = v13;
    sub_2613A24CC();
    *(v4 + 40) = v12;
    *(v4 + 48) = v14;
    *(v4 + 24) = 0;
    *(v4 + 16) = 0;
    *(v4 + 32) = 1;
    v15 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_2613A24AC();
    sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_2613A21EC();
    v16 = *(v11 + 8);
    *(v4 + 384) = v16;
    *(v4 + 392) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    v17 = swift_task_alloc();
    *(v4 + 400) = v17;
    *v17 = v4;
    v17[1] = sub_2612D104C;
    a3 = *(v4 + 128);
    a1 = *(v4 + 112);
    a2 = v4 + 16;
    a4 = v15;

    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  v18 = *(v4 + 256);
  v19 = *(v4 + 240);
  v20 = *(v4 + 184);
  sub_26125A870(*(v4 + 232), v20, &qword_27FE9F560, &qword_2613A3CB0);
  if (v18(v20, 1, v19) == 1)
  {
    sub_26124C718(*(v4 + 184), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = sub_2613A122C();
    v22 = sub_2613A1D9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, ".completed - success", v23, 2u);
      MEMORY[0x266701350](v23, -1, -1);
    }

    v24 = *(v4 + 240);
    v25 = *(v4 + 248);
    v26 = *(v4 + 184);

    (*(v25 + 8))(v26, v24);
  }

  v27 = *(v4 + 312);
  v28 = *(v4 + 304);
  v29 = *(v4 + 120);
  v30 = *(v4 + 72);
  v31 = *(v4 + 56);
  sub_2612D2138(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v27(v29, 0, 10, v28);
  v30(v29);
  sub_2612D3EC4(v29);
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_26124A228(v32, v33);

  v34 = *(v4 + 8);

  return v34();
}

uint64_t sub_2612D15C8()
{
  (*(v0 + 288))(*(v0 + 144), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v18 = sub_2613A198C() + 32;

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
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

BOOL sub_2612D1984(uint64_t a1)
{
  v3 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = *(v1 + 24);
    *v5 = a1;
    v5[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
    (*(*(v8 - 8) + 56))(v5, 0, 10, v8);

    v6(v5);
    sub_26124A228(v6, v7);
    sub_2612D3EC4(v5);
  }

  return v6 != 0;
}

uint64_t sub_2612D1AC4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBF8, "(N");
  if (swift_dynamicCast())
  {
    sub_2612CA6A8(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_26139ED6C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26124C718(__src, &qword_27FE9FC00, &unk_2613A9DC0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2613A216C();
  }

  sub_2612C8CE0(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2612CA52C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2612D373C(sub_2612D407C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26139EFDC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26124F2C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2613A1A4C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2613A1A8C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2613A216C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26124F2C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2613A1A5C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_26139EFEC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_26139EFEC();
    sub_26124A168(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_26124A168(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26124C778(*&__src[0], *(&__src[0] + 1));

  sub_26124C6C4(v32, *(&v32 + 1));
  return v32;
}

void sub_2612D1FF4()
{
  sub_2612D1AC4(0xD000000000000017, 0x80000002613BA810);
  sub_2612D1AC4(0x444979656BLL, 0xE500000000000000);
  nullsub_1();
}

double sub_2612D206C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2612D1AC4(0xD000000000000011, 0x80000002613BA830);
  v4 = v3;
  v5 = sub_2612D1AC4(0x444979656BLL, 0xE500000000000000);
  sub_2612CCBD8(v2, v4, v5, v6, &unk_2873BA6E8, 0x747265436661656CLL, 0xEF65746163696669, v9);
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = *&v10;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  return result;
}

uint64_t sub_2612D2138@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_26139F13C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  v4 = sub_26129B0F4(7);
  v5 = sub_26139FD0C();
  sub_261259BE0(0, &qword_27FE9FCA8, 0x277CCABB0);
  v6 = sub_2613A1F2C();
  v7 = [v5 compare_];

  v8 = sub_26129B1A8(23);
  v10 = v9;
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v8;
  }

  else
  {

    v12 = 0;
    v10 = 0xE000000000000000;
  }

  v54 = (v7 == 1) | v4;
  sub_26139FCEC();
  v13 = sub_2612C9FF8(&unk_2873BA6C0);
  v15 = v14;
  v16 = sub_26139F00C();
  v55 = v17;
  v56 = v16;
  sub_26124C6C4(v13, v15);
  v18 = sub_2612E62B0(0x617461642D6D6973, 0xE800000000000000);
  v52 = v19;
  v53 = v18;
  v20 = sub_2612E62B0(0x617461642D6D6973, 0xE800000000000000);
  v50 = v21;
  v51 = v20;
  v22 = sub_2612D1AC4(0x6463672D6D6973, 0xE700000000000000);
  v48 = v23;
  v49 = v22;
  v24 = sub_2612E62B0(0x657474612D6D6973, 0xEA00000000007473);
  v46 = v25;
  v47 = v24;
  v26 = sub_2612D1AC4(0x647361632D6D6973, 0xE800000000000000);
  v28 = v27;
  v29 = sub_2612E67CC();
  v45 = v3;
  v31 = sub_2612E67DC(v29, v30, v26, v28);
  v33 = v32;

  sub_26124C6C4(v26, v28);
  v34 = sub_26139FD0C();
  v35 = [v34 stringValue];

  v36 = sub_2613A18CC();
  v38 = v37;

  v39 = sub_26139FC6C();
  v41 = v40;
  LOBYTE(v34) = sub_26139FCCC();
  v42 = sub_26125A798();
  return sub_2612CC02C(v45, 1634953558, 0xE400000000000000, 0, v56, v55, 0, v53, v57, v52, v51, v50, v49, v48, v47, v46, v31, v33, 0x6B656B2D6D6973, 0xE700000000000000, v36, v38, v39, v41, v34 & 1, v54 & 1, 1, 1, 1, 0, 0x3030303030303030, 0xEC00000030303030, 0, v12, v10, 0, 0x676E69662D6D6973, 0xEF746E6972707265, 0, 1, 0, 1, 0x417961702D6D6973, 0xEA00000000007070, v42 & 1);
}

uint64_t sub_2612D2510(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-v5];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  __swift_project_boxed_opaque_existential_1(a1 + 1, v7);
  v9 = sub_26124A620(v7, v8);
  v11 = v10;
  v21 = a1;
  sub_2612D2A90(sub_2612D3F20, v20, v9, v10);
  sub_26124A168(v9, v11);
  v26 = *a1;
  v25 = 0;
  sub_2612C10DC();
  sub_2613A1B1C();
  result = sub_2613A1B1C();
  if (v24[0] == v22)
  {
    sub_2612B5A20((a1 + 8), v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FCA0, qword_2613AA518);
    result = swift_dynamicCast();
    if (result)
    {
      if (v22 == 0x7061742D786F7270 && v23 == 0xE800000000000000)
      {
      }

      else
      {
        v13 = sub_2613A241C();

        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      v14 = sub_26129B780();
      sub_26125A870(v14, v6, &qword_27FE9F560, &qword_2613A3CB0);
      v15 = sub_2613A124C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v6, 1, v15) == 1)
      {
        result = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v17 = sub_2613A122C();
        v18 = sub_2613A1D9C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_261243000, v17, v18, "prox tap done", v19, 2u);
          MEMORY[0x266701350](v19, -1, -1);
        }

        result = (*(v16 + 8))(v6, v15);
      }

      *(v2 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_2612D2810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_26129B780();
  sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  if (v14 == 1)
  {
    result = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_2612B44CC(a2, v29);
    sub_26124C778(v9, v10);
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    sub_26124C6C4(v9, v10);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v18 = 33554946;
      v19 = sub_2612B5D04(v29[0]);
      v27 = a3;
      v20 = v19;
      sub_2612A0E50(v29);
      *(v18 + 4) = v20;
      *(v18 + 6) = 2080;
      v21 = sub_2612E6894(v9, v10);
      v23 = sub_26124C11C(v21, v22, &v28);
      a3 = v27;

      *(v18 + 8) = v23;
      _os_log_impl(&dword_261243000, v16, v17, "Monitor Event Type: [%hu] Data: [%s]", v18, 0x10u);
      v24 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x266701350](v24, -1, -1);
      MEMORY[0x266701350](v18, -1, -1);
    }

    else
    {
      sub_2612A0E50(v29);
    }

    result = (*(v13 + 8))(v8, v12);
  }

  *a3 = v14 == 1;
  return result;
}

uint64_t sub_2612D2A90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 60;
  if (a4 >> 60 == 15)
  {
    v6 = 0;
    return v6 | ((v5 > 0xE) << 8);
  }

  v9 = a3;
  v10 = a4;
  sub_26124C778(a3, a4);
  a1(&v11, &v9);
  if (!v4)
  {
    sub_26124C6C4(v9, v10);
    v6 = v11;
    return v6 | ((v5 > 0xE) << 8);
  }

  result = sub_26124C6C4(v9, v10);
  __break(1u);
  return result;
}

uint64_t sub_2612D2B30(uint64_t a1)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_2612B44CC(v4, v6);
      (*(*v1 + 360))(v6);
      sub_2612A0E50(v6);
      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2612D2BCC()
{
  sub_26124A228(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2612D2C04()
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_2612D2CC4@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 232))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2612D2E08()
{
  result = (*(**v0 + 264))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2612D2E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(**v7 + 272) + **(**v7 + 272));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2612C55B0;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2612D3110()
{
  result = (*(**v0 + 336))();
  if (v1)
  {
    return v3;
  }

  return result;
}

double sub_2612D3170@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 344))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2612D3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2613A21CC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2612D3384, 0, 0);
}

uint64_t sub_2612D3384()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2613A21DC();
  v5 = sub_2612D4168(&qword_27FE9FCB0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2613A24AC();
  sub_2612D4168(&qword_27FE9FCB8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2613A21EC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2612D3514;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2612D3514()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2612D36D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2612D36D0()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_2612D373C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26124C6C4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26124C6C4(v7, v6);
    *v4 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26139ED1C() && __OFSUB__(v7, sub_26139ED4C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26139ED5C();
      swift_allocObject();
      v14 = sub_26139ECFC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2612D3B4C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_26124C6C4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    sub_26139EF9C();
    result = sub_2612D3B4C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_2612D3AE0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2612D3B4C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26139ED1C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26139ED4C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26139ED3C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2612D3C00@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_2613A212C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2612D3C50()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612CE460(v4, v5, v6, v2, v3);
}

unint64_t sub_2612D3CE8()
{
  result = qword_27FE9FC98;
  if (!qword_27FE9FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FC98);
  }

  return result;
}

uint64_t sub_2612D3D3C(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v4 = (a2 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if ((a4 & 0x30) == 0x20)
      {
        return sub_2612CA6AC();
      }
    }

    else
    {
      v6 = a4 & 0x30;
      if (a1 | a2 ^ 0x30)
      {
        if (a2 == 48 && a1 == 1)
        {
          if (v6 == 48 && a3 == 1 && a4 == 48)
          {
            return 1;
          }
        }

        else if (v6 == 48 && a3 == 2 && a4 == 48)
        {
          return 1;
        }
      }

      else if (v6 == 48 && !a3 && a4 == 48)
      {
        return 1;
      }
    }
  }

  else if (v4)
  {
    if ((a4 & 0x30) == 0x10)
    {
      return sub_2612CA6AC();
    }
  }

  else if ((a4 & 0x30) == 0)
  {
    return sub_2612CA6AC();
  }

  return 0;
}

uint64_t sub_2612D3E18()
{
  v2 = v0[4];
  v3 = v0[13];
  v4 = v0[14];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612CF24C(v5, v6, v7, v2, (v0 + 5), v3, v4);
}

uint64_t sub_2612D3EC4(uint64_t a1)
{
  v2 = type metadata accessor for ReaderEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SimulatedCardReader.MockAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 9))
  {
    return (*a1 + 13);
  }

  v3 = (*(a1 + 8) & 0xC | (*(a1 + 8) >> 4) & 3) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SimulatedCardReader.MockAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t sub_2612D4014(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 4) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2612D4040(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0xC3 | (16 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 48;
  }

  return result;
}

void *sub_2612D407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2612D3AE0(sub_2612D40E4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2612D4104()
{
  v1 = *(v0 + 32);
  result = 10 * v1;
  if ((v1 * 10) >> 64 == (10 * v1) >> 63)
  {
    return (*(v0 + 16))();
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612D4168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612D41B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2612D41F8(char a1)
{
  result = 0x726F6D654D727073;
  switch(a1)
  {
    case 1:
    case 23:
    case 43:
    case 46:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
    case 42:
    case 50:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x4970696B53727073;
      break;
    case 5:
    case 34:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4D49556C61636F6CLL;
      break;
    case 7:
      result = 0x6F46726564616572;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x474D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x4C79636176697270;
      break;
    case 12:
      result = 0x4149556563726F66;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x6E41656C62616E65;
      break;
    case 16:
    case 33:
    case 39:
      v3 = 5;
      goto LABEL_33;
    case 17:
    case 27:
    case 28:
    case 51:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x6556534F6B636F6DLL;
      break;
    case 19:
      result = 0x6F676F4C6B636F6DLL;
      break;
    case 20:
      result = 0x4E424D6B636F6DLL;
      break;
    case 21:
      result = 0x43434D6B636F6DLL;
      break;
    case 22:
      result = 0x6E756F436B636F6DLL;
      break;
    case 24:
    case 40:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
    case 37:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 31:
      result = 0x6378454244666173;
      break;
    case 32:
      result = 0x726F434244666173;
      break;
    case 35:
      result = 0x447061546B636F6DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x504F434A6B636F6DLL;
      break;
    case 41:
      result = 0xD000000000000012;
      break;
    case 44:
      result = 0x54656C6261736964;
      break;
    case 45:
      result = 0x616C6544656E6F64;
      break;
    case 47:
    case 48:
      v3 = 9;
LABEL_33:
      result = v3 | 0xD000000000000012;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 52:
      result = 0xD000000000000012;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
      result = 0x73726556534F656DLL;
      break;
    case 55:
      result = 0x656369766544656DLL;
      break;
    case 56:
      result = 0x4E49506563726F66;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2612D47C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2612D41F8(*a1);
  v5 = v4;
  if (v3 == sub_2612D41F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_2612D484C()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612D41F8(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612D48B0(uint64_t a1)
{
  sub_2612D41F8(*v1);
  sub_2613A19DC();
}

uint64_t sub_2612D4904(uint64_t a1)
{
  v2 = *v1;
  sub_2613A256C();
  sub_2612D41F8(v2);
  sub_2613A19DC();

  return sub_2613A25CC();
}

unint64_t sub_2612D4964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612D4ADC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2612D4994@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612D41F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612D49C0()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612D4A24(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612D4A70@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2613A228C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2612D4ADC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A246C();

  if (v2 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2612D4B34()
{
  result = qword_27FE9FCC0;
  if (!qword_27FE9FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FCC0);
  }

  return result;
}

unint64_t sub_2612D4B8C()
{
  result = qword_27FE9FCC8;
  if (!qword_27FE9FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FCC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonPrefKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonPrefKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2612D4D40(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2612D4D74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a4;
  *(v8 + 176) = a3;
  *(v8 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v9 = sub_26139F64C();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D4E94, 0, 0);
}

uint64_t sub_2612D4E94()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_26139F43C();
  sub_26139F5DC();
  v7 = *(v2 + 8);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  type metadata accessor for SPRInstallDelegate();
  v8 = swift_allocObject();
  *(v0 + 144) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = *(**(v5 + 16) + 232);

  v17 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_2612D5038;
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 176);
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  return v17(v15, v14, v13, v11, v12, v8);
}

uint64_t sub_2612D5038(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_2612D59A8;
  }

  else
  {
    v4 = sub_2612D514C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2612D514C()
{
  v81 = v0;
  v1 = *(v0 + 160);
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000020, 0x80000002613BAE50);
  v2 = [v1 kernelsInstalled];
  v3 = MEMORY[0x277D837D0];
  v4 = sub_2613A1B7C();

  v5 = MEMORY[0x266700000](v4, v3);
  v7 = v6;

  MEMORY[0x2666FFEA0](v5, v7);

  MEMORY[0x2666FFEA0](0x72746E756F63202CLL, 0xEF203A65646F4379);
  v8 = [v1 countryCode];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2613A18CC();
    v12 = v11;
  }

  else
  {
    v12 = 0xE500000000000000;
    v10 = 0x7974706D65;
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  MEMORY[0x2666FFEA0](v10, v12);

  MEMORY[0x2666FFEA0](0xD000000000000019, 0x80000002613BAE80);
  v15 = &off_279AD5000;
  *(v0 + 16) = [v13 safStorageDuration];
  v16 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v16);

  v18 = v79;
  v17 = v80;
  v78 = sub_26129B780();
  sub_26124AA44(v78, v14);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  v77 = *(v20 + 48);
  v21 = v77(v14, 1, v19);
  v22 = *(v0 + 96);
  if (v21 == 1)
  {

    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v19;
      v27 = swift_slowAlloc();
      v79 = v27;
      *v25 = 136315138;
      v28 = sub_26124C11C(v18, v17, &v79);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_261243000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v29 = v27;
      v19 = v26;
      MEMORY[0x266701350](v29, -1, -1);
      v30 = v25;
      v15 = 0x279AD5000;
      MEMORY[0x266701350](v30, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(*(v0 + 96), v19);
  }

  v31 = *(v0 + 160);
  v32 = sub_2613A0C5C();
  v33 = [v31 countryCode];
  if (v33)
  {
    v34 = v33;
    v35 = sub_2613A18CC();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    v39 = v35 & 0xFFFFFFFFFFFFLL;
    if ((v37 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v37) & 0xF;
    }

    else
    {
      v40 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
      goto LABEL_85;
    }

    if ((v37 & 0x1000000000000000) != 0)
    {
      v43 = sub_26124E93C(v35, v37, 10);
      v61 = v75;
LABEL_73:

      if ((v61 & 1) == 0)
      {
        v32 = v43;
      }

      goto LABEL_75;
    }

    if ((v37 & 0x2000000000000000) != 0)
    {
      v79 = v35;
      v80 = v37 & 0xFFFFFFFFFFFFFFLL;
      if (v35 == 43)
      {
        if (v38)
        {
          if (--v38)
          {
            v43 = 0;
            v53 = &v79 + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                break;
              }

              v55 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                break;
              }

              v43 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                break;
              }

              ++v53;
              if (!--v38)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_91:
        __break(1u);
        return;
      }

      if (v35 != 45)
      {
        if (v38)
        {
          v43 = 0;
          v58 = &v79;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            v58 = (v58 + 1);
            if (!--v38)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v38)
      {
        if (--v38)
        {
          v43 = 0;
          v47 = &v79 + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              break;
            }

            v49 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v49 - v48;
            if (__OFSUB__(v49, v48))
            {
              break;
            }

            ++v47;
            if (!--v38)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        v41 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v41 = sub_2613A216C();
      }

      v42 = *v41;
      if (v42 == 43)
      {
        if (v39 >= 1)
        {
          v38 = v39 - 1;
          if (v39 != 1)
          {
            v43 = 0;
            if (v41)
            {
              v50 = v41 + 1;
              while (1)
              {
                v51 = *v50 - 48;
                if (v51 > 9)
                {
                  goto LABEL_71;
                }

                v52 = 10 * v43;
                if ((v43 * 10) >> 64 != (10 * v43) >> 63)
                {
                  goto LABEL_71;
                }

                v43 = v52 + v51;
                if (__OFADD__(v52, v51))
                {
                  goto LABEL_71;
                }

                ++v50;
                if (!--v38)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_90;
      }

      if (v42 != 45)
      {
        if (v39)
        {
          v43 = 0;
          if (v41)
          {
            while (1)
            {
              v56 = *v41 - 48;
              if (v56 > 9)
              {
                goto LABEL_71;
              }

              v57 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_71;
              }

              v43 = v57 + v56;
              if (__OFADD__(v57, v56))
              {
                goto LABEL_71;
              }

              ++v41;
              if (!--v39)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v43 = 0;
        LOBYTE(v38) = 1;
        goto LABEL_72;
      }

      if (v39 >= 1)
      {
        v38 = v39 - 1;
        if (v39 != 1)
        {
          v43 = 0;
          if (v41)
          {
            v44 = v41 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_71;
              }

              v46 = 10 * v43;
              if ((v43 * 10) >> 64 != (10 * v43) >> 63)
              {
                goto LABEL_71;
              }

              v43 = v46 - v45;
              if (__OFSUB__(v46, v45))
              {
                goto LABEL_71;
              }

              ++v44;
              if (!--v38)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v38) = 0;
LABEL_72:
          v61 = v38;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_75:
  while (1)
  {
    v62 = [*(v0 + 160) *(v15 + 1920)];
    v15 = 3600 * v62;
    if ((v62 * 3600) >> 64 == (3600 * v62) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_85:
  }

  v76 = v20;
  v63 = *(v0 + 128);
  v64 = *(v0 + 120);
  v65 = *(v0 + 104);
  v66 = *(v0 + 88);
  sub_26139F43C();
  sub_26139F5BC();
  v63(v64, v65);
  sub_26124AA44(v78, v66);
  if (v77(v66, 1, v19) == 1)
  {
    v67 = *(v0 + 88);

    sub_26124C718(v67, &qword_27FE9F560, &qword_2613A3CB0);
    v68 = v32;
  }

  else
  {
    v69 = sub_2613A122C();
    v70 = sub_2613A1D9C();
    v68 = v32;
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_261243000, v69, v70, "Kernels installed successfully", v71, 2u);
      MEMORY[0x266701350](v71, -1, -1);
    }

    v72 = *(v0 + 88);

    (*(v76 + 8))(v72, v19);
  }

  v74 = *(v0 + 8);

  v73.n128_f64[0] = v15;
  v74(v68, v73);
}

uint64_t sub_2612D59A8()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_26139F43C();
  sub_26139F5BC();
  v1(v2, v3);
  v5 = sub_26129B780();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[21];
    v9 = v8;
    v10 = sub_2613A122C();
    v11 = sub_2613A1D8C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[21];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v10, v11, "Kernels install failed with error: [ %@ ]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v17 = v0[10];

    (*(v7 + 8))(v17, v6);
  }

  v18 = v0[21];
  type metadata accessor for SPRErrorsUtils();
  v19 = sub_2613778B4(v18);
  sub_26139F2CC();
  sub_2612C5960();
  swift_allocError();
  *v20 = v19;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_2612D5C5C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2612D5CC4(uint64_t result, uint64_t a2)
{
  if (result == 3)
  {
    return (*(v2 + 16))(a2);
  }

  return result;
}

uint64_t sub_2612D5D58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612D5DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  result = MEMORY[0x2666FFEA0](a1, a2);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_2612D5E48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v9;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v51 = *(State - 8);
  v52 = State;
  v11 = MEMORY[0x28223BE20](State);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v42 - v14;
  swift_beginAccess();
  v42 = v0;
  v15 = *(v0 + 112);
  v16 = v13;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;
  v53 = v15;

  v23 = 0;
  v49 = v8;
  v44 = v5;
  v46 = v16;
  while (v20)
  {
LABEL_10:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v50;
    sub_2612DC97C(*(v53 + 56) + *(v51 + 72) * (v25 | (v23 << 6)), v50, type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612DC9E4(v26, v16, type metadata accessor for IdentityAnalyticsManager.LoadState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v16;
      v28 = v48;
      sub_2612D6730(v27, v48);
      sub_26125A870(v28, v8, &qword_27FE9FD30, "HM");
      v29 = type metadata accessor for IdentityAnalyticsReporter(0);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
      {
        sub_26124C718(v28, &qword_27FE9FD30, "HM");
        result = sub_26124C718(v8, &qword_27FE9FD30, "HM");
        v16 = v46;
      }

      else
      {
        v30 = *v8;
        v31 = v43;
        v45 = v8[1];

        sub_2612DC91C(v8, type metadata accessor for IdentityAnalyticsReporter);
        v32 = sub_2613A1C1C();
        v33 = *(v32 - 8);
        v34 = v47;
        (*(v33 + 56))(v47, 1, 1, v32);
        v35 = swift_allocObject();
        v35[2] = 0;
        v35[3] = 0;
        v35[4] = v30;
        v35[5] = v45;
        sub_26125A870(v34, v31, &unk_27FE9F580, &qword_2613A5480);
        LODWORD(v34) = (*(v33 + 48))(v31, 1, v32);

        if (v34 == 1)
        {
          sub_26124C718(v31, &unk_27FE9F580, &qword_2613A5480);
        }

        else
        {
          sub_2613A1C0C();
          (*(v33 + 8))(v31, v32);
        }

        v36 = v35[2];
        swift_unknownObjectRetain();

        if (v36)
        {
          swift_getObjectType();
          v37 = sub_2613A1BCC();
          v39 = v38;
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        sub_26124C718(v47, &unk_27FE9F580, &qword_2613A5480);
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_2613AA828;
        *(v40 + 24) = v35;
        if (v39 | v37)
        {
          v54 = 0;
          v55 = 0;
          v56 = v37;
          v57 = v39;
        }

        v8 = v49;
        v16 = v46;
        swift_task_create();

        result = sub_26124C718(v48, &qword_27FE9FD30, "HM");
      }
    }

    else
    {
      sub_2613A1C9C();
      v8 = v49;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      v41 = v42;

      swift_defaultActor_destroy();
      return v41;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612D6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139FA0C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D6514, 0, 0);
}

uint64_t sub_2612D6514()
{
  sub_26139F9FC();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2612D65B8;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x2821A5178](v3, v2);
}

uint64_t sub_2612D65B8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2612D6730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612D67C0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2612D6454(v4, v5, v6, v2, v3);
}

uint64_t sub_2612D6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26125A870(a3, v25 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2613A1BCC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2613A198C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2612D6B6C()
{
  sub_2612D5E48();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2612D6B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD38, &qword_2613AA848);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4[16] = swift_task_alloc();
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v4[17] = State;
  v4[18] = *(State - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D6CE4, v3, 0);
}

uint64_t sub_2612D6CE4()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v4 = v0[12];
  v3 = v0[13];

  v5 = sub_26124E5EC(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_8:
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[15];
    v17 = v0[16];
    v19 = v0[12];
    v18 = v0[13];
    v20 = sub_2613A1C1C();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = v18;

    v22 = sub_2612D6858(0, 0, v17, &unk_2613AA858, v21);
    v0[24] = v22;
    *v16 = v22;
    swift_storeEnumTagMultiPayload();
    v23 = *(v15 + 56);
    v0[25] = v23;
    v0[26] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v23(v16, 0, 1, v14);
    swift_beginAccess();

    sub_2612D7DB0(v16, v19, v18);
    swift_endAccess();
    v24 = swift_task_alloc();
    v0[27] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
    *v24 = v0;
    v24[1] = sub_2612D727C;
    v26 = v0[11];
    v27 = v22;
    goto LABEL_9;
  }

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_2612DC97C(*(v2 + 56) + *(v0[18] + 72) * v5, v8, type metadata accessor for IdentityAnalyticsManager.LoadState);

  sub_2612DC9E4(v8, v7, type metadata accessor for IdentityAnalyticsManager.LoadState);
  sub_2612DC97C(v7, v9, type metadata accessor for IdentityAnalyticsManager.LoadState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v0[19];
    v11 = v0[11];
    sub_2612DC91C(v0[21], type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612D6730(v10, v11);

    v12 = v0[1];

    return v12();
  }

  v28 = *v0[19];
  v0[22] = v28;
  v29 = swift_task_alloc();
  v0[23] = v29;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM");
  *v29 = v0;
  v29[1] = sub_2612D70B8;
  v26 = v0[11];
  v27 = v28;
LABEL_9:

  return MEMORY[0x282200460](v26, v27, v25);
}

uint64_t sub_2612D70B8()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_2612D71C8, v1, 0);
}

uint64_t sub_2612D71C8()
{
  v1 = *(v0 + 168);

  sub_2612DC91C(v1, type metadata accessor for IdentityAnalyticsManager.LoadState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2612D727C()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_2612D738C, v1, 0);
}

uint64_t sub_2612D738C()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  sub_26125A870(v0[11], v3, &qword_27FE9FD30, "HM");
  swift_storeEnumTagMultiPayload();
  v1(v3, 0, 1, v2);
  swift_beginAccess();

  sub_2612D7DB0(v3, v5, v4);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2612D74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_26139FA0C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D75D4, 0, 0);
}

uint64_t sub_2612D75D4()
{
  v17 = v0;
  v1 = v0[10];
  v2 = sub_26129B858();
  v0[11] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[12] = v3;
  v4 = *(v3 - 8);
  v0[13] = v4;
  v5 = *(v4 + 48);
  v0[14] = v5;
  v0[15] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
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
      v9 = v0[3];
      v8 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_26124C11C(v9, v8, &v16);
      _os_log_impl(&dword_261243000, v6, v7, "Creating identity analytics reporter for [%s]", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v4 + 8))(v0[10], v3);
  }

  sub_26139F9FC();
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_2612D7838;
  v14 = v0[3];
  v13 = v0[4];

  return MEMORY[0x2821A5168](v14, v13, 0, 0);
}

uint64_t sub_2612D7838(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_2612D7938, 0, 0);
}

uint64_t sub_2612D7938()
{
  v41 = v0;
  if (v0[18])
  {
    v39 = v0[18];
    v1 = v0[14];
    v2 = v0[12];
    v3 = v0[8];
    sub_26125A870(v0[11], v3, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1(v3, 1, v2) == 1)
    {
      sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v9 = sub_2613A122C();
      v10 = sub_2613A1D7C();

      if (os_log_type_enabled(v9, v10))
      {
        v12 = v0[3];
        v11 = v0[4];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_26124C11C(v12, v11, &v40);
        _os_log_impl(&dword_261243000, v9, v10, "Returning identity analytics reporter for [%s]", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x266701350](v14, -1, -1);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v0[13] + 8))(v0[8], v0[12]);
    }

    v38 = v0[17];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    v18 = v0[5];
    v19 = v0[2];
    v20 = v0[3];
    v21 = type metadata accessor for IdentityAnalyticsReporter(0);
    (*(v16 + 16))(&v19[*(v21 + 24)], v15, v18);
    v22 = *(v21 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    v23 = sub_26139F8BC();
    (*(v16 + 8))(v15, v18);
    *&v19[v22] = v23;
    *(v19 + 2) = v20;
    *(v19 + 3) = v17;
    *v19 = v38;
    *(v19 + 1) = v39;
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  }

  else
  {
    v4 = v0[14];
    v5 = v0[12];
    v6 = v0[9];
    sub_26125A870(v0[11], v6, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = v4(v6, 1, v5);
    v8 = v0[9];
    if (v7 == 1)
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();

      v26 = os_log_type_enabled(v24, v25);
      v28 = v0[6];
      v27 = v0[7];
      v29 = v0[5];
      if (v26)
      {
        v31 = v0[3];
        v30 = v0[4];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_26124C11C(v31, v30, &v40);
        _os_log_impl(&dword_261243000, v24, v25, "Could not create identity analytics reporter for [%s]", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x266701350](v33, -1, -1);
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v28 + 8))(v27, v29);
      (*(v0[13] + 8))(v0[9], v0[12]);
    }

    v34 = v0[2];
    v35 = type metadata accessor for IdentityAnalyticsReporter(0);
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_2612D7DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD38, &qword_2613AA848);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  MEMORY[0x28223BE20](State);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26124C718(a1, &qword_27FE9FD38, &qword_2613AA848);
    sub_2612DCB4C(a2, a3, v9);

    return sub_26124C718(v9, &qword_27FE9FD38, &qword_2613AA848);
  }

  else
  {
    sub_2612DC9E4(a1, v12, type metadata accessor for IdentityAnalyticsManager.LoadState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2612DD21C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2612D7F84()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2612D7FC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdentityAnalyticsReporter(0);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = v5;
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_2613A087C();
  if (*(a1 + 16))
  {
    v14 = sub_26124E5EC(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_26124C994(*(a1 + 56) + 32 * v14, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v17 = v49;
        v43 = v48;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v17 = 0xE700000000000000;
  v43 = 0x6E776F6E6B6E75;
LABEL_7:
  v18 = sub_2613A065C();
  if (*(a1 + 16))
  {
    v20 = sub_26124E5EC(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_26124C994(*(a1 + 56) + 32 * v20, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v23 = v49;
        v44 = v48;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v44 = 0x6E776F6E6B6E75;
  v23 = 0xE700000000000000;
LABEL_13:
  v24 = sub_26129B858();
  sub_26125A870(v24, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {

    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v42 = v2;

    v27 = sub_2613A122C();
    v28 = sub_2613A1D9C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50[0] = v41;
      *v29 = 136315394;
      v30 = sub_26124C11C(v43, v17, v50);
      v43 = v6;
      v31 = v30;

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = sub_26124C11C(v44, v23, v50);

      *(v29 + 14) = v32;
      v6 = v43;
      _os_log_impl(&dword_261243000, v27, v28, "Sending identity analytics event [ %s ] with hierarchyToken [ %s ]", v29, 0x16u);
      v33 = v41;
      swift_arrayDestroy();
      MEMORY[0x266701350](v33, -1, -1);
      MEMORY[0x266701350](v29, -1, -1);
    }

    else
    {
    }

    v2 = v42;
    (*(v26 + 8))(v11, v25);
  }

  v34 = sub_2613A1C1C();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  sub_2612DC97C(v2, v6, type metadata accessor for IdentityAnalyticsReporter);
  v36 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v37 = (v46 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  sub_2612DC9E4(v6, v38 + v36, type metadata accessor for IdentityAnalyticsReporter);
  *(v38 + v37) = a1;

  sub_261266800(0, 0, v35, &unk_2613AA868, v38);
}

uint64_t sub_2612D8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for IdentityAnalyticsReporter(0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612D860C, 0, 0);
}

uint64_t sub_2612D860C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = *(v4 + *(v0[4] + 28));
  sub_2612DC97C(v4, v1, type metadata accessor for IdentityAnalyticsReporter);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  sub_2612DC9E4(v1, v8 + v6, type metadata accessor for IdentityAnalyticsReporter);
  *(v8 + v7) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_2612D41B0(&qword_27FE9F420, &qword_27FE9F400, &unk_2613A4A90, MEMORY[0x277D43720]);
  v10 = sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_2612D876C, v10, v9);
}

uint64_t sub_2612D876C()
{
  sub_26139F8AC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2612D8800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2612D8820, 0, 0);
}

uint64_t sub_2612D8820()
{
  v1 = v0[2];
  type metadata accessor for IdentityAnalyticsReporter(0);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_261266708;
  v5 = v0[3];

  return MEMORY[0x2821A5190](v2, v3, v5, 0);
}

double sub_2612D88E0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_26139F1CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_26139F13C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v31 = *a1;
  v32 = v17;
  v33 = a1[2];
  sub_26139F12C();
  v18 = sub_26139F0DC();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  sub_26139F1BC();
  sub_26139F1AC();
  (*(v7 + 8))(v9, v6);
  v21 = sub_26139F19C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F3B8, &qword_2613A4828);
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v23 = sub_26139F17C();
    v24 = v25;
    (*(v22 + 8))(v12, v21);
  }

  v26 = v32;
  *a4 = v31;
  *(a4 + 16) = v26;
  result = *&v33;
  *(a4 + 32) = v33;
  v28 = v30;
  *(a4 + 48) = v29;
  *(a4 + 56) = v28;
  *(a4 + 64) = v18;
  *(a4 + 72) = v20;
  *(a4 + 80) = v23;
  *(a4 + 88) = v24;
  return result;
}

uint64_t sub_2612D8B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD40, &qword_2613AA880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v7;
  *(inited + 48) = sub_2613A0A4C();
  *(inited + 56) = v8;
  *(inited + 64) = sub_2613A082C();
  *(inited + 72) = v9;
  *(inited + 80) = sub_2613A08DC();
  *(inited + 88) = v10;
  *(inited + 96) = sub_2613A086C();
  *(inited + 104) = v11;
  *(inited + 112) = a2;
  *(inited + 120) = a3;

  *(inited + 128) = sub_2613A05FC();
  *(inited + 136) = v12;
  *(inited + 144) = sub_2613A036C();
  *(inited + 152) = v13;
  *(inited + 160) = sub_2613A065C();
  *(inited + 168) = v14;
  v15 = *(v3 + 72);
  *(inited + 176) = *(v3 + 64);
  *(inited + 184) = v15;

  *(inited + 192) = sub_2613A07EC();
  *(inited + 200) = v16;
  v21 = *(v3 + 80);
  *(inited + 208) = v21;
  sub_2612DDE08(&v21, &v20);
  v17 = sub_2612BEECC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD48, qword_2613AA888);
  swift_arrayDestroy();
  v18 = sub_2612D8CF0(v17);

  sub_2612D7FC8(v18);
}

unint64_t sub_2612D8CF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
    v2 = sub_2613A224C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
        swift_dynamicCast();
        sub_26125A7B0(&v22, v24);
        sub_26125A7B0(v24, v25);
        sub_26125A7B0(v25, &v23);
        result = sub_26124E5EC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_26125A7B0(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_26125A7B0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2612D8F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v36 = a2;
  v37 = a4;
  v13 = sub_26139F13C();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IdentityAnalyticsReporter(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v7;
  v46 = v7[1];
  v47 = v22;
  v45 = v7[2];
  sub_2612DC97C(a1, v21, type metadata accessor for IdentityAnalyticsReporter);
  sub_2612DC97C(a6, v18, type metadata accessor for IdentityAnalyticsRequestInformation);
  v23 = v7[2];
  v24 = v7[3];
  v25 = v7[5];
  v43 = v7[4];
  v44 = v24;
  v42 = v25;
  v26 = v7[1];
  *a7 = *v7;
  a7[1] = v26;
  a7[2] = v23;
  v27 = type metadata accessor for IdentityAnalyticsTransaction(0);
  sub_2612DC97C(v21, a7 + v27[5], type metadata accessor for IdentityAnalyticsReporter);
  v28 = (a7 + v27[7]);
  v29 = v37;
  *v28 = v36;
  v28[1] = a3;
  v28[2] = v29;
  v28[3] = a5;
  sub_2612DC97C(v18, a7 + v27[6], type metadata accessor for IdentityAnalyticsRequestInformation);
  v30 = v43;
  *(a7 + v27[8]) = v44;
  v41 = v30;
  sub_2612DDE08(&v47, v40);
  sub_2612DDE08(&v46, v40);
  sub_2612DDE08(&v45, v40);
  sub_2612DDE08(&v44, v40);
  sub_2612DDE08(&v43, v40);
  sub_2612DDE08(&v42, v40);

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  sub_26139F12C();
  v31 = sub_26139F0DC();
  v33 = v32;
  (*(v38 + 8))(v15, v39);
  MEMORY[0x2666FFEA0](v31, v33);

  v34 = v41;
  sub_2612DC91C(v18, type metadata accessor for IdentityAnalyticsRequestInformation);
  sub_2612DC91C(v21, type metadata accessor for IdentityAnalyticsReporter);
  *(a7 + v27[9]) = v34;
  *(a7 + v27[10]) = v42;
  return (*(*(v27 - 1) + 56))(a7, 0, 1, v27);
}

uint64_t sub_2612D92B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for IdentityAnalyticsRequestInformation(0) + 24);
  v7 = sub_2613A006C();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t sub_2612D933C(uint64_t a1)
{

  v3 = sub_2613A065C();
  v5 = v4;
  v6 = (v1 + *(type metadata accessor for IdentityAnalyticsTransaction(0) + 36));
  v7 = *v6;
  v8 = v6[1];
  v19 = MEMORY[0x277D837D0];
  *&v18 = v7;
  *(&v18 + 1) = v8;
  sub_26125A7B0(&v18, &v16);

  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v15 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_0(&v16, v17);
  MEMORY[0x28223BE20](v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  sub_261267EDC(*v11, v11[1], v3, v5, v8, &v15);

  __swift_destroy_boxed_opaque_existential_0Tm(&v16);
  sub_2612D7FC8(v15);
}

uint64_t sub_2612D94B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v107 - v2;
  v4 = sub_2613A006C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v107 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v107 - v12;
  v14 = (v0 + *(type metadata accessor for IdentityAnalyticsTransaction(0) + 24));
  v15 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  v16 = *(v5 + 16);
  v16(v13, &v14[*(v15 + 24)], v4);
  v16(v11, v13, v4);
  v17 = (*(v5 + 88))(v11, v4);
  if (v17 == *MEMORY[0x277D43B18])
  {
    v18 = sub_2613A06DC();
    v20 = v19;
    v21 = sub_2613A052C();
    v22 = MEMORY[0x277D837D0];
    v118 = MEMORY[0x277D837D0];
    *&v117 = v21;
    *(&v117 + 1) = v23;
    sub_26125A7B0(&v117, &v115);
    v24 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v24;
    v26 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v26);
    v113 = v13;
    v28 = v14;
    v29 = (&v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    sub_261267EDC(*v29, v29[1], v18, v20, isUniquelyReferenced_nonNull_native, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v31 = v114;
    v32 = sub_2613A076C();
    v34 = v33;
    v118 = v22;
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_26125A7B0(&v117, &v115);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v31;
    v36 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v36);
    v38 = (&v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    sub_261267EDC(*v38, v38[1], v32, v34, v35, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v40 = v114;
    v41 = sub_2613A05BC();
    v43 = v42;
    v44 = *v28;
    v118 = MEMORY[0x277D839B0];
    LOBYTE(v117) = v44;
    sub_26125A7B0(&v117, &v115);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v40;
    v46 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    sub_2612814D0(*v46, v41, v43, v45, &v114);

    (*(v5 + 8))(v113, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    return v114;
  }

  if (v17 == *MEMORY[0x277D43B28])
  {
    v47 = sub_2613A06DC();
    v49 = v48;
    v50 = sub_2613A050C();
    v51 = MEMORY[0x277D837D0];
    v118 = MEMORY[0x277D837D0];
    *&v117 = v50;
    *(&v117 + 1) = v52;
    sub_26125A7B0(&v117, &v115);
    v53 = MEMORY[0x277D84F98];
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v53;
    v55 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v55);
    v113 = v14;
    v57 = (&v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    sub_261267EDC(*v57, v57[1], v47, v49, v54, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v59 = v114;
    v60 = sub_2613A076C();
    v62 = v61;
    v63 = sub_2613A04FC();
LABEL_7:
    v118 = v51;
    *&v117 = v63;
    *(&v117 + 1) = v64;
    sub_26125A7B0(&v117, &v115);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v59;
    v78 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v78);
    v80 = (&v107 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))(v80);
    sub_261267EDC(*v80, v80[1], v60, v62, v77, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v82 = v114;
    v83 = sub_2613A061C();
    v85 = v84;
    sub_2612DA050(*(v113 + 1));
    v87 = v86;
    v89 = v88;

    v118 = v51;
    *&v117 = v87;
    *(&v117 + 1) = v89;
    sub_26125A7B0(&v117, &v115);
    LOBYTE(v87) = swift_isUniquelyReferenced_nonNull_native();
    v114 = v82;
    v90 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v90);
    v92 = (&v107 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    sub_261267EDC(*v92, v92[1], v83, v85, v87, &v114);

    (*(v5 + 8))(v13, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    return v114;
  }

  if (v17 == *MEMORY[0x277D43B20])
  {
    v65 = sub_2613A06DC();
    v67 = v66;
    v68 = sub_2613A050C();
    v51 = MEMORY[0x277D837D0];
    v118 = MEMORY[0x277D837D0];
    *&v117 = v68;
    *(&v117 + 1) = v69;
    sub_26125A7B0(&v117, &v115);
    v70 = MEMORY[0x277D84F98];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v70;
    v72 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    MEMORY[0x28223BE20](v72);
    v113 = v14;
    v74 = (&v107 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    sub_261267EDC(*v74, v74[1], v65, v67, v71, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v59 = v114;
    v60 = sub_2613A076C();
    v62 = v76;
    v63 = sub_2613A051C();
    goto LABEL_7;
  }

  v95 = sub_26129B858();
  sub_26125A870(v95, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v96 = sub_2613A124C();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v3, 1, v96) == 1)
  {
    v98 = *(v5 + 8);
    v98(v13, v4);
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16(v8, v13, v4);
    v99 = sub_2613A122C();
    LODWORD(v113) = sub_2613A1D8C();
    if (os_log_type_enabled(v99, v113))
    {
      v100 = swift_slowAlloc();
      v112 = v100;
      v111 = swift_slowAlloc();
      *&v117 = v111;
      *v100 = 136315138;
      sub_2612DE868(&qword_27FE9FD98, MEMORY[0x277D43B30], MEMORY[0x277D43B38]);
      v109 = v99;
      v108 = sub_2613A23EC();
      v102 = v101;
      v98 = *(v5 + 8);
      v110 = v5 + 8;
      v98(v8, v4);
      v103 = sub_26124C11C(v108, v102, &v117);

      v104 = v112;
      *(v112 + 1) = v103;
      v105 = v109;
      _os_log_impl(&dword_261243000, v109, v113, "Unknown Identity analytics data transfer type: [ %s ]", v104, 0xCu);
      v106 = v111;
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      MEMORY[0x266701350](v106, -1, -1);
      MEMORY[0x266701350](v112, -1, -1);
    }

    else
    {

      v98 = *(v5 + 8);
      v98(v8, v4);
    }

    v98(v13, v4);
    (*(v97 + 8))(v3, v96);
  }

  v98(v11, v4);
  return MEMORY[0x277D84F98];
}

uint64_t sub_2612DA050(uint64_t a1)
{
  swift_getKeyPath();
  v45 = MEMORY[0x277D84F90];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_39;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        swift_getAtKeyPath();

        result = sub_2612DD778(v47);
      }

      while (v5);
      continue;
    }
  }

  v42 = sub_2612BEFE0(v45);

  v46 = MEMORY[0x277D84F90];
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v43 = a1;
LABEL_16:
  if (v12)
  {
    v15 = v14;
LABEL_21:
    v16 = *(*(a1 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
    v12 &= v12 - 1;
    v17 = 1 << *(v16 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    if (!v19)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_25:
      while (1)
      {
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v24 = v23 | (v21 << 6);
        if (*(*(v16 + 56) + v24))
        {
          break;
        }

        if (!v19)
        {
          goto LABEL_27;
        }
      }

      v26 = (*(v16 + 48) + 16 * v24);
      v40 = *v26;
      v41 = v26[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2612DC724(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v39 = v28 + 1;
        v31 = v22;
        v32 = *(v22 + 16);
        result = sub_2612DC724((v27 > 1), v28 + 1, 1, v31);
        v29 = v39;
        v28 = v32;
        v22 = result;
      }

      *(v22 + 16) = v29;
      v30 = v22 + 16 * v28;
      *(v30 + 32) = v40;
      *(v30 + 40) = v41;
    }

    while (v19);
LABEL_27:
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v25 >= v20)
      {

        result = sub_2612DD684(v22);
        v14 = v15;
        a1 = v43;
        goto LABEL_16;
      }

      v19 = *(v16 + 64 + 8 * v25);
      ++v21;
      if (v19)
      {
        v21 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v44 = sub_2612BEFE0(v46);

        sub_2612DA514(v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD78, &qword_2613AAA70);
        sub_2612D41B0(&qword_27FE9FD80, &qword_27FE9FD78, &qword_2613AAA70, MEMORY[0x277D83970]);
        sub_2612DE814();
        v33 = sub_2613A1B0C();
        v35 = v34;

        MEMORY[0x2666FFEA0](v33, v35);

        MEMORY[0x2666FFEA0](125, 0xE100000000000000);

        sub_2612DA514(v44);
        v36 = sub_2613A1B0C();
        v38 = v37;

        MEMORY[0x2666FFEA0](v36, v38);

        MEMORY[0x2666FFEA0](125, 0xE100000000000000);

        return 123;
      }

      v12 = *(v2 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612DA514(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v43 = MEMORY[0x277D84F90];
    v4 = v2;
    sub_2612DDA34(0, v2, 0);
    v42 = v43;
    v5 = v1 + 56;
    v6 = sub_2613A204C();
    v7 = 0;
    v35 = v1 + 64;
    v36 = v1 + 56;
    v37 = v1;
    v34 = v4;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_35;
      }

      v41 = v6 >> 6;
      v39 = v7;
      v40 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = v10[1];
      if ((v11 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v12 = *v10 & 0xFFFFFFFFFFFFLL;
      }

      swift_bridgeObjectRetain_n();
      if (v12)
      {
        while (sub_2613A1ACC() != 40 || v13 != 0xE100000000000000)
        {
          v14 = sub_2613A241C();

          if ((v14 & 1) != 0 || 4 * v12 == sub_2613A19FC() >> 14)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_19:
      v15 = v4;
      v16 = sub_2613A1AEC();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      if (v38)
      {
        goto LABEL_39;
      }

      v23 = v42;
      v25 = *(v42 + 16);
      v24 = *(v42 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2612DDA34((v24 > 1), v25 + 1, 1);
        v23 = v42;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (v23 + 32 * v25);
      v26[4] = v16;
      v26[5] = v18;
      v26[6] = v20;
      v26[7] = v22;
      v1 = v37;
      v8 = 1 << *(v37 + 32);
      if (v6 >= v8)
      {
        goto LABEL_36;
      }

      v5 = v36;
      v27 = *(v36 + 8 * v41);
      if ((v27 & (1 << v6)) == 0)
      {
        goto LABEL_37;
      }

      v42 = v23;
      if (v40 != *(v37 + 36))
      {
        goto LABEL_38;
      }

      v28 = v27 & (-2 << (v6 & 0x3F));
      if (v28)
      {
        v8 = __clz(__rbit64(v28)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v39;
      }

      else
      {
        v29 = v41 << 6;
        v30 = v41 + 1;
        v31 = (v35 + 8 * v41);
        v9 = v39;
        while (v30 < (v8 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_26124A218(v6, v40, 0);
            v8 = __clz(__rbit64(v32)) + v29;
            goto LABEL_31;
          }
        }

        sub_26124A218(v6, v40, 0);
LABEL_31:
        v15 = v34;
      }

      v7 = v9 + 1;
      v6 = v8;
      v4 = v15;
      if (v7 == v15)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    __break(1u);
  }

  return result;
}

uint64_t sub_2612DA84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_26139FD9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D43928])
  {
    v10 = sub_2613A03BC();
LABEL_3:
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    return v11;
  }

  if (v9 == *MEMORY[0x277D43920])
  {
    return sub_2613A03CC();
  }

  if (v9 != *MEMORY[0x277D43930])
  {
    v13 = sub_26129B858();
    sub_26125A870(v13, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
      v10 = sub_2613A03CC();
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Unknown Identity analytics documentSubType", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v15 + 8))(v4, v14);
      v10 = sub_2613A03CC();
    }

    goto LABEL_3;
  }

  return sub_2613A03DC();
}

uint64_t sub_2612DAB2C()
{
  v1 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2612D94B4();
  v7 = sub_2613A05FC();
  v9 = v8;
  v10 = sub_2613A036C();
  v111 = MEMORY[0x277D837D0];
  *&v110 = v10;
  *(&v110 + 1) = v11;
  sub_26125A7B0(&v110, &v108);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v6;
  v13 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v13);
  v15 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_261267EDC(*v15, v15[1], v7, v9, isUniquelyReferenced_nonNull_native, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v17 = v107;
  v18 = sub_2613A067C();
  v20 = v19;
  v21 = *(v0 + v2[8] + 8);
  sub_2612DC97C(v0, v5, type metadata accessor for IdentityAnalyticsTransaction);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  sub_2612DC9E4(v5, v23 + v22, type metadata accessor for IdentityAnalyticsTransaction);

  v25 = sub_2612DE4D8(v24, sub_2612DE49C, v23);

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  *&v110 = v25;
  sub_26125A7B0(&v110, &v108);
  LOBYTE(v25) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v17;
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v26);
  v28 = (&v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2612DDB60(*v28, v18, v20, v25, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v30 = v107;
  v31 = sub_2613A068C();
  v33 = v32;
  v34 = (v0 + v2[9]);
  v35 = *v34;
  v36 = v34[1];
  v37 = MEMORY[0x277D837D0];
  v111 = MEMORY[0x277D837D0];
  *&v110 = v35;
  *(&v110 + 1) = v36;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v30;
  v38 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v38);
  v40 = (&v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  sub_261267EDC(*v40, v40[1], v31, v33, v36, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v42 = v107;
  v43 = sub_2613A06FC();
  v45 = v44;
  v46 = v34[2];
  v47 = v34[3];
  v111 = v37;
  *&v110 = v46;
  *(&v110 + 1) = v47;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v47) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v42;
  v48 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v48);
  v50 = (&v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  sub_261267EDC(*v50, v50[1], v43, v45, v47, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v52 = v107;
  v53 = sub_2613A07BC();
  v55 = v54;
  v56 = v0[4];
  v57 = v0[5];
  v111 = v37;
  *&v110 = v56;
  *(&v110 + 1) = v57;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v57) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v52;
  v58 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v58);
  v60 = (&v106 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  sub_261267EDC(*v60, v60[1], v53, v55, v57, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v62 = v107;
  v63 = sub_2613A080C();
  v65 = v64;
  v66 = (v0 + v2[10]);
  v67 = *v66;
  v68 = v66[1];
  v111 = v37;
  *&v110 = v67;
  *(&v110 + 1) = v68;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v68) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v62;
  v69 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v69);
  v71 = (&v106 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  sub_261267EDC(*v71, v71[1], v63, v65, v68, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v73 = v107;
  v74 = sub_2613A07FC();
  v76 = v75;
  v77 = v0[2];
  v78 = v0[3];
  v111 = v37;
  *&v110 = v77;
  *(&v110 + 1) = v78;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v78) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v73;
  v79 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v79);
  v81 = (&v106 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81);
  sub_261267EDC(*v81, v81[1], v74, v76, v78, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v83 = v107;
  v84 = sub_2613A069C();
  v86 = v85;
  v87 = sub_2612DA050(v21);
  v89 = v88;

  v111 = v37;
  *&v110 = v87;
  *(&v110 + 1) = v89;
  sub_26125A7B0(&v110, &v108);
  LOBYTE(v87) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v83;
  v90 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v90);
  v92 = (&v106 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  sub_261267EDC(*v92, v92[1], v84, v86, v87, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  v94 = v107;
  v95 = sub_2613A07EC();
  v97 = v96;
  v98 = (v0 + v2[12]);
  v99 = *v98;
  v100 = v98[1];
  v111 = v37;
  *&v110 = v99;
  *(&v110 + 1) = v100;
  sub_26125A7B0(&v110, &v108);

  LOBYTE(v100) = swift_isUniquelyReferenced_nonNull_native();
  v107 = v94;
  v101 = __swift_mutable_project_boxed_opaque_existential_0(&v108, v109);
  MEMORY[0x28223BE20](v101);
  v103 = (&v106 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103);
  sub_261267EDC(*v103, v103[1], v95, v97, v100, &v107);

  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  return v107;
}

uint64_t sub_2612DB5CC@<X0>(void *a1@<X8>)
{
  v3 = sub_26139F13C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityAnalyticsReporter(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v69 = v1[2];
  v70 = v11;
  v14 = v1[5];
  v68 = v1[4];
  v77 = v14;
  v78 = v13;
  v15 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v16 = v1 + v15[5];
  v72 = v10;
  sub_2612DC97C(v16, v10, type metadata accessor for IdentityAnalyticsReporter);
  v17 = v15[6];
  v18 = (v1 + v15[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v64 = v18[2];
  v65 = v19;
  v74 = v7;
  sub_2612DC97C(v1 + v17, v7, type metadata accessor for IdentityAnalyticsRequestInformation);
  v22 = v15[9];
  v23 = (v1 + v15[8]);
  v24 = v23[1];
  v62 = *v23;
  v25 = *(v1 + v22 + 8);
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v26 = *(v1 + v22) & 0xFFFFFFFFFFFFLL;
  }

  v71 = v12;

  v67 = v20;

  v66 = v21;

  v63 = v24;

  if (v26)
  {
    v27 = 4 * v26;
    while (sub_2613A1ACC() != 46 || v28 != 0xE100000000000000)
    {
      v29 = sub_2613A241C();

      if ((v29 & 1) != 0 || v27 == sub_2613A19FC() >> 14)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v30 = sub_2613A1AEC();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = MEMORY[0x2666FFE20](v30, v32, v34, v36);
  v39 = v38;

  v40 = (v1 + v15[10]);
  v42 = *v40;
  v41 = v40[1];
  v43 = v71;
  *a1 = v70;
  a1[1] = v43;
  v44 = v78;
  a1[2] = v69;
  a1[3] = v44;
  v45 = v77;
  a1[4] = v68;
  a1[5] = v45;
  v46 = v72;
  sub_2612DC97C(v72, a1 + v15[5], type metadata accessor for IdentityAnalyticsReporter);
  v47 = (a1 + v15[7]);
  v48 = v67;
  *v47 = v65;
  v47[1] = v48;
  v49 = v66;
  v47[2] = v64;
  v47[3] = v49;
  v50 = v74;
  sub_2612DC97C(v74, a1 + v15[6], type metadata accessor for IdentityAnalyticsRequestInformation);
  v51 = (a1 + v15[8]);
  v52 = v63;
  *v51 = v62;
  v51[1] = v52;
  v79 = v37;
  v80 = v39;

  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  v53 = v73;
  sub_26139F12C();
  v54 = sub_26139F0DC();
  v56 = v55;
  (*(v75 + 8))(v53, v76);
  MEMORY[0x2666FFEA0](v54, v56);

  v57 = v79;
  v58 = v80;
  sub_2612DC91C(v50, type metadata accessor for IdentityAnalyticsRequestInformation);
  result = sub_2612DC91C(v46, type metadata accessor for IdentityAnalyticsReporter);
  v60 = (a1 + v15[9]);
  *v60 = v57;
  v60[1] = v58;
  v61 = (a1 + v15[10]);
  *v61 = v42;
  v61[1] = v41;
  return result;
}

uint64_t sub_2612DBA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612DAB2C();
  v5 = sub_2613A087C();
  v7 = v6;
  v8 = sub_2613A0A4C();
  v9 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x277D837D0];
  *&v40 = v8;
  *(&v40 + 1) = v10;
  sub_26125A7B0(&v40, &v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v4;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(&v38, v39);
  MEMORY[0x28223BE20](v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_261267EDC(*v14, v14[1], v5, v7, isUniquelyReferenced_nonNull_native, &v37);

  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  v16 = v37;
  v17 = sub_2613A082C();
  v19 = v18;
  v20 = sub_2613A08DC();
  v41 = v9;
  *&v40 = v20;
  *(&v40 + 1) = v21;
  sub_26125A7B0(&v40, &v38);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v16;
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v38, v39);
  MEMORY[0x28223BE20](v23);
  v25 = (&v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_261267EDC(*v25, v25[1], v17, v19, v22, &v37);

  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  v27 = v37;
  v28 = sub_2613A086C();
  v30 = v29;
  v41 = v9;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_26125A7B0(&v40, &v38);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v37 = v27;
  v31 = __swift_mutable_project_boxed_opaque_existential_0(&v38, v39);
  MEMORY[0x28223BE20](v31);
  v33 = (&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  sub_261267EDC(*v33, v33[1], v28, v30, a2, &v37);

  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  sub_2612D933C(v37);
}

uint64_t sub_2612DBD9C()
{
  v0 = sub_2612DAB2C();
  v1 = sub_2613A087C();
  v3 = v2;
  v4 = sub_2613A0A9C();
  v5 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = v4;
  *(&v28 + 1) = v6;
  sub_26125A7B0(&v28, &v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v0;
  v8 = __swift_mutable_project_boxed_opaque_existential_0(&v26, v27);
  MEMORY[0x28223BE20](v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  sub_261267EDC(*v10, v10[1], v1, v3, isUniquelyReferenced_nonNull_native, &v25);

  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  v12 = v25;
  v13 = sub_2613A082C();
  v15 = v14;
  v16 = sub_2613A08BC();
  v29 = v5;
  *&v28 = v16;
  *(&v28 + 1) = v17;
  sub_26125A7B0(&v28, &v26);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v12;
  v19 = __swift_mutable_project_boxed_opaque_existential_0(&v26, v27);
  MEMORY[0x28223BE20](v19);
  v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  sub_261267EDC(*v21, v21[1], v13, v15, v18, &v25);

  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  sub_2612D933C(v25);
}

uint64_t sub_2612DBFE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4D40;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v5;
  v6 = sub_2613A0A9C();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_2613A05FC();
  *(inited + 88) = v9;
  v10 = sub_2613A036C();
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_2613A082C();
  *(inited + 136) = v12;
  v13 = sub_2613A08CC();
  *(inited + 168) = v7;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  *(inited + 176) = sub_2613A07DC();
  *(inited + 184) = v15;
  *(inited + 216) = v7;
  *(inited + 192) = a1;
  *(inited + 200) = a2;

  v16 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v16);
}

uint64_t sub_2612DC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v9;
  v10 = sub_2613A0BAC();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v13;
  *(inited + 120) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  *(inited + 128) = sub_2613A084C();
  *(inited + 136) = v14;
  *(inited + 168) = v11;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v15 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v15);
}

uint64_t sub_2612DC210(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v7;
  v8 = sub_2613A08BC();
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  v10 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v10);
}

uint64_t sub_2612DC2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v11;
  v12 = sub_2613A08BC();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_2613A086C();
  *(inited + 136) = v14;
  *(inited + 168) = v9;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v15 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v15);
}

uint64_t sub_2612DC410(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v5;
  v6 = sub_2613A0A5C();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v9;
  v10 = sub_2613A08BC();
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_2613A07DC();
  *(inited + 136) = v12;
  *(inited + 168) = v7;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v13 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  sub_2612D933C(v13);
}

uint64_t sub_2612DC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v11;
  v12 = sub_2613A08CC();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  v14 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (a4)
  {

    v15 = sub_2613A084C();
    v17 = v16;
    v29 = v9;
    *&v28 = a3;
    *(&v28 + 1) = a4;
    sub_26125A7B0(&v28, &v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    v19 = __swift_mutable_project_boxed_opaque_existential_0(&v26, v27);
    MEMORY[0x28223BE20](v19);
    v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    sub_261267EDC(*v21, v21[1], v15, v17, isUniquelyReferenced_nonNull_native, &v25);

    __swift_destroy_boxed_opaque_existential_0Tm(&v26);
    v14 = v25;
  }

  sub_2612D933C(v14);
}

char *sub_2612DC724(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612DC870(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261262AA4;

  return sub_2612D74C0(a1, v6, v7, v5, v4);
}

uint64_t sub_2612DC91C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2612DC97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612DC9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612DCA4C()
{
  v2 = *(type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2612D8544(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_2612DCB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26124E5EC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2612DD42C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
    v19 = *(State - 8);
    sub_2612DC9E4(v11 + *(v19 + 72) * v8, a3, type metadata accessor for IdentityAnalyticsManager.LoadState);
    sub_2612DD030(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = State;
  }

  else
  {
    v17 = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2612DCCB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v39 = *(State - 8);
  MEMORY[0x28223BE20](State - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDA0, &qword_2613AAA90);
  v40 = v4;
  result = sub_2613A223C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2612DC9E4(v28, v41, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      else
      {
        sub_2612DC97C(v28, v41, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2612DC9E4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for IdentityAnalyticsManager.LoadState);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2612DD030(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    while (1)
    {
      sub_2613A256C();

      sub_2613A19DC();
      v9 = sub_2613A25CC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IdentityAnalyticsManager.LoadState(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2612DD21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26124E5EC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2612DD42C();
      goto LABEL_7;
    }

    sub_2612DCCB8(v15, a4 & 1);
    v22 = sub_26124E5EC(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for IdentityAnalyticsManager.LoadState(0) - 8) + 72) * v12;

    return sub_2612DE9B0(a1, v20);
  }

LABEL_13:
  sub_2612DD380(v12, a2, a3, a1, v18);
}

uint64_t sub_2612DD380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  result = sub_2612DC9E4(a4, v9 + *(*(State - 8) + 72) * a1, type metadata accessor for IdentityAnalyticsManager.LoadState);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2612DD42C()
{
  v1 = v0;
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  v31 = *(State - 8);
  MEMORY[0x28223BE20](State - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDA0, &qword_2613AAA90);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2612DC97C(*(v4 + 56) + v26, v30, type metadata accessor for IdentityAnalyticsManager.LoadState);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2612DC9E4(v25, *(v27 + 56) + v26, type metadata accessor for IdentityAnalyticsManager.LoadState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *sub_2612DD684(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2612DC724(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2612DD778(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2612DC724(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_2612BC628(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_2612DC724((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_2612BF078(result);
  *v1 = v4;
  return result;
}

char *sub_2612DDA34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2612DDA54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2612DDA54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD90, &qword_2613AAA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_2612DDB60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_26124E5EC(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_26125A7B0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v16, a4 & 1);
  v22 = sub_26124E5EC(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2612DDD58(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v28);
}

_OWORD *sub_2612DDD58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_26125A7B0(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_2612DDEF0(uint64_t a1)
{
  sub_26139FA0C();
  if (v1 <= 0x3F)
  {
    sub_261268658();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2612DDFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2612DDFE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void sub_2612DE138(uint64_t a1)
{
  sub_2612DE1CC(319);
  if (v1 <= 0x3F)
  {
    sub_2613A006C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2612DE1CC(uint64_t a1)
{
  if (!qword_27FE9FD50)
  {
    sub_26139FD9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FD58, &qword_2613AA9F8);
    sub_2612DE868(&qword_27FE9FD60, MEMORY[0x277D43938], MEMORY[0x277D43940]);
    v1 = sub_2613A181C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE9FD50);
    }
  }
}

uint64_t sub_2612DE2AC(uint64_t a1)
{
  result = type metadata accessor for IdentityAnalyticsReporter(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IdentityAnalyticsRequestInformation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2612DE35C(uint64_t a1)
{
  sub_2612DE3D0(319);
  if (v1 <= 0x3F)
  {
    sub_2612DE444(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2612DE3D0(uint64_t a1)
{
  if (!qword_27FE9FD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FD30, "HM");
    v1 = sub_2613A1CBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE9FD68);
    }
  }
}

void sub_2612DE444(uint64_t a1)
{
  if (!qword_27FE9FD70)
  {
    type metadata accessor for IdentityAnalyticsReporter(255);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE9FD70);
    }
  }
}

uint64_t sub_2612DE49C(uint64_t a1)
{
  type metadata accessor for IdentityAnalyticsTransaction(0);

  return sub_2612DA84C(a1);
}

uint64_t sub_2612DE4D8(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_26139FD9C();
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v35 = v3;
    v49 = MEMORY[0x277D84F90];
    v9 = v5;
    sub_261265DD4(0, v7, 0);
    v48 = v49;
    v10 = a1 + 64;
    result = sub_2613A204C();
    v11 = v9;
    v12 = result;
    v13 = 0;
    v40 = v9 + 8;
    v41 = v9 + 16;
    v36 = a1 + 72;
    v37 = v7;
    v38 = v9;
    v39 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v46 = *(a1 + 36);
      v17 = v42;
      v16 = v43;
      v18 = v11;
      (*(v11 + 16))(v42, *(a1 + 48) + *(v11 + 72) * v12, v43);
      v19 = v44(v17);
      v47 = v20;
      result = (*(v18 + 8))(v17, v16);
      v21 = v48;
      v49 = v48;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_261265DD4((v22 > 1), v23 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      v25 = v47;
      *(v24 + 32) = v19;
      *(v24 + 40) = v25;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v39;
      v26 = *(v39 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v48 = v21;
      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v11 = v38;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v36 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            v33 = v38;
            result = sub_26124A218(v12, v46, 0);
            v11 = v33;
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        v34 = v38;
        result = sub_26124A218(v12, v46, 0);
        v11 = v34;
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v37)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2612DE814()
{
  result = qword_27FE9FD88;
  if (!qword_27FE9FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FD88);
  }

  return result;
}

uint64_t sub_2612DE868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612DE8B0()
{
  v2 = *(type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612D8800(v5, v0 + v3, v4);
}

uint64_t sub_2612DE9B0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_2612DEA14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261265144;

  return sub_261262E94(a1, v4);
}

__n128 sub_2612DEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(a1 + 16);
  *(v14 + 48) = *a1;
  *(v14 + 64) = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  *(v14 + 80) = result;
  *(v14 + 96) = v17;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  *(v14 + 24) = a4;
  *(v14 + 112) = a3;
  *(v14 + 120) = a6;
  *(v14 + 128) = a7;
  return result;
}

void sub_2612DEB54()
{
  v1 = v0;
  v2 = sub_26139F64C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F3EC();
  sub_26139F5DC();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for SPRUtils();
  v6 = v1[4];
  v24[0] = v1[3];
  v24[1] = v6;
  v7 = v1[6];
  v24[2] = v1[5];
  v24[3] = v7;
  v8 = sub_2612C70E4(v24);
  v10 = v9;
  v22 = v8;
  v11 = (v9 >> 8) & 1;
  v23 = v9 & 0x1FF;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA00, &qword_2613A7AD0);
  sub_26124A238(sub_2612DED28, v1, v12, &v19);
  v13 = v19;
  v14 = v21;
  v15 = v20;
  v16[1] = v19;
  v17 = v20;
  v18 = v21;
  sub_26124A42C(sub_2612DEFA4, v1, v12, &v22);
  sub_2612B48CC(v8, v10, v11);
  sub_2612B48CC(v13, v15, v14);
  sub_2612B48CC(v22, v23, SHIBYTE(v23));
}

uint64_t sub_2612DED28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 112);
  type metadata accessor for SPRReaderDelegate();
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 56) = v3;
  *(v4 + 16) = sub_2612E2644;
  *(v4 + 24) = v1;
  *(v4 + 32) = sub_2612E2668;
  *(v4 + 40) = v1;
  v5 = *(**(v1 + 40) + 256);
  swift_retain_n();
  v6 = v3;
  v5(v2, v4);
}

uint64_t sub_2612DEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  return result;
}

uint64_t sub_2612DEE70(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderEvent(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  (*(a2 + 24))(v5);
  v10 = *(a2 + 120);
  *v7 = v8;
  v7[8] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  (*(*(v11 - 8) + 56))(v7, 0, 10, v11);
  v10(v7);
  return sub_2612E25E4(v7, type metadata accessor for ReaderEvent);
}

uint64_t sub_2612DEFD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_26129B780();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    if ((*(v2 + 16) & 1) == 0)
    {
      return (*(v2 + 120))(a1);
    }
  }

  else
  {
    v14 = sub_26125A798();
    v15 = sub_261291AA8();
    sub_26129BC3C(v14 & 1, v2, 0xD000000000000015, 0x80000002613BAF90, v15, v16);

    (*(v12 + 8))(v9, v11);
    if ((*(v2 + 16) & 1) == 0)
    {
      return (*(v2 + 120))(a1);
    }
  }

  sub_2612CD17C(a1, v6, type metadata accessor for ReaderEvent);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  v18 = (*(*(v17 - 8) + 48))(v6, 10, v17);
  result = sub_2612E25E4(v6, type metadata accessor for ReaderEvent);
  if (v18 == 1)
  {
    *(v2 + 16) = 0;
    return (*(*v2 + 184))(2);
  }

  return result;
}

uint64_t sub_2612DF26C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t sub_2612DF29C(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v42 = sub_26129B780();
  sub_26125A870(v42, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v41 = *(v15 + 48);
  if (v41(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = *(v2 + 16);
    if ((v16 & 1) == 0)
    {
LABEL_3:
      v37 = v16;
      v36 = v15;
      *(v2 + 16) = 1;
      v38 = v14;
      v17 = *(v2 + 120);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      v19 = *(*(v18 - 8) + 56);
      v19(v5, 3, 10, v18);
      v17(v5);
      v20 = sub_2612E25E4(v5, type metadata accessor for ReaderEvent);
      (*(**(v2 + 40) + 264))(v20);
      *v5 = v39;
      v5[8] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v19(v5, 0, 10, v18);
      v17(v5);
      v21 = v38;
      v22 = sub_2612E25E4(v5, type metadata accessor for ReaderEvent);
      (*(v2 + 24))(v22);
      v23 = v40;
      sub_26125A870(v42, v40, &qword_27FE9F560, &qword_2613A3CB0);
      if (v41(v23, 1, v21) == 1)
      {
        sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v27 = sub_2613A122C();
        v28 = sub_2613A1D9C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_261243000, v27, v28, "readTask cancelled", v29, 2u);
          MEMORY[0x266701350](v29, -1, -1);
        }

        (*(v36 + 8))(v23, v21);
      }

      v16 = v37;
      return v16 ^ 1u;
    }
  }

  else
  {
    v24 = sub_26125A798();
    v25 = sub_261291AA8();
    sub_26129BC3C(v24 & 1, v2, 0xD000000000000014, 0x80000002613BAFB0, v25, v26);

    (*(v15 + 8))(v13, v14);
    v16 = *(v2 + 16);
    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_26125A870(v42, v9, &qword_27FE9F560, &qword_2613A3CB0);
  if (v41(v9, 1, v14) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = v15;
    v31 = sub_2613A122C();
    v32 = sub_2613A1D8C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_261243000, v31, v32, "readTask already cancelled", v33, 2u);
      MEMORY[0x266701350](v33, -1, -1);
    }

    (*(v30 + 8))(v9, v14);
  }

  return v16 ^ 1u;
}

uint64_t sub_2612DF7F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612DF87C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  if (*(v2 + 48) == 1)
  {
    v8 = sub_26129B780();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "Abort returning result, read has already completed", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      return (*(v10 + 8))(v7, v9);
    }
  }

  else
  {
    *(v2 + 48) = 1;
    (*(v2 + 32))(v5);
    return (*(v2 + 16))(a1);
  }
}

void sub_2612DFA4C(void *a1)
{
  v2 = v1;
  v4 = sub_26139F64C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F63C();
  sub_26139F5BC();
  v8 = (*(v5 + 8))(v7, v4);
  v9 = MEMORY[0x266700BB0](v8);
  sub_2612DFB3C(a1, v2);
  objc_autoreleasePoolPop(v9);
}

uint64_t sub_2612DFB3C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v24 - v5;
  v6 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransactionData(0);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SPRUtils();
  v12 = [a1 vasResponses];
  sub_261259BE0(0, &qword_27FE9FDB0, 0x277D64050);
  v13 = sub_2613A1B7C();

  v14 = a2[7];
  v15 = sub_26139FD3C();
  v16 = sub_2612C6448(v13, v15);

  sub_2612C6750(a1, v14, v16, v11);

  v17 = sub_2612DFEDC(a1);
  if (v18 < 0xFCu)
  {
    v20 = v17;
    v21 = v18;
    v22 = v27;
    sub_2612CD17C(v11, v27, type metadata accessor for TransactionData);
    (*(v25 + 56))(v22, 0, 1, v26);
    (*(*a2 + 192))(v20, v21, v22);
    sub_26124C718(v22, &qword_27FE9F340, &unk_2613A4B40);
  }

  else
  {
    sub_2612CD17C(v11, v8, type metadata accessor for TransactionData);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
    (*(*(v19 - 8) + 56))(v8, 0, 10, v19);
    (*(*a2 + 144))(v8);
    sub_2612E25E4(v8, type metadata accessor for ReaderEvent);
  }

  return sub_2612E25E4(v11, type metadata accessor for TransactionData);
}

uint64_t sub_2612DFEDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v68 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v71 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = sub_26129B780();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v17 = v16 + 48;
  v72 = *(v16 + 48);
  v73 = v16;
  if (v72(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v68 = v17;
    v18 = a1;
    v19 = v14;
    v20 = v9;
    v21 = v15;
    v22 = sub_2613A122C();
    v23 = sub_2613A1D7C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "checkSuccessExceptions", v24, 2u);
      MEMORY[0x266701350](v24, -1, -1);
    }

    v15 = v21;
    (*(v73 + 8))(v13, v21);
    v9 = v20;
    v14 = v19;
    a1 = v18;
  }

  if ([a1 payAppletFinalStatus] == 7)
  {
    type metadata accessor for ReadError(0);
    v74 = [a1 readError];
    sub_261259E78(MEMORY[0x277D84F90]);
    sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);
    sub_26139EE5C();
    v25 = v75;
    v26 = v71;
    sub_26125A870(v14, v71, &qword_27FE9F560, &qword_2613A3CB0);
    if (v72(v26, 1, v15) == 1)
    {
      sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v44 = v25;
      v45 = sub_2613A122C();
      v46 = sub_2613A1D7C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v44;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_261243000, v45, v46, "Applet has error: %@", v47, 0xCu);
        sub_26124C718(v48, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v48, -1, -1);
        v51 = v47;
        v26 = v71;
        MEMORY[0x266701350](v51, -1, -1);
      }

      (*(v73 + 8))(v26, v15);
    }

    type metadata accessor for SPRErrorsUtils();
    v52 = sub_2613777E4([a1 readError]);

    return v52;
  }

  v71 = v15;
  v27 = [a1 outcomeStatus];
  sub_26139FC8C();
  v28 = sub_26139FF5C();
  if (v28 == sub_26139FF5C())
  {
    v29 = sub_26139FD0C();
    sub_261259BE0(0, &qword_27FE9FE70, 0x277CCA980);
    v30 = sub_2613A1F2C();
    v31 = sub_2613A1F3C();

    if ((v31 & 1) == 0 && v27 == 32 && [a1 forFallback])
    {
      sub_26125A870(v14, v9, &qword_27FE9F560, &qword_2613A3CB0);
      v32 = v71;
      if (v72(v9, 1, v71) == 1)
      {
        sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v57 = sub_2613A122C();
        v58 = sub_2613A1D7C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_261243000, v57, v58, "Fallback and outcome is decline, ignore decline", v59, 2u);
          MEMORY[0x266701350](v59, -1, -1);
        }

        (*(v73 + 8))(v9, v32);
      }

      return 0;
    }
  }

  v33 = [a1 outcomeStatus];
  sub_26139FC8C();
  v34 = sub_26139FF5C();
  if (v34 == sub_26139FF5C() && (v35 = sub_26139FD0C(), sub_261259BE0(0, &qword_27FE9FE70, 0x277CCA980), v36 = sub_2613A1F2C(), v37 = sub_2613A1F3C(), v35, v36, (v37 & 1) == 0) && v33 == 32)
  {
    v38 = v14;
    v39 = v70;
    sub_26125A870(v38, v70, &qword_27FE9F560, &qword_2613A3CB0);
    v40 = v71;
    if (v72(v39, 1, v71) == 1)
    {
      sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = sub_2613A122C();
      v55 = sub_2613A1D7C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v54, v55, "Outcome is declined for purchase", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      (*(v73 + 8))(v39, v40);
    }

    return 11;
  }

  else
  {
    sub_26139FC8C();
    v41 = sub_26139FF5C();
    if (v41 != sub_26139FF5C())
    {
      return 0;
    }

    v42 = [a1 outcomeStatus];
    if (v42 <= 0x30 && ((1 << v42) & 0x1000000010001) != 0)
    {
      return 0;
    }

    v43 = v69;
    sub_26125A870(v14, v69, &qword_27FE9F560, &qword_2613A3CB0);
    if (v72(v43, 1, v71) == 1)
    {
      sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v60 = a1;
      v61 = sub_2613A122C();
      v62 = sub_2613A1D7C();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v75 = v64;
        *v63 = 136315138;
        [v60 outcomeStatus];
        v65 = sub_2613A1F0C();
        v67 = sub_26124C11C(v65, v66, &v75);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_261243000, v61, v62, "Outcome has exceptions %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x266701350](v64, -1, -1);
        MEMORY[0x266701350](v63, -1, -1);
      }

      (*(v73 + 8))(v43, v71);
    }

    return 10;
  }
}

uint64_t sub_2612E0834(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v60 - v16;
  v18 = sub_26139F64C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F63C();
  sub_26139F5BC();
  (*(v19 + 8))(v21, v18);
  _s3__C4CodeOMa_1(0);
  v68 = 14001;
  sub_2612E2250(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
  if (sub_26139EDAC())
  {
    v22 = sub_26129B780();
    sub_26125A870(v22, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v17, 1, v23) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = sub_2613A122C();
      v41 = sub_2613A1D8C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Read Error: [ service disconnected ]", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      (*(v24 + 8))(v17, v23);
    }

    v43 = type metadata accessor for TransactionData(0);
    (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
    (*(*v3 + 192))(0, 66, v11);
LABEL_23:
    v47 = v11;
    return sub_26124C718(v47, &qword_27FE9F340, &unk_2613A4B40);
  }

  v68 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  type metadata accessor for ReadError(0);
  if (!swift_dynamicCast())
  {
    v44 = sub_26129B780();
    sub_26125A870(v44, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v45 = sub_2613A124C();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v15, 1, v45) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = a1;
      v49 = sub_2613A122C();
      v50 = sub_2613A1D8C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67 = a1;
        v68 = v64;
        *v51 = 136315138;
        v52 = a1;
        v53 = sub_2613A195C();
        v55 = sub_26124C11C(v53, v54, &v68);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_261243000, v49, v50, "Unknown readCard error. Error: [ %s ]", v51, 0xCu);
        v56 = v64;
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x266701350](v56, -1, -1);
        MEMORY[0x266701350](v51, -1, -1);
      }

      (*(v46 + 8))(v15, v45);
    }

    v57 = type metadata accessor for TransactionData(0);
    (*(*(v57 - 8) + 56))(v11, 1, 1, v57);
    (*(*v3 + 192))(3, 66, v11);
    goto LABEL_23;
  }

  v26 = v67;
  v27 = type metadata accessor for TransactionData(0);
  v28 = *(v27 - 1);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v29(v9, 1, 1, v27);
  if (a2)
  {
    v60[1] = type metadata accessor for SPRUtils();
    v61 = a2;
    v31 = [v61 vasResponses];
    v62 = v30;
    v32 = v31;
    sub_261259BE0(0, &qword_27FE9FDB0, 0x277D64050);
    v33 = sub_2613A1B7C();

    v63 = v29;
    v34 = v3[7];
    v35 = sub_26139FD3C();
    v36 = sub_2612C6448(v33, v35);
    v64 = v27;
    v37 = v36;

    v38 = v61;
    v39 = v34;
    v29 = v63;
    sub_2612C6750(v61, v39, v37, v11);

    v27 = v64;

    sub_26124C718(v9, &qword_27FE9F340, &unk_2613A4B40);
    v29(v11, 0, 1, v27);
    sub_2612BCC94(v11, v9);
  }

  v68 = v26;
  sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);
  sub_26139EE1C();
  if (v67 == 4020 || v67 == 4042)
  {
    v29(v11, 1, 1, v27);
    (*(*v3 + 192))(2, 66, v11);
  }

  else
  {
    if (v67 != 4029)
    {
      type metadata accessor for SPRErrorsUtils();
      v66 = v26;
      sub_26139EE1C();
      v59 = sub_2613777E4(v65);
      (*(*v3 + 192))(v59);

      v47 = v9;
      return sub_26124C718(v47, &qword_27FE9F340, &unk_2613A4B40);
    }

    (*(*v3 + 208))(5, 1);
    v29(v11, 1, 1, v27);
    (*(*v3 + 192))(2, 66, v11);
  }

  sub_26124C718(v11, &qword_27FE9F340, &unk_2613A4B40);
  v47 = v9;
  return sub_26124C718(v47, &qword_27FE9F340, &unk_2613A4B40);
}

uint64_t sub_2612E11A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_26129B780();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = v3;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D8C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = a3;
      v20 = v19;
      *v18 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v21 = a1;
      *(v21 + 8) = v5;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_261243000, v16, v17, "Read Error: [ %@ ]", v18, 0xCu);
      sub_26124C718(v20, &qword_27FEA0410, &qword_2613AA780);
      v23 = v20;
      a3 = v26;
      MEMORY[0x266701350](v23, -1, -1);
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v3 = v27;
  }

  sub_2612E14C4(a1, v5, a3, v9);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  (*(*(v24 - 8) + 56))(v9, 0, 10, v24);
  (*(*v3 + 144))(v9);
  return sub_2612E25E4(v9, type metadata accessor for ReaderEvent);
}

uint64_t sub_2612E14C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TransactionData(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26125A870(a3, v10, &qword_27FE9F340, &unk_2613A4B40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F340, &unk_2613A4B40);
    *a4 = a1;
    *(a4 + 8) = a2;
  }

  else
  {
    sub_2612E257C(v10, v14, type metadata accessor for TransactionData);
    v15 = &v14[*(v11 + 100)];
    *v15 = a1;
    v15[8] = a2;
    sub_2612E257C(v14, a4, type metadata accessor for TransactionData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2612E16C4(unint64_t a1)
{
  v3 = sub_26139F64C();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDB8, &qword_2613AAAB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ReaderEvent(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v52 = v1;
  if (*(v1 + 48))
  {
    return result;
  }

  type metadata accessor for SPRUtils();
  v48 = a1;
  sub_2612C7F8C(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_2612E257C(v13, v21, type metadata accessor for ReaderEvent);
    v25 = sub_26129B780();
    sub_26125A870(v25, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      sub_2612CD17C(v21, v18, type metadata accessor for ReaderEvent);
      v35 = sub_2613A122C();
      v36 = sub_2613A1D9C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v53 = v47;
        *v37 = 136315138;
        sub_2612E2250(&qword_27FE9FDC0, type metadata accessor for ReaderEvent, &unk_2613A9F48);
        v38 = sub_2613A23EC();
        v40 = v39;
        sub_2612E25E4(v18, type metadata accessor for ReaderEvent);
        v41 = sub_26124C11C(v38, v40, &v53);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_261243000, v35, v36, "onUpdate: [ %s ]", v37, 0xCu);
        v42 = v47;
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v37, -1, -1);
      }

      else
      {

        sub_2612E25E4(v18, type metadata accessor for ReaderEvent);
      }

      (*(v27 + 8))(v10, v26);
    }

    if (v48 <= 4)
    {
      if (v48)
      {
        if (v48 != 1)
        {
LABEL_24:
          (*(v52 + 16))(v21);
          return sub_2612E25E4(v21, type metadata accessor for ReaderEvent);
        }

        v43 = v49;
        sub_26139F62C();
        sub_26139F5BC();
        v44 = v51;
        v45 = *(v50 + 8);
        v45(v43, v51);
        sub_26139F63C();
LABEL_23:
        sub_26139F5DC();
        v45(v43, v44);
        goto LABEL_24;
      }

      v43 = v49;
      sub_26139F3EC();
    }

    else
    {
      if ((v48 - 5) >= 2 && v48 != 8)
      {
        goto LABEL_24;
      }

      v43 = v49;
      sub_26139F63C();
    }

    sub_26139F5BC();
    v44 = v51;
    v45 = *(v50 + 8);
    v45(v43, v51);
    sub_26139F62C();
    goto LABEL_23;
  }

  sub_26124C718(v13, &qword_27FE9FDB8, &qword_2613AAAB8);
  v22 = sub_26129B780();
  sub_26125A870(v22, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    return sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v28 = sub_2613A122C();
  v29 = sub_2613A1D8C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    v32 = sub_2613A1D6C();
    v34 = sub_26124C11C(v32, v33, &v53);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_261243000, v28, v29, "onUpdate: failed to parse [ %s ]", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x266701350](v31, -1, -1);
    MEMORY[0x266701350](v30, -1, -1);
  }

  return (*(v24 + 8))(v8, v23);
}

uint64_t sub_2612E1E48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612E1E90(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FE40, type metadata accessor for ReadError, &unk_2613AAC78);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612E1EFC(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FE40, type metadata accessor for ReadError, &unk_2613AAC78);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612E1F68(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612E1FD4(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612E2040(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612E20AC(void *a1, uint64_t a2)
{
  v4 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612E213C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612E21B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError, &unk_2613AACBC);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2612E2250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612E257C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612E25E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2612E2690(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_9;
  }

  v2 = sub_26124E5EC(0x6E656B6F74, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:

    return v4;
  }

  v4 = *(*(a1 + 56) + 16 * v2);

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v5 = sub_26124E5EC(0xD000000000000013, 0x80000002613BB0C0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = (*(a1 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_bridgeObjectRetain_n();

  type metadata accessor for SPRUtils();
  sub_2612C805C(v8, v9);
  swift_bridgeObjectRelease_n();
  return v4;
}

uint64_t sub_2612E27A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_261265E5C();
      v3 = 0;
      do
      {

        v4 = sub_2613A188C();

        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2612E28E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_2613A258C();
    sub_2613A19DC();
  }

  else
  {
    sub_2613A258C();
  }

  v5 = *(a4 + 16);
  result = MEMORY[0x2667009F0](v5);
  if (v5)
  {
    sub_2612E2C0C();
    v7 = a4 + 64;
    do
    {

      sub_2613A183C();

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2612E29DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2613A256C();
  sub_2612E28E8(v5, v1, v2, v3);
  return sub_2613A25CC();
}

uint64_t sub_2612E2A44(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_2613A256C();
  sub_2612E28E8(v6, v2, v3, v4);
  return sub_2613A25CC();
}

uint64_t sub_2612E2A9C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_2613A241C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_2612E27A4(v4, v6);
}

uint64_t sub_2612E2B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2613A211C();

  if (a2)
  {
    v5 = sub_2613A0F7C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x7974706D45;
  }

  MEMORY[0x2666FFEA0](v5, v7);

  MEMORY[0x2666FFEA0](0xD000000000000011, 0x80000002613BB0E0);
  v8 = Array<A>.description.getter(a3);
  MEMORY[0x2666FFEA0](v8);

  return 0x205B203A747441;
}

unint64_t sub_2612E2C0C()
{
  result = qword_27FE9FE80;
  if (!qword_27FE9FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FE80);
  }

  return result;
}

unint64_t sub_2612E2C64()
{
  result = qword_27FE9FE88;
  if (!qword_27FE9FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FE88);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2612E2CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2612E2D14(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2612E2D64(void (*a1)(uint64_t, uint64_t))
{
  v2 = swift_allocObject();
  sub_2612E2DB4(a1);
  return v2;
}

void *sub_2612E2DB4(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v51[1] = *MEMORY[0x277D85DE8];
  v46 = *v1;
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v43[-v8];
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 40))(v10, v11);
  v12 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v13 = sub_26139EEFC();
  v14 = [v12 initWithContentsOfURL_];

  v49 = *(v5 + 8);
  v50 = v4;
  v49(v9, v4);
  if (v14)
  {
    sub_2612B5A20(a1, (v2 + 3));
    v15 = *(a1 + 3);
    v16 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 16))(v15, v16);
    v17 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
    v18 = v14;
    v19 = sub_2613A189C();

    v20 = [v17 initWithName:v19 managedObjectModel:v18];

    v48 = v18;
    v2[2] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2613A4340;
    v22 = v20;
    *(v21 + 32) = sub_2612E443C(a1);
    sub_2612E4638();
    v23 = sub_2613A1B6C();

    [v22 setPersistentStoreDescriptions_];

    v24 = objc_opt_self();
    v25 = [v24 defaultManager];
    v26 = *(a1 + 3);
    v27 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 24))(v26, v27);
    sub_26139EF4C();
    v49(v9, v50);
    v28 = sub_2613A189C();

    v29 = [v25 fileExistsAtPath_];

    if ((v29 & 1) == 0)
    {
      v44 = v29;
      v30 = [v24 defaultManager];
      v31 = *(a1 + 3);
      v32 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v31);
      v33 = v45;
      (*(v32 + 24))(v31, v32);
      sub_26139EF2C();
      v34 = v33;
      v35 = v49;
      v36 = v50;
      v49(v34, v50);
      v37 = sub_26139EEFC();
      v35(v9, v36);
      v51[0] = 0;
      LODWORD(v36) = [v30 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v51];

      if (!v36)
      {
        v41 = v51[0];
        sub_26139EE7C();

        swift_willThrow();
        v39 = v48;
        goto LABEL_11;
      }

      v38 = v51[0];
      LOBYTE(v29) = v44;
    }

    v39 = v2[2];
    v40 = v47;
    sub_2612E4D70(v39, a1);
    if (!v40)
    {

      v2[8] = [v2[2] newBackgroundContext];
      if ((v29 & 1) == 0)
      {
        sub_2612E54CC(a1);
      }

      goto LABEL_12;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 3);
    swift_deallocPartialClassInstance();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v2;
  }

  result = sub_2613A220C();
  __break(1u);
  return result;
}

uint64_t sub_2612E3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2612E3380, 0, 0);
}

uint64_t sub_2612E3380()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + 64);
  v0[8] = v5;
  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  v5;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2612E3498;
  v8 = v0[6];
  v9 = v0[2];
  v10 = v0[3];

  return MEMORY[0x28210EE50](v9, v10, sub_2612E5B28, v6, v8);
}

uint64_t sub_2612E3498()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2612E35DC, 0, 0);
  }

  else
  {
    v3 = v2[8];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2612E35DC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_2612E3644(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v3 setResultType_];
  *&v14 = 0;
  v4 = [a1 executeRequest:v3 error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = v4;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    v8 = v5;
    if (v7)
    {
      if ([v7 result])
      {
        sub_2613A202C();

        swift_unknownObjectRelease();
      }

      else
      {

        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        if (swift_dynamicCast())
        {
          return v12 > 0;
        }

        return 0;
      }
    }

    else
    {

      v14 = 0u;
      v15 = 0u;
    }

    sub_26124C718(&v14, &qword_27FEA00C0, &unk_2613A44B0);
    return 0;
  }

  v9 = v14;
  sub_26139EE7C();

  swift_willThrow();
  return v10;
}

uint64_t sub_2612E38D8(void *a1, id a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  [a2 setResultType_];
  *&v15 = 0;
  v5 = [a1 executeRequest:a2 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v8)
    {
      if ([v8 result])
      {
        sub_2613A202C();
        swift_unknownObjectRelease();
      }

      else
      {

        v13 = 0u;
        v14 = 0u;
      }

      v15 = v13;
      v16 = v14;
      if (*(&v14 + 1))
      {
        if (swift_dynamicCast())
        {
          v11 = v13;
          return v11 & 1;
        }

LABEL_12:
        v11 = 0;
        return v11 & 1;
      }
    }

    else
    {

      v15 = 0u;
      v16 = 0u;
    }

    sub_26124C718(&v15, &qword_27FEA00C0, &unk_2613A44B0);
    goto LABEL_12;
  }

  v10 = v15;
  sub_26139EE7C();

  swift_willThrow();
  return v11 & 1;
}

void sub_2612E3A80()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = sub_2613A1DCC();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26139EF7C();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *(v0 + 16);
  v7 = [v18[0] persistentStoreCoordinator];
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v9);
  (*(v8 + 24))(v9, v8);
  sub_2613A1DBC();
  v10 = v18[1];
  sub_2613A1F1C();
  if (v10)
  {

    (*(v1 + 8))(v3, v20);
    (*(v4 + 8))(v6, v19);
  }

  else
  {

    (*(v1 + 8))(v3, v20);
    (*(v4 + 8))(v6, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2613A4340;
    *(v11 + 32) = sub_2612E443C((v0 + 24));
    sub_2612E4638();
    v12 = sub_2613A1B6C();

    v13 = v18[0];
    [v18[0] setPersistentStoreDescriptions_];

    v21[0] = 0;
    if ([v13 load_])
    {
      v14 = v21[0];
      v15 = [v13 newBackgroundContext];
      v16 = *(v0 + 64);
      *(v0 + 64) = v15;
    }

    else
    {
      v17 = v21[0];
      sub_26139EE7C();

      swift_willThrow();
    }
  }
}

uint64_t sub_2612E3DB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_2612E3DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for LocalCoreDataConfiguration(0);
  v13 = v12[5];
  v14 = sub_26139EF7C();
  v15 = *(*(v14 - 8) + 32);
  v15(&a7[v13], a3, v14);
  v15(&a7[v12[6]], a4, v14);
  v16 = &a7[v12[7]];
  *v16 = a5;
  *(v16 + 1) = a6;
  v17 = *MEMORY[0x277CBE7E0];
  *&a7[v12[8]] = *MEMORY[0x277CBE7E0];

  return v17;
}

uint64_t sub_2612E3EE8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_2612E3F20()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2612E3F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26139EF7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2612E3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26139EF7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2612E4044(uint64_t a1, id *a2)
{
  result = sub_2613A18AC();
  *a2 = 0;
  return result;
}

uint64_t sub_2612E40BC(uint64_t a1, id *a2)
{
  v3 = sub_2613A18BC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2612E413C@<X0>(uint64_t *a2@<X8>)
{
  sub_2613A18CC();
  v3 = sub_2613A189C();

  *a2 = v3;
  return result;
}

uint64_t sub_2612E4180@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2613A189C();

  *a2 = v3;
  return result;
}

uint64_t sub_2612E41C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2613A18CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2612E41F4(uint64_t a1)
{
  v2 = sub_2612E5A98(&qword_27FE9FEB8, type metadata accessor for URLFileProtection, &unk_2613AB094);
  v3 = sub_2612E5A98(&qword_27FE9FEC0, type metadata accessor for URLFileProtection, &unk_2613AB034);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2612E42B0()
{
  v0 = sub_2613A18CC();
  v1 = MEMORY[0x2666FFF30](v0);

  return v1;
}

uint64_t sub_2612E42EC(uint64_t a1)
{
  sub_2613A18CC();
  sub_2613A19DC();
}

uint64_t sub_2612E4340(uint64_t a1)
{
  sub_2613A18CC();
  sub_2613A256C();
  sub_2613A19DC();
  v1 = sub_2613A25CC();

  return v1;
}

uint64_t sub_2612E43B4(void *a1, uint64_t *a2)
{
  v2 = sub_2613A18CC();
  v4 = v3;
  if (v2 == sub_2613A18CC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2613A241C();
  }

  return v7 & 1;
}

id sub_2612E443C(void *a1)
{
  v2 = sub_26139EF7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v6, v7);
  v8 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v9 = sub_26139EEFC();
  v10 = [v8 initWithURL_];

  (*(v3 + 8))(v5, v2);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = sub_2613A189C();
  }

  else
  {
    v14 = 0;
  }

  [v10 setConfiguration_];

  [v10 setType_];
  [v10 setShouldInferMappingModelAutomatically_];
  [v10 setShouldMigrateStoreAutomatically_];
  [v10 setTimeout_];
  return v10;
}

unint64_t sub_2612E4638()
{
  result = qword_27FE9FE90;
  if (!qword_27FE9FE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FE90);
  }

  return result;
}

id sub_2612E4684(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v58 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2613A1DCC();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139EF7C();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v57 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v53 - v15;
  v64 = sub_26129B934();
  sub_26124AA44(v64, v16);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v63 = *(v18 + 48);
  if (v63(v16, 1, v17) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v56 = v10;
      v22 = v5;
      v23 = v18;
      v24 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Removing persistent store", v21, 2u);
      v25 = v24;
      v18 = v23;
      v5 = v22;
      v10 = v56;
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  v26 = [a1 persistentStoreCoordinator];
  v65[0] = 0;
  v27 = [v26 _removeAllPersistentStores_];

  if (v27)
  {
    v54 = v18;
    v55 = v17;
    v56 = v14;
    v28 = v65[0];
    v29 = [a1 persistentStoreCoordinator];
    v30 = *(v58 + 3);
    v31 = *(v58 + 4);
    v32 = __swift_project_boxed_opaque_existential_1(v58, v30);
    v33 = *(v31 + 24);
    v53[1] = v32;
    v58 = v33;
    v33(v30, v31);
    sub_2613A1DBC();
    sub_2613A1F1C();

    (*(v59 + 8))(v5, v60);
    v36 = v62;
    v37 = *(v61 + 8);
    v37(v10, v62);
    v38 = v37;
    v39 = [objc_opt_self() defaultManager];
    v40 = v57;
    v58(v30, v31);
    v41 = sub_26139EEFC();
    v38(v40, v36);
    v65[0] = 0;
    v42 = [v39 removeItemAtURL:v41 error:v65];

    v43 = v65[0];
    if (v42)
    {

      return v43;
    }

    v62 = v65[0];
    v45 = v65[0];
    v35 = sub_26139EE7C();

    swift_willThrow();
    v17 = v55;
    v14 = v56;
    v18 = v54;
  }

  else
  {
    v34 = v65[0];
    v35 = sub_26139EE7C();

    swift_willThrow();
  }

  sub_26124AA44(v64, v14);
  if (v63(v14, 1, v17) == 1)
  {

    return sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v46 = v35;
    v47 = sub_2613A122C();
    v48 = sub_2613A1D8C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v35;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_261243000, v47, v48, "Error removing persistent store: %@", v49, 0xCu);
      sub_26124C718(v50, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v50, -1, -1);
      MEMORY[0x266701350](v49, -1, -1);
    }

    else
    {
    }

    return (*(v18 + 8))(v14, v17);
  }
}

void sub_2612E4D70(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v53 = a2;
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26139EBAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_26139EB8C();
  v56 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  type metadata accessor for Mock();
  if (sub_26129B0F4(32))
  {
    v50 = v4;
    v21 = sub_26129B934();
    sub_26124AA44(v21, v20);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v20, 1, v22) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v51 = a1;
      v25 = sub_2613A122C();
      v26 = sub_2613A1D7C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v3;
        v28 = v27;
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "The error that simulates a corrupted DB file is enabled!", v27, 2u);
        v29 = v28;
        v3 = v49;
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v23 + 8))(v20, v22);
      a1 = v51;
    }

    sub_26139EB7C();
    v30 = sub_26139EF7C();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = sub_26139EB9C();
    sub_26124C718(v10, &qword_27FE9F220, qword_2613A5530);
    v32 = v56;
    (*(v56 + 8))(v15, v11);
    v4 = v50;
  }

  else
  {
    v60[0] = 0;
    if ([a1 load_])
    {
      v24 = v60[0];
      return;
    }

    v33 = v60[0];
    v31 = sub_26139EE7C();

    v32 = v56;
  }

  v34 = v55;
  swift_willThrow();
  v60[0] = v31;
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v51 = a1;
    (*(v4 + 32))(v57, v34, v3);
    sub_2612E5A98(&qword_27FE9FEC8, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_26139EE1C();
    v36 = v54;
    sub_26139EB7C();
    sub_2612E5A98(&qword_27FE9FED0, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v37 = *(v32 + 8);
    v37(v36, v11);
    v37(v15, v11);
    if (v59 == v58)
    {

      v38 = sub_26129B934();
      v39 = v52;
      sub_26124AA44(v38, v52);
      v40 = sub_2613A124C();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) == 1)
      {
        sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v43 = sub_2613A122C();
        v44 = sub_2613A1D8C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = v4;
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_261243000, v43, v44, "DB file corrupted error received", v46, 2u);
          v47 = v46;
          v4 = v45;
          MEMORY[0x266701350](v47, -1, -1);
        }

        (*(v41 + 8))(v39, v40);
      }

      v42 = v57;
      sub_2612E4684(v51, v53);
      sub_26139EB6C();
      swift_willThrow();
    }

    else
    {
      v42 = v57;
    }

    (*(v4 + 8))(v42, v3);
  }
}

uint64_t sub_2612E54CC(void *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = sub_26139ED9C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139EF7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(v9, v10);
  sub_26139ED8C();
  sub_26139ED7C();
  v11 = v25;
  sub_26139EEEC();
  v12 = v26;
  if (!v11)
  {
    v24 = v6;
    v25 = v5;
    v13 = sub_26139EEFC();
    v15 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v16 = (*(v14 + 32))(v15, v14);
    v17 = *MEMORY[0x277CBE7F8];
    v27[0] = 0;
    v18 = [v13 setResourceValue:v16 forKey:v17 error:v27];

    if (v18)
    {
      v19 = *(v2 + 8);
      v20 = v27[0];
      v19(v4, v26);
      return (*(v24 + 8))(v8, v25);
    }

    v22 = v27[0];
    sub_26139EE7C();

    swift_willThrow();
    v5 = v25;
    v12 = v26;
    v6 = v24;
  }

  (*(v2 + 8))(v4, v12);
  return (*(v6 + 8))(v8, v5);
}

void sub_2612E57C0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 40) + 64);
  v1();
}

uint64_t type metadata accessor for LocalCoreDataConfiguration(uint64_t a1)
{
  result = qword_27FEABD70;
  if (!qword_27FEABD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2612E58C0(uint64_t a1)
{
  sub_26139EF7C();
  if (v1 <= 0x3F)
  {
    sub_2612E59B8(319, &qword_27FE9F590, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URLFileProtection(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2612E59B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2612E5A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612E5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FED8, &unk_2613AB140);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v26 - v5;
  v29 = sub_26139F13C();
  v36 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = 7371124;
  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 5527370;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v9;
  *(inited + 80) = 6580587;
  v30 = 0x80000002613BB1D0;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x80000002613BB1D0;
  *(inited + 120) = v9;
  *(inited + 128) = 6777953;
  *(inited + 168) = v9;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 0x3635325345;
  *(inited + 152) = 0xE500000000000000;
  v32 = sub_261259E78(inited);
  swift_setDeallocating();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2613AB130;
  *(v10 + 32) = 7566185;
  v28 = v10 + 32;
  *(v10 + 40) = 0xE300000000000000;
  strcpy((v10 + 48), "authorization");
  *(v10 + 62) = -4864;
  *(v10 + 72) = v9;
  *(v10 + 80) = 6583649;
  *(v10 + 88) = 0xE300000000000000;
  *(v10 + 96) = 0x746361736E617274;
  *(v10 + 104) = 0xEB000000006E6F69;
  *(v10 + 120) = v9;
  *(v10 + 128) = 1684628851;
  *(v10 + 136) = 0xE400000000000000;
  v27 = a1;
  v11 = *(a1 + 56);
  *(v10 + 144) = *(a1 + 48);
  *(v10 + 152) = v11;
  *(v10 + 168) = v9;
  *(v10 + 176) = 6911082;
  *(v10 + 184) = 0xE300000000000000;

  sub_26139F12C();
  v12 = sub_26139F0FC();
  v14 = v13;
  v15 = *(v36 + 8);
  v36 += 8;
  v16 = v29;
  v15(v7, v29);
  *(v10 + 192) = v12;
  *(v10 + 200) = v14;
  *(v10 + 216) = v9;
  *(v10 + 224) = 7234157;
  *(v10 + 232) = 0xE300000000000000;
  *(v10 + 240) = 0xD000000000000010;
  *(v10 + 248) = 0x80000002613BB200;
  *(v10 + 264) = v9;
  *(v10 + 272) = 6513517;
  *(v10 + 280) = 0xE300000000000000;
  *(v10 + 288) = 825308213;
  *(v10 + 296) = 0xE400000000000000;
  *(v10 + 312) = v9;
  *(v10 + 320) = 6580589;
  *(v10 + 328) = 0xE300000000000000;
  *(v10 + 336) = 808464432;
  *(v10 + 344) = 0xE400000000000000;
  *(v10 + 360) = v9;
  *(v10 + 368) = 6580592;
  *(v10 + 376) = 0xE300000000000000;
  sub_26139F12C();
  v17 = sub_26139F0FC();
  v19 = v18;
  v15(v7, v16);
  *(v10 + 384) = v17;
  *(v10 + 392) = v19;
  *(v10 + 408) = v9;
  *(v10 + 416) = 1684631668;
  *(v10 + 424) = 0xE400000000000000;
  *(v10 + 432) = 0xD000000000000024;
  *(v10 + 440) = v30;
  *(v10 + 456) = v9;
  *(v10 + 464) = 1684632694;
  *(v10 + 472) = 0xE400000000000000;
  v20 = *(v27 + 72);
  *(v10 + 480) = *(v27 + 64);
  *(v10 + 488) = v20;
  *(v10 + 504) = v9;
  *(v10 + 512) = 1953526640;
  *(v10 + 520) = 0xE400000000000000;
  *(v10 + 552) = v9;
  v21 = v34;
  *(v10 + 528) = v33;
  *(v10 + 536) = v21;

  sub_261259E78(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = sub_2613A17DC();
  v23 = v35;
  (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  v24 = sub_2613A0FDC();

  sub_26124C718(v23, &qword_27FE9FED8, &unk_2613AB140);
  return v24;
}

uint64_t sub_2612E6008()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FED8, &unk_2613AB140);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = 7371124;
  v4 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 5527370;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 6580587;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x80000002613BB1D0;
  *(inited + 120) = v4;
  *(inited + 128) = 6777953;
  *(inited + 168) = v4;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 0x3635325345;
  *(inited + 152) = 0xE500000000000000;
  sub_261259E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  v5 = swift_initStackObject();
  *(v5 + 32) = 1684631668;
  v6 = v5 + 32;
  *(v5 + 16) = xmmword_2613A4310;
  *(v5 + 72) = v4;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = 0xD000000000000024;
  *(v5 + 56) = 0x80000002613BB1D0;
  sub_261259E78(v5);
  swift_setDeallocating();
  sub_26124C718(v6, &qword_27FE9F2F0, &qword_2613A4BD0);
  v7 = sub_2613A17DC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_2613A0FDC();

  sub_26124C718(v2, &qword_27FE9FED8, &unk_2613AB140);
  return v8;
}

uint64_t sub_2612E62B0(uint64_t a1, unint64_t a2)
{

  v4 = sub_2612D1AC4(a1, a2);
  v6 = v5;
  v7 = sub_26139F00C();
  sub_26124C6C4(v4, v6);
  return v7;
}

uint64_t sub_2612E6324(uint64_t a1)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v18 = a1;
  *&v19 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9FEE0, &qword_2613AB170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBF8, "(N");
  if (!swift_dynamicCast())
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_26124C718(v20, &qword_27FE9FC00, &unk_2613A9DC0);
    *&v20[0] = sub_2612CA52C(*(a1 + 16));
    *(&v20[0] + 1) = v2;
    MEMORY[0x28223BE20](*&v20[0]);
    v17[2] = &v18;
    v5 = sub_2612E6CE4(sub_2612E76C8, v17);
    v6 = v3;
    v7 = *(&v20[0] + 1) >> 62;
    if ((*(&v20[0] + 1) >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        v12 = 0;
LABEL_31:
        if (v12 < v4)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_26139EFDC();
LABEL_33:

        goto LABEL_34;
      }

      v9 = *(*&v20[0] + 16);
      v8 = *(*&v20[0] + 24);
      v10 = __OFSUB__(v8, v9);
      v11 = v8 - v9;
      if (v10)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (v4 != v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v7)
      {
        if (v4 == BYTE14(v20[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v20[0]), v20[0]))
      {
        goto LABEL_42;
      }

      if (v4 != DWORD1(v20[0]) - LODWORD(v20[0]))
      {
LABEL_13:
        if (v7 == 2)
        {
          v12 = *(*&v20[0] + 24);
        }

        else if (v7 == 1)
        {
          v12 = *&v20[0] >> 32;
        }

        else
        {
          v12 = BYTE14(v20[0]);
        }

        goto LABEL_31;
      }
    }

LABEL_18:
    memset(v22, 0, 15);
    if (v3)
    {
      if (!__OFSUB__(v3, 1))
      {
        if (v3 - 1 < 0)
        {
LABEL_35:
          __break(1u);
        }

        else
        {
          LOBYTE(v13) = 0;
          while (1)
          {
            v14 = v6 - 1;
            if ((v6 - 1) >= *(v5 + 2))
            {
              break;
            }

            *(v22 + v13) = v5[v6 + 31];
            v13 = v13 + 1;
            if ((v13 & 0x100) != 0)
            {
              goto LABEL_37;
            }

            if (v13 == 14)
            {
              *&v19 = v22[0];
              *(&v19 + 6) = *(v22 + 6);
              sub_26139EFEC();
              if (v6 == 1)
              {
                goto LABEL_33;
              }

              LOBYTE(v13) = 0;
            }

            else if (v6 == 1)
            {
              goto LABEL_38;
            }

            --v6;
            if (v14 < 1)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        *&v19 = v22[0];
        *(&v19 + 6) = *(v22 + 6);
        sub_26139EFEC();
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  sub_26124A200(v20, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_26139ED6C();
  v20[0] = v19;
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
LABEL_34:
  v15 = v20[0];
  sub_26124C778(*&v20[0], *(&v20[0] + 1));

  sub_26124C6C4(v15, *(&v15 + 1));
  return v15;
}