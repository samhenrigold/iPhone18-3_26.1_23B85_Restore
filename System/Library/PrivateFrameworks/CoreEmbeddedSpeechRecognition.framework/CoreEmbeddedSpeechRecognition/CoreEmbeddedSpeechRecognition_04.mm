uint64_t sub_225F98D0C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 320) = *v1;
  *(v3 + 968) = a1;

  return MEMORY[0x2822009F8](sub_225F98E64, 0, 0);
}

uint64_t sub_225F98E64()
{
  v0[40] = v0;
  v2 = v0[52];
  v0[122] = v2;
  sub_2260998E8();
  v3 = swift_task_alloc();
  v0[123] = v3;
  *v3 = v0[40];
  v3[1] = sub_225F98F58;

  return MEMORY[0x28212BEE8](v2);
}

uint64_t sub_225F98F58()
{
  *(*v0 + 320) = *v0;

  return MEMORY[0x2822009F8](sub_225F990EC, 0, 0);
}

uint64_t sub_225F990EC()
{
  v41 = v0;
  v40[6] = *MEMORY[0x277D85DE8];
  v25 = v0[112];
  v24 = v0[111];
  v1 = v0[98];
  v22 = v0[97];
  v23 = v0[96];
  v0[40] = v0;
  v2 = sub_225F7E9BC();
  (*(v22 + 16))(v1, v2, v23);
  sub_2260998E8();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v32 = sub_226098C48();
  v33 = sub_22609A088();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_22601F694;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225EF7B84;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v31 = v3;

  *v31 = sub_225EF7434;
  v31[1] = v28;

  v31[2] = sub_225EF7434;
  v31[3] = v29;

  v31[4] = sub_225EF7B90;
  v31[5] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v32, v33))
  {
    v4 = v21[119];
    buf = sub_22609A188();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v19 = sub_225EF5468(0, v17, v17);
    v20 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v39 = v19;
    v40[0] = v20;
    sub_225EF54BC(2, &v36);
    sub_225EF54BC(1, &v36);
    v37 = sub_225EF7434;
    v38 = v28;
    sub_225EF73E8(&v37, &v36, &v39, v40);
    if (v4)
    {
    }

    v37 = sub_225EF7434;
    v38 = v29;
    sub_225EF73E8(&v37, &v36, &v39, v40);
    v37 = sub_225EF7B90;
    v38 = v30;
    sub_225EF73E8(&v37, &v36, &v39, v40);
    _os_log_impl(&dword_225EEB000, v32, v33, "Creating SpeechAnalyzer with PrefixText: %s", buf, 0xCu);
    sub_225EF7AF4(v19, 0, v17);
    sub_225EF7AF4(v20, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v14 = v21[98];
  v15 = v21[96];
  v16 = v21[80];
  v13 = v21[97];
  MEMORY[0x277D82BD8](v32);
  (*(v13 + 8))(v14, v15);
  sub_22609A4F8();
  v21[56] = sub_226099F08();
  MEMORY[0x277D82BE0](v16);
  if (v16)
  {
    v11 = v21[80];
    v12 = [v11 jitGrammar];
    if (v12)
    {
      v9 = sub_226099C88();
      MEMORY[0x277D82BD8](v12);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x277D82BD8](v11);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v21[57] = v8;
  if (v21[57])
  {
    v34 = v21[57];
  }

  else
  {
    v34 = sub_22609A4F8();
    if (v21[57])
    {
      sub_225EFE6E8(v21 + 57);
    }
  }

  v7 = v21[81];
  v21[58] = v34;
  v21[124] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_226099F88();
  sub_2260998E8();
  v21[59] = v7;
  if (v21[59])
  {
    v35 = v21[59];
  }

  else
  {
    v35 = sub_22609A4F8();
    if (v21[59])
    {
      sub_225EFE6E8(v21 + 59);
    }
  }

  v21[60] = v35;
  sub_226099F88();
  v6 = swift_task_alloc();
  v21[125] = v6;
  *v6 = v21[40];
  v6[1] = sub_225F9A0C4;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F9A0C4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 320) = *v1;
  *(v3 + 1008) = a1;

  return MEMORY[0x2822009F8](sub_225F9A21C, 0, 0);
}

uint64_t sub_225F9A21C()
{
  v0[40] = v0;
  sub_2260991C8();
  v2 = v0[56];
  sub_2260998E8();
  v0[61] = v2;
  sub_22601F6A0();
  v0[62] = sub_226099D18();
  v3 = sub_226099178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  v3();

  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  v4 = sub_22609A378();
  v0[127] = v4;
  v5 = swift_task_alloc();
  v0[128] = v5;
  *v5 = v0[40];
  v5[1] = sub_225F9A450;

  return MEMORY[0x28212BB88](v4);
}

uint64_t sub_225F9A450()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1032) = v0;

  if (v0)
  {
    v2 = sub_225F9C63C;
  }

  else
  {

    v2 = sub_225F9A644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F9A644()
{
  *(v0 + 320) = v0;
  if (*sub_225F7F4BC())
  {
    goto LABEL_14;
  }

  v22 = v23[112];
  sub_2260998E8();
  if (v22)
  {
    v20 = v23[112];
    v23[26] = v23[111];
    v23[27] = v20;
    v21 = swift_task_alloc();
    v23[130] = v21;
    *v21 = v23[40];
    v21[1] = sub_225F9AFDC;
    v1 = v23[111];

    return MEMORY[0x28212BDA8](v1, v20);
  }

  v19 = v23[114];
  sub_2260998E8();
  if (v19)
  {
    v17 = v23[114];
    v23[24] = v23[113];
    v23[25] = v17;
    v18 = swift_task_alloc();
    v23[132] = v18;
    *v18 = v23[40];
    v18[1] = sub_225F9B960;
    v2 = v23[113];

    return MEMORY[0x28212BD20](v2, v17);
  }

  v16 = v23[116];
  sub_2260998E8();
  if (!v16)
  {
LABEL_14:
    v11 = v23[105];
    v12 = v23[103];
    v10 = v23[100];
    v13 = v23[95];
    v8 = v23[93];
    v9 = v23[101];
    v7 = v23[94];
    sub_225EFE6E8(v23 + 56);
    sub_225EFE6E8(v23 + 52);

    (*(v7 + 8))(v13, v8);
    sub_225EFE834(v23 + 49);
    (*(v9 + 8))(v12, v10);
    sub_22601F728(v11);

    v4 = *(v23[40] + 8);
    v5 = v23[108];

    return v4(v5);
  }

  else
  {
    v14 = v23[116];
    v23[22] = v23[115];
    v23[23] = v14;
    v15 = swift_task_alloc();
    v23[134] = v15;
    *v15 = v23[40];
    v15[1] = sub_225F9C0DC;
    v3 = v23[115];

    return MEMORY[0x28212BD28](v3, v14);
  }
}

uint64_t sub_225F9AFDC()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1048) = v0;

  if (v0)
  {
    v2 = sub_225F9C9B0;
  }

  else
  {
    v2 = sub_225F9B1AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F9B1AC()
{
  v0[40] = v0;

  v18 = v0[114];
  sub_2260998E8();
  if (v18)
  {
    v16 = v0[114];
    v0[24] = v0[113];
    v0[25] = v16;
    v17 = swift_task_alloc();
    v0[132] = v17;
    *v17 = v0[40];
    v17[1] = sub_225F9B960;
    v1 = v0[113];

    return MEMORY[0x28212BD20](v1, v16);
  }

  else
  {
    v15 = v0[116];
    sub_2260998E8();
    if (v15)
    {
      v13 = v0[116];
      v0[22] = v0[115];
      v0[23] = v13;
      v14 = swift_task_alloc();
      v0[134] = v14;
      *v14 = v0[40];
      v14[1] = sub_225F9C0DC;
      v2 = v0[115];

      return MEMORY[0x28212BD28](v2, v13);
    }

    else
    {
      v10 = v0[105];
      v11 = v0[103];
      v9 = v0[100];
      v12 = v0[95];
      v7 = v0[93];
      v8 = v0[101];
      v6 = v0[94];
      sub_225EFE6E8(v0 + 56);
      sub_225EFE6E8(v0 + 52);

      (*(v6 + 8))(v12, v7);
      sub_225EFE834(v0 + 49);
      (*(v8 + 8))(v11, v9);
      sub_22601F728(v10);

      v3 = *(v0[40] + 8);
      v4 = v0[108];

      return v3(v4);
    }
  }
}

uint64_t sub_225F9B960()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1064) = v0;

  if (v0)
  {
    v2 = sub_225F9CD18;
  }

  else
  {
    v2 = sub_225F9BB30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F9BB30()
{
  v0[40] = v0;

  v13 = v0[116];
  sub_2260998E8();
  if (v13)
  {
    v1 = v0[116];
    v0[22] = v0[115];
    v0[23] = v1;
    v12 = swift_task_alloc();
    v0[134] = v12;
    *v12 = v0[40];
    v12[1] = sub_225F9C0DC;

    JUMPOUT(0x226098EB8);
  }

  v9 = v0[105];
  v10 = v0[103];
  v8 = v0[100];
  v11 = v0[95];
  v6 = v0[93];
  v7 = v0[101];
  v5 = v0[94];
  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v5 + 8))(v11, v6);
  sub_225EFE834(v0 + 49);
  (*(v7 + 8))(v10, v8);
  sub_22601F728(v9);

  v2 = *(v0[40] + 8);
  v3 = v0[108];

  return v2(v3);
}

uint64_t sub_225F9C0DC()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1080) = v0;

  if (v0)
  {
    v2 = sub_225F9D080;
  }

  else
  {
    v2 = sub_225F9C2AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F9C2AC()
{
  v0[40] = v0;

  v8 = v0[105];
  v9 = v0[103];
  v6 = v0[101];
  v7 = v0[100];
  v10 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v4 + 8))(v10, v5);
  sub_225EFE834(v0 + 49);
  (*(v6 + 8))(v9, v7);
  sub_22601F728(v8);

  v1 = *(v0[40] + 8);
  v2 = v0[108];

  return v1(v2);
}

uint64_t sub_225F9C63C()
{
  v9 = v0[105];
  v8 = v0[103];
  v6 = v0[101];
  v7 = v0[100];
  v4 = v0[95];
  v3 = v0[94];
  v5 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v3 + 8))(v4, v5);
  sub_225EFE834(v0 + 49);
  (*(v6 + 8))(v8, v7);
  sub_22601F728(v9);

  v1 = *(v0[40] + 8);

  return v1();
}

uint64_t sub_225F9C9B0()
{
  v9 = v0[105];
  v8 = v0[103];
  v6 = v0[101];
  v7 = v0[100];
  v4 = v0[95];
  v3 = v0[94];
  v5 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v3 + 8))(v4, v5);
  sub_225EFE834(v0 + 49);
  (*(v6 + 8))(v8, v7);
  sub_22601F728(v9);

  v1 = *(v0[40] + 8);

  return v1();
}

uint64_t sub_225F9CD18()
{
  v9 = v0[105];
  v8 = v0[103];
  v6 = v0[101];
  v7 = v0[100];
  v4 = v0[95];
  v3 = v0[94];
  v5 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v3 + 8))(v4, v5);
  sub_225EFE834(v0 + 49);
  (*(v6 + 8))(v8, v7);
  sub_22601F728(v9);

  v1 = *(v0[40] + 8);

  return v1();
}

uint64_t sub_225F9D080()
{
  v9 = v0[105];
  v8 = v0[103];
  v6 = v0[101];
  v7 = v0[100];
  v4 = v0[95];
  v3 = v0[94];
  v5 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v3 + 8))(v4, v5);
  sub_225EFE834(v0 + 49);
  (*(v6 + 8))(v8, v7);
  sub_22601F728(v9);

  v1 = *(v0[40] + 8);

  return v1();
}

uint64_t sub_225F9D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[11] = a4;
  v5[9] = v5;
  v5[10] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_226098C58();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_22609A358();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[10] = a4;

  return MEMORY[0x2822009F8](sub_225F9D638, 0, 0);
}

uint64_t sub_225F9D638()
{
  *(v0 + 72) = v0;
  v1 = sub_225F7F638();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v8 = sub_225F3E9A8();
  sub_225F7E764();
  v3 = swift_task_alloc();
  v7[25] = v3;
  *v3 = v7[9];
  v3[1] = sub_225F9D784;
  v4 = v7[24];
  v5 = v7[22];

  return sub_225F7E788(v0 + 40, v0 + 16, v4, v5, v8);
}

uint64_t sub_225F9D784()
{
  v4 = *v1;
  v4[9] = *v1;
  v4[26] = v0;

  if (v0)
  {
    v2 = sub_225F9E294;
  }

  else
  {
    (*(v4[23] + 8))(v4[24], v4[22]);
    v2 = sub_225F9D91C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F9D91C()
{
  v44 = v0;
  v0[9] = v0;
  v23 = v0[26];
  v1 = v0[21];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[11];
  v2 = sub_225F7E9BC();
  (*(v24 + 16))(v1, v2, v25);
  MEMORY[0x277D82BE0](v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v37 = sub_226098C48();
  v38 = sub_22609A0A8();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F3E198;
  *(v28 + 24) = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F3E1C8;
  *(v32 + 24) = v28;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F9EC34;
  *(v29 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F2D374;
  *(v35 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v36 = v3;

  *v36 = sub_225EF7434;
  v36[1] = v30;

  v36[2] = sub_225EF7434;
  v36[3] = v31;

  v36[4] = sub_225F3E358;
  v36[5] = v32;

  v36[6] = sub_225EF7434;
  v36[7] = v33;

  v36[8] = sub_225EF7434;
  v36[9] = v34;

  v36[10] = sub_225EF71D0;
  v36[11] = v35;
  sub_225EF5418();

  if (os_log_type_enabled(v37, v38))
  {
    buf = sub_22609A188();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v20 = sub_225EF5468(1, v18, v18);
    v21 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v39 = buf;
    v40 = v20;
    v41 = v21;
    sub_225EF54BC(2, &v39);
    sub_225EF54BC(2, &v39);
    v42 = sub_225EF7434;
    v43 = v30;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    if (v23)
    {
    }

    v42 = sub_225EF7434;
    v43 = v31;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    v42 = sub_225F3E358;
    v43 = v32;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    v42 = sub_225EF7434;
    v43 = v33;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    v42 = sub_225EF7434;
    v43 = v34;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    v42 = sub_225EF71D0;
    v43 = v35;
    sub_225EF73E8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_225EEB000, v37, v38, "%@ cancelPreheatingTask:%ld queue task enqueued", buf, 0x16u);
    sub_225EF7AF4(v20, 1, v18);
    sub_225EF7AF4(v21, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v15 = v22[21];
  v8 = v22[19];
  v16 = v22[18];
  v14 = v22[16];
  v17 = v22[15];
  v12 = v22[13];
  v10 = v22[12];
  v9 = v22[11];
  v7 = v22[20];
  v13 = v22[17];
  v11 = v22[14];
  MEMORY[0x277D82BD8](v37);
  (*(v7 + 8))(v15, v8);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v9);
  v5 = swift_allocObject();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  v22[7] = &unk_2260A0F78;
  v22[8] = v5;
  sub_226099DD8();
  (*(v11 + 8))(v17, v12);
  (*(v13 + 8))(v16, v14);

  v6 = *(v22[9] + 8);

  return v6();
}

uint64_t sub_225F9E294()
{
  v47 = v0;
  v26 = v0[26];
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[22];
  v0[9] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[21];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[11];
  v5 = sub_225F7E9BC();
  (*(v27 + 16))(v4, v5, v28);
  MEMORY[0x277D82BE0](v29);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v40 = sub_226098C48();
  v41 = sub_22609A0A8();
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F3E198;
  *(v31 + 24) = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F3E1C8;
  *(v35 + 24) = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F9EC34;
  *(v32 + 24) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_225F2D374;
  *(v38 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v39 = v6;

  *v39 = sub_225EF7434;
  v39[1] = v33;

  v39[2] = sub_225EF7434;
  v39[3] = v34;

  v39[4] = sub_225F3E358;
  v39[5] = v35;

  v39[6] = sub_225EF7434;
  v39[7] = v36;

  v39[8] = sub_225EF7434;
  v39[9] = v37;

  v39[10] = sub_225EF71D0;
  v39[11] = v38;
  sub_225EF5418();

  if (os_log_type_enabled(v40, v41))
  {
    buf = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(1, v21, v21);
    v24 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v42 = buf;
    v43 = v23;
    v44 = v24;
    sub_225EF54BC(2, &v42);
    sub_225EF54BC(2, &v42);
    v45 = sub_225EF7434;
    v46 = v33;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v34;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225F3E358;
    v46 = v35;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v36;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF7434;
    v46 = v37;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    v45 = sub_225EF71D0;
    v46 = v38;
    sub_225EF73E8(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_225EEB000, v40, v41, "%@ cancelPreheatingTask:%ld queue task enqueued", buf, 0x16u);
    sub_225EF7AF4(v23, 1, v21);
    sub_225EF7AF4(v24, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v18 = v25[21];
  v11 = v25[19];
  v19 = v25[18];
  v17 = v25[16];
  v20 = v25[15];
  v15 = v25[13];
  v13 = v25[12];
  v12 = v25[11];
  v10 = v25[20];
  v16 = v25[17];
  v14 = v25[14];
  MEMORY[0x277D82BD8](v40);
  (*(v10 + 8))(v18, v11);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v12);
  v7 = swift_allocObject();
  *(v7 + 16) = v12;
  *(v7 + 24) = v13;
  v25[7] = &unk_2260A0F78;
  v25[8] = v7;
  sub_226099DD8();
  (*(v14 + 8))(v20, v15);
  (*(v16 + 8))(v19, v17);

  v8 = *(v25[9] + 8);

  return v8();
}

uint64_t sub_225F9EC40(uint64_t a1, uint64_t a2)
{
  v2[11] = a2;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v3 = sub_226098C58();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[9] = a2;

  return MEMORY[0x2822009F8](sub_225F9ED54, 0, 0);
}

void sub_225F9ED54()
{
  v66 = v0;
  v1 = v0[15];
  v40 = v0[13];
  v41 = v0[12];
  v43 = v0[11];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  v42 = *(v40 + 16);
  v42(v1, v2, v41);
  MEMORY[0x277D82BE0](v43);
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  v54 = sub_226098C48();
  v55 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_225F3E198;
  *(v45 + 24) = v44;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3E1C8;
  *(v49 + 24) = v45;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F9FCB4;
  *(v46 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F2D374;
  *(v52 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v53 = v3;

  *v53 = sub_225EF7434;
  v53[1] = v47;

  v53[2] = sub_225EF7434;
  v53[3] = v48;

  v53[4] = sub_225F3E358;
  v53[5] = v49;

  v53[6] = sub_225EF7434;
  v53[7] = v50;

  v53[8] = sub_225EF7434;
  v53[9] = v51;

  v53[10] = sub_225EF71D0;
  v53[11] = v52;
  sub_225EF5418();

  if (os_log_type_enabled(v54, v55))
  {
    buf = sub_22609A188();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = sub_225EF5468(1, v35, v35);
    v38 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v61 = buf;
    v62 = v37;
    v63 = v38;
    sub_225EF54BC(2, &v61);
    sub_225EF54BC(2, &v61);
    v64 = sub_225EF7434;
    v65 = v47;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v48;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225F3E358;
    v65 = v49;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v50;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF7434;
    v65 = v51;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    v64 = sub_225EF71D0;
    v65 = v52;
    sub_225EF73E8(&v64, &v61, &v62, &v63);
    _os_log_impl(&dword_225EEB000, v54, v55, "%@ cancelPreheatingTask:%ld queue task dequeued", buf, 0x16u);
    sub_225EF7AF4(v37, 1, v35);
    sub_225EF7AF4(v38, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v29 = v39[15];
  v30 = v39[12];
  v32 = v39[11];
  v28 = v39[13];
  MEMORY[0x277D82BD8](v54);
  v31 = *(v28 + 8);
  v31(v29, v30);
  v33 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v34 = *v33;

  swift_endAccess();
  if (v34)
  {
    v4 = v39[14];
    v18 = v39[12];
    v19 = v39[11];
    v39[10] = v34;
    v5 = sub_225F7E9BC();
    v42(v4, v5, v18);
    MEMORY[0x277D82BE0](v19);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    oslog = sub_226098C48();
    v27 = sub_22609A0A8();
    v22 = swift_allocObject();
    *(v22 + 16) = 64;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_225F3E198;
    *(v21 + 24) = v20;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_225F3E1C8;
    *(v24 + 24) = v21;
    sub_22609A4F8();
    v25 = v6;

    *v25 = sub_225EF7434;
    v25[1] = v22;

    v25[2] = sub_225EF7434;
    v25[3] = v23;

    v25[4] = sub_225F3E358;
    v25[5] = v24;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v27))
    {
      v15 = sub_22609A188();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v16 = sub_225EF5468(1, v14, v14);
      v17 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v56 = v15;
      v57 = v16;
      v58 = v17;
      sub_225EF54BC(2, &v56);
      sub_225EF54BC(1, &v56);
      v59 = sub_225EF7434;
      v60 = v22;
      sub_225EF73E8(&v59, &v56, &v57, &v58);
      v59 = sub_225EF7434;
      v60 = v23;
      sub_225EF73E8(&v59, &v56, &v57, &v58);
      v59 = sub_225F3E358;
      v60 = v24;
      sub_225EF73E8(&v59, &v56, &v57, &v58);
      _os_log_impl(&dword_225EEB000, oslog, v27, "%@ Discarding unused preheated analyzer", v15, 0xCu);
      sub_225EF7AF4(v16, 1, v14);
      sub_225EF7AF4(v17, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v9 = v39[14];
    v10 = v39[12];
    v11 = v39[11];
    MEMORY[0x277D82BD8](oslog);
    v31(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
    sub_226099E38();
    v12 = (v11 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    *v12 = 0;

    swift_endAccess();
    v13 = *sub_225F827A0();

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
    sub_225F8798C(sub_225FA0578, 0, v13, v7, MEMORY[0x277D84F78] + 8);
  }

  sub_225F9FCC0(v39[11]);

  v8 = *(v39[8] + 8);

  v8();
}

uint64_t sub_225F9FCC0(uint64_t a1)
{
  v42 = a1;
  v43 = sub_225F3E198;
  v45 = sub_225F3E1C8;
  v49 = sub_22601D2B4;
  v52 = sub_225F2D374;
  v54 = sub_225EF7434;
  v56 = sub_225EF7434;
  v58 = sub_225F3E358;
  v60 = sub_225EF7434;
  v62 = sub_225EF7434;
  v65 = sub_225EF71D0;
  v76 = 0;
  v36 = 0;
  v41 = sub_226098C58();
  v39 = *(v41 - 8);
  v40 = v41 - 8;
  v37 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v1 = v26 - v37;
  v38 = v26 - v37;
  v76 = v2;
  v3 = sub_225F7E9BC();
  (*(v39 + 16))(v1, v3, v41);
  MEMORY[0x277D82BE0](v42);
  v51 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v69 = sub_226098C48();
  v70 = sub_22609A0A8();
  v47 = 17;
  v55 = swift_allocObject();
  *(v55 + 16) = 64;
  v57 = swift_allocObject();
  v48 = 8;
  *(v57 + 16) = 8;
  v50 = 32;
  v4 = swift_allocObject();
  v5 = v44;
  v46 = v4;
  *(v4 + 16) = v43;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v46;
  v59 = v6;
  *(v6 + 16) = v45;
  *(v6 + 24) = v7;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v48;
  v8 = swift_allocObject();
  v53 = v8;
  *(v8 + 16) = v49;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v53;
  v66 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v64 = sub_22609A4F8();
  v67 = v11;

  v12 = v55;
  v13 = v67;
  *v67 = v54;
  v13[1] = v12;

  v14 = v57;
  v15 = v67;
  v67[2] = v56;
  v15[3] = v14;

  v16 = v59;
  v17 = v67;
  v67[4] = v58;
  v17[5] = v16;

  v18 = v61;
  v19 = v67;
  v67[6] = v60;
  v19[7] = v18;

  v20 = v63;
  v21 = v67;
  v67[8] = v62;
  v21[9] = v20;

  v22 = v66;
  v23 = v67;
  v67[10] = v65;
  v23[11] = v22;
  sub_225EF5418();

  if (os_log_type_enabled(v69, v70))
  {
    v24 = v36;
    v28 = sub_22609A188();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(1, v27, v27);
    v30 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = &v75;
    v75 = v28;
    v33 = &v74;
    v74 = v29;
    v34 = &v73;
    v73 = v30;
    v31 = 2;
    sub_225EF54BC(2, &v75);
    sub_225EF54BC(v31, v32);
    v71 = v54;
    v72 = v55;
    sub_225EF73E8(&v71, v32, v33, v34);
    v35 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v71 = v56;
      v72 = v57;
      sub_225EF73E8(&v71, &v75, &v74, &v73);
      v26[4] = 0;
      v71 = v58;
      v72 = v59;
      sub_225EF73E8(&v71, &v75, &v74, &v73);
      v26[3] = 0;
      v71 = v60;
      v72 = v61;
      sub_225EF73E8(&v71, &v75, &v74, &v73);
      v26[2] = 0;
      v71 = v62;
      v72 = v63;
      sub_225EF73E8(&v71, &v75, &v74, &v73);
      v26[1] = 0;
      v71 = v65;
      v72 = v66;
      sub_225EF73E8(&v71, &v75, &v74, &v73);
      _os_log_impl(&dword_225EEB000, v69, v70, "%@ cancelPreheatingTask:%ld queue task complete", v28, 0x16u);
      sub_225EF7AF4(v29, 1, v27);
      sub_225EF7AF4(v30, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v69);
  return (*(v39 + 8))(v38, v41);
}

uint64_t sub_225FA0578(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x277D82BD8](v2);
}

uint64_t CoreEmbeddedSpeechAnalyzer.startSpeechRecognition(with:didStartHandlerWithInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v80 = a2;
  v79 = a3;
  v87 = v3;
  v66 = 0;
  v88 = sub_225F3E198;
  v90 = sub_225F3E1C8;
  v92 = sub_225FA1508;
  v93 = sub_225EF7B84;
  v97 = sub_225FA1538;
  v100 = sub_225F2D374;
  v102 = sub_225EF7434;
  v104 = sub_225EF7434;
  v106 = sub_225F3E358;
  v108 = sub_225EF7434;
  v110 = sub_225EF7434;
  v112 = sub_225EF7B90;
  v114 = sub_225EF7434;
  v116 = sub_225EF7434;
  v119 = sub_225EF71D0;
  v65 = &unk_2260A0978;
  ObjectType = swift_getObjectType();
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v68 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v73 = &v47 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v78 = &v47 - v77;
  v86 = sub_226098C58();
  v84 = *(v86 - 8);
  v85 = v86 - 8;
  v82 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v4 = &v47 - v82;
  v83 = &v47 - v82;
  v133 = v5;
  v131 = v6;
  v132 = v7;
  v130 = v8;
  v9 = sub_225F7E9BC();
  (*(v84 + 16))(v4, v9, v86);
  MEMORY[0x277D82BE0](v87);
  v99 = 7;
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  v123 = sub_226098C48();
  v124 = sub_22609A0A8();
  v95 = 17;
  v103 = swift_allocObject();
  *(v103 + 16) = 64;
  v105 = swift_allocObject();
  v96 = 8;
  *(v105 + 16) = 8;
  v98 = 32;
  v10 = swift_allocObject();
  v11 = v89;
  v91 = v10;
  *(v10 + 16) = v88;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v91;
  v107 = v12;
  *(v12 + 16) = v90;
  *(v12 + 24) = v13;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v111 = swift_allocObject();
  *(v111 + 16) = v96;
  v14 = swift_allocObject();
  v94 = v14;
  *(v14 + 16) = v92;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v94;
  v113 = v15;
  *(v15 + 16) = v93;
  *(v15 + 24) = v16;
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  v117 = swift_allocObject();
  *(v117 + 16) = v96;
  v17 = swift_allocObject();
  v101 = v17;
  *(v17 + 16) = v97;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  v19 = v101;
  v120 = v18;
  *(v18 + 16) = v100;
  *(v18 + 24) = v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v118 = sub_22609A4F8();
  v121 = v20;

  v21 = v103;
  v22 = v121;
  *v121 = v102;
  v22[1] = v21;

  v23 = v105;
  v24 = v121;
  v121[2] = v104;
  v24[3] = v23;

  v25 = v107;
  v26 = v121;
  v121[4] = v106;
  v26[5] = v25;

  v27 = v109;
  v28 = v121;
  v121[6] = v108;
  v28[7] = v27;

  v29 = v111;
  v30 = v121;
  v121[8] = v110;
  v30[9] = v29;

  v31 = v113;
  v32 = v121;
  v121[10] = v112;
  v32[11] = v31;

  v33 = v115;
  v34 = v121;
  v121[12] = v114;
  v34[13] = v33;

  v35 = v117;
  v36 = v121;
  v121[14] = v116;
  v36[15] = v35;

  v37 = v120;
  v38 = v121;
  v121[16] = v119;
  v38[17] = v37;
  sub_225EF5418();

  if (os_log_type_enabled(v123, v124))
  {
    v39 = v68;
    v58 = sub_22609A188();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v57 = 1;
    v59 = sub_225EF5468(1, v56, v56);
    v60 = sub_225EF5468(v57, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v61 = v129;
    v129[0] = v58;
    v62 = &v128;
    v128 = v59;
    v63 = &v127;
    v127 = v60;
    sub_225EF54BC(2, v129);
    sub_225EF54BC(3, v61);
    v125 = v102;
    v126 = v103;
    sub_225EF73E8(&v125, v61, v62, v63);
    v64 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v125 = v104;
      v126 = v105;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v55 = 0;
      v125 = v106;
      v126 = v107;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v54 = 0;
      v125 = v108;
      v126 = v109;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v53 = 0;
      v125 = v110;
      v126 = v111;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v52 = 0;
      v125 = v112;
      v126 = v113;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v51 = 0;
      v125 = v114;
      v126 = v115;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v50 = 0;
      v125 = v116;
      v126 = v117;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      v49 = 0;
      v125 = v119;
      v126 = v120;
      sub_225EF73E8(&v125, v129, &v128, &v127);
      _os_log_impl(&dword_225EEB000, v123, v124, "%@ %s:%ld queue task enqueued", v58, 0x20u);
      v48 = 1;
      sub_225EF7AF4(v59, 1, v56);
      sub_225EF7AF4(v60, v48, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v123);
  (*(v84 + 8))(v83, v86);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v87);
  MEMORY[0x277D82BE0](v87);
  MEMORY[0x277D82BE0](v81);

  v40 = swift_allocObject();
  v41 = v81;
  v42 = v80;
  v43 = v79;
  v44 = ObjectType;
  v45 = v65;
  *(v40 + 16) = v87;
  *(v40 + 24) = v41;
  *(v40 + 32) = v42;
  *(v40 + 40) = v43;
  *(v40 + 48) = v44;
  v129[1] = v45;
  v129[2] = v40;
  sub_226099DD8();
  MEMORY[0x277D82BD8](v87);
  (*(v70 + 8))(v73, v69);
  return (*(v75 + 8))(v78, v74);
}

uint64_t sub_225FA1544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 2504) = a6;
  *(v6 + 2496) = a5;
  *(v6 + 2488) = a4;
  *(v6 + 2480) = a3;
  *(v6 + 2472) = a2;
  *(v6 + 1936) = v6;
  *(v6 + 1944) = 0;
  *(v6 + 1952) = 0;
  *(v6 + 1632) = 0;
  *(v6 + 1640) = 0;
  *(v6 + 3632) = 0;
  *(v6 + 1960) = 0;
  *(v6 + 1664) = 0;
  *(v6 + 1672) = 0;
  *(v6 + 1968) = 0;
  *(v6 + 1992) = 0;
  *(v6 + 2000) = 0;
  *(v6 + 1744) = 0;
  *(v6 + 1752) = 0;
  *(v6 + 3640) = 0;
  *(v6 + 1760) = 0;
  *(v6 + 1768) = 0;
  *(v6 + 2016) = 0;
  *(v6 + 1776) = 0;
  *(v6 + 1784) = 0;
  *(v6 + 2024) = 0;
  *(v6 + 2040) = 0;
  *(v6 + 1920) = 0;
  *(v6 + 1928) = 0;
  *(v6 + 2048) = 0;
  *(v6 + 2056) = 0;
  *(v6 + 2064) = 0;
  *(v6 + 2072) = 0;
  *(v6 + 2080) = 0;
  *(v6 + 2088) = 0;
  *(v6 + 2160) = 0;
  *(v6 + 2168) = 0;
  *(v6 + 2208) = 0;
  *(v6 + 1856) = 0;
  *(v6 + 1864) = 0;
  *(v6 + 2312) = 0;
  *(v6 + 1888) = 0;
  *(v6 + 1896) = 0;
  *(v6 + 1904) = 0;
  *(v6 + 1912) = 0;
  *(v6 + 2384) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10);
  *(v6 + 2512) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  *(v6 + 2520) = v7;
  *(v6 + 2528) = *(v7 - 8);
  *(v6 + 2536) = swift_task_alloc();
  v8 = sub_226099DA8();
  *(v6 + 2544) = v8;
  *(v6 + 2552) = *(v8 - 8);
  *(v6 + 2560) = swift_task_alloc();
  sub_226099398();
  *(v6 + 2568) = swift_task_alloc();
  v9 = sub_226099388();
  *(v6 + 2576) = v9;
  *(v6 + 2584) = *(v9 - 8);
  *(v6 + 2592) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  *(v6 + 2600) = swift_task_alloc();
  v10 = sub_2260997E8();
  *(v6 + 2608) = v10;
  v15 = *(v10 - 8);
  *(v6 + 2616) = v15;
  *(v6 + 2624) = *(v15 + 64);
  *(v6 + 2632) = swift_task_alloc();
  *(v6 + 2640) = swift_task_alloc();
  *(v6 + 2648) = swift_task_alloc();
  v11 = sub_226099808();
  *(v6 + 2656) = v11;
  *(v6 + 2664) = *(v11 - 8);
  *(v6 + 2672) = swift_task_alloc();
  *(v6 + 2680) = swift_task_alloc();
  v12 = sub_226098DD8();
  *(v6 + 2688) = v12;
  *(v6 + 2696) = *(v12 - 8);
  *(v6 + 2704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8);
  *(v6 + 2712) = swift_task_alloc();
  *(v6 + 2720) = swift_task_alloc();
  v13 = sub_226098C58();
  *(v6 + 2728) = v13;
  *(v6 + 2736) = *(v13 - 8);
  *(v6 + 2744) = swift_task_alloc();
  *(v6 + 2752) = swift_task_alloc();
  *(v6 + 2760) = swift_task_alloc();
  *(v6 + 2768) = swift_task_alloc();
  *(v6 + 2776) = swift_task_alloc();
  *(v6 + 2784) = swift_task_alloc();
  *(v6 + 2792) = swift_task_alloc();
  *(v6 + 2800) = swift_task_alloc();
  *(v6 + 2808) = swift_task_alloc();
  *(v6 + 2816) = swift_task_alloc();
  *(v6 + 2824) = swift_task_alloc();
  *(v6 + 2832) = swift_task_alloc();
  *(v6 + 2840) = swift_task_alloc();
  *(v6 + 2848) = swift_task_alloc();
  *(v6 + 2856) = swift_task_alloc();
  *(v6 + 1944) = a2;
  *(v6 + 1952) = a3;
  *(v6 + 1632) = a4;
  *(v6 + 1640) = a5;

  return MEMORY[0x2822009F8](sub_225FA1C20, 0, 0);
}

uint64_t sub_225FA1C20()
{
  v255 = v0;
  v1 = v0[357];
  v216 = v0[342];
  v217 = v0[341];
  v219 = v0[309];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v218 = *(v216 + 16);
  v0[358] = v218;
  v0[359] = (v216 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v218(v1, v2, v217);
  MEMORY[0x277D82BE0](v219);
  v220 = swift_allocObject();
  *(v220 + 16) = v219;
  oslog = sub_226098C48();
  v235 = sub_22609A0A8();
  v224 = swift_allocObject();
  *(v224 + 16) = 64;
  v225 = swift_allocObject();
  *(v225 + 16) = 8;
  v221 = swift_allocObject();
  *(v221 + 16) = sub_225F3E198;
  *(v221 + 24) = v220;
  v226 = swift_allocObject();
  *(v226 + 16) = sub_225F3E1C8;
  *(v226 + 24) = v221;
  v227 = swift_allocObject();
  *(v227 + 16) = 32;
  v228 = swift_allocObject();
  *(v228 + 16) = 8;
  v222 = swift_allocObject();
  *(v222 + 16) = sub_225FA1508;
  *(v222 + 24) = 0;
  v229 = swift_allocObject();
  *(v229 + 16) = sub_225EF7B84;
  *(v229 + 24) = v222;
  v230 = swift_allocObject();
  *(v230 + 16) = 0;
  v231 = swift_allocObject();
  *(v231 + 16) = 8;
  v223 = swift_allocObject();
  *(v223 + 16) = sub_225FBD0F4;
  *(v223 + 24) = 0;
  v232 = swift_allocObject();
  *(v232 + 16) = sub_225F2D374;
  *(v232 + 24) = v223;
  v0[360] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v233 = v3;

  *v233 = sub_225EF7434;
  v233[1] = v224;

  v233[2] = sub_225EF7434;
  v233[3] = v225;

  v233[4] = sub_225F3E358;
  v233[5] = v226;

  v233[6] = sub_225EF7434;
  v233[7] = v227;

  v233[8] = sub_225EF7434;
  v233[9] = v228;

  v233[10] = sub_225EF7B90;
  v233[11] = v229;

  v233[12] = sub_225EF7434;
  v233[13] = v230;

  v233[14] = sub_225EF7434;
  v233[15] = v231;

  v233[16] = sub_225EF71D0;
  v233[17] = v232;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v235))
  {
    buf = sub_22609A188();
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v213 = sub_225EF5468(1, v211, v211);
    v214 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v250 = buf;
    v251 = v213;
    v252 = v214;
    sub_225EF54BC(2, &v250);
    sub_225EF54BC(3, &v250);
    v253 = sub_225EF7434;
    v254 = v224;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7434;
    v254 = v225;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225F3E358;
    v254 = v226;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7434;
    v254 = v227;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7434;
    v254 = v228;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7B90;
    v254 = v229;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7434;
    v254 = v230;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF7434;
    v254 = v231;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    v253 = sub_225EF71D0;
    v254 = v232;
    sub_225EF73E8(&v253, &v250, &v251, &v252);
    _os_log_impl(&dword_225EEB000, oslog, v235, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v213, 1, v211);
    sub_225EF7AF4(v214, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v192 = *(v215 + 2856);
  v4 = *(v215 + 2848);
  v194 = *(v215 + 2728);
  v196 = *(v215 + 2480);
  v195 = *(v215 + 2472);
  v191 = *(v215 + 2736);
  MEMORY[0x277D82BD8](oslog);
  v193 = *(v191 + 8);
  *(v215 + 2888) = v193;
  *(v215 + 2896) = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v193(v192, v194);
  v5 = sub_225F7E9BC();
  v218(v4, v5, v194);
  MEMORY[0x277D82BE0](v195);
  v197 = swift_allocObject();
  *(v197 + 16) = v195;
  MEMORY[0x277D82BE0](v196);
  v199 = swift_allocObject();
  *(v199 + 16) = v196;
  log = sub_226098C48();
  v209 = sub_22609A0A8();
  v201 = swift_allocObject();
  *(v201 + 16) = 64;
  v202 = swift_allocObject();
  *(v202 + 16) = 8;
  v198 = swift_allocObject();
  *(v198 + 16) = sub_225F3E198;
  *(v198 + 24) = v197;
  v203 = swift_allocObject();
  *(v203 + 16) = sub_225F3E1C8;
  *(v203 + 24) = v198;
  v204 = swift_allocObject();
  *(v204 + 16) = 32;
  v205 = swift_allocObject();
  *(v205 + 16) = 8;
  v200 = swift_allocObject();
  *(v200 + 16) = sub_226024C88;
  *(v200 + 24) = v199;
  v206 = swift_allocObject();
  *(v206 + 16) = sub_225EF7B84;
  *(v206 + 24) = v200;
  sub_22609A4F8();
  v207 = v6;

  *v207 = sub_225EF7434;
  v207[1] = v201;

  v207[2] = sub_225EF7434;
  v207[3] = v202;

  v207[4] = sub_225F3E358;
  v207[5] = v203;

  v207[6] = sub_225EF7434;
  v207[7] = v204;

  v207[8] = sub_225EF7434;
  v207[9] = v205;

  v207[10] = sub_225EF7B90;
  v207[11] = v206;
  sub_225EF5418();

  if (os_log_type_enabled(log, v209))
  {
    v188 = sub_22609A188();
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v189 = sub_225EF5468(1, v187, v187);
    v190 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v245 = v188;
    v246 = v189;
    v247 = v190;
    sub_225EF54BC(2, &v245);
    sub_225EF54BC(2, &v245);
    v248 = sub_225EF7434;
    v249 = v201;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    v248 = sub_225EF7434;
    v249 = v202;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    v248 = sub_225F3E358;
    v249 = v203;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    v248 = sub_225EF7434;
    v249 = v204;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    v248 = sub_225EF7434;
    v249 = v205;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    v248 = sub_225EF7B90;
    v249 = v206;
    sub_225EF73E8(&v248, &v245, &v246, &v247);
    _os_log_impl(&dword_225EEB000, log, v209, "%@ Starting recognition for %s", v188, 0x16u);
    sub_225EF7AF4(v189, 1, v187);
    sub_225EF7AF4(v190, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v181 = *(v215 + 2848);
  v182 = *(v215 + 2728);
  v183 = *(v215 + 2472);
  MEMORY[0x277D82BD8](log);
  v193(v181, v182);
  v185 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v183);
  v184 = swift_task_alloc();
  *(v184 + 16) = v183;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  *(v215 + 2904) = v186;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D60, &qword_2260A0F38);
  sub_225F8798C(sub_226024C90, v184, v185, v186, v7);
  v179 = *(v215 + 2472);

  MEMORY[0x277D82BD8](v179);

  v8 = *(v215 + 1648);
  v180 = *(v215 + 1656);
  *(v215 + 2912) = v180;
  *(v215 + 3632) = v8 & 1;
  *(v215 + 1960) = v180;
  if (v8)
  {
    v171 = *(v215 + 2472);
    [*(v215 + 2480) recognitionStart];
    v173 = v16 * *sub_225F7F6FC();
    v172 = (v171 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    *v172 = v173;
    swift_endAccess();
    MEMORY[0x277D82BE0](v180);
    if (v180)
    {
      v17 = *(v215 + 2840);
      v167 = *(v215 + 2728);
      *(v215 + 2384) = v180;
      v18 = sub_225F7E9BC();
      v218(v17, v18, v167);
      v169 = sub_226098C48();
      v168 = sub_22609A078();
      v170 = sub_22609A4F8();
      if (os_log_type_enabled(v169, v168))
      {
        v155 = sub_22609A188();
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v156 = sub_225EF5468(0, v154, v154);
        v157 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v215 + 2424) = v155;
        *(v215 + 2432) = v156;
        *(v215 + 2440) = v157;
        sub_225EF54BC(0, (v215 + 2424));
        sub_225EF54BC(0, (v215 + 2424));
        *(v215 + 2448) = v170;
        v158 = swift_task_alloc();
        v158[2] = v215 + 2424;
        v158[3] = v215 + 2432;
        v158[4] = v215 + 2440;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v169, v168, "Cancelling existing recognition", v155, 2u);
        sub_225EF7AF4(v156, 0, v154);
        sub_225EF7AF4(v157, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      *(v215 + 2920) = 0;
      v150 = *(v215 + 2840);
      v151 = *(v215 + 2728);
      MEMORY[0x277D82BD8](v169);
      v193(v150, v151);
      v20 = sub_225F7F580();
      v152 = *v20;
      v153 = v20[1];
      v21 = swift_task_alloc();
      *(v215 + 2928) = v21;
      *v21 = *(v215 + 1936);
      v21[1] = sub_225FA63CC;

      return sub_225FBE028(v180, v152, v153);
    }

    else
    {
      v163 = *(v215 + 2480);
      v159 = sub_226098A78();
      *(v215 + 2936) = v159;
      v19 = *(v159 - 8);
      v160 = v19;
      *(v215 + 2944) = v19;
      v161 = v19;
      *(v215 + 2952) = *(v19 + 64);
      v162 = swift_task_alloc();
      *(v215 + 2960) = v162;
      v164 = swift_task_alloc();
      v165 = [v163 asrId];
      *(v215 + 2968) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v166 = swift_task_alloc();
      if (v165)
      {
        v149 = swift_task_alloc();
        sub_226098A48();
        (*(v160 + 32))(v166, v149, v159);
        (*(v160 + 56))(v166, 0, 1, v159);

        MEMORY[0x277D82BD8](v165);
      }

      else
      {
        (*(v160 + 56))(v166, 1, 1, v159);
      }

      v148 = *(v160 + 48);
      *(v215 + 2976) = v148;
      *(v215 + 2984) = (v160 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v148(v166, 1, v159) == 1)
      {
        v144 = *(v215 + 2864);
        v23 = *(v215 + 2824);
        v143 = *(v215 + 2728);
        sub_225F7C078(v166);

        v24 = sub_225F7E9BC();
        v144(v23, v24, v143);
        v146 = sub_226098C48();
        v145 = sub_22609A078();
        v147 = sub_22609A4F8();
        if (os_log_type_enabled(v146, v145))
        {
          v137 = sub_22609A188();
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v138 = sub_225EF5468(0, v136, v136);
          v139 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v215 + 2352) = v137;
          *(v215 + 2360) = v138;
          *(v215 + 2368) = v139;
          sub_225EF54BC(0, (v215 + 2352));
          sub_225EF54BC(0, (v215 + 2352));
          *(v215 + 2376) = v147;
          v140 = swift_task_alloc();
          v140[2] = v215 + 2352;
          v140[3] = v215 + 2360;
          v140[4] = v215 + 2368;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();

          _os_log_impl(&dword_225EEB000, v146, v145, "SELF: asrId is nil, creating a new UUID for this request.", v137, 2u);
          sub_225EF7AF4(v138, 0, v136);
          sub_225EF7AF4(v139, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        v134 = *(v215 + 2888);
        v132 = *(v215 + 2824);
        v133 = *(v215 + 2728);
        MEMORY[0x277D82BD8](v146);
        v134(v132, v133);
        v135 = swift_task_alloc();
        sub_226098A68();
        (*(v160 + 32))(v162, v135, v159);
      }

      else
      {
        v141 = *(v160 + 32);
        v141(v164, v166, v159);

        v142 = swift_task_alloc();
        (*(v160 + 16))(v142, v164, v159);
        v141(v162, v142, v159);

        (*(v160 + 8))(v164, v159);
      }

      v131 = [*(v215 + 2480) dictationUIInteractionIdentifier];
      if (v131)
      {
        v127 = sub_226099A08();
        v128 = v25;
        MEMORY[0x277D82BD8](v131);
        v129 = v127;
        v130 = v128;
      }

      else
      {
        v129 = 0;
        v130 = 0;
      }

      *(v215 + 2992) = v130;
      *(v215 + 1664) = v129;
      *(v215 + 1672) = v130;
      sub_2260998E8();
      if (v130)
      {
        v126 = *(v215 + 2480);
        *(v215 + 1904) = v129;
        *(v215 + 1912) = v130;
        lock = sub_225F834E0();
        sub_2260998E8();
        MEMORY[0x277D82BE0](v126);
        os_unfair_lock_lock(lock);
        sub_225FBE488(&lock[2]._os_unfair_lock_opaque, v129, v130, v162, v126);
        v99 = *(v215 + 2864);
        v28 = *(v215 + 2808);
        v98 = *(v215 + 2728);
        v97 = *(v215 + 2480);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
        sub_225F1CB98(lock);

        MEMORY[0x277D82BD8](v97);
        v29 = sub_225F7E9BC();
        v99(v28, v29, v98);
        v101 = swift_task_alloc();
        (*(v160 + 16))(v101, v162, v159);
        v100 = (*(v161 + 80) + 16) & ~*(v161 + 80);
        v102 = swift_allocObject();
        (*(v160 + 32))(v102 + v100, v101, v159);

        v103 = swift_allocObject();
        *(v103 + 16) = sub_225F7CD90;
        *(v103 + 24) = v102;

        sub_2260998E8();
        v105 = swift_allocObject();
        *(v105 + 16) = v129;
        *(v105 + 24) = v130;
        v118 = sub_226098C48();
        v119 = sub_22609A088();
        v108 = swift_allocObject();
        *(v108 + 16) = 32;
        v109 = swift_allocObject();
        *(v109 + 16) = 8;
        v104 = swift_allocObject();
        *(v104 + 16) = sub_225F7CE04;
        *(v104 + 24) = v103;
        v110 = swift_allocObject();
        *(v110 + 16) = sub_225EF7B84;
        *(v110 + 24) = v104;
        v111 = swift_allocObject();
        *(v111 + 16) = 32;
        v112 = swift_allocObject();
        *(v112 + 16) = 8;
        v106 = swift_allocObject();
        *(v106 + 16) = sub_225EF7450;
        *(v106 + 24) = v105;
        v113 = swift_allocObject();
        *(v113 + 16) = sub_225EF7B84;
        *(v113 + 24) = v106;
        v114 = swift_allocObject();
        *(v114 + 16) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = 8;
        v107 = swift_allocObject();
        *(v107 + 16) = sub_225FBE834;
        *(v107 + 24) = 0;
        v116 = swift_allocObject();
        *(v116 + 16) = sub_225F2D374;
        *(v116 + 24) = v107;
        sub_22609A4F8();
        v117 = v30;

        *v117 = sub_225EF7434;
        v117[1] = v108;

        v117[2] = sub_225EF7434;
        v117[3] = v109;

        v117[4] = sub_225EF7B90;
        v117[5] = v110;

        v117[6] = sub_225EF7434;
        v117[7] = v111;

        v117[8] = sub_225EF7434;
        v117[9] = v112;

        v117[10] = sub_225EF7B90;
        v117[11] = v113;

        v117[12] = sub_225EF7434;
        v117[13] = v114;

        v117[14] = sub_225EF7434;
        v117[15] = v115;

        v117[16] = sub_225EF71D0;
        v117[17] = v116;
        sub_225EF5418();

        if (os_log_type_enabled(v118, v119))
        {
          v94 = sub_22609A188();
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v95 = sub_225EF5468(0, v93, v93);
          v96 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v240 = v94;
          v241 = v95;
          v242 = v96;
          sub_225EF54BC(2, &v240);
          sub_225EF54BC(3, &v240);
          v243 = sub_225EF7434;
          v244 = v108;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7434;
          v244 = v109;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7B90;
          v244 = v110;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7434;
          v244 = v111;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7434;
          v244 = v112;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7B90;
          v244 = v113;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7434;
          v244 = v114;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF7434;
          v244 = v115;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          v243 = sub_225EF71D0;
          v244 = v116;
          sub_225EF73E8(&v243, &v240, &v241, &v242);
          _os_log_impl(&dword_225EEB000, v118, v119, "Stored asrID %s for interactionID %s. Cache size: %ld", v94, 0x20u);
          sub_225EF7AF4(v95, 0, v93);
          sub_225EF7AF4(v96, 2, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v92 = *(v215 + 2888);
        v90 = *(v215 + 2808);
        v91 = *(v215 + 2728);
        MEMORY[0x277D82BD8](v118);
        v92(v90, v91);
      }

      else
      {
        v121 = *(v215 + 2864);
        v26 = *(v215 + 2816);
        v120 = *(v215 + 2728);
        v27 = sub_225F7E9BC();
        v121(v26, v27, v120);
        v123 = sub_226098C48();
        v122 = sub_22609A088();
        v124 = sub_22609A4F8();
        if (os_log_type_enabled(v123, v122))
        {
          v86 = sub_22609A188();
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v87 = sub_225EF5468(0, v85, v85);
          v88 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v215 + 2320) = v86;
          *(v215 + 2328) = v87;
          *(v215 + 2336) = v88;
          sub_225EF54BC(0, (v215 + 2320));
          sub_225EF54BC(0, (v215 + 2320));
          *(v215 + 2344) = v124;
          v89 = swift_task_alloc();
          v89[2] = v215 + 2320;
          v89[3] = v215 + 2328;
          v89[4] = v215 + 2336;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();

          _os_log_impl(&dword_225EEB000, v123, v122, "InteractionID is nil, not updating the cache.", v86, 2u);
          sub_225EF7AF4(v87, 0, v85);
          sub_225EF7AF4(v88, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        v84 = *(v215 + 2888);
        v82 = *(v215 + 2816);
        v83 = *(v215 + 2728);
        MEMORY[0x277D82BD8](v123);
        v84(v82, v83);
      }

      v79 = *(v215 + 2480);
      v80 = swift_task_alloc();
      *(v215 + 3000) = v80;
      v81 = [v79 requestIdentifier];
      if (v81)
      {
        v75 = sub_226099A08();
        v76 = v31;
        MEMORY[0x277D82BD8](v81);
        v77 = v75;
        v78 = v76;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      *(v215 + 1680) = v77;
      *(v215 + 1688) = v78;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
      sub_225FBE9D0(sub_225FBE98C, 0, v32, MEMORY[0x277D84A98], v159, v210, v80);
      sub_225EFE6BC(v215 + 1680);
      v73 = swift_task_alloc();
      v74 = swift_task_alloc();
      sub_225F7BF50(v80, v74);
      if (v148(v74, 1, v159) == 1)
      {
        v72 = *(v215 + 2720);
        v71 = *(v215 + 2712);
        sub_225F7C078(v74);

        v33 = sub_226098D98();
        (*(*(v33 - 8) + 56))(v71, 1);
        sub_226024CB8(v71, v72);
      }

      else
      {
        (*(v160 + 32))(v73, v74, v159);

        sub_2260998E8();
        *(v215 + 1872) = v129;
        *(v215 + 1880) = v130;
        if (*(v215 + 1880))
        {
          v238 = *(v215 + 1872);
          v239 = *(v215 + 1880);
        }

        else
        {
          v238 = sub_226099AA8();
          v239 = v34;
          if (*(v215 + 1880))
          {
            sub_225EFE6BC(v215 + 1872);
          }
        }

        v70 = *(v215 + 2720);
        v69 = *(v215 + 2712);
        *(v215 + 1888) = v238;
        *(v215 + 1896) = v239;
        v68 = swift_task_alloc();
        v66 = *(v160 + 16);
        v66(v68, v162, v159);
        v67 = swift_task_alloc();
        v66(v67, v73, v159);
        sub_226098D88();

        v35 = sub_226098D98();
        (*(*(v35 - 8) + 56))(v69, 0, 1);
        sub_226024CB8(v69, v70);
        (*(v160 + 8))(v73, v159);
      }

      v64 = *(v215 + 2480);
      sub_225F7F1AC();
      sub_2260998E8();
      v65 = [v64 task];
      if (v65)
      {
        v60 = sub_226099A08();
        v61 = v36;
        MEMORY[0x277D82BD8](v65);
        v62 = v60;
        v63 = v61;
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }

      *(v215 + 1696) = v62;
      *(v215 + 1704) = v63;
      if (*(v215 + 1704))
      {
        v236 = *(v215 + 1696);
        v237 = *(v215 + 1704);
      }

      else
      {
        v236 = sub_226099AA8();
        v237 = v37;
        if (*(v215 + 1704))
        {
          sub_225EFE6BC(v215 + 1696);
        }
      }

      v58 = *(v215 + 2480);
      sub_225FBECD4(v236, v237);

      v59 = [v58 applicationName];
      if (v59)
      {
        v54 = sub_226099A08();
        v55 = v38;
        MEMORY[0x277D82BD8](v59);
        v56 = v54;
        v57 = v55;
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      *(v215 + 1712) = v56;
      *(v215 + 1720) = v57;
      if (!*(v215 + 1720))
      {
        sub_226099AA8();
        if (*(v215 + 1720))
        {
          sub_225EFE6BC(v215 + 1712);
        }
      }

      v53 = [*(v215 + 2480) inputOrigin];
      if (v53)
      {
        v49 = sub_226099A08();
        v50 = v39;
        MEMORY[0x277D82BD8](v53);
        v51 = v49;
        v52 = v50;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      *(v215 + 1728) = v51;
      *(v215 + 1736) = v52;
      if (!*(v215 + 1736))
      {
        sub_226099AA8();
        if (*(v215 + 1736))
        {
          sub_225EFE6BC(v215 + 1728);
        }
      }

      v46 = *(v215 + 2680);
      v47 = *(v215 + 2480);
      sub_226024DE0(*(v215 + 2720), *(v215 + 2712));
      sub_226098DA8();
      sub_225FBEFBC(v47, v46);
      v48 = swift_task_alloc();
      *(v215 + 3008) = v48;
      v40 = *(v160 + 16);
      *(v215 + 3016) = v40;
      *(v215 + 3024) = (v160 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v40(v48);
      v41 = swift_task_alloc();
      *(v215 + 3032) = v41;
      *v41 = *(v215 + 1936);
      v41[1] = sub_225FA9044;
      v42 = *(v215 + 2480);

      return sub_225FBF164(v42, v48);
    }
  }

  else
  {
    type metadata accessor for AFError(0);
    *(v215 + 2464) = 1100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    sub_22609A4F8();
    v174 = v9;
    v175 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v174 = sub_226099A08();
    v174[1] = v10;
    v11 = sub_226099AA8();
    v174[5] = MEMORY[0x277D837D0];
    v174[2] = v11;
    v174[3] = v12;
    sub_225EF5418();
    MEMORY[0x277D82BD8](v175);
    sub_2260998A8();
    sub_225F1A478();
    sub_2260988C8();
    v176 = *(v215 + 2456);
    MEMORY[0x277D82BE0](v176);
    swift_willThrow();
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v180);
    v13 = v176;
    *(v215 + 1968) = v176;
    v14 = v176;
    v177 = sub_225FCEF44(v176);

    *(v215 + 1984) = v177;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
    v15 = sub_226024FB0();
    sub_225F25E38(sub_225FCF714, 0, v178, MEMORY[0x277D84A98], v15, v210, v215 + 1976);
    sub_226022DA8((v215 + 1984));
    v45 = *(v215 + 1976);
    *(v215 + 1992) = v45;

    MEMORY[0x277D82BE0](v45);
    if (v45)
    {
      v44 = v45;
    }

    else
    {
      v44 = 0;
    }

    (*(v215 + 2488))();

    MEMORY[0x277D82BD8](v45);

    sub_225FBD100(*(v215 + 2472));
    sub_2260215F0(0);

    v43 = *(*(v215 + 1936) + 8);

    return v43();
  }
}

uint64_t sub_225FA63CC()
{
  *(*v0 + 1936) = *v0;

  return MEMORY[0x2822009F8](sub_225FA64EC, 0, 0);
}

uint64_t sub_225FA64EC()
{
  v169 = v0;
  v156 = v0[358];
  v1 = v0[354];
  v155 = v0[341];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v156(v1, v2, v155);
  oslog = sub_226098C48();
  v157 = sub_22609A078();
  v159 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v157))
  {
    v3 = *(v154 + 2920);
    buf = sub_22609A188();
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v151 = sub_225EF5468(0, v149, v149);
    v152 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v154 + 2392) = buf;
    *(v154 + 2400) = v151;
    *(v154 + 2408) = v152;
    sub_225EF54BC(0, (v154 + 2392));
    sub_225EF54BC(0, (v154 + 2392));
    *(v154 + 2416) = v159;
    v153 = swift_task_alloc();
    v153[2] = v154 + 2392;
    v153[3] = v154 + 2400;
    v153[4] = v154 + 2408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v3)
    {
    }

    _os_log_impl(&dword_225EEB000, oslog, v157, "Cancelled existing recognition", buf, 2u);
    sub_225EF7AF4(v151, 0, v149);
    sub_225EF7AF4(v152, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v148 = 0;
  }

  else
  {

    v148 = *(v154 + 2920);
  }

  v138 = *(v154 + 2888);
  v136 = *(v154 + 2832);
  v137 = *(v154 + 2728);
  v139 = *(v154 + 2912);
  MEMORY[0x277D82BD8](oslog);
  v138(v136, v137);
  MEMORY[0x277D82BD8](v139);
  v144 = *(v154 + 2480);
  v140 = sub_226098A78();
  *(v154 + 2936) = v140;
  v4 = *(v140 - 8);
  v141 = v4;
  *(v154 + 2944) = v4;
  v142 = v4;
  *(v154 + 2952) = *(v4 + 64);
  v143 = swift_task_alloc();
  *(v154 + 2960) = v143;
  v145 = swift_task_alloc();
  v146 = [v144 asrId];
  *(v154 + 2968) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v147 = swift_task_alloc();
  if (v146)
  {
    v135 = swift_task_alloc();
    sub_226098A48();
    (*(v141 + 32))(v147, v135, v140);
    (*(v141 + 56))(v147, 0, 1, v140);

    MEMORY[0x277D82BD8](v146);
  }

  else
  {
    (*(v141 + 56))(v147, 1, 1, v140);
  }

  v134 = *(v141 + 48);
  *(v154 + 2976) = v134;
  *(v154 + 2984) = (v141 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v134(v147, 1, v140) == 1)
  {
    v130 = *(v154 + 2864);
    v5 = *(v154 + 2824);
    v129 = *(v154 + 2728);
    sub_225F7C078(v147);

    v6 = sub_225F7E9BC();
    v130(v5, v6, v129);
    log = sub_226098C48();
    v131 = sub_22609A078();
    v133 = sub_22609A4F8();
    if (os_log_type_enabled(log, v131))
    {
      v122 = sub_22609A188();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v123 = sub_225EF5468(0, v121, v121);
      v124 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v154 + 2352) = v122;
      *(v154 + 2360) = v123;
      *(v154 + 2368) = v124;
      sub_225EF54BC(0, (v154 + 2352));
      sub_225EF54BC(0, (v154 + 2352));
      *(v154 + 2376) = v133;
      v125 = swift_task_alloc();
      v125[2] = v154 + 2352;
      v125[3] = v154 + 2360;
      v125[4] = v154 + 2368;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      if (v148)
      {
      }

      _os_log_impl(&dword_225EEB000, log, v131, "SELF: asrId is nil, creating a new UUID for this request.", v122, 2u);
      sub_225EF7AF4(v123, 0, v121);
      sub_225EF7AF4(v124, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v120 = 0;
    }

    else
    {

      v120 = v148;
    }

    v118 = *(v154 + 2888);
    v116 = *(v154 + 2824);
    v117 = *(v154 + 2728);
    MEMORY[0x277D82BD8](log);
    v118(v116, v117);
    v119 = swift_task_alloc();
    sub_226098A68();
    (*(v141 + 32))(v143, v119, v140);

    v128 = v120;
  }

  else
  {
    v126 = *(v141 + 32);
    v126(v145, v147, v140);

    v127 = swift_task_alloc();
    (*(v141 + 16))(v127, v145, v140);
    v126(v143, v127, v140);

    (*(v141 + 8))(v145, v140);

    v128 = v148;
  }

  v115 = [*(v154 + 2480) dictationUIInteractionIdentifier];
  if (v115)
  {
    v111 = sub_226099A08();
    v112 = v7;
    MEMORY[0x277D82BD8](v115);
    v113 = v111;
    v114 = v112;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  *(v154 + 2992) = v114;
  *(v154 + 1664) = v113;
  *(v154 + 1672) = v114;
  sub_2260998E8();
  if (v114)
  {
    v109 = *(v154 + 2480);
    *(v154 + 1904) = v113;
    *(v154 + 1912) = v114;
    lock = sub_225F834E0();
    sub_2260998E8();
    MEMORY[0x277D82BE0](v109);
    os_unfair_lock_lock(lock);
    sub_225FBE488(&lock[2]._os_unfair_lock_opaque, v113, v114, v143, v109);
    if (v128)
    {
      v102 = *(v154 + 2480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
      sub_225F1CB98(lock);

      return MEMORY[0x277D82BD8](v102);
    }

    v81 = *(v154 + 2864);
    v11 = *(v154 + 2808);
    v80 = *(v154 + 2728);
    v79 = *(v154 + 2480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(lock);

    MEMORY[0x277D82BD8](v79);
    v12 = sub_225F7E9BC();
    v81(v11, v12, v80);
    v83 = swift_task_alloc();
    (*(v141 + 16))(v83, v143, v140);
    v82 = (*(v142 + 80) + 16) & ~*(v142 + 80);
    v84 = swift_allocObject();
    (*(v141 + 32))(v84 + v82, v83, v140);

    v85 = swift_allocObject();
    *(v85 + 16) = sub_225F7CD90;
    *(v85 + 24) = v84;

    sub_2260998E8();
    v87 = swift_allocObject();
    *(v87 + 16) = v113;
    *(v87 + 24) = v114;
    v100 = sub_226098C48();
    v101 = sub_22609A088();
    v90 = swift_allocObject();
    *(v90 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_225F7CE04;
    *(v86 + 24) = v85;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_225EF7B84;
    *(v92 + 24) = v86;
    v93 = swift_allocObject();
    *(v93 + 16) = 32;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_225EF7450;
    *(v88 + 24) = v87;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_225EF7B84;
    *(v95 + 24) = v88;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_225FBE834;
    *(v89 + 24) = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_225F2D374;
    *(v98 + 24) = v89;
    sub_22609A4F8();
    v99 = v13;

    *v99 = sub_225EF7434;
    v99[1] = v90;

    v99[2] = sub_225EF7434;
    v99[3] = v91;

    v99[4] = sub_225EF7B90;
    v99[5] = v92;

    v99[6] = sub_225EF7434;
    v99[7] = v93;

    v99[8] = sub_225EF7434;
    v99[9] = v94;

    v99[10] = sub_225EF7B90;
    v99[11] = v95;

    v99[12] = sub_225EF7434;
    v99[13] = v96;

    v99[14] = sub_225EF7434;
    v99[15] = v97;

    v99[16] = sub_225EF71D0;
    v99[17] = v98;
    sub_225EF5418();

    if (os_log_type_enabled(v100, v101))
    {
      v76 = sub_22609A188();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v77 = sub_225EF5468(0, v75, v75);
      v78 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v164 = v76;
      v165 = v77;
      v166 = v78;
      sub_225EF54BC(2, &v164);
      sub_225EF54BC(3, &v164);
      v167 = sub_225EF7434;
      v168 = v90;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7434;
      v168 = v91;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7B90;
      v168 = v92;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7434;
      v168 = v93;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7434;
      v168 = v94;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7B90;
      v168 = v95;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7434;
      v168 = v96;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF7434;
      v168 = v97;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      v167 = sub_225EF71D0;
      v168 = v98;
      sub_225EF73E8(&v167, &v164, &v165, &v166);
      _os_log_impl(&dword_225EEB000, v100, v101, "Stored asrID %s for interactionID %s. Cache size: %ld", v76, 0x20u);
      sub_225EF7AF4(v77, 0, v75);
      sub_225EF7AF4(v78, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v73 = *(v154 + 2888);
    v71 = *(v154 + 2808);
    v72 = *(v154 + 2728);
    MEMORY[0x277D82BD8](v100);
    v73(v71, v72);

    v74 = 0;
    goto LABEL_34;
  }

  v104 = *(v154 + 2864);
  v8 = *(v154 + 2816);
  v103 = *(v154 + 2728);
  v9 = sub_225F7E9BC();
  v104(v8, v9, v103);
  v106 = sub_226098C48();
  v105 = sub_22609A088();
  v107 = sub_22609A4F8();
  if (os_log_type_enabled(v106, v105))
  {
    v67 = sub_22609A188();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v68 = sub_225EF5468(0, v66, v66);
    v69 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v154 + 2320) = v67;
    *(v154 + 2328) = v68;
    *(v154 + 2336) = v69;
    sub_225EF54BC(0, (v154 + 2320));
    sub_225EF54BC(0, (v154 + 2320));
    *(v154 + 2344) = v107;
    v70 = swift_task_alloc();
    v70[2] = v154 + 2320;
    v70[3] = v154 + 2328;
    v70[4] = v154 + 2336;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v128)
    {

      _os_log_impl(&dword_225EEB000, v106, v105, "InteractionID is nil, not updating the cache.", v67, 2u);
      sub_225EF7AF4(v68, 0, v66);
      sub_225EF7AF4(v69, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v65 = 0;
      goto LABEL_33;
    }
  }

  v65 = v128;
LABEL_33:
  v64 = *(v154 + 2888);
  v62 = *(v154 + 2816);
  v63 = *(v154 + 2728);
  MEMORY[0x277D82BD8](v106);
  v64(v62, v63);
  v74 = v65;
LABEL_34:
  v59 = *(v154 + 2480);
  v60 = swift_task_alloc();
  *(v154 + 3000) = v60;
  v61 = [v59 requestIdentifier];
  if (v61)
  {
    v55 = sub_226099A08();
    v56 = v14;
    MEMORY[0x277D82BD8](v61);
    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  *(v154 + 1680) = v57;
  *(v154 + 1688) = v58;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
  result = sub_225FBE9D0(sub_225FBE98C, 0, v15, MEMORY[0x277D84A98], v140, v110, v60);
  if (!v74)
  {
    sub_225EFE6BC(v154 + 1680);
    v53 = swift_task_alloc();
    v54 = swift_task_alloc();
    sub_225F7BF50(v60, v54);
    if (v134(v54, 1, v140) == 1)
    {
      v52 = *(v154 + 2720);
      v51 = *(v154 + 2712);
      sub_225F7C078(v54);

      v16 = sub_226098D98();
      (*(*(v16 - 8) + 56))(v51, 1);
      sub_226024CB8(v51, v52);
    }

    else
    {
      (*(v141 + 32))(v53, v54, v140);

      sub_2260998E8();
      *(v154 + 1872) = v113;
      *(v154 + 1880) = v114;
      if (*(v154 + 1880))
      {
        v162 = *(v154 + 1872);
        v163 = *(v154 + 1880);
      }

      else
      {
        v162 = sub_226099AA8();
        v163 = v17;
        if (*(v154 + 1880))
        {
          sub_225EFE6BC(v154 + 1872);
        }
      }

      v50 = *(v154 + 2720);
      v49 = *(v154 + 2712);
      *(v154 + 1888) = v162;
      *(v154 + 1896) = v163;
      v48 = swift_task_alloc();
      v46 = *(v141 + 16);
      v46(v48, v143, v140);
      v47 = swift_task_alloc();
      v46(v47, v53, v140);
      sub_226098D88();

      v18 = sub_226098D98();
      (*(*(v18 - 8) + 56))(v49, 0, 1);
      sub_226024CB8(v49, v50);
      (*(v141 + 8))(v53, v140);
    }

    v44 = *(v154 + 2480);
    sub_225F7F1AC();
    sub_2260998E8();
    v45 = [v44 task];
    if (v45)
    {
      v40 = sub_226099A08();
      v41 = v19;
      MEMORY[0x277D82BD8](v45);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    *(v154 + 1696) = v42;
    *(v154 + 1704) = v43;
    if (*(v154 + 1704))
    {
      v160 = *(v154 + 1696);
      v161 = *(v154 + 1704);
    }

    else
    {
      v160 = sub_226099AA8();
      v161 = v20;
      if (*(v154 + 1704))
      {
        sub_225EFE6BC(v154 + 1696);
      }
    }

    v38 = *(v154 + 2480);
    sub_225FBECD4(v160, v161);

    v39 = [v38 applicationName];
    if (v39)
    {
      v34 = sub_226099A08();
      v35 = v21;
      MEMORY[0x277D82BD8](v39);
      v36 = v34;
      v37 = v35;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *(v154 + 1712) = v36;
    *(v154 + 1720) = v37;
    if (!*(v154 + 1720))
    {
      sub_226099AA8();
      if (*(v154 + 1720))
      {
        sub_225EFE6BC(v154 + 1712);
      }
    }

    v33 = [*(v154 + 2480) inputOrigin];
    if (v33)
    {
      v29 = sub_226099A08();
      v30 = v22;
      MEMORY[0x277D82BD8](v33);
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    *(v154 + 1728) = v31;
    *(v154 + 1736) = v32;
    if (!*(v154 + 1736))
    {
      sub_226099AA8();
      if (*(v154 + 1736))
      {
        sub_225EFE6BC(v154 + 1728);
      }
    }

    v26 = *(v154 + 2680);
    v27 = *(v154 + 2480);
    sub_226024DE0(*(v154 + 2720), *(v154 + 2712));
    sub_226098DA8();
    sub_225FBEFBC(v27, v26);
    v28 = swift_task_alloc();
    *(v154 + 3008) = v28;
    v23 = *(v141 + 16);
    *(v154 + 3016) = v23;
    *(v154 + 3024) = (v141 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v28);
    v24 = swift_task_alloc();
    *(v154 + 3032) = v24;
    *v24 = *(v154 + 1936);
    v24[1] = sub_225FA9044;
    v25 = *(v154 + 2480);

    return sub_225FBF164(v25, v28);
  }

  return result;
}

uint64_t sub_225FA9044()
{
  v6 = *v0;
  v5 = *(*v0 + 3008);
  v3 = *(*v0 + 2944);
  v4 = *(*v0 + 2936);
  v6[242] = *v0;

  v1 = *(v3 + 8);
  v6[380] = v1;
  v6[381] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v5, v4);

  return MEMORY[0x2822009F8](sub_225FA91E4, 0, 0);
}

uint64_t sub_225FA91E4()
{
  v19 = v0[310];
  v0[242] = v0;
  sub_225FC0284();
  v1 = sub_226098AB8();
  v0[382] = v1;
  v18 = *(v1 - 8);
  v0[383] = v18;
  v0[384] = *(v18 + 64);
  v20 = swift_task_alloc();
  v0[385] = v20;
  v21 = [v19 language];
  if (v21)
  {
    v13 = sub_226099A08();
    v14 = v2;
    MEMORY[0x277D82BD8](v21);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *(v17 + 3088) = v16;
  if (!v16)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 494, 0);
  }

  v11 = [*(v17 + 2480) modelOverrideURL];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  v12 = swift_task_alloc();
  *(v17 + 3096) = v12;
  if (v11)
  {
    v9 = sub_226098948();
    v8 = *(v9 - 8);
    v10 = swift_task_alloc();
    sub_226098908();
    (*(v8 + 32))(v12, v10, v9);
    (*(v8 + 56))(v12, 0, 1, v9);

    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v4 = sub_226098948();
    (*(*(v4 - 8) + 56))(v12, 1);
  }

  v5 = swift_task_alloc();
  *(v17 + 3104) = v5;
  *v5 = *(v17 + 1936);
  v5[1] = sub_225FA96C4;
  v6 = *(v17 + 2680);
  v7 = *(v17 + 2648);

  return sub_225F940CC(v20, v7, v15, v16, v6, v12);
}

uint64_t sub_225FA96C4(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[242] = *v2;
  v6[389] = a1;
  v6[390] = v1;

  if (v1)
  {
    v3 = sub_225FB716C;
  }

  else
  {
    sub_22601F334(*(v5 + 3080));

    v3 = sub_225FA9874;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_225FA9874()
{
  v203 = v0;
  v1 = v0[389];
  v2 = v0[309];
  v0[242] = v0;
  v0[250] = v1;
  v194 = [v2 delegate];
  if (v194)
  {
    v191 = *(v193 + 3112);
    v192 = *(v193 + 2472);
    swift_getObjectType();
    MEMORY[0x277D82BE0](v192);
    MEMORY[0x277D82BE0](v191);
    [v194 localSpeechRecognizer:v192 didSelectRecognitionModelWithModelProperties:v191];
    MEMORY[0x277D82BD8](v191);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v174 = *(v193 + 3016);
  v177 = *(v193 + 2952);
  v185 = *(v193 + 2936);
  v172 = *(v193 + 2648);
  v180 = *(v193 + 2640);
  v175 = *(v193 + 2624);
  v181 = *(v193 + 2608);
  v186 = *(v193 + 2504);
  v188 = *(v193 + 2480);
  v176 = *(v193 + 2944);
  v171 = *(v193 + 2616);
  MEMORY[0x277D82BE0](v188);
  v173 = *(v171 + 16);
  v173(v180, v172, v181);
  v184 = swift_task_alloc();
  *(v193 + 3128) = v184;
  v174();
  v178 = *(v171 + 80);
  v179 = (v178 + 24) & ~v178;
  v183 = (v179 + v175 + *(v176 + 80)) & ~*(v176 + 80);
  v187 = swift_allocObject();
  *(v193 + 3136) = v187;
  *(v187 + 16) = v188;
  v182 = *(v171 + 32);
  v182(v187 + v179, v180, v181);
  (*(v176 + 32))(v187 + v183, v184, v185);
  *(v187 + ((v183 + v177 + 7) & 0xFFFFFFFFFFFFFFF8)) = v186;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A48, &qword_2260A0A68);
  swift_asyncLet_begin();
  v189 = [objc_opt_self() sharedInstance];
  v190 = [v188 language];
  if (v190)
  {
    sub_226099A08();
    v169 = v3;
    MEMORY[0x277D82BD8](v190);
    v170 = v169;
  }

  else
  {
    v170 = 0;
  }

  if (!v170)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 503, 0);
    return;
  }

  v167 = sub_2260999F8();

  v168 = [v189 lastUsedGeoLMRegionIdForLanguage_];
  MEMORY[0x277D82BD8](v167);
  MEMORY[0x277D82BD8](v189);
  if (v168)
  {
    v163 = sub_226099A08();
    v164 = v4;
    MEMORY[0x277D82BD8](v168);
    v165 = v163;
    v166 = v164;
  }

  else
  {
    v165 = 0;
    v166 = 0;
  }

  *(v193 + 3144) = v166;
  v5 = *(v193 + 2472);
  *(v193 + 1744) = v165;
  *(v193 + 1752) = v166;
  v162 = (v5 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (*v162)
  {

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
    sub_226099E38();
  }

  else
  {
    swift_endAccess();
  }

  v160 = *(v193 + 2672);
  v159 = *(v193 + 2656);
  v145 = *(v193 + 2648);
  v149 = *(v193 + 2632);
  v146 = *(v193 + 2624);
  v150 = *(v193 + 2608);
  v153 = *(v193 + 2600);
  v144 = *(v193 + 2544);
  v152 = *(v193 + 2504);
  v147 = *(v193 + 2480);
  v155 = *(v193 + 2472);
  v158 = *(v193 + 2664);
  v143 = *(v193 + 2552);
  sub_226099D78();
  (*(v143 + 56))(v153, 0, 1, v144);
  MEMORY[0x277D82BE0](v147);
  v173(v149, v145, v150);
  sub_2260998E8();
  v148 = (v178 + 40) & ~v178;
  v151 = (v148 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v154 = swift_allocObject();
  v154[2] = 0;
  v154[3] = 0;
  v154[4] = v147;
  v182(v154 + v148, v149, v150);
  v6 = (v154 + v151);
  *v6 = v165;
  v6[1] = v166;
  *(v154 + ((v151 + 23) & 0xFFFFFFFFFFFFFFF8)) = v152;
  v157 = sub_225FC40E0(0, 0, v153, &unk_2260A0F60, v154, MEMORY[0x277D839B0]);
  v156 = (v155 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  *v156 = v157;

  swift_endAccess();
  (*(v158 + 104))(v160, *MEMORY[0x277CDCE28], v159);
  v161 = sub_2260997F8();
  v7 = *(v158 + 8);
  *(v193 + 3152) = v7;
  *(v193 + 3160) = (v158 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v160, v159);
  if (v161 & 1) != 0 && ([objc_opt_self() isDictationWithCombinedEuclidAndASRAlternativesEnabled])
  {
    v133 = *(v193 + 3080);
    v134 = *(v193 + 3056);
    v137 = *(v193 + 2592);
    v136 = *(v193 + 2576);
    v138 = *(v193 + 2568);
    v140 = *(v193 + 2472);
    v132 = *(v193 + 3064);
    v135 = *(v193 + 2584);
    sub_2260993E8();
    v139 = swift_task_alloc();
    (*(v132 + 16))(v139, v133, v134);
    sub_225F7F1AC();
    sub_2260998E8();
    (*(v135 + 104))(v137, *MEMORY[0x277CDCC88], v136);
    sub_225F56EB4(v138);
    v142 = sub_2260993B8();

    v141 = (v140 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
    swift_beginAccess();
    *v141 = v142;

    swift_endAccess();
  }

  v115 = *(v193 + 3080);
  v117 = *(v193 + 2680);
  v118 = *(v193 + 2480);
  v121 = *(v193 + 2472);
  v8 = sub_225F95208();
  *(v193 + 3640) = v8 & 1;
  v128 = sub_225FC4648(v115, v117, v118, v165, v166, v8 & 1);
  v129 = v9;
  *(v193 + 3168) = v128;
  *(v193 + 3176) = v9;
  *(v193 + 1760) = v128;
  *(v193 + 1768) = v9;

  v116 = (v121 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  *v116 = v128;

  swift_endAccess();

  v131 = sub_225FC53EC(v117, v118);
  *(v193 + 3184) = v131;
  *(v193 + 2016) = v131;
  v120 = [v118 enableVoiceCommands];
  v119 = (v121 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  *v119 = v120;
  swift_endAccess();
  v122 = (v121 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  v123 = *v122;
  swift_endAccess();

  v124 = sub_225F958E8(v123 & 1, v128, v129);
  v125 = v10;
  *(v193 + 3192) = v124;
  *(v193 + 3200) = v10;

  *(v193 + 1776) = v124;
  *(v193 + 1784) = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  sub_22609A4F8();
  v127 = v11;

  v126 = sub_226025354();
  *v127 = v128;
  v127[1] = v126;

  v127[2] = v129;
  v127[3] = v126;
  sub_225EF5418();
  v130 = v12;

  *(v193 + 2024) = v130;

  if (v131)
  {
    *(v193 + 2312) = v131;
    sub_22609A4F8();
    v114 = v13;

    v14 = sub_2260256EC();
    *v114 = v131;
    v114[1] = v14;
    sub_225EF5418();
    sub_226099CC8();
  }

  sub_22601FDE0(v124);
  if (v124)
  {
    *(v193 + 1856) = v124;
    *(v193 + 1864) = v125;
    sub_22609A4F8();
    v113 = v15;

    v112 = sub_22602566C();
    *v113 = v124;
    v113[1] = v112;

    v113[2] = v125;
    v113[3] = v112;
    sub_225EF5418();

    sub_226099CC8();
  }

  v16 = *(v193 + 3120);
  v111 = *(v193 + 2904);
  v110 = *sub_225F827A0();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D70, &qword_2260A0F68);
  sub_225F8798C(sub_225FC5FA8, 0, v110, v111, v17);
  if (!v16)
  {

    v109 = *(v193 + 2032);
    *(v193 + 3208) = v109;
    *(v193 + 2040) = v109;
    MEMORY[0x277D82BE0](v109);
    if (v109)
    {
      v105 = *(v193 + 2864);
      v18 = *(v193 + 2792);
      v104 = *(v193 + 2728);
      *(v193 + 2208) = v109;
      v19 = sub_225F7E9BC();
      v105(v18, v19, v104);
      oslog = sub_226098C48();
      v106 = sub_22609A088();
      v108 = sub_22609A4F8();
      if (os_log_type_enabled(oslog, v106))
      {
        buf = sub_22609A188();
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v96 = sub_225EF5468(0, v94, v94);
        v97 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v193 + 2280) = buf;
        *(v193 + 2288) = v96;
        *(v193 + 2296) = v97;
        sub_225EF54BC(0, (v193 + 2280));
        sub_225EF54BC(0, (v193 + 2280));
        *(v193 + 2304) = v108;
        v98 = swift_task_alloc();
        v98[2] = v193 + 2280;
        v98[3] = v193 + 2288;
        v98[4] = v193 + 2296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, oslog, v106, "Waiting for preheated analyzer", buf, 2u);
        sub_225EF7AF4(v96, 0, v94);
        sub_225EF7AF4(v97, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      *(v193 + 3216) = 0;
      v93 = *(v193 + 2888);
      v91 = *(v193 + 2792);
      v92 = *(v193 + 2728);
      MEMORY[0x277D82BD8](oslog);
      v93(v91, v92);
      sub_225F2D6D0();
      if (sub_22609A118())
      {
        v22 = swift_task_alloc();
        *(v193 + 3224) = v22;
        *v22 = *(v193 + 1936);
        v22[1] = sub_225FACD2C;

        sub_225FC6040();
      }

      else
      {
        v23 = swift_task_alloc();
        *(v193 + 3256) = v23;
        *v23 = *(v193 + 1936);
        v23[1] = sub_225FAF118;

        sub_225FC64E0();
      }

      return;
    }

    v100 = *(v193 + 2864);
    v20 = *(v193 + 2800);
    v99 = *(v193 + 2728);
    v21 = sub_225F7E9BC();
    v100(v20, v21, v99);
    log = sub_226098C48();
    v101 = sub_22609A088();
    v103 = sub_22609A4F8();
    if (os_log_type_enabled(log, v101))
    {
      v87 = sub_22609A188();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v88 = sub_225EF5468(0, v86, v86);
      v89 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v193 + 2176) = v87;
      *(v193 + 2184) = v88;
      *(v193 + 2192) = v89;
      sub_225EF54BC(0, (v193 + 2176));
      sub_225EF54BC(0, (v193 + 2176));
      *(v193 + 2200) = v103;
      v90 = swift_task_alloc();
      v90[2] = v193 + 2176;
      v90[3] = v193 + 2184;
      v90[4] = v193 + 2192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v101, "No preheating", v87, 2u);
      sub_225EF7AF4(v88, 0, v86);
      sub_225EF7AF4(v89, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v85 = *(v193 + 2888);
    v83 = *(v193 + 2800);
    v84 = *(v193 + 2728);
    MEMORY[0x277D82BD8](log);
    v85(v83, v84);
    *(v193 + 1080) = 0;
    *(v193 + 1088) = 0;
    *(v193 + 1096) = 0;
    *(v193 + 1144) = 0;
    *(v193 + 1152) = 0;
    *(v193 + 1160) = 1;
    if (*(v193 + 1160) == 1)
    {
      v195 = 0;
      v196 = -1;
      v197 = 0;
    }

    else
    {
      v195 = *(v193 + 1144);
      v196 = *(v193 + 1152);
      v197 = *(v193 + 1160);
    }

    *(v193 + 3288) = v195;
    *(v193 + 1929) = v196;
    *(v193 + 3296) = v197;
    *(v193 + 1920) = v195;
    *(v193 + 1928) = v196;
    *(v193 + 2048) = v197;
    sub_2260998E8();
    if (v197)
    {
      v74 = *(v193 + 2864);
      v24 = *(v193 + 2768);
      v73 = *(v193 + 2728);
      *(v193 + 2168) = v197;
      v25 = sub_225F7E9BC();
      v74(v24, v25, v73);
      sub_2260998E8();
      v75 = swift_allocObject();
      *(v75 + 16) = v197;
      v81 = sub_226098C48();
      v82 = sub_22609A0A8();
      v77 = swift_allocObject();
      *(v77 + 16) = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = 8;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_226025600;
      *(v76 + 24) = v75;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_225F2D374;
      *(v79 + 24) = v76;
      sub_22609A4F8();
      v80 = v26;

      *v80 = sub_225EF7434;
      v80[1] = v77;

      v80[2] = sub_225EF7434;
      v80[3] = v78;

      v80[4] = sub_225EF71D0;
      v80[5] = v79;
      sub_225EF5418();

      if (os_log_type_enabled(v81, v82))
      {
        v70 = sub_22609A188();
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v71 = sub_225EF5468(0, v69, v69);
        v72 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v198 = v70;
        v199 = v71;
        v200 = v72;
        sub_225EF54BC(0, &v198);
        sub_225EF54BC(1, &v198);
        v201 = sub_225EF7434;
        v202 = v77;
        sub_225EF73E8(&v201, &v198, &v199, &v200);
        v201 = sub_225EF7434;
        v202 = v78;
        sub_225EF73E8(&v201, &v198, &v199, &v200);
        v201 = sub_225EF71D0;
        v202 = v79;
        sub_225EF73E8(&v201, &v198, &v199, &v200);
        _os_log_impl(&dword_225EEB000, v81, v82, "Sending %ld events", v70, 0xCu);
        sub_225EF7AF4(v71, 0, v69);
        sub_225EF7AF4(v72, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v67 = *(v193 + 2888);
      v65 = *(v193 + 2768);
      v66 = *(v193 + 2728);
      MEMORY[0x277D82BD8](v81);
      v67(v65, v66);
      v68 = [objc_opt_self() sharedAnalytics];
      if (!v68)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 569, 0);
        return;
      }

      sub_2260998E8();
      sub_226025608();
      v64 = sub_226099C78();

      [v68 logEvents_];
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v68);
    }

    v62 = sub_225F83184();
    v63 = [v62 loadedFromTrial];
    MEMORY[0x277D82BD8](v62);
    if (v63)
    {
      v58 = *(v193 + 3000);
      v60 = *(v193 + 2976);
      v59 = *(v193 + 2936);
      type metadata accessor for CESAExperimentationManager();
      v61 = swift_task_alloc();
      sub_225F7BF50(v58, v61);
      if (v60(v61, 1, v59) == 1)
      {
        v57 = 0;
      }

      else
      {
        v55 = *(v193 + 3040);
        v54 = *(v193 + 2936);
        v56 = sub_226098A38();
        v55(v61, v54);
        v57 = v56;
      }

      sub_226046714(0, v57);
      MEMORY[0x277D82BD8](v57);
    }

    *(v193 + 2056) = sub_22609A4F8();
    sub_226025444(v195, v196);
    if (v196 != 255)
    {
      if ((v196 & 1) == 0)
      {
        *(v193 + 2160) = v195;

        *(v193 + 2064) = v195;
        *(v193 + 3304) = *(v193 + 2024);
        sub_2260998E8();

        v27 = sub_225FB1504;
        v28 = v193 + 16;
        v29 = v193 + 2008;
        v30 = v193 + 1296;

_swift_asyncLet_get_throwing:
        MEMORY[0x282200930](v28, v29, v27, v30);
        return;
      }
    }

    v50 = *(v193 + 2864);
    v31 = *(v193 + 2760);
    v49 = *(v193 + 2728);
    v32 = sub_225F7E9BC();
    v50(v31, v32, v49);
    v52 = sub_226098C48();
    v51 = sub_22609A078();
    v53 = sub_22609A4F8();
    if (os_log_type_enabled(v52, v51))
    {
      v45 = sub_22609A188();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v46 = sub_225EF5468(0, v44, v44);
      v47 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v193 + 2128) = v45;
      *(v193 + 2136) = v46;
      *(v193 + 2144) = v47;
      sub_225EF54BC(0, (v193 + 2128));
      sub_225EF54BC(0, (v193 + 2128));
      *(v193 + 2152) = v53;
      v48 = swift_task_alloc();
      v48[2] = v193 + 2128;
      v48[3] = v193 + 2136;
      v48[4] = v193 + 2144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v52, v51, "Creating SpeechAnalyzer", v45, 2u);
      sub_225EF7AF4(v46, 0, v44);
      sub_225EF7AF4(v47, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v41 = *(v193 + 2888);
    v39 = *(v193 + 2760);
    v40 = *(v193 + 2728);
    v42 = *(v193 + 2480);
    MEMORY[0x277D82BD8](v52);
    v41(v39, v40);
    sub_225F7FA28();
    v43 = [v42 task];
    if (v43)
    {
      v35 = sub_226099A08();
      v36 = v33;
      MEMORY[0x277D82BD8](v43);
      v37 = v35;
      v38 = v36;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    *(v193 + 3360) = v38;
    *(v193 + 3352) = v37;
    v34 = *(v193 + 2480);
    *(v193 + 3368) = *(v193 + 2024);
    sub_2260998E8();

    *(v193 + 3376) = [v34 powerContext];
    v27 = sub_225FB1F60;
    v28 = v193 + 16;
    v29 = v193 + 2008;
    v30 = v193 + 656;

    goto _swift_asyncLet_get_throwing;
  }
}

uint64_t sub_225FACD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[242] = *v3;
  v5[404] = a1;
  v5[405] = a2;
  v5[406] = a3;

  return MEMORY[0x2822009F8](sub_225FACE58, 0, 0);
}

uint64_t sub_225FACE58()
{
  v120 = v0;
  v1 = v0[406];
  v108 = v1;
  v2 = v0[405];
  v107 = v2;
  v3 = v0[404];
  v106 = v3;
  v0[242] = v0;
  sub_226024B60(v3, v2, v1);
  v0[135] = v106;
  v0[136] = v107;
  v0[137] = v108;
  v111 = v0[406];
  v110 = v0[405];
  v109 = v0[404];
  sub_226024B60(v109, v110, v111);
  v0[198] = v109;
  v0[199] = v110;
  v0[200] = v111;
  v104 = v0[200] == 0;
  sub_2260254D4(v105 + 1584);
  if (v104)
  {
    v100 = *(v105 + 2864);
    v4 = *(v105 + 2784);
    v99 = *(v105 + 2728);
    v5 = sub_225F7E9BC();
    v100(v4, v5, v99);
    oslog = sub_226098C48();
    v101 = sub_22609A088();
    v103 = sub_22609A4F8();
    if (!os_log_type_enabled(oslog, v101))
    {

      v93 = *(v105 + 3216);
      goto LABEL_7;
    }

    v6 = *(v105 + 3216);
    buf = sub_22609A188();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v96 = sub_225EF5468(0, v94, v94);
    v97 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2248) = buf;
    *(v105 + 2256) = v96;
    *(v105 + 2264) = v97;
    sub_225EF54BC(0, (v105 + 2248));
    sub_225EF54BC(0, (v105 + 2248));
    *(v105 + 2272) = v103;
    v98 = swift_task_alloc();
    v98[2] = v105 + 2248;
    v98[3] = v105 + 2256;
    v98[4] = v105 + 2264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v6)
    {

      _os_log_impl(&dword_225EEB000, oslog, v101, "Preheating task cleared before results retrieved", buf, 2u);
      sub_225EF7AF4(v96, 0, v94);
      sub_225EF7AF4(v97, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v93 = 0;
LABEL_7:
      v91 = *(v105 + 2888);
      v89 = *(v105 + 2784);
      v90 = *(v105 + 2728);
      MEMORY[0x277D82BD8](oslog);
      v91(v89, v90);
      v92 = v93;
      goto LABEL_14;
    }
  }

  v85 = *(v105 + 2864);
  v8 = *(v105 + 2776);
  v84 = *(v105 + 2728);
  v9 = sub_225F7E9BC();
  v85(v8, v9, v84);
  log = sub_226098C48();
  v86 = sub_22609A088();
  v88 = sub_22609A4F8();
  if (os_log_type_enabled(log, v86))
  {
    v10 = *(v105 + 3216);
    v80 = sub_22609A188();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v81 = sub_225EF5468(0, v79, v79);
    v82 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2216) = v80;
    *(v105 + 2224) = v81;
    *(v105 + 2232) = v82;
    sub_225EF54BC(0, (v105 + 2216));
    sub_225EF54BC(0, (v105 + 2216));
    *(v105 + 2240) = v88;
    v83 = swift_task_alloc();
    v83[2] = v105 + 2216;
    v83[3] = v105 + 2224;
    v83[4] = v105 + 2232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v10)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v86, "Got preheated analyzer", v80, 2u);
    sub_225EF7AF4(v81, 0, v79);
    sub_225EF7AF4(v82, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v78 = 0;
  }

  else
  {

    v78 = *(v105 + 3216);
  }

  v77 = *(v105 + 2888);
  v75 = *(v105 + 2776);
  v76 = *(v105 + 2728);
  MEMORY[0x277D82BD8](log);
  v77(v75, v76);
  v92 = v78;
LABEL_14:
  MEMORY[0x277D82BD8](*(v105 + 3208));
  if (v111)
  {
    v72 = v109;
    v73 = v110 & 1;
    v74 = v111;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v74 = 1;
  }

  *(v105 + 1144) = v72;
  *(v105 + 1152) = v73;
  *(v105 + 1160) = v74;
  if (*(v105 + 1160) == 1)
  {
    v112 = 0;
    v113 = -1;
    v114 = 0;
  }

  else
  {
    v112 = *(v105 + 1144);
    v113 = *(v105 + 1152);
    v114 = *(v105 + 1160);
  }

  *(v105 + 3288) = v112;
  *(v105 + 1929) = v113;
  *(v105 + 3296) = v114;
  *(v105 + 1920) = v112;
  *(v105 + 1928) = v113;
  *(v105 + 2048) = v114;
  sub_2260998E8();
  if (v114)
  {
    v63 = *(v105 + 2864);
    v11 = *(v105 + 2768);
    v62 = *(v105 + 2728);
    *(v105 + 2168) = v114;
    v12 = sub_225F7E9BC();
    v63(v11, v12, v62);
    sub_2260998E8();
    v64 = swift_allocObject();
    *(v64 + 16) = v114;
    v70 = sub_226098C48();
    v71 = sub_22609A0A8();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_226025600;
    *(v65 + 24) = v64;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_225F2D374;
    *(v68 + 24) = v65;
    sub_22609A4F8();
    v69 = v13;

    *v69 = sub_225EF7434;
    v69[1] = v66;

    v69[2] = sub_225EF7434;
    v69[3] = v67;

    v69[4] = sub_225EF71D0;
    v69[5] = v68;
    sub_225EF5418();

    if (os_log_type_enabled(v70, v71))
    {
      v58 = sub_22609A188();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v59 = sub_225EF5468(0, v57, v57);
      v60 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v115 = v58;
      v116 = v59;
      v117 = v60;
      sub_225EF54BC(0, &v115);
      sub_225EF54BC(1, &v115);
      v118 = sub_225EF7434;
      v119 = v66;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      if (v92)
      {
      }

      v118 = sub_225EF7434;
      v119 = v67;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      v118 = sub_225EF71D0;
      v119 = v68;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      _os_log_impl(&dword_225EEB000, v70, v71, "Sending %ld events", v58, 0xCu);
      sub_225EF7AF4(v59, 0, v57);
      sub_225EF7AF4(v60, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v56 = 0;
    }

    else
    {

      v56 = v92;
    }

    v54 = *(v105 + 2888);
    v52 = *(v105 + 2768);
    v53 = *(v105 + 2728);
    MEMORY[0x277D82BD8](v70);
    v54(v52, v53);
    v55 = [objc_opt_self() sharedAnalytics];
    if (!v55)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 569, 0);
    }

    sub_2260998E8();
    sub_226025608();
    v51 = sub_226099C78();

    [v55 logEvents_];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v55);

    v61 = v56;
  }

  else
  {
    v61 = v92;
  }

  v49 = sub_225F83184();
  v50 = [v49 loadedFromTrial];
  MEMORY[0x277D82BD8](v49);
  if (v50)
  {
    v45 = *(v105 + 3000);
    v47 = *(v105 + 2976);
    v46 = *(v105 + 2936);
    type metadata accessor for CESAExperimentationManager();
    v48 = swift_task_alloc();
    sub_225F7BF50(v45, v48);
    if (v47(v48, 1, v46) == 1)
    {
      v44 = 0;
    }

    else
    {
      v42 = *(v105 + 3040);
      v41 = *(v105 + 2936);
      v43 = sub_226098A38();
      v42(v48, v41);
      v44 = v43;
    }

    sub_226046714(0, v44);
    MEMORY[0x277D82BD8](v44);
  }

  *(v105 + 2056) = sub_22609A4F8();
  sub_226025444(v112, v113);
  if (v113 != 255)
  {
    if ((v113 & 1) == 0)
    {
      *(v105 + 2160) = v112;

      *(v105 + 2064) = v112;
      *(v105 + 3304) = *(v105 + 2024);
      sub_2260998E8();

      v14 = sub_225FB1504;
      v15 = v105 + 16;
      v16 = v105 + 2008;
      v17 = v105 + 1296;

      return MEMORY[0x282200930](v15, v16, v14, v17);
    }
  }

  v37 = *(v105 + 2864);
  v18 = *(v105 + 2760);
  v36 = *(v105 + 2728);
  v19 = sub_225F7E9BC();
  v37(v18, v19, v36);
  v39 = sub_226098C48();
  v38 = sub_22609A078();
  v40 = sub_22609A4F8();
  if (os_log_type_enabled(v39, v38))
  {
    v32 = sub_22609A188();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v33 = sub_225EF5468(0, v31, v31);
    v34 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2128) = v32;
    *(v105 + 2136) = v33;
    *(v105 + 2144) = v34;
    sub_225EF54BC(0, (v105 + 2128));
    sub_225EF54BC(0, (v105 + 2128));
    *(v105 + 2152) = v40;
    v35 = swift_task_alloc();
    v35[2] = v105 + 2128;
    v35[3] = v105 + 2136;
    v35[4] = v105 + 2144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v61)
    {
    }

    _os_log_impl(&dword_225EEB000, v39, v38, "Creating SpeechAnalyzer", v32, 2u);
    sub_225EF7AF4(v33, 0, v31);
    sub_225EF7AF4(v34, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v28 = *(v105 + 2888);
  v26 = *(v105 + 2760);
  v27 = *(v105 + 2728);
  v29 = *(v105 + 2480);
  MEMORY[0x277D82BD8](v39);
  v28(v26, v27);
  sub_225F7FA28();
  v30 = [v29 task];
  if (v30)
  {
    v22 = sub_226099A08();
    v23 = v20;
    MEMORY[0x277D82BD8](v30);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *(v105 + 3360) = v25;
  *(v105 + 3352) = v24;
  v21 = *(v105 + 2480);
  *(v105 + 3368) = *(v105 + 2024);
  sub_2260998E8();

  *(v105 + 3376) = [v21 powerContext];
  v14 = sub_225FB1F60;
  v15 = v105 + 16;
  v16 = v105 + 2008;
  v17 = v105 + 656;

  return MEMORY[0x282200930](v15, v16, v14, v17);
}

uint64_t sub_225FAF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[242] = *v3;
  v5[408] = a1;
  v5[409] = a2;
  v5[410] = a3;

  return MEMORY[0x2822009F8](sub_225FAF244, 0, 0);
}

uint64_t sub_225FAF244()
{
  v120 = v0;
  v1 = v0[410];
  v108 = v1;
  v2 = v0[409];
  v107 = v2;
  v3 = v0[408];
  v106 = v3;
  v0[242] = v0;
  sub_226024B60(v3, v2, v1);
  v0[135] = v106;
  v0[136] = v107;
  v0[137] = v108;
  v111 = v0[410];
  v110 = v0[409];
  v109 = v0[408];
  sub_226024B60(v109, v110, v111);
  v0[198] = v109;
  v0[199] = v110;
  v0[200] = v111;
  v104 = v0[200] == 0;
  sub_2260254D4(v105 + 1584);
  if (v104)
  {
    v100 = *(v105 + 2864);
    v4 = *(v105 + 2784);
    v99 = *(v105 + 2728);
    v5 = sub_225F7E9BC();
    v100(v4, v5, v99);
    oslog = sub_226098C48();
    v101 = sub_22609A088();
    v103 = sub_22609A4F8();
    if (!os_log_type_enabled(oslog, v101))
    {

      v93 = *(v105 + 3216);
      goto LABEL_7;
    }

    v6 = *(v105 + 3216);
    buf = sub_22609A188();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v96 = sub_225EF5468(0, v94, v94);
    v97 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2248) = buf;
    *(v105 + 2256) = v96;
    *(v105 + 2264) = v97;
    sub_225EF54BC(0, (v105 + 2248));
    sub_225EF54BC(0, (v105 + 2248));
    *(v105 + 2272) = v103;
    v98 = swift_task_alloc();
    v98[2] = v105 + 2248;
    v98[3] = v105 + 2256;
    v98[4] = v105 + 2264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v6)
    {

      _os_log_impl(&dword_225EEB000, oslog, v101, "Preheating task cleared before results retrieved", buf, 2u);
      sub_225EF7AF4(v96, 0, v94);
      sub_225EF7AF4(v97, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v93 = 0;
LABEL_7:
      v91 = *(v105 + 2888);
      v89 = *(v105 + 2784);
      v90 = *(v105 + 2728);
      MEMORY[0x277D82BD8](oslog);
      v91(v89, v90);
      v92 = v93;
      goto LABEL_14;
    }
  }

  v85 = *(v105 + 2864);
  v8 = *(v105 + 2776);
  v84 = *(v105 + 2728);
  v9 = sub_225F7E9BC();
  v85(v8, v9, v84);
  log = sub_226098C48();
  v86 = sub_22609A088();
  v88 = sub_22609A4F8();
  if (os_log_type_enabled(log, v86))
  {
    v10 = *(v105 + 3216);
    v80 = sub_22609A188();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v81 = sub_225EF5468(0, v79, v79);
    v82 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2216) = v80;
    *(v105 + 2224) = v81;
    *(v105 + 2232) = v82;
    sub_225EF54BC(0, (v105 + 2216));
    sub_225EF54BC(0, (v105 + 2216));
    *(v105 + 2240) = v88;
    v83 = swift_task_alloc();
    v83[2] = v105 + 2216;
    v83[3] = v105 + 2224;
    v83[4] = v105 + 2232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v10)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v86, "Got preheated analyzer", v80, 2u);
    sub_225EF7AF4(v81, 0, v79);
    sub_225EF7AF4(v82, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v78 = 0;
  }

  else
  {

    v78 = *(v105 + 3216);
  }

  v77 = *(v105 + 2888);
  v75 = *(v105 + 2776);
  v76 = *(v105 + 2728);
  MEMORY[0x277D82BD8](log);
  v77(v75, v76);
  v92 = v78;
LABEL_14:
  MEMORY[0x277D82BD8](*(v105 + 3208));
  if (v111)
  {
    v72 = v109;
    v73 = v110 & 1;
    v74 = v111;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v74 = 1;
  }

  *(v105 + 1144) = v72;
  *(v105 + 1152) = v73;
  *(v105 + 1160) = v74;
  if (*(v105 + 1160) == 1)
  {
    v112 = 0;
    v113 = -1;
    v114 = 0;
  }

  else
  {
    v112 = *(v105 + 1144);
    v113 = *(v105 + 1152);
    v114 = *(v105 + 1160);
  }

  *(v105 + 3288) = v112;
  *(v105 + 1929) = v113;
  *(v105 + 3296) = v114;
  *(v105 + 1920) = v112;
  *(v105 + 1928) = v113;
  *(v105 + 2048) = v114;
  sub_2260998E8();
  if (v114)
  {
    v63 = *(v105 + 2864);
    v11 = *(v105 + 2768);
    v62 = *(v105 + 2728);
    *(v105 + 2168) = v114;
    v12 = sub_225F7E9BC();
    v63(v11, v12, v62);
    sub_2260998E8();
    v64 = swift_allocObject();
    *(v64 + 16) = v114;
    v70 = sub_226098C48();
    v71 = sub_22609A0A8();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_226025600;
    *(v65 + 24) = v64;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_225F2D374;
    *(v68 + 24) = v65;
    sub_22609A4F8();
    v69 = v13;

    *v69 = sub_225EF7434;
    v69[1] = v66;

    v69[2] = sub_225EF7434;
    v69[3] = v67;

    v69[4] = sub_225EF71D0;
    v69[5] = v68;
    sub_225EF5418();

    if (os_log_type_enabled(v70, v71))
    {
      v58 = sub_22609A188();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v59 = sub_225EF5468(0, v57, v57);
      v60 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v115 = v58;
      v116 = v59;
      v117 = v60;
      sub_225EF54BC(0, &v115);
      sub_225EF54BC(1, &v115);
      v118 = sub_225EF7434;
      v119 = v66;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      if (v92)
      {
      }

      v118 = sub_225EF7434;
      v119 = v67;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      v118 = sub_225EF71D0;
      v119 = v68;
      sub_225EF73E8(&v118, &v115, &v116, &v117);
      _os_log_impl(&dword_225EEB000, v70, v71, "Sending %ld events", v58, 0xCu);
      sub_225EF7AF4(v59, 0, v57);
      sub_225EF7AF4(v60, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v56 = 0;
    }

    else
    {

      v56 = v92;
    }

    v54 = *(v105 + 2888);
    v52 = *(v105 + 2768);
    v53 = *(v105 + 2728);
    MEMORY[0x277D82BD8](v70);
    v54(v52, v53);
    v55 = [objc_opt_self() sharedAnalytics];
    if (!v55)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 569, 0);
    }

    sub_2260998E8();
    sub_226025608();
    v51 = sub_226099C78();

    [v55 logEvents_];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v55);

    v61 = v56;
  }

  else
  {
    v61 = v92;
  }

  v49 = sub_225F83184();
  v50 = [v49 loadedFromTrial];
  MEMORY[0x277D82BD8](v49);
  if (v50)
  {
    v45 = *(v105 + 3000);
    v47 = *(v105 + 2976);
    v46 = *(v105 + 2936);
    type metadata accessor for CESAExperimentationManager();
    v48 = swift_task_alloc();
    sub_225F7BF50(v45, v48);
    if (v47(v48, 1, v46) == 1)
    {
      v44 = 0;
    }

    else
    {
      v42 = *(v105 + 3040);
      v41 = *(v105 + 2936);
      v43 = sub_226098A38();
      v42(v48, v41);
      v44 = v43;
    }

    sub_226046714(0, v44);
    MEMORY[0x277D82BD8](v44);
  }

  *(v105 + 2056) = sub_22609A4F8();
  sub_226025444(v112, v113);
  if (v113 != 255)
  {
    if ((v113 & 1) == 0)
    {
      *(v105 + 2160) = v112;

      *(v105 + 2064) = v112;
      *(v105 + 3304) = *(v105 + 2024);
      sub_2260998E8();

      v14 = sub_225FB1504;
      v15 = v105 + 16;
      v16 = v105 + 2008;
      v17 = v105 + 1296;

      return MEMORY[0x282200930](v15, v16, v14, v17);
    }
  }

  v37 = *(v105 + 2864);
  v18 = *(v105 + 2760);
  v36 = *(v105 + 2728);
  v19 = sub_225F7E9BC();
  v37(v18, v19, v36);
  v39 = sub_226098C48();
  v38 = sub_22609A078();
  v40 = sub_22609A4F8();
  if (os_log_type_enabled(v39, v38))
  {
    v32 = sub_22609A188();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v33 = sub_225EF5468(0, v31, v31);
    v34 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v105 + 2128) = v32;
    *(v105 + 2136) = v33;
    *(v105 + 2144) = v34;
    sub_225EF54BC(0, (v105 + 2128));
    sub_225EF54BC(0, (v105 + 2128));
    *(v105 + 2152) = v40;
    v35 = swift_task_alloc();
    v35[2] = v105 + 2128;
    v35[3] = v105 + 2136;
    v35[4] = v105 + 2144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v61)
    {
    }

    _os_log_impl(&dword_225EEB000, v39, v38, "Creating SpeechAnalyzer", v32, 2u);
    sub_225EF7AF4(v33, 0, v31);
    sub_225EF7AF4(v34, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v28 = *(v105 + 2888);
  v26 = *(v105 + 2760);
  v27 = *(v105 + 2728);
  v29 = *(v105 + 2480);
  MEMORY[0x277D82BD8](v39);
  v28(v26, v27);
  sub_225F7FA28();
  v30 = [v29 task];
  if (v30)
  {
    v22 = sub_226099A08();
    v23 = v20;
    MEMORY[0x277D82BD8](v30);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *(v105 + 3360) = v25;
  *(v105 + 3352) = v24;
  v21 = *(v105 + 2480);
  *(v105 + 3368) = *(v105 + 2024);
  sub_2260998E8();

  *(v105 + 3376) = [v21 powerContext];
  v14 = sub_225FB1F60;
  v15 = v105 + 16;
  v16 = v105 + 2008;
  v17 = v105 + 656;

  return MEMORY[0x282200930](v15, v16, v14, v17);
}

uint64_t sub_225FB1504()
{
  *(v1 + 1936) = v1;
  *(v1 + 3312) = v0;
  if (v0)
  {
    v3 = sub_225FB77B4;
  }

  else
  {
    v3 = sub_225FB1594;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FB1594()
{
  v11 = v0[411];
  v0[242] = v0;
  v9 = v0[251];
  v0[415] = v9;
  sub_2260998E8();
  v10 = v0[257];
  v0[416] = v10;
  sub_2260998E8();
  v1 = swift_task_alloc();
  v8[417] = v1;
  *v1 = v8[242];
  v1[1] = sub_225FB16D0;
  v2 = v8[413];
  v3 = v8[397];
  v4 = v8[396];
  v5 = v8[338];
  v6 = v8[310];

  return sub_225FC73B0(v11, v6, v5, v2, v4, v3, v9, v10);
}

uint64_t sub_225FB16D0()
{
  v4 = *v1;
  *(v4 + 1936) = *v1;
  *(v4 + 3344) = v0;

  if (v0)
  {
    v2 = sub_225FB8064;
  }

  else
  {

    v2 = sub_225FB18AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FB18AC()
{
  v21 = v0;
  *(v0 + 1936) = v0;

  if ([*(v0 + 2480) narrowband])
  {
    v20 = 8000;
  }

  else
  {
    v20 = 16000;
  }

  v1 = *(v0 + 2472);
  *(v0 + 2072) = v20;
  v18 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v18 = v20;
  swift_endAccess();
  sub_226025568();
  v2 = sub_226025CE0(3, 1u, 0, v20);
  v19 = v2;
  *(v0 + 3432) = v2;
  if (!v2)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 634, 0);
  }

  v15 = *(v0 + 2472);
  *(v0 + 2080) = v2;
  MEMORY[0x277D82BE0](v2);
  v16 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v3 = *v16;
  *v16 = v19;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  sub_225EF9338();
  MEMORY[0x277D82BE0](v19);
  v4 = sub_225EF939C(v19, 0);
  v17 = v4;
  *(v0 + 3440) = v4;
  if (v4)
  {
    v14 = *(v0 + 2512);
    *(v0 + 2088) = v4;
    MEMORY[0x277D82BE0](v4);
    *(swift_task_alloc() + 16) = v17;
    sub_2260990A8();
    sub_225F819F0();
    sub_225F81A04(v14);
    sub_226099E18();

    MEMORY[0x277D82BD8](v17);
    *(v0 + 3448) = *(v0 + 2064);

    v6 = swift_task_alloc();
    v21[432] = v6;
    v7 = sub_22601FB7C();
    *v6 = v21[242];
    v6[1] = sub_225FB2A40;
    v8 = v21[317];
    v9 = v21[315];

    return MEMORY[0x28212BBB0](v8, v9, v7);
  }

  else
  {
    v13 = *(v0 + 2864);
    v10 = *(v0 + 2752);
    v12 = *(v0 + 2728);
    v11 = sub_225F7E9BC();
    v13(v10, v11, v12);
    return sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 639);
  }
}

uint64_t sub_225FB1F60()
{
  *(v1 + 1936) = v1;
  *(v1 + 3384) = v0;
  if (v0)
  {
    v3 = sub_225FB8930;
  }

  else
  {
    v3 = sub_225FB1FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FB1FF0()
{
  v12 = v0[422];
  v11 = v0[310];
  v0[242] = v0;
  v0[424] = v0[251];
  sub_2260998E8();
  MEMORY[0x277D82BE0](v11);
  v0[425] = v0[257];
  sub_2260998E8();
  v1 = swift_task_alloc();
  v10[426] = v1;
  *v1 = v10[242];
  v1[1] = sub_225FB215C;
  v2 = v10[421];
  v3 = v10[420];
  v4 = v10[419];
  v5 = v10[397];
  v6 = v10[396];
  v7 = v10[338];
  v8 = v10[320];

  return sub_225F959EC(v7, v8, v4, v3, v2, v6, v5, v12);
}

uint64_t sub_225FB215C(uint64_t a1)
{
  v11 = *v2;
  v10 = (*v2 + 16);
  v11[242] = *v2;
  v11[427] = a1;
  v11[428] = v1;

  if (v1)
  {
    v3 = sub_225FB9218;
  }

  else
  {
    v6 = v10[420];
    v8 = v10[318];
    v7 = v10[317];
    v9 = v10[316];
    v5 = v10[308];

    (*(v7 + 8))(v8, v9);
    v3 = sub_225FB2394;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FB2394()
{
  v22 = v0;
  v1 = *(v0 + 3416);
  *(v0 + 1936) = v0;
  *(v0 + 2064) = v1;
  if ([*(v0 + 2480) narrowband])
  {
    v21 = 8000;
  }

  else
  {
    v21 = 16000;
  }

  v2 = *(v0 + 2472);
  *(v0 + 2072) = v21;
  v19 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  *v19 = v21;
  swift_endAccess();
  sub_226025568();
  v3 = sub_226025CE0(3, 1u, 0, v21);
  v20 = v3;
  *(v0 + 3432) = v3;
  if (!v3)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 634, 0);
  }

  v16 = *(v0 + 2472);
  *(v0 + 2080) = v3;
  MEMORY[0x277D82BE0](v3);
  v17 = (v16 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  swift_beginAccess();
  v4 = *v17;
  *v17 = v20;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  sub_225EF9338();
  MEMORY[0x277D82BE0](v20);
  v5 = sub_225EF939C(v20, 0);
  v18 = v5;
  *(v0 + 3440) = v5;
  if (v5)
  {
    v15 = *(v0 + 2512);
    *(v0 + 2088) = v5;
    MEMORY[0x277D82BE0](v5);
    *(swift_task_alloc() + 16) = v18;
    sub_2260990A8();
    sub_225F819F0();
    sub_225F81A04(v15);
    sub_226099E18();

    MEMORY[0x277D82BD8](v18);
    *(v0 + 3448) = *(v0 + 2064);

    v7 = swift_task_alloc();
    v22[432] = v7;
    v8 = sub_22601FB7C();
    *v7 = v22[242];
    v7[1] = sub_225FB2A40;
    v9 = v22[317];
    v10 = v22[315];

    return MEMORY[0x28212BBB0](v9, v10, v8);
  }

  else
  {
    v14 = *(v0 + 2864);
    v11 = *(v0 + 2752);
    v13 = *(v0 + 2728);
    v12 = sub_225F7E9BC();
    v14(v11, v12, v13);
    return sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 639);
  }
}

uint64_t sub_225FB2A40()
{
  v9 = *v1;
  v6 = (*v1 + 16);
  v7 = (*v1 + 1936);
  v8 = (*v1 + 2064);
  *(v9 + 1936) = *v1;
  *(v9 + 3464) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225FB9B38, 0, 0);
  }

  else
  {

    v5 = *v8;
    v6[432] = *v8;

    v2 = swift_task_alloc();
    v6[433] = v2;
    *v2 = *v7;
    v2[1] = sub_225FB2D04;
    v3 = v6[308];

    return sub_225FCB034(v5, v3);
  }
}

uint64_t sub_225FB2D04()
{
  v4 = *v1;
  *(v4 + 1936) = *v1;
  *(v4 + 3488) = v0;

  if (v0)
  {
    v2 = sub_225FBA42C;
  }

  else
  {

    v2 = sub_225FB2E90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FB2E90()
{
  v1 = v0[436];
  v37 = v0[397];
  v36 = v0[396];
  v33 = v0[309];
  v0[242] = v0;
  v35 = v0[258];

  v34 = (v33 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  *v34 = v35;

  swift_endAccess();
  v39 = *sub_225F8295C();

  v38 = swift_task_alloc();
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  sub_225F8798C(sub_2260255D4, v38, v39, v2, MEMORY[0x277D84F78] + 8);
  if (v1)
  {
  }

  else
  {
    v30 = v32[309];

    v31 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v31)
    {
      v32[437] = *v31;

      swift_endAccess();
      v3 = swift_task_alloc();
      v32[438] = v3;
      *v3 = v32[242];
      v3[1] = sub_225FB4010;

      return MEMORY[0x28212BD10]();
    }

    else
    {
      swift_endAccess();
      v32[226] = 0;
      v32[227] = 0;
      if (v32[227])
      {
        v4 = v32[227];
        v32[224] = v32[226];
        v32[225] = v4;
      }

      else
      {
        v32[224] = sub_226099AA8();
        v32[225] = v5;
        if (v32[227])
        {
          sub_225EFE6BC((v32 + 226));
        }
      }

      v28 = v32[309];
      v25 = v32[224];
      v27 = v32[225];
      v26 = (v28 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
      swift_beginAccess();
      *v26 = v25;
      v26[1] = v27;

      swift_endAccess();
      v29 = (v28 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
      swift_beginAccess();
      if (*v29)
      {
        v32[442] = *v29;

        swift_endAccess();
        v6 = swift_task_alloc();
        v32[443] = v6;
        *v6 = v32[242];
        v6[1] = sub_225FB4F90;

        return MEMORY[0x28212BDC0]();
      }

      else
      {
        swift_endAccess();
        v32[230] = 0;
        v32[231] = 0;
        if (v32[231])
        {
          v7 = v32[231];
          v32[228] = v32[230];
          v32[229] = v7;
        }

        else
        {
          v32[228] = sub_226099AA8();
          v32[229] = v8;
          if (v32[231])
          {
            sub_225EFE6BC((v32 + 230));
          }
        }

        v23 = v32[309];
        v20 = v32[228];
        v22 = v32[229];
        v21 = (v23 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
        swift_beginAccess();
        *v21 = v20;
        v21[1] = v22;

        swift_endAccess();
        v24 = (v23 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
        swift_beginAccess();
        if (*v24)
        {
          v32[447] = *v24;

          swift_endAccess();
          v9 = swift_task_alloc();
          v32[448] = v9;
          *v9 = v32[242];
          v9[1] = sub_225FB5AF8;

          return MEMORY[0x28212BCB8]();
        }

        else
        {
          swift_endAccess();
          v18 = v32[310];
          v17 = (v32[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
          swift_beginAccess();
          *v17 = 0;
          swift_endAccess();
          v19 = [v18 language];
          if (v19)
          {
            v13 = sub_226099A08();
            v14 = v10;
            MEMORY[0x277D82BD8](v19);
            v15 = v13;
            v16 = v14;
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          v32[450] = v16;
          if (v16)
          {
            v11 = swift_task_alloc();
            v32[451] = v11;
            *v11 = v32[242];
            v11[1] = sub_225FB6240;

            return sub_225FCBE84(v15, v16);
          }

          else
          {
            return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 659, 0);
          }
        }
      }
    }
  }
}

uint64_t sub_225FB4010(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[242] = *v3;
  v6[439] = v2;
  v6[440] = a1;
  v6[441] = a2;

  if (v2)
  {
    v4 = sub_225FBAD20;
  }

  else
  {
    v4 = sub_225FB4194;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FB4194()
{
  v0[242] = v0;

  v1 = v0[441];
  v0[226] = v0[440];
  v0[227] = v1;
  if (v0[227])
  {
    v2 = v28[227];
    v28[224] = v28[226];
    v28[225] = v2;
  }

  else
  {
    v28[224] = sub_226099AA8();
    v28[225] = v3;
    if (v28[227])
    {
      sub_225EFE6BC((v28 + 226));
    }
  }

  v26 = v28[309];
  v23 = v28[224];
  v25 = v28[225];
  v24 = (v26 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  *v24 = v23;
  v24[1] = v25;

  swift_endAccess();
  v27 = (v26 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v27)
  {
    v28[442] = *v27;

    swift_endAccess();
    v4 = swift_task_alloc();
    v28[443] = v4;
    *v4 = v28[242];
    v4[1] = sub_225FB4F90;

    return MEMORY[0x28212BDC0]();
  }

  else
  {
    swift_endAccess();
    v28[230] = 0;
    v28[231] = 0;
    if (v28[231])
    {
      v5 = v28[231];
      v28[228] = v28[230];
      v28[229] = v5;
    }

    else
    {
      v28[228] = sub_226099AA8();
      v28[229] = v6;
      if (v28[231])
      {
        sub_225EFE6BC((v28 + 230));
      }
    }

    v21 = v28[309];
    v18 = v28[228];
    v20 = v28[229];
    v19 = (v21 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
    swift_beginAccess();
    *v19 = v18;
    v19[1] = v20;

    swift_endAccess();
    v22 = (v21 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    if (*v22)
    {
      v28[447] = *v22;

      swift_endAccess();
      v7 = swift_task_alloc();
      v28[448] = v7;
      *v7 = v28[242];
      v7[1] = sub_225FB5AF8;

      return MEMORY[0x28212BCB8]();
    }

    else
    {
      swift_endAccess();
      v16 = v28[310];
      v15 = (v28[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
      swift_beginAccess();
      *v15 = 0;
      swift_endAccess();
      v17 = [v16 language];
      if (v17)
      {
        v11 = sub_226099A08();
        v12 = v8;
        MEMORY[0x277D82BD8](v17);
        v13 = v11;
        v14 = v12;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v28[450] = v14;
      if (v14)
      {
        v9 = swift_task_alloc();
        v28[451] = v9;
        *v9 = v28[242];
        v9[1] = sub_225FB6240;

        return sub_225FCBE84(v13, v14);
      }

      else
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 659, 0);
      }
    }
  }
}

uint64_t sub_225FB4F90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[242] = *v3;
  v6[444] = v2;
  v6[445] = a1;
  v6[446] = a2;

  if (v2)
  {
    v4 = sub_225FBB614;
  }

  else
  {
    v4 = sub_225FB5114;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FB5114()
{
  v0[242] = v0;

  v1 = v0[446];
  v0[230] = v0[445];
  v0[231] = v1;
  if (v0[231])
  {
    v2 = v20[231];
    v20[228] = v20[230];
    v20[229] = v2;
  }

  else
  {
    v20[228] = sub_226099AA8();
    v20[229] = v3;
    if (v20[231])
    {
      sub_225EFE6BC((v20 + 230));
    }
  }

  v18 = v20[309];
  v15 = v20[228];
  v17 = v20[229];
  v16 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  *v16 = v15;
  v16[1] = v17;

  swift_endAccess();
  v19 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v19)
  {
    v20[447] = *v19;

    swift_endAccess();
    v4 = swift_task_alloc();
    v20[448] = v4;
    *v4 = v20[242];
    v4[1] = sub_225FB5AF8;

    return MEMORY[0x28212BCB8]();
  }

  else
  {
    swift_endAccess();
    v13 = v20[310];
    v12 = (v20[309] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
    swift_beginAccess();
    *v12 = 0;
    swift_endAccess();
    v14 = [v13 language];
    if (v14)
    {
      v8 = sub_226099A08();
      v9 = v5;
      MEMORY[0x277D82BD8](v14);
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v20[450] = v11;
    if (v11)
    {
      v6 = swift_task_alloc();
      v20[451] = v6;
      *v6 = v20[242];
      v6[1] = sub_225FB6240;

      return sub_225FCBE84(v10, v11);
    }

    else
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 659, 0);
    }
  }
}

uint64_t sub_225FB5AF8(char a1)
{
  v5 = *v2;
  *(v5 + 1936) = *v2;
  *(v5 + 1930) = a1;
  *(v5 + 3592) = v1;

  if (v1)
  {
    v3 = sub_225FBBF08;
  }

  else
  {
    v3 = sub_225FB5C78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FB5C78()
{
  v12 = v0;
  v13 = *(v0 + 1930);
  *(v0 + 1936) = v0;

  if (v13 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v13;
  }

  v9 = *(v0 + 2480);
  v8 = (*(v0 + 2472) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  *v8 = v11 & 1;
  swift_endAccess();
  v10 = [v9 language];
  if (v10)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(v0 + 3600) = v7;
  if (!v7)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 659, 0);
  }

  v2 = swift_task_alloc();
  *(v12 + 3608) = v2;
  *v2 = *(v12 + 1936);
  v2[1] = sub_225FB6240;

  return sub_225FCBE84(v6, v7);
}

uint64_t sub_225FB6240()
{
  *(*v0 + 1936) = *v0;

  return MEMORY[0x2822009F8](sub_225FB6380, 0, 0);
}

uint64_t sub_225FB6380()
{
  *(v0 + 1936) = v0;
  sub_225FCDEE0();

  v1 = swift_task_alloc();
  v9[452] = v1;
  *v1 = v9[242];
  v1[1] = sub_225FB64BC;
  v2 = v9[400];
  v3 = v9[399];
  v4 = v9[398];
  v5 = v9[397];
  v6 = v9[396];
  v7 = v9[310];

  return sub_225FCDF84(v7, v6, v5, v3, v2, v4);
}

uint64_t sub_225FB64BC()
{
  v4 = *v1;
  *(v4 + 1936) = *v1;
  *(v4 + 3624) = v0;

  if (v0)
  {
    v2 = sub_225FBC7FC;
  }

  else
  {

    v2 = sub_225FB6658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225FB6658()
{
  v26 = v0[358];
  v1 = v0[343];
  v25 = v0[341];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v26(v1, v2, v25);
  oslog = sub_226098C48();
  v27 = sub_22609A078();
  v29 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v27))
  {
    v3 = *(v24 + 3624);
    buf = sub_22609A188();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v21 = sub_225EF5468(0, v19, v19);
    v22 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v24 + 2096) = buf;
    *(v24 + 2104) = v21;
    *(v24 + 2112) = v22;
    sub_225EF54BC(0, (v24 + 2096));
    sub_225EF54BC(0, (v24 + 2096));
    *(v24 + 2120) = v29;
    v23 = swift_task_alloc();
    v23[2] = v24 + 2096;
    v23[3] = v24 + 2104;
    v23[4] = v24 + 2112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v3)
    {
    }

    _os_log_impl(&dword_225EEB000, oslog, v27, "Completed startSpeechRecognition", buf, 2u);
    sub_225EF7AF4(v21, 0, v19);
    sub_225EF7AF4(v22, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = *(v24 + 1929);
  v15 = *(v24 + 3288);
  v17 = *(v24 + 3208);
  v18 = *(v24 + 3192);
  v9 = *(v24 + 3112);
  v7 = *(v24 + 2888);
  v5 = *(v24 + 2744);
  v6 = *(v24 + 2728);
  v11 = *(v24 + 2536);
  v12 = *(v24 + 2520);
  v8 = *(v24 + 2488);
  v13 = *(v24 + 3440);
  v14 = *(v24 + 3432);
  v10 = *(v24 + 2528);
  MEMORY[0x277D82BD8](oslog);
  v7(v5, v6);

  MEMORY[0x277D82BE0](v9);
  v8(v9, 0);
  MEMORY[0x277D82BD8](v9);

  (*(v10 + 8))(v11, v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  sub_225EFE6E8((v24 + 2056));

  sub_22602548C(v15, v16);
  sub_2260254D4(v24 + 1080);
  MEMORY[0x277D82BD8](v17);
  sub_225EFE6E8((v24 + 2024));
  sub_226025528(v18);

  return MEMORY[0x282200920](v24 + 16, v24 + 2008, sub_225FB6C90, v24 + 1040);
}

uint64_t sub_225FB6C90()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB6CD4, 0, 0);
}

uint64_t sub_225FB6CD4()
{
  v12 = v0[394];
  v3 = v0[389];
  v9 = v0[385];
  v7 = v0[383];
  v8 = v0[382];
  v19 = v0[380];
  v17 = v0[375];
  v20 = v0[370];
  v18 = v0[367];
  v21 = v0[364];
  v16 = v0[340];
  v14 = v0[338];
  v13 = v0[337];
  v15 = v0[336];
  v10 = v0[335];
  v11 = v0[332];
  v5 = v0[331];
  v4 = v0[327];
  v6 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v3);
  (*(v4 + 8))(v5, v6);
  (*(v7 + 8))(v9, v8);

  v12(v10, v11);
  (*(v13 + 8))(v14, v15);
  sub_226024F08(v16);
  sub_225F7C078(v17);

  v19(v20, v18);

  MEMORY[0x277D82BD8](v21);
  sub_225FBD100(v0[309]);
  sub_2260215F0(&unk_2260A0F50);

  v1 = *(v0[242] + 8);

  return v1();
}

uint64_t sub_225FB716C()
{
  v1 = v0[387];
  v19 = v0[380];
  v17 = v0[375];
  v20 = v0[370];
  v18 = v0[367];
  v21 = v0[364];
  v16 = v0[340];
  v14 = v0[338];
  v13 = v0[337];
  v15 = v0[336];
  v11 = v0[335];
  v10 = v0[333];
  v12 = v0[332];
  v0[242] = v0;
  sub_22601F334(v1);

  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v14, v15);
  sub_226024F08(v16);
  sub_225F7C078(v17);

  v19(v20, v18);

  MEMORY[0x277D82BD8](v21);
  v22 = v0[390];
  v2 = v22;
  v0[246] = v22;
  v3 = v22;
  v23 = sub_225FCEF44(v22);

  v0[248] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v4 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v24, MEMORY[0x277D84A98], v4, v25, (v0 + 247));
  sub_226022DA8((v9 + 1984));
  v8 = *(v9 + 1976);
  *(v9 + 1992) = v8;

  MEMORY[0x277D82BE0](v8);
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  (*(v9 + 2488))();

  MEMORY[0x277D82BD8](v8);

  sub_225FBD100(*(v9 + 2472));
  sub_2260215F0(0);

  v5 = *(*(v9 + 1936) + 8);

  return v5();
}

uint64_t sub_225FB77B4()
{
  v3 = *(v0 + 1929);
  v2 = *(v0 + 3288);
  v4 = *(v0 + 3208);
  v5 = *(v0 + 3192);
  *(v0 + 1936) = v0;

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v2, v3);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v4);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v5);

  return MEMORY[0x282200920](v6 + 16, v6 + 2008, sub_225FB7928, v6 + 1360);
}

uint64_t sub_225FB7928()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB796C, 0, 0);
}

uint64_t sub_225FB796C()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[414];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FB8064()
{
  v3 = *(v0 + 1929);
  v2 = *(v0 + 3288);
  v4 = *(v0 + 3208);
  v5 = *(v0 + 3192);
  *(v0 + 1936) = v0;

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v2, v3);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v4);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v5);

  return MEMORY[0x282200920](v6 + 16, v6 + 2008, sub_225FB81F4, v6 + 1424);
}

uint64_t sub_225FB81F4()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB8238, 0, 0);
}

uint64_t sub_225FB8238()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[418];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FB8930()
{
  v1 = *(v0 + 3376);
  v7 = *(v0 + 1929);
  v6 = *(v0 + 3288);
  v8 = *(v0 + 3208);
  v9 = *(v0 + 3192);
  v4 = *(v0 + 2560);
  v3 = *(v0 + 2552);
  v5 = *(v0 + 2544);
  *(v0 + 1936) = v0;
  MEMORY[0x277D82BD8](v1);

  (*(v3 + 8))(v4, v5);
  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v6, v7);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v8);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v9);

  return MEMORY[0x282200920](v10 + 16, v10 + 2008, sub_225FB8AE0, v10 + 720);
}

uint64_t sub_225FB8AE0()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB8B24, 0, 0);
}

uint64_t sub_225FB8B24()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[423];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FB9218()
{
  v3 = *(v0 + 3376);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v5 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v6 = *(v0 + 2544);
  v2 = *(v0 + 2480);
  *(v0 + 1936) = v0;

  MEMORY[0x277D82BD8](v2);

  MEMORY[0x277D82BD8](v3);

  (*(v4 + 8))(v5, v6);
  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FB9400, v11 + 784);
}

uint64_t sub_225FB9400()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB9444, 0, 0);
}

uint64_t sub_225FB9444()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[428];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FB9B38()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FB9CE8, v11 + 848);
}

uint64_t sub_225FB9CE8()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FB9D2C, 0, 0);
}

uint64_t sub_225FB9D2C()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[433];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBA42C()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FBA5DC, v11 + 912);
}

uint64_t sub_225FBA5DC()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FBA620, 0, 0);
}

uint64_t sub_225FBA620()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[436];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBAD20()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FBAED0, v11 + 1232);
}

uint64_t sub_225FBAED0()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FBAF14, 0, 0);
}

uint64_t sub_225FBAF14()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[439];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBB614()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FBB7C4, v11 + 1168);
}

uint64_t sub_225FBB7C4()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FBB808, 0, 0);
}

uint64_t sub_225FBB808()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[444];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBBF08()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FBC0B8, v11 + 1104);
}

uint64_t sub_225FBC0B8()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FBC0FC, 0, 0);
}

uint64_t sub_225FBC0FC()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[449];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBC7FC()
{
  v5 = *(v0 + 3440);
  v6 = *(v0 + 3432);
  v8 = *(v0 + 1929);
  v7 = *(v0 + 3288);
  v9 = *(v0 + 3208);
  v10 = *(v0 + 3192);
  v3 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v4 = *(v0 + 2520);
  *(v0 + 1936) = v0;

  (*(v2 + 8))(v3, v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  sub_225EFE6E8((v0 + 2056));

  sub_22602548C(v7, v8);
  sub_2260254D4(v0 + 1080);
  MEMORY[0x277D82BD8](v9);
  sub_225EFE6E8((v0 + 2024));
  sub_226025528(v10);

  return MEMORY[0x282200920](v11 + 16, v11 + 2008, sub_225FBC9B0, v11 + 976);
}

uint64_t sub_225FBC9B0()
{
  *(v0 + 1936) = v0;

  return MEMORY[0x2822009F8](sub_225FBC9F4, 0, 0);
}

uint64_t sub_225FBC9F4()
{
  v18 = v0[394];
  v9 = v0[389];
  v15 = v0[385];
  v13 = v0[383];
  v14 = v0[382];
  v25 = v0[380];
  v23 = v0[375];
  v26 = v0[370];
  v24 = v0[367];
  v27 = v0[364];
  v22 = v0[340];
  v20 = v0[338];
  v19 = v0[337];
  v21 = v0[336];
  v16 = v0[335];
  v17 = v0[332];
  v11 = v0[331];
  v10 = v0[327];
  v12 = v0[326];
  v0[242] = v0;

  MEMORY[0x277D82BD8](v9);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v15, v14);

  v18(v16, v17);
  (*(v19 + 8))(v20, v21);
  sub_226024F08(v22);
  sub_225F7C078(v23);

  v25(v26, v24);

  MEMORY[0x277D82BD8](v27);
  v28 = v0[453];
  v1 = v28;
  v0[246] = v28;
  v2 = v28;
  v29 = sub_225FCEF44(v28);

  v0[248] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
  v3 = sub_226024FB0();
  sub_225F25E38(sub_225FCF714, 0, v30, MEMORY[0x277D84A98], v3, v31, (v0 + 247));
  sub_226022DA8((v8 + 1984));
  v7 = *(v8 + 1976);
  *(v8 + 1992) = v7;

  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (*(v8 + 2488))(0);

  MEMORY[0x277D82BD8](v7);

  sub_225FBD100(*(v8 + 2472));
  sub_2260215F0(&unk_2260A0F50);

  v4 = *(*(v8 + 1936) + 8);

  return v4();
}

uint64_t sub_225FBD100(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FA1508;
  v57 = sub_225EF7B84;
  v61 = sub_22601D2C0;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225FBDCD4(void *a1)
{
  v8 = [a1 task];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_226099AA8();
    v12 = v2;
  }

  return v11;
}

uint64_t sub_225FBDDE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v19 = a1;
  v18 = a2;
  v10 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v16 = v10;
  v17 = a2;
  if (v10)
  {
    sub_226023224(&v16, &v14);
    if (v17)
    {
      v13 = v14;
      v12 = v17;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v6 = sub_22609A118();
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      sub_225EFE834(&v16);
      v7 = v6;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v14);
    goto LABEL_9;
  }

  if (v17)
  {
LABEL_9:
    sub_2260231DC(&v16);
    v7 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v16);
  v7 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v10);
  if (v7)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v5 = *a1;
    MEMORY[0x277D82BE0](*a1);
    v15 = v5;
    MEMORY[0x277D82BE0](a2);
    v4 = *a1;
    *a1 = a2;
    MEMORY[0x277D82BD8](v4);
    *a3 = 1;
    MEMORY[0x277D82BE0](v5);
    *(a3 + 8) = v5;
    return MEMORY[0x277D82BD8](v5);
  }

  return result;
}

uint64_t sub_225FBE028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[6] = 0;
  v4[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v4[9] = swift_task_alloc();
  v4[5] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[6] = v3;

  return MEMORY[0x2822009F8](sub_225FBE138, 0, 0);
}

uint64_t sub_225FBE138()
{
  v6 = v0[9];
  v0[4] = v0;
  v1 = sub_226099DA8();
  (*(*(v1 - 8) + 56))(v6, 1);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = sub_225F38F2C(0, 0, v6, &unk_2260A0990, v2, MEMORY[0x277D84F78] + 8);
  v0[10] = v3;
  v0[7] = v3;
  v4 = swift_task_alloc();
  *(v7 + 88) = v4;
  *v4 = *(v7 + 32);
  v4[1] = sub_225FBE2A0;

  return sub_225FD95D4();
}

uint64_t sub_225FBE2A0()
{
  *(*v0 + 32) = *v0;

  return MEMORY[0x2822009F8](sub_225FBE3B8, 0, 0);
}

uint64_t sub_225FBE3B8()
{
  *(v0 + 32) = v0;
  sub_226099E38();

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t *sub_225FBE488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = a5;
  v33 = a4;
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v46 = a1;
  v44 = a2;
  v45 = a3;
  v43 = a4;
  v42 = a5;
  v38 = *a1;
  sub_2260998E8();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  v39 = sub_2260998C8();

  if (v39 >= 5)
  {
    v30 = sub_225FBE818();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_226099928();
  }

  sub_2260998E8();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD8, &qword_2260A0CC8) - 8) + 64);
  v24 = &v13;
  v25 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v13);
  v28 = &v13 - v25;
  v26 = &v13 - v25;
  v27 = (&v13 + *(v37 + 48) - v25);
  v6 = sub_226098A78();
  (*(*(v6 - 8) + 16))(v28, v33);
  v29 = [v32 language];
  if (v29)
  {
    v23 = v29;
    v18 = v29;
    v19 = sub_226099A08();
    v20 = v7;

    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v16 = v22;
  v17 = v21;
  if (v22)
  {
    v14 = v17;
    v15 = v16;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 466, 0);
    __break(1u);
  }

  v8 = v26;
  v9 = v37;
  v10 = v27;
  v11 = v15;
  v13 = v31;
  *v27 = v14;
  v10[1] = v11;
  (*(*(v9 - 8) + 56))(v8, 0, 1);
  v40 = v35;
  v41 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  sub_226099948();
  return v24;
}

uint64_t sub_225FBE834()
{
  v1 = sub_225F834E0();
  os_unfair_lock_lock(v1);
  sub_225FBE908(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  sub_225F1CB98(v1);
  return v2;
}

uint64_t sub_225FBE908@<X0>(uint64_t *a2@<X8>)
{
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  *a2 = sub_2260998C8();
}

uint64_t sub_225FBE9D0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v36 = v17 - v32;
  sub_225F317FC(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_225FBECD4(uint64_t a1, uint64_t a2)
{
  v16[2] = 0;
  v16[3] = a1;
  v16[4] = a2;
  sub_2260998E8();
  v16[0] = sub_226099AA8();
  v16[1] = v2;
  v15[2] = a1;
  v15[3] = a2;
  v13 = MEMORY[0x22AA72BD0](v16[0], v2, a1, a2);
  sub_225EFE6BC(v16);
  if (v13)
  {

    return sub_226099AA8();
  }

  else
  {

    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v15[0] = sub_226099A08();
    v15[1] = v3;
    v14[2] = a1;
    v14[3] = a2;
    v9 = MEMORY[0x22AA72BD0](v15[0], v3, a1, a2);
    sub_225EFE6BC(v15);
    MEMORY[0x277D82BD8](@"SiriDictation");
    if (v9)
    {
    }

    else
    {

      sub_2260998E8();
      MEMORY[0x277D82BE0](@"SearchOrMessaging");
      v14[0] = sub_226099A08();
      v14[1] = v4;
      v8 = MEMORY[0x22AA72BD0](v14[0], v4, a1, a2);
      sub_225EFE6BC(v14);
      MEMORY[0x277D82BD8](@"SearchOrMessaging");
      if ((v8 & 1) == 0)
      {

        MEMORY[0x277D82BE0](@"Dictation");
        v6 = sub_226099A08();
        MEMORY[0x277D82BD8](@"Dictation");
        return v6;
      }
    }

    MEMORY[0x277D82BE0](@"Assistant");
    v7 = sub_226099A08();
    MEMORY[0x277D82BD8](@"Assistant");
    return v7;
  }
}

uint64_t sub_225FBEFBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  v12 = [a1 task];
  if (v12)
  {
    v6 = sub_226099A08();
    v7 = v2;
    MEMORY[0x277D82BD8](v12);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v9)
  {
    v4 = v8;
    v5 = v9;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 687, 0);
    __break(1u);
  }

  static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v4, v5, [a1 detectUtterances], a2);
}

uint64_t sub_225FBF164(uint64_t a1, uint64_t a2)
{
  *(v3 + 464) = v2;
  *(v3 + 456) = a2;
  *(v3 + 448) = a1;
  *(v3 + 296) = v3;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 656) = 0;
  *(v3 + 664) = 0;
  *(v3 + 352) = 0;
  *(v3 + 360) = 0;
  *(v3 + 672) = 0;
  *(v3 + 376) = 0;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0;
  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  v4 = sub_226098BF8();
  *(v3 + 472) = v4;
  *(v3 + 480) = *(v4 - 8);
  *(v3 + 488) = swift_task_alloc();
  v5 = sub_226098C58();
  *(v3 + 496) = v5;
  *(v3 + 504) = *(v5 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  v6 = sub_226098C38();
  *(v3 + 552) = v6;
  *(v3 + 560) = *(v6 - 8);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;
  *(v3 + 320) = v2;

  return MEMORY[0x2822009F8](sub_225EEE090, 0, 0);
}

uint64_t sub_225FBF408()
{
  v1 = *(v0 + 624);
  *(v0 + 296) = v0;
  sub_225F39778(v1);

  return MEMORY[0x2822009F8](sub_225FBF48C, 0, 0);
}

uint64_t sub_225FBF48C()
{
  v54 = v0;
  v40 = v0[75];
  v39 = v0[74];
  v38 = v0[72];
  v1 = v0[64];
  v37 = v0[62];
  v0[37] = v0;
  v2 = sub_225F7E9BC();
  v38(v1, v2, v37);
  sub_2260998E8();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v47 = sub_226098C48();
  v48 = sub_22609A088();
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225EF7450;
  *(v42 + 24) = v41;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_225EF7B84;
  *(v45 + 24) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v46 = v3;

  *v46 = sub_225EF7434;
  v46[1] = v43;

  v46[2] = sub_225EF7434;
  v46[3] = v44;

  v46[4] = sub_225EF7B90;
  v46[5] = v45;
  sub_225EF5418();

  if (os_log_type_enabled(v47, v48))
  {
    v4 = *(v36 + 608);
    buf = sub_22609A188();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v34 = sub_225EF5468(0, v32, v32);
    v35 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v49 = buf;
    v50 = v34;
    v51 = v35;
    sub_225EF54BC(2, &v49);
    sub_225EF54BC(1, &v49);
    v52 = sub_225EF7434;
    v53 = v43;
    sub_225EF73E8(&v52, &v49, &v50, &v51);
    if (v4)
    {
    }

    v52 = sub_225EF7434;
    v53 = v44;
    sub_225EF73E8(&v52, &v49, &v50, &v51);
    v52 = sub_225EF7B90;
    v53 = v45;
    sub_225EF73E8(&v52, &v49, &v50, &v51);
    _os_log_impl(&dword_225EEB000, v47, v48, "Cached evaluation record with interactionId: %s", buf, 0xCu);
    sub_225EF7AF4(v34, 0, v32);
    sub_225EF7AF4(v35, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v27 = *(v36 + 512);
  v28 = *(v36 + 496);
  v26 = *(v36 + 504);
  MEMORY[0x277D82BD8](v47);
  (*(v26 + 8))(v27, v28);

  v30 = *(v36 + 448);
  v29 = (*(v36 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  *v29 = 0;

  swift_endAccess();
  v31 = [v30 applicationName];
  if (v31)
  {
    v22 = sub_226099A08();
    v23 = v6;
    MEMORY[0x277D82BD8](v31);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  sub_2260998E8();
  v7 = sub_225F7F250();
  v20 = *v7;
  v21 = v7[1];
  sub_2260998E8();
  sub_2260998E8();
  *(v36 + 16) = v24;
  *(v36 + 24) = v25;
  *(v36 + 32) = v20;
  *(v36 + 40) = v21;
  if (*(v36 + 24))
  {
    sub_225F4C5E0((v36 + 16), (v36 + 248));
    if (*(v36 + 40))
    {
      *(v36 + 264) = *(v36 + 248);
      *(v36 + 280) = *(v36 + 32);
      v18 = MEMORY[0x22AA72BD0](*(v36 + 264), *(v36 + 272), *(v36 + 280), *(v36 + 288));
      sub_225EFE6BC(v36 + 280);
      sub_225EFE6BC(v36 + 264);
      sub_225EFE6BC(v36 + 16);
      v19 = v18;
      goto LABEL_15;
    }

    sub_225EFE6BC(v36 + 248);
    goto LABEL_17;
  }

  if (*(v36 + 40))
  {
LABEL_17:
    sub_225F4C1C0(v36 + 16);
    v19 = 0;
    goto LABEL_15;
  }

  sub_225EFE6BC(v36 + 16);
  v19 = 1;
LABEL_15:

  if (v19 & 1) != 0 && (*(v36 + 641))
  {
    v15 = *(v36 + 464);
    v17 = sub_225FFE720(*(v36 + 448));
    v16 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    *v16 = v17;

    swift_endAccess();
  }

  v13 = *(v36 + 568);
  v12 = *(v36 + 552);
  v14 = *(v36 + 488);
  v10 = *(v36 + 472);
  v11 = *(v36 + 560);
  v9 = *(v36 + 480);

  sub_225EF5A0C((v36 + 336));
  sub_225EFE834((v36 + 328));

  (*(v9 + 8))(v14, v10);
  (*(v11 + 8))(v13, v12);

  v8 = *(*(v36 + 296) + 8);

  return v8();
}

uint64_t sub_225FC0298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a5;
  v5[9] = a4;
  v5[8] = a3;
  v5[7] = a2;
  v5[6] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return MEMORY[0x2822009F8](sub_225FC0304, 0, 0);
}

uint64_t sub_225FC0304()
{
  v0[2] = v0;
  v6 = sub_226098A78();
  v0[11] = v6;
  v5 = *(v6 - 8);
  v0[12] = v5;
  v8 = swift_task_alloc();
  v0[13] = v8;
  (*(v5 + 16))();
  v1 = swift_task_alloc();
  v7[14] = v1;
  *v1 = v7[2];
  v1[1] = sub_225FC0478;
  v2 = v7[8];
  v3 = v7[7];

  return sub_225FC073C(v3, v2, v8);
}

uint64_t sub_225FC0478(uint64_t a1)
{
  v5 = *v2;
  v5[2] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_225FC0674;
  }

  else
  {
    (*(v5[12] + 8))();

    v3 = sub_225FC061C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FC061C()
{
  v1 = v0[15];
  v2 = v0[6];
  v0[2] = v0;
  *v2 = v1;
  return (*(v0[2] + 8))();
}

uint64_t sub_225FC0674()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_225FC073C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a2;
  *(v4 + 144) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 336) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 136) = 0;
  v5 = sub_2260997E8();
  *(v4 + 160) = v5;
  *(v4 + 168) = *(v5 - 8);
  *(v4 + 176) = swift_task_alloc();
  v6 = sub_226098C58();
  *(v4 + 184) = v6;
  *(v4 + 192) = *(v6 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  v7 = swift_task_alloc();
  *(v10 + 232) = v7;
  *v7 = *(v10 + 48);
  v7[1] = sub_225FC099C;

  return sub_225FD00D4(a1, a3);
}

uint64_t sub_225FC099C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 48) = *v1;
  *(v3 + 240) = a1;

  return MEMORY[0x2822009F8](sub_225FC0AB8, 0, 0);
}

uint64_t sub_225FC0AB8()
{
  v96 = v0;
  v1 = *(v0 + 240);
  *(v0 + 48) = v0;
  if (v1)
  {
    v76 = *(v85 + 240);
    v2 = *(v85 + 224);
    v75 = *(v85 + 184);
    v74 = *(v85 + 192);
    *(v85 + 136) = v76;
    v3 = sub_225F7E9BC();
    (*(v74 + 16))(v2, v3, v75);
    sub_2260998E8();
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    oslog = sub_226098C48();
    v84 = sub_22609A078();
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_22601FAEC;
    *(v78 + 24) = v77;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_225F2D374;
    *(v81 + 24) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v82 = v4;

    *v82 = sub_225EF7434;
    v82[1] = v79;

    v82[2] = sub_225EF7434;
    v82[3] = v80;

    v82[4] = sub_225EF71D0;
    v82[5] = v81;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v84))
    {
      buf = sub_22609A188();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v72 = sub_225EF5468(0, v70, v70);
      v73 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v91 = buf;
      v92 = v72;
      v93 = v73;
      sub_225EF54BC(0, &v91);
      sub_225EF54BC(1, &v91);
      v94 = sub_225EF7434;
      v95 = v79;
      sub_225EF73E8(&v94, &v91, &v92, &v93);
      v94 = sub_225EF7434;
      v95 = v80;
      sub_225EF73E8(&v94, &v91, &v92, &v93);
      v94 = sub_225EF71D0;
      v95 = v81;
      sub_225EF73E8(&v94, &v91, &v92, &v93);
      _os_log_impl(&dword_225EEB000, oslog, v84, "Visual entities extracted count: %ld", buf, 0xCu);
      sub_225EF7AF4(v72, 0, v70);
      sub_225EF7AF4(v73, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v67 = *(v85 + 224);
    v68 = *(v85 + 184);
    v66 = *(v85 + 192);
    MEMORY[0x277D82BD8](oslog);
    (*(v66 + 8))(v67, v68);
    v69 = v76;
    goto LABEL_31;
  }

  v5 = *(v85 + 216);
  v61 = *(v85 + 184);
  v60 = *(v85 + 192);
  v6 = sub_225F7E9BC();
  v62 = *(v60 + 16);
  *(v85 + 248) = v62;
  *(v85 + 256) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62(v5, v6, v61);
  log = sub_226098C48();
  v63 = sub_22609A078();
  *(v85 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v65 = sub_22609A4F8();
  if (os_log_type_enabled(log, v63))
  {
    v56 = sub_22609A188();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v57 = sub_225EF5468(0, v55, v55);
    v58 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v85 + 104) = v56;
    *(v85 + 112) = v57;
    *(v85 + 120) = v58;
    sub_225EF54BC(0, (v85 + 104));
    sub_225EF54BC(0, (v85 + 104));
    *(v85 + 128) = v65;
    v59 = swift_task_alloc();
    v59[2] = v85 + 104;
    v59[3] = v85 + 112;
    v59[4] = v85 + 120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, log, v63, "Fetch visual entities completed", v56, 2u);
    sub_225EF7AF4(v57, 0, v55);
    sub_225EF7AF4(v58, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v50 = *(v85 + 216);
  v51 = *(v85 + 184);
  v53 = *(v85 + 144);
  v49 = *(v85 + 192);
  MEMORY[0x277D82BD8](log);
  v52 = *(v49 + 8);
  *(v85 + 272) = v52;
  *(v85 + 280) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v52(v50, v51);
  v54 = [v53 task];
  if (v54)
  {
    v45 = sub_226099A08();
    v46 = v7;
    MEMORY[0x277D82BD8](v54);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  *(v85 + 288) = v48;
  if (!v48)
  {
    goto LABEL_30;
  }

  v8 = *(v85 + 144);
  *(v85 + 16) = v47;
  *(v85 + 24) = v48;
  v44 = [v8 applicationName];
  if (v44)
  {
    v40 = sub_226099A08();
    v41 = v9;
    MEMORY[0x277D82BD8](v44);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  *(v85 + 296) = v43;
  if (!v43)
  {

LABEL_30:
    v69 = 0;
    goto LABEL_31;
  }

  *(v85 + 32) = v42;
  *(v85 + 40) = v43;
  v37 = objc_opt_self();
  sub_2260998E8();
  v38 = sub_2260999F8();

  v39 = [v37 isTaskDictationSpecific_];
  MEMORY[0x277D82BD8](v38);
  sub_2260998E8();
  if ((v39 & 1) == 0)
  {

    *(v85 + 336) = 0;
LABEL_29:

    goto LABEL_30;
  }

  v36 = sub_226099B18() ^ 1;

  *(v85 + 336) = v36 & 1;
  if ((v36 & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = *(v85 + 208);
  v27 = *(v85 + 184);
  v11 = sub_225F7E9BC();
  v62(v10, v11, v27);
  sub_2260998E8();
  v28 = swift_allocObject();
  *(v28 + 16) = v47;
  *(v28 + 24) = v48;
  v34 = sub_226098C48();
  v35 = sub_22609A078();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7450;
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225EF7B84;
  *(v32 + 24) = v29;
  sub_22609A4F8();
  v33 = v12;

  *v33 = sub_225EF7434;
  v33[1] = v30;

  v33[2] = sub_225EF7434;
  v33[3] = v31;

  v33[4] = sub_225EF7B90;
  v33[5] = v32;
  sub_225EF5418();

  if (os_log_type_enabled(v34, v35))
  {
    v24 = sub_22609A188();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v25 = sub_225EF5468(0, v23, v23);
    v26 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v86 = v24;
    v87 = v25;
    v88 = v26;
    sub_225EF54BC(2, &v86);
    sub_225EF54BC(1, &v86);
    v89 = sub_225EF7434;
    v90 = v30;
    sub_225EF73E8(&v89, &v86, &v87, &v88);
    v89 = sub_225EF7434;
    v90 = v31;
    sub_225EF73E8(&v89, &v86, &v87, &v88);
    v89 = sub_225EF7B90;
    v90 = v32;
    sub_225EF73E8(&v89, &v86, &v87, &v88);
    _os_log_impl(&dword_225EEB000, v34, v35, "Fetching contextual data for task: %s", v24, 0xCu);
    sub_225EF7AF4(v25, 0, v23);
    sub_225EF7AF4(v26, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = *(v85 + 208);
  v17 = *(v85 + 184);
  v21 = *(v85 + 176);
  v19 = *(v85 + 160);
  v20 = *(v85 + 152);
  v18 = *(v85 + 168);
  MEMORY[0x277D82BD8](v34);
  v52(v16, v17);
  type metadata accessor for CESAContextualData(0);
  (*(v18 + 16))(v21, v20, v19);
  sub_2260998E8();
  sub_2260998E8();
  v22 = CESAContextualData.__allocating_init(assets:taskName:applicationName:)(v21, v47, v48, v42, v43);
  *(v85 + 304) = v22;
  *(v85 + 88) = v22;

  if (!v22)
  {

    v69 = 0;
LABEL_31:

    v15 = *(*(v85 + 48) + 8);

    return v15(v69);
  }

  v13 = swift_task_alloc();
  *(v85 + 312) = v13;
  *v13 = *(v85 + 48);
  v13[1] = sub_225FC2178;

  return CESAContextualData.fetchNamedEntities(timeInterval:)(0.0);
}

uint64_t sub_225FC2178(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[40] = a1;
  v5[41] = v1;

  if (v1)
  {
    v3 = sub_225FC246C;
  }

  else
  {

    v3 = sub_225FC22FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FC22FC()
{
  v3 = *(v0 + 320);
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1(v3);
}

uint64_t sub_225FC246C()
{
  v34 = v0;
  v19 = v0[41];
  v18 = v0[31];
  v1 = v0[25];
  v17 = v0[23];
  v0[6] = v0;

  v2 = v19;
  v0[12] = v19;
  v3 = sub_225F7E9BC();
  v18(v1, v3, v17);
  v4 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_225F3EAE8();

  v27 = sub_226098C48();
  v28 = sub_22609A098();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3EA68;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA70;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225F3E1C8;
  *(v25 + 24) = v22;
  sub_22609A4F8();
  v26 = v5;

  *v26 = sub_225EF7434;
  v26[1] = v23;

  v26[2] = sub_225EF7434;
  v26[3] = v24;

  v26[4] = sub_225F3E358;
  v26[5] = v25;
  sub_225EF5418();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_22609A188();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(1, v12, v12);
    v15 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    sub_225EF54BC(2, &v29);
    sub_225EF54BC(1, &v29);
    v32 = sub_225EF7434;
    v33 = v23;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225EF7434;
    v33 = v24;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225F3E358;
    v33 = v25;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_225EEB000, v27, v28, "Error fetching contextual data: %@", buf, 0xCu);
    sub_225EF7AF4(v14, 1, v12);
    sub_225EF7AF4(v15, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v16[41];
  v10 = v16[34];
  v8 = v16[25];
  v9 = v16[23];
  MEMORY[0x277D82BD8](v27);
  v10(v8, v9);

  v6 = *(v16[6] + 8);

  return v6(0);
}

uint64_t sub_225FC2CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a7;
  v7[22] = a6;
  v7[21] = a1;
  v7[18] = v7;
  v7[19] = 0;
  v7[20] = 0;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v7[19] = a4;
  v7[20] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = swift_task_alloc();
  *(v10 + 192) = v8;
  *v8 = *(v10 + 144);
  v8[1] = sub_225FC2DC4;

  return sub_225FC31F4(a4, a5);
}

uint64_t sub_225FC2DC4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[18] = *v3;
  v6[25] = a1;
  v6[26] = a2;

  if (v2)
  {
    v4 = *(v6[18] + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_225FC2F70, 0, 0);
  }
}

uint64_t sub_225FC2F70()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[22];
  v0[18] = v0;
  v0[8] = v2;
  v0[9] = v1;
  v0[10] = v2;
  v0[11] = v1;
  v0[12] = v4;
  v0[13] = v3;
  sub_225F4C5E0(v0 + 10, v0 + 2);
  sub_225F4C5E0(v0 + 12, v0 + 4);
  if (v0[3])
  {
    sub_225F4C5E0((v9 + 16), (v9 + 112));
    if (*(v9 + 40))
    {
      *(v9 + 128) = *(v9 + 32);
      v7 = MEMORY[0x22AA72BD0](*(v9 + 112), *(v9 + 120), *(v9 + 128), *(v9 + 136));
      sub_225EFE6BC(v9 + 128);
      sub_225EFE6BC(v9 + 112);
      sub_225EFE6BC(v9 + 16);
      v8 = v7;
      goto LABEL_7;
    }

    sub_225EFE6BC(v9 + 112);
    goto LABEL_10;
  }

  if (*(v9 + 40))
  {
LABEL_10:
    sub_225F4C1C0(v9 + 16);
    v8 = 0;
    goto LABEL_7;
  }

  sub_225EFE6BC(v9 + 16);
  v8 = 1;
LABEL_7:
  **(v9 + 168) = (v8 ^ 1) & 1;

  v5 = *(*(v9 + 144) + 8);

  return v5();
}

uint64_t sub_225FC31F4(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = sub_226098C58();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = v2;

  return MEMORY[0x2822009F8](sub_225FC3334, 0, 0);
}

uint64_t sub_225FC3334()
{
  v1 = v0[10];
  v0[4] = v0;
  v12 = [v1 location];
  v0[15] = v12;
  if (v12)
  {
    v11[8] = v12;
    [v12 0x1FB6D2578];
    v9 = v2;
    [v12 0x1FB6D2578];
    v10 = v3;
    v4 = swift_task_alloc();
    v5.n128_u64[0] = v9;
    v6.n128_u64[0] = v10;
    v11[16] = v4;
    *v4 = v11[4];
    v4[1] = sub_225FC351C;

    return MEMORY[0x28212C2E0](v5, v6);
  }

  else
  {

    v7 = *(v11[4] + 8);

    return v7(0);
  }
}

uint64_t sub_225FC351C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[4] = *v3;
  v6[17] = v2;
  v6[18] = a1;
  v6[19] = a2;

  if (v2)
  {
    v4 = sub_225FC39E8;
  }

  else
  {
    v4 = sub_225FC3690;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225FC3690()
{
  v1 = v0[19];
  v2 = v0[18];
  v15 = v0[10];
  v0[4] = v0;
  v0[2] = v2;
  v0[3] = v1;
  v13 = [objc_opt_self() sharedInstance];
  sub_2260998E8();
  v14 = sub_2260999F8();

  v16 = [v15 language];
  if (v16)
  {
    sub_226099A08();
    v10 = v3;
    MEMORY[0x277D82BD8](v16);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 749, 0);
  }

  v9 = v12[19];
  v7 = v12[15];
  v6 = sub_2260999F8();

  [v13 updateGeoLMAssetsInfoDictWithRegionId:v14 language:v6];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v7);
  v8 = v12[18];

  v4 = *(v12[4] + 8);

  return v4(v8, v9);
}

uint64_t sub_225FC39E8()
{
  v35 = v0;
  v20 = v0[17];
  v1 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v0[4] = v0;
  v2 = v20;
  v0[9] = v20;
  v3 = sub_225F7E9BC();
  (*(v18 + 16))(v1, v3, v19);
  v4 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_225F3EAE8();

  v28 = sub_226098C48();
  v29 = sub_22609A098();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA68;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3EA70;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v27 = v5;

  *v27 = sub_225EF7434;
  v27[1] = v24;

  v27[2] = sub_225EF7434;
  v27[3] = v25;

  v27[4] = sub_225F3E358;
  v27[5] = v26;
  sub_225EF5418();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_22609A188();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(1, v13, v13);
    v16 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    sub_225EF54BC(2, &v30);
    sub_225EF54BC(1, &v30);
    v33 = sub_225EF7434;
    v34 = v24;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225EF7434;
    v34 = v25;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225F3E358;
    v34 = v26;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_225EEB000, v28, v29, "Error getting geoLMRegionID: %@", buf, 0xCu);
    sub_225EF7AF4(v15, 1, v13);
    sub_225EF7AF4(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v10 = v17[17];
  v12 = v17[14];
  v9 = v17[12];
  v11 = v17[15];
  v8 = v17[13];
  MEMORY[0x277D82BD8](v28);
  (*(v8 + 8))(v12, v9);
  swift_willThrow();

  MEMORY[0x277D82BD8](v11);

  v6 = *(v17[4] + 8);

  return v6();
}

uint64_t sub_225FC40E0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v50 = &v9 - v46;

  v56 = v48;
  v57 = v49;
  sub_225EF7BD0(v47, v50);
  v51 = sub_226099DA8();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    sub_225EF7CF8(v50);
    v38 = 0;
  }

  else
  {
    v37 = sub_226099D98();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1C00;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = sub_226099D48();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;
  sub_2260998E8();
  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v19 = v40;
    v20 = sub_226099A68();

    sub_22601DDCC(v20 + 32, &v54);
    if (v7)
    {
      __break(1u);
    }

    v18 = v54;

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v17 = v21;
  if (v21)
  {
    v12 = v17;
    v11 = v17;
    sub_225EF7CF8(v47);

    v13 = v11;
  }

  else
  {

    sub_225EF7CF8(v47);
    v14 = v56;
    v15 = v57;

    v16 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v16 = v55;
    }

    v13 = swift_task_create();
  }

  v10 = v13;

  return v10;
}

uint64_t sub_225FC4648(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v94 = a6;
  v93 = a5;
  v92 = a4;
  v106 = a3;
  v91 = a2;
  v102 = a1;
  v80 = a6;
  ObjectType = swift_getObjectType();
  v95 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v82 = 0;
  v83 = sub_226098E68();
  v84 = *(v83 - 8);
  v85 = v84;
  v87 = *(v84 + 64);
  MEMORY[0x28223BE20](0);
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v29[-v89];
  MEMORY[0x28223BE20](v7);
  v88 = &v29[-v89];
  MEMORY[0x28223BE20](v8);
  v90 = &v29[-v89];
  v119 = &v29[-v89];
  v104 = sub_226098FC8();
  v96 = v104;
  v97 = *(v104 - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = &v29[-v101];
  MEMORY[0x28223BE20](v9);
  v103 = &v29[-v101];
  v118 = v102;
  v117 = v10;
  v116 = v11;
  v114 = v12;
  v115 = v13;
  v113 = v14;
  v112 = v6;
  v105 = sub_22609A4F8();
  sub_22601F4EC(v15);
  v111 = sub_226099F08();
  if ([v106 censorSpeech])
  {
    (*(v98 + 104))(v100, *MEMORY[0x277CDCB18], v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v98 + 8))(v103, v96);
  }

  if ([v106 enableEmojiRecognition])
  {
    (*(v98 + 104))(v100, *MEMORY[0x277CDCB28], v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v98 + 8))(v103, v96);
  }

  if ([v106 enableAutoPunctuation])
  {
    (*(v98 + 104))(v100, *MEMORY[0x277CDCB10], v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v98 + 8))(v103, v96);
  }

  if ([v106 continuousListening])
  {
    (*(v98 + 104))(v100, *MEMORY[0x277CDCB20], v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v98 + 8))(v103, v96);
  }

  v76 = sub_226098948();
  v110 = sub_226099848();
  v77 = objc_opt_self();
  v78 = [v106 language];
  if (v78)
  {
    v75 = v78;
    v70 = v78;
    v71 = sub_226099A08();
    v72 = v16;

    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v68 = v74;
  v69 = v73;
  if (v74)
  {
    v66 = v69;
    v67 = v68;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1010, 0);
    __break(1u);
  }

  v17 = v82;
  v59 = v67;
  v60 = sub_2260999F8();

  v61 = [v77 speechProfilePathsWithLanguage_];

  v63 = sub_226099C88();
  v62 = v63;
  v109 = v63;

  v108 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v18 = sub_225F156F8();
  v65 = sub_225F15970(sub_225FDB7E0, 0, v64, v76, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);
  if (v17)
  {
    result = 0;
    __break(1u);
  }

  else
  {
    v47 = v65;
    sub_2260998E8();
    v110 = v47;

    v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
    v48 = v29;
    v20.n128_f64[0] = MEMORY[0x28223BE20](v29);
    v57 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
    v49 = &v29[-v57];
    v50 = *(v21 - 8);
    v51 = *(v50 + 56);
    v52 = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v51(&v29[-v57], 1, v20);
    v53 = [v106 farField];
    sub_2260998E8();
    v55 = [v106 modelOverrideURL];
    v56 = v29;
    v22 = MEMORY[0x28223BE20](v55);
    v58 = &v29[-v57];
    if (v23)
    {
      v46 = v55;
      v45 = v55;
      v44 = v29;
      MEMORY[0x28223BE20](v55);
      v43 = &v29[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
      sub_226098908();
      (*(v50 + 32))(v58, v43, v76);
      (v51)(v58, 0, 1, v76);
    }

    else
    {
      (v51)(v58, 1, 1, v76, v22);
    }

    v36 = (v79 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
    v37 = &v107;
    v40 = 0;
    swift_beginAccess();
    v39 = *v36;
    sub_2260998E8();
    swift_endAccess();
    v38 = sub_225F49850();
    sub_225F49850();
    sub_226098DF8();
    (*(v85 + 32))(v90, v88, v83);
    v41 = v111;
    sub_2260998E8();
    (*(v85 + 16))(v86, v90, v83);
    v42 = [v106 enableVoiceCommands];
    v25 = v106;
    if (v42)
    {
      v35 = 1;
    }

    else
    {
      v35 = [v106 shouldGenerateVoiceCommandCandidates];
    }

    v30 = v35;

    v26 = sub_225F49850();
    v34 = sub_225FDA5C4(v102, v91, v41, v86, v30 & 1, v26 & 1);
    v33 = v27;
    v32 = *(v85 + 8);
    v31 = v85 + 8;
    v32(v86, v83);

    v32(v90, v83);
    sub_225EFE6E8(&v110);
    sub_225EFE6E8(&v111);
    return v34;
  }

  return result;
}

uint64_t sub_225FC53EC(uint64_t a1, void *a2)
{
  v96 = a2;
  v88 = a1;
  v85 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v82 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A00, &qword_2260A09C8);
  v83 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v24 - v83;
  v86 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v87 = &v24 - v86;
  v89 = sub_226098C58();
  v90 = *(v89 - 8);
  v91 = v90;
  v92 = *(v90 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v24 - v94;
  v5 = MEMORY[0x28223BE20](v4);
  v95 = &v24 - v94;
  v113 = v6;
  v112 = v7;
  v111 = v2;
  v97 = [v7 disableDeliveringAsrFeatures];
  v8 = v96;
  if (v97)
  {
    [v96 endpointStart];
    v81 = v9 > 0.0;
  }

  else
  {
    v81 = 0;
  }

  v80 = v81;

  if (v80)
  {
    v10 = v95;
    v11 = sub_225F7E9BC();
    (*(v91 + 16))(v10, v11, v89);
    v78 = sub_226098C48();
    v75 = v78;
    v77 = sub_22609A098();
    v76 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v79 = sub_22609A4F8();
    if (os_log_type_enabled(v78, v77))
    {
      v12 = v82;
      v66 = sub_22609A188();
      v62 = v66;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v64 = 0;
      v67 = sub_225EF5468(0, v63, v63);
      v65 = v67;
      v68 = sub_225EF5468(v64, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v101[0] = v66;
      v100 = v67;
      v99 = v68;
      v69 = 0;
      v70 = v101;
      sub_225EF54BC(0, v101);
      sub_225EF54BC(v69, v70);
      v98 = v79;
      v71 = &v24;
      MEMORY[0x28223BE20](&v24);
      v72 = &v24 - 6;
      *(&v24 - 4) = v13;
      *(&v24 - 3) = &v100;
      *(&v24 - 2) = &v99;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v74 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v75, v76, "EndpointStart > 0 but asr features delivery is disabled!", v62, 2u);
        v60 = 0;
        sub_225EF7AF4(v65, 0, v63);
        sub_225EF7AF4(v68, v60, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v61 = v74;
      }
    }

    else
    {

      v61 = v82;
    }

    v58 = v61;

    (*(v91 + 8))(v95, v89);
    v59 = v58;
  }

  else
  {
    v59 = v82;
  }

  v57 = v59;
  [v96 endpointStart];
  if (v14 >= 0.0)
  {
    v36 = v57;
  }

  else
  {
    v15 = v93;
    v16 = sub_225F7E9BC();
    (*(v91 + 16))(v15, v16, v89);
    v55 = sub_226098C48();
    v52 = v55;
    v54 = sub_22609A098();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v56 = sub_22609A4F8();
    if (os_log_type_enabled(v55, v54))
    {
      v17 = v57;
      v43 = sub_22609A188();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v41 = 0;
      v44 = sub_225EF5468(0, v40, v40);
      v42 = v44;
      v45 = sub_225EF5468(v41, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v104 = v43;
      v103 = v44;
      v102 = v45;
      v46 = 0;
      v47 = &v104;
      sub_225EF54BC(0, &v104);
      sub_225EF54BC(v46, v47);
      v101[2] = v56;
      v48 = &v24;
      MEMORY[0x28223BE20](&v24);
      v49 = &v24 - 6;
      *(&v24 - 4) = v18;
      *(&v24 - 3) = &v103;
      *(&v24 - 2) = &v102;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v51 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v52, v53, "EndpointStart < 0", v39, 2u);
        v37 = 0;
        sub_225EF7AF4(v42, 0, v40);
        sub_225EF7AF4(v45, v37, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v38 = v51;
      }
    }

    else
    {

      v38 = v57;
    }

    v35 = v38;

    (*(v91 + 8))(v93, v89);
    v36 = v35;
  }

  if ([v96 disableDeliveringAsrFeatures])
  {
    return 0;
  }

  [v96 endpointStart];
  v108 = sub_22609A0E8();
  v109 = v19;
  v110 = v20;
  v29 = v108;
  v28 = v19;
  v30 = v20;
  v27 = HIDWORD(v19);
  v105 = v108;
  v106 = v19;
  v107 = v20;
  v31 = 0;
  sub_226099378();
  v26 = sub_226099808();
  v25 = *(v26 - 8);
  (*(v25 + 16))(v87, v88);
  v21 = *(v25 + 56);
  v33 = 0;
  v32 = 1;
  v21(v87);
  sub_226099338();
  v22 = sub_226099348();
  (*(*(v22 - 8) + 56))(v84, v33, v32);
  return sub_226099368();
}

uint64_t sub_225FC5FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 8);
  MEMORY[0x277D82BE0](v6);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BE0](v6);
  *a2 = v6;
  return MEMORY[0x277D82BD8](v6);
}

uint64_t sub_225FC6040()
{
  v1[16] = v0;
  v1[14] = v1;
  v1[15] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[15] = v0;
  return MEMORY[0x2822009F8](sub_225FC6088, 0, 0);
}

uint64_t sub_225FC6088()
{
  v9 = *(v0 + 128);
  *(v0 + 112) = v0;
  v10 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask;
  v11 = (v9 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  if (*v11)
  {
    v7 = *(v9 + v10);
    v8[17] = v7;

    swift_endAccess();
    v1 = swift_task_alloc();
    v8[18] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
    *v1 = v8[14];
    v1[1] = sub_225FC62A0;

    return MEMORY[0x282200460](v8 + 11, v7, v2);
  }

  else
  {
    swift_endAccess();
    v3 = v8[16];
    v8[5] = 0;
    v8[6] = 0;
    v8[7] = 0;
    v6 = (v3 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    *v6 = 0;

    swift_endAccess();
    v4 = *(v8[14] + 8);

    return v4(0, 0);
  }
}

uint64_t sub_225FC62A0()
{
  *(*v0 + 112) = *v0;

  return MEMORY[0x2822009F8](sub_225FC63B8, 0, 0);
}

uint64_t sub_225FC63B8()
{
  *(v0 + 112) = v0;
  v6 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 104);

  v1 = *(v0 + 128);
  *(v0 + 40) = v6;
  *(v0 + 48) = v4 & 1;
  *(v0 + 56) = v7;
  v5 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  *v5 = 0;

  swift_endAccess();
  v2 = *(*(v0 + 112) + 8);

  return v2(v6, v4 & 1, v7);
}

uint64_t sub_225FC64E0()
{
  v1[10] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v2 = sub_226098C58();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[9] = v0;

  return MEMORY[0x2822009F8](sub_225FC65E0, 0, 0);
}

uint64_t sub_225FC65E0()
{
  v41 = v0;
  v1 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  (*(v17 + 16))(v1, v2, v18);
  MEMORY[0x277D82BE0](v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v34 = sub_226098C48();
  v35 = sub_22609A0A8();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3E198;
  *(v21 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225FF9548;
  *(v22 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v22;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225FF9578;
  *(v23 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F2D374;
  *(v32 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v33 = v3;

  *v33 = sub_225EF7434;
  v33[1] = v24;

  v33[2] = sub_225EF7434;
  v33[3] = v25;

  v33[4] = sub_225F3E358;
  v33[5] = v26;

  v33[6] = sub_225EF7434;
  v33[7] = v27;

  v33[8] = sub_225EF7434;
  v33[9] = v28;

  v33[10] = sub_225EF7B90;
  v33[11] = v29;

  v33[12] = sub_225EF7434;
  v33[13] = v30;

  v33[14] = sub_225EF7434;
  v33[15] = v31;

  v33[16] = sub_225EF71D0;
  v33[17] = v32;
  sub_225EF5418();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_22609A188();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(1, v12, v12);
    v15 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = buf;
    v37 = v14;
    v38 = v15;
    sub_225EF54BC(2, &v36);
    sub_225EF54BC(3, &v36);
    v39 = sub_225EF7434;
    v40 = v24;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v25;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225F3E358;
    v40 = v26;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v27;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v28;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7B90;
    v40 = v29;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v30;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF7434;
    v40 = v31;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    v39 = sub_225EF71D0;
    v40 = v32;
    sub_225EF73E8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_225EEB000, v34, v35, "%@ %s:%ld queue task enqueued", buf, 0x20u);
    sub_225EF7AF4(v14, 1, v12);
    sub_225EF7AF4(v15, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v8 = v16[13];
  v9 = v16[11];
  v10 = v16[10];
  v7 = v16[12];
  MEMORY[0x277D82BD8](v34);
  (*(v7 + 8))(v8, v9);
  MEMORY[0x277D82BE0](v10);
  v11 = swift_task_alloc();
  v16[14] = v11;
  *(v11 + 16) = v10;
  v4 = swift_task_alloc();
  v16[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A10, &qword_2260A09F0);
  *v4 = v16[8];
  v4[1] = sub_225FC715C;

  return sub_225FFB2A4((v16 + 2), 0, 0, sub_22601FAF4, v11, v5);
}

uint64_t sub_225FC715C()
{
  v2 = *(*v0 + 80);
  *(*v0 + 64) = *v0;

  return MEMORY[0x2822009F8](sub_225FC72B4, 0, 0);
}

uint64_t sub_225FC72B4()
{
  v0[8] = v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v5;

  v1 = *(v0[8] + 8);

  return v1(v3, v4, v5);
}

uint64_t sub_225FC73B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[59] = a8;
  v9[58] = a7;
  v9[57] = a5;
  v9[56] = a4;
  v9[55] = a2;
  v9[54] = a1;
  v9[26] = v9;
  v9[27] = 0;
  v9[28] = 0;
  v9[29] = 0;
  v9[30] = 0;
  v9[6] = 0;
  v9[7] = 0;
  v9[31] = 0;
  v9[32] = 0;
  v9[33] = 0;
  v9[8] = 0;
  v9[9] = 0;
  v9[10] = 0;
  v9[11] = 0;
  v9[12] = 0;
  v9[13] = 0;
  v9[34] = 0;
  v9[38] = 0;
  v9[14] = 0;
  v9[15] = 0;
  v9[16] = 0;
  v9[17] = 0;
  v9[18] = 0;
  v9[19] = 0;
  sub_2260991E8();
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[27] = a1;
  v9[28] = a2;
  v9[29] = a3;
  v9[30] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[31] = a7;
  v9[32] = a8;
  v9[33] = v8;
  v10 = swift_task_alloc();
  *(v19 + 512) = v10;
  *v10 = *(v19 + 208);
  v10[1] = sub_225FC7618;

  return MEMORY[0x28212BB90](a3);
}

uint64_t sub_225FC7618()
{
  *(*v0 + 208) = *v0;

  return MEMORY[0x2822009F8](sub_225FC7730, 0, 0);
}

uint64_t sub_225FC7730()
{
  v1 = *(v0 + 440);
  *(v0 + 208) = v0;
  v24 = [v1 prefixText];
  if (v24)
  {
    v19 = sub_226099A08();
    v20 = v2;
    MEMORY[0x277D82BD8](v24);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23[66] = v22;
  v23[65] = v21;
  v3 = v23[55];
  v23[8] = v21;
  v23[9] = v22;
  v18 = [v3 postfixText];
  if (v18)
  {
    v14 = sub_226099A08();
    v15 = v4;
    MEMORY[0x277D82BD8](v18);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v23[68] = v17;
  v23[67] = v16;
  v5 = v23[55];
  v23[10] = v16;
  v23[11] = v17;
  v13 = [v5 selectedText];
  if (v13)
  {
    v9 = sub_226099A08();
    v10 = v6;
    MEMORY[0x277D82BD8](v13);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v23[70] = v12;
  v23[69] = v11;
  v23[12] = v11;
  v23[13] = v12;
  v7 = swift_task_alloc();
  v23[71] = v7;
  *v7 = v23[26];
  v7[1] = sub_225FC7AF8;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC7AF8(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 208) = *v1;
  *(v3 + 576) = a1;

  return MEMORY[0x2822009F8](sub_225FC7C14, 0, 0);
}

uint64_t sub_225FC7C14()
{
  *(v0 + 208) = v0;
  sub_2260998E8();
  sub_2260991F8();

  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = *(v0 + 208);
  v1[1] = sub_225FC7CE8;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC7CE8(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 208) = *v1;
  *(v3 + 592) = a1;

  return MEMORY[0x2822009F8](sub_225FC7E04, 0, 0);
}

uint64_t sub_225FC7E04()
{
  *(v0 + 208) = v0;
  *(v0 + 272) = sub_226099188();

  if (*sub_225F7F4BC())
  {
    sub_2260991A8();
    v12[35] = sub_22609A4F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v12[36] = sub_22609A4F8();
    sub_226099948();
    sub_2260991D8();
    v12[37] = sub_22609A4F8();
    sub_226099948();
  }

  else
  {
    v8 = v12[66];
    v7 = v12[65];
    sub_2260991A8();
    v12[20] = v7;
    v12[21] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F25E38(sub_225FDB998, 0, v9, MEMORY[0x277D84A98], v11, v10, (v12 + 45));
    v12[46] = v12[45];
    if (v12[46])
    {
      v13 = v12[46];
    }

    else
    {
      v13 = sub_22609A4F8();
      if (v12[46])
      {
        sub_225EFE6E8(v12 + 46);
      }
    }

    v6 = v12[68];
    v5 = v12[67];
    v12[47] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v12[22] = v5;
    v12[23] = v6;
    sub_225F25E38(sub_225FDB998, 0, v9, MEMORY[0x277D84A98], v11, v10, (v12 + 48));
    v12[49] = v12[48];
    if (v12[49])
    {
      v14 = v12[49];
    }

    else
    {
      v14 = sub_22609A4F8();
      if (v12[49])
      {
        sub_225EFE6E8(v12 + 49);
      }
    }

    v4 = v12[70];
    v3 = v12[69];
    v12[50] = v14;
    sub_226099948();
    sub_2260991D8();
    v12[24] = v3;
    v12[25] = v4;
    sub_225F25E38(sub_225FDB998, 0, v9, MEMORY[0x277D84A98], v11, v10, (v12 + 51));
    v12[52] = v12[51];
    if (v12[52])
    {
      v15 = v12[52];
    }

    else
    {
      v15 = sub_22609A4F8();
      if (v12[52])
      {
        sub_225EFE6E8(v12 + 52);
      }
    }

    v12[53] = v15;
    sub_226099948();
  }

  v1 = swift_task_alloc();
  v12[75] = v1;
  *v1 = v12[26];
  v1[1] = sub_225FC879C;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC879C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 208) = *v1;
  *(v3 + 608) = a1;

  return MEMORY[0x2822009F8](sub_225FC88B8, 0, 0);
}

uint64_t sub_225FC88B8()
{
  v0[26] = v0;
  v4 = v0[34];
  v0[77] = v4;
  sub_2260998E8();
  v1 = swift_task_alloc();
  *(v3 + 624) = v1;
  *v1 = *(v3 + 208);
  v1[1] = sub_225FC8978;

  return MEMORY[0x28212BEE8](v4);
}

uint64_t sub_225FC8978()
{
  *(*v0 + 208) = *v0;

  return MEMORY[0x2822009F8](sub_225FC8AD0, 0, 0);
}

uint64_t sub_225FC8AD0()
{
  v7 = v0[55];
  v0[26] = v0;
  sub_22609A4F8();
  v0[38] = sub_226099F08();
  v8 = [v7 jitGrammar];
  if (v8)
  {
    v4 = sub_226099C88();
    MEMORY[0x277D82BD8](v8);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6[39] = v5;
  if (v6[39])
  {
    v9 = v6[39];
  }

  else
  {
    v9 = sub_22609A4F8();
    if (v6[39])
    {
      sub_225EFE6E8(v6 + 39);
    }
  }

  v3 = v6[59];
  v6[40] = v9;
  v6[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_226099F88();
  sub_2260998E8();
  v6[41] = v3;
  if (v6[41])
  {
    v10 = v6[41];
  }

  else
  {
    v10 = sub_22609A4F8();
    if (v6[41])
    {
      sub_225EFE6E8(v6 + 41);
    }
  }

  v6[42] = v10;
  sub_226099F88();
  v1 = swift_task_alloc();
  v6[80] = v1;
  *v1 = v6[26];
  v1[1] = sub_225FC8FCC;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225FC8FCC(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 208) = *v1;
  *(v3 + 648) = a1;

  return MEMORY[0x2822009F8](sub_225FC90E8, 0, 0);
}

uint64_t sub_225FC90E8()
{
  v0[26] = v0;
  sub_2260991C8();
  v3 = v0[38];
  sub_2260998E8();
  v0[43] = v3;
  sub_22601F6A0();
  v0[44] = sub_226099D18();
  v4 = sub_226099178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  v4();

  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  v6 = sub_22609A378();
  v0[82] = v6;
  v1 = swift_task_alloc();
  *(v5 + 664) = v1;
  *v1 = *(v5 + 208);
  v1[1] = sub_225FC92D8;

  return MEMORY[0x28212BB88](v6);
}

uint64_t sub_225FC92D8()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 672) = v0;

  if (v0)
  {
    v2 = sub_225FCA83C;
  }

  else
  {

    v2 = sub_225FC9464;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}