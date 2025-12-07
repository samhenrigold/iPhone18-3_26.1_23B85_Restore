id _DateAdjustedForwardByMinutes(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  [v4 setMinute:a2];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingComponents:v4 toDate:v3 options:0];

  return v6;
}

uint64_t sub_24B84F0D8()
{
  sub_24B855B4C();
  swift_allocObject();
  result = sub_24B855B3C();
  qword_27F061638 = result;
  return result;
}

uint64_t sub_24B84F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[24] = a7;
  v8[25] = v7;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = sub_24B85598C();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = sub_24B855A6C();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v11 = sub_24B85599C();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v12 = sub_24B855B1C();
  v8[35] = v12;
  v8[36] = *(v12 - 8);
  v8[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v8[38] = swift_task_alloc();
  v13 = sub_24B85594C();
  v8[39] = v13;
  v8[40] = *(v13 - 8);
  v8[41] = swift_task_alloc();
  v14 = sub_24B855ACC();
  v8[42] = v14;
  v8[43] = *(v14 - 8);
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B84F3E8, 0, 0);
}

uint64_t sub_24B84F3E8()
{
  v1 = v0[40];
  v23 = v0[38];
  v24 = v0[39];
  v22 = v0[20];
  sub_24B855ABC();

  v2 = sub_24B855A9C();
  sub_24B85595C();
  v2(v0 + 2, 0);

  v3 = sub_24B855AAC();
  sub_24B8559AC();
  v3(v0 + 6, 0);
  sub_24B855700(v22, v23, &qword_27F061600, &qword_24B857368);
  v4 = *(v1 + 48);
  if (v4(v23, 1, v24) == 1)
  {
    v5 = v0[38];
    v6 = v0[39];
    sub_24B85593C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_24B8552DC(v0[38], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[40] + 32))(v0[41], v0[38], v0[39]);
  }

  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  sub_24B85591C();
  v11 = v10;
  v12 = v10;
  (*(v8 + 8))(v7, v9);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < 1.84467441e19)
  {
    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[23];
    v16 = sub_24B855AAC();
    sub_24B8559BC();
    v16(v0 + 10, 0);
    v9 = swift_allocObject();
    v0[45] = v9;
    v9[2] = v14;
    v9[3] = v15;
    v9[4] = v13;
    v17 = qword_27F061630;

    if (v17 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v25 = (*MEMORY[0x277D39E78] + MEMORY[0x277D39E78]);
  v18 = swift_task_alloc();
  v0[46] = v18;
  *v18 = v0;
  v18[1] = sub_24B84F754;
  v19 = v0[44];
  v20 = v0[37];

  return v25(v20, v19, sub_24B8557F4, v9);
}

uint64_t sub_24B84F754()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24B84FDA4;
  }

  else
  {
    v2 = sub_24B84F868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B84F868()
{
  if (sub_24B855B0C())
  {
    v52 = v0[43];
    v54 = v0[42];
    v57 = v0[44];
    v2 = v0[36];
    v1 = v0[37];
    v51 = v0[35];
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24B857240;
    sub_24B855AEC();
    v7 = sub_24B85597C();
    v9 = v8;
    v10 = *(v3 + 8);
    v10(v4, v5);
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_24B855C9C();

    sub_24B855AEC();
    v11 = sub_24B85597C();
    v13 = v12;
    v10(v4, v5);
    sub_24B855768();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v13;
    *(v15 + 16) = 0;

    (*(v2 + 8))(v1, v51);
    (*(v52 + 8))(v57, v54);
    goto LABEL_13;
  }

  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[32];
  sub_24B855A1C();
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 != *MEMORY[0x277D38EE8])
  {
    v34 = v0[44];
    v35 = v0[42];
    v36 = v0[43];
    v38 = v0[36];
    v37 = v0[37];
    v39 = v0[35];
    if (v19 == *MEMORY[0x277D38EF0])
    {

      (*(v38 + 8))(v37, v39);
      (*(v36 + 8))(v34, v35);
      v40 = 0;
      v41 = 0;
      v14 = 0;
LABEL_14:

      v44 = v0[1];

      return v44(v40, v41, v14);
    }

    v42 = v0[33];
    v55 = v0[32];
    v58 = v0[34];
    sub_24B855768();
    v14 = swift_allocError();
    *v43 = 0xD000000000000032;
    *(v43 + 8) = 0x800000024B858030;
    *(v43 + 16) = 0;

    (*(v38 + 8))(v37, v39);
    (*(v36 + 8))(v34, v35);
    (*(v42 + 8))(v58, v55);
LABEL_13:
    v40 = 0;
    v41 = 0;
    goto LABEL_14;
  }

  result = sub_24B855A2C();
  v21 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_9:
    v27 = v0[44];
    v28 = v0[42];
    v29 = v0[43];
    v31 = v0[36];
    v30 = v0[37];
    v32 = v0[35];

    sub_24B855768();
    v14 = swift_allocError();
    *v33 = 0xD000000000000016;
    *(v33 + 8) = 0x800000024B858070;
    *(v33 + 16) = 1;

    (*(v31 + 8))(v30, v32);
    (*(v29 + 8))(v27, v28);
    goto LABEL_13;
  }

  v23 = 0;
  v24 = v0[30];
  v25 = (v24 + 8);
  while (v23 < *(v21 + 16))
  {
    (*(v24 + 16))(v0[31], v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v0[29]);
    sub_24B855A5C();
    v26 = sub_24B855B9C();

    if (v26 >= 1)
    {
      v45 = v0[43];
      v56 = v0[42];
      v59 = v0[44];
      v46 = v0[36];
      v53 = v0[37];
      v47 = v0[35];
      v48 = v0[31];
      v49 = v0[29];

      v40 = sub_24B855A5C();
      v41 = v50;

      (*v25)(v48, v49);
      (*(v46 + 8))(v53, v47);
      (*(v45 + 8))(v59, v56);
      v14 = 0;
      goto LABEL_14;
    }

    ++v23;
    result = (*v25)(v0[31], v0[29]);
    if (v22 == v23)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B84FDA4()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v6 = sub_24B855C4C();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_24B855C9C();

  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8(0, 0, v1);
}

uint64_t sub_24B84FF14(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_24B85596C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B855A7C();
  v35 = MEMORY[0x277D84F90];
  v10 = *(v9 + 16);
  if (!v10)
  {

    v25 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_13;
    }

LABEL_17:
    if (!sub_24B855C3C())
    {
    }

    goto LABEL_14;
  }

  v27 = a3;
  v28 = a2;
  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v13 = *(v11 + 64);
  v29 = v9;
  v14 = v9 + ((v13 + 32) & ~v13);
  v30 = MEMORY[0x277D84F90];
  v31 = v12;
  v15 = *(v11 + 56);
  v33 = (v11 - 8);
  v34 = v15;
  v32 = v11;
  v12(v8, v14, v5);
  while (1)
  {
    sub_24B855600();
    v16 = sub_24B855B5C();
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x277D4C750]);
    sub_24B855658(v16, v18);
    v20 = sub_24B85590C();
    v21 = [v19 initWithData_];

    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

      sub_24B8556AC(v16, v18);
      sub_24B8556AC(v16, v18);
      v23 = (*v33)(v8, v5);
      if (v22)
      {
        MEMORY[0x24C24BE90](v23);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24B855BCC();
        }

        sub_24B855BDC();
        v30 = v35;
      }

      v24 = v31;
    }

    else
    {
      sub_24B8556AC(v16, v18);
      sub_24B8556AC(v16, v18);
      v24 = v31;
      (*v33)(v8, v5);
    }

    v14 += v34;
    if (!--v10)
    {
      break;
    }

    v24(v8, v14, v5);
  }

  a2 = v28;
  v25 = v30;
  if (v30 >> 62)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    a2(v25);
  }
}

uint64_t sub_24B850240()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static FUPegasusBridge.flightSearchResponse(for:date:clientBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B855C0C();
  v5[3] = sub_24B855BFC();
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_24B850358;

  return sub_24B852A14(a1, a2, a3, a4, a5);
}

uint64_t sub_24B850358(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  v5 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B85049C, v5, v4);
}

uint64_t sub_24B85049C()
{

  v1 = v0[1];
  v2 = v0[5];
  v3 = v0[6];

  return v1(v2, v3);
}

uint64_t sub_24B8506A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v4[6] = swift_task_alloc();
  v4[7] = sub_24B855C0C();
  v4[8] = sub_24B855BFC();
  v6 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B850778, v6, v5);
}

uint64_t sub_24B850778()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[9] = _Block_copy(v1);
  v3 = sub_24B855B7C();
  v5 = v4;
  v0[10] = v4;
  if (v2)
  {
    sub_24B85592C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[6];
  v8 = v0[4];
  v9 = sub_24B85594C();
  (*(*(v9 - 8) + 56))(v7, v6, 1, v9);
  if (v8)
  {
    v10 = sub_24B855B7C();
    v8 = v11;
  }

  else
  {
    v10 = 0;
  }

  v0[11] = v8;
  v0[12] = sub_24B855BFC();
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_24B8508E8;
  v13 = v0[6];

  return sub_24B852A14(v3, v5, v13, v10, v8);
}

uint64_t sub_24B8508E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  v5 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B850A6C, v5, v4);
}

uint64_t sub_24B850A6C()
{
  v1 = v0[14];
  v2 = v0[6];

  sub_24B8552DC(v2, &qword_27F061600, &qword_24B857368);
  if (v1)
  {
    sub_24B8551C4();
    v1 = sub_24B855BBC();
  }

  v3 = v0[15];
  if (v3)
  {
    v4 = sub_24B8558FC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[9];
  (v5)[2](v5, v1, v4);

  _Block_release(v5);

  v6 = v0[1];

  return v6();
}

uint64_t static FUPegasusBridge.subscribe(to:date:clientBundleIdentifier:pushMessagesHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24B850BB0, 0, 0);
}

uint64_t sub_24B850BB0()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for ProxyActor();
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24B850CA4;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_24B84F118(v9, v7, v8, v5, v6, sub_24B853878, v3);
}

uint64_t sub_24B850CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_24B850F84(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v10 = swift_task_alloc();
  v5[2] = v10;
  v11 = _Block_copy(a4);
  v5[3] = _Block_copy(a5);
  v5[4] = sub_24B855B7C();
  v5[5] = v12;
  if (a2)
  {
    sub_24B85592C();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_24B85594C();
  (*(*(v14 - 8) + 56))(v10, v13, 1, v14);
  if (a3)
  {
    v15 = sub_24B855B7C();
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v5[6] = v15;
  v5[7] = v16;
  v17 = swift_allocObject();
  v5[8] = v17;
  *(v17 + 16) = v11;

  return MEMORY[0x2822009F8](sub_24B8510FC, 0, 0);
}

uint64_t sub_24B8510FC()
{
  v1 = v0[8];
  type metadata accessor for ProxyActor();
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = sub_24B8554A0;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_24B851200;
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];

  return sub_24B84F118(v7, v6, v8, v4, v5, sub_24B8558F8, v2);
}

uint64_t sub_24B851200(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *v3;

  sub_24B8552DC(v7, &qword_27F061600, &qword_24B857368);
  if (a2)
  {
    v9 = sub_24B855B6C();
    if (a3)
    {
LABEL_3:
      v10 = sub_24B8558FC();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = *(v6 + 24);
  (v11)[2](v11, v9, v10);

  _Block_release(v11);

  v12 = *(v8 + 8);

  return v12();
}

void sub_24B851434(uint64_t a1, uint64_t a2)
{
  sub_24B8551C4();
  v3 = sub_24B855BBC();
  (*(a2 + 16))(a2, v3);
}

uint64_t static FUPegasusBridge.subscribe(to:date:clientBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24B851564;

  return sub_24B8538A0(a1, a2, a3, a4, a5);
}

uint64_t sub_24B851564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_24B851818(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v8 = swift_task_alloc();
  v4[2] = v8;
  v4[3] = _Block_copy(a4);
  v9 = sub_24B855B7C();
  v11 = v10;
  v4[4] = v10;
  if (a2)
  {
    sub_24B85592C();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_24B85594C();
  (*(*(v13 - 8) + 56))(v8, v12, 1, v13);
  if (a3)
  {
    a3 = sub_24B855B7C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v4[5] = v15;
  v16 = swift_task_alloc();
  v4[6] = v16;
  *v16 = v4;
  v16[1] = sub_24B8519B0;

  return sub_24B8538A0(v9, v11, v8, a3, v15);
}

uint64_t sub_24B8519B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *v3;

  sub_24B8552DC(v7, &qword_27F061600, &qword_24B857368);
  if (a2)
  {
    v9 = sub_24B855B6C();
    if (a3)
    {
LABEL_3:
      v10 = sub_24B8558FC();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = *(v6 + 24);
  (v11)[2](v11, v9, v10);

  _Block_release(v11);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t static FUPegasusBridge.fetchUpdate(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B851C40;

  return sub_24B85461C(a1, a2);
}

uint64_t sub_24B851C40(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24B851EC4(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_24B855B7C();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B851F7C;

  return sub_24B85461C(v3, v5);
}

uint64_t sub_24B851F7C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  if (v3)
  {
    a1 = sub_24B8558FC();

    v7 = a1;
LABEL_3:
    v8 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v7 = 0;
    goto LABEL_3;
  }

  sub_24B8551C4();
  v9 = sub_24B855BBC();

  v8 = v9;
  v7 = 0;
  a1 = v9;
LABEL_6:
  v10 = *(v5 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v6 + 8);

  return v11();
}

id FUPegasusBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FUPegasusBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FUPegasusBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FUPegasusBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FUPegasusBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24B852264(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24B8558F4;

  return v6();
}

uint64_t sub_24B85234C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24B852434;

  return v7();
}

uint64_t sub_24B852434()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B852528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_24B855700(a3, v22 - v9, &qword_27F0615F0, &qword_24B8572F8);
  v11 = sub_24B855C2C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24B8552DC(v10, &qword_27F0615F0, &qword_24B8572F8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24B855C1C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_24B855BEC();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_24B855B8C() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_24B8552DC(a3, &qword_27F0615F0, &qword_24B8572F8);

    return v20;
  }

LABEL_8:
  sub_24B8552DC(a3, &qword_27F0615F0, &qword_24B8572F8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_24B852824(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B85291C;

  return v6(a1);
}

uint64_t sub_24B85291C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B852A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24B85598C();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_24B85596C();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_24B85599C();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_24B855A4C();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v5[35] = swift_task_alloc();
  v10 = sub_24B85594C();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v11 = sub_24B8559FC();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B852CE0, 0, 0);
}

uint64_t sub_24B852CE0()
{
  v1 = v0[37];
  v19 = v0[35];
  v20 = v0[36];
  v18 = v0[20];
  sub_24B8559EC();

  v2 = sub_24B8559CC();
  sub_24B85595C();
  v2(v0 + 2, 0);

  v3 = sub_24B8559DC();
  sub_24B8559AC();
  v3(v0 + 6, 0);
  sub_24B855700(v18, v19, &qword_27F061600, &qword_24B857368);
  v4 = *(v1 + 48);
  if (v4(v19, 1, v20) == 1)
  {
    v5 = v0[35];
    v6 = v0[36];
    sub_24B85593C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_24B8552DC(v0[35], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
  }

  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  sub_24B85591C();
  v11 = v10;
  v12 = v10;
  (*(v8 + 8))(v7, v9);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < 1.84467441e19)
  {
    v13 = sub_24B8559DC();
    sub_24B8559BC();
    v13(v0 + 10, 0);
    if (qword_27F061630 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v21 = (*MEMORY[0x277D39E60] + MEMORY[0x277D39E60]);
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_24B853000;
  v15 = v0[41];
  v16 = v0[34];

  return v21(v16, v15);
}

uint64_t sub_24B853000()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24B8536B8;
  }

  else
  {
    v2 = sub_24B853114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B853114()
{
  if (sub_24B855A3C())
  {
    v57 = v0[39];
    v60 = v0[41];
    v1 = v0[33];
    v2 = v0[34];
    v54 = v0[32];
    v56 = v0[40];
    v3 = v0[24];
    v4 = v0[25];
    v5 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24B857240;
    sub_24B855A0C();
    v7 = sub_24B85597C();
    v9 = v8;
    v10 = *(v3 + 8);
    v10(v4, v5);
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_24B855C9C();

    sub_24B855A0C();
    v11 = sub_24B85597C();
    v13 = v12;
    v10(v4, v5);
    sub_24B855768();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v13;
    *(v15 + 16) = 0;
    (*(v1 + 8))(v2, v54);
    (*(v56 + 8))(v60, v57);
LABEL_3:
    v16 = 0;
    goto LABEL_24;
  }

  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[29];
  sub_24B855A1C();
  v20 = (*(v18 + 88))(v17, v19);
  if (v20 == *MEMORY[0x277D38EE8])
  {
    v21 = sub_24B855A2C();
    v63 = MEMORY[0x277D84F90];
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v0[27];
      v25 = *(v23 + 16);
      v23 += 16;
      v24 = v25;
      v26 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v27 = *(v23 + 56);
      v55 = MEMORY[0x277D84F90];
      v28 = (v23 - 8);
      v29 = v0[43];
      v58 = v27;
      v61 = v25;
      v25(v0[28], v26, v0[26]);
      while (1)
      {
        sub_24B855600();
        v30 = sub_24B855B5C();
        if (v29)
        {
          break;
        }

        v32 = v30;
        v33 = v31;
        v34 = objc_allocWithZone(MEMORY[0x277D4C750]);
        sub_24B855658(v32, v33);
        v35 = sub_24B85590C();
        v36 = [v34 initWithData_];

        if (!v36)
        {
          sub_24B8556AC(v32, v33);
          sub_24B8556AC(v32, v33);
          v27 = v58;
          v24 = v61;
          goto LABEL_8;
        }

        v37 = v0[28];
        v38 = v0[26];
        v39 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

        sub_24B8556AC(v32, v33);
        sub_24B8556AC(v32, v33);
        v40 = (*v28)(v37, v38);
        v27 = v58;
        v24 = v61;
        if (v39)
        {
          MEMORY[0x24C24BE90](v40);
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24B855BCC();
          }

          sub_24B855BDC();
          v55 = v63;
        }

LABEL_9:
        v29 = 0;
        v26 += v27;
        if (!--v22)
        {

          goto LABEL_23;
        }

        v24(v0[28], v26, v0[26]);
      }

LABEL_8:
      (*v28)(v0[28], v0[26]);
      goto LABEL_9;
    }

    v55 = MEMORY[0x277D84F90];
LABEL_23:
    v49 = v0[40];
    v50 = v0[41];
    v51 = v0[39];
    (*(v0[33] + 8))(v0[34], v0[32]);
    (*(v49 + 8))(v50, v51);
    v14 = 0;
    v16 = v55;
  }

  else
  {
    v42 = v0[40];
    v41 = v0[41];
    v43 = v0[39];
    v45 = v0[33];
    v44 = v0[34];
    v46 = v0[32];
    if (v20 != *MEMORY[0x277D38EF0])
    {
      v47 = v0[30];
      v59 = v0[29];
      v62 = v0[31];
      sub_24B855768();
      v14 = swift_allocError();
      *v48 = 0xD00000000000002FLL;
      *(v48 + 8) = 0x800000024B858090;
      *(v48 + 16) = 0;
      (*(v45 + 8))(v44, v46);
      (*(v42 + 8))(v41, v43);
      (*(v47 + 8))(v62, v59);
      goto LABEL_3;
    }

    (*(v45 + 8))(v0[34], v0[32]);
    (*(v42 + 8))(v41, v43);
    v16 = 0;
    v14 = 0;
  }

LABEL_24:

  v52 = v0[1];

  return v52(v16, v14);
}

uint64_t sub_24B8536B8()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v6 = sub_24B855C4C();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_24B855C9C();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(0, v1);
}

uint64_t sub_24B853840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B8538A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24B85598C();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_24B855A6C();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_24B85599C();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_24B855B1C();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368);
  v5[35] = swift_task_alloc();
  v10 = sub_24B85594C();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v11 = sub_24B855ACC();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B853B6C, 0, 0);
}

uint64_t sub_24B853B6C()
{
  v1 = v0[37];
  v19 = v0[35];
  v20 = v0[36];
  v18 = v0[20];
  sub_24B855ABC();

  v2 = sub_24B855A9C();
  sub_24B85595C();
  v2(v0 + 2, 0);

  v3 = sub_24B855AAC();
  sub_24B8559AC();
  v3(v0 + 6, 0);
  sub_24B855700(v18, v19, &qword_27F061600, &qword_24B857368);
  v4 = *(v1 + 48);
  if (v4(v19, 1, v20) == 1)
  {
    v5 = v0[35];
    v6 = v0[36];
    sub_24B85593C();
    if (v4(v5, 1, v6) != 1)
    {
      sub_24B8552DC(v0[35], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
  }

  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  sub_24B85591C();
  v11 = v10;
  v12 = v10;
  (*(v8 + 8))(v7, v9);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < 1.84467441e19)
  {
    v13 = sub_24B855AAC();
    sub_24B8559BC();
    v13(v0 + 10, 0);
    if (qword_27F061630 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v21 = (*MEMORY[0x277D39E70] + MEMORY[0x277D39E70]);
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_24B853E8C;
  v15 = v0[41];
  v16 = v0[34];

  return v21(v16, v15);
}

uint64_t sub_24B853E8C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24B8544B4;
  }

  else
  {
    v2 = sub_24B853FA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B853FA0()
{
  if (sub_24B855B0C())
  {
    v54 = v0[39];
    v57 = v0[41];
    v1 = v0[33];
    v2 = v0[34];
    v52 = v0[32];
    v53 = v0[40];
    v3 = v0[24];
    v4 = v0[25];
    v5 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24B857240;
    sub_24B855AEC();
    v7 = sub_24B85597C();
    v9 = v8;
    v10 = *(v3 + 8);
    v10(v4, v5);
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_24B855C9C();

    sub_24B855AEC();
    v11 = sub_24B85597C();
    v13 = v12;
    v10(v4, v5);
    sub_24B855768();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v13;
    *(v15 + 16) = 0;
    (*(v1 + 8))(v2, v52);
    (*(v53 + 8))(v57, v54);
    goto LABEL_13;
  }

  v17 = v0[30];
  v16 = v0[31];
  v18 = v0[29];
  sub_24B855A1C();
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 != *MEMORY[0x277D38EE8])
  {
    v35 = v0[40];
    v34 = v0[41];
    v36 = v0[39];
    v38 = v0[33];
    v37 = v0[34];
    v39 = v0[32];
    if (v19 == *MEMORY[0x277D38EF0])
    {
      (*(v38 + 8))(v0[34], v0[32]);
      (*(v35 + 8))(v34, v36);
      v40 = 0;
      v41 = 0;
      v14 = 0;
LABEL_14:

      v44 = v0[1];

      return v44(v40, v41, v14);
    }

    v42 = v0[30];
    v55 = v0[29];
    v58 = v0[31];
    sub_24B855768();
    v14 = swift_allocError();
    *v43 = 0xD000000000000032;
    *(v43 + 8) = 0x800000024B858030;
    *(v43 + 16) = 0;
    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
    (*(v42 + 8))(v58, v55);
LABEL_13:
    v40 = 0;
    v41 = 0;
    goto LABEL_14;
  }

  result = sub_24B855A2C();
  v21 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_9:
    v28 = v0[40];
    v27 = v0[41];
    v29 = v0[39];
    v31 = v0[33];
    v30 = v0[34];
    v32 = v0[32];

    sub_24B855768();
    v14 = swift_allocError();
    *v33 = 0xD000000000000016;
    *(v33 + 8) = 0x800000024B858070;
    *(v33 + 16) = 1;
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    goto LABEL_13;
  }

  v23 = 0;
  v24 = v0[27];
  v25 = (v24 + 8);
  while (v23 < *(v21 + 16))
  {
    (*(v24 + 16))(v0[28], v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v0[26]);
    sub_24B855A5C();
    v26 = sub_24B855B9C();

    if (v26 >= 1)
    {
      v45 = v0[40];
      v56 = v0[39];
      v59 = v0[41];
      v46 = v0[33];
      v47 = v0[34];
      v48 = v0[32];
      v49 = v0[28];
      v50 = v0[26];

      v40 = sub_24B855A5C();
      v41 = v51;
      (*v25)(v49, v50);
      (*(v46 + 8))(v47, v48);
      (*(v45 + 8))(v59, v56);
      v14 = 0;
      goto LABEL_14;
    }

    ++v23;
    result = (*v25)(v0[28], v0[26]);
    if (v22 == v23)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8544B4()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v6 = sub_24B855C4C();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_24B855C9C();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(0, 0, v1);
}

uint64_t sub_24B85461C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B85596C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24B855A8C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B854738, 0, 0);
}

uint64_t sub_24B854738()
{
  if (qword_27F061630 != -1)
  {
    swift_once();
  }

  v6 = (*MEMORY[0x277D39E68] + MEMORY[0x277D39E68]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24B85481C;
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  return v6(v2, v3, v4);
}

uint64_t sub_24B85481C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B854BF0;
  }

  else
  {
    v2 = sub_24B854930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B854930(uint64_t a1)
{
  v2 = sub_24B855A7C();
  v28 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[5];
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v25 = MEMORY[0x277D84F90];
    v9 = (v4 - 8);
    v10 = v1[11];
    v26 = v8;
    v27 = v6;
    v6(v1[6], v7, v1[4]);
    while (1)
    {
      sub_24B855600();
      v11 = sub_24B855B5C();
      if (v10)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v15 = objc_allocWithZone(MEMORY[0x277D4C750]);
      sub_24B855658(v13, v14);
      v16 = sub_24B85590C();
      v17 = [v15 initWithData_];

      if (!v17)
      {
        sub_24B8556AC(v13, v14);
        sub_24B8556AC(v13, v14);
        v8 = v26;
        v5 = v27;
        goto LABEL_4;
      }

      v18 = v1[6];
      v19 = v1[4];
      v20 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

      sub_24B8556AC(v13, v14);
      sub_24B8556AC(v13, v14);
      v21 = (*v9)(v18, v19);
      v8 = v26;
      v5 = v27;
      if (v20)
      {
        MEMORY[0x24C24BE90](v21);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24B855BCC();
        }

        sub_24B855BDC();
        v25 = v28;
      }

LABEL_5:
      v10 = 0;
      v7 += v8;
      if (!--v3)
      {

        v22 = v25;
        goto LABEL_16;
      }

      v5(v1[6], v7, v1[4]);
    }

LABEL_4:
    (*v9)(v1[6], v1[4]);
    goto LABEL_5;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  (*(v1[8] + 8))(v1[9], v1[7]);

  v23 = v1[1];

  return v23(v22);
}

uint64_t sub_24B854BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s19FlightUtilitiesCore15FUPegasusBridgeC11unsubscribe9channelIds5Error_pSgSS_tFZ_0()
{
  if (qword_27F061630 != -1)
  {
    swift_once();
  }

  sub_24B855B2C();
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B854DD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B854E10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24B852434;

  return sub_24B851EC4(v2, v3);
}

uint64_t sub_24B854EC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24B8558F4;

  return sub_24B852264(v2, v3, v4);
}

uint64_t sub_24B854F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B8558F4;

  return sub_24B85234C(a1, v4, v5, v6);
}

uint64_t sub_24B855054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B8558F4;

  return sub_24B852824(a1, v4);
}

uint64_t sub_24B85510C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B852434;

  return sub_24B852824(a1, v4);
}

unint64_t sub_24B8551C4()
{
  result = qword_27F0615F8;
  if (!qword_27F0615F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0615F8);
  }

  return result;
}

uint64_t sub_24B855214()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24B8558F4;

  return sub_24B851818(v2, v3, v4, v5);
}

uint64_t sub_24B8552DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B85533C()
{
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B855394()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24B8558F4;

  return sub_24B850F84(v2, v3, v4, v5, v6);
}

uint64_t sub_24B855468()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_34Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24B8554F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24B8558F4;

  return sub_24B8506A0(v2, v3, v4, v5);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24B855600()
{
  result = qword_27F061610;
  if (!qword_27F061610)
  {
    sub_24B85596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061610);
  }

  return result;
}

uint64_t sub_24B855658(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24B8556AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24B855700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B855768()
{
  result = qword_27F0616C0[0];
  if (!qword_27F0616C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F0616C0);
  }

  return result;
}

uint64_t sub_24B8557BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B85581C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B855864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}