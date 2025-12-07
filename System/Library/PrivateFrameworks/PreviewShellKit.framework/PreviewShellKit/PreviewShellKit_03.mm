uint64_t sub_25F111228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11128C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_25F111384;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_25F111384()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_25F11158C;
  }

  else
  {

    v2 = sub_25F11150C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1114A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11150C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F11158C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_25F111624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48240;
  if (!qword_27FD48240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48240);
  }

  return result;
}

unint64_t sub_25F11167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48248;
  if (!qword_27FD48248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48248);
  }

  return result;
}

unint64_t sub_25F1116D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48250;
  if (!qword_27FD48250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48250);
  }

  return result;
}

uint64_t sub_25F111758()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F111798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F11182C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F111908(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F111978@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25F176F5C();
  *a1 = result;
  return result;
}

uint64_t sub_25F1119A4(uint64_t a1, unsigned int *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F111A58;

  return sub_25F10D5A0(v3);
}

uint64_t sub_25F111A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_25F111BA4, 0, 0);
  }
}

uint64_t sub_25F111BA4()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v2[4] = sub_25F111C2C();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

unint64_t sub_25F111C2C()
{
  result = qword_27FD475C8;
  if (!qword_27FD475C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46D28, &qword_25F17B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD475C8);
  }

  return result;
}

uint64_t sub_25F111C90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  *(v5 + 144) = a4;
  *(v5 + 16) = a1;
  v6 = sub_25F176F7C();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  v7 = sub_25F1777CC();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v8 = sub_25F176DFC();
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F111E28, 0, 0);
}

uint64_t sub_25F111E28(uint64_t a1)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[12];
  v5 = v1[13];
  sub_25F176DEC();
  (*(v5 + 16))(v2, v3, v4);
  sub_25F176F6C();
  v6 = swift_task_alloc();
  v1[16] = v6;
  *v6 = v1;
  v6[1] = sub_25F111F20;
  v7 = v1[15];
  v8 = v1[11];
  v9 = v1[7];
  v10 = v1[4];

  return MEMORY[0x2821A0E90](v8, v7, v9, v10);
}

uint64_t sub_25F111F20()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_25F1121AC;
  }

  else
  {
    v5 = sub_25F112090;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F112090()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v6 + 16))(v0[10], v4, v5);
  sub_25F17742C();
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F1121AC()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F112264()
{
  sub_25F1774BC();
  sub_25F1122D8();
  return sub_25F17800C();
}

unint64_t sub_25F1122D8()
{
  result = qword_27FD480D0;
  if (!qword_27FD480D0)
  {
    sub_25F1774BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD480D0);
  }

  return result;
}

uint64_t sub_25F112330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for CanvasControl(0, a10, a3, a4);
  v18 = v17[10];
  v21 = type metadata accessor for ThumbnailHostFactory(0, a10, v19, v20);
  (*(*(v21 - 8) + 56))(a9 + v18, 1, 1, v21);
  v22 = sub_25F177B1C();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = (a9 + v17[7]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v17[8]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + v17[9]);
  *v25 = a6;
  v25[1] = a7;
  v26 = sub_25F17960C();
  v27 = *(*(v26 - 8) + 40);

  return v27(a9 + v18, a8, v26);
}

uint64_t sub_25F1124A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48300, &qword_25F17F6A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_25F177B0C();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_25F177ACC();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F177B1C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_25F115F54(a1, v17);
  sub_25F177AFC();
  v35 = a4;
  sub_25F0B7E2C(a4, v10, &qword_27FD48300, &qword_25F17F6A0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48308, &qword_25F17F6A8);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v10, 1, v22) == 1)
  {
    sub_25F0B7E94(v10, &qword_27FD48300, &qword_25F17F6A0);
    v24 = sub_25F1777BC();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  }

  else
  {
    sub_25F0B7E2C(v10, v13, &qword_27FD482C8, &qword_25F183740);
    sub_25F0B7E94(v10, qword_27FD48308, &qword_25F17F6A8);
  }

  sub_25F177ADC();
  sub_25F115FB8(v32);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482F8, &qword_25F17F698);
  v26 = v25[10];
  (*(v23 + 56))(a5 + v26, 1, 1, v22);
  (*(v19 + 32))(a5, v21, v18);
  v27 = (a5 + v25[7]);
  *v27 = sub_25F112CB8;
  v27[1] = 0;
  v28 = (a5 + v25[8]);
  *v28 = sub_25F112D3C;
  v28[1] = 0;
  v29 = (a5 + v25[9]);
  v30 = v34;
  *v29 = v33;
  v29[1] = v30;
  return sub_25F0EBB7C(v35, a5 + v26, &qword_27FD48300, &qword_25F17F6A0);
}

uint64_t sub_25F112898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v40 = a5;
  v42 = a2;
  v43 = a3;
  v41 = a7;
  v9 = type metadata accessor for ThumbnailHostFactory(255, a5, a3, a4);
  v10 = sub_25F17960C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v19 = sub_25F177B0C();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_25F177ACC();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25F177B1C();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_25F115F54(a1, v22);
  sub_25F177AFC();
  v26 = *(v11 + 16);
  v44 = a4;
  v37 = v26;
  v26(v15, a4, v10);
  v27 = *(v9 - 8);
  if ((*(v27 + 48))(v15, 1, v9) == 1)
  {
    (*(v11 + 8))(v15, v10);
    v28 = sub_25F1777BC();
    (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  }

  else
  {
    sub_25F0B7E2C(v15, v18, &qword_27FD482C8, &qword_25F183740);
    (*(v27 + 8))(v15, v9);
  }

  sub_25F177ADC();
  v29 = swift_allocObject();
  v30 = v39;
  v31 = v40;
  *(v29 + 16) = v40;
  *(v29 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = v38;
  v34 = v44;
  v37(v38, v44, v10);
  sub_25F112330(v25, sub_25F117730, v29, sub_25F11775C, v32, v42, v43, v33, v41, v31);
  (*(v11 + 8))(v34, v10);
  return sub_25F115FB8(v45);
}

uint64_t sub_25F112CB8()
{
  sub_25F177CCC();
  sub_25F1176D8(&qword_27FD48410, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
  return sub_25F1774DC();
}

uint64_t sub_25F112D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48408, &qword_25F17F860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_25F177CCC();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_25F1176D8(&qword_27FD48410, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
  return sub_25F1774EC();
}

uint64_t sub_25F112E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17960C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = *(a2 - 8);
  (*(v8 + 16))(&v10 - v6, a1, a2);
  (*(v8 + 56))(v7, 0, 1, a2);
  return sub_25F1774EC();
}

uint64_t sub_25F112F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a4;
  v77 = a2;
  v84 = a5;
  v63 = type metadata accessor for ThumbnailHostFactory(255, a3, a3, a4);
  v62 = sub_25F17960C();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - v7;
  v83 = sub_25F17960C();
  v81 = type metadata accessor for ThumbnailHostFactory(255, v83, v8, v9);
  v10 = sub_25F17960C();
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v58 - v11;
  v75 = a3;
  v14 = type metadata accessor for CanvasControl(255, a3, v12, v13);
  v15 = sub_25F17960C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v58 - v20;
  v71 = v21;
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483E8, &qword_25F17F840);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v58 - v25;
  v27 = sub_25F177B1C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v16 + 16);
  v80 = a1;
  v67 = v16 + 16;
  v68 = v31;
  v31(v23, a1, v15);
  v32 = *(v14 - 8);
  v64 = *(v32 + 48);
  v65 = v32 + 48;
  v33 = v64(v23, 1, v14);
  v78 = v30;
  v76 = v14;
  v74 = v15;
  v72 = v16;
  v59 = v32;
  if (v33 == 1)
  {
    (*(v16 + 8))(v23, v15);
    (*(v28 + 56))(v26, 1, 1, v27);
    sub_25F177AEC();
    if ((*(v28 + 48))(v26, 1, v27) != 1)
    {
      sub_25F0B7E94(v26, &qword_27FD483E8, &qword_25F17F840);
    }
  }

  else
  {
    (*(v28 + 16))(v26, v23, v27);
    (*(v32 + 8))(v23, v14);
    (*(v28 + 56))(v26, 0, 1, v27);
    (*(v28 + 32))(v30, v26, v27);
  }

  v34 = swift_allocObject();
  v35 = v77;
  v36 = v75;
  v34[2] = v77;
  v34[3] = v36;
  v37 = v79;
  v69 = v34;
  v34[4] = v79;
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v36;
  v66 = v38;
  v38[4] = v37;
  v39 = v70;
  v40 = v80;
  v41 = v74;
  v42 = v68;
  v68(v70, v80, v74);
  v43 = v72;
  v44 = (*(v72 + 80) + 40) & ~*(v72 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v35;
  *(v45 + 3) = v36;
  v46 = v45;
  *(v45 + 4) = v37;
  (*(v43 + 32))(&v45[v44], v39, v41);
  v47 = v73;
  v42(v73, v40, v41);
  v48 = v76;
  if (v64(v47, 1, v76) == 1)
  {
    (*(v43 + 8))(v47, v41);
    v49 = 1;
    v50 = v82;
  }

  else
  {
    v51 = v61;
    v52 = v60;
    v53 = v62;
    (*(v61 + 16))(v60, &v47[*(v48 + 40)], v62);
    (*(v59 + 8))(v47, v48);
    v54 = v63;
    v55 = *(v63 - 8);
    v56 = (*(v55 + 48))(v52, 1, v63);
    v50 = v82;
    if (v56 == 1)
    {
      (*(v51 + 8))(v52, v53);
      v49 = 1;
    }

    else
    {
      sub_25F163800(v54, v82);
      (*(v55 + 8))(v52, v54);
      v49 = 0;
    }
  }

  (*(*(v81 - 8) + 56))(v50, v49, 1);
  return sub_25F112330(v78, sub_25F1173B4, v69, sub_25F1173E0, v66, sub_25F117634, v46, v50, v84, v83);
}

uint64_t sub_25F1136D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25F17960C();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v9 - v6, a1);
  return sub_25F1774EC();
}

uint64_t sub_25F1137B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v6 = type metadata accessor for CanvasControl(255, a4, a3, a4);
  v7 = sub_25F17960C();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_25F17960C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v17, v14, a4);
  v19 = v24;
  (*(v24 + 16))(v9, v23, v7);
  v20 = *(v6 - 8);
  if ((*(v20 + 48))(v9, 1, v6) == 1)
  {
    (*(v15 + 8))(v17, a4);
    return (*(v19 + 8))(v9, v7);
  }

  else
  {
    v21 = *&v9[*(v6 + 36)];
    v22 = *(v20 + 8);

    v22(v9, v6);
    v21(v17);

    return (*(v15 + 8))(v17, a4);
  }
}

uint64_t static CanvasControl.custom<A>(configuration:thumbnailHostFactory:interactionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  type metadata accessor for ThumbnailHostFactory(255, a5, a3, a4);
  v12 = sub_25F17960C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = sub_25F177ACC();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F177F8C();
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v15, a2, v12);

  return sub_25F112898(v18, v21, a4, v15, a5, v22, a7);
}

uint64_t sub_25F113CAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v66 = a3;
  v67 = a4;
  v81 = a2;
  LODWORD(v75) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v61 - v9;
  v10 = *(a6 + 16);
  v13 = type metadata accessor for ThumbnailHostFactory(255, v10, v11, v12);
  v14 = sub_25F17960C();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v72 = &v61 - v16;
  v79 = v13;
  v71 = *(v13 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = &v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v68 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v80 = v10;
  v77 = *(v10 - 8);
  v26 = *(v77 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - v29;
  v31 = v82;
  result = (*(v6 + *(a6 + 28)))(v81);
  if (!v31)
  {
    v62 = v26;
    v63 = v21;
    v33 = v72;
    v64 = v28;
    v34 = a6;
    v36 = v78;
    v35 = v79;
    v37 = v71;
    v82 = v30;
    v81 = 0;
    if (v75)
    {
      v38 = v73;
      v39 = v74;
      (*(v73 + 16))(v72, v6 + *(v34 + 40), v74);
      v40 = (*(v37 + 48))(v33, 1, v35);
      v41 = v76;
      if (v40 == 1)
      {
        (*(v38 + 8))(v33, v39);
        v42 = v80;
        type metadata accessor for CanvasControl.NoThumbnailHost(0, v80, v43, v44);
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v77 + 8))(v82, v42);
      }

      else
      {
        v48 = *(v37 + 32);
        v74 = v37 + 32;
        v75 = v48;
        v48(v36, v33, v35);
        v49 = sub_25F17932C();
        (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
        v50 = v77;
        (*(v77 + 16))(v64, v82, v80);
        (*(v37 + 16))(v69, v36, v35);
        sub_25F0B7E2C(v41, v68, &qword_27FD483D8, &qword_25F17F828);
        sub_25F17930C();
        v51 = v67;

        v52 = sub_25F1792FC();
        v53 = (*(v50 + 80) + 56) & ~*(v50 + 80);
        v54 = (v62 + *(v37 + 80) + v53) & ~*(v37 + 80);
        v55 = (v17 + *(v65 + 80) + v54) & ~*(v65 + 80);
        v56 = swift_allocObject();
        v57 = MEMORY[0x277D85700];
        *(v56 + 2) = v52;
        *(v56 + 3) = v57;
        v58 = v80;
        v59 = v66;
        *(v56 + 4) = v80;
        *(v56 + 5) = v59;
        *(v56 + 6) = v51;
        (*(v50 + 32))(&v56[v53], v64, v58);
        v60 = v79;
        v75(&v56[v54], v69, v79);
        sub_25F117154(v68, &v56[v55]);
        sub_25F0CD9E8(0, 0, v70, &unk_25F17F838, v56);

        (*(v37 + 8))(v78, v60);
        return (*(v50 + 8))(v82, v58);
      }
    }

    else
    {
      v45 = v82;
      (*(v6 + *(v34 + 36)))(v82);
      sub_25F0B7E2C(v76, v25, &qword_27FD483D8, &qword_25F17F828);
      v46 = sub_25F1774AC();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v25, 1, v46) == 1)
      {
        (*(v77 + 8))(v45, v80);
        return sub_25F0B7E94(v25, &qword_27FD483D8, &qword_25F17F828);
      }

      else
      {
        sub_25F17749C();
        (*(v77 + 8))(v45, v80);
        return (*(v47 + 8))(v25, v46);
      }
    }
  }

  return result;
}

uint64_t sub_25F1143F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v14;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v9 = sub_25F17752C();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  sub_25F17930C();
  v8[22] = sub_25F1792FC();
  v11 = sub_25F1792CC();
  v8[23] = v11;
  v8[24] = v10;

  return MEMORY[0x2822009F8](sub_25F11453C, v11, v10);
}

uint64_t sub_25F11453C()
{
  (*(v0 + 88))();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v8 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_25F1147B8;
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);

  return v8(v0 + 56, v5, v6, v4, v1, v2);
}

uint64_t sub_25F1147B8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_25F114BE4;
  }

  else
  {
    v5 = sub_25F1148F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F1148F4()
{
  v1 = v0[26];
  v2 = v0[21];

  v3 = v0[7];
  PreviewSnapshot.makeRenderPayload()(v2);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v4 = v0[17];
    sub_25F0B7E2C(v0[15], v4, &qword_27FD483D8, &qword_25F17F828);
    v5 = sub_25F1774AC();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v4, 1, v5);
    v8 = v0[17];
    if (v7 == 1)
    {

      sub_25F0B7E94(v8, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F17747C();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v9 = v0[18];
    sub_25F0B7E2C(v0[15], v9, &qword_27FD483D8, &qword_25F17F828);
    v10 = sub_25F1774AC();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v9, 1, v10);
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[18];
    v16 = v0[19];
    if (v12 == 1)
    {
      (*(v14 + 8))(v0[21], v0[19]);

      sub_25F0B7E94(v15, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F1176D8(&qword_27FD483E0, MEMORY[0x277D407D0], MEMORY[0x277D407C8]);
      sub_25F17748C();

      (*(v14 + 8))(v13, v16);
      (*(v11 + 8))(v15, v10);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_25F114BE4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[26];
  v2 = v0[17];
  sub_25F0B7E2C(v0[15], v2, &qword_27FD483D8, &qword_25F17F828);
  v3 = sub_25F1774AC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[17];
  if (v5 == 1)
  {

    sub_25F0B7E94(v6, &qword_27FD483D8, &qword_25F17F828);
  }

  else
  {
    sub_25F17747C();

    (*(v4 + 8))(v6, v3);
  }

  v7 = v0[1];

  return v7();
}

PreviewShellKit::CanvasTimelineControl::TimelineStop __swiftcall CanvasTimelineControl.TimelineStop.init(name:sfSymbolName:)(Swift::String name, Swift::String_optional sfSymbolName)
{
  v2->value = name;
  v2[1] = sfSymbolName;
  result.sfSymbolName = sfSymbolName;
  result.name = name;
  return result;
}

uint64_t CanvasTimelineControl.init(stops:allowShuffle:thumbnailHostFactory:action:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a3;
  v49 = a4;
  v48 = a2;
  v56 = a6;
  v63 = sub_25F177AAC();
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v46 - v11;
  v12 = sub_25F177B0C();
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25F177B1C();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482D0, &qword_25F17F670);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v46 - v18;
  v46 = sub_25F177ACC();
  v19 = MEMORY[0x28223BE20](v46);
  v57 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v58 = &v46 - v22;
  v62 = *(a1 + 16);
  if (v62)
  {
    v23 = 0;
    v61 = v7 + 32;
    v24 = a1 + 56;
    v25 = MEMORY[0x277D84F90];
    while (v23 < *(a1 + 16))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_25F177A9C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_25F11629C(0, v25[2] + 1, 1, v25, &qword_27FD48418, &qword_25F17F868, MEMORY[0x277D40B80]);
      }

      v27 = v25[2];
      v26 = v25[3];
      if (v27 >= v26 >> 1)
      {
        v25 = sub_25F11629C((v26 > 1), v27 + 1, 1, v25, &qword_27FD48418, &qword_25F17F868, MEMORY[0x277D40B80]);
      }

      ++v23;
      v25[2] = v27 + 1;
      result = (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v9, v63);
      v24 += 32;
      if (v62 == v23)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v28 = v58;
    sub_25F177ABC();
    swift_storeEnumTagMultiPayload();
    v29 = swift_allocObject();
    v30 = v52;
    v31 = v53;
    *(v29 + 16) = v49;
    *(v29 + 24) = v30;
    v32 = v60;
    sub_25F0B7E2C(v31, v60, &qword_27FD482D0, &qword_25F17F670);
    sub_25F115F54(v28, v57);

    sub_25F177AFC();
    v33 = v32;
    v34 = v47;
    sub_25F0B7E2C(v33, v47, &qword_27FD482D0, &qword_25F17F670);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482D8, &qword_25F17F678);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      sub_25F0B7E94(v34, &qword_27FD482D0, &qword_25F17F670);
      v37 = sub_25F1777BC();
      (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    }

    else
    {
      sub_25F0B7E2C(v34, v54, &qword_27FD482C8, &qword_25F183740);
      sub_25F0B7E94(v34, &qword_27FD482D8, &qword_25F17F678);
    }

    v39 = v55;
    v38 = v56;
    v40 = v50;
    sub_25F177ADC();

    sub_25F0B7E94(v31, &qword_27FD482D0, &qword_25F17F670);
    sub_25F115FB8(v58);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C0, &unk_25F17F660);
    v42 = v41[10];
    (*(v36 + 56))(v38 + v42, 1, 1, v35);
    (*(v51 + 32))(v38, v40, v39);
    v43 = (v38 + v41[7]);
    *v43 = sub_25F116478;
    v43[1] = 0;
    v44 = (v38 + v41[8]);
    *v44 = sub_25F1164C8;
    v44[1] = 0;
    v45 = (v38 + v41[9]);
    *v45 = sub_25F115F28;
    v45[1] = v29;
    return sub_25F0EBB7C(v60, v38 + v42, &qword_27FD482D0, &qword_25F17F670);
  }

  return result;
}

uint64_t CanvasToggleControl.init(sfSymbolName:title:action:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v43 = a6;
  v44 = a2;
  v42 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v42 - v8;
  v9 = sub_25F177B0C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_25F177B1C();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482E8, &qword_25F17F688);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = sub_25F177ACC();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = *a5;
  v26 = a5[1];
  if (*a5)
  {
    v27 = *a5;
  }

  else
  {
    v27 = sub_25F1159E8;
  }

  if (*a5)
  {
    v28 = a5[1];
  }

  else
  {
    v28 = 0;
  }

  sub_25F104D30(v25, v26);
  sub_25F177A8C();
  swift_storeEnumTagMultiPayload();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v42 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482F0, &qword_25F17F690);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v32(v18, 1, 1, v30);
  sub_25F115F54(v24, v22);
  v44 = v11;
  sub_25F177AFC();
  v46 = v18;
  sub_25F0B7E2C(v18, v16, &qword_27FD482E8, &qword_25F17F688);
  if ((*(v31 + 48))(v16, 1, v30) == 1)
  {
    sub_25F0B7E94(v16, &qword_27FD482E8, &qword_25F17F688);
    v33 = sub_25F1777BC();
    (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
  }

  else
  {
    sub_25F0B7E2C(v16, v48, &qword_27FD482C8, &qword_25F183740);
    sub_25F0B7E94(v16, &qword_27FD482F0, &qword_25F17F690);
  }

  v34 = v45;
  sub_25F177ADC();

  sub_25F115FB8(v24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482E0, &qword_25F17F680);
  v36 = v35[10];
  v37 = v43;
  v32((v43 + v36), 1, 1, v30);
  (*(v47 + 32))(v37, v34, v49);
  v38 = (v37 + v35[7]);
  *v38 = sub_25F116534;
  v38[1] = 0;
  v39 = (v37 + v35[8]);
  *v39 = sub_25F116584;
  v39[1] = 0;
  v40 = (v37 + v35[9]);
  *v40 = sub_25F116508;
  v40[1] = v29;
  return sub_25F0EBB7C(v46, v37 + v36, &qword_27FD482E8, &qword_25F17F688);
}

uint64_t sub_25F1159E8()
{
  v0 = sub_25F17888C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F0B3000, v4, v5, "InteractionEvent not supported on this toggle control", v6, 2u);
    MEMORY[0x25F8D6230](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t CanvasGridControl.init(configuration:thumbnailHostFactory:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48300, &qword_25F17F6A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_25F177ACC();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F177A7C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  swift_storeEnumTagMultiPayload();
  sub_25F0B7E2C(a2, v11, qword_27FD48308, &qword_25F17F6A8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48308, &qword_25F17F6A8);
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_25F1124A4(v14, a3, v20, v11, a5);
  sub_25F0B7E94(a2, qword_27FD48308, &qword_25F17F6A8);
  return (*(v16 + 8))(a1, v15);
}

char *sub_25F115DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47920, &qword_25F17C9E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F115EF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F115F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177ACC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F115FB8(uint64_t a1)
{
  v2 = sub_25F177ACC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_25F116014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
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

char *sub_25F116170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E0, &qword_25F180700);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25F11629C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_25F116478@<X0>(void *a1@<X8>)
{
  result = sub_25F1774DC();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_25F116534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F1774DC();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t sub_25F1165D4(uint64_t a1)
{
  result = sub_25F177B1C();
  if (v3 <= 0x3F)
  {
    result = sub_25F105150();
    if (v6 <= 0x3F)
    {
      type metadata accessor for ThumbnailHostFactory(255, *(a1 + 16), v4, v5);
      result = sub_25F17960C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F11669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177B1C();
  v9 = *(v6 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    type metadata accessor for ThumbnailHostFactory(255, *(a3 + 16), v7, v8);
    v13 = sub_25F17960C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 40);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25F1167E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F177B1C();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    type metadata accessor for ThumbnailHostFactory(255, *(a4 + 16), v9, v10);
    v13 = sub_25F17960C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 40);

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_25F1169B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F1169FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F116AD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_25F116B44(319, a4, a5, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F116B44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for CanvasControl(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit19CanvasToggleControlV6ActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F116BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F116BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_25F116C4C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_25F116DD0(uint64_t a1)
{
  sub_25F116E3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F116E3C(uint64_t a1)
{
  if (!qword_27FD483D0)
  {
    v2 = sub_25F177CCC();
    v5 = type metadata accessor for CanvasControl(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27FD483D0);
    }
  }
}

uint64_t sub_25F116EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(type metadata accessor for ThumbnailHostFactory(0, v5, a3, a4) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v22 = *(v14 + 64);
  swift_unknownObjectRelease();

  (*(v6 + 8))(v4 + v8, v5);
  v17 = sub_25F1777BC();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v4 + v12, 1, v17))
  {
    (*(v18 + 8))(v4 + v12, v17);
  }

  v19 = sub_25F1774AC();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v4 + v16, 1, v19))
  {
    (*(v20 + 8))(v4 + v16, v19);
  }

  return MEMORY[0x2821FE8E8](v4, v16 + v22, v7 | v11 | v15 | 7);
}

uint64_t sub_25F117154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1171C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(*(v4[4] - 8) + 64);
  v8 = (*(*(v4[4] - 8) + 80) + 56) & ~*(*(v4[4] - 8) + 80);
  v9 = *(type metadata accessor for ThumbnailHostFactory(0, v4[4], a3, a4) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[5];
  v17 = v4[6];
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_25F0BF3E4;

  return sub_25F1143F4(a1, v14, v15, v16, v17, v4 + v8, v4 + v10, v4 + v13);
}

uint64_t sub_25F1173EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for CanvasControl(255, v5, a3, a4);
  v7 = *(sub_25F17960C() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v8 + 40) & ~v8;
  if (!(*(*(v6 - 8) + 48))(v4 + v10, 1, v6))
  {
    v11 = sub_25F177B1C();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);

    v12 = v4 + v10 + *(v6 + 40);
    v15 = type metadata accessor for ThumbnailHostFactory(0, v5, v13, v14);
    if (!(*(*(v15 - 8) + 48))(v12, 1, v15))
    {
      v16 = sub_25F1777BC();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v12, 1, v16))
      {
        (*(v17 + 8))(v12, v16);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v4, v10 + v9, v8 | 7);
}

uint64_t sub_25F117634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for CanvasControl(255, v7, a3, a4);
  v8 = *(sub_25F17960C() - 8);
  v9 = v4 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_25F1137B4(a1, v9, v6, v7);
}

uint64_t sub_25F1176D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static UIColor.shellTintColor.getter()
{
  v0 = sub_25F17905C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed_];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 systemBlueColor];

  return v4;
}

id FullScreenHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F17905C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_25F117948(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_25F117A84();
}

id FullScreenHostingViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FullScreenHostingViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_25F117B1C()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_25F17885C();

  v8 = sub_25F17887C();
  v9 = sub_25F17952C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_25F0BECF0(v7, v6, &v17);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F0B3000, v8, v9, "Releasing sandbox extension for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8D6230](v11, -1, -1);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  sandbox_extension_release();

  v13 = OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL;
  v14 = sub_25F176DBC();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  return v1;
}

uint64_t sub_25F117D44()
{
  sub_25F117B1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewsJITSandboxContainerExtension(uint64_t a1)
{
  result = qword_27FD48530;
  if (!qword_27FD48530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F117DF0(uint64_t a1)
{
  result = sub_25F176DBC();
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

unint64_t sub_25F117EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48540;
  if (!qword_27FD48540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48540);
  }

  return result;
}

uint64_t *sub_25F117F08(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_25F176DBC();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  *(v3 + 32) = a3 & 1;

  if (!container_query_create())
  {
    if (a3)
    {
      v26 = 0x61446E6967756C70;
    }

    else
    {
      v26 = 0x61746144707061;
    }

    if (a3)
    {
      v27 = 0xEA00000000006174;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    sub_25F118A0C(0, v14, v15);
    swift_allocError();
    *v28 = a1;
    v28[1] = a2;
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = 0;
    v28[5] = 0;
    swift_willThrow();
    goto LABEL_40;
  }

  v50 = v11;
  v52 = a1;
  v53 = v7;
  container_query_set_class();
  v16 = sub_25F1790DC();
  xpc_string_create((v16 + 32));

  container_query_set_identifiers();
  swift_unknownObjectRelease();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v29 = container_error_copy_unlocalized_description();
    v32 = v29;
    if (v29)
    {
      v29 = sub_25F17915C();
      v33 = v29;
      v34 = v30;
    }

    else
    {
      v34 = 0x800000025F186030;
      v33 = 0xD000000000000012;
    }

    if (a3)
    {
      v38 = 0x61446E6967756C70;
    }

    else
    {
      v38 = 0x61746144707061;
    }

    if (a3)
    {
      v39 = 0xEA00000000006174;
    }

    else
    {
      v39 = 0xE700000000000000;
    }

    sub_25F118A60(v29, v30, v31);
    swift_allocError();
    *v40 = v52;
    v40[1] = a2;
    v40[2] = v38;
    v40[3] = v39;
    v40[4] = v33;
    v40[5] = v34;
    v40[6] = 0;
    v40[7] = 0;
    swift_willThrow();
    free(v32);
    goto LABEL_39;
  }

  if (!container_get_path())
  {
    if (a3)
    {
      v35 = 0x61446E6967756C70;
    }

    else
    {
      v35 = 0x61746144707061;
    }

    if (a3)
    {
      v36 = 0xEA00000000006174;
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    sub_25F118AB4(0, v17, v18);
    goto LABEL_30;
  }

  v49 = container_copy_sandbox_token();
  if (!v49)
  {
    if (a3)
    {
      v35 = 0x61446E6967756C70;
    }

    else
    {
      v35 = 0x61746144707061;
    }

    if (a3)
    {
      v36 = 0xEA00000000006174;
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    sub_25F118B08(0, v19, v20);
LABEL_30:
    swift_allocError();
    *v37 = v52;
    v37[1] = a2;
    v37[2] = v35;
    v37[3] = v36;
    v37[4] = 0;
    v37[5] = 0;
    swift_willThrow();
LABEL_39:
    container_query_free();
LABEL_40:

LABEL_41:
    swift_deallocPartialClassInstance();
    return v3;
  }

  v21 = v51;
  v22 = v50;
  (*(v51 + 56))(v10, 1, 1, v50);
  sub_25F176D7C();
  sub_25F118B5C(v10);
  (*(v21 + 32))(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL, v13, v22);
  v23 = v49;
  v24 = sandbox_extension_consume();
  if (v24 == -1)
  {
    if (a3)
    {
      v42 = 0x61446E6967756C70;
    }

    else
    {
      v42 = 0x61746144707061;
    }

    if (a3)
    {
      v43 = 0xEA00000000006174;
    }

    else
    {
      v43 = 0xE700000000000000;
    }

    v44 = MEMORY[0x25F8D4AC0]();
    v45 = v44;
    sub_25F118BC4(v44, v46, v47);
    swift_allocError();
    *v48 = v52;
    *(v48 + 8) = a2;
    *(v48 + 16) = v42;
    *(v48 + 24) = v43;
    *(v48 + 32) = v45;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    free(v23);
    container_query_free();

    (*(v21 + 8))(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_containerURL, v50);
    goto LABEL_41;
  }

  v25 = v24;

  *(v3 + OBJC_IVAR____TtC15PreviewShellKit36PreviewsJITSandboxContainerExtension_sandboxExtensionHandle) = v25;
  free(v23);
  container_query_free();
  return v3;
}

uint64_t sub_25F1184CC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25F1184FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F119334(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F118538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F119334(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F118574()
{
  v1 = v0;
  sub_25F1796DC();
  v2 = *v0;

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v1[2], v1[3]);
  MEMORY[0x25F8D50D0](0x3A726F727265202CLL, 0xE900000000000020);
  MEMORY[0x25F8D50D0](v1[4], v1[5]);
  return v2;
}

uint64_t sub_25F118640()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_25F118670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1192E0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F1186AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1192E0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F118704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F11928C(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F118740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F11928C(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F118798()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v1, v2);
  return v4;
}

uint64_t sub_25F1187F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F119238(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F118834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F119238(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F118870()
{
  sub_25F1796DC();
  v1 = *v0;

  MEMORY[0x25F8D50D0](8236, 0xE200000000000000);
  MEMORY[0x25F8D50D0](v0[2], v0[3]);
  MEMORY[0x25F8D50D0](0x3A6F6E727265202CLL, 0xE900000000000020);
  v2 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v2);

  return v1;
}

uint64_t sub_25F118964()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_25F118994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1191E4(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F1189D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1191E4(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

unint64_t sub_25F118A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48548;
  if (!qword_27FD48548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48548);
  }

  return result;
}

unint64_t sub_25F118A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48550;
  if (!qword_27FD48550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48550);
  }

  return result;
}

unint64_t sub_25F118AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48558;
  if (!qword_27FD48558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48558);
  }

  return result;
}

unint64_t sub_25F118B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48560;
  if (!qword_27FD48560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48560);
  }

  return result;
}

uint64_t sub_25F118B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD469C0, &qword_25F17AC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F118BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48568;
  if (!qword_27FD48568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48568);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F118C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25F118C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F118D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F118D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F118DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F118E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F118E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48570;
  if (!qword_27FD48570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48570);
  }

  return result;
}

unint64_t sub_25F118EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48578;
  if (!qword_27FD48578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48578);
  }

  return result;
}

unint64_t sub_25F118F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48580;
  if (!qword_27FD48580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48580);
  }

  return result;
}

unint64_t sub_25F118F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48588;
  if (!qword_27FD48588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48588);
  }

  return result;
}

unint64_t sub_25F118FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48590;
  if (!qword_27FD48590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48590);
  }

  return result;
}

unint64_t sub_25F119028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48598;
  if (!qword_27FD48598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48598);
  }

  return result;
}

unint64_t sub_25F119084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485A0;
  if (!qword_27FD485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485A0);
  }

  return result;
}

unint64_t sub_25F1190DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485A8;
  if (!qword_27FD485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485A8);
  }

  return result;
}

unint64_t sub_25F119138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485B0;
  if (!qword_27FD485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485B0);
  }

  return result;
}

unint64_t sub_25F119190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485B8;
  if (!qword_27FD485B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485B8);
  }

  return result;
}

unint64_t sub_25F1191E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485C0;
  if (!qword_27FD485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485C0);
  }

  return result;
}

unint64_t sub_25F119238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485C8;
  if (!qword_27FD485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485C8);
  }

  return result;
}

unint64_t sub_25F11928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485D0;
  if (!qword_27FD485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485D0);
  }

  return result;
}

unint64_t sub_25F1192E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485D8;
  if (!qword_27FD485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485D8);
  }

  return result;
}

unint64_t sub_25F119334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD485E0;
  if (!qword_27FD485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD485E0);
  }

  return result;
}

uint64_t PreviewNonUIAgentProxy.perform<A>(update:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v6 = sub_25F177D3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewNonUIAgentProxy(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v24 - v15;
  v24[2] = sub_25F17873C();
  v17 = sub_25F17932C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_25F0CB7E0(v24[1], v13);
  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = a3;
  *(v20 + 24) = v21;
  sub_25F11AF60(v13, v20 + v18);
  (*(v7 + 32))(v20 + v19, v9, v6);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v21;
  return sub_25F17870C();
}

{
  v18 = a4;
  v19 = sub_25F177D5C();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F177DEC();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewNonUIAgentProxy(0);
  v13 = sub_25F177D3C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F0B7D00(&qword_27FD485F0, &qword_27FD485E8, &qword_25F180220, MEMORY[0x277D40E10]);
  sub_25F11BD84(&qword_27FD485F8, MEMORY[0x277D40EC8], MEMORY[0x277D40EC0]);
  v14 = sub_25F177A6C();
  sub_25F11B904(v12, MEMORY[0x277D40EC8]);
  v15 = *(v4 + 8);
  sub_25F177CFC();
  v16 = Task<>.enhancingPreviewAgentConnectionError(for:_:)(v15, v9, v14, a3);

  (*(v7 + 8))(v9, v19);
  return v16;
}

uint64_t type metadata accessor for PreviewNonUIAgentProxy(uint64_t a1)
{
  result = qword_27FD48610;
  if (!qword_27FD48610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F1196D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PreviewNonUIAgentProxy(0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = sub_25F1787BC();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v4[16] = *(v9 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  v4[19] = v10;
  v4[20] = *(v10 - 8);
  v4[21] = swift_task_alloc();
  v11 = sub_25F1783FC();
  v4[22] = v11;
  v4[23] = *(v11 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F119940, 0, 0);
}

uint64_t sub_25F119940()
{
  v1 = v0[24];
  v2 = v0[3];
  (*(v0[23] + 104))(v1, *MEMORY[0x277D404B8], v0[22]);
  sub_25F17859C();
  swift_allocObject();
  v12 = v1;
  LOBYTE(v11) = 2;
  v3 = sub_25F17858C();
  v0[25] = v3;
  *v2 = v3;
  v4 = sub_25F176F4C();
  v5 = [v4 pid];

  *(v2 + 8) = v5;
  sub_25F176E1C();
  v6 = sub_25F177E0C();
  v7 = sub_25F11BD84(&qword_27FD48628, MEMORY[0x277D40EE0], MEMORY[0x277D40EA8]);
  sub_25F176EFC();
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_25F119B0C;
  v9 = v0[21];

  return MEMORY[0x2821A1908](v9, v6, v6, v7);
}

uint64_t sub_25F119B0C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_25F119FBC;
  }

  else
  {
    v2 = sub_25F119C20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F119C20()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v21 = *(v0 + 120);
  v22 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v18 = *(v0 + 88);
  v24 = *(v0 + 80);
  v6 = *(v0 + 56);
  v20 = *(v0 + 64);
  v7 = *(v0 + 32);
  v23 = *(v0 + 24);
  v17 = *(v0 + 40);
  (*(*(v0 + 160) + 32))(v23 + v6[6]);
  *(v23 + v6[7]) = v17;
  sub_25F1787CC();
  v8 = sub_25F17940C();
  (*(v5 + 8))(v3, v18);
  *v1 = v8;
  v19 = v1;
  sub_25F11BDCC(v1, v2);
  v9 = *(v4 + 48);
  *(v23 + v6[8]) = *v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v10 - 8) + 8))(&v2[v9], v10);
  *(v0 + 16) = v7;
  sub_25F11BDCC(v1, v2);
  sub_25F0CB7E0(v23, v24);
  v11 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v12 = (v11 + v22 + *(v20 + 80)) & ~*(v20 + 80);
  v13 = swift_allocObject();
  sub_25F11C01C(v2, v13 + v11);
  sub_25F11AF60(v24, v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  sub_25F17848C();

  sub_25F11BDCC(v19, v2);
  v14 = swift_allocObject();
  sub_25F11C01C(v2, v14 + v11);
  sub_25F11BD84(&qword_27FD472B0, type metadata accessor for PreviewNonUIAgentProxy, &protocol conformance descriptor for PreviewNonUIAgentProxy);
  sub_25F17848C();

  sub_25F11C2E8(v19);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25F119FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = a3;
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  sub_25F0B7D00(&qword_27FD48648, &qword_27FD48640, &unk_25F180300, MEMORY[0x277D405D8]);
  sub_25F17807C();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for PreviewNonUIAgentProxy(0);
  sub_25F11BD84(&qword_27FD48608, type metadata accessor for PreviewNonUIAgentProxy, &protocol conformance descriptor for PreviewNonUIAgentProxy);
  return sub_25F1780BC();
}

uint64_t sub_25F11A2B4()
{
  v0 = sub_25F1787BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  sub_25F0B7D00(&qword_27FD48648, &qword_27FD48640, &unk_25F180300, MEMORY[0x277D405D8]);
  sub_25F17805C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t PreviewNonUIAgentProxy.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewNonUIAgentProxy(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_25F0CB7E0(v3, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_25F11AF60(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_25F0BC520(0, 0, v11, &unk_25F183E70, v14);
}

uint64_t sub_25F11A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25F11A610, 0, 0);
}

uint64_t sub_25F11A610()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for PreviewNonUIAgentProxy(0) + 32));
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v3 = v0;
  v3[1] = sub_25F11A6E8;
  v5 = MEMORY[0x277D84950];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v4, v2, v6, v4, v5);
}

uint64_t sub_25F11A6E8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25F11A864;
  }

  else
  {
    v2 = sub_25F11A7FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F11A7FC()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F11AB0C, 0, 0);
}

uint64_t sub_25F11AB0C(uint64_t a1, uint64_t a2)
{
  v3 = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v2[4], a2, v2[5], v2[6]);
  v2[7] = v3;
  v4 = swift_task_alloc();
  v2[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v4 = v2;
  v4[1] = sub_25F11ABE0;
  v6 = v2[5];
  v7 = v2[2];
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v7, v3, v6, v5, v8);
}

uint64_t sub_25F11ABE0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25F11AD58;
  }

  else
  {
    v2 = sub_25F11ACF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F11ACF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11AD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11ADBC()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F177D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F11AF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewNonUIAgentProxy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11AFC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25F177D3C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0C10CC;

  return sub_25F11AAE4(a1, v1 + v8, v1 + v11, v5, v6);
}

uint64_t sub_25F11B124()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F11B25C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0BF3E4;

  return sub_25F11A5EC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t PreviewNonUIAgentProxy.addMessageStream(for:)(uint64_t a1)
{
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = (v1 + *(type metadata accessor for PreviewNonUIAgentProxy(0) + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v1 + 8);
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v13 = sub_25F17932C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v14 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  (*(v4 + 32))(v15 + v14, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_25F17870C();
}

uint64_t sub_25F11B5F0()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t PreviewNonUIAgentProxy.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F177DFC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewNonUIAgentProxy(0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v13 = sub_25F17776C();
  (*(*(v13 - 8) + 16))(v11, a3, v13);
  v14 = sub_25F177F8C();
  (*(*(v14 - 8) + 16))(&v11[v12], a2, v14);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F11BD84(&qword_27FD48600, MEMORY[0x277D40ED8], MEMORY[0x277D40ED0]);
  sub_25F17701C();
  (*(v6 + 8))(v8, v5);
  return sub_25F11B904(v11, MEMORY[0x277D40ED8]);
}

uint64_t sub_25F11B904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F11B9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F11BD84(&qword_27FD472B0, type metadata accessor for PreviewNonUIAgentProxy, &protocol conformance descriptor for PreviewNonUIAgentProxy);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

uint64_t sub_25F11BA4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_25F11BB1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F11BBCC(uint64_t a1)
{
  sub_25F17859C();
  if (v1 <= 0x3F)
  {
    sub_25F11BC78(319);
    if (v2 <= 0x3F)
    {
      sub_25F11BD0C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F11BC78(uint64_t a1)
{
  if (!qword_27FD48620)
  {
    sub_25F177E0C();
    sub_25F11BD84(&qword_27FD48628, MEMORY[0x277D40EE0], MEMORY[0x277D40EA8]);
    v1 = sub_25F17703C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD48620);
    }
  }
}

void sub_25F11BD0C(uint64_t a1)
{
  if (!qword_27FD48630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD46C38, qword_25F17C0E0);
    v1 = sub_25F17945C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD48630);
    }
  }
}

uint64_t sub_25F11BD84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F11BDCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11BE3C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v1[14];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  v12 = v5[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v13 - 8) + 8))(v0 + v7 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_25F11C01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F11C08C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F11A0B0(a1, v1 + v4, v7);
}

uint64_t sub_25F11C16C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[14];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48640, &unk_25F180300);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F11C26C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);

  return sub_25F11A2B4();
}

uint64_t sub_25F11C2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48638, &qword_25F1802F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LocalContentProvider.makeSnapshotImage()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_25F1787BC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(*(*(v2 + 8) + 8) + 8))(v3);
  v8 = [v7 view];

  if (v8)
  {
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 uv_createSnapshotImageFromIOSurface];
      if (v11)
      {
        v6 = v11;

        return v6;
      }

      sub_25F11C6E0(0, v12, v13);
      swift_allocError();
      *v14 = v10;
    }

    else
    {
      sub_25F1787CC();
      sub_25F177F1C();
      sub_25F11C688();
      swift_allocError();
      sub_25F177F2C();
    }

    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F11C688()
{
  result = qword_27FD48650;
  if (!qword_27FD48650)
  {
    sub_25F177F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48650);
  }

  return result;
}

unint64_t sub_25F11C6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48658;
  if (!qword_27FD48658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48658);
  }

  return result;
}

uint64_t LocalSnapshotError.additionalInfo.getter()
{
  v1 = *v0;
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000032, 0x800000025F186370);
  v2 = [v1 description];
  v3 = sub_25F17908C();
  v5 = v4;

  MEMORY[0x25F8D50D0](v3, v5);

  return 0;
}

uint64_t sub_25F11C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F11CFC0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F11C87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F11CFC0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

Swift::Void __swiftcall LocalContentViewController.display(viewController:)(UIViewController *viewController)
{
  v3 = OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController];
  v15 = viewController;
  if (v4)
  {
    if (v4 == viewController)
    {
      return;
    }

    [(UIViewController *)v4 willMoveToParentViewController:0];
    viewController = v15;
    v5 = *&v1[v3];
    if (v5)
    {
      v6 = [v5 view];
      if (!v6)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];

      v8 = *&v1[v3];
      viewController = v15;
      if (v8)
      {
        [v8 removeFromParentViewController];
        viewController = v15;
      }
    }
  }

  [v1 addChildViewController_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [(UIViewController *)v15 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v10 addSubview_];

  [(UIViewController *)v15 didMoveToParentViewController:v1];
  v13 = *&v1[v3];
  *&v1[v3] = v15;

  v14 = v15;
}

Swift::Void __swiftcall LocalContentViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id LocalContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25F17905C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocalContentViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController] = 0;
  if (a2)
  {
    v7 = sub_25F17905C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id LocalContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalContentViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15PreviewShellKit26LocalContentViewController_contentViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id LocalContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25F11CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48668;
  if (!qword_27FD48668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48668);
  }

  return result;
}

unint64_t sub_25F11CF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48670;
  if (!qword_27FD48670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48670);
  }

  return result;
}

unint64_t sub_25F11CFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48678;
  if (!qword_27FD48678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48678);
  }

  return result;
}

uint64_t sub_25F11D014(uint64_t a1)
{
  v35 = sub_25F1779DC();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_25F0C97D8(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = sub_25F17967C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 56) + *(v3 + 72) * v8, v35);
      v37 = sub_25F1779CC();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_25F0C97D8((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_25F0C9F18(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_25F0C9F18(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

void *sub_25F11D31C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48778, &qword_25F180748);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_25F1789CC();
  v10 = MEMORY[0x28223BE20](v9);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v12;
  v30 = (v12 + 32);
  v31 = (v12 + 48);
  v15 = (a3 + 64);
  v38 = MEMORY[0x277D84F90];
  v28 = a1;
  while (1)
  {
    v16 = v9;
    v17 = *(v15 - 1);
    v18 = *v15;
    v19 = *(v15 - 16);
    v20 = *(v15 - 3);
    v34[0] = *(v15 - 4);
    v34[1] = v20;
    v35 = v19;
    v36 = v17;
    v37 = v18;

    a1(v34);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if ((*v31)(v8, 1, v16) == 1)
    {
      sub_25F0B7E94(v8, &qword_27FD48778, &qword_25F180748);
    }

    else
    {
      v21 = v29;
      v22 = *v30;
      (*v30)(v29);
      (v22)(v32, v21, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_25F116120(0, v38[2] + 1, 1, v38);
      }

      v24 = v38[2];
      v23 = v38[3];
      if (v24 >= v23 >> 1)
      {
        v38 = sub_25F116120((v23 > 1), v24 + 1, 1, v38);
      }

      v25 = v38;
      v38[2] = v24 + 1;
      v9 = v16;
      (v22)(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v32, v16);
      a1 = v28;
    }

    v15 += 5;
    if (!--v14)
    {
      return v38;
    }
  }

  return v38;
}

uint64_t PreviewsJITLinker.deinit()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);

  sub_25F17885C();

  v8 = sub_25F17887C();
  v9 = sub_25F17952C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    v12 = sub_25F0BECF0(v7, v6, v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F0B3000, v8, v9, "%{public}s: Deallocating Previews JIT linker", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8D6230](v11, -1, -1);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 64);
  if (v13)
  {
    v15 = *(v1 + 88);
    v14 = *(v1 + 96);
    v16 = *(v1 + 72);
    v17 = *(v1 + 80);
    v19[0] = *(v1 + 56);
    v19[1] = v13;
    v20 = v16;
    v21 = v17;
    v22 = v15;
    v23 = v14;

    sub_25F11D940();
  }

  sub_25F11D8DC(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));

  return v1;
}

double sub_25F11D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25F11D940()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  sub_25F17885C();

  v8 = sub_25F17887C();
  v9 = sub_25F17955C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_25F0BECF0(v6, v7, v13);
    _os_log_impl(&dword_25F0B3000, v8, v9, "%{public}s: Invalidating JIT linker", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8D6230](v11, -1, -1);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_25F1788CC();
}

uint64_t PreviewsJITLinker.__deallocating_deinit()
{
  PreviewsJITLinker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25F11DB34(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = a6;
  v103 = a5;
  v121 = a4;
  v102 = a3;
  v125 = a2;
  v104 = a1;
  v6 = sub_25F1787FC();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25F17888C();
  v105 = *(v106 - 8);
  v8 = MEMORY[0x28223BE20](v106);
  v101 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v100 - v10;
  v120 = sub_25F17722C();
  v124 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v123 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_25F17958C();
  MEMORY[0x28223BE20](v115);
  v12 = sub_25F178FBC();
  MEMORY[0x28223BE20](v12 - 8);
  v119 = sub_25F17959C();
  v13 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_25F1315D8();
  v116 = "loadTargetDescriptions(_:)";
  v118 = *MEMORY[0x277D85268];
  v117 = *(v13 + 104);
  v117(v15);
  sub_25F178FAC();
  v126 = MEMORY[0x277D84F90];
  v114 = sub_25F12E2B8(&qword_27FD48810, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48818, &qword_25F180778);
  sub_25F0B7D00(&qword_27FD48820, &qword_27FD48818, &qword_25F180778, MEMORY[0x277D83970]);
  sub_25F17966C();
  v16 = sub_25F1795BC();
  v17 = v130;
  *(v130 + 48) = v16;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  (v117)(v15, v118, v119);
  sub_25F178FAC();
  v126 = MEMORY[0x277D84F90];
  sub_25F17966C();
  *(v17 + 120) = sub_25F1795BC();
  v126 = 0;
  v127 = 0xE000000000000000;
  sub_25F1796DC();

  v126 = 0xD000000000000012;
  v127 = 0x800000025F1867E0;
  v18 = v125;
  v20 = *(v125 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v19 = *(v125 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);

  MEMORY[0x25F8D50D0](v20, v19);

  MEMORY[0x25F8D50D0](41, 0xE100000000000000);
  v21 = v127;
  v119 = v126;
  v22 = v18 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v23 = *(type metadata accessor for BatchIdentity(0) + 28);
  v24 = v123;
  v25 = v124;
  v26 = v124[2];
  v27 = v120;
  v26(v123, v22 + v23, v120);
  v28 = v25[11];
  v29 = v27;
  v30 = v28(v24, v27);
  if (v30 != *MEMORY[0x277D406D8] && v30 != *MEMORY[0x277D406E0])
  {

    v31 = sub_25F17766C();
    v33 = v32;
    v34 = type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType(0);
    sub_25F12E2B8(&qword_27FD48828, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType, &unk_25F181B38);
    v35 = swift_allocError();
    v37 = v36;
    *v36 = v31;
    v36[1] = v33;
    v38 = v29;
    v39 = v35;
    v26(v36 + *(v34 + 20), v22 + v23, v38);
    v40 = (v37 + *(v34 + 24));
    *v40 = 0;
    v40[1] = 0;
    swift_willThrow();
    (v124[1])(v123, v38);
LABEL_10:
    sub_25F1787EC();
    v67 = v109;
    sub_25F1787DC();
    v68 = v39;
    sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580], MEMORY[0x277D40578]);
    v69 = v111;
    sub_25F1781BC();

    (*(v110 + 8))(v67, v69);
    v70 = v128;
    v71 = __swift_project_boxed_opaque_existential_1(&v126, v128);
    v72 = *(v70 - 8);
    MEMORY[0x28223BE20](v71);
    v74 = &v100 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v74);
    if (sub_25F17981C())
    {
      (*(v72 + 8))(v74, v70);
    }

    else
    {
      swift_allocError();
      (*(v72 + 32))(v75, v74, v70);
    }

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(&v126);
    v48 = v130;

    sub_25F11D8DC(*(v48 + 56), *(v48 + 64), *(v48 + 72), *(v48 + 80), *(v48 + 88), *(v48 + 96));
    type metadata accessor for PreviewsJITLinker();
    swift_deallocPartialClassInstance();
    return v48;
  }

  v41 = v30 != *MEMORY[0x277D406D8];
  v42 = sub_25F17766C();
  v44 = v43;
  type metadata accessor for PreviewsJITSandboxContainerExtension(0);
  swift_allocObject();
  v45 = v108;
  v46 = sub_25F117F08(v42, v44, v41);
  v39 = v45;
  if (v45)
  {

    goto LABEL_10;
  }

  v47 = v46;
  v48 = v130;
  *(v130 + 104) = v46;

  v49 = v107;
  sub_25F17885C();

  v50 = v21;

  v51 = sub_25F17887C();
  v52 = sub_25F17952C();

  v53 = os_log_type_enabled(v51, v52);
  v124 = v47;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v126 = v55;
    *v54 = 136446722;
    *(v54 + 4) = sub_25F0BECF0(v119, v50, &v126);
    *(v54 + 12) = 2080;
    v57 = v47[2];
    v56 = v47[3];

    v58 = sub_25F0BECF0(v57, v56, &v126);

    *(v54 + 14) = v58;
    *(v54 + 22) = 2080;
    v59 = sub_25F176D8C();
    v61 = sub_25F0BECF0(v59, v60, &v126);

    *(v54 + 24) = v61;
    _os_log_impl(&dword_25F0B3000, v51, v52, "%{public}s: Received sandbox extension for %s, container path: %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v55, -1, -1);
    v62 = v54;
    v48 = v130;
    MEMORY[0x25F8D6230](v62, -1, -1);

    v63 = *(v105 + 8);
    v63(v107, v106);
  }

  else
  {

    v63 = *(v105 + 8);
    v63(v49, v106);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD48830, &qword_25F180780);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  *(v64 + 16) = MEMORY[0x277D84F90];
  *(v48 + 112) = v64;
  sub_25F178B2C();
  v65 = swift_allocObject();
  v66 = v119;
  v65[2] = v64;
  v65[3] = v66;
  v65[4] = v50;
  swift_unknownObjectRetain();
  swift_retain_n();

  swift_unknownObjectRetain();
  v77 = sub_25F17898C();
  v123 = v64;
  *(v48 + 16) = v104;
  v78 = v119;
  *(v48 + 24) = v125;
  *(v48 + 32) = v78;
  *(v48 + 40) = v50;
  sub_25F178A5C();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v79 = sub_25F178A6C();
  v80 = sub_25F0ED1EC(MEMORY[0x277D84F90]);
  v82 = *(v48 + 56);
  v81 = *(v48 + 64);
  v83 = *(v48 + 72);
  v84 = *(v48 + 80);
  v85 = *(v48 + 88);
  v86 = *(v48 + 96);
  *(v48 + 56) = v78;
  *(v48 + 64) = v50;
  *(v48 + 72) = 0;
  *(v48 + 80) = v77;
  *(v48 + 88) = v79;
  *(v48 + 96) = v80;
  sub_25F11D8DC(v82, v81, v83, v84, v85, v86);
  if (v102)
  {
    v87 = (v102 >> 8) & 1;

    v88 = type metadata accessor for XOJITAgentSymbolTableDataProvider();
    swift_allocObject();

    v90 = sub_25F12F754(v89, v87);

    sub_25F17845C();
    sub_25F17844C();
    v128 = v88;
    v129 = sub_25F12E2B8(&qword_27FD48840, type metadata accessor for XOJITAgentSymbolTableDataProvider, &unk_25F180688);
    v126 = v90;

    sub_25F17840C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v126);
    v91 = v125;
    v126 = v125;
    type metadata accessor for Agent(0);
    sub_25F12E2B8(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);

    sub_25F17802C();
  }

  else
  {
    v92 = v101;
    sub_25F17885C();

    v93 = sub_25F17887C();
    v94 = sub_25F17952C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v126 = v96;
      *v95 = 136446210;
      v97 = sub_25F0BECF0(v119, v50, &v126);

      *(v95 + 4) = v97;
      _os_log_impl(&dword_25F0B3000, v93, v94, "%{public}s: Not listening to XOJIT symbol table stream", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      v98 = v96;
      v48 = v130;
      MEMORY[0x25F8D6230](v98, -1, -1);
      MEMORY[0x25F8D6230](v95, -1, -1);

      v99 = v101;
    }

    else
    {

      v99 = v92;
    }

    v63(v99, v106);
    v91 = v125;
  }

  v126 = v91;
  type metadata accessor for Agent(0);
  sub_25F12E2B8(&qword_27FD47EA0, type metadata accessor for Agent, &protocol conformance descriptor for Agent);

  sub_25F17802C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v48;
}

uint64_t sub_25F11EB28(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, unint64_t a4)
{
  v23 = a3;
  v6 = sub_25F17888C();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F1788AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25F17889C();
  v14 = v13;
  sub_25F1788BC();
  v15 = (*(v10 + 88))(v12, v9);
  if (v15 != *MEMORY[0x277D7E8D8])
  {
    v22 = a4;
    MEMORY[0x28223BE20](v15);
    *(&v22 - 2) = v24;
    *(&v22 - 1) = v14;
    os_unfair_lock_lock(a2 + 6);
    sub_25F1317A4(&a2[4]);
    os_unfair_lock_unlock(a2 + 6);
    a4 = v22;
    (*(v10 + 8))(v12, v9);
  }

  sub_25F17885C();

  v16 = sub_25F17887C();
  v17 = sub_25F17953C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_25F0BECF0(v23, a4, v26);
    *(v18 + 12) = 2080;
    v20 = sub_25F0BECF0(v24, v14, v26);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_25F0B3000, v16, v17, "%{public}s: XOJIT Link Error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v19, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);
  }

  else
  {
  }

  return (*(v25 + 8))(v8, v6);
}

char *sub_25F11EE68(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F116014(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_25F116014((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a2;
  *(v10 + 5) = a3;
  *a1 = v6;
  return result;
}

uint64_t sub_25F11EF28(uint64_t a1)
{
  sub_25F17845C();
  sub_25F17844C();
  sub_25F17843C();
}

uint64_t sub_25F11EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();
  v6 = sub_25F17767C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F11F098, 0, 0);
}

uint64_t sub_25F11F098()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v18 = v4;
  v19 = *(v0 + 56);
  v20 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v21 = v5[4];
  v22 = v5[5];
  v8 = v5[3];
  v9 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v10 = type metadata accessor for BatchIdentity(0);
  v23 = *(v0 + 24);
  (*(v2 + 16))(v1, v8 + *(v10 + 20) + v9, v3);
  (*(v6 + 16))(v4, v7, v23);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = (v20 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  *(v13 + 16) = v23;
  *(v13 + 32) = v5;
  (*(v2 + 32))(v13 + v11, v1, v3);
  (*(v6 + 32))(v13 + v12, v18, v23);
  v14 = (v13 + ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v21;
  v14[1] = v22;

  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_25F11F2BC;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v15, sub_25F12DDB0, v13, v16);
}

uint64_t sub_25F11F2BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_25F11F45C;
  }

  else
  {
    v2 = sub_25F11F3EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F11F3EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F11F45C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25F11F4CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a5;
  v60 = a4;
  v14 = sub_25F1787BC();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F1787FC();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F17888C();
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[8];
  if (v22)
  {
    v58 = v19;
    v59 = v16;
    v23 = a1[11];
    v24 = a1[12];
    v25 = a1[9];
    v26 = a1[10];
    v69 = a1[7];
    v70 = v22;
    v71 = v25;
    *&v72 = v26;
    *(&v72 + 1) = v23;
    v73 = v24;

    sub_25F11FBCC(a3, a6, a7);
    if (v8)
    {
      sub_25F17885C();

      v27 = v8;
      v28 = sub_25F17887C();
      v29 = sub_25F17953C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v67[0] = v32;
        *v30 = 136446466;
        *(v30 + 4) = sub_25F0BECF0(v60, v66, v67);
        *(v30 + 12) = 2112;
        v33 = v8;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v34;
        *v31 = v34;
        _os_log_impl(&dword_25F0B3000, v28, v29, "%{public}s: Failed loading target descriptions: %@", v30, 0x16u);
        sub_25F0B7E94(v31, &qword_27FD473D0, &unk_25F17C540);
        MEMORY[0x25F8D6230](v31, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x25F8D6230](v32, -1, -1);
        MEMORY[0x25F8D6230](v30, -1, -1);
      }

      (*(v58 + 8))(v21, v18);
      v35 = v59;
      v74 = a1[14];

      v36 = v61;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0, MEMORY[0x277D40588]);
      sub_25F17856C();
      (*(v62 + 8))(v36, v63);

      v37 = v64;
      sub_25F1787DC();
      v38 = v8;
      sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580], MEMORY[0x277D40578]);
      sub_25F1781BC();

      (*(v65 + 8))(v37, v35);
      v39 = v68;
      v40 = __swift_project_boxed_opaque_existential_1(v67, v68);
      v41 = *(v39 - 8);
      MEMORY[0x28223BE20](v40);
      v43 = &v57 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v43);
      if (sub_25F17981C())
      {
        (*(v41 + 8))(v43, v39);
      }

      else
      {
        swift_allocError();
        (*(v41 + 32))(v56, v43, v39);
      }

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

    else
    {
      v47 = v70;
      v48 = v71;
      v49 = v73;
      v50 = a1[7];
      v51 = a1[8];
      v52 = a1[9];
      v53 = a1[10];
      v54 = a1[11];
      v55 = a1[12];
      a1[7] = v69;
      a1[8] = v47;
      a1[9] = v48;
      *(a1 + 5) = v72;
      a1[12] = v49;
      sub_25F11D8DC(v50, v51, v52, v53, v54, v55);
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F182018);
    swift_allocError();
    v45 = v44;
    v46 = sub_25F17767C();
    (*(*(v46 - 8) + 16))(v45, a2, v46);
    swift_willThrow();
  }
}

uint64_t sub_25F11FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v151 = a1;
  v166 = sub_25F178B1C();
  v164 = *(v166 - 8);
  v6 = MEMORY[0x28223BE20](v166);
  v160 = &v127[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v132 = &v127[-v8];
  v131 = a3;
  v9 = *(a3 + 8);
  v137 = sub_25F1796EC();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v127[-v10];
  v134 = sub_25F17975C();
  MEMORY[0x28223BE20](v134);
  v133 = &v127[-v11];
  v138 = sub_25F17974C();
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v154 = &v127[-v12];
  v159 = sub_25F1779DC();
  v161 = *(v159 - 8);
  v13 = MEMORY[0x28223BE20](v159);
  v167 = &v127[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v127[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v127[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  MEMORY[0x28223BE20](v19 - 8);
  v158 = &v127[-v20];
  v149 = v9;
  v150 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v162 = &v127[-v22];
  v152 = *(a2 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v156 = &v127[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v157 = &v127[-v25];
  v155 = sub_25F17888C();
  v153 = *(v155 - 1);
  MEMORY[0x28223BE20](v155);
  v165 = &v127[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = sub_25F17835C();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v28 = &v127[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v127[-v30];
  v32 = sub_25F177FBC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v127[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *v3;
  v36 = *(v3 + 8);
  v147 = v3;
  v141 = sub_25F1782EC();
  sub_25F1782DC();
  v143 = v33;
  v38 = *(v33 + 56);
  v144 = v32;
  v38(v31, 1, 1, v32);
  sub_25F17833C();
  v142 = v35;
  v130 = v37;
  sub_25F1782CC();

  v145[1](v28, v146);
  v39 = v150;
  v40 = v31;
  v41 = v36;
  sub_25F0B7E94(v40, &qword_27FD487B0, &unk_25F180760);
  sub_25F17885C();
  v42 = v152;
  v43 = *(v152 + 16);
  (v43)(v157, v151, v39);

  v44 = sub_25F17887C();
  v45 = sub_25F17952C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v168 = v146;
    *v46 = 136446466;
    *(v46 + 4) = sub_25F0BECF0(v130, v41, &v168);
    *(v46 + 12) = 2082;
    v130 = v44;
    sub_25F1794DC();
    v128 = v45;
    v47 = v157;
    v48 = sub_25F1794CC();
    v145 = v43;
    v49 = v48;
    v51 = v50;

    (*(v42 + 8))(v47, v39);
    v52 = v49;
    v43 = v145;
    v53 = sub_25F0BECF0(v52, v51, &v168);

    *(v46 + 14) = v53;
    v54 = v130;
    _os_log_impl(&dword_25F0B3000, v130, v128, "%{public}s: Loading %{public}s", v46, 0x16u);
    v55 = v146;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v55, -1, -1);
    MEMORY[0x25F8D6230](v46, -1, -1);

    (*(v153 + 8))(v165, v155);
    v56 = v150;
  }

  else
  {

    (*(v42 + 8))(v157, v39);
    (*(v153 + 8))(v165, v155);
    v56 = v39;
  }

  v57 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v171 = v57;
  (v43)(v156, v151, v56);
  sub_25F1791CC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v158;
  v157 = AssociatedConformanceWitness;
  sub_25F17964C();
  v60 = v159;
  v155 = *(v161 + 48);
  v156 = (v161 + 48);
  if ((v155)(v59, 1, v159) == 1)
  {
LABEL_5:
    (*(v140 + 8))(v162, AssociatedTypeWitness);
    v61 = MEMORY[0x277D84F90];
    v170 = MEMORY[0x277D84F90];
    v62 = v135;
    MEMORY[0x25F8D5160](v150, v149);
    v63 = v137;
    swift_getWitnessTable();
    sub_25F1797DC();
    (*(v136 + 8))(v62, v63);
    sub_25F17972C();
    v64 = v138;
    sub_25F17973C();
    v65 = v169;
    if (v169)
    {
      v66 = v168;
      v67 = (v164 + 8);
      v68 = v148;
      v69 = v132;
      while (1)
      {
        sub_25F127E88(v66, v65, &v171, &v170, v69);
        if (v68)
        {
          break;
        }

        (*v67)(v69, v166);

        sub_25F17973C();
        v66 = v168;
        v65 = v169;
        if (!v169)
        {
          goto LABEL_30;
        }
      }

      (*(v139 + 8))(v154, v64);
    }

    else
    {
      v68 = v148;
LABEL_30:
      (*(v139 + 8))(v154, v64);
      v97 = v170;
      isa = v170[2].isa;
      if (isa)
      {
        v148 = v68;
        v168 = v61;
        sub_25F0C97D8(0, isa, 0);
        v99 = v168;
        v167 = *(v164 + 16);
        v100 = *(v164 + 80);
        AssociatedTypeWitness = v97;
        v164 += 16;
        v101 = v97 + ((v100 + 32) & ~v100);
        v165 = *(v164 + 56);
        v102 = (v164 - 8);
        do
        {
          v103 = v160;
          v104 = v166;
          (v167)(v160, v101, v166);
          v105 = sub_25F178B0C();
          v107 = v106;
          (*v102)(v103, v104);
          v168 = v99;
          v109 = *(v99 + 16);
          v108 = *(v99 + 24);
          if (v109 >= v108 >> 1)
          {
            sub_25F0C97D8((v108 > 1), v109 + 1, 1);
            v99 = v168;
          }

          *(v99 + 16) = v109 + 1;
          v110 = v99 + 16 * v109;
          *(v110 + 32) = v105;
          *(v110 + 40) = v107;
          v101 = &v165[v101];
          isa = (isa - 1);
        }

        while (isa);

        v68 = v148;
      }

      else
      {

        v99 = MEMORY[0x277D84F90];
      }

      sub_25F12A358(v99);
      if (!v68)
      {

        v114 = v171;
        if (v171[2])
        {
          sub_25F1307BC(v111, v112, v113);
          swift_allocError();
          *v115 = v114;
          swift_willThrow();
LABEL_43:
          sub_25F1782DC();
          v125 = v142;
          sub_25F1782BC();

          return (*(v143 + 8))(v125, v144);
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    goto LABEL_42;
  }

  v165 = *(v161 + 32);
  v70 = (v161 + 16);
  v152 = v161 + 40;
  v153 = v161 + 8;
  (v165)(v18, v59, v60);
  while (1)
  {
    v73 = sub_25F17793C();
    if (v57[2])
    {
      v75 = sub_25F0C8D24(v73, v74);
      v77 = v76;

      if (v77)
      {
        v116 = *(v161 + 16);
        v117 = v129;
        v116(v129, v57[7] + *(v161 + 72) * v75, v60);
        v118 = sub_25F17793C();
        v166 = v119;
        v167 = v118;
        v120 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
        sub_25F12E2B8(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered, &unk_25F181F98);
        swift_allocError();
        v122 = v121;
        v123 = v166;
        *v121 = v167;
        v121[1] = v123;
        v116(v121 + *(v120 + 20), v117, v60);
        v116(v122 + *(v120 + 24), v18, v60);
        swift_willThrow();
        v124 = *(v161 + 8);
        v124(v117, v60);
        v124(v18, v60);
        (*(v140 + 8))(v162, AssociatedTypeWitness);
        goto LABEL_42;
      }
    }

    else
    {
    }

    v78 = sub_25F17793C();
    v80 = v79;
    (*v70)(v167, v18, v60);
    v81 = v171;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v81;
    v84 = sub_25F0C8D24(v78, v80);
    v85 = *(v81 + 16);
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      break;
    }

    v88 = v83;
    if (*(v81 + 24) >= v87)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v60 = v159;
        if (v83)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_25F1706A4();
        v60 = v159;
        if (v88)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v87, isUniquelyReferenced_nonNull_native);
      v89 = sub_25F0C8D24(v78, v80);
      if ((v88 & 1) != (v90 & 1))
      {
        goto LABEL_46;
      }

      v84 = v89;
      v60 = v159;
      if (v88)
      {
LABEL_11:

        v57 = v168;
        v71 = v161;
        (*(v161 + 40))(v168[7] + *(v161 + 72) * v84, v167, v60);
        (*(v71 + 8))(v18, v60);
        goto LABEL_12;
      }
    }

    v91 = v167;
    v57 = v168;
    v168[(v84 >> 6) + 8] |= 1 << v84;
    v92 = (v57[6] + 16 * v84);
    *v92 = v78;
    v92[1] = v80;
    v93 = v161;
    (v165)(v57[7] + *(v161 + 72) * v84, v91, v60);
    (*(v93 + 8))(v18, v60);
    v94 = v57[2];
    v95 = __OFADD__(v94, 1);
    v96 = v94 + 1;
    if (v95)
    {
      goto LABEL_45;
    }

    v57[2] = v96;
LABEL_12:
    v171 = v57;
    v72 = v158;
    sub_25F17964C();
    if ((v155)(v72, 1, v60) == 1)
    {
      goto LABEL_5;
    }

    (v165)(v18, v72, v60);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_25F17985C();
  __break(1u);
  return result;
}

uint64_t sub_25F120D9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F17767C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F120E64, 0, 0);
}

uint64_t sub_25F120E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v17 = v0[2];
  v18 = v5[5];
  v16 = v5[4];
  v6 = v5[3];
  v7 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v8 = v6 + *(type metadata accessor for BatchIdentity(0) + 20);
  (*(v4 + 16))(v2, v8 + v7, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[8] = v11;
  *(v11 + 16) = v5;
  (*(v4 + 32))(v11 + v9, v2, v3);
  *(v11 + v10) = v17;
  v12 = (v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v16;
  v12[1] = v18;

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_25F121020;
  v14 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A0D70](v0 + 11, sub_25F12DFAC, v11, v14);
}

uint64_t sub_25F121020()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25F1211BC;
  }

  else
  {
    v2 = sub_25F121150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F121150()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F1211BC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_25F121224(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v69 = a5;
  v63 = a4;
  v64 = a6;
  v11 = sub_25F1787BC();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F1787FC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F17888C();
  MEMORY[0x28223BE20](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[8];
  if (v20)
  {
    v60 = v17;
    v61 = v14;
    v62 = v13;
    v22 = a1[11];
    v21 = a1[12];
    v23 = a1[9];
    v24 = a1[10];
    v72 = a1[7];
    v73 = v20;
    v74 = v23;
    *&v75 = v24;
    *(&v75 + 1) = v22;
    v76 = v21;

    v25 = sub_25F121950(a3);
    if (v7)
    {
      v64 = v22;
      sub_25F17885C();

      v26 = v7;
      v27 = sub_25F17887C();
      v28 = sub_25F17953C();

      v29 = os_log_type_enabled(v27, v28);
      v59[1] = v24;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59[0] = v20;
        v32 = v31;
        v33 = swift_slowAlloc();
        v70[0] = v33;
        *v30 = 136446466;
        *(v30 + 4) = sub_25F0BECF0(v63, v69, v70);
        *(v30 + 12) = 2112;
        v34 = v7;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v35;
        *v32 = v35;
        _os_log_impl(&dword_25F0B3000, v27, v28, "%{public}s: Failed updating target descriptions: %@", v30, 0x16u);
        sub_25F0B7E94(v32, &qword_27FD473D0, &unk_25F17C540);
        MEMORY[0x25F8D6230](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x25F8D6230](v33, -1, -1);
        MEMORY[0x25F8D6230](v30, -1, -1);
      }

      (*(v60 + 8))(v19, v16);
      v77 = a1[14];

      v36 = v65;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0, MEMORY[0x277D40588]);
      sub_25F17856C();
      (*(v66 + 8))(v36, v67);

      v37 = v68;
      sub_25F1787DC();
      v38 = v7;
      sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580], MEMORY[0x277D40578]);
      v39 = v62;
      sub_25F1781BC();

      (*(v61 + 8))(v37, v39);
      v40 = v71;
      v41 = __swift_project_boxed_opaque_existential_1(v70, v71);
      v42 = *(v40 - 8);
      MEMORY[0x28223BE20](v41);
      v44 = v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v44);
      if (sub_25F17981C())
      {
        (*(v42 + 8))(v44, v40);
      }

      else
      {
        swift_allocError();
        (*(v42 + 32))(v58, v44, v40);
      }

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

    else
    {
      v48 = v25;
      v49 = v73;
      v50 = v74;
      v51 = v76;
      v52 = a1[7];
      v53 = a1[8];
      v54 = a1[9];
      v55 = a1[10];
      v56 = a1[11];
      v57 = a1[12];
      a1[7] = v72;
      a1[8] = v49;
      a1[9] = v50;
      *(a1 + 5) = v75;
      a1[12] = v51;
      sub_25F11D8DC(v52, v53, v54, v55, v56, v57);
      *v64 = v48 & 1;
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F182018);
    swift_allocError();
    v46 = v45;
    v47 = sub_25F17767C();
    (*(*(v47 - 8) + 16))(v46, a2, v47);
    swift_willThrow();
  }
}

uint64_t sub_25F121950(uint64_t a1)
{
  v120 = sub_25F178B1C();
  v109 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v122 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v125 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v126 = &v101 - v7;
  v108 = sub_25F17888C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v112 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25F17835C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = &v101 - v11;
  v115 = sub_25F177FBC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F1779DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v130 = &v101 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v102 = &v101 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - v21;
  v23 = v1[1];
  v111 = *v1;
  v123 = v1;
  v110 = v23;
  v24 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v136 = v24;
  v25 = *(a1 + 16);
  v133 = v13;
  v116 = v14;
  v124 = v25;
  v117 = a1;
  if (!v25)
  {
LABEL_21:
    if (v24[2].isa)
    {
      v130 = sub_25F1782EC();
      sub_25F1782DC();
      v53 = v103;
      (*(v114 + 56))(v103, 1, 1, v115);
      v54 = v104;
      sub_25F17834C();
      v55 = v111;
      v56 = v110;
      sub_25F1782CC();

      (*(v105 + 8))(v54, v106);
      sub_25F0B7E94(v53, &qword_27FD487B0, &unk_25F180760);
      v57 = v112;
      sub_25F17885C();

      v58 = sub_25F17887C();
      v59 = sub_25F17952C();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v134 = v132;
        *v60 = 136446466;
        *(v60 + 4) = sub_25F0BECF0(v55, v56, &v134);
        *(v60 + 12) = 2082;
        v135 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487F8, &qword_25F180770);
        sub_25F0B7D00(&unk_27FD48800, &qword_27FD487F8, &qword_25F180770, MEMORY[0x277D83530]);
        sub_25F1794DC();
        v61 = sub_25F1794CC();
        v63 = v62;

        v64 = sub_25F0BECF0(v61, v63, &v134);

        *(v60 + 14) = v64;
        _os_log_impl(&dword_25F0B3000, v58, v59, "%{public}s: Updating %{public}s", v60, 0x16u);
        v65 = v132;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v65, -1, -1);
        MEMORY[0x25F8D6230](v60, -1, -1);

        (*(v107 + 8))(v112, v108);
      }

      else
      {

        (*(v107 + 8))(v57, v108);
      }

      v78 = v125;
      v79 = (v116 + 56);
      v135 = MEMORY[0x277D84F90];
      v80 = (v116 + 48);
      v81 = (v116 + 32);
      v82 = (v116 + 8);
      v131 = (v116 + 16);
      v132 = v109 + 1;

      LOBYTE(v67) = 0;
      v83 = 0;
      while (1)
      {
        if (v83 == v124)
        {
          v84 = 1;
          v83 = v124;
        }

        else
        {
          if (v83 >= v124)
          {
            goto LABEL_45;
          }

          (*(v116 + 16))(v126, v117 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v83, v133);
          v51 = __OFADD__(v83++, 1);
          if (v51)
          {
            goto LABEL_46;
          }

          v84 = 0;
        }

        v85 = v126;
        v86 = v133;
        (*v79)(v126, v84, 1, v133);
        sub_25F130B48(v85, v78);
        if ((*v80)(v78, 1, v86) == 1)
        {
          break;
        }

        v87 = v121;
        (*v81)(v121, v78, v86);
        v67 = sub_25F17793C();
        v89 = v88;
        (*v82)(v87, v86);
        swift_beginAccess();
        v90 = v122;
        v91 = v128;
        sub_25F127E88(v67, v89, &v136, &v135, v122);
        v128 = v91;
        if (v91)
        {
          swift_endAccess();

          sub_25F1782DC();
          v97 = v113;
          sub_25F1782BC();

          (*(v114 + 8))(v97, v115);

          return v67 & 1;
        }

        swift_endAccess();

        (v132->isa)(v90, v120);
        LOBYTE(v67) = 1;
        v78 = v125;
      }

      if (v67)
      {
        v92 = v123[4];
        v93 = v135;

        v95 = v92;
        v96 = v128;
        sub_25F130BB8(v94, v111, v110, v95);
        if (v96)
        {
          swift_bridgeObjectRelease_n();
          sub_25F1782DC();
          v99 = v113;
          sub_25F1782BC();

          (*(v114 + 8))(v99, v115);
          goto LABEL_41;
        }

        sub_25F12A8B4(v93);
      }

      sub_25F1782DC();
      v98 = v113;
      sub_25F1782BC();

      (*(v114 + 8))(v98, v115);
    }

    else
    {

      LOBYTE(v67) = 0;
    }

    return v67 & 1;
  }

  v26 = v14 + 16;
  v131 = *(v14 + 16);
  v132 = (v14 + 16);
  v27 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v28 = *(v26 + 56);
  v127 = (v26 - 8);
  v118 = (v26 + 24);
  v119 = (v26 + 16);
  v131(v22, v27, v13);
  while (1)
  {
    v29 = sub_25F17793C();
    if (v24[2].isa)
    {
      break;
    }

LABEL_10:
    v129 = v25;
    v34 = sub_25F17793C();
    v35 = v22;
    v37 = v36;
    v38 = v35;
    v131(v130, v35, v13);
    v39 = v136;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v39;
    v42 = sub_25F0C8D24(v34, v37);
    v43 = *(v39 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      result = sub_25F17985C();
      __break(1u);
      return result;
    }

    v46 = v41;
    if (*(v39 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v133;
        if (v41)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25F1706A4();
        v13 = v133;
        if (v46)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_25F0C8D24(v34, v37);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_47;
      }

      v42 = v47;
      v13 = v133;
      if (v46)
      {
LABEL_3:

        v24 = v134;
        (*v118)(v134[7].isa + v42 * v28, v130, v13);
        v22 = v38;
        (*v127)(v38, v13);
        goto LABEL_4;
      }
    }

    v24 = v134;
    v134[(v42 >> 6) + 8].isa = (v134[(v42 >> 6) + 8].isa | (1 << v42));
    v49 = (v24[6].isa + 16 * v42);
    *v49 = v34;
    v49[1] = v37;
    (*v119)(v24[7].isa + v42 * v28, v130, v13);
    v22 = v38;
    (*v127)(v38, v13);
    isa = v24[2].isa;
    v51 = __OFADD__(isa, 1);
    v52 = (isa + 1);
    if (v51)
    {
      goto LABEL_44;
    }

    v24[2].isa = v52;
LABEL_4:
    v136 = v24;
    v27 += v28;
    v25 = v129 - 1;
    if (v129 == 1)
    {
      goto LABEL_21;
    }

    v131(v22, v27, v13);
  }

  v31 = sub_25F0C8D24(v29, v30);
  v33 = v32;
  v13 = v133;

  if ((v33 & 1) == 0)
  {
    goto LABEL_10;
  }

  v66 = v24[7].isa + v31 * v28;
  v130 = v22;
  v67 = v102;
  v68 = v131;
  v131(v102, v66, v13);
  v129 = sub_25F17793C();
  v70 = v69;
  v71 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  sub_25F12E2B8(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered, &unk_25F181F98);
  swift_allocError();
  v72 = v13;
  v74 = v73;
  *v73 = v129;
  v73[1] = v70;
  v68(v73 + *(v71 + 20), v67, v72);
  v75 = v74 + *(v71 + 24);
  v76 = v130;
  v68(v75, v130, v72);
  swift_willThrow();
  v77 = *v127;
  (*v127)(v67, v72);
  v77(v76, v72);
LABEL_41:

  return v67 & 1;
}

uint64_t sub_25F12279C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v45 - v3;
  v50 = sub_25F17888C();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17767C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v55 = v14;
  MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = v1[3];
  v18 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v19 = v17 + *(type metadata accessor for BatchIdentity(0) + 20);
  v59 = v8;
  v20 = *(v8 + 16);
  v20(v16, v19 + v18, v7);
  v21 = v1[5];
  v52 = v1[4];
  v53 = v21;
  v57 = v1;

  sub_25F17885C();
  v58 = v16;
  v49 = v20;
  v20(v13, v16, v7);
  v51 = v6;
  v22 = sub_25F17887C();
  v23 = sub_25F17952C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60 = v46;
    *v24 = 136315138;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v25 = sub_25F17980C();
    v27 = v26;
    v28 = *(v59 + 8);
    v47 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v28;
    v28(v13, v7);
    v29 = sub_25F0BECF0(v25, v27, &v60);

    *(v24 + 4) = v29;
    v30 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x25F8D6230](v30, -1, -1);
    MEMORY[0x25F8D6230](v24, -1, -1);
  }

  else
  {

    v31 = *(v59 + 8);
    v47 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v31;
    v31(v13, v7);
  }

  (*(v4 + 8))(v51, v50);
  v50 = 0x800000025F183FC0;
  v46 = 0x800000025F186420;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  v32 = sub_25F17932C();
  (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  v33 = v54;
  v49(v54, v58, v7);
  v34 = v7;
  v35 = v59;
  v36 = (*(v59 + 80) + 56) & ~*(v59 + 80);
  v37 = (v55 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v40 = v52;
  v39 = v53;
  *(v38 + 2) = v57;
  *(v38 + 3) = v40;
  *(v38 + 4) = v39;
  *(v38 + 5) = 0xD000000000000028;
  *(v38 + 6) = v46;
  (*(v35 + 32))(&v38[v36], v33, v34);
  v41 = &v38[v37];
  v42 = v50;
  *v41 = 0xD00000000000004FLL;
  *(v41 + 1) = v42;

  v43 = sub_25F17870C();
  v48(v58, v34);
  return v43;
}

uint64_t sub_25F122D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_25F17767C();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F122E04, 0, 0);
}

uint64_t sub_25F122E04()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v17 = *(v0 + 48);
  v9 = *(v3 + 16);
  *(v0 + 120) = v9;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v4, v2);
  v10 = *(v3 + 80);
  *(v0 + 208) = v10;
  v11 = (v10 + 56) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  *(v12 + 2) = v7;
  *(v12 + 3) = v8;
  *(v12 + 4) = v6;
  *(v12 + 5) = v17;
  *(v12 + 6) = v5;
  v13 = *(v3 + 32);
  *(v0 + 144) = v13;
  *(v0 + 152) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(&v12[v11], v1, v2);

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  v15 = sub_25F178B2C();
  *v14 = v0;
  v14[1] = sub_25F122FAC;

  return MEMORY[0x2821A0D70](v0 + 16, sub_25F130904, v12, v15);
}

uint64_t sub_25F122FAC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25F1233F8;
  }

  else
  {

    v2 = sub_25F1230C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1230C8()
{
  v19 = *(v0 + 144);
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v18 = *(v0 + 56);
  v7 = *(v0 + 40);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v8 = *(v0 + 24);
  v15 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v0 + 176) = v9;
  v2(v3, v6, v5);
  v10 = (v1 + 80) & ~v1;
  v11 = swift_allocObject();
  *(v0 + 184) = v11;
  *(v11 + 2) = v8;
  *(v11 + 3) = v9;
  *(v11 + 4) = v16;
  *(v11 + 5) = v4;
  *(v11 + 6) = v15;
  *(v11 + 7) = v7;
  *(v11 + 8) = v17;
  *(v11 + 9) = v18;
  v19(&v11[v10], v3, v5);

  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_25F12326C;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v12, sub_25F130A60, v11, v13);
}

uint64_t sub_25F12326C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_25F123464;
  }

  else
  {

    v2 = sub_25F123388;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F123388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1233F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F123464()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25F1234D8(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v93 = a2;
  v94 = a4;
  v96 = a7;
  v11 = sub_25F17767C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v91 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  v90 = &v83 - v18;
  v19 = sub_25F17888C();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v28 = a1[8];
  if (v28)
  {
    v92 = a6;
    v29 = a1[11];
    v30 = a1[12];
    v31 = a1[10];
    if (*(a1 + 72))
    {
      if (*(a1 + 72) == 1)
      {
        a1[9] = 2;
        *v96 = v31;

        return;
      }

      v95 = v26;
      v96 = v24;
      v89 = v28;
      v61 = v27;

      v88 = v31;

      v87 = v29;

      v86 = v30;

      sub_25F17885C();
      v62 = v12;
      v64 = *(v12 + 16);
      v63 = v12 + 16;
      v65 = v91;
      v66 = v92;
      v85 = v11;
      v90 = v64;
      (v64)(v91, v92, v11);
      v67 = a3;

      v84 = v61;
      v68 = sub_25F17887C();
      v69 = sub_25F17953C();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v83 = v63;
        v71 = v70;
        v72 = v62;
        v73 = swift_slowAlloc();
        v97 = v73;
        *v71 = 136446722;
        *(v71 + 4) = sub_25F0BECF0(v93, v67, &v97);
        *(v71 + 12) = 2082;
        *(v71 + 14) = sub_25F0BECF0(v94, a5, &v97);
        *(v71 + 22) = 2080;
        sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
        v74 = v69;
        v75 = v85;
        v76 = sub_25F17980C();
        v78 = v77;
        (*(v72 + 8))(v65, v75);
        v79 = sub_25F0BECF0(v76, v78, &v97);
        v66 = v92;

        *(v71 + 24) = v79;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v73, -1, -1);
        MEMORY[0x25F8D6230](v71, -1, -1);
      }

      else
      {

        v75 = v85;
        (*(v62 + 8))(v65, v85);
      }

      (*(v95 + 8))(v84, v96);
      type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError(0);
      sub_25F12E2B8(&qword_27FD487E8, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError, &unk_25F181BB8);
      swift_allocError();
      (v90)(v82, v66, v75);
    }

    else
    {
      v95 = v26;
      v96 = v24;
      v89 = v28;
      v43 = &v83 - v25;

      v88 = v31;

      v87 = v29;

      v86 = v30;

      sub_25F17885C();
      v44 = v12;
      v45 = *(v12 + 16);
      v46 = v90;
      v47 = v92;
      v48 = v11;
      v91 = (v12 + 16);
      v85 = v45;
      v45(v90, v92, v11);

      v49 = a5;

      v84 = v43;
      v50 = sub_25F17887C();
      v51 = sub_25F17953C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        LODWORD(v83) = v51;
        v53 = v52;
        v54 = swift_slowAlloc();
        v97 = v54;
        *v53 = 136446722;
        *(v53 + 4) = sub_25F0BECF0(v93, a3, &v97);
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_25F0BECF0(v94, v49, &v97);
        *(v53 + 22) = 2080;
        sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
        v55 = v50;
        v56 = sub_25F17980C();
        v58 = v57;
        (*(v44 + 8))(v46, v11);
        v59 = sub_25F0BECF0(v56, v58, &v97);
        v47 = v92;

        *(v53 + 24) = v59;
        swift_arrayDestroy();
        v60 = v54;
        v48 = v11;
        MEMORY[0x25F8D6230](v60, -1, -1);
        MEMORY[0x25F8D6230](v53, -1, -1);
      }

      else
      {

        (*(v44 + 8))(v46, v11);
      }

      (*(v95 + 8))(v84, v96);
      type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError(0);
      sub_25F12E2B8(&qword_27FD487F0, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError, &unk_25F181B78);
      swift_allocError();
      v85(v81, v47, v48);
    }

    swift_willThrow();
  }

  else
  {
    v95 = v26;
    v96 = v24;
    sub_25F17885C();
    v91 = *(v12 + 16);
    v92 = v12 + 16;
    (v91)(v15, a6, v11);

    v32 = sub_25F17887C();
    v33 = sub_25F17953C();

    LODWORD(v90) = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v88 = v32;
      v35 = a3;
      v36 = v34;
      v89 = swift_slowAlloc();
      v97 = v89;
      *v36 = 136446722;
      *(v36 + 4) = sub_25F0BECF0(v93, v35, &v97);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_25F0BECF0(v94, a5, &v97);
      *(v36 + 22) = 2080;
      sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v37 = sub_25F17980C();
      v39 = v38;
      (*(v12 + 8))(v15, v11);
      v40 = sub_25F0BECF0(v37, v39, &v97);

      *(v36 + 24) = v40;
      v41 = v88;
      v42 = v89;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v42, -1, -1);
      MEMORY[0x25F8D6230](v36, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*(v95 + 8))(v22, v96);
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F12E2B8(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F182018);
    swift_allocError();
    (v91)(v80, a6, v11);
    swift_willThrow();
  }
}

uint64_t sub_25F123F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v126 = a7;
  v132 = a8;
  v129 = a6;
  v117 = a5;
  v135 = a9;
  v13 = sub_25F1787BC();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x28223BE20](v13);
  v120 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_25F1787FC();
  v124 = *(v15 - 8);
  v125 = v15;
  MEMORY[0x28223BE20](v15);
  v123 = &v107[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_25F17767C();
  v17 = *(v128 - 8);
  v18 = MEMORY[0x28223BE20](v128);
  v119 = &v107[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v107[-v21];
  MEMORY[0x28223BE20](v20);
  v116 = &v107[-v23];
  v24 = sub_25F17888C();
  v134 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v133 = &v107[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v107[-v28];
  MEMORY[0x28223BE20](v27);
  v118 = &v107[-v30];
  v31 = a2;
  v32 = a2;
  v33 = a3;
  v34 = a3;
  v35 = a4;
  v131 = a1;
  v36 = v127;
  sub_25F1250B4(v32, v34, a4);
  v136 = v24;
  v130 = v17;
  if (v36)
  {
    v37 = v132;
    v38 = v36;
    v40 = v128;
    v39 = v129;
LABEL_8:
    v64 = v133;
    sub_25F17885C();
    v65 = v130;
    v66 = v119;
    (*(v130 + 16))(v119, v135, v40);

    v67 = v38;
    v68 = sub_25F17887C();
    v69 = sub_25F17953C();

    LODWORD(v135) = v69;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v40;
      v71 = v66;
      v72 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v137[0] = v132;
      *v72 = 136446978;
      *(v72 + 4) = sub_25F0BECF0(v117, v39, v137);
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_25F0BECF0(v126, v37, v137);
      *(v72 + 22) = 2080;
      sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v73 = v70;
      v74 = sub_25F17980C();
      v76 = v75;
      (*(v65 + 8))(v71, v73);
      v77 = sub_25F0BECF0(v74, v76, v137);

      *(v72 + 24) = v77;
      *(v72 + 32) = 2114;
      v78 = v38;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 34) = v79;
      v80 = v129;
      *v129 = v79;
      sub_25F0B7E94(v80, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v80, -1, -1);
      v81 = v132;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v81, -1, -1);
      MEMORY[0x25F8D6230](v72, -1, -1);

      (*(v134 + 8))(v133, v136);
    }

    else
    {

      (*(v65 + 8))(v66, v40);
      (*(v134 + 8))(v64, v136);
    }

    v139 = *(v131 + 112);

    v82 = v120;
    sub_25F1787CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
    sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0, MEMORY[0x277D40588]);
    sub_25F17856C();
    (*(v121 + 8))(v82, v122);

    v83 = v123;
    sub_25F1787DC();
    v84 = v38;
    sub_25F12E2B8(&qword_27FD487D8, MEMORY[0x277D40580], MEMORY[0x277D40578]);
    v85 = v125;
    sub_25F1781BC();

    (*(v124 + 8))(v83, v85);
    v86 = v138;
    v87 = __swift_project_boxed_opaque_existential_1(v137, v138);
    v88 = *(v86 - 8);
    MEMORY[0x28223BE20](v87);
    v90 = &v107[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v88 + 16))(v90);
    if (sub_25F17981C())
    {
      (*(v88 + 8))(v90, v86);
    }

    else
    {
      swift_allocError();
      (*(v88 + 32))(v91, v90, v86);
    }

    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(v137);
  }

  v114 = v33;
  v115 = v31;
  v112 = v22;
  v113 = v29;
  v127 = 0;
  sub_25F17885C();
  v41 = v17;
  v42 = *(v17 + 16);
  v43 = v116;
  v44 = v128;
  v111 = v17 + 16;
  v110 = v42;
  v42(v116, v135, v128);
  v45 = v129;

  v46 = v132;

  v47 = v35;

  v48 = sub_25F17887C();
  v49 = sub_25F17951C();

  v50 = v45;
  v51 = v47;
  if (os_log_type_enabled(v48, v49))
  {
    v52 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v137[0] = v109;
    *v52 = 136446978;
    v108 = v49;
    v39 = v50;
    *(v52 + 4) = sub_25F0BECF0(v117, v50, v137);
    *(v52 + 12) = 2082;
    *(v52 + 14) = sub_25F0BECF0(v126, v46, v137);
    *(v52 + 22) = 2082;
    *(v52 + 24) = sub_25F0BECF0(v114, v51, v137);
    *(v52 + 32) = 2080;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v53 = sub_25F17980C();
    v54 = v43;
    v56 = v55;
    v57 = *(v41 + 8);
    v40 = v44;
    v116 = v57;
    (v57)(v54, v44);
    v58 = sub_25F0BECF0(v53, v56, v137);

    *(v52 + 34) = v58;
    v59 = v109;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v59, -1, -1);
    MEMORY[0x25F8D6230](v52, -1, -1);

    v46 = v132;
  }

  else
  {
    v39 = v50;

    v61 = *(v41 + 8);
    v40 = v44;
    v116 = v61;
    (v61)(v43, v44);
  }

  v60 = *(v134 + 8);
  v60(v118, v136);
  v62 = v127;
  v63 = sub_25F178ACC();
  if (v62)
  {
    v37 = v46;
    v38 = v62;
    goto LABEL_8;
  }

  LODWORD(v133) = v63;
  v93 = v113;
  sub_25F17885C();
  v94 = v112;
  v110(v112, v135, v40);

  v95 = sub_25F17887C();
  v96 = sub_25F17952C();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    LODWORD(v135) = v96;
    v98 = v94;
    v99 = v97;
    v100 = swift_slowAlloc();
    v137[0] = v100;
    *v99 = 136446722;
    *(v99 + 4) = sub_25F0BECF0(v117, v39, v137);
    *(v99 + 12) = 2080;
    sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v101 = v98;
    v102 = sub_25F17980C();
    v104 = v103;
    (v116)(v101, v40);
    v105 = sub_25F0BECF0(v102, v104, v137);

    *(v99 + 14) = v105;
    *(v99 + 22) = 1026;
    *(v99 + 24) = v133;
    _os_log_impl(&dword_25F0B3000, v95, v135, "%{public}s: runProgramOnMainThread returned normally for %s, returned: %{public}d", v99, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v100, -1, -1);
    MEMORY[0x25F8D6230](v99, -1, -1);

    v106 = v113;
  }

  else
  {

    (v116)(v94, v40);
    v106 = v93;
  }

  v60(v106, v136);
  return sub_25F124D08();
}

uint64_t sub_25F124D08()
{
  v1 = sub_25F178F8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F178FBC();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 48);
  aBlock[4] = sub_25F12E298;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F125070;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  sub_25F178FAC();
  v12 = MEMORY[0x277D84F90];
  sub_25F12E2B8(&qword_27FD48688, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48690, &qword_25F180540);
  sub_25F0B7D00(&unk_27FD48698, &qword_27FD48690, &qword_25F180540, MEMORY[0x277D83970]);
  sub_25F17966C();
  MEMORY[0x25F8D5530](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

double sub_25F124FBC(uint64_t a1)
{
  if (*(a1 + 64))
  {
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    sub_25F11D940();
  }

  return result;
}

uint64_t sub_25F125070(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25F1250B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v48 = a1;
  v5 = sub_25F1784DC();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v45 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = *(v3 + 40);
  v50 = *(v3 + 32);
  sub_25F17845C();
  sub_25F17844C();
  v17 = sub_25F17842C();

  if (!v17)
  {
LABEL_4:
    sub_25F17885C();

    v20 = sub_25F17887C();
    v21 = sub_25F17952C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_25F0BECF0(v50, v16, &v53);
      _os_log_impl(&dword_25F0B3000, v20, v21, "%{public}s: No swift entry symbol found", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8D6230](v23, -1, -1);
      MEMORY[0x25F8D6230](v22, -1, -1);
    }

    (*(v51 + 8))(v11, v52);
    return;
  }

  v18 = sub_25F1780AC();
  if (v19)
  {

    goto LABEL_4;
  }

  v24 = v18;
  v44 = v4;
  sub_25F17885C();

  v25 = sub_25F17887C();
  v26 = sub_25F17952C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v24;
    v29 = v28;
    v53 = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_25F0BECF0(v50, v16, &v53);
    *(v27 + 12) = 2050;
    *(v27 + 14) = v43;
    _os_log_impl(&dword_25F0B3000, v25, v26, "%{public}s: Symbol table with entry section pointer %{public}llx is present. Sending to agent.", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x25F8D6230](v29, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  v30 = *(v51 + 8);
  v30(v15, v52);
  sub_25F1784CC();
  v31 = v44;
  v32 = sub_25F1784BC();
  if (v31)
  {
    (*(v49 + 8))(v7, v5);
LABEL_11:

    return;
  }

  v34 = v32;
  v35 = v33;
  v44 = v30;
  (*(v49 + 8))(v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25F17C9B0;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  v37 = sub_25F178AAC();

  if (!v37)
  {
    goto LABEL_11;
  }

  v38 = v45;
  sub_25F17885C();

  v39 = sub_25F17887C();
  v40 = sub_25F17953C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53 = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_25F0BECF0(v50, v16, &v53);
    *(v41 + 12) = 1026;
    *(v41 + 14) = v37;
    _os_log_impl(&dword_25F0B3000, v39, v40, "%{public}s: __previews_injection_register_swift_extension_entry_section call returned %{public}d", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x25F8D6230](v42, -1, -1);
    MEMORY[0x25F8D6230](v41, -1, -1);
  }

  v44(v38, v52);
}

uint64_t sub_25F1256A0(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A80, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F180BC8);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12570C(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A80, type metadata accessor for PreviewsJITLinker.InvalidatedError, &unk_25F180BC8);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125794(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A08, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError, &unk_25F181988);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125800(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A08, type metadata accessor for PreviewsJITLinker.InitialLinkNotInvokedError, &unk_25F181988);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132B8C(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F1258C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132B8C(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12591C()
{
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return 0x203A65646F63;
}

uint64_t sub_25F12598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132BE0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F1259C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132BE0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F125A20()
{
  sub_25F1796DC();

  strcpy(v2, "Agent bundle: ");
  sub_25F17767C();
  sub_25F12E2B8(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return v2[0];
}

uint64_t sub_25F125AF8(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A10, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError, &unk_25F181878);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125B64(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A10, type metadata accessor for PreviewsJITLinker.MainAlreadyInvokedError, &unk_25F181878);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125BD0(uint64_t a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD00000000000001CLL, 0x800000025F1868E0);
  sub_25F17722C();
  sub_25F17976C();
  return 0;
}

uint64_t sub_25F125C8C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_25F125CC4(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A00, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType, &unk_25F181A98);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F125D30(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A00, type metadata accessor for PreviewsJITLinker.UnknownAgentProcessType, &unk_25F181A98);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F125DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132C34(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F125DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132C34(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F125E30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](a1, a2);
  MEMORY[0x25F8D50D0](0x203A687461700ALL, 0xE700000000000000);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    a3 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x25F8D50D0](a3, v8);

  return 0x3A7972617262696CLL;
}

unint64_t sub_25F125F18()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD000000000000030;
}

uint64_t sub_25F125FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1306C0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F125FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1306C0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

void sub_25F126020(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v141 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48770, &qword_25F180740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v123 - v8;
  v10 = sub_25F178A9C();
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  v136 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48778, &qword_25F180748);
  MEMORY[0x28223BE20](v12 - 8);
  v139 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48780, &unk_25F180750);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v123 - v15;
  v16 = sub_25F178B1C();
  v142 = *(v16 - 8);
  v143 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v135 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v144 = &v123 - v19;
  v20 = sub_25F1779DC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v132 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v123 - v24;
  v26 = sub_25F17888C();
  v146 = *(v26 - 8);
  v147 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v133 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v123 - v29;
  v31 = *v5;
  v148 = v5[1];
  v149 = v31;

  v152 = a1;
  v32 = sub_25F17793C();
  v145 = v5;
  v34 = v5[5];
  v134 = v5 + 5;
  if (*(v34 + 16))
  {
    v131 = sub_25F0C8D24(v32, v33);
    v36 = v35;
    v4 = v3;

    if (v36)
    {

      (*(v142 + 16))(v141, *(v34 + 56) + *(v142 + 72) * v131, v143);
      return;
    }
  }

  else
  {
  }

  v130 = v9;
  sub_25F17885C();
  v37 = *(v21 + 16);
  v127 = v21 + 16;
  v126 = v37;
  v37(v25, v152, v20);
  v38 = v148;

  v39 = sub_25F17887C();
  v40 = sub_25F17952C();

  v41 = os_log_type_enabled(v39, v40);
  v129 = v20;
  v128 = v21;
  if (v41)
  {
    v42 = v20;
    v43 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v150 = v125;
    *v43 = 136446466;
    *(v43 + 4) = sub_25F0BECF0(v149, v38, &v150);
    *(v43 + 12) = 2080;
    LODWORD(v124) = v40;
    v44 = sub_25F17793C();
    v45 = v21;
    v46 = v4;
    v48 = v47;
    v131 = *(v45 + 8);
    (v131)(v25, v42);
    v49 = sub_25F0BECF0(v44, v48, &v150);
    v4 = v46;

    *(v43 + 14) = v49;
    _os_log_impl(&dword_25F0B3000, v39, v124, "%{public}s: Creating JIT Dylib for %s", v43, 0x16u);
    v50 = v125;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v50, -1, -1);
    MEMORY[0x25F8D6230](v43, -1, -1);

    v51 = v149;
    v52 = *(v146 + 8);
    v52(v30, v147);
  }

  else
  {

    v131 = *(v21 + 8);
    (v131)(v25, v20);
    v52 = *(v146 + 8);
    v52(v30, v147);
    v51 = v149;
  }

  v53 = v152;
  v54 = sub_25F17797C();
  MEMORY[0x28223BE20](v54);
  *(&v123 - 4) = v53;
  *(&v123 - 3) = v51;
  v55 = v145;
  *(&v123 - 2) = v38;
  *(&v123 - 1) = v55;
  sub_25F11D31C(sub_25F13064C, (&v123 - 6), v54);

  if (v4)
  {

    return;
  }

  v125 = v52;
  v56 = v55[3];
  sub_25F17793C();
  sub_25F17793C();
  v57 = v139;
  sub_25F1789AC();
  v58 = sub_25F1789CC();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_25F1779BC();
  v59 = v140;
  sub_25F1789DC();
  v60 = sub_25F1789EC();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  sub_25F17893C();
  sub_25F0B7E94(v59, &qword_27FD48780, &unk_25F180750);

  if (sub_25F17796C() & 1) != 0 && (sub_25F17793C(), v61 = sub_25F17917C(), , (v61))
  {
    v145 = v56;
    v62 = sub_25F17793C();
    v64 = sub_25F127D20(47, 0xE100000000000000, v62, v63);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      sub_25F17793C();
      v67 = sub_25F17918C();

      if (v67)
      {
        v68 = sub_25F17793C();
        sub_25F127E10(v64, v68, v69);
        v71 = v70;

        v72 = sub_25F17962C();
        if (v73)
        {
          v72 = v71;
        }

        if (v71 >> 14 < v72 >> 14)
        {
          __break(1u);
        }

        else
        {
          v74 = sub_25F17963C();

          if ((sub_25F17912C() & 0x8000000000000000) == 0)
          {
            v139 = 0;
            v75 = sub_25F17962C();
            if (v76)
            {
              v77 = v74;
            }

            else
            {
              v77 = v75;
            }

            if (v77 >> 14 >= v74 >> 14)
            {
              v78 = sub_25F17963C();
              v80 = v79;
              v82 = v81;
              v84 = v83;

              v85 = sub_25F17961C();
              v87 = v86;
              v150 = 0;
              v151 = 0xE000000000000000;
              sub_25F1796DC();

              v150 = 791293534;
              v151 = 0xE400000000000000;
              MEMORY[0x25F8D50D0](v85, v87);

              MEMORY[0x25F8D50D0](0xD000000000000013, 0x800000025F1866F0);
              v88 = v151;
              v124 = v150;
              v150 = 3092772;
              v151 = 0xE300000000000000;
              v89 = MEMORY[0x25F8D5070](v78, v80, v82, v84);
              v91 = v90;

              MEMORY[0x25F8D50D0](v89, v91);

              v93 = v150;
              v92 = v151;
              v94 = v133;
              sub_25F17885C();
              v95 = v132;
              v126(v132, v152, v129);
              v96 = v148;

              v97 = sub_25F17887C();
              v98 = sub_25F17951C();
              v140 = v92;

              v127 = v88;

              LODWORD(v126) = v98;
              if (os_log_type_enabled(v97, v98))
              {
                v99 = v93;
                v100 = swift_slowAlloc();
                v101 = v95;
                v102 = swift_slowAlloc();
                v150 = v102;
                *v100 = 136446978;
                v103 = sub_25F0BECF0(v149, v96, &v150);

                *(v100 + 4) = v103;
                *(v100 + 12) = 2080;
                v104 = sub_25F17793C();
                v106 = v105;
                (v131)(v101, v129);
                v107 = sub_25F0BECF0(v104, v106, &v150);

                *(v100 + 14) = v107;
                *(v100 + 22) = 2080;
                *(v100 + 24) = sub_25F0BECF0(v124, v127, &v150);
                *(v100 + 32) = 2080;
                *(v100 + 34) = sub_25F0BECF0(v99, v140, &v150);
                _os_log_impl(&dword_25F0B3000, v97, v126, "%{public}s: setting loadable at path via regex for “%s”, regex: “%s”, replacement: “%s”", v100, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x25F8D6230](v102, -1, -1);
                MEMORY[0x25F8D6230](v100, -1, -1);

                v125(v133, v147);
              }

              else
              {

                (v131)(v95, v129);
                v125(v94, v147);
              }

              v108 = v139;
              v122 = v144;
              v56 = v145;
              sub_25F178ADC();
              v109 = v138;
              if (v108)
              {
                (*(v142 + 8))(v122, v143);

                return;
              }

              goto LABEL_25;
            }

LABEL_36:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    v109 = v138;
    v56 = v145;
  }

  else
  {
    v109 = v138;
  }

LABEL_25:

  if (sub_25F17796C())
  {
    v110 = v135;
    sub_25F17894C();
    v111 = *MEMORY[0x277D7E938];
    v112 = v137;
    v113 = *(v137 + 104);
    v145 = v56;
    v114 = v136;
    LODWORD(v152) = v111;
    v113(v136);
    sub_25F178AFC();
    (*(v112 + 8))(v114, v109);
    v115 = v142;
    v116 = v143;
    (*(v142 + 8))(v110, v143);
  }

  else
  {
    LODWORD(v152) = *MEMORY[0x277D7E938];
    v114 = v136;
    v112 = v137;
    v110 = v135;
    v115 = v142;
    v116 = v143;
  }

  sub_25F17897C();
  (*(v112 + 104))(v114, v152, v109);
  sub_25F178AFC();
  (*(v112 + 8))(v114, v109);
  (*(v115 + 8))(v110, v116);
  v117 = sub_25F17793C();
  v119 = v118;
  v120 = v130;
  v121 = v144;
  (*(v115 + 16))(v130, v144, v116);
  (*(v115 + 56))(v120, 0, 1, v116);
  sub_25F16A0A0(v120, v117, v119);
  (*(v115 + 32))(v141, v121, v116);
}

uint64_t sub_25F126FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v89 = a4;
  v92 = a2;
  v94 = a5;
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v91 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v87 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v87 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = sub_25F1789BC();
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v93 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = &v87 - v25;
  v26 = *(a1 + 8);
  v96 = *a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  v90 = v28;
  if ((sub_25F1779AC() & 1) == 0)
  {
    sub_25F17885C();

    v47 = sub_25F17887C();
    v48 = sub_25F17952C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v104[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_25F0BECF0(v92, a3, v104);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_25F0BECF0(v96, v26, v104);
      _os_log_impl(&dword_25F0B3000, v47, v48, "%{public}s: load dylib command for %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v50, -1, -1);
      MEMORY[0x25F8D6230](v49, -1, -1);
    }

    (*(v101 + 8))(v13, v100);
    goto LABEL_16;
  }

  if ((v27 & 1) == 0)
  {
    sub_25F17885C();

    v51 = sub_25F17887C();
    v52 = sub_25F17952C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v104[0] = v54;
      *v53 = 136446466;
      *(v53 + 4) = sub_25F0BECF0(v92, a3, v104);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_25F0BECF0(v96, v26, v104);
      _os_log_impl(&dword_25F0B3000, v51, v52, "%{public}s: load strong dylib command for %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v54, -1, -1);
      MEMORY[0x25F8D6230](v53, -1, -1);
    }

    (*(v101 + 8))(v21, v100);
LABEL_16:
    v56 = v97;
    v55 = v98;
    v57 = v99;
    (*(v98 + 104))(v97, *MEMORY[0x277D7E910], v99);
    goto LABEL_17;
  }

  (*(v98 + 104))(v97, *MEMORY[0x277D7E908], v99);
  sub_25F17885C();

  v30 = sub_25F17887C();
  v31 = sub_25F17952C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v104[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_25F0BECF0(v92, a3, v104);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_25F0BECF0(v96, v26, v104);
    _os_log_impl(&dword_25F0B3000, v30, v31, "%{public}s: weak load dylib command for %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v33, -1, -1);
    MEMORY[0x25F8D6230](v32, -1, -1);
  }

  v34 = *(v101 + 8);
  v35 = v34(v19, v100);
  v88 = v34;
  if (v29)
  {

    sub_25F17885C();

    v38 = sub_25F17887C();
    v39 = sub_25F17952C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v104[0] = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_25F0BECF0(v92, a3, v104);
      *(v40 + 12) = 2080;
      v42 = v90;
      *(v40 + 14) = sub_25F0BECF0(v90, v29, v104);
      _os_log_impl(&dword_25F0B3000, v38, v39, "%{public}s: adding nullable symbols from %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v41, -1, -1);
      v43 = v40;
      v44 = v88;
      MEMORY[0x25F8D6230](v43, -1, -1);

      v45 = v16;
      v46 = v100;
      v44(v45, v100);
    }

    else
    {

      v62 = v16;
      v46 = v100;
      v34(v62, v100);
      v42 = v90;
    }

    v63 = v95;
    sub_25F178AEC();
    v61 = v63;
    if (v63)
    {

      goto LABEL_22;
    }

    v55 = v98;
    v57 = v99;
    v56 = v97;
LABEL_17:
    (*(v55 + 16))(v93, v56, v57);

    v58 = v94;
    sub_25F17899C();
    (*(v55 + 8))(v56, v57);
    v59 = sub_25F1789CC();
    return (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  }

  sub_25F13066C(v35, v36, v37);
  v61 = swift_allocError();
  swift_willThrow();
  v42 = v90;
  v46 = v100;
LABEL_22:
  v102[0] = v96;
  v102[1] = v26;
  v102[2] = v42;
  v103 = v29;

  v64 = v61;
  sub_25F1306C0(v64, v65, v66);
  sub_25F1781BC();

  v67 = v91;
  sub_25F17885C();
  sub_25F0BEC1C(v104, v102);

  v68 = sub_25F17887C();
  v69 = sub_25F17953C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v106 = v96;
    *v70 = 136446466;
    *(v70 + 4) = sub_25F0BECF0(v92, a3, &v106);
    *(v70 + 12) = 2114;
    v71 = v103;
    v72 = __swift_project_boxed_opaque_existential_1(v102, v103);
    v94 = &v87;
    v73 = *(v71 - 8);
    MEMORY[0x28223BE20](v72);
    v75 = &v87 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v75);
    if (sub_25F17981C())
    {
      (*(v73 + 8))(v75, v71);
    }

    else
    {
      swift_allocError();
      (*(v73 + 32))(v76, v75, v71);
    }

    v77 = _swift_stdlib_bridgeErrorToNSError();
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    *(v70 + 14) = v77;
    v78 = v95;
    *v95 = v77;
    _os_log_impl(&dword_25F0B3000, v68, v69, "%{public}s: failed adding weak symbols: %{public}@", v70, 0x16u);
    sub_25F0B7E94(v78, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v78, -1, -1);
    v79 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x25F8D6230](v79, -1, -1);
    MEMORY[0x25F8D6230](v70, -1, -1);

    v88(v91, v100);
  }

  else
  {

    v88(v67, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
  }

  v80 = v97;
  v81 = v105;
  v82 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = &v87 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v83 + 16))(v85);
  if (sub_25F17981C())
  {
    (*(v83 + 8))(v85, v81);
  }

  else
  {
    swift_allocError();
    (*(v83 + 32))(v86, v85, v81);
  }

  swift_willThrow();

  (*(v98 + 8))(v80, v99);
  return __swift_destroy_boxed_opaque_existential_1Tm(v104);
}

unint64_t sub_25F127D20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_25F1791AC() != a1 || v9 != a2)
  {
    v10 = sub_25F17983C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_25F17913C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_25F127E10(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_25F127E5C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25F17793C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_25F127E88(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, NSObject **a4@<X3>, unint64_t a5@<X8>)
{
  v6 = v5;
  v301 = a4;
  v320 = a2;
  v306 = a5;
  v295 = sub_25F178A0C();
  v9 = *(v295 - 8);
  v10 = MEMORY[0x28223BE20](v295);
  v291 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v292 = &v265 - v12;
  v293 = sub_25F178A2C();
  v288 = *(v293 - 8);
  v13 = MEMORY[0x28223BE20](v293);
  v290 = &v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v294 = &v265 - v15;
  v304 = sub_25F1788DC();
  v287 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v303 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F17895C();
  *&v286 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v296 = &v265 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v299 = &v265 - v21;
  MEMORY[0x28223BE20](v20);
  v305 = &v265 - v22;
  v297 = sub_25F17792C();
  v314 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v308 = &v265 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25F178B1C();
  v310 = *(v24 - 8);
  v311 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v300 = &v265 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v322 = &v265 - v27;
  v321 = sub_25F17888C();
  v316 = *(v321 - 8);
  v28 = MEMORY[0x28223BE20](v321);
  v313 = &v265 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v302 = (&v265 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v289 = &v265 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v298 = &v265 - v35;
  MEMORY[0x28223BE20](v34);
  v312 = &v265 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v265 - v38;
  v319 = sub_25F1779DC();
  v40 = MEMORY[0x28223BE20](v319);
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v265 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = MEMORY[0x28223BE20](&v265 - v45);
  v307 = (&v265 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v265 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v59 = &v265 - v58;
  v60 = *a3;
  if (*(*a3 + 16))
  {
    v284 = v53;
    v315 = a3;
    *&v281 = v52;
    v282 = v44;
    v279 = v57;
    v280 = v56;
    v278 = v9;
    v61 = *v6;
    v62 = v6[1];
    v317 = v55;
    v318 = v61;
    v309 = v6;

    v63 = a1;
    v64 = a1;
    v65 = v320;
    v66 = sub_25F0C8D24(v63, v320);
    if (v67)
    {
      v283 = v17;
      v68 = v317;
      v69 = *(v60 + 56) + v317[9].isa * v66;
      v285 = v64;
      v70 = v39;
      v71 = v317 + 2;
      isa = v317[2].isa;
      v73 = v319;
      isa(v51, v69, v319);
      (v68[4].isa)(v59, v51, v73);
      v74 = v73;
      sub_25F16AF88(v285, v65, v70);
      sub_25F0B7E94(v70, &qword_27FD48708, &qword_25F180728);
      v75 = v312;
      sub_25F17885C();
      v76 = v284;
      isa(v284, v59, v74);
      v77 = v307;
      v285 = v59;
      v277 = v71;
      v276 = isa;
      isa(v307, v59, v74);
      v78 = v75;

      v79 = sub_25F17887C();
      v80 = sub_25F17952C();

      v81 = os_log_type_enabled(v79, v80);
      v315 = v62;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        v325 = v320;
        *v82 = 136446722;
        *(v82 + 4) = sub_25F0BECF0(v318, v62, &v325);
        *(v82 + 12) = 2080;
        v275 = v79;
        v83 = sub_25F17793C();
        v85 = v84;
        v86 = v317[1].isa;
        v87 = v76;
        v88 = v80;
        v89 = v319;
        v86(v87, v319);
        v90 = sub_25F0BECF0(v83, v85, &v325);

        *(v82 + 14) = v90;
        *(v82 + 22) = 2080;
        v91 = sub_25F17798C();
        if (v92)
        {
          v93 = v91;
        }

        else
        {
          v93 = 0x6E776F6E6B6E753CLL;
        }

        if (v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = 0xE90000000000003ELL;
        }

        v284 = v86;
        v86(v77, v89);
        v62 = v315;
        v95 = sub_25F0BECF0(v93, v94, &v325);

        *(v82 + 24) = v95;
        v96 = v275;
        _os_log_impl(&dword_25F0B3000, v275, v88, "%{public}s: Loading JIT symbols from targetDescription %s, buildable: %s", v82, 0x20u);
        v97 = v320;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v97, -1, -1);
        MEMORY[0x25F8D6230](v82, -1, -1);
      }

      else
      {

        v101 = v317[1].isa;
        v89 = v319;
        v101(v77, v319);
        v284 = v101;
        v101(v76, v89);
      }

      v312 = *(v316 + 8);
      (v312)(v78, v321);
      v102 = v328;
      v103 = v308;
      v104 = v285;
      sub_25F126020(v285, v322);
      v105 = v314;
      if (v102)
      {
        v284(v104, v89);

        return;
      }

      v328 = 0;
      v106 = sub_25F17794C();
      v107 = *(v105 + 104);
      v108 = v297;
      v107(v103, *MEMORY[0x277D40B28], v297);
      v109 = sub_25F12B30C(v103, v106);
      v110 = v108;

      v111 = *(v105 + 8);
      v111(v103, v110);
      if (v109)
      {
        v112 = 1;
      }

      else
      {
        v113 = v110;
        v114 = sub_25F17794C();
        v107(v103, *MEMORY[0x277D40B20], v113);
        v115 = sub_25F12B30C(v103, v114);

        v111(v103, v113);
        if (v115)
        {
          v112 = 2;
        }

        else
        {
          v112 = 0;
        }
      }

      LODWORD(v308) = v112;
      v116 = v302;
      v117 = v298;
      v118 = *(sub_25F17799C() + 16);

      v119 = v328;
      if (v118)
      {
        sub_25F17885C();
        v116 = v281;
        v120 = v319;
        v121 = v276;
        v276(v281, v104, v319);
        v122 = v282;
        v121(v282, v104, v120);

        v123 = sub_25F17887C();
        v124 = sub_25F17952C();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v320 = swift_slowAlloc();
          v325 = v320;
          *v125 = 136446722;
          *(v125 + 4) = sub_25F0BECF0(v318, v62, &v325);
          *(v125 + 12) = 2082;
          LODWORD(v314) = v124;
          v323 = sub_25F17799C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48748, &qword_25F180738);
          sub_25F0B7D00(&qword_27FD48750, &qword_27FD48748, &qword_25F180738, MEMORY[0x277D83988]);
          sub_25F1794DC();
          v307 = v123;
          v126 = sub_25F1794CC();
          v128 = v127;

          v129 = v116;
          v116 = v117;
          v130 = v284;
          v284(v129, v319);
          v131 = sub_25F0BECF0(v126, v128, &v325);

          *(v125 + 14) = v131;
          *(v125 + 22) = 2080;
          v132 = sub_25F17793C();
          v134 = v133;
          v130(v122, v319);
          v62 = v315;
          v135 = sub_25F0BECF0(v132, v134, &v325);

          *(v125 + 24) = v135;
          v136 = v307;
          _os_log_impl(&dword_25F0B3000, v307, v314, "%{public}s: Loading %{public}s for %s", v125, 0x20u);
          v137 = v320;
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v137, -1, -1);
          v138 = v125;
          v119 = v328;
          MEMORY[0x25F8D6230](v138, -1, -1);

          v139 = v116;
        }

        else
        {

          v140 = v284;
          v284(v122, v120);
          v140(v116, v120);
          v139 = v117;
        }

        (v312)(v139, v321);
        v141 = sub_25F17799C();
        v143 = v141;
        v307 = *(v141 + 16);
        if (v307)
        {
          v144 = 0;
          v298 = v309[3];
          v297 = v316 + 8;
          v145 = (v141 + 56);
          *&v142 = 136315138;
          v281 = v142;
          v146 = v289;
          v282 = v141;
          while (v144 < *(v143 + 16))
          {
            v147 = *v145;
            v320 = *(v145 - 1);
            v116 = *(v145 - 2);

            sub_25F17885C();

            v148 = sub_25F17887C();
            v149 = sub_25F17952C();

            v314 = v116;

            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v328 = v119;
              v152 = v151;
              v325 = v151;
              *v150 = v281;

              v116 = sub_25F0BECF0(v320, v147, &v325);

              *(v150 + 4) = v116;
              _os_log_impl(&dword_25F0B3000, v148, v149, "Loading static archive %s into XOJIT", v150, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v152);
              v153 = v152;
              v119 = v328;
              MEMORY[0x25F8D6230](v153, -1, -1);
              v154 = v150;
              v143 = v282;
              MEMORY[0x25F8D6230](v154, -1, -1);
            }

            (v312)(v146, v321);
            v62 = v315;
            sub_25F12FA6C(v320, v147, v320, v147, v322, v308, v318, v315, v298);
            if (v119)
            {

              (*(v310 + 8))(v322, v311);
              v284(v285, v319);
              return;
            }

            v144 = (v144 + 1);

            v145 += 4;
            if (v307 == v144)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v144 = sub_25F116148(0, v144[2].isa + 1, 1, v144);
LABEL_66:
          v223 = v144[2].isa;
          v222 = v144[3].isa;
          if (v223 >= v222 >> 1)
          {
            v144 = sub_25F116148((v222 > 1), v223 + 1, 1, v144);
          }

          v284(v285, v116);
          v144[2].isa = (v223 + 1);
          v224 = *(v310 + 32);
          v225 = v144 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v223;
          v226 = v311;
          v224(v225, v300, v311);
          *v301 = v144;
          v224(v306, v322, v226);
          return;
        }

LABEL_35:

        v116 = v302;
      }

      v155 = v285;
      v156 = *(sub_25F17795C() + 16);

      if (v156)
      {
        sub_25F17885C();
        v157 = v279;
        v158 = v319;
        v159 = v276;
        v276(v279, v155, v319);
        v160 = v280;
        v159(v280, v155, v158);

        v144 = sub_25F17887C();
        v161 = sub_25F17952C();

        if (os_log_type_enabled(v144, v161))
        {
          v162 = swift_slowAlloc();
          v328 = v119;
          v163 = v162;
          v320 = swift_slowAlloc();
          v325 = v320;
          *v163 = 136446722;
          v164 = sub_25F0BECF0(v318, v62, &v325);
          LODWORD(v314) = v161;
          v165 = v164;

          *(v163 + 4) = v165;
          *(v163 + 12) = 2082;
          v323 = sub_25F17795C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48738, &qword_25F180730);
          sub_25F0B7D00(&qword_27FD48740, &qword_27FD48738, &qword_25F180730, MEMORY[0x277D83988]);
          sub_25F1794DC();
          v116 = v160;
          v166 = sub_25F1794CC();
          v168 = v167;

          v169 = v157;
          v170 = v284;
          v284(v169, v319);
          v171 = sub_25F0BECF0(v166, v168, &v325);

          *(v163 + 14) = v171;
          *(v163 + 22) = 2080;
          v172 = sub_25F17793C();
          v174 = v173;
          v170(v160, v319);
          v175 = sub_25F0BECF0(v172, v174, &v325);

          *(v163 + 24) = v175;
          _os_log_impl(&dword_25F0B3000, v144, v314, "%{public}s: Loading %{public}s for %s", v163, 0x20u);
          v176 = v320;
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v176, -1, -1);
          v177 = v163;
          v119 = v328;
          MEMORY[0x25F8D6230](v177, -1, -1);

          v178 = v302;
        }

        else
        {

          v144 = v317 + 1;
          v179 = v284;
          v284(v160, v158);
          v179(v157, v158);
          v178 = v116;
        }

        (v312)(v178, v321);
        v180 = v313;
        v181 = sub_25F17795C();
        v183 = v181;
        v275 = *(v181 + 16);
        if (v275)
        {
          v184 = 0;
          v185 = v309[4];
          v297 = v309[3];
          v271 = v185;
          v282 = (v316 + 8);
          LODWORD(v281) = *MEMORY[0x277D7E8E0];
          v280 = (v287 + 13);
          ++v287;
          v279 = (v286 + 16);
          v277 = (v286 + 88);
          LODWORD(v276) = *MEMORY[0x277D7E900];
          v274 = *MEMORY[0x277D7E8F8];
          v273 = *MEMORY[0x277D7E8F0];
          v272 = (v288 + 1);
          v288 = (v286 + 8);
          v266 = *MEMORY[0x277D7E930];
          v270 = (v278 + 104);
          v269 = (v278 + 32);
          v267 = *MEMORY[0x277D7E920];
          v268 = (v278 + 8);
          v186 = (v181 + 72);
          LODWORD(v278) = *MEMORY[0x277D7E928];
          *&v182 = 136446978;
          v286 = v182;
          v289 = v181;
          while (1)
          {
            if (v184 >= *(v183 + 2))
            {
              goto LABEL_82;
            }

            v187 = *(v186 - 4);
            v188 = *(v186 - 3);
            v190 = *(v186 - 2);
            v189 = *(v186 - 1);
            LODWORD(v320) = *v186;
            v302 = v184;
            v298 = v186;
            if (v187)
            {
              v191 = v188;
              v307 = *(v186 - 5);
              v192 = v187;
            }

            else
            {

              v187 = 0;
              v191 = v188;
              v307 = v188;
              v192 = v190;
            }

            v309 = v187;
            swift_bridgeObjectRetain_n();

            v314 = v189;

            sub_25F17885C();
            v193 = v315;

            v194 = sub_25F17887C();
            v195 = sub_25F17952C();

            if (os_log_type_enabled(v194, v195))
            {
              v196 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              v328 = v119;
              v198 = v197;
              v325 = v197;
              *v196 = v286;
              *(v196 + 4) = sub_25F0BECF0(v318, v193, &v325);
              *(v196 + 12) = 2080;
              *(v196 + 14) = sub_25F0BECF0(v191, v190, &v325);
              *(v196 + 22) = 2080;
              *(v196 + 24) = sub_25F0BECF0(v307, v192, &v325);
              *(v196 + 32) = 1024;
              *(v196 + 34) = v320;
              _os_log_impl(&dword_25F0B3000, v194, v195, "%{public}s: Loading %s, identifier %s, forReplacement: %{BOOL}d", v196, 0x26u);
              swift_arrayDestroy();
              v199 = v198;
              v119 = v328;
              v144 = v304;
              v200 = v305;
              MEMORY[0x25F8D6230](v199, -1, -1);
              MEMORY[0x25F8D6230](v196, -1, -1);

              (v312)(v313, v321);
              v201 = v190;
            }

            else
            {

              (v312)(v180, v321);
              v201 = v190;
              v200 = v305;
              v144 = v304;
            }

            v202 = v303;
            (*v280)(v303, v281, v144);
            v116 = v200;
            v307 = v191;
            v328 = v192;
            sub_25F17896C();
            v203 = v119;
            v316 = v201;
            if (v119)
            {
              break;
            }

            (*v287)(v202, v144);
            v204 = *v279;
            if (v320)
            {
              v205 = v299;
              v206 = v116;
              v207 = v283;
              v204(v299, v116, v283);
              v208 = (v277->isa)(v205, v207);
              v180 = v313;
              if (v208 == v276)
              {
                sub_25F130550(v208, v209, v210);
                v203 = swift_allocError();
                v253 = v307;
                v227 = v316;
                *v229 = v307;
                *(v229 + 8) = v227;
                *(v229 + 16) = 1;
LABEL_73:
                swift_willThrow();

                (*v288)(v206, v283);
LABEL_77:
                v323 = v253;
                v324 = v227;

                v254 = v203;
                sub_25F1304A8(v254, v255, v256);
                sub_25F1781BC();

                v257 = v327;
                v258 = __swift_project_boxed_opaque_existential_1(&v325, v327);
                v259 = *(v257 - 8);
                MEMORY[0x28223BE20](v258);
                v261 = &v265 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v259 + 16))(v261);
                v262 = sub_25F17981C();
                v263 = v319;
                if (v262)
                {
                  (*(v259 + 8))(v261, v257);
                }

                else
                {
                  swift_allocError();
                  (*(v259 + 32))(v264, v261, v257);
                }

                swift_willThrow();

                __swift_destroy_boxed_opaque_existential_1Tm(&v325);

                (*(v310 + 8))(v322, v311);
                v284(v285, v263);
                return;
              }

              if (v208 == v274)
              {
                v325 = 0;
                v326 = 0xE000000000000000;
                v227 = v316;

                v230 = v283;
                v231 = sub_25F17976C();
                v232 = v325;
                v233 = v326;
                sub_25F1305A4(v231, v234, v235);
                v203 = swift_allocError();
                v253 = v307;
                *v236 = v307;
                v236[1] = v227;
                v236[2] = 0xD000000000000024;
                v236[3] = 0x800000025F1866C0;
                v236[4] = v232;
                v236[5] = v233;
                swift_willThrow();

                (*v288)(v206, v230);
                goto LABEL_77;
              }

              if (v208 != v273)
              {
                v325 = 0;
                v326 = 0xE000000000000000;
                v227 = v316;

                v237 = v283;
                v238 = sub_25F17976C();
                v239 = v325;
                v240 = v326;
                sub_25F1304FC(v238, v241, v242);
                v203 = swift_allocError();
                v253 = v307;
                *v243 = v307;
                v243[1] = v227;
                v243[2] = v239;
                v243[3] = v240;
                swift_willThrow();

                v244 = *v288;
                (*v288)(v206, v237);
                v244(v299, v237);
                goto LABEL_77;
              }

              sub_25F178A3C();
              v119 = 0;
              (*v288)(v116, v283);
            }

            else
            {
              v211 = v296;
              v206 = v116;
              v212 = v283;
              v204(v296, v116, v283);
              v213 = (v277->isa)(v211, v212);
              v216 = v295;
              v180 = v313;
              if (v213 == v276)
              {
                sub_25F130550(v213, v214, v215);
                v203 = swift_allocError();
                v253 = v307;
                v227 = v316;
                *v228 = v307;
                *(v228 + 8) = v227;
                *(v228 + 16) = 0;
                goto LABEL_73;
              }

              if (v213 == v274)
              {
                sub_25F178A7C();
                v217 = v278;
                if (v308)
                {
                  v217 = v267;
                  if (v308 != 1)
                  {
                    v217 = v266;
                  }
                }

                v218 = v291;
                (*v270)(v291, v217, v216);
                v219 = v292;
                (*v269)(v292, v218, v216);
                v220 = v294;
                sub_25F1789FC();
                v221 = v216;
                v119 = 0;

                (*v268)(v219, v221);
                (*v272)(v220, v293);
                (*v288)(v116, v283);

                v180 = v313;
              }

              else
              {
                if (v213 != v273)
                {
                  v325 = 0;
                  v326 = 0xE000000000000000;
                  v227 = v316;

                  v245 = v283;
                  v246 = sub_25F17976C();
                  v247 = v325;
                  v248 = v326;
                  sub_25F1304FC(v246, v249, v250);
                  v203 = swift_allocError();
                  v253 = v307;
                  *v251 = v307;
                  v251[1] = v227;
                  v251[2] = v247;
                  v251[3] = v248;
                  swift_willThrow();

                  v252 = *v288;
                  (*v288)(v206, v245);
                  v252(v296, v245);
                  goto LABEL_77;
                }

                v116 = v290;
                sub_25F178A7C();
                sub_25F178A1C();
                v119 = 0;

                (*v272)(v116, v293);
                (*v288)(v206, v283);
              }
            }

            v183 = v289;
            v184 = (&v302->isa + 1);

            v186 = v298 + 48;
            if (v275 == v184)
            {
              goto LABEL_65;
            }
          }

          (*v287)(v202, v144);
          v227 = v201;
          v253 = v307;
          goto LABEL_77;
        }
      }

LABEL_65:

      v116 = v319;
      (*(v310 + 16))(v300, v322, v311);
      v144 = *v301;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_66;
      }

      goto LABEL_83;
    }

    v6 = v309;
    a1 = v64;
  }

  v98 = v6[5];
  v99 = v320;
  if (*(v98 + 16) && (v52 = sub_25F0C8D24(a1, v320), (v53 & 1) != 0))
  {
    (*(v310 + 16))(v306, *(v98 + 56) + *(v310 + 72) * v52, v311);
  }

  else
  {
    sub_25F12F700(v52, v53, v54);
    swift_allocError();
    *v100 = a1;
    v100[1] = v99;
    swift_willThrow();
  }
}

uint64_t sub_25F12A358(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_25F17888C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  v16 = *(v4 + 8);
  v48 = *v4;
  if (*(v4 + 16) - 1 > 1)
  {
    v44[1] = a1;
    v45 = v7;
    *(v4 + 16) = 1;
    v46 = "(-mainExecutable)?$";
    v47 = v6;
    sub_25F17885C();

    v24 = sub_25F17887C();
    v25 = sub_25F17952C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44[0] = "How do I preview from Xcode";
      v28 = v27;
      v49 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_25F0BECF0(v48, v16, &v49);
      _os_log_impl(&dword_25F0B3000, v24, v25, "%{public}s: Requesting initial jit link", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v29 = v28;
      v3 = v2;
      MEMORY[0x25F8D6230](v29, -1, -1);
      MEMORY[0x25F8D6230](v26, -1, -1);
    }

    v30 = *(v45 + 8);
    v30(v13, v47);
    result = sub_25F178AAC();
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      v34 = result;
      sub_25F130714(result, v32, v33);
      v3 = swift_allocError();
      *v35 = v34;
      swift_willThrow();
    }

    sub_25F17885C();

    v36 = v3;
    v37 = sub_25F17887C();
    v38 = sub_25F17953C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v39 = 136446722;
      *(v39 + 4) = sub_25F0BECF0(v48, v16, &v49);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_25F0BECF0(0xD00000000000002BLL, v46 | 0x8000000000000000, &v49);
      *(v39 + 22) = 2114;
      v42 = v3;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v43;
      *v40 = v43;
      sub_25F0B7E94(v40, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v41, -1, -1);
      MEMORY[0x25F8D6230](v39, -1, -1);
    }

    v30(v10, v47);
  }

  else
  {
    sub_25F17885C();

    v17 = sub_25F17887C();
    v18 = sub_25F17953C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_25F0BECF0(v48, v16, &v49);
      _os_log_impl(&dword_25F0B3000, v17, v18, "%{public}s: Initial jit link already invoked", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x25F8D6230](v20, -1, -1);
      MEMORY[0x25F8D6230](v19, -1, -1);
    }

    v21 = (*(v7 + 8))(v15, v6);
    sub_25F130768(v21, v22, v23);
    swift_allocError();
  }

  return swift_willThrow();
}

void sub_25F12A8B4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v100 = sub_25F178B1C();
  v102 = *(v100 - 8);
  v6 = MEMORY[0x28223BE20](v100);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = v85 - v9;
  v101 = sub_25F17888C();
  v103 = *(v101 - 8);
  v10 = MEMORY[0x28223BE20](v101);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v89 = v85 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v85 - v16;
  MEMORY[0x28223BE20](v15);
  v104 = v85 - v18;
  v19 = sub_25F17835C();
  v97 = *(v19 - 8);
  v98 = v19;
  MEMORY[0x28223BE20](v19);
  v96 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v85 - v22;
  v24 = sub_25F177FBC();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v93 = v8;
    v94 = a1;
    v105 = v29;
    v92 = v17;
    v85[0] = v12;
    v30 = *v4;
    v31 = v4[1];
    v32 = v4;
    v33 = v26;
    v85[1] = sub_25F1782EC();
    sub_25F1782DC();
    v87 = v25;
    v88 = v33;
    (*(v25 + 56))(v23, 1, 1, v33);
    v34 = v96;
    sub_25F17831C();
    v86 = v28;
    v35 = v30;
    sub_25F1782CC();

    (*(v97 + 8))(v34, v98);
    sub_25F0B7E94(v23, &qword_27FD487B0, &unk_25F180760);
    sub_25F17885C();

    v36 = sub_25F17887C();
    v37 = sub_25F17952C();

    v38 = os_log_type_enabled(v36, v37);
    v97 = v31;
    v91 = v30;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v106 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_25F0BECF0(v35, v31, &v106);
      _os_log_impl(&dword_25F0B3000, v36, v37, "%{public}s: Running new initializers.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      v41 = v40;
      v3 = v2;
      MEMORY[0x25F8D6230](v41, -1, -1);
      v42 = v103;
      MEMORY[0x25F8D6230](v39, -1, -1);

      v98 = *(v42 + 8);
      v103 = v42 + 8;
      v98(v104, v101);
    }

    else
    {

      v98 = *(v103 + 8);
      v103 += 8;
      v43 = v98(v104, v101);
    }

    v45 = v99;
    v44 = v100;
    v46 = v32[3];
    v95 = *(v102 + 16);
    v96 = v46;
    v47 = v93;
    v48 = v94 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v104 = (v102 + 8);
    v102 += 16;
    v94 = *(v102 + 56);
    v43.n128_u64[0] = 136446466;
    v90 = v43;
    v49 = v92;
    v50 = v105;
    while (v50)
    {
      v105 = v50;
      v51 = v95;
      v95(v45, v48, v44);
      sub_25F17885C();
      v51(v47, v45, v44);
      v52 = v44;
      v53 = v97;

      v54 = v49;
      v55 = sub_25F17887C();
      v56 = sub_25F17952C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v93 = v3;
        v59 = v58;
        v106 = v58;
        *v57 = v90.n128_u32[0];
        *(v57 + 4) = sub_25F0BECF0(v91, v53, &v106);
        *(v57 + 12) = 2080;
        v60 = sub_25F178B0C();
        v62 = v61;
        v63 = *v104;
        (*v104)(v47, v100);
        v64 = sub_25F0BECF0(v60, v62, &v106);
        v44 = v100;

        *(v57 + 14) = v64;
        _os_log_impl(&dword_25F0B3000, v55, v56, "%{public}s: Running for %s", v57, 0x16u);
        swift_arrayDestroy();
        v65 = v59;
        v3 = v93;
        MEMORY[0x25F8D6230](v65, -1, -1);
        MEMORY[0x25F8D6230](v57, -1, -1);

        v49 = v92;
        v98(v92, v101);
      }

      else
      {

        v63 = *v104;
        (*v104)(v47, v52);
        v98(v54, v101);
        v49 = v54;
        v44 = v52;
      }

      v45 = v99;
      v66 = v3;
      sub_25F178A8C();
      if (v3)
      {
        v105 = v63;
        v73 = v85[0];
        sub_25F17885C();
        v74 = v97;

        v75 = v3;
        v76 = sub_25F17887C();
        v77 = sub_25F17953C();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v106 = v80;
          *v78 = v90.n128_u32[0];
          *(v78 + 4) = sub_25F0BECF0(v91, v74, &v106);
          *(v78 + 12) = 2112;
          v81 = v66;
          v82 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 14) = v82;
          *v79 = v82;
          _os_log_impl(&dword_25F0B3000, v76, v77, "%{public}s: Failed running new initializers: %@", v78, 0x16u);
          sub_25F0B7E94(v79, &qword_27FD473D0, &unk_25F17C540);
          MEMORY[0x25F8D6230](v79, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          v83 = v80;
          v44 = v100;
          MEMORY[0x25F8D6230](v83, -1, -1);
          MEMORY[0x25F8D6230](v78, -1, -1);
        }

        v98(v73, v101);
        swift_willThrow();
        (v105)(v45, v44);
        goto LABEL_18;
      }

      (v63)(v45, v44);
      v48 += v94;
      v50 = v105 - 1;
      if (v105 == 1)
      {
        v67 = v89;
        sub_25F17885C();
        v68 = v97;

        v69 = sub_25F17887C();
        v70 = sub_25F17952C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v106 = v72;
          *v71 = 136446210;
          *(v71 + 4) = sub_25F0BECF0(v91, v68, &v106);
          _os_log_impl(&dword_25F0B3000, v69, v70, "%{public}s: Finished running new initializers", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x25F8D6230](v72, -1, -1);
          MEMORY[0x25F8D6230](v71, -1, -1);
        }

        v98(v67, v101);
LABEL_18:
        sub_25F1782DC();
        v84 = v86;
        sub_25F1782BC();

        (*(v87 + 8))(v84, v88);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25F12B30C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F17792C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25F12E2B8(&qword_27FD48760, MEMORY[0x277D40B30], MEMORY[0x277D40B38]), v7 = sub_25F17901C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25F12E2B8(&qword_27FD48768, MEMORY[0x277D40B30], MEMORY[0x277D40B40]);
      v15 = sub_25F17904C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_25F12B524()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD00000000000002ELL;
}

uint64_t sub_25F12B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1305F8(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1305F8(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

unint64_t sub_25F12B618()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD00000000000002BLL;
}

uint64_t sub_25F12B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1304A8(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12B6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1304A8(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12B720(uint64_t a1, uint64_t a2, char a3)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0x203A68746170, 0xE600000000000000);
  MEMORY[0x25F8D50D0](a1, a2);
  MEMORY[0x25F8D50D0](0x203A65726568770ALL, 0xE800000000000000);
  sub_25F17976C();
  return 0;
}

uint64_t sub_25F12B7E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000035, 0x800000025F1869C0);
  MEMORY[0x25F8D50D0](v1, v2);
  return 0;
}

uint64_t sub_25F12B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132CDC(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132CDC(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12B8E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  MEMORY[0x25F8D50D0](0x203A646E696B0ALL, 0xE700000000000000);
  MEMORY[0x25F8D50D0](v3, v4);
  return 0x203A68746170;
}

uint64_t sub_25F12B994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132D30(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132D30(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12BA0C()
{
  v1 = v0;
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](*v1, v1[1]);
  MEMORY[0x25F8D50D0](0x657463657078650ALL, 0xEB00000000203A64);
  MEMORY[0x25F8D50D0](v1[2], v1[3]);
  MEMORY[0x25F8D50D0](0x3A6C61757463610ALL, 0xE900000000000020);
  MEMORY[0x25F8D50D0](v1[4], v1[5]);
  return 0x203A68746170;
}

uint64_t sub_25F12BB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132C88(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12BB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132C88(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132D84(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12BC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132D84(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12BC74()
{
  sub_25F1796DC();

  type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  v0 = sub_25F1779CC();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](0x7465677261740A0ALL, 0xEB000000000A3A32);
  v1 = sub_25F1779CC();
  MEMORY[0x25F8D50D0](v1);

  return 0x3A31746567726174;
}

unint64_t sub_25F12BD50()
{
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](*v0, v0[1]);
  return 0xD00000000000002FLL;
}

uint64_t sub_25F12BE20(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A50, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered, &unk_25F180DE8);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12BE8C(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A50, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered, &unk_25F180DE8);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F12BEF8(uint64_t a1)
{
  sub_25F1796DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48A68, &qword_25F182060);
  v1 = sub_25F0B7D00(&qword_27FD48A70, &qword_27FD48A68, &qword_25F182060, MEMORY[0x277D842F0]);
  sub_25F0B7DB8(v1, v2, v3);
  v4 = sub_25F1791EC();
  v6 = v5;

  MEMORY[0x25F8D50D0](v4, v6);

  return 0xD000000000000016;
}

uint64_t sub_25F12C018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

unint64_t sub_25F12C048()
{
  sub_25F11D014(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48A58, &qword_25F182058);
  sub_25F0B7D00(&qword_27FD48A60, &qword_27FD48A58, &qword_25F182058, MEMORY[0x277D83958]);
  v1 = sub_25F17903C();
  v3 = v2;

  MEMORY[0x25F8D50D0](v1, v3);

  return 0xD000000000000013;
}

uint64_t sub_25F12C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132DD8(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F12C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F132DD8(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F12C1B0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_25F1787BC();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F17892C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F17888C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v38 = v17;
    v39 = a4;
    sub_25F17885C();
    (*(v12 + 16))(v14, a1, v11);
    v20 = sub_25F17887C();
    v21 = sub_25F17951C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = a1;
      v23 = v22;
      v35 = swift_slowAlloc();
      v45[0] = v35;
      *v23 = 136315394;
      v24 = sub_25F1788FC();
      v36 = a2;
      v26 = v25;
      (*(v12 + 8))(v14, v11);
      v27 = sub_25F0BECF0(v24, v26, v45);
      a2 = v36;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = a2;
      _os_log_impl(&dword_25F0B3000, v20, v21, "+ new symbol: %s -> %llx", v23, 0x16u);
      v28 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x25F8D6230](v28, -1, -1);
      v29 = v23;
      a1 = v37;
      MEMORY[0x25F8D6230](v29, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    (*(v16 + 8))(v19, v38);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = *(result + 16);

    sub_25F17890C();
    v44 = v31;
    v32 = v40;
    v33 = sub_25F1787CC();
    MEMORY[0x28223BE20](v33);
    *(&v35 - 2) = a2;
    *(&v35 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
    sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
    sub_25F17855C();
    (*(v41 + 8))(v32, v42);
    v34 = swift_allocObject();
    v34[2] = v43;
    v34[3] = v31;
    v34[4] = a2;

    sub_25F1788EC();
  }

  return result;
}

uint64_t sub_25F12C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48858, &qword_25F180790);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_25F17892C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_25F16A2A0(v7, a2);
}

uint64_t sub_25F12C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25F1787BC();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](a1);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    result = memcmp(result, (a3 + 32), *(a3 + 16));
    if (!result)
    {
      v15[1] = a4;
      v14 = sub_25F1787CC();
      MEMORY[0x28223BE20](v14);
      v15[-2] = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
      sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
      sub_25F17855C();
      return (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F12C984(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  if (*(a1 + 24) == 1)
  {
    sub_25F17885C();
    v11 = sub_25F17887C();
    v12 = sub_25F17952C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = a2;
      _os_log_impl(&dword_25F0B3000, v11, v12, "Swift entry section pointer symbol found %{public}llx.", v13, 0xCu);
      MEMORY[0x25F8D6230](v13, -1, -1);
    }

    result = (*(v5 + 8))(v10, v4);
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    sub_25F17885C();
    v15 = sub_25F17887C();
    v16 = sub_25F17953C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25F0B3000, v15, v16, "Swift entry section pointer symbol encountered more than once. Ignoring.", v17, 2u);
      MEMORY[0x25F8D6230](v17, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_25F12CBAC(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v2 = MEMORY[0x28223BE20](v29);
  v28 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - v4;
  v5 = *(a1 + 8);
  v6 = *(v5 + 64);
  v26 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v30 = v5;

  v12 = 0;
  for (i = v27; v9; result = sub_25F0B7E94(v24, &qword_27FD486C8, &qword_25F1806E8))
  {
    v14 = v12;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v30 + 56);
    v31 = *(*(v30 + 48) + 8 * v16);
    v18 = sub_25F17892C();
    v19 = *(v18 - 8);
    v20 = v17 + *(v19 + 72) * v16;
    v21 = v29;
    v22 = *(v29 + 48);
    (*(v19 + 16))(&i[v22], v20, v18);
    v23 = *(v21 + 48);
    v24 = v28;
    *v28 = v31;
    (*(v19 + 32))(v24 + v23, &i[v22], v18);
    sub_25F17891C();
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v26 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F12CDF0()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = *(v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
  sub_25F17855C();
  (*(v2 + 8))(v4, v1);

  return swift_deallocClassInstance();
}

void sub_25F12CFB4(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_25F147534(v5, 0);
    v7 = sub_25F148278(v10, v6 + 4, v5, v4);
    v8 = v10[0];
    swift_bridgeObjectRetain_n();
    sub_25F0C03C0(v8);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v2 = v10[6];
    v3 = a2;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v10[0] = v6;
  sub_25F12ECEC(v10);
  v6 = v2;
  if (!v2)
  {

    *v3 = v10[0];
    return;
  }

LABEL_8:

  __break(1u);
}

uint64_t sub_25F12D0CC(uint64_t a1)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + 16);

  sub_25F1787CC();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D0, &qword_25F1806F0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
  sub_25F17854C();
  (*(v4 + 8))(v6, v3);

  return v11;
}

unint64_t sub_25F12D284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F17892C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  if (*(v11 + 16) && (result = sub_25F0C8DC0(a2), (v12 & 1) != 0))
  {
    (*(v7 + 16))(v10, *(v11 + 56) + *(v7 + 72) * result, v6);
    v13 = sub_25F1788FC();
    v15 = v14;
    result = (*(v7 + 8))(v10, v6);
    *a3 = v13;
    a3[1] = v15;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_25F12D3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C0, &qword_25F1806E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = *(a1 + 8);
  sub_25F12D518(v7, v17 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  result = sub_25F0B7E94(v6, &qword_27FD486C0, &qword_25F1806E0);
  if (v9 == 1)
  {
    v11 = 0;
LABEL_5:
    *a2 = v11;
    return result;
  }

  v12 = sub_25F17892C();
  v13 = *(v12 - 8);
  result = v12 - 8;
  v14 = *(v13 + 64);
  v15 = v14 + 8;
  if (__OFADD__(v14, 8))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v7 + 16);
    v11 = v16 * v15;
    if ((v16 * v15) >> 64 == (v16 * v15) >> 63)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F12D518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = sub_25F17967C();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v14 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_25F12F600(&v6[v10], v7, *(a1 + 36), 0, a1);
    v11 = *(v4 + 48);
    v12 = sub_25F17892C();
    (*(*(v12 - 8) + 32))(&a2[v11], &v6[v10], v12);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_25F12D6CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_25F12D704()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = *(*v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D8, &qword_25F1806F8);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
  sub_25F17854C();
  (*(v2 + 8))(v4, v1);

  return v6[3];
}

uint64_t sub_25F12D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_25F1787BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = *(*v5 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
  sub_25F17854C();
  (*(v7 + 8))(v9, v6);

  return v11[3];
}

uint64_t sub_25F12DA98()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = *(*v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486B0, &qword_25F1806D8);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0, MEMORY[0x277D40588]);
  sub_25F17854C();
  (*(v2 + 8))(v4, v1);

  return v6[2];
}

uint64_t sub_25F12DC50()
{
  v1 = *(v0 + 16);
  v2 = sub_25F17767C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

void sub_25F12DDB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_25F17767C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_25F11F4CC(*(v0 + 32), v0 + v4, v0 + v5, *v6, *(v6 + 8), v1, v2);
}

uint64_t sub_25F12DEB8()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_25F12DFAC(_BYTE *a1@<X8>)
{
  v3 = *(sub_25F17767C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25F121224(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_25F12E058()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F12E144(uint64_t a1)
{
  v3 = *(sub_25F17767C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0C10CC;

  return sub_25F122D28(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F12E2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of PreviewsJITLinker.loadTargetDescriptions<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F0BF3E4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PreviewsJITLinker.updateTargetDescriptions(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F12E594;

  return v6(a1);
}

uint64_t sub_25F12E594(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}