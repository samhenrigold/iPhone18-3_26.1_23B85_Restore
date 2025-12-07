uint64_t sub_226B07328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return MEMORY[0x282119B08](a1, a3);
}

uint64_t sub_226B073DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D68AAC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_226D689AC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_226D68B2C();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  v2[13] = swift_task_alloc();
  v6 = sub_226D68B6C();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B075E8, v1, 0);
}

uint64_t sub_226B075E8()
{
  result = sub_226D6890C();
  *(v0 + 136) = result;
  v2 = *(result + 16);
  v3 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  if (v2)
  {
    v4 = *(v0 + 120);
    *(v0 + 256) = *MEMORY[0x277CC7598];
    *(v0 + 260) = *MEMORY[0x277CC7588];
    *(v0 + 264) = *MEMORY[0x277CC7590];
    *(v0 + 160) = 0;
    if (*(result + 16))
    {
      (*(v4 + 16))(*(v0 + 128), result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), *(v0 + 112));
      v5 = swift_task_alloc();
      *(v0 + 168) = v5;
      *v5 = v0;
      v5[1] = sub_226B07798;
      v6 = *(v0 + 128);

      return sub_226B088E4(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_226B07798(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {

    v4[31] = v1;
    v6 = v4[3];

    return MEMORY[0x2822009F8](sub_226B08828, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[24] = v7;
    *v7 = v5;
    v7[1] = sub_226B07930;
    v8 = v4[16];
    v9 = v4[13];

    return sub_226B0A3E8(v9, v8, a1);
  }
}

uint64_t sub_226B07930()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_226B07A40, v1, 0);
}

uint64_t sub_226B07A40()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  sub_226D68ABC();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == v1)
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    (*(*(v0 + 88) + 96))(v6, *(v0 + 80));
    (*(v9 + 32))(v7, v6, v8);
    v10 = sub_226D6899C();
    *(v0 + 200) = v10;
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v12 = sub_226B07F78;
LABEL_5:
    v11[1] = v12;

    return sub_226B0BCE8(v10);
  }

  if (v5 == *(v0 + 260))
  {
    v13 = *(v0 + 96);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);
    (*(*(v0 + 88) + 96))(v13, *(v0 + 80));
    (*(v15 + 32))(v14, v13, v16);
    v10 = sub_226D6899C();
    *(v0 + 224) = v10;
    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    *v11 = v0;
    v12 = sub_226B083D0;
    goto LABEL_5;
  }

  if (v5 != *(v0 + 264))
  {
    return sub_226D6F0AC();
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 128);
  v21 = *(v0 + 104);
  v22 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v22 + *(v0 + 152)), *(v22 + *(v0 + 152) + 24));
  v23 = sub_226D6BB3C();
  v24 = swift_task_alloc();
  v24[2] = v23;
  v24[3] = v20;
  v24[4] = v22;
  v24[5] = v21;
  v24[6] = MEMORY[0x277D84F90];
  v24[7] = v19;
  sub_226D6EB7C();
  if (v18)
  {
    v25 = *(v0 + 104);

    sub_226AC47B0(v25, &qword_27D7A6828, &qword_226D782F0);
    *(v0 + 248) = v18;
    v26 = *(v0 + 24);
    v27 = sub_226B08828;
    v28 = 0;

    return MEMORY[0x2822009F8](v27, v26, v28);
  }

  v29 = *(v0 + 160);
  v30 = *(v0 + 144);
  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);

  sub_226AC47B0(v34, &qword_27D7A6828, &qword_226D782F0);
  v27 = (*(v32 + 8))(v31, v33);
  if (v29 + 1 == v30)
  {

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v36 = *(v0 + 160) + 1;
    *(v0 + 160) = v36;
    v37 = *(v0 + 136);
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v27, v26, v28);
    }

    (*(*(v0 + 120) + 16))(*(v0 + 128), v37 + ((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)) + *(*(v0 + 120) + 72) * v36, *(v0 + 112));
    v38 = swift_task_alloc();
    *(v0 + 168) = v38;
    *v38 = v0;
    v38[1] = sub_226B07798;
    v39 = *(v0 + 128);

    return sub_226B088E4(v39);
  }
}

uint64_t sub_226B07F78(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_226B080AC, v2, 0);
}

uint64_t sub_226B080AC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[3];
  __swift_project_boxed_opaque_existential_1((v6 + v0[19]), *(v6 + v0[19] + 24));
  v7 = sub_226D6BB3C();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v1;
  v8[7] = v3;
  sub_226D6EB7C();
  if (v2)
  {
    v9 = v0[13];

    sub_226AC47B0(v9, &qword_27D7A6828, &qword_226D782F0);
    v0[31] = v2;
    v10 = v0[3];
    v11 = sub_226B08828;
    v12 = 0;

    return MEMORY[0x2822009F8](v11, v10, v12);
  }

  v13 = v0[20];
  v24 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];

  sub_226AC47B0(v17, &qword_27D7A6828, &qword_226D782F0);
  v11 = (*(v15 + 8))(v14, v16);
  if (v13 + 1 == v24)
  {

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[20] + 1;
    v0[20] = v20;
    v21 = v0[17];
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v10, v12);
    }

    (*(v0[15] + 16))(v0[16], v21 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v20, v0[14]);
    v22 = swift_task_alloc();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = sub_226B07798;
    v23 = v0[16];

    return sub_226B088E4(v23);
  }
}

uint64_t sub_226B083D0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_226B08504, v2, 0);
}

uint64_t sub_226B08504()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[3];
  __swift_project_boxed_opaque_existential_1((v6 + v0[19]), *(v6 + v0[19] + 24));
  v7 = sub_226D6BB3C();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v1;
  v8[7] = v3;
  sub_226D6EB7C();
  if (v2)
  {
    v9 = v0[13];

    sub_226AC47B0(v9, &qword_27D7A6828, &qword_226D782F0);
    v0[31] = v2;
    v10 = v0[3];
    v11 = sub_226B08828;
    v12 = 0;

    return MEMORY[0x2822009F8](v11, v10, v12);
  }

  v13 = v0[20];
  v24 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];

  sub_226AC47B0(v17, &qword_27D7A6828, &qword_226D782F0);
  v11 = (*(v15 + 8))(v14, v16);
  if (v13 + 1 == v24)
  {

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[20] + 1;
    v0[20] = v20;
    v21 = v0[17];
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v10, v12);
    }

    (*(v0[15] + 16))(v0[16], v21 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v20, v0[14]);
    v22 = swift_task_alloc();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = sub_226B07798;
    v23 = v0[16];

    return sub_226B088E4(v23);
  }
}

uint64_t sub_226B08828()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B088E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_226D6A49C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_226D68A4C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_226D68B5C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6838, &qword_226D71E90);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_226D68AEC();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_226D68B1C();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6880, &qword_226D71EE0);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6888, &unk_226D71EE8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v8 = sub_226D689EC();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v9 = sub_226D68AAC();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  v10 = sub_226D689AC();
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();
  v11 = sub_226D68B2C();
  v2[39] = v11;
  v2[40] = *(v11 - 8);
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B08D60, v1, 0);
}

uint64_t sub_226B08D60()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  sub_226D68ABC();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CC7598])
  {
    v5 = v0[41];
    v6 = v0[38];
    v7 = v0[36];
    v8 = v0[37];
    (*(v0[40] + 96))(v5, v0[39]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = sub_226D6899C();
  }

  else
  {
    if (v4 != *MEMORY[0x277CC7588])
    {
      if (v4 != *MEMORY[0x277CC7590])
      {
        return sub_226D6F0AC();
      }

      (*(v0[40] + 8))(v0[41], v0[39]);
      goto LABEL_11;
    }

    v10 = v0[41];
    v8 = v0[34];
    v6 = v0[35];
    v7 = v0[33];
    (*(v0[40] + 96))(v10, v0[39]);
    (*(v8 + 32))(v6, v10, v7);
    v9 = sub_226D6899C();
  }

  v11 = v9;
  (*(v8 + 8))(v6, v7);
  v0[42] = v11;
  if (v11)
  {
    v12 = sub_226B0481C();
    v0[43] = v12;
    v13 = swift_task_alloc();
    v0[44] = v13;
    v14 = sub_226D68FEC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    *v13 = v0;
    v13[1] = sub_226B09110;
    v16 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v12, v14, v15, v16);
  }

LABEL_11:
  v19 = sub_226B22C08(MEMORY[0x277D84F90]);

  v17 = v0[1];

  return v17(v19);
}

uint64_t sub_226B09110()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);

    v4 = sub_226B0A2B4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 48);

    v4 = sub_226B09268;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_226B09268()
{
  v1 = *(v0 + 336);
  *(v0 + 368) = *(v0 + 16);
  v2 = sub_226B22C08(MEMORY[0x277D84F90]);
  v49 = v2;
  v3 = *(v1 + 16);
  *(v0 + 376) = v3;
  if (!v3)
  {
LABEL_15:

    v37 = *(v0 + 8);

    return v37(v49);
  }

  v4 = 0;
  *(v0 + 448) = *(*(v0 + 184) + 80);
  while (1)
  {
    *(v0 + 392) = v4;
    *(v0 + 400) = v49;
    *(v0 + 384) = v49;
    v5 = *(v0 + 336);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2821185B8](v2);
    }

    sub_226B11A34(v5 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 184) + 72) * v4, *(v0 + 192));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v0 + 136);
      (*(*(v0 + 120) + 32))(*(v0 + 128), v9, *(v0 + 112));
      v11 = *(v7 + 48);
      sub_226D68ACC();
      sub_226D68B4C();
      v12 = sub_226D68A7C();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v10, 1, v12);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      if (v14 == 1)
      {
        v20 = *(v0 + 80);
        v19 = *(v0 + 88);
        (*(v17 + 8))(*(v0 + 128), *(v0 + 112));
LABEL_9:
        sub_226AC47B0(v15, &qword_27D7A6838, &qword_226D71E90);
        (*(v19 + 56))(v8 + v11, 1, 1, v20);
        goto LABEL_13;
      }

      sub_226D68A5C();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v21 = *(v0 + 144);
      (*(*(v0 + 160) + 32))(*(v0 + 168), v9, *(v0 + 152));
      v11 = *(v7 + 48);
      sub_226D68ACC();
      sub_226D68ADC();
      v12 = sub_226D68A7C();
      v13 = *(v12 - 8);
      v22 = (*(v13 + 48))(v21, 1, v12);
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      v15 = *(v0 + 144);
      v25 = *(v0 + 152);
      if (v22 == 1)
      {
        v20 = *(v0 + 80);
        v19 = *(v0 + 88);
        (*(v23 + 8))(*(v0 + 168), *(v0 + 152));
        goto LABEL_9;
      }

      sub_226D68A5C();
      (*(v23 + 8))(v24, v25);
    }

    (*(v13 + 8))(v15, v12);
LABEL_13:
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 208);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(*(v0 + 200) + 48);
    (*(*(v0 + 240) + 32))(*(v0 + 256), v28, *(v0 + 232));
    sub_226AFD80C(v28 + v31, v26, &qword_27D7A6888, &unk_226D71EE8);
    sub_226AC40E8(v26, v27, &qword_27D7A6888, &unk_226D71EE8);
    v32 = (*(v29 + 48))(v27, 1, v30);
    v33 = *(v0 + 256);
    if (v32 != 1)
    {
      break;
    }

    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    v36 = *(v0 + 216);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6888, &unk_226D71EE8);
    (*(v34 + 8))(v33, v35);
    v2 = sub_226AC47B0(v36, &qword_27D7A6888, &unk_226D71EE8);
    v4 = *(v0 + 392) + 1;
    if (v4 == *(v0 + 376))
    {
      goto LABEL_15;
    }
  }

  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  v41 = *(v0 + 232);
  v43 = *(v0 + 96);
  v42 = *(v0 + 104);
  v44 = *(v0 + 80);
  v45 = *(v0 + 88);
  v46 = *(v0 + 72);
  (*(v45 + 32))(v42, *(v0 + 216), v44);
  v47 = *(v40 + 16);
  *(v0 + 408) = v47;
  *(v0 + 416) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v39, v33, v41);
  (*(v45 + 16))(v43, v42, v44);
  sub_226B0E5CC(v43, v46);
  v48 = swift_task_alloc();
  *(v0 + 424) = v48;
  *v48 = v0;
  v48[1] = sub_226B0981C;
  v2 = *(v0 + 72);

  return MEMORY[0x2821185B8](v2);
}

uint64_t sub_226B0981C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_226B09990, v7, 0);
}

uint64_t sub_226B09990()
{
  v1 = *(v0 + 248);
  if (*(v0 + 440) >> 60 == 15)
  {
    v2 = sub_226C2FED4(*(v0 + 248));
    if ((v3 & 1) == 0)
    {
      v29 = *(v0 + 256);
      v30 = *(v0 + 232);
      v1 = *(v0 + 224);
      v31 = *(v0 + 104);
      v32 = *(v0 + 80);
      v33 = *(v0 + 88);
      v34 = *(*(v0 + 240) + 8);
      v34(*(v0 + 248), v30);
      (*(v33 + 8))(v31, v32);
      sub_226AC47B0(v1, &qword_27D7A6888, &unk_226D71EE8);
      v34(v29, v30);
      v104 = *(v0 + 400);
      v16 = *(v0 + 384);
      goto LABEL_27;
    }

    v1 = v2;
    v4 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = (v0 + 384);
LABEL_5:
      v7 = *v6;
      v8 = *(v0 + 248);
      v9 = *(v0 + 232);
      v10 = *(v0 + 240);
      v100 = *(v0 + 224);
      v103 = *(v0 + 256);
      v11 = *(v0 + 104);
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v14 = *(*v6 + 48);
      v15 = *(v10 + 8);
      v15(v14 + *(v10 + 72) * v1, v9);
      sub_226B11B98(*(*(v7 + 56) + 16 * v1), *(*(v7 + 56) + 16 * v1 + 8));
      sub_226D4A714(v1, v7);
      v15(v8, v9);
      (*(v12 + 8))(v11, v13);
      sub_226AC47B0(v100, &qword_27D7A6888, &unk_226D71EE8);
      v15(v103, v9);
      v16 = v7;
      v104 = v7;
      goto LABEL_27;
    }

LABEL_36:
    v6 = (v0 + 24);
    sub_226C37C30();
    goto LABEL_5;
  }

  v17 = *(v0 + 384);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v17;
  v19 = sub_226C2FED4(v1);
  v21 = *(v17 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = v20;
  if (*(*(v0 + 384) + 24) >= v24)
  {
    if ((v18 & 1) == 0)
    {
      v98 = v19;
      sub_226C37C30();
      v19 = v98;
    }
  }

  else
  {
    v26 = *(v0 + 248);
    sub_226C31458(v24, v18);
    v19 = sub_226C2FED4(v26);
    if ((v25 & 1) != (v27 & 1))
    {

      return sub_226D6F25C();
    }
  }

  v35 = *(v0 + 32);
  v37 = *(v0 + 432);
  v36 = *(v0 + 440);
  if (v25)
  {
    v1 = *(v0 + 248);
    v101 = *(v0 + 32);
    v105 = *(v0 + 256);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);
    v40 = *(v0 + 224);
    v41 = *(v0 + 104);
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    v44 = (*(v35 + 56) + 16 * v19);
    v45 = *v44;
    v46 = v44[1];
    *v44 = v37;
    v44[1] = v36;
    sub_226B11B98(v45, v46);
    v47 = *(v38 + 8);
    v47(v1, v39);
    (*(v42 + 8))(v41, v43);
    sub_226AC47B0(v40, &qword_27D7A6888, &unk_226D71EE8);
    v47(v105, v39);
    v16 = v101;
    v104 = v101;
    goto LABEL_27;
  }

  v48 = *(v0 + 408);
  v1 = *(v0 + 248);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v102 = *(v0 + 224);
  v106 = *(v0 + 256);
  v99 = *(v0 + 104);
  v52 = *(v0 + 80);
  v51 = *(v0 + 88);
  *(v35 + 8 * (v19 >> 6) + 64) |= 1 << v19;
  v53 = v19;
  v16 = v35;
  v48(*(v35 + 48) + *(v49 + 72) * v19, v1, v50);
  v54 = (*(v16 + 56) + 16 * v53);
  *v54 = v37;
  v54[1] = v36;
  v55 = *(v49 + 8);
  v55(v1, v50);
  (*(v51 + 8))(v99, v52);
  sub_226AC47B0(v102, &qword_27D7A6888, &unk_226D71EE8);
  v56 = (v55)(v106, v50);
  v57 = *(v16 + 16);
  v23 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  if (v23)
  {
    __break(1u);
    return MEMORY[0x2821185B8](v56);
  }

  *(v16 + 16) = v58;
  v104 = v16;
  while (1)
  {
LABEL_27:
    v87 = *(v0 + 392) + 1;
    if (v87 == *(v0 + 376))
    {

      v88 = *(v0 + 8);

      return v88(v104);
    }

    *(v0 + 392) = v87;
    *(v0 + 400) = v104;
    *(v0 + 384) = v16;
    v59 = *(v0 + 336);
    if (v87 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_226B11A34(v59 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 184) + 72) * v87, *(v0 + 192));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = *(v0 + 200);
    v62 = *(v0 + 208);
    v63 = *(v0 + 192);
    if (EnumCaseMultiPayload == 1)
    {
      v64 = *(v0 + 136);
      (*(*(v0 + 120) + 32))(*(v0 + 128), v63, *(v0 + 112));
      v65 = *(v61 + 48);
      sub_226D68ACC();
      sub_226D68B4C();
      v66 = sub_226D68A7C();
      v67 = *(v66 - 8);
      v68 = (*(v67 + 48))(v64, 1, v66);
      v70 = *(v0 + 128);
      v69 = *(v0 + 136);
      v71 = *(v0 + 112);
      v72 = *(v0 + 120);
      if (v68 != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v73 = *(v0 + 144);
      (*(*(v0 + 160) + 32))(*(v0 + 168), v63, *(v0 + 152));
      v65 = *(v61 + 48);
      sub_226D68ACC();
      sub_226D68ADC();
      v66 = sub_226D68A7C();
      v67 = *(v66 - 8);
      v74 = (*(v67 + 48))(v73, 1, v66);
      v72 = *(v0 + 160);
      v70 = *(v0 + 168);
      v69 = *(v0 + 144);
      v71 = *(v0 + 152);
      if (v74 != 1)
      {
LABEL_22:
        sub_226D68A5C();
        (*(v72 + 8))(v70, v71);
        (*(v67 + 8))(v69, v66);
        goto LABEL_25;
      }
    }

    v76 = *(v0 + 80);
    v75 = *(v0 + 88);
    (*(v72 + 8))(v70, v71);
    sub_226AC47B0(v69, &qword_27D7A6838, &qword_226D71E90);
    (*(v75 + 56))(v62 + v65, 1, 1, v76);
LABEL_25:
    v78 = *(v0 + 216);
    v77 = *(v0 + 224);
    v79 = *(v0 + 208);
    v81 = *(v0 + 80);
    v80 = *(v0 + 88);
    v82 = *(*(v0 + 200) + 48);
    (*(*(v0 + 240) + 32))(*(v0 + 256), v79, *(v0 + 232));
    sub_226AFD80C(v79 + v82, v77, &qword_27D7A6888, &unk_226D71EE8);
    sub_226AC40E8(v77, v78, &qword_27D7A6888, &unk_226D71EE8);
    v83 = (*(v80 + 48))(v78, 1, v81);
    v84 = *(v0 + 256);
    v85 = *(v0 + 216);
    if (v83 != 1)
    {
      break;
    }

    v1 = *(v0 + 232);
    v86 = *(v0 + 240);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6888, &unk_226D71EE8);
    (*(v86 + 8))(v84, v1);
    sub_226AC47B0(v85, &qword_27D7A6888, &unk_226D71EE8);
  }

  v90 = *(v0 + 240);
  v89 = *(v0 + 248);
  v91 = *(v0 + 232);
  v93 = *(v0 + 96);
  v92 = *(v0 + 104);
  v94 = *(v0 + 80);
  v95 = *(v0 + 88);
  v107 = *(v0 + 72);
  (*(v95 + 32))(v92, v85, v94);
  v96 = *(v90 + 16);
  *(v0 + 408) = v96;
  *(v0 + 416) = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v96(v89, v84, v91);
  (*(v95 + 16))(v93, v92, v94);
  sub_226B0E5CC(v93, v107);
  v97 = swift_task_alloc();
  *(v0 + 424) = v97;
  *v97 = v0;
  v97[1] = sub_226B0981C;
  v56 = *(v0 + 72);

  return MEMORY[0x2821185B8](v56);
}

uint64_t sub_226B0A2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B0A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D68AAC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6860, &qword_226D71EB0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_226D6D52C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_226D689AC();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = sub_226D68B2C();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0A628, v3, 0);
}

uint64_t sub_226B0A628()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_226D68ABC();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CC7598])
  {
    v5 = v0[22];
    v6 = v0[19];
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[12];
    (*(v0[21] + 96))(v5, v0[20]);
    (*(v8 + 32))(v6, v5, v7);
    sub_226D6897C();
    sub_226D6898C();
    v10 = sub_226D6896C();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v12(v9, 1, v10);
    v14 = v0[12];
    if (v13 == 1)
    {
      sub_226AC47B0(v0[12], &qword_27D7A6860, &qword_226D71EB0);
      v15 = 12;
    }

    else
    {
      v15 = sub_226D6894C();
      (*(v11 + 8))(v14, v10);
    }

    v26 = v0[11];
    sub_226D6898C();
    v27 = v12(v26, 1, v10);
    v28 = v0[11];
    if (v27 == 1)
    {
      sub_226AC47B0(v0[11], &qword_27D7A6860, &qword_226D71EB0);
      v29 = 2;
    }

    else
    {
      v34 = sub_226D6895C();
      (*(v11 + 8))(v28, v10);
      v29 = v34 & 1;
    }

    v35 = sub_226D6899C();
    v0[23] = v35;
    v36 = swift_task_alloc();
    v0[24] = v36;
    *v36 = v0;
    v36[1] = sub_226B0AC14;
    v37 = v0[16];
LABEL_22:
    v43 = v0[4];
    v44 = v0[2];

    return sub_226B0E8E0(v44, v37, v15, v29, v35, v43);
  }

  if (v4 == *MEMORY[0x277CC7588])
  {
    v16 = v0[22];
    v17 = v0[10];
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    (*(v0[21] + 96))(v16, v0[20]);
    (*(v19 + 32))(v18, v16, v20);
    sub_226D6897C();
    sub_226D68A8C();
    v21 = sub_226D6896C();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v24 = v23(v17, 1, v21);
    v25 = v0[10];
    if (v24 == 1)
    {
      sub_226AC47B0(v0[10], &qword_27D7A6860, &qword_226D71EB0);
      v15 = 12;
    }

    else
    {
      v15 = sub_226D6894C();
      (*(v22 + 8))(v25, v21);
    }

    v38 = v0[9];
    sub_226D68A8C();
    v39 = v23(v38, 1, v21);
    v40 = v0[9];
    if (v39 == 1)
    {
      sub_226AC47B0(v0[9], &qword_27D7A6860, &qword_226D71EB0);
      v29 = 2;
    }

    else
    {
      v41 = sub_226D6895C();
      (*(v22 + 8))(v40, v21);
      v29 = v41 & 1;
    }

    v35 = sub_226D6899C();
    v0[25] = v35;
    v42 = swift_task_alloc();
    v0[26] = v42;
    *v42 = v0;
    v42[1] = sub_226B0AE94;
    v37 = v0[15];
    goto LABEL_22;
  }

  if (v4 != *MEMORY[0x277CC7590])
  {
    return sub_226D6F0AC();
  }

  v30 = v0[2];
  v31 = sub_226D6735C();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  (*(v0[21] + 8))(v0[22], v0[20]);

  v32 = v0[1];

  return v32();
}

uint64_t sub_226B0AC14()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226B0ADA4, v4, 0);
}

uint64_t sub_226B0ADA4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B0AE94()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226B0B024, v4, 0);
}

uint64_t sub_226B0B024()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_226B0B114(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v62 = a2;
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v52[1] = a3;
  v63[5] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D4AC();
  isa = v7[-1].isa;
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68B6C();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6D52C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52[0] = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v52 - v19;
  v21 = [objc_opt_self() currentQueryGenerationToken];
  v63[0] = 0;
  v22 = [a1 setQueryGenerationFromToken:v21 error:v63];

  v23 = v63[0];
  if (v22)
  {
    v24 = sub_226D6974C();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    v25 = sub_226D6973C();
    swift_allocObject();
    v26 = v23;
    v27 = sub_226D6972C();
    v63[3] = v25;
    v63[4] = MEMORY[0x277CC78A8];
    v63[0] = v27;
    sub_226D6C49C();
    swift_allocObject();
    v28 = sub_226D6C48C();
    sub_226D6AC0C();
    sub_226D6897C();
    v29 = v61;
    v30 = sub_226D6AABC();
    if (v29)
    {
      (*(v13 + 8))(v17, v12);
    }

    else
    {
      v32 = v30;
      v33 = v62;
      v61 = v28;
      v34 = *(v13 + 8);
      v34(v17, v12);
      if (v32)
      {
        sub_226D6D46C();
        sub_226D6C46C();
        (*(isa + 1))(v9, v60);
        v63[0] = 0;
        if ([a1 save_])
        {
          v50 = v63[0];
        }

        else
        {
          v51 = v63[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        v35 = v53;
        v36 = v54;
        v37 = v55;
        (*(v54 + 16))(v53, v33, v55);
        v38 = sub_226D6E05C();
        v39 = sub_226D6E9CC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v58 = v40;
          v62 = swift_slowAlloc();
          v63[0] = v62;
          *v40 = 136315138;
          v60 = v38;
          v41 = v52[0];
          LODWORD(isa) = v39;
          sub_226D6897C();
          sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v42 = sub_226D6F1CC();
          v43 = v35;
          v45 = v44;
          v34(v41, v12);
          (*(v36 + 8))(v43, v55);
          v46 = sub_226AC4530(v42, v45, v63);

          v47 = v58;
          *(v58 + 1) = v46;
          v48 = v60;
          _os_log_impl(&dword_226AB4000, v60, isa, "Failed to save insights. Transaction with ID %s isn't found.", v47, 0xCu);
          v49 = v62;
          __swift_destroy_boxed_opaque_existential_0Tm(v62);
          MEMORY[0x22AA8BEE0](v49, -1, -1);
          MEMORY[0x22AA8BEE0](v47, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v35, v37);
        }
      }
    }
  }

  else
  {
    v31 = v63[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B0B790()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_logger;
  v2 = sub_226D6E07C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for BankConnectInsightsDataLoader(uint64_t a1)
{
  result = qword_27D7A6810;
  if (!qword_27D7A6810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B0B8AC(uint64_t a1)
{
  result = sub_226D6E07C();
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

uint64_t sub_226B0B988(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_226B0B9AC, v4, 0);
}

uint64_t sub_226B0B9AC()
{
  v1 = v0[3].i8[8];
  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_226B0BA94;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v3, "bankConnect/insights", 20, 2, &unk_226D71E60, v2, v4);
}

uint64_t sub_226B0BA94()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_226B0BBD0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_226B0BBB8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226B0BBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B0BC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B04B98(a1, v4, v5, v6);
}

uint64_t sub_226B0BCE8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6830, &qword_226D71E88);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = sub_226D68B5C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_226D68F8C();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6838, &qword_226D71E90);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6840, &qword_226D71E98);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = sub_226D68F9C();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = sub_226D689BC();
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v7 = sub_226D689EC();
  v2[41] = v7;
  v2[42] = *(v7 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = *(sub_226D68B1C() - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6848, &qword_226D71EA0);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v8 = sub_226D68AEC();
  v2[54] = v8;
  v2[55] = *(v8 - 8);
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0C16C, v1, 0);
}

uint64_t sub_226B0C16C()
{
  v1 = sub_226B0481C();
  *(v0 + 456) = v1;
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  v3 = sub_226D68FEC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  *v2 = v0;
  v2[1] = sub_226B0C250;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 104, v1, v3, v4, v5);
}

uint64_t sub_226B0C250()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_226B0E010;
  }

  else
  {
    v4 = sub_226B0C398;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226B0C398()
{
  v121 = v0;
  v1 = v0[15];
  v0[60] = v0[13];
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = v0[47];
    v4 = (v0[55] + 48);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    while (1)
    {
      v7 = v0[54];
      v8 = v0[52];
      sub_226B11A34(v5, v0[50]);
      sub_226D68AFC();
      v9 = *v4;
      if ((*v4)(v8, 1, v7) != 1)
      {
        break;
      }

      v10 = v0[52];
      sub_226B11CB8(v0[50], MEMORY[0x277CC7580]);
      sub_226AC47B0(v10, &qword_27D7A6848, &qword_226D71EA0);
      v5 += v6;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    v27 = v0[53];
    v28 = v0[54];
    v29 = v0[51];
    v30 = v0[50];
    sub_226AC47B0(v0[52], &qword_27D7A6848, &qword_226D71EA0);
    sub_226B11A98(v30, v29);
    sub_226D68AFC();
    sub_226B11CB8(v29, MEMORY[0x277CC7580]);
    if (v9(v27, 1, v28) != 1)
    {
      v31 = v0[46];
      v32 = v0[41];
      v33 = v0[42];
      (*(v0[55] + 32))(v0[56], v0[53], v0[54]);
      sub_226D68ACC();
      v34 = sub_226D689DC();
      v36 = v35;
      v37 = *(v33 + 8);
      v38 = v37(v31, v32);
      v41 = HIBYTE(v36) & 0xF;
      v42 = v34 & 0xFFFFFFFFFFFFLL;
      if ((v36 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v36) & 0xF;
      }

      else
      {
        v43 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {

        goto LABEL_108;
      }

      if ((v36 & 0x1000000000000000) != 0)
      {
        v45 = sub_226B10AFC(v34, v36, 10);
        v117 = v116;

        if ((v117 & 1) == 0)
        {
LABEL_95:
          v118 = v45;
          v94 = v0[45];
          v95 = v0[41];
          v96 = v0[39];
          v98 = v0[35];
          v97 = v0[36];
          sub_226D68ACC();
          sub_226D689CC();
          v37(v94, v95);
          (*(v97 + 104))(v96, *MEMORY[0x277CC7550], v98);
          sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558], MEMORY[0x277CC7560]);
          sub_226D6E53C();
          sub_226D6E53C();
          v100 = v0[39];
          v99 = v0[40];
          v102 = v0[35];
          v101 = v0[36];
          if (v0[9] == v0[11] && v0[10] == v0[12])
          {
            v103 = *(v101 + 8);
            v103(v0[39], v0[35]);
            v103(v99, v102);

LABEL_99:
            v106 = v0[26];
            sub_226D68ADC();
            v107 = sub_226D68A7C();
            v108 = *(v107 - 8);
            v109 = (*(v108 + 48))(v106, 1, v107);
            v110 = v0[26];
            if (v109 == 1)
            {
              sub_226AC47B0(v0[26], &qword_27D7A6838, &qword_226D71E90);
              v111 = 0;
              LOBYTE(v112) = 1;
            }

            else
            {
              v113 = sub_226D68A6C();
              v114 = v113;
              v112 = HIDWORD(v113) & 1;
              (*(v108 + 8))(v110, v107);
              v111 = v114;
            }

            (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B0], v0[22]);
            v115 = swift_task_alloc();
            v0[61] = v115;
            LOBYTE(v120[0]) = v112;
            v39 = v111 | (v112 << 32);
            *v115 = v0;
            v115[1] = sub_226B0D1C4;
            v38 = v0[28];
            v40 = v0[24];
            v42 = v118;
LABEL_103:

            return MEMORY[0x2821185C0](v38, v42, v39, v40);
          }

          v104 = sub_226D6F21C();
          v105 = *(v101 + 8);
          v105(v100, v102);
          v105(v99, v102);

          if (v104)
          {
            goto LABEL_99;
          }
        }

LABEL_108:
        (*(v0[55] + 8))(v0[56], v0[54]);
        goto LABEL_8;
      }

      if ((v36 & 0x2000000000000000) != 0)
      {
        v120[0] = v34;
        v120[1] = v36 & 0xFFFFFFFFFFFFFFLL;
        if (v34 == 43)
        {
          if (v41)
          {
            if (--v41)
            {
              v45 = 0;
              v88 = v120 + 1;
              while (1)
              {
                v89 = *v88 - 48;
                if (v89 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v45, 0xAuLL))
                {
                  break;
                }

                v48 = __CFADD__(10 * v45, v89);
                v45 = 10 * v45 + v89;
                if (v48)
                {
                  break;
                }

                ++v88;
                if (!--v41)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_93;
          }

LABEL_113:
          __break(1u);
          return MEMORY[0x2821185C0](v38, v42, v39, v40);
        }

        if (v34 != 45)
        {
          if (v41)
          {
            v45 = 0;
            v91 = v120;
            while (1)
            {
              v92 = *v91 - 48;
              if (v92 > 9)
              {
                break;
              }

              if (!is_mul_ok(v45, 0xAuLL))
              {
                break;
              }

              v48 = __CFADD__(10 * v45, v92);
              v45 = 10 * v45 + v92;
              if (v48)
              {
                break;
              }

              ++v91;
              if (!--v41)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_93;
        }

        if (v41)
        {
          if (--v41)
          {
            v45 = 0;
            v62 = v120 + 1;
            while (1)
            {
              v63 = *v62 - 48;
              if (v63 > 9)
              {
                break;
              }

              if (!is_mul_ok(v45, 0xAuLL))
              {
                break;
              }

              v48 = 10 * v45 >= v63;
              v45 = 10 * v45 - v63;
              if (!v48)
              {
                break;
              }

              ++v62;
              if (!--v41)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_93;
        }
      }

      else
      {
        if ((v34 & 0x1000000000000000) != 0)
        {
          v38 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v38 = sub_226D6EF4C();
        }

        v44 = *v38;
        if (v44 == 43)
        {
          if (v42 >= 1)
          {
            v41 = v42 - 1;
            if (v42 != 1)
            {
              v45 = 0;
              if (v38)
              {
                v86 = v38 + 1;
                while (1)
                {
                  v87 = *v86 - 48;
                  if (v87 > 9)
                  {
                    goto LABEL_93;
                  }

                  if (!is_mul_ok(v45, 0xAuLL))
                  {
                    goto LABEL_93;
                  }

                  v48 = __CFADD__(10 * v45, v87);
                  v45 = 10 * v45 + v87;
                  if (v48)
                  {
                    goto LABEL_93;
                  }

                  ++v86;
                  if (!--v41)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_85;
            }

            goto LABEL_93;
          }

          goto LABEL_112;
        }

        if (v44 != 45)
        {
          if (v42)
          {
            v45 = 0;
            if (v38)
            {
              while (1)
              {
                v90 = *v38 - 48;
                if (v90 > 9)
                {
                  goto LABEL_93;
                }

                if (!is_mul_ok(v45, 0xAuLL))
                {
                  goto LABEL_93;
                }

                v48 = __CFADD__(10 * v45, v90);
                v45 = 10 * v45 + v90;
                if (v48)
                {
                  goto LABEL_93;
                }

                ++v38;
                if (!--v42)
                {
                  goto LABEL_85;
                }
              }
            }

            goto LABEL_85;
          }

LABEL_93:
          v45 = 0;
          LOBYTE(v41) = 1;
LABEL_94:
          v93 = v41;

          if ((v93 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_108;
        }

        if (v42 >= 1)
        {
          v41 = v42 - 1;
          if (v42 != 1)
          {
            v45 = 0;
            if (v38)
            {
              v46 = v38 + 1;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  goto LABEL_93;
                }

                if (!is_mul_ok(v45, 0xAuLL))
                {
                  goto LABEL_93;
                }

                v48 = 10 * v45 >= v47;
                v45 = 10 * v45 - v47;
                if (!v48)
                {
                  goto LABEL_93;
                }

                ++v46;
                if (!--v41)
                {
                  goto LABEL_94;
                }
              }
            }

LABEL_85:
            LOBYTE(v41) = 0;
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        __break(1u);
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

  else
  {
LABEL_6:
    (*(v0[55] + 56))(v0[53], 1, 1, v0[54]);
  }

  sub_226AC47B0(v0[53], &qword_27D7A6848, &qword_226D71EA0);
LABEL_8:
  v0[62] = MEMORY[0x277D84F90];
  v11 = v0[15];
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v0[47];
      v14 = (v0[20] + 48);
      v15 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v16 = *(v13 + 72);
      while (1)
      {
        v17 = v0[19];
        v18 = v0[17];
        sub_226B11A34(v15, v0[48]);
        sub_226D68B0C();
        v19 = *v14;
        if ((*v14)(v18, 1, v17) != 1)
        {
          break;
        }

        v20 = v0[17];
        sub_226B11CB8(v0[48], MEMORY[0x277CC7580]);
        sub_226AC47B0(v20, &qword_27D7A6830, &qword_226D71E88);
        v15 += v16;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      v49 = v0[48];
      v50 = v0[49];
      v51 = v0[18];
      v52 = v0[19];
      sub_226AC47B0(v0[17], &qword_27D7A6830, &qword_226D71E88);
      sub_226B11A98(v49, v50);
      sub_226D68B0C();
      sub_226B11CB8(v50, MEMORY[0x277CC7580]);
      if (v19(v51, 1, v52) == 1)
      {

        goto LABEL_14;
      }

      v53 = v0[44];
      v54 = v0[41];
      v55 = v0[42];
      (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
      sub_226D68ACC();
      v56 = sub_226D689DC();
      v58 = v57;
      v59 = *(v55 + 8);
      v59(v53, v54);
      v60 = sub_226B0E2CC(v56, v58);
      if (v61)
      {
LABEL_42:
        (*(v0[20] + 8))(v0[21], v0[19]);

        goto LABEL_15;
      }

      v119 = v60;
      v64 = v0[43];
      v65 = v0[41];
      v66 = v0[37];
      v68 = v0[35];
      v67 = v0[36];
      sub_226D68ACC();
      sub_226D689CC();
      v59(v64, v65);
      (*(v67 + 104))(v66, *MEMORY[0x277CC7550], v68);
      sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558], MEMORY[0x277CC7560]);
      sub_226D6E53C();
      sub_226D6E53C();
      v70 = v0[37];
      v69 = v0[38];
      v71 = v0[35];
      v72 = v0[36];
      if (v0[5] == v0[7] && v0[6] == v0[8])
      {
        v73 = *(v72 + 8);
        v73(v0[37], v0[35]);
        v73(v69, v71);
      }

      else
      {
        v74 = sub_226D6F21C();
        v75 = *(v72 + 8);
        v75(v70, v71);
        v75(v69, v71);

        if ((v74 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v76 = v0[25];
      sub_226D68B4C();
      v77 = sub_226D68A7C();
      v78 = *(v77 - 8);
      v79 = (*(v78 + 48))(v76, 1, v77);
      v80 = v0[25];
      if (v79 == 1)
      {
        sub_226AC47B0(v0[25], &qword_27D7A6838, &qword_226D71E90);
        v81 = 0;
        LOBYTE(v82) = 1;
      }

      else
      {
        v83 = sub_226D68A6C();
        v84 = v83;
        v82 = HIDWORD(v83) & 1;
        (*(v78 + 8))(v80, v77);
        v81 = v84;
      }

      (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B8], v0[22]);
      v85 = swift_task_alloc();
      v0[63] = v85;
      LOBYTE(v120[0]) = v82;
      v39 = v81 | (v82 << 32);
      *v85 = v0;
      v85[1] = sub_226B0DB50;
      v38 = v0[27];
      v40 = v0[24];
      v42 = v119;
      goto LABEL_103;
    }
  }

LABEL_13:
  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[18];

  (*(v22 + 56))(v23, 1, 1, v21);
LABEL_14:
  sub_226AC47B0(v0[18], &qword_27D7A6830, &qword_226D71E88);
LABEL_15:

  v24 = v0[1];
  v25 = MEMORY[0x277D84F90];

  return v24(v25);
}

uint64_t sub_226B0D1C4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226B0D330, v4, 0);
}

uint64_t sub_226B0D330()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[55] + 8))(v0[56], v0[54]);
    sub_226AC47B0(v3, &qword_27D7A6840, &qword_226D71E98);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v0[33];
    v5 = v0[34];
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    v4 = sub_226BBB268(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    v69 = v7;
    if (v9 >= v8 >> 1)
    {
      v4 = sub_226BBB268((v8 > 1), v9 + 1, 1, v4);
    }

    v11 = v0[55];
    v10 = v0[56];
    v12 = v0[54];
    v13 = v0[33];
    v14 = v0[29];
    v15 = v0[30];
    (*(v15 + 8))(v0[34], v14);
    (*(v11 + 8))(v10, v12);
    *(v4 + 2) = v9 + 1;
    v69(&v4[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v9], v13, v14);
  }

  v70 = v4;
  v0[62] = v4;
  v16 = v0[15];
  if (!v16 || (v17 = *(v16 + 16)) == 0)
  {
LABEL_11:
    v26 = v0[19];
    v27 = v0[20];
    v28 = v0[18];

    (*(v27 + 56))(v28, 1, 1, v26);
LABEL_12:
    sub_226AC47B0(v0[18], &qword_27D7A6830, &qword_226D71E88);
LABEL_13:

    v29 = v0[1];

    return v29(v70);
  }

  v18 = v0[47];
  v19 = (v0[20] + 48);
  v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = *(v18 + 72);
  while (1)
  {
    v22 = v0[19];
    v23 = v0[17];
    sub_226B11A34(v20, v0[48]);
    sub_226D68B0C();
    v24 = *v19;
    if ((*v19)(v23, 1, v22) != 1)
    {
      break;
    }

    v25 = v0[17];
    sub_226B11CB8(v0[48], MEMORY[0x277CC7580]);
    sub_226AC47B0(v25, &qword_27D7A6830, &qword_226D71E88);
    v20 += v21;
    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  v31 = v0[48];
  v32 = v0[49];
  v33 = v0[18];
  v34 = v0[19];
  sub_226AC47B0(v0[17], &qword_27D7A6830, &qword_226D71E88);
  sub_226B11A98(v31, v32);
  sub_226D68B0C();
  sub_226B11CB8(v32, MEMORY[0x277CC7580]);
  if (v24(v33, 1, v34) == 1)
  {

    goto LABEL_12;
  }

  v35 = v0[44];
  v36 = v0[41];
  v37 = v0[42];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  sub_226D68ACC();
  v38 = sub_226D689DC();
  v40 = v39;
  v41 = *(v37 + 8);
  v41(v35, v36);
  v42 = sub_226B0E2CC(v38, v40);
  if (v43)
  {
LABEL_19:
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_13;
  }

  v68 = v42;
  v44 = v0[43];
  v45 = v0[41];
  v46 = v0[37];
  v48 = v0[35];
  v47 = v0[36];
  sub_226D68ACC();
  sub_226D689CC();
  v41(v44, v45);
  (*(v47 + 104))(v46, *MEMORY[0x277CC7550], v48);
  sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558], MEMORY[0x277CC7560]);
  sub_226D6E53C();
  sub_226D6E53C();
  v50 = v0[37];
  v49 = v0[38];
  v51 = v0[35];
  v52 = v0[36];
  if (v0[5] == v0[7] && v0[6] == v0[8])
  {
    v53 = *(v52 + 8);
    v53(v0[37], v0[35]);
    v53(v49, v51);
  }

  else
  {
    v54 = sub_226D6F21C();
    v55 = *(v52 + 8);
    v55(v50, v51);
    v55(v49, v51);

    if ((v54 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v56 = v0[25];
  sub_226D68B4C();
  v57 = sub_226D68A7C();
  v58 = *(v57 - 8);
  v59 = (*(v58 + 48))(v56, 1, v57);
  v60 = v0[25];
  if (v59 == 1)
  {
    sub_226AC47B0(v0[25], &qword_27D7A6838, &qword_226D71E90);
    v61 = 0;
    LOBYTE(v62) = 1;
  }

  else
  {
    v63 = sub_226D68A6C();
    v64 = v63;
    v62 = HIDWORD(v63) & 1;
    (*(v58 + 8))(v60, v57);
    v61 = v64;
  }

  (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B8], v0[22]);
  v65 = swift_task_alloc();
  v0[63] = v65;
  *v65 = v0;
  v65[1] = sub_226B0DB50;
  v66 = v0[27];
  v67 = v0[24];

  return MEMORY[0x2821185C0](v66, v68, v61 | (v62 << 32), v67);
}

uint64_t sub_226B0DB50()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226B0DCBC, v4, 0);
}

uint64_t sub_226B0DCBC()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    sub_226AC47B0(v3, &qword_27D7A6840, &qword_226D71E98);
    v20 = v0[62];
  }

  else
  {
    v5 = v0[31];
    v4 = v0[32];
    v19 = *(v2 + 32);
    v19(v4, v3, v1);
    (*(v2 + 16))(v5, v4, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v0[62];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_226BBB268(0, v7[2] + 1, 1, v0[62]);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_226BBB268((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = v0[32];
    v18 = v0[31];
    v11 = v0[29];
    v12 = v0[30];
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[19];

    (*(v12 + 8))(v10, v11);
    (*(v13 + 8))(v14, v15);
    v7[2] = v9 + 1;
    v20 = v7;
    v19(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v18, v11);
  }

  v16 = v0[1];

  return v16(v20);
}

uint64_t sub_226B0E010()
{
  v14 = v0;
  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_226D6F26C();
    v9 = sub_226AC4530(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_226AB4000, v3, v4, "Error fetching hero image details: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

unint64_t sub_226B0E2CC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_226D6EF4C();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_226B10AFC(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_226B0E5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D68A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D68A2C();
  v9 = sub_226B22B2C(MEMORY[0x277D84F90]);
  v10 = v8;
  v37 = *(v8 + 16);
  if (v37)
  {
    v30[1] = a2;
    v31 = a1;
    v11 = 0;
    v36 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = (v5 + 8);
    v35 = v5 + 16;
    v32 = v10;
    v33 = v5;
    while (v11 < *(v10 + 16))
    {
      v12 = v4;
      (*(v5 + 16))(v7, v36 + *(v5 + 72) * v11, v4);
      v13 = sub_226D689FC();
      v14 = v7;
      v15 = sub_226D68A0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v9;
      v18 = sub_226C2FE90(v13);
      v19 = v9[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_19;
      }

      v22 = v17;
      if (v9[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226C37AE4();
        }
      }

      else
      {
        sub_226C311F4(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_226C2FE90(v13);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_21;
        }

        v18 = v23;
      }

      v4 = v12;
      v9 = v38;
      if (v22)
      {
        *(v38[7] + 8 * v18) = v15;
        v7 = v14;
        (*v34)(v14, v12);
      }

      else
      {
        v38[(v18 >> 6) + 8] |= 1 << v18;
        *(v9[6] + 8 * v18) = v13;
        *(v9[7] + 8 * v18) = v15;
        v7 = v14;
        (*v34)(v14, v12);
        v25 = v9[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_20;
        }

        v9[2] = v27;
      }

      ++v11;
      v10 = v32;
      v5 = v33;
      if (v37 == v11)
      {

        a1 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_226D6F25C();
    __break(1u);
  }

  else
  {

LABEL_17:
    sub_226D68A3C();
    sub_226D6A48C();
    v28 = sub_226D68A4C();
    return (*(*(v28 - 8) + 8))(a1, v28);
  }

  return result;
}

uint64_t sub_226B0E8E0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a5;
  *(v7 + 417) = a4;
  *(v7 + 416) = a3;
  *(v7 + 56) = a1;
  v8 = sub_226D6D52C();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  sub_226D6D4AC();
  *(v7 + 120) = swift_task_alloc();
  v9 = sub_226D69FAC();
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();
  sub_226D6A85C();
  *(v7 + 152) = swift_task_alloc();
  sub_226D690CC();
  *(v7 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6868, &qword_226D71EC0);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_226D68AEC();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6848, &qword_226D71EA0);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6870, &qword_226D71EC8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v11 = sub_226D689EC();
  *(v7 + 256) = v11;
  *(v7 + 264) = *(v11 - 8);
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v12 = sub_226D68B5C();
  *(v7 + 288) = v12;
  *(v7 + 296) = *(v12 - 8);
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6830, &qword_226D71E88);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = *(sub_226D68B1C() - 8);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6878, &unk_226D71ED0);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0EDB0, v6, 0);
}

uint64_t sub_226B0EDB0()
{
  v77 = *(v0 + 72);
  if (v77 && (v1 = *(v77 + 16)) != 0)
  {
    v2 = *(v0 + 344);
    v3 = (*(v0 + 296) + 48);
    v4 = v77 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v5 = *(v2 + 72);
    while (1)
    {
      v6 = *(v0 + 336);
      v7 = *(v0 + 288);
      sub_226B11A34(v4, *(v0 + 368));
      sub_226D68B0C();
      v8 = *v3;
      if ((*v3)(v6, 1, v7) != 1)
      {
        break;
      }

      v9 = *(v0 + 336);
      sub_226B11CB8(*(v0 + 368), MEMORY[0x277CC7580]);
      sub_226AC47B0(v9, &qword_27D7A6830, &qword_226D71E88);
      v4 += v5;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    v41 = *(v0 + 368);
    v42 = *(v0 + 376);
    v43 = *(v0 + 328);
    v44 = *(v0 + 320);
    v45 = *(v0 + 288);
    sub_226AC47B0(*(v0 + 336), &qword_27D7A6830, &qword_226D71E88);
    sub_226B11A98(v41, v42);
    sub_226D68B0C();
    sub_226B11CB8(v42, MEMORY[0x277CC7580]);
    sub_226AC40E8(v43, v44, &qword_27D7A6830, &qword_226D71E88);
    if (v8(v44, 1, v45) != 1)
    {
      v51 = *(v0 + 312);
      v53 = *(v0 + 296);
      v52 = *(v0 + 304);
      v54 = *(v0 + 288);
      v55 = *(v0 + 80);
      (*(v53 + 32))(v51, *(v0 + 320), v54);
      (*(v53 + 16))(v52, v51, v54);
      sub_226D68ACC();
      if (*(v55 + 16))
      {
        v56 = sub_226C2FED4(*(v0 + 280));
        if (v57)
        {
          v58 = *(*(v0 + 80) + 56) + 16 * v56;
          sub_226B11B44(*v58, *(v58 + 8));
        }
      }

      v67 = *(v0 + 328);
      v68 = *(v0 + 312);
      v69 = *(v0 + 288);
      v70 = *(v0 + 296);
      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
      sub_226D6752C();
      (*(v70 + 8))(v68, v69);
      sub_226AC47B0(v67, &qword_27D7A6830, &qword_226D71E88);
      goto LABEL_8;
    }

    v10 = *(v0 + 392);
    sub_226AC47B0(*(v0 + 328), &qword_27D7A6830, &qword_226D71E88);
  }

  else
  {
LABEL_6:
    v10 = *(v0 + 392);
  }

  v11 = sub_226D6753C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if (!v77)
  {
LABEL_12:
    v22 = *(v0 + 248);
LABEL_13:
    v23 = sub_226D6CB8C();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    goto LABEL_14;
  }

LABEL_8:
  v12 = *(v0 + 72);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = *(v0 + 344);
  v15 = (*(v0 + 192) + 48);
  v16 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v14 + 72);
  while (1)
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 184);
    sub_226B11A34(v16, *(v0 + 352));
    sub_226D68AFC();
    v20 = *v15;
    if ((*v15)(v18, 1, v19) != 1)
    {
      break;
    }

    v21 = *(v0 + 232);
    sub_226B11CB8(*(v0 + 352), MEMORY[0x277CC7580]);
    sub_226AC47B0(v21, &qword_27D7A6848, &qword_226D71EA0);
    v16 += v17;
    if (!--v13)
    {
      goto LABEL_12;
    }
  }

  v46 = *(v0 + 352);
  v47 = *(v0 + 360);
  v48 = *(v0 + 224);
  v49 = *(v0 + 216);
  v50 = *(v0 + 184);
  sub_226AC47B0(*(v0 + 232), &qword_27D7A6848, &qword_226D71EA0);
  sub_226B11A98(v46, v47);
  sub_226D68AFC();
  sub_226B11CB8(v47, MEMORY[0x277CC7580]);
  sub_226AC40E8(v48, v49, &qword_27D7A6848, &qword_226D71EA0);
  if (v20(v49, 1, v50) == 1)
  {
    v22 = *(v0 + 248);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6848, &qword_226D71EA0);
    goto LABEL_13;
  }

  v59 = *(v0 + 208);
  v61 = *(v0 + 192);
  v60 = *(v0 + 200);
  v62 = *(v0 + 184);
  v63 = *(v0 + 80);
  (*(v61 + 32))(v59, *(v0 + 216), v62);
  (*(v61 + 16))(v60, v59, v62);
  sub_226D68ACC();
  if (*(v63 + 16))
  {
    v64 = sub_226C2FED4(*(v0 + 272));
    if (v65)
    {
      v66 = *(*(v0 + 80) + 56) + 16 * v64;
      sub_226B11B44(*v66, *(v66 + 8));
    }
  }

  v71 = *(v0 + 224);
  v72 = *(v0 + 208);
  v73 = *(v0 + 184);
  v74 = *(v0 + 192);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  sub_226D6CB7C();
  (*(v74 + 8))(v72, v73);
  sub_226AC47B0(v71, &qword_27D7A6848, &qword_226D71EA0);
LABEL_14:
  v24 = *(v0 + 176);
  v25 = *(v0 + 417);
  v26 = *(v0 + 416);
  v27 = sub_226D6B37C();
  v28 = *(*(v27 - 8) + 56);
  v28(v24, 1, 1, v27);
  if (v26 != 12 && v25 != 2)
  {
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    sub_226D690DC();
    sub_226D6A86C();
    sub_226D6B36C();
    sub_226AC47B0(v29, &qword_27D7A6868, &qword_226D71EC0);
    v28(v30, 0, 1, v27);
    sub_226AFD80C(v30, v29, &qword_27D7A6868, &qword_226D71EC0);
  }

  v31 = *(v0 + 384);
  v32 = *(v0 + 392);
  v33 = *(v0 + 240);
  v34 = *(v0 + 168);
  v35 = *(v0 + 176);
  v76 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((*(v0 + 88) + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment), *(*(v0 + 88) + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment + 24));
  sub_226D6BB0C();
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
  sub_226D6D46C();
  sub_226AC40E8(v35, v34, &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC40E8(v32, v31, &qword_27D7A6878, &unk_226D71ED0);
  sub_226AC40E8(v76, v33, &qword_27D7A6870, &qword_226D71EC8);
  sub_226D69F9C();
  v38 = swift_task_alloc();
  *(v0 + 400) = v38;
  *v38 = v0;
  v38[1] = sub_226B0F5A4;
  v39 = *(v0 + 144);
  v40 = *(v0 + 56);

  return MEMORY[0x282119258](v40, v39, v36, v37);
}

uint64_t sub_226B0F5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 408) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_226B0F930;
  }

  else
  {
    v7 = sub_226B0F72C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_226B0F72C()
{
  v1 = v0[49];
  v2 = v0[31];
  sub_226AC47B0(v0[22], &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC47B0(v2, &qword_27D7A6870, &qword_226D71EC8);
  sub_226AC47B0(v1, &qword_27D7A6878, &unk_226D71ED0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B0F930()
{
  v30 = v0;
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[31];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[8];
  sub_226AC47B0(v0[22], &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC47B0(v3, &qword_27D7A6870, &qword_226D71EC8);
  sub_226AC47B0(v2, &qword_27D7A6878, &unk_226D71ED0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[51];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_226AC4530(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v27 = v22;
    _os_log_impl(&dword_226AB4000, v9, v10, "Failed to generate icon for transaction with ID %s with error: %@.", v16, 0x16u);
    sub_226AC47B0(v27, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[7];
  v24 = sub_226D6735C();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_226B0FD78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v90 = a4;
  v102 = a2;
  v105[5] = *MEMORY[0x277D85DE8];
  v99 = sub_226D6D4AC();
  v8 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v74 - v12;
  v100 = sub_226D6D52C();
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v88 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v104 = &v74 - v17;
  MEMORY[0x28223BE20](v18);
  v96 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v74 - v21;
  v23 = sub_226D6E07C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v98 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() currentQueryGenerationToken];
  v105[0] = 0;
  v103 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v26 error:v105];

  if (a1)
  {
    v86 = v10;
    v91 = a3;
    v27 = qword_28105F708;
    v28 = v105[0];
    if (v27 != -1)
    {
LABEL_28:
      swift_once();
    }

    v29 = __swift_project_value_buffer(v23, qword_28105F710);
    v80 = v24;
    v30 = *(v24 + 16);
    v81 = v23;
    v30(v98, v29, v23);
    v31 = sub_226D6974C();
    (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
    v32 = sub_226D6973C();
    swift_allocObject();
    v33 = sub_226D6972C();
    v105[3] = v32;
    v105[4] = MEMORY[0x277CC78A8];
    v105[0] = v33;
    sub_226D6C49C();
    swift_allocObject();
    v89 = sub_226D6C48C();
    v34 = v102 + 56;
    v35 = 1 << *(v102 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v22 = v36 & *(v102 + 56);
    v37 = (v35 + 63) >> 6;
    v101 = v97 + 16;
    v94 = v97 + 32;
    v85 = (v8 + 16);
    v95 = (v97 + 8);
    v84 = (v8 + 8);

    v38 = 0;
    *&v39 = 136315394;
    v78 = v39;
    *&v39 = 136315650;
    v79 = v39;
    v23 = v99;
    v24 = v100;
    v93 = v37;
    v92 = v34;
    while (v22)
    {
      v42 = v23;
      v43 = v38;
      v8 = v104;
LABEL_15:
      v45 = v96;
      v44 = v97;
      v46 = *(v97 + 16);
      v46(v96, *(v102 + 48) + *(v97 + 72) * (__clz(__rbit64(v22)) | (v43 << 6)), v24);
      (*(v44 + 32))(v8, v45, v24);
      sub_226D6AC0C();
      v47 = sub_226D6AABC();
      if (v5)
      {

        (*v95)(v104, v100);
        return (*(v80 + 8))(v98, v81);
      }

      v48 = v47;
      v22 &= v22 - 1;
      if (v47)
      {
        sub_226D6C45C();
        v24 = v100;
        (*v95)(v104, v100);

        v38 = v43;
        v23 = v99;
      }

      else
      {
        v87 = 0;
        v49 = v83;
        v23 = v42;
        (*v85)(v83, v91, v42);
        v50 = v82;
        v51 = v104;
        v52 = v100;
        v46(v82, v104, v100);
        v53 = sub_226D6E05C();
        v54 = sub_226D6E9CC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v76 = v54;
          v56 = v55;
          v77 = swift_slowAlloc();
          v105[0] = v77;
          *v56 = v78;
          v75 = v53;
          v57 = sub_226D6D48C();
          v58 = v49;
          v60 = v59;
          (*v84)(v58, v99);
          v61 = sub_226AC4530(v57, v60, v105);

          *(v56 + 4) = v61;
          *(v56 + 12) = 2080;
          sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v62 = sub_226D6F1CC();
          v64 = v63;
          v65 = *v95;
          (*v95)(v50, v52);
          v66 = sub_226AC4530(v62, v64, v105);
          v67 = v99;

          *(v56 + 14) = v66;
          v68 = v75;
          _os_log_impl(&dword_226AB4000, v75, v76, "Failed to store retry after date (%s). Transaction with ID %s not found.", v56, 0x16u);
          v69 = v77;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v69, -1, -1);
          MEMORY[0x22AA8BEE0](v56, -1, -1);

          v65(v104, v52);
          v23 = v67;
        }

        else
        {

          v70 = *v95;
          (*v95)(v50, v52);
          (*v84)(v49, v23);
          v70(v51, v52);
        }

        v38 = v43;
        v5 = v87;
        v24 = v52;
      }

      v37 = v93;
      v34 = v92;
    }

    v8 = v104;
    while (1)
    {
      v43 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v43 >= v37)
      {
        break;
      }

      v22 = *(v34 + 8 * v43);
      ++v38;
      if (v22)
      {
        v42 = v23;
        goto LABEL_15;
      }
    }

    v105[0] = 0;
    if ([v103 save_])
    {
      v71 = *(v80 + 8);
      v72 = v105[0];
      v71(v98, v81);
    }

    v73 = v105[0];
    sub_226D6D04C();

    swift_willThrow();

    return (*(v80 + 8))(v98, v81);
  }

  else
  {
    v40 = v105[0];
    sub_226D6D04C();

    return swift_willThrow();
  }
}

void *sub_226B10A88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62E0, &qword_226D70D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_226B10AFC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_226D6E4FC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226B11080(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_226D6EF4C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_226B11080(uint64_t a1, unint64_t a2)
{
  v2 = sub_226D6E50C();
  v6 = sub_226B11100(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_226B11100(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_226D6ECAC();
    if (!v9 || (v10 = v9, v11 = sub_226B10A88(v9, 0), v12 = sub_226B11258(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_226D6E41C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_226D6E41C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_226D6EF4C();
LABEL_4:

  return sub_226D6E41C();
}

unint64_t sub_226B11258(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_226B11478(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_226D6E4BC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_226D6EF4C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_226B11478(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_226D6E49C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_226B11478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_226D6E4CC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA8A550](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_226B114F4(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v44 = MEMORY[0x277D84F90];
  sub_226AE2050(0, v9, 0);
  v43 = v7;
  if (v9)
  {
    v13 = a4[2];
    v14 = a5;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_70;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_71;
      }

      if (v8 < 0)
      {
        goto LABEL_72;
      }

      if (v13 == v18)
      {

        v19 = a4;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6250, &qword_226D70C70);
            v22 = *(sub_226D6D52C() - 8);
            v38 = (*(v22 + 80) + 32) & ~*(v22 + 80);
            v40 = *(v22 + 72);
            v19 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v19);
            if (!v40)
            {
              goto LABEL_76;
            }

            if (v23 - v38 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_78;
            }

            v19[2] = v18;
            v19[3] = 2 * ((v23 - v38) / v40);
          }

          sub_226D6D52C();
          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226AE2050((v20 > 1), v21 + 1, 1);
        v14 = a5;
      }

      *(v44 + 16) = v21 + 1;
      *(v44 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v43;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v16 = v8;
    v14 = a5;
LABEL_39:
    v25 = v16 <= v7;
    if (a3 > 0)
    {
      v25 = v16 >= v7;
    }

    if (v25)
    {
      return;
    }

    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v28 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v29 = a4[2];
      if (v29 < v28)
      {
        v28 = a4[2];
      }

      v30 = v28 - v16;
      if (v28 < v16)
      {
        goto LABEL_74;
      }

      if (v16 < 0)
      {
        goto LABEL_75;
      }

      if (v29 == v30)
      {

        v31 = a4;
      }

      else
      {
        v31 = v26;
        if (v28 != v16)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6250, &qword_226D70C70);
            v35 = *(sub_226D6D52C() - 8);
            v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v41 = *(v35 + 72);
            v31 = swift_allocObject();
            v36 = _swift_stdlib_malloc_size(v31);
            if (!v41)
            {
              goto LABEL_77;
            }

            if (v36 - v39 == 0x8000000000000000 && v41 == -1)
            {
              goto LABEL_79;
            }

            v31[2] = v30;
            v31[3] = 2 * ((v36 - v39) / v41);
          }

          sub_226D6D52C();
          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v33 = *(v44 + 16);
      v32 = *(v44 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_226AE2050((v32 > 1), v33 + 1, 1);
        v14 = a5;
      }

      *(v44 + 16) = v33 + 1;
      *(v44 + 8 * v33 + 32) = v31;
      v34 = v27 <= v43;
      if (a3 > 0)
      {
        v34 = v27 >= v43;
      }

      v16 = v27;
      if (v34)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_226B11A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68B1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B11A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68B1C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B11AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B11B44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226B11B98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226B11BEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B07328(a1, v5, v4);
}

uint64_t sub_226B11CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B11D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B04958(a1, v4, v5, v6);
}

unint64_t sub_226B11DCC(char *a1, void *a2)
{
  v173 = a1;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  MEMORY[0x28223BE20](v170);
  v168 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v169 = &v123 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v7 - 8);
  v167 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v123 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v123 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v123 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v123 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v123 - v22;
  v24 = sub_226D69CAC();
  v172 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v174;
  v171 = a2;
  sub_226B132E8(v173, a2);
  if (v27)
  {
    return v2 & 1;
  }

  v158 = v20;
  v159 = v23;
  v151 = v17;
  v165 = v24;
  v166 = v26;
  v154 = v11;
  v155 = v14;
  v174 = 0;
  v164 = v2;
  v29 = v28;
  v173 = sub_226D69CBC();
  v30 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v163 = v30;
  v162 = sub_226D6E9FC();
  v175 = MEMORY[0x277D84F90];
  v31 = (v29 + 56);
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v29 + 56);
  v35 = (v32 + 63) >> 6;
  v36 = *MEMORY[0x277CC7A10];
  v37 = "Unknown classification outcome";
  v160 = (v172 + 8);
  v161 = (v172 + 104);
  v153 = *MEMORY[0x277CC7A20];
  v157 = *MEMORY[0x277CC79B0];
  v152 = *MEMORY[0x277CC79B8];

  v39 = 0;
  v40 = "classicOrderTypeIdentifier";
  v41 = "otherMerchantEmailDisplayName";
  v42 = xmmword_226D71F30;
  v43 = xmmword_226D71F40;
  v44 = xmmword_226D70840;
  v45 = xmmword_226D71840;
  v46 = "merchantEmailAddress";
  v47 = "eventTypeValue == %@";
LABEL_5:
  v48 = v166;
  while (v34)
  {
LABEL_6:
    v49 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v50 = *(result + 48) + 56 * (v49 | (v39 << 6));
    v51 = *(v50 + 48);
    if (v51 != 2)
    {
      v150 = v36;
      v138 = result;
      v149 = v37;
      v137 = v40;
      v136 = v41;
      v144 = v42;
      v143 = v43;
      v148 = v44;
      v147 = v45;
      v135 = v46;
      v134 = v47;
      if (v51)
      {
        v130 = 0xD000000000000014;
        v131 = 0xD000000000000018;
        v53 = v36;
        v125 = v153;
        v54 = v47;
        v55 = v46;
      }

      else
      {
        v130 = 0xD00000000000001ALL;
        v131 = 0xD00000000000001ELL;
        v53 = v157;
        v125 = v152;
        v54 = v41;
        v55 = v40;
      }

      v129 = v55 | 0x8000000000000000;
      v127 = v54 | 0x8000000000000000;
      v56 = *(v50 + 8);
      v142 = *v50;
      v141 = v56;
      v57 = *(v50 + 24);
      v128 = *(v50 + 16);
      v146 = v57;
      v59 = *(v50 + 32);
      v58 = *(v50 + 40);
      v133 = v59;
      v132 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v126 = swift_allocObject();
      *(v126 + 16) = v144;
      v140 = swift_allocObject();
      v140[1] = v143;
      v124 = *v161;
      v124(v48, v53, v165);
      v156 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v60 = swift_allocObject();
      *(v60 + 16) = v148;

      v61 = sub_226D69C9C();
      v63 = v62;
      *(v60 + 56) = MEMORY[0x277D837D0];
      v139 = sub_226B16404();
      *(v60 + 64) = v139;
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      v64 = sub_226D6E91C();
      v65 = *v160;
      v66 = v165;
      v67 = v166;
      (*v160)(v166, v165);
      *(v140 + 4) = v64;
      v124(v67, v125, v66);
      v68 = swift_allocObject();
      *(v68 + 16) = v148;
      v69 = sub_226D69C9C();
      v70 = v139;
      *(v68 + 56) = MEMORY[0x277D837D0];
      *(v68 + 64) = v70;
      *(v68 + 32) = v69;
      *(v68 + 40) = v71;
      v72 = sub_226D6E91C();
      v65(v67, v165);
      *(v140 + 5) = v72;
      v73 = sub_226D6E5CC();

      v140 = objc_opt_self();
      v74 = [v140 orPredicateWithSubpredicates_];

      v75 = v126;
      *(v126 + 32) = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = v147;
      v77 = MEMORY[0x277D837D0];
      v78 = v139;
      *(v76 + 56) = MEMORY[0x277D837D0];
      *(v76 + 64) = v78;
      v79 = v127;
      *(v76 + 32) = v130;
      *(v76 + 40) = v79;
      *(v76 + 96) = v77;
      *(v76 + 104) = v78;
      *(v76 + 72) = v142;
      *(v76 + 80) = v141;

      *(v75 + 40) = sub_226D6E91C();
      v80 = swift_allocObject();
      *(v80 + 16) = v147;
      v81 = MEMORY[0x277D837D0];
      *(v80 + 56) = MEMORY[0x277D837D0];
      *(v80 + 64) = v78;
      v82 = v129;
      *(v80 + 32) = v131;
      *(v80 + 40) = v82;
      *(v80 + 96) = v81;
      *(v80 + 104) = v78;
      v83 = v128;
      *(v80 + 72) = v128;
      *(v80 + 80) = v146;

      *(v75 + 48) = sub_226D6E91C();
      v84 = sub_226D6E5CC();

      v85 = [v140 andPredicateWithSubpredicates_];

      v86 = sub_226AE5134(v142, v141, v83, v146, v133, v132, v51);
      MEMORY[0x22AA8A610](v86);
      if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v36 = v150;
      result = v138;
      v37 = v149;
      v40 = v137;
      v41 = v136;
      v42 = v144;
      v43 = v143;
      v44 = v148;
      v45 = v147;
      v46 = v135;
      v47 = v134;
      goto LABEL_5;
    }
  }

  while (1)
  {
    v52 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v52 >= v35)
    {
      break;
    }

    v34 = v31[v52];
    ++v39;
    if (v34)
    {
      v39 = v52;
      goto LABEL_6;
    }
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v87 = sub_226D6E5CC();

  v88 = [objc_opt_self() orPredicateWithSubpredicates_];

  v48 = v173;
  [v173 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_226D71F20;
  v90 = v162;
  *(v89 + 32) = v162;
  v31 = v90;
  v91 = sub_226D6E5CC();

  [v48 setSortDescriptors_];

  [v48 setFetchLimit_];
  v37 = v174;
  result = sub_226D6EBBC();
  if (v37)
  {
    LOBYTE(v2) = v37;

    return v2 & 1;
  }

  v150 = v36;
  if (!(result >> 62))
  {
    v92 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_45:
  v122 = result;
  v92 = sub_226D6EDFC();
  result = v122;
LABEL_23:
  v93 = v165;
  v94 = v170;
  v96 = v158;
  v95 = v159;
  if (!v92)
  {

    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v174 = v37;
  v162 = v31;
  if ((result & 0xC000000000000001) != 0)
  {
    v97 = MEMORY[0x22AA8AFD0](0);
LABEL_27:
    v98 = v97;

    v171 = v98;
    sub_226D69CFC();
    v99 = v172;
    v164 = *(v172 + 104);
    v164(v96, v157, v93);
    v163 = *(v99 + 56);
    v163(v96, 0, 1, v93);
    v100 = *(v94 + 48);
    v101 = v169;
    sub_226B16494(v95, v169);
    sub_226B16494(v96, v101 + v100);
    v102 = v96;
    v103 = *(v99 + 48);
    if (v103(v101, 1, v93) == 1)
    {
      sub_226AC47B0(v102, &qword_27D7A68B0, qword_226D72098);
      v104 = v169;
      sub_226AC47B0(v95, &qword_27D7A68B0, qword_226D72098);
      if (v103(v104 + v100, 1, v93) == 1)
      {
        sub_226AC47B0(v104, &qword_27D7A68B0, qword_226D72098);
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v105 = v151;
      sub_226B16494(v101, v151);
      v104 = v101;
      if (v103(v101 + v100, 1, v93) != 1)
      {
        v114 = v101 + v100;
        v115 = v166;
        (*(v99 + 32))(v166, v114, v93);
        sub_226B16504(&qword_27D7A68B8, MEMORY[0x277CC7A48], MEMORY[0x277CC7A50]);
        v157 = sub_226D6E35C();
        v116 = *(v99 + 8);
        v116(v115, v93);
        v117 = v158;
        v158 = v103;
        sub_226AC47B0(v117, &qword_27D7A68B0, qword_226D72098);
        sub_226AC47B0(v159, &qword_27D7A68B0, qword_226D72098);
        v116(v105, v93);
        v103 = v158;
        sub_226AC47B0(v101, &qword_27D7A68B0, qword_226D72098);
        if (v157)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      sub_226AC47B0(v158, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v159, &qword_27D7A68B0, qword_226D72098);
      (*v160)(v105, v93);
    }

    sub_226AC47B0(v104, &qword_27D7A68A8, &qword_226D72090);
LABEL_34:
    v106 = v155;
    v107 = v171;
    sub_226D69CFC();
    v108 = v103;
    v109 = v154;
    v110 = v165;
    v164(v154, v150, v165);
    v163(v109, 0, 1, v110);
    v111 = *(v170 + 48);
    v112 = v168;
    sub_226B16494(v106, v168);
    sub_226B16494(v109, v112 + v111);
    if (v108(v112, 1, v110) == 1)
    {

      sub_226AC47B0(v109, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v106, &qword_27D7A68B0, qword_226D72098);
      if (v108(v112 + v111, 1, v110) == 1)
      {
        sub_226AC47B0(v112, &qword_27D7A68B0, qword_226D72098);
LABEL_42:
        LOBYTE(v2) = 1;
        return v2 & 1;
      }
    }

    else
    {
      v113 = v167;
      sub_226B16494(v112, v167);
      if (v108(v112 + v111, 1, v110) != 1)
      {
        v118 = v172 + 32;
        v119 = v112 + v111;
        v120 = v166;
        (*(v172 + 32))(v166, v119, v110);
        sub_226B16504(&qword_27D7A68B8, MEMORY[0x277CC7A48], MEMORY[0x277CC7A50]);
        LOBYTE(v2) = sub_226D6E35C();

        v121 = *(v118 - 24);
        v121(v120, v110);
        sub_226AC47B0(v154, &qword_27D7A68B0, qword_226D72098);
        sub_226AC47B0(v155, &qword_27D7A68B0, qword_226D72098);
        v121(v113, v110);
        sub_226AC47B0(v112, &qword_27D7A68B0, qword_226D72098);
        return v2 & 1;
      }

      sub_226AC47B0(v154, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v155, &qword_27D7A68B0, qword_226D72098);
      (*v160)(v113, v110);
    }

    sub_226AC47B0(v112, &qword_27D7A68A8, &qword_226D72090);
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v97 = *(result + 32);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t ManagedCloudOrderEvent.MerchantSource.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 48) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x22AA8B3B0](v2);
    sub_226D6E42C();
    goto LABEL_7;
  }

  MEMORY[0x22AA8B3B0](2);
  sub_226D6E42C();
  sub_226D6E42C();
LABEL_7:

  return sub_226D6E42C();
}

uint64_t ManagedCloudOrderEvent.MerchantSource.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_226D6F2FC();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_7;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AA8B3B0](v2);
  sub_226D6E42C();
LABEL_7:
  sub_226D6E42C();
  return sub_226D6F35C();
}

uint64_t sub_226B13138(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 48) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x22AA8B3B0](v2);
    sub_226D6E42C();
    goto LABEL_7;
  }

  MEMORY[0x22AA8B3B0](2);
  sub_226D6E42C();
  sub_226D6E42C();
LABEL_7:

  return sub_226D6E42C();
}

uint64_t sub_226B13208(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_226D6F2FC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_7;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AA8B3B0](v3);
  sub_226D6E42C();
LABEL_7:
  sub_226D6E42C();
  return sub_226D6F35C();
}

void sub_226B132E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67[0] = a2;
  v5 = sub_226D6708C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v67 - v10;
  v90 = sub_226D670CC();
  v12 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v83 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x277D84FA0];
  v96 = a1;
  v14 = *(a1 + 16);

  if (!v14)
  {
LABEL_54:

    return;
  }

  v84 = (v12 + 48);
  v82 = (v12 + 32);
  v81 = (v6 + 88);
  v80 = (v12 + 8);
  v68 = (v6 + 8);
  v79 = *MEMORY[0x277CC6AF0];
  v75 = (v6 + 96);
  v73 = *MEMORY[0x277CC6B08];
  v71 = *MEMORY[0x277CC6A98];
  v74 = xmmword_226D71840;
  v76 = v5;
  v91 = v8;
  v89 = v11;
LABEL_4:
  v15 = sub_226D6ED6C();
  sub_226BDEFE0(v15, *(a1 + 36), &v92);
  v99 = v92;
  v100 = v93;
  v101 = v94;
  v102 = v95;
  sub_226AE50D8(&v99, &v92);
  sub_226C25434(&v92, &v99);
  sub_226AE5134(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
  v16 = sub_226D69CBC();
  v92 = v99;
  v93 = v100;
  v94 = v101;
  v95 = v102;
  v17 = sub_226B14D88(&v92);
  sub_226B16458(&v99);
  [v16 setPredicate_];

  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v18 = sub_226D6E5CC();
  [v16 setSortDescriptors_];

  v19 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v69 = v16;
  if (v19 >> 62)
  {
    v66 = v19;
    v20 = sub_226D6EDFC();
    v19 = v66;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v90;
  v70 = 0;
  if (v20)
  {
    v22 = 0;
    v88 = v19 & 0xC000000000000001;
    v87 = v19 & 0xFFFFFFFFFFFFFF8;
    v23 = MEMORY[0x277D84F90];
    v85 = v20;
    v86 = v19;
    while (1)
    {
      if (v88)
      {
        v24 = MEMORY[0x22AA8AFD0](v22, v19);
      }

      else
      {
        if (v22 >= *(v87 + 16))
        {
          goto LABEL_58;
        }

        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_57;
      }

      sub_226D69C8C();
      if ((*v84)(v11, 1, v21) == 1)
      {
        sub_226AC47B0(v11, &qword_27D7A6898, &unk_226D75B90);
      }

      else
      {
        v28 = v83;
        (*v82)();
        sub_226D670AC();
        v29 = (*v81)(v8, v5);
        if (v29 == v79)
        {
          (*v75)(v8, v5);
          v77 = *v8;
          v30 = *(v8 + 2);
          v31 = *(v8 + 3);
          v78 = *(v8 + 2);
          v32 = *(v91 + 6);
          v33 = *(v91 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v27 = swift_allocObject();
          v34 = v77;
          *(v27 + 16) = v74;
          *(v27 + 32) = v34;
          *(v27 + 48) = v30;
          *(v27 + 56) = v31;
          *(v27 + 64) = 0;
          *(v27 + 72) = 0;
          *(v27 + 80) = 1;
          *(v27 + 88) = v78;
          *(v27 + 104) = v32;
          *(v27 + 112) = v33;
          v8 = v91;
          v5 = v76;
          *(v27 + 120) = 0;
          *(v27 + 128) = 0;
          *(v27 + 136) = 1;
LABEL_24:

          (*v80)(v83, v90);
          goto LABEL_25;
        }

        if (v29 == v73)
        {
          (*v75)(v8, v5);
          v35 = *v8;
          v36 = *(v8 + 1);
          v37 = *(v8 + 2);
          v38 = *(v91 + 3);
          v78 = *(v91 + 2);
          *&v77 = *(v91 + 6);
          v72 = *(v91 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v27 = swift_allocObject();
          *(v27 + 16) = v74;
          *(v27 + 32) = v35;
          *(v27 + 40) = v36;
          *(v27 + 48) = v37;
          *(v27 + 56) = v38;
          v5 = v76;
          v8 = v91;
          *(v27 + 64) = 0;
          *(v27 + 72) = 0;
          *(v27 + 80) = 1;
          *(v27 + 88) = v35;
          *(v27 + 96) = v36;
          *(v27 + 104) = v78;
          v39 = v72;
          *(v27 + 120) = v77;
          *(v27 + 128) = v39;
          *(v27 + 136) = 2;

          goto LABEL_24;
        }

        if (v29 == v71)
        {
          (*v75)(v8, v5);
          v78 = *v8;
          v40 = *(v8 + 2);
          v41 = *(v8 + 3);
          v77 = *(v8 + 2);
          v42 = *(v91 + 6);
          v43 = *(v91 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v27 = swift_allocObject();
          v44 = v77;
          *(v27 + 16) = v74;
          *(v27 + 32) = v44;
          *(v27 + 48) = v42;
          *(v27 + 56) = v43;
          v8 = v91;
          *(v27 + 64) = 0;
          *(v27 + 72) = 0;
          *(v27 + 80) = 1;
          *(v27 + 88) = v78;
          *(v27 + 104) = v40;
          *(v27 + 112) = v41;
          v5 = v76;
          *(v27 + 120) = 0;
          *(v27 + 128) = 0;
          *(v27 + 136) = 0;
          goto LABEL_24;
        }

        (*v80)(v28, v21);
        (*v68)(v8, v5);
      }

      v27 = MEMORY[0x277D84F90];
LABEL_25:
      v45 = *(v27 + 16);
      v46 = *(v23 + 2);
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v47 > *(v23 + 3) >> 1)
      {
        if (v46 <= v47)
        {
          v49 = v46 + v45;
        }

        else
        {
          v49 = v46;
        }

        v23 = sub_226BBAE6C(isUniquelyReferenced_nonNull_native, v49, 1, v23);
      }

      v11 = v89;
      v21 = v90;
      if (*(v27 + 16))
      {
        if ((*(v23 + 3) >> 1) - *(v23 + 2) < v45)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v45)
        {
          v50 = *(v23 + 2);
          v51 = __OFADD__(v50, v45);
          v52 = v50 + v45;
          if (v51)
          {
            goto LABEL_62;
          }

          *(v23 + 2) = v52;
        }
      }

      else
      {

        if (v45)
        {
          goto LABEL_60;
        }
      }

      ++v22;
      v19 = v86;
      if (v26 == v85)
      {
        goto LABEL_40;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_40:

  v53 = sub_226AE43CC(v23);

  v54 = 0;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v53 + 56);
  v58 = (v55 + 63) >> 6;
  v59 = v103;
  if (v57)
  {
    while (2)
    {
      v60 = v54;
LABEL_50:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = *(v53 + 48) + 56 * (v61 | (v60 << 6));
      v63 = *(v62 + 48);
      v64 = *(v62 + 32);
      v65 = *v62;
      v97[1] = *(v62 + 16);
      v97[2] = v64;
      v97[0] = v65;
      v98 = v63;
      sub_226AE50D8(v97, &v92);
      if (sub_226D4DAB0(v97, v59))
      {
        sub_226B16458(v97);
        v54 = v60;
        if (v57)
        {
          continue;
        }
      }

      else
      {
        sub_226C25434(&v92, v97);
        sub_226AE5134(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
        v54 = v60;
        if (v57)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v60 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v60 >= v58)
    {

      a1 = v96;
      v3 = v70;
      v11 = v89;
      if (!*(v96 + 16))
      {
        goto LABEL_54;
      }

      goto LABEL_4;
    }

    v57 = *(v53 + 56 + 8 * v60);
    ++v54;
    if (v57)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_226B13DBC()
{
  v1 = sub_226D67A8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = MEMORY[0x277D84FA0];
  v6 = [v0 merchantEmailAddress];
  if (v6)
  {
    v7 = v6;
    v8 = sub_226D6E39C();
    v10 = v9;

    v11 = [v0 merchantEmailDisplayName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_226D6E39C();
      v14 = v5;
      v16 = v15;

      v137[0] = v8;
      v137[1] = v10;
      v137[2] = v13;
      v137[3] = v16;
      v5 = v14;
      v137[4] = 0;
      v137[5] = 0;
      v138 = 1;
      sub_226C25434(&v116, v137);
      sub_226AE5134(v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120);
    }

    else
    {
    }
  }

  v17 = sub_226D6987C();
  v20 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B16504(&qword_27D7A6820, MEMORY[0x277CC81E0], MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v20 = v132;
    v21 = v133;
    v22 = v134;
    v23 = v135;
    v24 = v136;
  }

  else
  {
    v23 = 0;
    v25 = -1 << *(v17 + 32);
    v21 = v17 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v17 + 56);
  }

  v101 = v22;
  v28 = (v22 + 64) >> 6;
  v107 = v28;
  v108 = (v2 + 8);
  while (1)
  {
    if (v20 < 0)
    {
      v34 = sub_226D6EE2C();
      if (!v34 || (*&v129 = v34, sub_226D6C02C(), swift_dynamicCast(), v33 = v116, v31 = v23, v32 = v24, !v116))
      {
LABEL_72:
        sub_226AD3C20(v20);
        return v131;
      }

      goto LABEL_22;
    }

    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      break;
    }

LABEL_18:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      goto LABEL_72;
    }

LABEL_22:
    v35 = v33;
    sub_226D6C01C();
    v36 = sub_226D67A7C();
    (*v108)(v5, v1);
    if ((v36 & 1) == 0)
    {

      v23 = v31;
      v24 = v32;
      v28 = v107;
      continue;
    }

    v104 = v32;
    v37 = sub_226D6E36C();
    v105 = v35;
    v38 = [v35 valueForKey_];

    if (v38)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v116 = v129;
    v117 = v130;
    v24 = v104;
    if (!*(&v130 + 1))
    {
      sub_226AC47B0(&v116, &unk_27D7A8BB0, &unk_226D74340);
LABEL_42:

      v23 = v31;
      v28 = v107;
      continue;
    }

    sub_226D69D3C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_42;
    }

    v100 = v1;
    v39 = v128;
    v40 = [v128 fromEmailAddress];
    v41 = sub_226D6E39C();
    v43 = v42;

    v44 = v105;
    v45 = [v105 merchantDisplayName];
    if (!v45)
    {

      v23 = v31;
      v28 = v107;
      v1 = v100;
      continue;
    }

    v96 = v39;
    v97 = v21;
    v98 = v20;
    v99 = v5;
    v46 = v45;
    v47 = sub_226D6E39C();
    v20 = v48;

    v21 = v131;
    sub_226D6F2FC();
    MEMORY[0x22AA8B3B0](1);
    v113 = v41;
    v115 = v43;
    sub_226D6E42C();
    v112 = v47;
    v114 = v20;
    sub_226D6E42C();
    v49 = sub_226D6F35C();
    v109 = v21 + 56;
    v110 = v21;
    v50 = -1 << *(v21 + 32);
    v51 = v49 & ~v50;
    if (((*(v21 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
LABEL_44:
      v62 = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v62;
      v23 = *(v62 + 16);
      v64 = *(v62 + 24);

      if (v64 <= v23)
      {
        v65 = v23 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_226C28280(v65);
        }

        else
        {
          sub_226C2DE40(v65);
        }

        v66 = v129;
        sub_226D6F2FC();
        MEMORY[0x22AA8B3B0](1);
        sub_226D6E42C();
        sub_226D6E42C();
        v67 = sub_226D6F35C();
        v109 = v66 + 56;
        v110 = v66;
        v68 = -1 << *(v66 + 32);
        v51 = v67 & ~v68;
        if ((*(v66 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
        {
          v106 = ~v68;
          v19 = v114;
          v69 = v115;
          v18 = v112;
          v70 = v113;
          while (1)
          {
            v71 = *(v110 + 48) + 56 * v51;
            v21 = *v71;
            v20 = *(v71 + 8);
            v72 = *(v71 + 16);
            v73 = *(v71 + 24);
            v23 = *(v71 + 32);
            v74 = *(v71 + 40);
            v75 = *(v71 + 48);
            *&v116 = *v71;
            *(&v116 + 1) = v20;
            *&v117 = v72;
            *(&v117 + 1) = v73;
            v118 = v23;
            v119 = v74;
            v111 = v74;
            v120 = v75;
            v121 = v70;
            v122 = v69;
            v123 = v18;
            v124 = v19;
            v125 = 0;
            v126 = 0;
            v127 = 1;
            if (v75 == 1 && (v21 == v70 ? (v76 = v20 == v69) : (v76 = 0), v76 || (v77 = sub_226D6F21C(), v18 = v112, v19 = v114, (v77 & 1) != 0)))
            {
              if (v72 == v18 && v73 == v19)
              {
                goto LABEL_75;
              }

              v79 = sub_226D6F21C();

              sub_226AFD74C(v21, v20, v72, v73, v23, v111, 1u);
              sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
              if (v79)
              {
                goto LABEL_76;
              }
            }

            else
            {

              sub_226AFD74C(v21, v20, v72, v73, v23, v111, v75);
              sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
            }

            v51 = (v51 + 1) & v106;
            v19 = v114;
            v69 = v115;
            v18 = v112;
            v70 = v113;
            if (((*(v109 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226C2CD40();
      }

      v19 = v114;
      v69 = v115;
      v18 = v112;
      v70 = v113;
LABEL_67:
      v80 = v129;
      *(v129 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v51;
      v81 = *(v80 + 48) + 56 * v51;
      *v81 = v70;
      *(v81 + 8) = v69;
      *(v81 + 16) = v18;
      *(v81 + 24) = v19;
      *(v81 + 32) = 0;
      *(v81 + 40) = 0;
      *(v81 + 48) = 1;
      v82 = *(v80 + 16);
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (!v83)
      {
        *(v80 + 16) = v84;

        v131 = v80;
        v23 = v31;
        v24 = v104;
        v1 = v100;
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v106 = ~v50;
    v52 = v114;
    while (1)
    {
      v53 = 56 * v51;
      v54 = *(v110 + 48) + 56 * v51;
      v20 = *v54;
      v55 = *(v54 + 8);
      v21 = *(v54 + 16);
      v56 = *(v54 + 24);
      v57 = *(v54 + 32);
      v58 = *(v54 + 40);
      v59 = *(v54 + 48);
      *&v116 = *v54;
      *(&v116 + 1) = v55;
      *&v117 = v21;
      *(&v117 + 1) = v56;
      v111 = v57;
      v118 = v57;
      v119 = v58;
      v120 = v59;
      v60 = v112;
      v121 = v113;
      v122 = v115;
      v123 = v112;
      v124 = v52;
      v125 = 0;
      v126 = 0;
      v127 = 1;
      if (v59 != 1 || (v20 != v113 || v55 != v115) && (v61 = sub_226D6F21C(), v53 = 56 * v51, v60 = v112, v52 = v114, (v61 & 1) == 0))
      {

        sub_226AFD74C(v20, v55, v21, v56, v111, v58, v59);
        sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
        goto LABEL_32;
      }

      v102 = v53;
      if (v21 == v60 && v56 == v52)
      {
        break;
      }

      v103 = sub_226D6F21C();

      sub_226AFD74C(v20, v55, v21, v56, v111, v58, 1u);
      sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
      if (v103)
      {

        goto LABEL_70;
      }

LABEL_32:
      v51 = (v51 + 1) & v106;
      v52 = v114;
      if (((*(v109 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_70:
    v1 = v100;
    v85 = *(v110 + 48) + v102;
    v86 = *v85;
    v87 = *(v85 + 8);
    v88 = *(v85 + 16);
    v89 = *(v85 + 24);
    v90 = *(v85 + 32);
    v91 = *(v85 + 40);
    v92 = *(v85 + 48);
    sub_226AFD74C(*v85, v87, v88, v89, v90, v91, v92);

    sub_226AE5134(v86, v87, v88, v89, v90, v91, v92);
    v23 = v31;
    v24 = v104;
LABEL_71:
    v20 = v98;
    v5 = v99;
    v21 = v97;
    v28 = v107;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_72;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  v94 = v19;
  v95 = v18;

  sub_226AFD74C(v21, v20, v95, v94, v23, v111, 1u);
  sub_226AC47B0(&v116, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_76:
  result = sub_226D6F24C();
  __break(1u);
  return result;
}

uint64_t _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14MerchantSourceO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v35[0] = *a1;
  v35[1] = v3;
  v35[2] = v5;
  v35[3] = v4;
  v33 = v6;
  v34 = v4;
  v35[4] = v6;
  v35[5] = v7;
  v31 = v3;
  v32 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v14;
  v42 = v13;
  v43 = v15;
  if (v8)
  {
    if (v8 == 1)
    {
      if (v15 == 1)
      {
        if (v2 == v9 && v3 == v10 || (sub_226D6F21C() & 1) != 0)
        {
          v16 = v34;
          if (v5 != v11 || v34 != v12)
          {
            v23 = sub_226D6F21C();
            LOBYTE(v8) = 1;
            sub_226AFD74C(v9, v10, v11, v12, v14, v13, 1u);
            goto LABEL_31;
          }

          LOBYTE(v8) = 1;
          v17 = v9;
          v18 = v10;
          v19 = v5;
          v20 = v14;
          v21 = v13;
          v22 = 1;
          goto LABEL_27;
        }

        LOBYTE(v8) = 1;
        v24 = v9;
        v25 = v10;
        v26 = v11;
        v27 = v12;
        v28 = v14;
        v29 = v13;
        LOBYTE(v15) = 1;
        goto LABEL_29;
      }
    }

    else if (v15 == 2)
    {
      if (v2 == v9 && v3 == v10 || (sub_226D6F21C()) && (v5 == v11 && v34 == v12 || (sub_226D6F21C()))
      {
        v21 = v32;
        if (v33 != v14 || v32 != v13)
        {
          v23 = sub_226D6F21C();
          LOBYTE(v8) = 2;
          sub_226AFD74C(v9, v10, v11, v12, v14, v13, 2u);
          goto LABEL_31;
        }

        LOBYTE(v8) = 2;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        v16 = v12;
        v20 = v33;
        v22 = 2;
LABEL_27:
        sub_226AFD74C(v17, v18, v19, v16, v20, v21, v22);
        v23 = 1;
        goto LABEL_31;
      }

      LOBYTE(v8) = 2;
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v14;
      v29 = v13;
      LOBYTE(v15) = 2;
      goto LABEL_29;
    }

LABEL_28:
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v14;
    v29 = v13;
LABEL_29:
    sub_226AFD74C(v24, v25, v26, v27, v28, v29, v15);
LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  if (v15)
  {
    goto LABEL_28;
  }

  if ((v2 != v9 || v3 != v10) && (sub_226D6F21C() & 1) == 0)
  {
    sub_226AFD74C(v9, v10, v11, v12, v14, v13, 0);
    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  if (v5 == v11 && v34 == v12)
  {
    sub_226AFD74C(v9, v10, v5, v34, v14, v13, 0);
    LOBYTE(v8) = 0;
    v23 = 1;
  }

  else
  {
    v23 = sub_226D6F21C();
    sub_226AFD74C(v9, v10, v11, v12, v14, v13, 0);
    LOBYTE(v8) = 0;
  }

LABEL_31:
  sub_226AFD74C(v2, v31, v5, v34, v33, v32, v8);
  sub_226AC47B0(v35, &unk_27D7A9640, &qword_226D7A5E0);
  return v23 & 1;
}

unint64_t sub_226B14C58()
{
  result = qword_27D7A6890;
  if (!qword_27D7A6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6890);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_226B14CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226B14D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_226B14D88(uint64_t *a1)
{
  v2 = sub_226D69CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v151 = a1[1];
  v152 = v6;
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 48);
  v149 = v10;
  if (v9)
  {
    v144 = v5;
    if (v9 == 1)
    {
      *&v147 = v7;
      *&v145 = v8;
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v11 = swift_allocObject();
      v146 = xmmword_226D71F40;
      *(v11 + 16) = xmmword_226D71F40;
      v133 = v11;
      v12 = *MEMORY[0x277CC7A18];
      v13 = *(v3 + 104);
      v136 = (v3 + 104);
      v137 = v13;
      v13(v5, v12, v2);
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v139 = "Unknown classification outcome";
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v14 = swift_allocObject();
      v141 = xmmword_226D70840;
      *(v14 + 16) = xmmword_226D70840;
      v15 = sub_226D69C9C();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      v18 = sub_226B16404();
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v19 = sub_226D6E91C();
      v20 = *(v3 + 8);
      v148 = v3 + 8;
      v140 = v20;
      v20(v5, v2);
      *(v11 + 32) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v146;
      v22 = swift_allocObject();
      *(v22 + 16) = v146;
      v23 = swift_allocObject();
      v150 = xmmword_226D71840;
      *(v23 + 16) = xmmword_226D71840;
      v138 = 0x8000000226D7F180;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = v18;
      *(v23 + 32) = 0xD000000000000014;
      *(v23 + 40) = 0x8000000226D7F180;
      *(v23 + 96) = v24;
      *(v23 + 104) = v18;
      v25 = v24;
      v26 = v151;
      *(v23 + 72) = v152;
      *(v23 + 80) = v26;

      *(v22 + 32) = sub_226D6E91C();
      v27 = swift_allocObject();
      *(v27 + 16) = v150;
      v135 = 0x8000000226D7F1A0;
      *(v27 + 56) = v25;
      *(v27 + 64) = v18;
      v134 = 0xD000000000000018;
      *(v27 + 32) = 0xD000000000000018;
      *(v27 + 40) = 0x8000000226D7F1A0;
      *(v27 + 96) = v25;
      *(v27 + 104) = v18;
      v28 = v145;
      *(v27 + 72) = v145;
      *(v27 + 80) = v147;

      *(v22 + 40) = sub_226D6E91C();
      v29 = sub_226D6E5CC();

      v143 = objc_opt_self();
      v30 = [v143 andPredicateWithSubpredicates_];

      *(v21 + 32) = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = v146;
      v32 = swift_allocObject();
      *(v32 + 16) = v150;
      v33 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = v18;
      *(v32 + 32) = 0xD000000000000019;
      *(v32 + 40) = 0x8000000226D7F1C0;
      *(v32 + 96) = v33;
      *(v32 + 104) = v18;
      *(v32 + 72) = v152;
      *(v32 + 80) = v26;

      *(v31 + 32) = sub_226D6E91C();
      v34 = swift_allocObject();
      *(v34 + 16) = v150;
      *(v34 + 56) = v33;
      *(v34 + 64) = v18;
      *(v34 + 32) = 0xD00000000000001DLL;
      *(v34 + 40) = 0x8000000226D7F200;
      *(v34 + 96) = v33;
      *(v34 + 104) = v18;
      *(v34 + 72) = v28;
      *(v34 + 80) = v147;

      *(v31 + 40) = sub_226D6E91C();
      v35 = sub_226D6E5CC();

      v36 = v143;
      v37 = [v143 andPredicateWithSubpredicates_];

      *(v21 + 40) = v37;
      v38 = sub_226D6E5CC();

      v39 = [v36 orPredicateWithSubpredicates_];

      v133[5] = v39;
      v40 = sub_226D6E5CC();

      v133 = [v36 andPredicateWithSubpredicates_];

      v41 = swift_allocObject();
      *(v41 + 16) = v146;
      v42 = v144;
      v43 = v149;
      v137(v144, *MEMORY[0x277CC7A30], v149);
      v44 = swift_allocObject();
      *(v44 + 16) = v141;
      v45 = v42;
      v46 = sub_226D69C9C();
      v47 = MEMORY[0x277D837D0];
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v18;
      *(v44 + 32) = v46;
      *(v44 + 40) = v48;
      v49 = sub_226D6E91C();
      v140(v45, v43);
      *(v41 + 32) = v49;
      v50 = swift_allocObject();
      *(v50 + 16) = v150;
      *(v50 + 56) = v47;
      *(v50 + 64) = v18;
      *(v50 + 32) = 0xD000000000000014;
      *(v50 + 40) = v138;
      *(v50 + 96) = v47;
      *(v50 + 104) = v18;
      v51 = v151;
      *(v50 + 72) = v152;
      *(v50 + 80) = v51;

      *(v41 + 40) = sub_226D6E91C();
      v52 = sub_226D6E5CC();

      v132 = [v143 andPredicateWithSubpredicates_];

      v53 = swift_allocObject();
      v146 = xmmword_226D71F30;
      *(v53 + 16) = xmmword_226D71F30;
      v54 = v149;
      v137(v45, *MEMORY[0x277CC79C0], v149);
      v55 = swift_allocObject();
      *(v55 + 16) = v141;
      v56 = sub_226D69C9C();
      *(v55 + 56) = v47;
      *(v55 + 64) = v18;
      *(v55 + 32) = v56;
      *(v55 + 40) = v57;
      v58 = sub_226D6E91C();
      v140(v45, v54);
      *(v53 + 32) = v58;
      v59 = swift_allocObject();
      *(v59 + 16) = v150;
      *(v59 + 56) = v47;
      *(v59 + 64) = v18;
      *(v59 + 32) = 0xD000000000000014;
      *(v59 + 40) = v138;
      *(v59 + 96) = v47;
      *(v59 + 104) = v18;
      *(v59 + 72) = v152;
      *(v59 + 80) = v51;

      *(v53 + 40) = sub_226D6E91C();
      v60 = swift_allocObject();
      *(v60 + 16) = v150;
      *(v60 + 56) = v47;
      *(v60 + 64) = v18;
      v61 = v135;
      *(v60 + 32) = v134;
      *(v60 + 40) = v61;
      *(v60 + 96) = v47;
      *(v60 + 104) = v18;
      *(v60 + 72) = v145;
      *(v60 + 80) = v147;

      *(v53 + 48) = sub_226D6E91C();
      v62 = sub_226D6E5CC();

      v63 = v143;
      v64 = [v143 andPredicateWithSubpredicates_];

      v65 = swift_allocObject();
      *(v65 + 16) = v146;
      v66 = v133;
      v67 = v132;
      *(v65 + 32) = v133;
      *(v65 + 40) = v67;
      *(v65 + 48) = v64;
      v68 = v66;
      v69 = v67;
      v70 = v64;
      v71 = sub_226D6E5CC();

      v72 = [v63 orPredicateWithSubpredicates_];
    }

    else
    {
      v85 = a1[4];
      v139 = a1[5];
      v138 = v85;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v136 = swift_allocObject();
      v150 = xmmword_226D71F40;
      v136[1] = xmmword_226D71F40;
      v86 = *MEMORY[0x277CC7A18];
      *&v141 = *(v3 + 104);
      *&v146 = v3 + 104;
      (v141)(v5, v86, v2);
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v143 = "Unknown classification outcome";
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v87 = swift_allocObject();
      v145 = xmmword_226D70840;
      *(v87 + 16) = xmmword_226D70840;
      v88 = sub_226D69C9C();
      v90 = v89;
      *(v87 + 56) = MEMORY[0x277D837D0];
      v91 = sub_226B16404();
      *(v87 + 64) = v91;
      *(v87 + 32) = v88;
      *(v87 + 40) = v90;
      v92 = sub_226D6E91C();
      v93 = *(v3 + 8);
      v148 = v3 + 8;
      v142 = v93;
      v93(v5, v2);
      v94 = v136;
      *(v136 + 4) = v92;
      v95 = swift_allocObject();
      *(v95 + 16) = v150;
      v96 = swift_allocObject();
      v147 = xmmword_226D71840;
      *(v96 + 16) = xmmword_226D71840;
      v137 = 0x8000000226D7F180;
      v97 = MEMORY[0x277D837D0];
      *(v96 + 56) = MEMORY[0x277D837D0];
      *(v96 + 64) = v91;
      *(v96 + 32) = 0xD000000000000014;
      *(v96 + 40) = 0x8000000226D7F180;
      *(v96 + 96) = v97;
      *(v96 + 104) = v91;
      v99 = v151;
      v98 = v152;
      *(v96 + 72) = v152;
      *(v96 + 80) = v99;
      v100 = v98;

      *(v95 + 32) = sub_226D6E91C();
      v101 = swift_allocObject();
      *(v101 + 16) = v147;
      v102 = MEMORY[0x277D837D0];
      *(v101 + 56) = MEMORY[0x277D837D0];
      *(v101 + 64) = v91;
      *(v101 + 32) = 0xD000000000000019;
      *(v101 + 40) = 0x8000000226D7F1C0;
      *(v101 + 96) = v102;
      *(v101 + 104) = v91;
      *(v101 + 72) = v100;
      *(v101 + 80) = v99;

      *(v95 + 40) = sub_226D6E91C();
      v103 = sub_226D6E5CC();

      v104 = objc_opt_self();
      v135 = v104;
      v105 = [v104 orPredicateWithSubpredicates_];

      *(v94 + 5) = v105;
      v106 = sub_226D6E5CC();

      v136 = [v104 andPredicateWithSubpredicates_];

      v107 = swift_allocObject();
      *(v107 + 16) = v150;
      v108 = v144;
      v109 = v149;
      (v141)(v144, *MEMORY[0x277CC7A30], v149);
      v110 = swift_allocObject();
      *(v110 + 16) = v145;
      v111 = sub_226D69C9C();
      v112 = MEMORY[0x277D837D0];
      *(v110 + 56) = MEMORY[0x277D837D0];
      *(v110 + 64) = v91;
      *(v110 + 32) = v111;
      *(v110 + 40) = v113;
      v114 = sub_226D6E91C();
      v142(v108, v109);
      *(v107 + 32) = v114;
      v115 = swift_allocObject();
      *(v115 + 16) = v147;
      *(v115 + 56) = v112;
      *(v115 + 64) = v91;
      *(v115 + 32) = 0xD000000000000018;
      *(v115 + 40) = 0x8000000226D7F1E0;
      *(v115 + 96) = v112;
      *(v115 + 104) = v91;
      *(v115 + 72) = v138;
      *(v115 + 80) = v139;

      *(v107 + 40) = sub_226D6E91C();
      v116 = sub_226D6E5CC();

      v117 = v135;
      v139 = [v135 andPredicateWithSubpredicates_];

      v118 = swift_allocObject();
      *(v118 + 16) = v150;
      (v141)(v108, *MEMORY[0x277CC79C0], v109);
      v119 = swift_allocObject();
      *(v119 + 16) = v145;
      v120 = sub_226D69C9C();
      *(v119 + 56) = v112;
      *(v119 + 64) = v91;
      *(v119 + 32) = v120;
      *(v119 + 40) = v121;
      v122 = sub_226D6E91C();
      v142(v108, v109);
      *(v118 + 32) = v122;
      v123 = swift_allocObject();
      *(v123 + 16) = v147;
      *(v123 + 56) = v112;
      *(v123 + 64) = v91;
      *(v123 + 32) = 0xD000000000000014;
      *(v123 + 40) = v137;
      *(v123 + 96) = v112;
      *(v123 + 104) = v91;
      *(v123 + 72) = v152;
      *(v123 + 80) = v151;

      *(v118 + 40) = sub_226D6E91C();
      v124 = sub_226D6E5CC();

      v125 = [v117 andPredicateWithSubpredicates_];

      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_226D71F30;
      v127 = v136;
      v128 = v139;
      *(v126 + 32) = v136;
      *(v126 + 40) = v128;
      *(v126 + 48) = v125;
      v68 = v127;
      v69 = v128;
      v129 = v125;
      v71 = sub_226D6E5CC();

      v72 = [v117 orPredicateWithSubpredicates_];
    }
  }

  else
  {
    *&v147 = v7;
    *&v145 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_226D71F30;
    (*(v3 + 104))(v5, *MEMORY[0x277CC79C0], v2);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *&v150 = "Unknown classification outcome";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_226D70840;
    v75 = sub_226D69C9C();
    v77 = v76;
    v78 = v151;
    *(v74 + 56) = MEMORY[0x277D837D0];
    v79 = sub_226B16404();
    *(v74 + 64) = v79;
    *(v74 + 32) = v75;
    *(v74 + 40) = v77;
    v80 = sub_226D6E91C();
    (*(v3 + 8))(v5, v149);
    *(v73 + 32) = v80;
    v81 = swift_allocObject();
    v150 = xmmword_226D71840;
    *(v81 + 16) = xmmword_226D71840;
    v82 = MEMORY[0x277D837D0];
    *(v81 + 56) = MEMORY[0x277D837D0];
    *(v81 + 64) = v79;
    *(v81 + 32) = 0xD00000000000001ALL;
    *(v81 + 40) = 0x8000000226D7F220;
    *(v81 + 96) = v82;
    *(v81 + 104) = v79;
    v83 = v82;
    *(v81 + 72) = v152;
    *(v81 + 80) = v78;

    *(v73 + 40) = sub_226D6E91C();
    v84 = swift_allocObject();
    *(v84 + 16) = v150;
    *(v84 + 56) = v83;
    *(v84 + 64) = v79;
    *(v84 + 32) = 0xD00000000000001ELL;
    *(v84 + 40) = 0x8000000226D7F240;
    *(v84 + 96) = v83;
    *(v84 + 104) = v79;
    *(v84 + 72) = v145;
    *(v84 + 80) = v147;

    *(v73 + 48) = sub_226D6E91C();
    v71 = sub_226D6E5CC();

    v72 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  return v72;
}

BOOL sub_226B16018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  v5 = sub_226D69CAC();
  *&v29 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D69D0C();
  v34 = sub_226D69CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F30;
  (*(v6 + 104))(v8, *MEMORY[0x277CC7A28], v5);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v28[1] = "Unknown classification outcome";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  v11 = sub_226D69C9C();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_226B16404();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v15 = sub_226D6E91C();
  (*(v6 + 8))(v8, v29);
  *(v9 + 32) = v15;
  v16 = swift_allocObject();
  v29 = xmmword_226D71840;
  *(v16 + 16) = xmmword_226D71840;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = v14;
  *(v16 + 32) = 0xD000000000000014;
  *(v16 + 40) = 0x8000000226D7F180;
  *(v16 + 96) = v17;
  *(v16 + 104) = v14;
  v18 = v17;
  *(v16 + 72) = v30;
  *(v16 + 80) = v31;

  *(v9 + 40) = sub_226D6E91C();
  v19 = swift_allocObject();
  *(v19 + 16) = v29;
  *(v19 + 56) = v18;
  *(v19 + 64) = v14;
  *(v19 + 32) = 0xD000000000000018;
  *(v19 + 40) = 0x8000000226D7F1A0;
  *(v19 + 96) = v18;
  *(v19 + 104) = v14;
  *(v19 + 72) = v32;
  *(v19 + 80) = v33;

  *(v9 + 48) = sub_226D6E91C();
  v20 = sub_226D6E5CC();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  v22 = v34;
  [v34 setPredicate_];
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v23 = sub_226D6E5CC();
  [v22 setSortDescriptors_];

  [v22 setFetchLimit_];
  v24 = v37;
  v25 = sub_226D6EBAC();

  if (!v24)
  {
    return v25 > 0;
  }

  return v26;
}

unint64_t sub_226B16404()
{
  result = qword_28105F578;
  if (!qword_28105F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F578);
  }

  return result;
}

uint64_t sub_226B16494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B16504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B1654C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_226B1656C, 0, 0);
}

uint64_t sub_226B1656C()
{
  v1 = v0[6];
  v2 = v0[7];
  type metadata accessor for MaintenanceSystemTask();
  inited = swift_initStackObject();
  v0[8] = inited;
  *(inited + 16) = v1;
  *(inited + 24) = v2;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_226B16634;

  return sub_226B1679C();
}

uint64_t sub_226B16634()
{

  return MEMORY[0x2822009F8](sub_226B16730, 0, 0);
}

uint64_t sub_226B16730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B1679C()
{
  v1[2] = v0;
  v2 = sub_226D6BFCC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_226D67F7C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_226D6D4AC();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B16914, 0, 0);
}

uint64_t sub_226B16914()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting background maintenance", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v18 = v0[3];
  v19 = v12;
  v20 = v0[6];

  v13 = *(v12 + 16);
  sub_226D6D46C();
  sub_226CB76C0(v5);
  v14 = *(v6 + 8);
  v14(v5, v8);
  sub_226D6D46C();
  sub_226D67F6C();
  sub_226D6BFBC();
  sub_226B16D70(v5, v7, v11, v13);
  v14(v5, v8);
  (*(v10 + 8))(v11, v18);
  (*(v9 + 8))(v7, v20);
  v0[12] = *(v19 + 24);
  sub_226D6D46C();
  v15 = sub_226D676AC();
  sub_226C163B8(v5, v15);
  sub_226C1685C(v5, v15);
  sub_226C16D00();
  sub_226C1704C();
  sub_226C17398();

  v14(v5, v8);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_226B16B9C;

  return sub_226C0F0F0();
}

uint64_t sub_226B16B9C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_226B16CAC, v1, 0);
}

uint64_t sub_226B16CAC()
{
  sub_226C0F724();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B16D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_226D67F7C();
  v15[3] = v7;
  v15[4] = MEMORY[0x277CC70E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a2, v7);
  v9 = sub_226D6BFCC();
  v14[3] = v9;
  v14[4] = MEMORY[0x277CC81C8];
  v10 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v9 - 8) + 16))(v10, a3, v9);
  __swift_project_boxed_opaque_existential_1(a4 + 14, a4[17]);
  sub_226D6BAAC();
  v11 = sub_226D676AC();

  sub_226D6EB8C();
  if (v13)
  {
    sub_226B6F2B0();
  }

  else
  {
    sub_226B6F5E4();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

void sub_226B17028(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedScheduler];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_226D6E36C();
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000001ELL;
  v7[3] = 0x8000000226D7F2D0;
  v7[4] = &unk_226D72120;
  v7[5] = v5;
  v14[4] = sub_226B173EC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor;
  v8 = _Block_copy(v14);

  v9 = [v4 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);

  if ((v9 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F5E0);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Unable to register maintenance tasks", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }
  }
}

uint64_t sub_226B17298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B17300(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{

  return a1(v1, 32, 7);
}

uint64_t sub_226B17354()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226B1654C(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B17410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68F0, &unk_226D72180);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_226B19AE8(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)]);
  off_27D7A68C0 = v4;
  return result;
}

uint64_t sub_226B1757C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = swift_task_alloc();
  v3 = sub_226D6B0FC();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B17684, 0, 0);
}

uint64_t sub_226B17684()
{
  *(v0 + 64) = os_transaction_create();
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_27D7A7D10);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Attempting to show BackgroundRefreshAlert", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_226B177EC;
  v6 = *(v0 + 56);
  v7 = *(v0 + 96);

  return sub_226B18988(v6, v7);
}

uint64_t sub_226B177EC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_226B17EB8;
  }

  else
  {
    v2 = sub_226B17900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_226B17900()
{
  v1 = (*(v0[6] + 88))(v0[7], v0[5]);
  if (v1 == *MEMORY[0x277CC7DF0])
  {
    v2 = sub_226D6E05C();
    v3 = sub_226D6E9EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226AB4000, v2, v3, "BackgroundRefreshAlertResult allow", v4, 2u);
      MEMORY[0x22AA8BEE0](v4, -1, -1);
    }

    v5 = sub_226D676AC();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    sub_226D6EB8C();

    goto LABEL_24;
  }

  if (v1 != *MEMORY[0x277CC7E00])
  {
    if (v1 == *MEMORY[0x277CC7DF8])
    {
      v23 = v0[11];
      v24 = sub_226D676AC();
      v25 = swift_task_alloc();
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      sub_226D6EB8C();

      if (v23)
      {
        goto LABEL_24;
      }

      v26 = sub_226D6E05C();
      v27 = sub_226D6E9EC();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_23;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "BackgroundRefreshAlertResult not now";
    }

    else
    {
      if (v1 != *MEMORY[0x277CC7DE8])
      {
        return sub_226D6F0AC();
      }

      v26 = sub_226D6E05C();
      v27 = sub_226D6E9EC();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_23;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "BackgroundRefreshAlertResult already scheduled";
    }

    _os_log_impl(&dword_226AB4000, v26, v27, v29, v28, 2u);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
LABEL_23:

    goto LABEL_24;
  }

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "BackgroundRefreshAlertResult review", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v10 = v0[11];

  v11 = sub_226D676AC();
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  sub_226D6EB8C();

  if (!v10)
  {
    sub_226D6D18C();
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = v0[3];
    sub_226AC40E8(v0[4], v15, &unk_27D7A62F8, &unk_226D73B70);
    v16 = sub_226D6D1AC();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    v19 = 0;
    if (v18 != 1)
    {
      v20 = v0[3];
      v19 = sub_226D6D0DC();
      (*(v17 + 8))(v20, v16);
    }

    v21 = v0[4];
    sub_226B22DF0(MEMORY[0x277D84F90]);
    v22 = sub_226D6E2AC();

    [v14 openSensitiveURL:v19 withOptions:v22];

    sub_226AC47B0(v21, &unk_27D7A62F8, &unk_226D73B70);
  }

LABEL_24:
  swift_unknownObjectRelease();

  v30 = v0[1];

  return v30();
}

uint64_t sub_226B17EB8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

id sub_226B17F40(void *a1, int a2)
{
  v83 = a2;
  v91 = a1;
  v101[1] = *MEMORY[0x277D85DE8];
  v90 = sub_226D6B81C();
  v94 = *(v90 - 8);
  v2 = v94;
  MEMORY[0x28223BE20](v90);
  v79 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6BDEC();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = &v70 - v7;
  v100 = sub_226D67C0C();
  v82 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_226D6B9BC();
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  v92 = v10;
  v93 = v11;
  MEMORY[0x28223BE20](v10);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v70 - v14;
  MEMORY[0x28223BE20](v15);
  v96 = &v70 - v16;
  v17 = sub_226D6BFCC();
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  v87 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6BFBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v19 = sub_226D6B7FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_226D72130;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277CC8000], v19);
  v25(v24 + v21, *MEMORY[0x277CC8008], v19);
  v25(v24 + 2 * v21, *MEMORY[0x277CC8010], v19);
  v26 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
  v27 = *(v94 + 72);
  v28 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_226D71840;
  v31 = *MEMORY[0x277CC8020];
  v33 = v2 + 104;
  v32 = *(v2 + 104);
  v30 = v29 + v28;
  v34 = v90;
  v32(v30, *MEMORY[0x277CC8020], v90);
  v35 = v30 + v27;
  v36 = v34;
  v37 = v32;
  v32(v35, *MEMORY[0x277CC8028], v36);
  sub_226D6D46C();
  v38 = MEMORY[0x277D84F90];
  v39 = v87;
  v40 = v95;
  v41 = sub_226D6BFAC();
  if (v40)
  {

    (*(v93 + 8))(v96, v92);
    return (*(v88 + 8))(v39, v89);
  }

  v71 = v37;
  v72 = v31;
  v73 = v33;
  v43 = v81;
  v44 = v82;
  v76 = 0;
  v75 = v41;

  v45 = *(v93 + 8);
  v93 += 8;
  v74 = v45;
  v45(v96, v92);
  (*(v88 + 8))(v39, v89);
  v46 = *(v75 + 16);
  if (v46)
  {
    v89 = v26;
    v101[0] = v38;
    v47 = v75;
    sub_226AE2090(0, v46, 0);
    v48 = v100;
    v49 = v101[0];
    v50 = v44 + 16;
    v51 = *(v44 + 16);
    v52 = v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v95 = *(v44 + 72);
    v96 = v51;
    v53 = (v44 + 8);
    v94 = v99 + 32;
    do
    {
      v54 = v98;
      v55 = v50;
      (v96)(v98, v52, v48);
      sub_226D67B4C();
      v48 = v100;
      (*v53)(v54, v100);
      v101[0] = v49;
      v57 = v49[2];
      v56 = v49[3];
      if (v57 >= v56 >> 1)
      {
        sub_226AE2090((v56 > 1), v57 + 1, 1);
        v48 = v100;
        v49 = v101[0];
      }

      v49[2] = v57 + 1;
      (*(v99 + 32))(v49 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v57, v43, v97);
      v52 += v95;
      --v46;
      v50 = v55;
    }

    while (v46);

    v59 = v90;
    v58 = v91;
    v61 = v84;
    v60 = v85;
    v62 = v89;
    if ((v83 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v58 = v91;
    v61 = v84;
    v60 = v85;
    v62 = v26;
    v59 = v36;
    if ((v83 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v63 = v78;
  sub_226D6BDDC();
  v64 = v79;
  v71(v79, v72, v59);
  v65 = v77;
  sub_226D6D46C();
  v66 = v76;
  sub_226D6BDCC();
  v76 = v66;
  if (v66)
  {

    v74(v65, v92);
    (*(v62 + 8))(v64, v59);
    return (*(v60 + 8))(v63, v86);
  }

  v74(v65, v92);
  (*(v62 + 8))(v64, v59);
  (*(v60 + 8))(v63, v86);
LABEL_14:
  sub_226D6BDDC();
  v67 = v80;
  sub_226D6D46C();
  v68 = v76;
  sub_226D6BDBC();
  if (v68)
  {

    v74(v67, v92);
    return (*(v60 + 8))(v61, v86);
  }

  else
  {

    v74(v67, v92);
    (*(v60 + 8))(v61, v86);
    v101[0] = 0;
    if ([v58 save_])
    {
      return v101[0];
    }

    else
    {
      v69 = v101[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }
}

uint64_t sub_226B18988(uint64_t a1, char a2)
{
  *(v2 + 68) = a2;
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B18A54, 0, 0);
}

uint64_t sub_226B18A54()
{
  if (qword_27D7A5EC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = off_27D7A68C0;
  v3 = *(*off_27D7A68C0 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*off_27D7A68C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27D7A68C0 + v4));
  sub_226AC40E8(&v2[v3], v1, &qword_27D7A68D0, &qword_226D72168);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_226AC47B0(v1, &qword_27D7A68D0, &qword_226D72168);
  os_unfair_lock_unlock(&v2[v4]);
  if (v3 == 1)
  {
    sub_226B1961C(*(v0 + 68));
    *(v0 + 64) = 0;
    v11 = sub_226D6E2AC();

    v12 = CFUserNotificationCreate(0, 3600.0, 3uLL, (v0 + 64), v11);
    *(v0 + 32) = v12;

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v12, sub_226B19324, 0);
    *(v0 + 40) = RunLoopSource;
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *(v14 + 16) = RunLoopSource;
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    v16 = sub_226D6B0FC();
    *v15 = v0;
    v15[1] = sub_226B18E18;
    v17 = *(v0 + 16);

    return MEMORY[0x2822007B8](v17, 0, 0, 0xD000000000000010, 0x8000000226D7F410, sub_226B19A78, v14, v16);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *MEMORY[0x277CC7DE8];
    v8 = sub_226D6B0FC();
    (*(*(v8 - 8) + 104))(v6, v7, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226B18E18()
{

  return MEMORY[0x2822009F8](sub_226B18F5C, 0, 0);
}

uint64_t sub_226B18F5C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

id sub_226B18FF8(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6E36C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_226B190E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B0FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = (*(v9 + 48))(a1, 1, v8, v10);
  if (a2 == 2)
  {
    if (!v13)
    {
      v14 = MEMORY[0x277CC7E00];
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    if (!v13)
    {
      v14 = MEMORY[0x277CC7DF0];
LABEL_9:
      (*(v9 + 16))(v12, a1, v8);
      (*(v5 + 104))(v7, *v14, v4);
      sub_226D6E6FC();
      (*(v9 + 8))(v12, v8);
    }
  }

  else if (!v13)
  {
    v14 = MEMORY[0x277CC7DF8];
    goto LABEL_9;
  }

  sub_226AC47B0(a1, &qword_27D7A68D0, &qword_226D72168);
  return (*(v9 + 56))(a1, 1, 1, v8);
}

void sub_226B19324(uint64_t a1, uint64_t a2)
{
  if (qword_27D7A5EC0 != -1)
  {
    swift_once();
  }

  v3 = off_27D7A68C0;
  v4 = *(*off_27D7A68C0 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27D7A68C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27D7A68C0 + v5));
  sub_226B190E0(&v3[v4], a2);

  os_unfair_lock_unlock(&v3[v5]);
}

void sub_226B193FC(uint64_t a1, __CFRunLoopSource *a2)
{
  if (qword_27D7A5EC0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = off_27D7A68C0;
  MEMORY[0x28223BE20](a1);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v3[v5]);
  sub_226B19A80(&v3[v4]);
  os_unfair_lock_unlock(&v3[v5]);
  v6 = CFRunLoopGetMain();
  CFRunLoopAddSource(v6, a2, *MEMORY[0x277CBF048]);
}

uint64_t sub_226B1952C(uint64_t a1, uint64_t a2)
{
  sub_226AC47B0(a1, &qword_27D7A68D0, &qword_226D72168);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_226B1961C(char a1)
{
  v3 = sub_226D6D1AC();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = 0x444145485F525242;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a1)
  {
    v7 = 0xEA00000000005245;
  }

  else
  {
    v7 = 0x8000000226D7F430;
  }

  v8 = 0x8000000226D7F450;
  sub_226B19A9C();
  v9 = sub_226B18FF8(0xD00000000000004ALL, 0x8000000226D7F450, 0);
  if (v1)
  {

    return v8;
  }

  v10 = v29;
  v27 = v7;
  v28 = v6;
  v26 = v9;
  v11 = [v9 URL];
  sub_226D6D14C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68E0, &qword_226D72178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72140;
  result = *MEMORY[0x277CBF208];
  if (!*MEMORY[0x277CBF208])
  {
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 32) = sub_226D6E39C();
  *(inited + 40) = v14;
  *(inited + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(v10 + 16))(boxed_opaque_existential_1, v5, v3);
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x8000000226D7F4A0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(inited + 96) = &unk_283A69C08;
  *(inited + 120) = v16;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000226D7F4D0;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 176) = sub_226D6E39C();
  *(inited + 184) = v17;
  v18 = MEMORY[0x277D837D0];
  *(inited + 216) = MEMORY[0x277D837D0];
  v19 = v27;
  *(inited + 192) = v28;
  *(inited + 200) = v19;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 224) = sub_226D6E39C();
  *(inited + 232) = v20;
  *(inited + 264) = v18;
  *(inited + 240) = 0x5353454D5F525242;
  *(inited + 248) = 0xEB00000000454741;
  result = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 272) = sub_226D6E39C();
  *(inited + 280) = v21;
  *(inited + 312) = v18;
  *(inited + 288) = 0x4F4C4C415F525242;
  *(inited + 296) = 0xE900000000000057;
  result = *MEMORY[0x277CBF218];
  if (!*MEMORY[0x277CBF218])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 320) = sub_226D6E39C();
  *(inited + 328) = v22;
  *(inited + 360) = v18;
  *(inited + 336) = 0x495645525F525242;
  *(inited + 344) = 0xEA00000000005745;
  result = *MEMORY[0x277CBF1E8];
  if (*MEMORY[0x277CBF1E8])
  {
    *(inited + 368) = sub_226D6E39C();
    *(inited + 376) = v23;
    *(inited + 384) = 0x5F544F4E5F525242;
    *(inited + 392) = 0xEB00000000574F4ELL;
    *(inited + 408) = v18;
    *(inited + 416) = 0xD00000000000002ALL;
    v24 = MEMORY[0x277D83B88];
    *(inited + 424) = 0x8000000226D7F4F0;
    *(inited + 432) = 0;
    *(inited + 456) = v24;
    *(inited + 464) = 0xD000000000000022;
    v25 = MEMORY[0x277D83E88];
    *(inited + 472) = 0x8000000226D7F520;
    *(inited + 480) = 32;
    *(inited + 504) = v25;
    *(inited + 512) = 0xD000000000000025;
    *(inited + 520) = 0x8000000226D7F550;
    *(inited + 552) = v18;
    *(inited + 528) = 0xD00000000000004ALL;
    *(inited + 536) = 0x8000000226D7F450;
    v8 = sub_226B22DF0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68E8, &unk_226D76980);
    swift_arrayDestroy();

    (*(v29 + 8))(v5, v3);
    return v8;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_226B19A9C()
{
  result = qword_28105F4A0;
  if (!qword_28105F4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F4A0);
  }

  return result;
}

uint64_t sub_226B19AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B19B74()
{
  sub_226D67F5C();
  result = sub_226D67F3C();
  if (!v0)
  {
    v2 = sub_226D67F4C();

    return v2;
  }

  return result;
}

uint64_t sub_226B19BFC()
{
  v1 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5C0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Deleting all pending objects", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = sub_226D676AC();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_226B1BA18;
  *(v8 + 24) = v7;
  v13[4] = sub_226B1BA20;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226CAD254;
  v13[3] = &block_descriptor_0;
  v9 = _Block_copy(v13);
  v10 = v1;
  v11 = v6;

  [v11 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_226B19E20(uint64_t a1, void *a2)
{
  v42[1] = *MEMORY[0x277D85DE8];
  sub_226D6AF9C();
  v3 = &selRef_setSortDescriptors_;
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = 0x277CBE000uLL;
  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F5C0);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226AB4000, v8, v9, "Deleting all pending orders", v10, 2u);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v42[0] = 0;
  v11 = [a2 executeRequest:v6 error:v42];
  if (v11)
  {
    v12 = v11;
    v13 = v42[0];
  }

  else
  {
    v14 = v42[0];
    v15 = sub_226D6D04C();

    swift_willThrow();
    v16 = v15;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_226AB4000, v17, v18, "Failed to delete all pending orders with error: %@", v19, 0xCu);
      sub_226AC47B0(v20, &qword_27D7A5FB0, &qword_226D70870);
      v23 = v20;
      v5 = 0x277CBE000;
      MEMORY[0x22AA8BEE0](v23, -1, -1);
      v24 = v19;
      v3 = &selRef_setSortDescriptors_;
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {
    }
  }

  sub_226D6C8EC();
  v25 = [swift_getObjCClassFromMetadata() v3[19]];
  v26 = [objc_allocWithZone(*(v5 + 864)) initWithFetchRequest_];

  v27 = sub_226D6E05C();
  v28 = sub_226D6E9EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Deleting all pending transaction registrations", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v42[0] = 0;
  v30 = [a2 executeRequest:v26 error:v42];
  if (v30)
  {
    v31 = v30;
    v32 = v42[0];
  }

  else
  {
    v33 = v42[0];
    v34 = sub_226D6D04C();

    swift_willThrow();
    v35 = v34;
    v36 = sub_226D6E05C();
    v37 = sub_226D6E9CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v34;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226AB4000, v36, v37, "Failed to delete all pending transaction registrations with error: %@", v38, 0xCu);
      sub_226AC47B0(v39, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {
    }
  }
}

void sub_226B1A2E4()
{
  v1 = v0;
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B5EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v10 = sub_226D6B5CC();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F5C0);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Force consent syncing override enabled. Bank connect objects will not be deleted from the store.", v14, 2u);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v31 = v3;
    v15 = sub_226D6E07C();
    v32 = __swift_project_value_buffer(v15, qword_28105F5C0);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "Deleting all non-synced bank connect objects.", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    v19 = sub_226D676AC();
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v20 = type metadata accessor for WalletMessageUpdater();
    v21 = swift_allocObject();
    v50[3] = v20;
    v50[4] = sub_226B1B7F0();
    v50[0] = v21;
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_deletedAccountsApplicationRemover, v47);
    v22 = MEMORY[0x277CC7F68];
    *(&v39 + 1) = v6;
    *&v40[0] = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_226D6B5AC();
    v23 = sub_226D6A92C();
    v24 = objc_allocWithZone(v23);
    v25 = sub_226D6A91C();
    v46[3] = v23;
    v46[4] = MEMORY[0x277CC7CC8];
    v45[4] = v22;
    v46[0] = v25;
    v45[3] = v6;
    __swift_allocate_boxed_opaque_existential_1(v45);
    sub_226D6B58C();
    *&v40[0] = 0;
    v38 = 0u;
    v39 = 0u;
    sub_226B1B848(v51, &v38);
    sub_226AE532C(v50, v40 + 8);
    sub_226AE532C(v46, v41);
    sub_226AE532C(v45, v42 + 8);
    sub_226B1B8B8(v48, &v33);
    if (v34)
    {
      sub_226AC47B0(v48, &qword_27D7A6918, &unk_226D7BBC0);
      sub_226AC47B0(v51, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      sub_226AC484C(&v33, &v35);
    }

    else
    {
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v31 + 8))(v5, v2);
      v26 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v27 = sub_226D6E36C();

      v28 = [v26 initWithBundleIdentifier_];

      v36 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
      v37 = MEMORY[0x277CC85E8];
      *&v35 = v28;
      sub_226AC47B0(v48, &qword_27D7A6918, &unk_226D7BBC0);
      sub_226AC47B0(v51, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      if (v34)
      {
        sub_226AC47B0(&v33, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    sub_226AC484C(&v35, v43);
    v29 = sub_226AC484C(v47, v44 + 8);
    v53[12] = v44[0];
    v53[13] = v44[1];
    v53[14] = v44[2];
    v53[8] = v42[1];
    v53[9] = v42[2];
    v53[10] = v43[0];
    v53[11] = v43[1];
    v53[4] = v40[2];
    v53[5] = v41[0];
    v53[6] = v41[1];
    v53[7] = v42[0];
    v53[0] = v38;
    v53[1] = v39;
    v53[2] = v40[0];
    v53[3] = v40[1];
    MEMORY[0x28223BE20](v29);
    *(&v30 - 2) = v19;
    *(&v30 - 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6920, &unk_226D721D0);
    sub_226D6EB7C();
    ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(*(&v38 + 8), v38);

    sub_226B1B944(v53);
  }
}

void sub_226B1AA40(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v10 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v11 = sub_226D6E91C();
  [v10 setPredicate_];

  v12 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v13 = v12;
  v49 = 0;
  v50 = v9;
  v46 = v7;
  if (v12 >> 62)
  {
    goto LABEL_42;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v47 = a1;
  v40 = a3;
  v41 = v10;
  if (v14)
  {
    a3 = 0;
    v48 = 0;
    v45 = v13 & 0xC000000000000001;
    v43 = a2;
    v44 = v13 & 0xFFFFFFFFFFFFFF8;
    v15 = MEMORY[0x277D84F90];
    v42 = v13;
    while (1)
    {
      if (v45)
      {
        v16 = MEMORY[0x22AA8AFD0](a3, v13);
        a1 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (a3 >= *(v44 + 16))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v14 = sub_226D6EDFC();
          goto LABEL_5;
        }

        v16 = *(v13 + 8 * a3 + 32);
        a1 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          goto LABEL_31;
        }
      }

      a2 = v14;
      v13 = v16;
      v17 = [v16 consentID];
      v18 = sub_226D6E39C();
      v20 = v19;

      MEMORY[0x28223BE20](v21);
      *(&v39 - 6) = v18;
      *(&v39 - 5) = v20;
      v22 = v46;
      v23 = v43;
      *(&v39 - 4) = v47;
      *(&v39 - 3) = v23;
      *(&v39 - 16) = 1;
      v24 = v49;
      sub_226D6EB8C();
      if (v24)
      {

        return;
      }

      v49 = 0;
      if (v48)
      {
        v48 = 1;
        v25 = v50;
      }

      else
      {
        v25 = v50;
        v48 = v50[*(v22 + 24)];
      }

      v26 = *(v25 + *(v22 + 20));
      v27 = *(v26 + 16);
      v10 = v15[2];
      v28 = &v10[v27];
      if (__OFADD__(v10, v27))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v30 = v15[3] >> 1, v30 >= v28))
      {
        if (!*(v26 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v10 <= v28)
        {
          v31 = &v10[v27];
        }

        else
        {
          v31 = v10;
        }

        v15 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v31, 1, v15);
        v30 = v15[3] >> 1;
        if (!*(v26 + 16))
        {
LABEL_7:

          if (v27)
          {
            goto LABEL_39;
          }

          goto LABEL_8;
        }
      }

      v10 = v15[2];
      v32 = v30 - v10;
      type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
      if (v32 < v27)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v33 = v15[2];
        v34 = __OFADD__(v33, v27);
        v35 = v33 + v27;
        if (v34)
        {
          goto LABEL_41;
        }

        v15[2] = v35;
      }

LABEL_8:

      sub_226B1B9BC(v50);
      ++a3;
      v14 = a2;
      v13 = v42;
      if (a1 == a2)
      {
        goto LABEL_33;
      }
    }
  }

  v48 = 0;
  v15 = MEMORY[0x277D84F90];
LABEL_33:

  v51[0] = 0;
  if ([v47 save_])
  {
    v36 = v51[0];

    v37 = v40;
    *v40 = v48;
    *(v37 + 1) = v15;
  }

  else
  {
    v38 = v51[0];

    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B1B140(const char *a1)
{
  v3 = v1;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v5, v6, a1, v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  (*(v3 + OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_makeCoreDataStore))();
  sub_226B19BFC();
  sub_226B1A2E4();

  return sub_226B1AF0C();
}

id AccountNotificationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountNotificationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountNotificationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_226B1B4E0()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6B5EC();
  v17 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_226D6B58C();
  sub_226D67E8C();
  sub_226D67F0C();
  (*(v1 + 8))(v3, v0);
  sub_226D6704C();
  v4 = sub_226D6BE5C();
  swift_allocObject();
  v5 = sub_226D6BE4C();
  v6 = qword_281060130;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_281060138;
  v16 = v4;
  v17 = MEMORY[0x277CC8180];
  v15[0] = v5;
  v14[3] = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v14[4] = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v14[0] = v7;
  v8 = type metadata accessor for AccountNotificationHandler();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_makeCoreDataStore];
  *v10 = sub_226B19B74;
  v10[1] = 0;
  sub_226AE532C(v15, &v9[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_userIdentifierProvider]);
  sub_226AE532C(v14, &v9[OBJC_IVAR____TtC13FinanceDaemon26AccountNotificationHandler_deletedAccountsApplicationRemover]);
  v13.receiver = v9;
  v13.super_class = v8;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);

  return v11;
}

unint64_t sub_226B1B7F0()
{
  result = qword_281062070;
  if (!qword_281062070)
  {
    type metadata accessor for WalletMessageUpdater();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062070);
  }

  return result;
}

uint64_t sub_226B1B848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B1B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6918, &unk_226D7BBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B1B9BC(uint64_t a1)
{
  v2 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BankConnectPassKitTransactionsDataSource.__allocating_init(paymentService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BankConnectPassKitTransactionsDataSource.transactions(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6928, &qword_226D721E8);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1BB4C, 0, 0);
}

uint64_t sub_226B1BB4C()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D38158]) init];
  v0[24] = v2;
  v3 = [v1 deviceTransactionSourceIdentifiers];
  if (v3)
  {
    v4 = v3;
    sub_226D6E89C();

    v5 = sub_226D6E86C();
  }

  else
  {
    v5 = 0;
  }

  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  [v2 setTransactionSourceIdentifiers_];

  v13 = *(v9 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_226B1BDB0;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6930, &qword_226D721F0);
  sub_226D6E6DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226B1BF1C;
  v0[13] = &block_descriptor_1;
  [v13 transactionsForRequest:v11 completion:v0 + 10];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226B1BDB0()
{

  return MEMORY[0x2822009F8](sub_226B1BE90, 0, 0);
}

uint64_t sub_226B1BE90()
{
  v1 = v0[24];
  v2 = v0[18];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_226B1BF1C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_226B1C210();
    sub_226D6E5EC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6928, &qword_226D721E8);
  return sub_226D6E6FC();
}

uint64_t BankConnectPassKitTransactionsDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226B1C000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD8408;

  return BankConnectPassKitTransactionsDataSource.transactions(for:)(a1);
}

uint64_t dispatch thunk of BankConnectPassKitTransactionsDataSourceProtocol.transactions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD8408;

  return v9(a1, a2, a3);
}

unint64_t sub_226B1C210()
{
  result = qword_27D7A6938;
  if (!qword_27D7A6938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6938);
  }

  return result;
}

uint64_t type metadata accessor for Instant(uint64_t a1)
{
  result = qword_27D7A6940;
  if (!qword_27D7A6940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B1C2D0(uint64_t a1)
{
  result = sub_226D6D4AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226B1C33C(void *a1)
{
  sub_226D6F39C();

  return sub_226D6D3DC();
}

uint64_t sub_226B1C394@<X0>(uint64_t *a1@<X8>)
{
  sub_226D6D47C();
  result = sub_226D6F3AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226B1C420()
{
  sub_226D6F2FC();
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226B1C4A8(uint64_t a1)
{
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return sub_226D6E30C();
}

uint64_t sub_226B1C52C(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6D4AC();
  sub_226B1C650(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226B1C650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B1C69C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectNotificationEventsUnregisterTask(0);
  sub_226AF265C(v1 + *(v10 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(v10 + 20));
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

unint64_t sub_226B1C8A8()
{
  sub_226D6EEFC();

  sub_226D6D52C();
  sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000003CLL;
}

uint64_t sub_226B1C988(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_226D6CB2C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1CA48, 0, 0);
}

uint64_t sub_226B1CA48()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_226D676AC();
  v0[9] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6EB8C();

  if (v0[3])
  {
    v6 = v0[8];
    v7 = __swift_project_boxed_opaque_existential_1(v0[4], v1[3]);
    __swift_project_boxed_opaque_existential_1(v7 + 1, v7[4]);
    v8 = sub_226D6C2AC();
    v0[10] = v8;
    sub_226D6CB1C();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_226B1CC64;
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282119B28](v10, &unk_226D72478, v9, v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_226B1CC64()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226B1CE1C;
  }

  else
  {

    v2 = sub_226B1CD80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B1CD80()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B1CE1C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B1CEC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  type metadata accessor for BankConnectNotificationEventsUnregisterTask(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B1CF8C, 0, 0);
}

uint64_t sub_226B1CF8C()
{
  v26 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226B1FE34(v3, v2, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  sub_226B1FE34(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (!v8)
  {

    sub_226B1FE9C(v10, MEMORY[0x277CC6528]);
    sub_226B1FE9C(v9, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v11 = 136315394;
  sub_226D6D52C();
  sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226B1FE9C(v9, type metadata accessor for BankConnectNotificationEventsUnregisterTask);
  v17 = sub_226AC4530(v14, v16, &v25);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226B2042C(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226B1FE34(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B1FE9C(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to unregister from notification events with subscriptionID %s %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v20 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v21 = sub_226D676AC();
    v22 = swift_task_alloc();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    sub_226D6EB7C();
  }

LABEL_8:

  v23 = *(v0 + 8);

  return v23();
}

void sub_226B1D398(void *a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v15[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v15];

  if (v6)
  {
    v7 = v15[0];
    v8 = sub_226B1D548(a2, a1);
    if (!v2)
    {
      v9 = v8;
      if (v8)
      {
        v10 = [v8 unregisterRequestAttemptCount];
        if (__OFADD__(v10, 1))
        {
          __break(1u);
        }

        [v9 setUnregisterRequestAttemptCount_];
        type metadata accessor for BankConnectNotificationEventsUnregisterTask(0);
        v11 = sub_226D6D3EC();
        [v9 setLastUnregisterRequestAttemptDate_];

        v15[0] = 0;
        if ([a1 save_])
        {
          v12 = v15[0];
        }

        else
        {
          v14 = v15[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v13 = v15[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B1D548(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C5BC();
  result = sub_226D6C56C();
  if (!v2 && !result)
  {
    v18[0] = 0;
    v18[1] = 0;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F710);
    (*(v5 + 16))(v7, a1, v4);
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9CC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_226B2042C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v14 = sub_226D6F1CC();
      v16 = v15;
      (*(v5 + 8))(v7, v4);
      v17 = sub_226AC4530(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_226AB4000, v10, v11, "Failed to unregister from notification events. Notification subscription with identifier %s doesn't exist.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return v18[0];
  }

  return result;
}

void sub_226B1D7EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v17];

  if (v8)
  {
    v9 = v17[0];
    v10 = sub_226B1D548(a2, a1);
    if (!v3)
    {
      if (v10)
      {
        v11 = v10;
        v12 = [v10 subscriptionID];

        if (v12)
        {
          v13 = sub_226D6E39C();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        *a3 = v13;
        a3[1] = v15;
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }
    }
  }

  else
  {
    v16 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B1D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_226AD827C;

  return MEMORY[0x282119B38](a3);
}

void sub_226B1D9E4(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v13[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v13];

  if (v6)
  {
    v7 = v13[0];
    v8 = sub_226B1D548(a2, a1);
    if (!v2)
    {
      v9 = v8;
      if (v8)
      {
        [a1 deleteObject_];
        v13[0] = 0;
        if ([a1 save_])
        {
          v10 = v13[0];
        }

        else
        {
          v12 = v13[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v11 = v13[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B1DB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_226B1DBE4;

  return sub_226B1C988(a1);
}

uint64_t sub_226B1DBE4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226B1DD18, 0, 0);
  }
}

uint64_t sub_226B1DD18()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = sub_226D676AC();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_226D6EB7C();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B1DDF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B1CEC8(a1, a2);
}

uint64_t sub_226B1DE94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6D52C();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B1DF14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D71840;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v1 = sub_226B1ED68(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

uint64_t sub_226B1E0C0(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6978, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D723C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectNotificationEventsUnregisterTask(uint64_t a1)
{
  result = qword_27D7A69E8;
  if (!qword_27D7A69E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B1E164(uint64_t a1)
{
  result = sub_226B2042C(&qword_27D7A6988, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D72404);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B1E210(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B1D944(a1, v5, v4);
}

uint64_t sub_226B1E2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69D0, &unk_226D724B0);
  v3 = sub_226D6EECC();
  v4 = 0;
  v5 = v3 + 56;
  v61 = v1;
  v62 = a1 + 32;
  v69 = v3 + 56;
  v70 = v3;
  while (2)
  {
    v13 = v62 + 56 * v4;
    v14 = *(v13 + 8);
    v15 = *(v13 + 24);
    v73 = *(v13 + 16);
    v74 = *(v13 + 32);
    v75 = *(v13 + 40);
    v76 = *v13;
    v16 = *(v13 + 48);
    sub_226D6F2FC();
    v72 = v16;
    if (v16)
    {
      if (v16 != 1)
      {
        MEMORY[0x22AA8B3B0](2);

        sub_226D6E42C();
        sub_226D6E42C();
        goto LABEL_12;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x22AA8B3B0](v17);

    sub_226D6E42C();
LABEL_12:
    sub_226D6E42C();
    result = sub_226D6F35C();
    v71 = ~(-1 << *(v3 + 32));
    v19 = result & v71;
    v20 = (result & v71) >> 6;
    v21 = *(v5 + 8 * v20);
    v22 = 1 << (result & v71);
    if ((v22 & v21) == 0)
    {
      goto LABEL_62;
    }

    v63 = v4;
    v67 = v14;
    v68 = v15;
    do
    {
      v23 = *(v3 + 48) + 56 * v19;
      v25 = *v23;
      v24 = *(v23 + 8);
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v28 = *(v23 + 32);
      v29 = *(v23 + 40);
      v30 = *(v23 + 48);
      v77[0] = *v23;
      v77[1] = v24;
      v77[2] = v27;
      v77[3] = v26;
      v77[4] = v28;
      v77[5] = v29;
      v78 = v30;
      v31 = v75;
      v79 = v76;
      v80 = v14;
      v32 = v73;
      v33 = v74;
      v81 = v73;
      v82 = v15;
      v83 = v74;
      v84 = v75;
      v85 = v72;
      v34 = v72;
      if (v30)
      {
        if (v30 == 1)
        {
          if (v72 != 1)
          {
            goto LABEL_15;
          }

          if (v25 != v76 || v24 != v14)
          {
            v36 = sub_226D6F21C();
            v32 = v73;
            v33 = v74;
            v31 = v75;
            if ((v36 & 1) == 0)
            {
              v34 = 1;
              goto LABEL_15;
            }
          }

          if (v27 == v32 && v26 == v15)
          {
            goto LABEL_64;
          }

          v38 = v33;
          v39 = v31;
          v40 = v32;
          v64 = sub_226D6F21C();
          v41 = v40;
          v42 = v38;
          v14 = v67;
          v15 = v68;
          sub_226AFD74C(v76, v67, v41, v68, v42, v39, 1u);
          sub_226AFD74C(v25, v24, v27, v26, v28, v29, 1u);
          result = sub_226AC47B0(v77, &unk_27D7A9640, &qword_226D7A5E0);
          if (v64)
          {
            v7 = v75;
            v6 = v76;
            v8 = v67;
            v9 = v73;
            v10 = v74;
            v11 = v68;
            v12 = 1;
            goto LABEL_3;
          }
        }

        else
        {
          if (v72 != 2)
          {
            goto LABEL_15;
          }

          v43 = v25 == v76 && v24 == v14;
          if (!v43 && (v44 = sub_226D6F21C(), v32 = v73, v33 = v74, v31 = v75, (v44 & 1) == 0) || (v27 == v32 ? (v45 = v26 == v15) : (v45 = 0), !v45 && (v46 = sub_226D6F21C(), v32 = v73, v33 = v74, v31 = v75, (v46 & 1) == 0)))
          {
            v34 = 2;
LABEL_15:
            sub_226AFD74C(v76, v14, v32, v15, v33, v31, v34);
            sub_226AFD74C(v25, v24, v27, v26, v28, v29, v30);
            result = sub_226AC47B0(v77, &unk_27D7A9640, &qword_226D7A5E0);
            goto LABEL_16;
          }

          if (v28 == v33 && v29 == v31)
          {

LABEL_66:

            sub_226AC47B0(v77, &unk_27D7A9640, &qword_226D7A5E0);
            goto LABEL_4;
          }

          v48 = v32;
          v49 = v33;
          v50 = v31;
          v65 = sub_226D6F21C();
          v51 = v48;
          v52 = v49;
          v14 = v67;
          v15 = v68;
          sub_226AFD74C(v76, v67, v51, v68, v52, v50, 2u);
          sub_226AFD74C(v25, v24, v27, v26, v28, v29, 2u);
          result = sub_226AC47B0(v77, &unk_27D7A9640, &qword_226D7A5E0);
          if (v65)
          {
            v7 = v75;
            v6 = v76;
            v8 = v67;
            v9 = v73;
            v10 = v74;
            v11 = v68;
            v12 = 2;
            goto LABEL_3;
          }
        }
      }

      else
      {
        if (v72)
        {
          goto LABEL_15;
        }

        if (v25 != v76 || v24 != v14)
        {
          v54 = sub_226D6F21C();
          v32 = v73;
          v33 = v74;
          v31 = v75;
          v34 = 0;
          if ((v54 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v27 == v32 && v26 == v15)
        {
LABEL_64:

          goto LABEL_66;
        }

        v56 = v32;
        v66 = sub_226D6F21C();
        sub_226AFD74C(v76, v14, v56, v15, v74, v75, 0);
        sub_226AFD74C(v25, v24, v27, v26, v28, v29, 0);
        result = sub_226AC47B0(v77, &unk_27D7A9640, &qword_226D7A5E0);
        if (v66)
        {
          v7 = v75;
          v6 = v76;
          v8 = v14;
          v9 = v73;
          v10 = v74;
          v11 = v15;
          v12 = 0;
LABEL_3:
          sub_226AE5134(v6, v8, v9, v11, v10, v7, v12);
LABEL_4:
          v1 = v61;
          v5 = v69;
          v3 = v70;
          v4 = v63;
          goto LABEL_5;
        }
      }

LABEL_16:
      v3 = v70;
      v19 = (v19 + 1) & v71;
      v20 = v19 >> 6;
      v5 = v69;
      v22 = 1 << v19;
    }

    while ((*(v69 + 8 * (v19 >> 6)) & (1 << v19)) != 0);
    v21 = *(v69 + 8 * v20);
    v1 = v61;
    v4 = v63;
LABEL_62:
    *(v5 + 8 * v20) = v21 | v22;
    v57 = *(v3 + 48) + 56 * v19;
    *v57 = v76;
    *(v57 + 8) = v14;
    *(v57 + 16) = v73;
    *(v57 + 24) = v15;
    *(v57 + 32) = v74;
    *(v57 + 40) = v75;
    *(v57 + 48) = v72;
    v58 = *(v3 + 16);
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (!v59)
    {
      *(v3 + 16) = v60;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B1E8E0(uint64_t a1)
{
  v2 = sub_226D6D6CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A69A8, &unk_226D72490);
    v9 = sub_226D6EECC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_226B2042C(&qword_27D7A69B0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_226D6E2FC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_226B2042C(&qword_27D7A69B8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_226D6E35C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226B1EC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
    v3 = sub_226D6EECC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_226D6F2FC();

      sub_226D6E42C();
      result = sub_226D6F35C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_226D6F21C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}