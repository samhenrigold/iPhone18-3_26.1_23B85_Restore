uint64_t sub_22B6F4FC0@<X0>(double *a1@<X8>)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v56 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v46 - v7;
  v55 = sub_22B7DA968();
  v9 = *(v55 - 8);
  v10 = MEMORY[0x28223BE20](v55);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  if (sub_22B6F4E1C())
  {
    sub_22B6F5864();
    v19 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
    v20 = *v1;
    sub_22B4D7E58(v1 + *(v19 + 24), v18, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v18, v20);

    sub_22B6F32AC(v21, v20);
  }

  v47 = v5;
  v53 = a1;
  v57 = v13;
  sub_22B7DA888();
  v51 = v9;
  v52 = v1;
  v22 = v1[1];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v25 = *(v6 + 72);
    v54 = (v9 + 8);
    v26 = (v9 + 16);
    v27 = 0.0;
    do
    {
      sub_22B4D7E58(v24, v8, &unk_27D8CEEC0, &qword_22B7FA060);
      v28 = *(v56 + 36);
      sub_22B7DA898();
      v30 = v29;
      if (sub_22B7DA8D8())
      {
        v31 = v55;
        v32 = v57;
        (*v54)(v57, v55);
        (*v26)(v32, &v8[v28], v31);
      }

      v27 = v27 + v30;
      sub_22B4D0D64(v8, &unk_27D8CEEC0, &qword_22B7FA060);
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v27 = 0.0;
  }

  v33 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v34 = v48;
  sub_22B4D7E58(v52 + *(v33 + 24), v48, &qword_27D8CD5D0, &qword_22B7F9518);
  if ((*(v49 + 48))(v34, 1, v50) == 1)
  {
    sub_22B4D0D64(v34, &qword_27D8CD5D0, &qword_22B7F9518);
    v35 = v53;
    v36 = v55;
    v37 = v51;
    v38 = v57;
  }

  else
  {
    v56 = v33;
    v39 = v47;
    sub_22B6FC80C(v34, v47, &qword_27D8CD5D8, &qword_22B7F9530);
    v40 = v46;
    sub_22B7DA938();
    sub_22B7DA898();
    v42 = v41;
    v37 = v51;
    v43 = *(v51 + 8);
    v36 = v55;
    v43(v40, v55);
    v27 = v27 + v42;
    sub_22B7DA888();
    v38 = v57;
    v44 = sub_22B7DA918();
    v43(v40, v36);
    v35 = v53;
    if (v44)
    {
      sub_22B6F2558();
      sub_22B7DA8A8();
      sub_22B4D0D64(v39, &qword_27D8CD5D8, &qword_22B7F9530);
      v43(v38, v36);
      (*(v37 + 32))(v38, v40, v36);
    }

    else
    {
      sub_22B4D0D64(v39, &qword_27D8CD5D8, &qword_22B7F9530);
    }
  }

  sub_22B7DA868();
  sub_22B6F25D0();
  type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport(0);
  sub_22B7DA858();
  result = (*(v37 + 8))(v38, v36);
  *v35 = v27;
  return result;
}

uint64_t sub_22B6F557C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B6F4FC0(v12);
  v13 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  sub_22B6F2558();
  v15 = v14 - *v12;
  if (v15 > 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  if (v16 <= 0.0)
  {
    v17 = *(v10 + 20);
    v18 = sub_22B7DA968();
    (*(*(v18 - 8) + 32))(a1, v12 + v17, v18);
  }

  else
  {
    sub_22B4D7E58(v1 + *(v13 + 24), v5, &qword_27D8CD5D0, &qword_22B7F9518);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22B6FC638(v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport);
      sub_22B4D0D64(v5, &qword_27D8CD5D0, &qword_22B7F9518);
    }

    else
    {
      sub_22B6FC80C(v5, v9, &qword_27D8CD5D8, &qword_22B7F9530);
      sub_22B7DA8A8();
      sub_22B4D0D64(v9, &qword_27D8CD5D8, &qword_22B7F9530);
      sub_22B6FC638(v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageReport);
    }
  }

  type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22B6F5864()
{
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v35 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = sub_22B7DA968();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = *(v0 + *(type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0) + 28));
  v16 = *(v15 + 16);

  v39 = "com.apple.imagent";
  v16(&v43, 0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0);

  if (!*(&v44 + 1))
  {
    sub_22B4D0D64(&v43, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_7;
  }

  v38 = "ults";
  v42 = v14;
  v17 = swift_dynamicCast();
  v18 = *(v9 + 56);
  v18(v7, v17 ^ 1u, 1, v8);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
LABEL_7:
    v27 = &unk_27D8CF790;
    v28 = &qword_22B7F9578;
    v29 = v7;
    return sub_22B4D0D64(v29, v27, v28);
  }

  v36 = *(v9 + 32);
  v37 = v9 + 32;
  v36(v42, v7, v8);
  v20 = COERCE_DOUBLE(sub_22B6F2648());
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    sub_22B7DA938();
    sub_22B7DA898();
    v24 = v23;
    v25 = *(v9 + 8);
    v25(v12, v8);
    if (v24 < v22)
    {
      return (v25)(v42, v8);
    }
  }

  v30 = v41;
  v18(v41, 1, 1, v8);
  v31 = *(v15 + 32);
  v32 = v40;
  sub_22B4D7E58(v30, v40, &unk_27D8CF790, &qword_22B7F9578);
  if (v19(v32, 1, v8) == 1)
  {

    sub_22B4D0D64(v32, &unk_27D8CF790, &qword_22B7F9578);
    v43 = 0u;
    v44 = 0u;
  }

  else
  {
    *(&v44 + 1) = v8;
    v33 = sub_22B6FC8CC(&v43);
    v36(v33, v32, v8);
  }

  v34 = v42;
  v31(0xD000000000000011, v38 | 0x8000000000000000, 0xD000000000000034, v39 | 0x8000000000000000, &v43);

  sub_22B4D0D64(v30, &unk_27D8CF790, &qword_22B7F9578);
  (*(v9 + 8))(v34, v8);
  v27 = &unk_27D8CCDC0;
  v28 = &qword_22B7F9580;
  v29 = &v43;
  return sub_22B4D0D64(v29, v27, v28);
}

uint64_t sub_22B6F5CDC()
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0) + 24);
  sub_22B4D7E58(v0 + v7, v6, &qword_27D8CD5D0, &qword_22B7F9518);
  v8 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  sub_22B4D0D64(v6, &qword_27D8CD5D0, &qword_22B7F9518);
  if (v10 != 1)
  {
    sub_22B6F4628(1);
  }

  sub_22B7DA938();
  sub_22B7DA968();
  sub_22B6FC35C(&qword_281420E88, MEMORY[0x277CC9598]);
  result = sub_22B7DB658();
  if (result)
  {
    (*(v9 + 56))(v4, 0, 1, v8);
    sub_22B6FBA40(v4, v0 + v7, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F4E1C();
    sub_22B6F5864();
    v12 = *v0;
    sub_22B4D7E58(v0 + v7, v4, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v4, v12);

    return sub_22B6F32AC(v13, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6F5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22B7DC408();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F5FDC, 0, 0);
}

uint64_t sub_22B6F5FDC()
{
  sub_22B7DA8E8();
  v1 = sub_22B7DC6E8();
  v3 = v2;
  sub_22B7DC5B8();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22B6F60C0;

  return sub_22B729E90(v1, v3, 0, 0, 1);
}

uint64_t sub_22B6F60C0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_22B6F635C;
  }

  else
  {
    v5 = sub_22B6F6230;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B6F6230()
{
  if (sub_22B7DBAB8())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = (v0[3] + *v0[3]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_22B6F63C4;

    return v4();
  }
}

uint64_t sub_22B6F635C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B6F63C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B6F6540(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22B6F65A8(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_22B6F6540(a1, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3(v11, a2, v3, v7, v8);

  sub_22B4CFB78(a1);
  return v13;
}

uint64_t sub_22B6F66B4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  v3[40] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3[41] = swift_task_alloc();
  sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v5 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
  v3[46] = v5;
  v3[47] = *(v5 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v6 = sub_22B7DA968();
  v3[50] = v6;
  v7 = *(v6 - 8);
  v3[51] = v7;
  v3[52] = *(v7 + 64);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = sub_22B6F0AD4(&qword_27D8CD608, &qword_22B7F95B0);
  v3[58] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD610, &qword_22B7F95B8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v8 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v3[68] = v8;
  v3[69] = *(v8 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F6AE4, v2, 0);
}

uint64_t sub_22B6F6AE4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = sub_22B6F64D4(v0 + 56);
  v5 = sub_22B6F8810((v0 + 88), v3);
  v6 = *(v2 + 48);
  if (v6(v7, 1, v1))
  {
    v8 = *(v0 + 552);
    (v5)(v0 + 88, 0);
    (v4)(v0 + 56, 0);
    v9 = *(v8 + 56);
    v10 = 1;
LABEL_3:
    v9(*(v0 + 272), v10, 1, *(v0 + 544));

    v11 = *(v0 + 8);

    return v11();
  }

  v155 = v6;
  v13 = *(v0 + 616);
  v14 = *(v0 + 608);
  v15 = *(v0 + 288);
  sub_22B6F557C(v14);
  (v5)(v0 + 88, 0);
  (v4)(v0 + 56, 0);
  sub_22B6FC3A0(v14, v13, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  swift_beginAccess();
  v16 = *(v15 + 168);
  if (*(v16 + 16) && (v17 = sub_22B725570(), (v18 & 1) != 0))
  {
    sub_22B6FC5D0(*(v16 + 56) + *(*(v0 + 376) + 72) * v17, *(v0 + 536), type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 536);
  v21 = *(v0 + 528);
  v22 = *(v0 + 368);
  v23 = *(v0 + 376);
  v167 = *(v23 + 56);
  v167(v20, v19, 1, v22);
  sub_22B4D7E58(v20, v21, &qword_27D8CD610, &qword_22B7F95B8);
  v164 = *(v23 + 48);
  v24 = v164(v21, 1, v22);
  v25 = *(v0 + 528);
  if (v24 == 1)
  {
    sub_22B4D0D64(*(v0 + 528), &qword_27D8CD610, &qword_22B7F95B8);
    v26 = 1;
  }

  else
  {
    sub_22B6FC5D0(v25 + *(*(v0 + 368) + 24), *(v0 + 488), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    sub_22B6FC638(v25, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v26 = 0;
  }

  v27 = *(v0 + 616);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  v31 = *(v0 + 480);
  v30 = *(v0 + 488);
  v32 = *(v0 + 464);
  v166 = *(v0 + 456);
  v33 = *(v28 + 56);
  *(v0 + 624) = v33;
  v33(v30, v26, 1, v29);
  sub_22B6FC5D0(v27, v31, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  *(v0 + 632) = (v28 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v156 = v33;
  v33(v31, 0, 1, v29);
  v34 = *(v166 + 48);
  sub_22B4D7E58(v30, v32, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B4D7E58(v31, v32 + v34, &qword_27D8CEC50, qword_22B7FB600);
  v35 = *(v28 + 48);
  v36 = v35(v32, 1, v29);
  v37 = *(v0 + 544);
  if (v36 == 1)
  {
    v38 = *(v0 + 488);
    sub_22B4D0D64(*(v0 + 480), &qword_27D8CEC50, qword_22B7FB600);
    sub_22B4D0D64(v38, &qword_27D8CEC50, qword_22B7FB600);
    if (v35(v32 + v34, 1, v37) == 1)
    {
      sub_22B4D0D64(*(v0 + 464), &qword_27D8CEC50, qword_22B7FB600);
LABEL_27:
      v65 = *(v0 + 616);
      v66 = *(v0 + 272);
      sub_22B4D0D64(*(v0 + 536), &qword_27D8CD610, &qword_22B7F95B8);
      sub_22B6FC3A0(v65, v66, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      v10 = 0;
      v9 = v156;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  sub_22B4D7E58(*(v0 + 464), *(v0 + 472), &qword_27D8CEC50, qword_22B7FB600);
  if (v35(v32 + v34, 1, v37) == 1)
  {
    v39 = *(v0 + 488);
    v40 = *(v0 + 472);
    sub_22B4D0D64(*(v0 + 480), &qword_27D8CEC50, qword_22B7FB600);
    sub_22B4D0D64(v39, &qword_27D8CEC50, qword_22B7FB600);
    sub_22B6FC638(v40, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
LABEL_18:
    sub_22B4D0D64(*(v0 + 464), &qword_27D8CD608, &qword_22B7F95B0);
    goto LABEL_19;
  }

  v59 = *(v0 + 600);
  v61 = *(v0 + 480);
  v60 = *(v0 + 488);
  v63 = *(v0 + 464);
  v62 = *(v0 + 472);
  sub_22B6FC3A0(v32 + v34, v59, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v64 = sub_22B6FA498(v62, v59);
  sub_22B6FC638(v59, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B4D0D64(v61, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B4D0D64(v60, &qword_27D8CEC50, qword_22B7FB600);
  sub_22B6FC638(v62, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B4D0D64(v63, &qword_27D8CEC50, qword_22B7FB600);
  if (v64)
  {
    goto LABEL_27;
  }

LABEL_19:
  v41 = *(v0 + 520);
  v42 = *(v0 + 368);
  sub_22B4D7E58(*(v0 + 536), v41, &qword_27D8CD610, &qword_22B7F95B8);
  v43 = v164(v41, 1, v42);
  v44 = *(v0 + 520);
  if (v43 == 1)
  {
    sub_22B4D0D64(*(v0 + 520), &qword_27D8CD610, &qword_22B7F95B8);
  }

  else
  {
    sub_22B7DBA88();
    sub_22B6FC638(v44, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
  }

  v45 = *(v0 + 616);
  v46 = *(v0 + 592);
  v47 = *(v0 + 512);
  v48 = *(v0 + 280);
  v167(v47, 1, 1, *(v0 + 368));
  swift_beginAccess();
  sub_22B78680C(v47, v48);
  swift_endAccess();
  sub_22B6FC5D0(v45, v46, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = *(v0 + 568);
      v51 = *(v0 + 560);
      v52 = *(v0 + 384);
      v53 = *(v0 + 368);
      v54 = *(v0 + 280);
      sub_22B6FC5D0(*(v0 + 616), v50, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      v55 = swift_allocObject();
      swift_weakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v54;
      *v52 = v54;
      v57 = *(v53 + 24);
      sub_22B6FC5D0(v50, v52 + v57, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      sub_22B6FC5D0(v50, v51, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v58 = 1;
      }

      else
      {
        (*(*(v0 + 408) + 32))(*(v0 + 352), *(v0 + 560), *(v0 + 400));
        v58 = 0;
      }

      v81 = *(v0 + 400);
      v82 = *(v0 + 408);
      v83 = *(v0 + 352);
      (*(v82 + 56))(v83, v58, 1, v81);
      v84 = (*(v82 + 48))(v83, 1, v81);
      v85 = *(v0 + 568);
      v86 = *(v0 + 496);
      if (v84 == 1)
      {
        v87 = *(v0 + 368);
        v88 = *(v0 + 352);

        sub_22B6FC638(v85, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);

        sub_22B4D0D64(v88, &unk_27D8CF790, &qword_22B7F9578);
        sub_22B6FC638(v52 + v57, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
        v167(v86, 1, 1, v87);
      }

      else
      {
        v90 = *(v0 + 424);
        v89 = *(v0 + 432);
        v151 = *(v0 + 416);
        v162 = *(v0 + 496);
        v92 = *(v0 + 400);
        v91 = *(v0 + 408);
        v160 = *(v0 + 384);
        v165 = *(v0 + 368);
        v93 = *(v0 + 328);
        v157 = *(v0 + 568);
        v153 = *(v91 + 32);
        v153(v90, *(v0 + 352), v92);
        v94 = sub_22B7DBA58();
        (*(*(v94 - 8) + 56))(v93, 1, 1, v94);
        v95 = v89;
        (*(v91 + 16))(v89, v90, v92);
        v96 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v97 = swift_allocObject();
        *(v97 + 16) = 0;
        *(v97 + 24) = 0;
        v153(v97 + v96, v95, v92);
        v98 = (v97 + ((v151 + v96 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v98 = &unk_22B7F95C8;
        v98[1] = v56;

        v99 = sub_22B77E3D4(0, 0, v93, &unk_22B7F95D8, v97);
        (*(v91 + 8))(v90, v92);
        sub_22B6FC638(v157, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
        *(v160 + 8) = v99;
        sub_22B6FC5D0(v160, v162, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
        v167(v162, 0, 1, v165);
        sub_22B6FC638(v160, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      }

      v100 = *(v0 + 592);
      v101 = *(v0 + 536);
      v102 = *(v0 + 496);
      v103 = *(v0 + 280);

      swift_beginAccess();
      sub_22B78680C(v102, v103);
      swift_endAccess();
      sub_22B4D0D64(v101, &qword_27D8CD610, &qword_22B7F95B8);
      sub_22B6FC638(v100, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    }

    else
    {
      sub_22B4D0D64(*(v0 + 536), &qword_27D8CD610, &qword_22B7F95B8);
    }

    sub_22B6FC3A0(*(v0 + 616), *(v0 + 272), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    v10 = 0;
    v9 = *(v0 + 624);
    goto LABEL_3;
  }

  v67 = *(v0 + 616);
  v68 = *(v0 + 592);
  v69 = *(v0 + 584);
  v70 = *(v0 + 576);
  v71 = *(v0 + 448);
  v72 = *(v0 + 400);
  v73 = *(v0 + 408);
  v74 = *(v0 + 392);
  v159 = *(v0 + 368);
  v75 = *(v0 + 280);
  v76 = *(v73 + 32);
  *(v0 + 640) = v76;
  *(v0 + 648) = (v73 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v76(v71, v68, v72);
  sub_22B6FC5D0(v67, v69, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = v75;
  *v74 = v75;
  v79 = *(v159 + 24);
  sub_22B6FC5D0(v69, v74 + v79, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B6FC5D0(v69, v70, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v80 = 1;
  }

  else
  {
    v76(*(v0 + 360), *(v0 + 576), *(v0 + 400));
    v80 = 0;
  }

  v104 = *(v0 + 400);
  v105 = *(v0 + 408);
  v106 = *(v0 + 360);
  v107 = *(v105 + 56);
  *(v0 + 656) = v107;
  v107(v106, v80, 1, v104);
  v108 = *(v105 + 48);
  *(v0 + 664) = v108;
  *(v0 + 672) = (v105 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v109 = v108(v106, 1, v104);
  v163 = *(v0 + 584);
  v110 = *(v0 + 504);
  if (v109 == 1)
  {
    v112 = *(v0 + 360);
    v111 = *(v0 + 368);

    sub_22B6FC638(v163, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);

    sub_22B4D0D64(v112, &unk_27D8CF790, &qword_22B7F9578);
    sub_22B6FC638(v74 + v79, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    v167(v110, 1, 1, v111);
  }

  else
  {
    v114 = *(v0 + 432);
    v113 = *(v0 + 440);
    v115 = *(v0 + 408);
    v150 = *(v0 + 416);
    v116 = *(v0 + 400);
    v158 = *(v0 + 392);
    v161 = *(v0 + 368);
    v117 = *(v0 + 328);
    v152 = v117;
    v76(v113, *(v0 + 360), v116);
    v118 = sub_22B7DBA58();
    (*(*(v118 - 8) + 56))(v117, 1, 1, v118);
    (*(v115 + 16))(v114, v113, v116);
    v154 = v110;
    v119 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    *(v120 + 24) = 0;
    v76(v120 + v119, v114, v116);
    v121 = (v120 + ((v150 + v119 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v121 = &unk_22B7F95E8;
    v121[1] = v78;

    v122 = sub_22B77E3D4(0, 0, v152, &unk_22B7F95F0, v120);
    (*(v115 + 8))(v113, v116);
    sub_22B6FC638(v163, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    *(v158 + 8) = v122;
    sub_22B6FC5D0(v158, v154, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v167(v154, 0, 1, v161);
    sub_22B6FC638(v158, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
  }

  v123 = *(v0 + 504);
  v124 = *(v0 + 280);

  swift_beginAccess();
  sub_22B78680C(v123, v124);
  swift_endAccess();
  v125 = sub_22B6FBB04();
  v126 = *(v0 + 288);
  if (v125)
  {
    sub_22B4D0DE8((v126 + 14), v0 + 16);
    v127 = *(v0 + 40);
    v128 = *(v0 + 48);
    sub_22B4D2BCC((v0 + 16), v127);
    swift_beginAccess();
    v129 = v126[20];
    if (*(v129 + 16) && (v130 = sub_22B725570(), (v131 & 1) != 0))
    {
      sub_22B6FC5D0(*(v129 + 56) + *(*(v0 + 304) + 72) * v130, *(v0 + 320), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v132 = 0;
    }

    else
    {
      v132 = 1;
    }

    v142 = *(v0 + 320);
    v143 = *(v0 + 296);
    (*(*(v0 + 304) + 56))(v142, v132, 1, v143);
    v144 = v155(v142, 1, v143);
    v145 = *(v0 + 320);
    if (v144)
    {
      sub_22B4D0D64(v145, &qword_27D8CD600, &unk_22B7F95A0);
      v146 = MEMORY[0x277D84F90];
    }

    else
    {
      v147 = *(v0 + 312);
      v148 = *(v0 + 320);
      sub_22B6FC5D0(v145, v147, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      sub_22B4D0D64(v148, &qword_27D8CD600, &unk_22B7F95A0);
      v146 = sub_22B6F3688();
      sub_22B6FC638(v147, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }

    *(v0 + 680) = v146;
    v169 = (*(v128 + 24) + **(v128 + 24));
    v149 = swift_task_alloc();
    *(v0 + 688) = v149;
    *v149 = v0;
    v149[1] = sub_22B6F7F74;
    v137 = *(v0 + 280);
    v138 = *(v0 + 288);
    v136 = v146;
    v139 = v127;
    v140 = v128;
    v141 = v169;
  }

  else
  {
    v133 = v126[17];
    v134 = v126[18];
    sub_22B4D2BCC(v126 + 14, v133);
    v168 = (*(v134 + 8) + **(v134 + 8));
    v135 = swift_task_alloc();
    *(v0 + 704) = v135;
    *v135 = v0;
    v135[1] = sub_22B6F81D8;
    v136 = *(v0 + 448);
    v137 = *(v0 + 280);
    v138 = *(v0 + 288);
    v139 = v133;
    v140 = v134;
    v141 = v168;
  }

  return v141(v138, v137, v136, v139, v140);
}

uint64_t sub_22B6F7F74()
{
  v2 = *v1;
  v15 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v10 = *(v2 + 36);
    v11 = sub_22B6F8554;
  }

  else
  {
    v12 = *(v2 + 36);
    *(v2 + 85), v3, v4, v5, v6, v7, v8, v9, v14, v15;
    v11 = sub_22B6F809C;
    v10 = v12;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B6F809C()
{
  sub_22B4CFB78(v0 + 2);
  v1 = v0[36];
  v2 = v1[17];
  v3 = v1[18];
  sub_22B4D2BCC(v1 + 14, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[88] = v4;
  *v4 = v0;
  v4[1] = sub_22B6F81D8;
  v5 = v0[56];
  v6 = v0[35];
  v7 = v0[36];

  return v9(v7, v6, v5, v2, v3);
}

uint64_t sub_22B6F81D8()
{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](sub_22B6F82E8, v1, 0);
}

uint64_t sub_22B6F82E8()
{
  v1 = *(v0 + 536);
  (*(*(v0 + 408) + 8))(*(v0 + 448), *(v0 + 400));
  sub_22B4D0D64(v1, &qword_27D8CD610, &qword_22B7F95B8);
  sub_22B6FC3A0(*(v0 + 616), *(v0 + 272), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  (*(v0 + 624))(*(v0 + 272), 0, 1, *(v0 + 544));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B6F8554(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 664);
  v10 = *(v8 + 656);
  v11 = *(v8 + 400);
  v13 = *(v8 + 336);
  v12 = *(v8 + 344);
  v14 = *(v8 + 288);
  *(v8 + 680), a2, a3, a4, a5, a6, a7, a8, v32, v33;
  sub_22B4CFB78((v8 + 16));
  v15 = *(v14 + 152);
  v10(v12, 1, 1, v11);
  v16 = *(v15 + 32);
  sub_22B4D7E58(v12, v13, &unk_27D8CF790, &qword_22B7F9578);
  if (v9(v13, 1, v11) == 1)
  {
    v17 = *(v8 + 336);

    sub_22B4D0D64(v17, &unk_27D8CF790, &qword_22B7F9578);
    *(v8 + 120) = 0u;
    *(v8 + 136) = 0u;
  }

  else
  {
    v18 = *(v8 + 640);
    v19 = *(v8 + 400);
    v20 = *(v8 + 336);
    *(v8 + 144) = v19;
    v21 = sub_22B6FC8CC((v8 + 120));
    v18(v21, v20, v19);
  }

  v22 = *(v8 + 696);
  v23 = *(v8 + 344);
  v16(0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0, v8 + 120);

  sub_22B4D0D64(v23, &unk_27D8CF790, &qword_22B7F9578);
  sub_22B4D0D64(v8 + 120, &unk_27D8CCDC0, &qword_22B7F9580);
  v24 = *(v8 + 288);
  v25 = v24[17];
  v26 = v24[18];
  sub_22B4D2BCC(v24 + 14, v25);
  v34 = (*(v26 + 8) + **(v26 + 8));
  v27 = swift_task_alloc();
  *(v8 + 704) = v27;
  *v27 = v8;
  v27[1] = sub_22B6F81D8;
  v28 = *(v8 + 448);
  v29 = *(v8 + 280);
  v30 = *(v8 + 288);

  return v34(v30, v29, v28, v25, v26);
}

uint64_t (*sub_22B6F8810(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_22B6F9E70(v4, a2);
  return sub_22B6F8888;
}

void sub_22B6F8888(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22B6F88D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22B6F88F4, 0, 0);
}

uint64_t sub_22B6F88F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22B6F89AC, 0, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_22B6F89AC()
{
  v1 = v0[7];
  v2 = v1[17];
  v3 = v1[18];
  sub_22B4D2BCC(v1 + 14, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22B6F8ADC;
  v5 = v0[6];
  v6 = v0[7];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_22B6F8ADC()
{

  return MEMORY[0x2822009F8](sub_22B6F8BD8, 0, 0);
}

uint64_t sub_22B6F8BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B6F8C38(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F8CD4, 0, 0);
}

uint64_t sub_22B6F8CD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_22B6F8DCC;
    v4 = v0[6];
    v3 = v0[7];

    return sub_22B6F66B4(v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B6F8DCC()
{
  v1 = *(*v0 + 56);

  sub_22B4D0D64(v1, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6F8EF4, 0, 0);
}

uint64_t sub_22B6F8EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B6F8F5C(uint64_t a1)
{
  v2[2] = v1;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22B6F9040;

  return sub_22B6F66B4(v4, a1);
}

uint64_t sub_22B6F9040()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22B6F9150, v1, 0);
}

uint64_t sub_22B6F9150()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v3 = 1;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_22B6FC638(v1, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  }

LABEL_7:

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_22B6F924C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F92E8, v1, 0);
}

uint64_t sub_22B6F92E8()
{
  v1 = *(v0 + 80);
  v2 = sub_22B6F64D4(v0 + 16);
  v3 = sub_22B6F8810((v0 + 48), v1);
  v5 = v4;
  v6 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_22B6F5CDC();
  }

  (v3)(v0 + 48, 0);
  (v2)(v0 + 16, 0);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_22B6F942C;
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  return sub_22B6F66B4(v8, v9);
}

uint64_t sub_22B6F942C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);

  sub_22B4D0D64(v1, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6F9568, v2, 0);
}

uint64_t sub_22B6F9568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B6F95C8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F9664, v1, 0);
}

uint64_t sub_22B6F9664()
{
  v1 = *(v0 + 80);
  v2 = sub_22B6F64D4(v0 + 16);
  v3 = sub_22B6F8810((v0 + 48), v1);
  v5 = v4;
  v6 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_22B6F4628(1);
  }

  (v3)(v0 + 48, 0);
  (v2)(v0 + 16, 0);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_22B6F97AC;
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  return sub_22B6F66B4(v8, v9);
}

uint64_t sub_22B6F97AC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);

  sub_22B4D0D64(v1, &qword_27D8CEC50, qword_22B7FB600);

  return MEMORY[0x2822009F8](sub_22B6FC9D4, v2, 0);
}

void *IMDPersistentTaskCriticalLimiter.deinit()
{
  sub_22B4CFB78((v0 + 112));

  *(v0 + 160), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;
  *(v0 + 168), v8, v9, v10, v11, v12, v13, v14, vars0a, vars8a;
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IMDPersistentTaskCriticalLimiter.__deallocating_deinit()
{
  sub_22B4CFB78((v0 + 112));

  *(v0 + 160), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;
  *(v0 + 168), v8, v9, v10, v11, v12, v13, v14, vars0a, vars8a;
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B6F9990(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22B6F9A9C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22B7DC1C8();
LABEL_9:
  result = sub_22B7DC318();
  *v2 = result;
  return result;
}

uint64_t sub_22B6F9B3C(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_22B6F9990(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v38 = v15;
    v39 = a1;
    v34 = v13;
    v35 = v10;
    v33 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v36 = v7;
      v37 = a2;
      while (v19 < v20)
      {
        v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v44 = v16;
        v40 = v22;
        v23 = *(v7 + 72);
        v41 = v23 * v19;
        v42 = v16 + v22;
        v24 = v38;
        sub_22B4D7E58(v16 + v22 + v23 * v19, v38, &unk_27D8CEEC0, &qword_22B7FA060);
        v25 = v45;
        v26 = v39(v24);
        result = sub_22B4D0D64(v24, &unk_27D8CEEC0, &qword_22B7FA060);
        v45 = v25;
        if (v25)
        {
          return result;
        }

        if (v26)
        {
          v7 = v36;
          v16 = v44;
        }

        else
        {
          v27 = v43;
          if (v19 == v43)
          {
            v7 = v36;
            v16 = v44;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v28 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v29 = v23 * v43;
            v30 = v42;
            result = sub_22B4D7E58(v42 + v23 * v43, v34, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v19 >= v28)
            {
              goto LABEL_28;
            }

            v31 = v41;
            sub_22B4D7E58(v30 + v41, v35, &unk_27D8CEEC0, &qword_22B7FA060);
            v16 = v44;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_22B7025B4(v16);
            }

            v32 = v16 + v40;
            result = sub_22B6FBA40(v35, v16 + v40 + v29, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_22B6FBA40(v34, v32 + v31, &unk_27D8CEEC0, &qword_22B7FA060);
            *v33 = v16;
            v7 = v36;
            v27 = v43;
          }

          v43 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void (*sub_22B6F9E70(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_22B6FA464(v5);
  v5[9] = sub_22B6F9F74(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_22B6F9F14;
}

void sub_22B6F9F14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22B6F9F74(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v3;
  v11 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v10[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[3] = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    v10[4] = swift_coroFrameAlloc();
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v12 + 64));
    v10[5] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[6] = v15;
  v16 = *(*(sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0) - 8) + 64);
  if (v8)
  {
    v10[7] = swift_coroFrameAlloc();
    v10[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v16);
    v10[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[9] = v17;
  v19 = *v4;
  v20 = sub_22B725570();
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      sub_22B7A3D04();
      v20 = v28;
      goto LABEL_17;
    }

    sub_22B7A1B64(v25, a3 & 1);
    v20 = sub_22B725570();
    if ((v26 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    type metadata accessor for IMPersistentTaskFlagGroup(0);
    result = sub_22B7DC578();
    __break(1u);
    return result;
  }

LABEL_17:
  v10[10] = v20;
  if (v26)
  {
    sub_22B6FC3A0(*(*v4 + 56) + *(v13 + 72) * v20, v18, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v13 + 56))(v18, v30, 1, v11);
  return sub_22B6FA22C;
}

void sub_22B6FA22C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_22B4D7E58(v5, v6, &qword_27D8CD600, &unk_22B7F95A0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_22B6FC3A0(v9, *(v2 + 5), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_22B6FC3A0(v13, v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
        sub_22B7695F0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_22B4D7E58(v5, v16, &qword_27D8CD600, &unk_22B7F95A0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v19 = *(v2 + 1);
      sub_22B6FC3A0(v9, *(v2 + 6), type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v11 = *v19;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_22B6FC3A0(v13, v11[7] + *(*(v2 + 3) + 72) * v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      goto LABEL_10;
    }
  }

  sub_22B4D0D64(v9, &qword_27D8CD600, &unk_22B7F95A0);
  if (v8)
  {
    sub_22B787C70(*(v2 + 10), **(v2 + 1), v18);
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  sub_22B4D0D64(v21, &qword_27D8CD600, &unk_22B7F95A0);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_22B6FA464(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B6FA48C;
}

uint64_t sub_22B6FA498(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B7DA968();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = sub_22B6F0AD4(&qword_27D8CD5E0, &qword_22B7F9570);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_22B6FC5D0(a1, &v30 - v18, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  sub_22B6FC5D0(a2, &v19[v20], type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22B6FC5D0(v19, v15, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = v30;
      v26 = v31;
      (*(v30 + 32))(v9, &v19[v20], v31);
      v24 = sub_22B7DA918();
      v28 = *(v27 + 8);
      v28(v9, v26);
      v28(v15, v26);
      goto LABEL_12;
    }

    v13 = v15;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22B6FC5D0(v19, v13, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v30;
      v22 = v31;
      (*(v30 + 32))(v7, &v19[v20], v31);
      v24 = sub_22B7DA918();
      v25 = *(v23 + 8);
      v25(v7, v22);
      v25(v13, v22);
LABEL_12:
      sub_22B6FC638(v19, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
      return v24 & 1;
    }

LABEL_7:
    (*(v30 + 8))(v13, v31);
LABEL_10:
    sub_22B4D0D64(v19, &qword_27D8CD5E0, &qword_22B7F9570);
    v24 = 0;
    return v24 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_22B6FC638(v19, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_22B6FA840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_22B6FA994(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2)->messageStore;
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *v4->chatRegistry >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_22B6FA840(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *sub_22B6FAA54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v30 - v11);
  v31[3] = a4;
  v31[4] = a5;
  v13 = sub_22B6FC8CC(v31);
  (*(*(a4 - 8) + 32))(v13, a1, a4);
  swift_defaultActor_initialize();
  v14 = MEMORY[0x277D84F90];
  a3[20] = sub_22B71DBD4(MEMORY[0x277D84F90]);
  a3[21] = sub_22B71DDAC(v14);
  sub_22B4D0DE8(v31, (a3 + 14));
  a3[19] = a2;

  v15 = sub_22B7DBF58();
  v23 = v15;
  v24 = *(v15 + 16);
  if (v24)
  {
    v25 = (v15 + 32);
    do
    {
      v26 = *v25++;

      sub_22B6F3B64(v27, v26, v12);
      v28 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      swift_beginAccess();
      sub_22B7865A4(v12, v26);
      swift_endAccess();
      --v24;
    }

    while (v24);
  }

  v23, v16, v17, v18, v19, v20, v21, v22, v30[0], v30[1];
  sub_22B4CFB78(v31);
  return a3;
}

void *sub_22B6FAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v8 + 32))(&v17 - v12);
  type metadata accessor for IMDPersistentTaskCriticalLimiter();
  v14 = swift_allocObject();
  (*(v8 + 16))(v11, v13, a4);
  v15 = sub_22B6FAA54(v11, a2, v14, a4, a5);
  (*(v8 + 8))(v13, a4);
  return v15;
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupCanExecute(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6FAF68;

  return v6(a1);
}

uint64_t sub_22B6FAF68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupBeganExecuting(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6F12E8;

  return v6(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.groupStoppedExecuting(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6F12E8;

  return v6(a1);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:deferredGroup:until:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B6F12E8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:finishedDeferringGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F12E8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IMDPersistentTaskCriticalLimiter.Delegate.limiter(_:requestTTRForGroup:ranges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B6F0D94;

  return v13(a1, a2, a3, a4, a5);
}

void sub_22B6FB69C(uint64_t a1)
{
  type metadata accessor for IMPersistentTaskFlagGroup(319);
  if (v1 <= 0x3F)
  {
    sub_22B6FB738();
    if (v2 <= 0x3F)
    {
      type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B6FB738()
{
  if (!qword_28141F2B0)
  {
    v0 = sub_22B7DBAA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28141F2B0);
    }
  }
}

void sub_22B6FB7C4(uint64_t a1)
{
  type metadata accessor for IMPersistentTaskFlagGroup(319);
  if (v1 <= 0x3F)
  {
    sub_22B6FB90C(319, &unk_28141F2D0, &unk_27D8CEEC0, &qword_22B7FA060, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22B6FB90C(319, &qword_28141EFB8, &qword_27D8CD5D8, &qword_22B7F9530, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22B6FB8C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_22B6FB90C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22B6FB8C4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22B6FB9C4(uint64_t a1)
{
  result = sub_22B7DA968();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B6FBA40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B6FBB04()
{
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_22B7DA968();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *(v0 + 152);
  v18 = sub_22B6F2648();
  if (v19)
  {
    return 0;
  }

  v36 = v4;
  v37 = v7;
  v33 = *&v18;
  v21 = *(v17 + 16);

  v34 = "com.apple.imagent";
  v35 = "ults";
  v21(&v38, 0xD000000000000011, 0x800000022B80E290, 0xD000000000000034, 0x800000022B80E2B0);

  if (!*(&v39 + 1))
  {
    sub_22B4D0D64(&v38, &unk_27D8CCDC0, &qword_22B7F9580);
    v23 = *(v11 + 56);
    v23(v9, 1, 1, v10);
    goto LABEL_8;
  }

  v22 = swift_dynamicCast();
  v23 = *(v11 + 56);
  v23(v9, v22 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    v28 = v37;
    sub_22B4D0D64(v9, &unk_27D8CF790, &qword_22B7F9578);
    goto LABEL_9;
  }

  v24 = v33;
  (*(v11 + 32))(v16, v9, v10);
  sub_22B7DA938();
  sub_22B7DA898();
  v26 = v25;
  v27 = *(v11 + 8);
  v27(v14, v10);
  v27(v16, v10);
  v28 = v37;
  if (v26 <= v24)
  {
    return 0;
  }

LABEL_9:
  sub_22B7DA938();
  v23(v28, 0, 1, v10);
  v29 = *(v17 + 32);
  v30 = v36;
  sub_22B4D7E58(v28, v36, &unk_27D8CF790, &qword_22B7F9578);
  if ((*(v11 + 48))(v30, 1, v10) == 1)
  {

    sub_22B4D0D64(v30, &unk_27D8CF790, &qword_22B7F9578);
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    *(&v39 + 1) = v10;
    v31 = sub_22B6FC8CC(&v38);
    (*(v11 + 32))(v31, v30, v10);
  }

  v29(0xD000000000000011, v35 | 0x8000000000000000, 0xD000000000000034, v34 | 0x8000000000000000, &v38);

  sub_22B4D0D64(v28, &unk_27D8CF790, &qword_22B7F9578);
  sub_22B4D0D64(&v38, &unk_27D8CCDC0, &qword_22B7F9580);
  return 1;
}

uint64_t sub_22B6FBF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ClientConnection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22B7DC1C8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22B7DC1C8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6FC070(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22B7DC1C8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_22B7DC1C8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_22B6F9A9C(result, 1);

  return sub_22B6FBF70(v5, v3, 0);
}

uint64_t sub_22B6FC148(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_22B4D01A0(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22B7DC1C8();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_22B7DC1C8();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6FC278(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_22B7DC1C8();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_22B7DC1C8();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_22B6F9A9C(result, 1);
    return sub_22B6FC148(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22B6FC35C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B7DA968();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B6FC3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B6FC408()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F0D94;

  return sub_22B6F8C38(v2, v3);
}

uint64_t sub_22B6FC4A0(uint64_t a1)
{
  v4 = *(sub_22B7DA968() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B6F12E8;

  return sub_22B6F5F18(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_22B6FC5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B6FC638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B6FC698()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B6F88D4(v2, v3);
}

uint64_t sub_22B6FC730()
{
  v1 = sub_22B7DA968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B6FC80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B6FC894(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_22B6FC8CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22B6FC958(uint64_t a1)
{
  result = sub_22B7DA968();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B6FC9F4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v39 = MEMORY[0x277D84F90];
    sub_22B7AB6F4(0, v5, 0);
    v7 = v39;
    for (i = (a3 + 56); ; i += 4)
    {
      v9 = *(i - 1);
      v10 = *i;
      v33 = *(i - 3);
      v34 = v9;
      v35 = v10;

      a1(&v36, &v33);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v10, v11, v12, v13, v14, v15, v16, v17, v31, *(&v31 + 1);
      v18 = v36;
      v20 = v37;
      v19 = v38;
      v39 = v7;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        v31 = v36;
        sub_22B7AB6F4((v21 > 1), v22 + 1, 1);
        v18 = v31;
        v7 = v39;
      }

      *(v7 + 16) = v22 + 1;
      v23 = v7 + 32 * v22;
      *(v23 + 32) = v18;
      *(v23 + 48) = v20;
      *(v23 + 56) = v19;
      if (!--v5)
      {
        return;
      }
    }

    v10, v24, v25, v26, v27, v28, v29, v30, v31, *(&v31 + 1);
    __break(1u);
  }
}

uint64_t sub_22B6FCB34()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F548);
  sub_22B4CFA74(v0, qword_28141F548);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B6FCBA0()
{
  sub_22B7DC668();
  sub_22B7DC698();
  return sub_22B7DC6B8();
}

uint64_t sub_22B6FCC14(uint64_t a1)
{
  sub_22B7DC668();
  sub_22B7DC698();
  return sub_22B7DC6B8();
}

id BackwardCompatibilityMessageIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void BackwardCompatibilityMessageIdentifier.init()()
{
  v1 = OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser;
  sub_22B6F0AD4(&qword_27D8CD628, &unk_22B7F9650);
  swift_allocObject();
  sub_22B6FE698(0, 0, 2048, 2048, sub_22B704BC8, sub_22B704BC4);
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages] = MEMORY[0x277D84F90];
  v24.receiver = v0;
  v24.super_class = type metadata accessor for BackwardCompatibilityMessageIdentifier();
  v3 = objc_msgSendSuper2(&v24, sel_init);
  v4 = *&v3[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_parser];
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v4 + 16) = sub_22B6FE664;
  *(v4 + 24) = v5;
  v8 = v3;

  sub_22B4DDE5C(v6, v7);

  v9 = OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages;
  v10 = IMSharedUtilitiesFrameworkBundle();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 localizations];
    v13 = sub_22B7DB918();

    v14 = *&v8[v9];
    *&v8[v9] = v13;
    v14, v15, v16, v17, v18, v19, v20, v21, v24.receiver, v24.super_class;
    v22 = *(*&v8[v9] + 16);
    if (!v22)
    {
LABEL_6:

      return;
    }

    v23 = 0;
    while (v23 != 0x8000000000)
    {
      sub_22B6FF854(v23);
      v23 += 256;
      if (!--v22)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_22B6FCE7C(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR_____IMDBackwardCompatibilityMessageIdentifier_languages];

  if (v2 >> 8 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = v2 >> 8;
  if (*v4->messageStore <= v5)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_10:
    v39 = sub_22B7DB2B8();
    sub_22B4CFA74(v39, qword_28141F548);

    v40 = sub_22B7DB298();
    v41 = sub_22B7DBC98();
    v2, v42, v43, v44, v45, v46, v47, v48, v134, v142;
    v56 = v150;
    if (os_log_type_enabled(v40, v41))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v151 = v58;
      *v57 = 136315138;
      v59 = sub_22B4CFAAC(v145, v2, &v151);
      v2, v60, v61, v62, v63, v64, v65, v66, v137, v145;
      *(v57 + 4) = v59;
      v67 = "Backward compatibility message format is unlocalized in %s";
LABEL_12:
      _os_log_impl(&dword_22B4CC000, v40, v41, v67, v57, 0xCu);
      sub_22B4CFB78(v58);
      MEMORY[0x231898D60](v58, -1, -1);
      MEMORY[0x231898D60](v57, -1, -1);
LABEL_22:

      return 0;
    }

    goto LABEL_21;
  }

  v6 = v4 + 16 * v5;
  v7 = *(v6 + 4);
  v2 = *(v6 + 5);

  v4, v8, v9, v10, v11, v12, v13, v14, v134, v142;
  result = IMSharedUtilitiesFrameworkBundle();
  if (result)
  {
    v16 = result;

    v17 = sub_22B7DB678();
    v18 = sub_22B7DB678();
    v143 = v7;
    v19 = sub_22B7DB678();
    v150 = v16;
    v20 = [v16 localizedStringForKey:v17 value:0 table:v18 localization:v19];

    v21 = sub_22B7DB6A8();
    v23 = v22;

    v31 = v21 == 0xD00000000000002CLL && 0x800000022B80E480 == v23;
    if (v31 || (sub_22B7DC518() & 1) != 0)
    {
      v23, v24, v25, v26, v27, v28, v29, v30, v135, v143;
      v2, v32, v33, v34, v35, v36, v37, v38, v136, v144;
      if (qword_28141F540 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    v68 = sub_22B7DB678();
    v69 = sub_22B7DB678();
    v70 = sub_22B7DB678();
    v71 = [v150 localizedStringForKey:v68 value:0 table:v69 localization:v70];

    v72 = sub_22B7DB6A8();
    v74 = v73;

    if (v72 == 0xD00000000000002CLL && 0x800000022B80E4B0 == v74)
    {
      v74, v75, v76, v77, v78, v79, v80, v81, v135, v143;
      v74 = v23;
      v23 = v2;
      goto LABEL_17;
    }

    v89 = sub_22B7DC518();
    v2, v90, v91, v92, v93, v94, v95, v96, v135, v143;
    if (v89)
    {
LABEL_17:
      v56 = v150;
      v74, v82, v83, v84, v85, v86, v87, v88, v138, v146;
      v23, v97, v98, v99, v100, v101, v102, v103, v139, v147;
      v104 = v148;
      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v105 = sub_22B7DB2B8();
      sub_22B4CFA74(v105, qword_28141F548);

      v40 = sub_22B7DB298();
      v41 = sub_22B7DBC98();
      v2, v106, v107, v108, v109, v110, v111, v112, v140, v148;
      if (os_log_type_enabled(v40, v41))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v151 = v58;
        *v57 = 136315138;
        v113 = sub_22B4CFAAC(v104, v2, &v151);
        v2, v114, v115, v116, v117, v118, v119, v120, v137, v145;
        *(v57 + 4) = v113;
        v67 = "Backward compatibility message prefix is unlocalized in %s";
        goto LABEL_12;
      }

LABEL_21:
      v2, v49, v50, v51, v52, v53, v54, v55, v137, v145;
      goto LABEL_22;
    }

    v2, v82, v83, v84, v85, v86, v87, v88, v138, v146;
    sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_22B7F93A0;
    v122 = MEMORY[0x277D837D0];
    *(v121 + 56) = MEMORY[0x277D837D0];
    v123 = sub_22B704A5C();
    *(v121 + 32) = v72;
    *(v121 + 40) = v74;
    *(v121 + 96) = v122;
    *(v121 + 104) = v123;
    *(v121 + 64) = v123;
    *(v121 + 72) = 16421;
    *(v121 + 80) = 0xE200000000000000;
    v124 = sub_22B7DB6B8();
    v126 = v125;
    v23, v125, v127, v128, v129, v130, v131, v132, v141, v149;
    v133 = sub_22B74B650(v124, v126);

    return v133;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B6FD3F0(void *a1, void *a2)
{
  v4 = [a1 plainBody];
  if (v4)
  {
LABEL_4:
    v7 = sub_22B7DB6A8();
    v9 = v8;

    v140[0] = v7;
    v140[1] = v9;
    v10 = sub_22B7008D4(v7, v9, sub_22B704BC4);
    if (v11)
    {
      v18 = v10;
      v19 = v11;
      MEMORY[0x28223BE20](v10);
      v137 = v140;
      v21 = v20;
      sub_22B6FC9F4(sub_22B703B48, &v135, v20);
      v23 = v22;
      v9, v24, v25, v26, v27, v28, v29, v30, v135, v136;
      v19, v31, v32, v33, v34, v35, v36, v37, v135, v136;
      v21, v38, v39, v40, v41, v42, v43, v44, v135, v136;
      if (*(v23 + 16))
      {
        v45 = *(v23 + 32);
        v46 = *(v23 + 40);
        v48 = *(v23 + 48);
        v47 = *(v23 + 56);

        v23, v49, v50, v51, v52, v53, v54, v55, v138, v139;
        if (v18)
        {
          __break(1u);
LABEL_34:
          swift_once();
LABEL_9:
          v73 = sub_22B7DB2B8();
          sub_22B4CFA74(v73, qword_28141F548);
          v74 = a1;
          v75 = sub_22B7DB298();
          v76 = sub_22B7DBC78();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v140[0] = v78;
            *v77 = 136315138;
            v79 = [v74 guid];

            if (v79)
            {
              v80 = sub_22B7DB6A8();
              v82 = v81;

              v83 = sub_22B4CFAAC(v80, v82, v140);
              v82, v84, v85, v86, v87, v88, v89, v90, v138, v139;
              *(v77 + 4) = v83;
              _os_log_impl(&dword_22B4CC000, v75, v76, "Found edited message matching backward compatibility message %s. Message can be dropped.", v77, 0xCu);
              sub_22B4CFB78(v78);
              MEMORY[0x231898D60](v78, -1, -1);
              MEMORY[0x231898D60](v77, -1, -1);
LABEL_31:

              return;
            }

            goto LABEL_36;
          }

LABEL_30:

          goto LABEL_31;
        }

        v56 = MEMORY[0x231895080](v45, v46, v48, v47);
        v58 = v57;
        v47, v57, v59, v60, v61, v62, v63, v64, v138, v139;
        sub_22B6FDB08(a1, v56, v58, a2);
        LOBYTE(v56) = v65;
        v58, v66, v67, v68, v69, v70, v71, v72, v138, v139;
        if (v56)
        {
          if (qword_28141F540 == -1)
          {
            goto LABEL_9;
          }

          goto LABEL_34;
        }

        if (qword_28141F540 != -1)
        {
          swift_once();
        }

        v109 = sub_22B7DB2B8();
        sub_22B4CFA74(v109, qword_28141F548);
        v74 = a1;
        v75 = sub_22B7DB298();
        v93 = sub_22B7DBC78();
        if (!os_log_type_enabled(v75, v93))
        {
          goto LABEL_30;
        }

        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v140[0] = v95;
        *v94 = 136315138;
        v110 = [v74 guid];

        if (!v110)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v111 = sub_22B7DB6A8();
        v113 = v112;

        v114 = sub_22B4CFAAC(v111, v113, v140);
        v113, v115, v116, v117, v118, v119, v120, v121, v138, v139;
        *(v94 + 4) = v114;
        v108 = "Could not find edited message matching backward compatibility message %s. Message cannot be dropped.";
LABEL_29:
        _os_log_impl(&dword_22B4CC000, v75, v93, v108, v94, 0xCu);
        sub_22B4CFB78(v95);
        MEMORY[0x231898D60](v95, -1, -1);
        MEMORY[0x231898D60](v94, -1, -1);
        goto LABEL_31;
      }

      v91 = v23;
    }

    else
    {
      v91 = v9;
    }

    v91, v11, v12, v13, v14, v15, v16, v17, v138, v139;
    if (qword_28141F540 != -1)
    {
      swift_once();
    }

    v92 = sub_22B7DB2B8();
    sub_22B4CFA74(v92, qword_28141F548);
    v74 = a1;
    v75 = sub_22B7DB298();
    v93 = sub_22B7DBC78();
    if (!os_log_type_enabled(v75, v93))
    {
      goto LABEL_30;
    }

    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v140[0] = v95;
    *v94 = 136315138;
    v96 = [v74 guid];

    if (!v96)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v97 = sub_22B7DB6A8();
    v99 = v98;

    v100 = sub_22B4CFAAC(v97, v99, v140);
    v99, v101, v102, v103, v104, v105, v106, v107, v138, v139;
    *(v94 + 4) = v100;
    v108 = "No backward compatibility message match found %s";
    goto LABEL_29;
  }

  v5 = [a1 body];
  if (v5)
  {
    v6 = v5;
    v4 = [v5 string];

    goto LABEL_4;
  }

  if (qword_28141F540 != -1)
  {
    swift_once();
  }

  v122 = sub_22B7DB2B8();
  sub_22B4CFA74(v122, qword_28141F548);
  v74 = a1;
  v75 = sub_22B7DB298();
  v93 = sub_22B7DBC78();
  if (!os_log_type_enabled(v75, v93))
  {
    goto LABEL_30;
  }

  v94 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v140[0] = v95;
  *v94 = 136315138;
  v123 = [v74 guid];

  if (v123)
  {
    v124 = sub_22B7DB6A8();
    v126 = v125;

    v127 = sub_22B4CFAAC(v124, v126, v140);
    v126, v128, v129, v130, v131, v132, v133, v134, v138, v139;
    *(v94 + 4) = v127;
    v108 = "No plain body found for message %s";
    goto LABEL_29;
  }

LABEL_38:
  __break(1u);
}

void sub_22B6FDB08(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_22B7DA968();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v100 - v14;
  v16 = [a4 guid];
  if (v16)
  {
    v17 = [a1 time];
    if (!v17)
    {

      return;
    }

    v102 = v10;
    v103 = v9;
    v108 = v16;
    v18 = v17;
    sub_22B7DA928();

    sub_22B7DA8A8();
    sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
    v107 = a2;
    sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
    v19 = swift_allocObject();
    v110 = xmmword_22B7F93A0;
    *(v19 + 16) = xmmword_22B7F93A0;
    v20 = sub_22B7DB6A8();
    v105 = a3;
    v106 = ObjectType;
    v21 = v20;
    v23 = v22;
    v111 = v15;
    v104 = a1;
    v24 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v25 = sub_22B704A5C();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v26 = MEMORY[0x277D84A90];
    *(v19 + 96) = MEMORY[0x277D84A28];
    *(v19 + 104) = v26;
    *(v19 + 64) = v25;
    *(v19 + 72) = 0;
    v27 = sub_22B7DBC58();
    v28 = swift_allocObject();
    *(v28 + 16) = v110;
    v29 = *MEMORY[0x277D19F88];
    v30 = sub_22B7DB6A8();
    *(v28 + 56) = v24;
    *(v28 + 64) = v25;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    v32 = sub_22B7DA8B8();
    v33 = sub_22B4D01A0(0, &qword_27D8CD668, 0x277CBEAA8);
    *(v28 + 96) = v33;
    v34 = sub_22B704AB0();
    v101 = v13;
    v35 = v34;
    *(v28 + 104) = v34;
    *(v28 + 72) = v32;
    v36 = sub_22B7DBC58();
    v37 = swift_allocObject();
    *(v37 + 16) = v110;
    v38 = sub_22B7DB6A8();
    *(v37 + 56) = v24;
    *(v37 + 64) = v25;
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    v40 = sub_22B7DA8B8();
    *(v37 + 96) = v33;
    *(v37 + 104) = v35;
    *(v37 + 72) = v40;
    v41 = sub_22B7DBC58();
    sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22B7F9610;
    *(v42 + 32) = v27;
    *(v42 + 40) = v36;
    *(v42 + 48) = v41;
    v100 = v27;
    v109 = v36;
    *&v110 = v41;
    v43 = sub_22B7DB8F8();
    v42, v44, v45, v46, v47, v48, v49, v50, v100, v101;
    v51 = [objc_opt_self() andPredicateWithSubpredicates_];

    v52 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:v29 ascending:0];
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22B7F9620;
    *(v53 + 32) = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = objc_opt_self();
    v56 = v52;
    v57 = [v55 synchronousDatabase];
    sub_22B4D01A0(0, &qword_27D8CD670, 0x277CCAC98);
    v58 = v51;
    v59 = sub_22B7DB8F8();
    v53, v60, v61, v62, v63, v64, v65, v66, v100, v101;
    v67 = swift_allocObject();
    v68 = v104;
    v69 = v105;
    v70 = v106;
    v71 = v107;
    v67[2] = v104;
    v67[3] = v71;
    v67[4] = v69;
    v67[5] = v54;
    v67[6] = v70;
    aBlock[4] = sub_22B704B18;
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B766634;
    aBlock[3] = &unk_283F1C398;
    v72 = _Block_copy(aBlock);
    v73 = v68;

    v74 = v108;
    [v57 fetchMessageRecordsForChatRecordWithGUID:v108 filteredUsingPredicate:v58 sortedUsingDescriptors:v59 limit:50 completionHandler:v72];
    _Block_release(v72);

    swift_beginAccess();
    if (*(v54 + 16))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v108 = v57;
      v75 = v111;
      if (qword_28141F540 != -1)
      {
        swift_once();
      }

      v76 = sub_22B7DB2B8();
      sub_22B4CFA74(v76, qword_28141F548);
      v77 = v73;
      v78 = sub_22B7DB298();
      v79 = sub_22B7DBC98();
      v80 = os_log_type_enabled(v78, v79);
      v82 = v109;
      v81 = v110;
      if (!v80)
      {

        swift_unknownObjectRelease();
        v97 = *(v102 + 8);
        v98 = v103;
        v97(v101, v103);
        v99 = v75;
        goto LABEL_13;
      }

      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v112 = v84;
      *v83 = 136315138;
      v85 = [v77 guid];

      if (!v85)
      {
        __break(1u);
        return;
      }

      v86 = sub_22B7DB6A8();
      v88 = v87;

      v89 = sub_22B4CFAAC(v86, v88, &v112);
      v88, v90, v91, v92, v93, v94, v95, v96, v100, v101;
      *(v83 + 4) = v89;
      _os_log_impl(&dword_22B4CC000, v78, v79, "Backward compatibility message %s does not match any edited message in our database.", v83, 0xCu);
      sub_22B4CFB78(v84);
      MEMORY[0x231898D60](v84, -1, -1);
      MEMORY[0x231898D60](v83, -1, -1);

      swift_unknownObjectRelease();
    }

    v97 = *(v102 + 8);
    v98 = v103;
    v97(v101, v103);
    v99 = v111;
LABEL_13:
    v97(v99, v98);
  }
}

void sub_22B6FE300(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v10 = sub_22B7DC1C8();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v10 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x231895C80](i, a1);
    }

    else
    {
      if (i >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_22B70412C(a2, a3, a4, v12);
    v15 = v14;

    if (v15)
    {
      swift_beginAccess();
      *(a5 + 16) = 1;
      return;
    }
  }
}

void sub_22B6FE414(void *a1)
{
  v3 = [v1 isFromMe];
  v4 = [a1 isFromMe];
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v5 = [v1 sender];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 sender];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 _stripFZIDPrefix];

        if (v9)
        {
          v10 = [v9 im_stripCategoryLabel];

          sub_22B7DB6A8();
          v12 = v11;

          v13 = [v8 _stripFZIDPrefix];
          if (v13)
          {
            v14 = [v13 im_stripCategoryLabel];

            v15 = sub_22B7DB6A8();
            v17 = v16;

            sub_22B704B70();
            sub_22B7DC0D8();
            v12, v18, v19, v20, v21, v22, v23, v24, v15, v17;
            v17, v25, v26, v27, v28, v29, v30, v31, v32, v33;
            return;
          }
        }

        else
        {

          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

id BackwardCompatibilityMessageIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackwardCompatibilityMessageIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22B6FE698(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = MEMORY[0x231894B30](0, 0x2000);
  *(v6 + 40) = v12;
  *(v6 + 48) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v6 + 64) = MEMORY[0x277D84F90];
  v14 = type metadata accessor for EvictionCounter();
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;
  *(v6 + 112) = [objc_allocWithZone(v14) init];
  sub_22B6F0AD4(&qword_27D8CD638, &qword_22B7F9740);
  v15 = sub_22B7DB958();
  *(v15 + 16) = 3;
  *(v15 + 32) = v13;
  *(v15 + 40) = v13;
  *(v15 + 48) = v13;
  *(v15 + 56) = xmmword_22B7F9630;
  *(v15 + 72) = v13;
  *(v15 + 80) = v13;
  *(v15 + 88) = v13;
  *(v15 + 96) = xmmword_22B7F9630;
  *(v15 + 112) = v13;
  *(v15 + 120) = v13;
  *(v15 + 128) = v13;
  *(v15 + 136) = xmmword_22B7F9630;
  *(v6 + 128) = v15;
  v17 = *(v6 + 16);
  v16 = *(v6 + 24);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_bridgeObjectRetain_n();
  a5(a1, a2);
  v18 = a6;
  a6(v17, v16);
  v19 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v6 + 56) = v19;
  [v19 setTotalCostLimit_];
  if ((a3 - 0x10000000) >> 29 != 7)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(8 * a3, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = (8 * a3 - 1) | ((8 * a3 - 1) >> 1) | (((8 * a3 - 1) | ((8 * a3 - 1) >> 1)) >> 2);
  v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
  v22 = v21 | (v21 >> 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = MEMORY[0x231894B30](0, v24);
  v27 = v26;
  swift_beginAccess();
  v28 = *(v6 + 32);
  *(v6 + 32) = v25;
  *(v6 + 40) = v27;
  *(v6 + 48) = 0;
  v28, v29, v30, v31, v32, v33, v34, v35, a6, v40;
  v36 = *(v6 + 112);
  v37 = *(v6 + 56);
  v38 = v36;
  [v37 setDelegate_];
  v18(a1, a2);

  if ((a4 - 0x1000000000000000) >> 61 == 7)
  {
    *(v6 + 120) = 8 * a4;
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22B6FE8EC(unsigned int a1, uint64_t a2)
{
  v90 = *(a2 + 16);
  if (!v90)
  {
    return 0;
  }

  v4 = v2;
  HIDWORD(v77) = a1;
  v89 = a2 + 32;
  swift_beginAccess();
  v12 = 0;
  v82 = 0;
  v87 = 0;
  v13 = 0;
  v14 = 0;
  v88 = v2;
  while (1)
  {
    v15 = (v89 + 24 * v14);
    v16 = *v15;
    v17 = *(v4 + 128);
    if (*(v17 + 16) <= v16)
    {
      goto LABEL_85;
    }

    v92 = v13;
    v19 = *(v15 + 1);
    v18 = *(v15 + 2);
    v20 = (v17 + 40 * *v15);
    v13 = v20[4];
    v21 = v20[5];
    v22 = v20[6];
    v4 = v20[7];
    v3 = v20[8];
    v91 = v18;

    if (v3)
    {
      break;
    }

LABEL_11:
    v40 = 0;
LABEL_66:
    v4 = v88;
    v3 = v91;
    v13 = v92;
    if (v92)
    {
      if (v40 >= v12 && (v40 != v12 || *v92->messageStore >= *v91->messageStore))
      {
        v91, v5, v6, v7, v8, v9, v10, v11, v77, v82;
        v40 = v12;
        goto LABEL_5;
      }

      v92, v5, v6, v7, v8, v9, v10, v11, v77, v82;
    }

    v82 = v19;
    v87 = v16;
    v13 = v91;
LABEL_5:
    ++v14;
    v12 = v40;
    if (v14 == v90)
    {
      if (v13)
      {
        swift_beginAccess();
        v3 = *(v88 + 128);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v88 + 128) = v3;
        v12 = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_73;
      }

      return v87;
    }
  }

  v23 = sub_22B7DC618();
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  v24 = sub_22B702144(v19, v23 % v3);
  if (v25)
  {
    v22, v25, v6, v7, v8, v9, v10, v11, v77, v82;
    v21, v26, v27, v28, v29, v30, v31, v32, v78, v83;
    v13, v33, v34, v35, v36, v37, v38, v39, v79, v84;
    goto LABEL_11;
  }

  v5 = 64;
  v41 = 64 - v4;
  if (__OFSUB__(64, v4))
  {
    goto LABEL_88;
  }

  v40 = 0;
  v42 = v24 % v3;
  while (2)
  {
    v43 = __OFADD__(v40++, 1);
    if (v43)
    {
      goto LABEL_87;
    }

    v44 = 0;
    v45 = v42 + 1;
LABEL_16:
    v42 = v44 + v45;
    if (!__CFADD__(v44, v45))
    {
      v46 = v42 % v3 * v4;
      if (((v42 % v3) * v4) >> 64 != v46 >> 63)
      {
        goto LABEL_79;
      }

      if (v46 >= 0)
      {
        v47 = v42 % v3 * v4;
      }

      else
      {
        v47 = v46 + 63;
      }

      if (v46 < -63)
      {
        goto LABEL_80;
      }

      if (v47 >> 6 >= *v22->messageStore)
      {
        goto LABEL_81;
      }

      v48 = 64 - (v46 - (v47 & 0xFFFFFFFFFFFFFFC0));
      v43 = __OFSUB__(v48, v4);
      v49 = v48 - v4;
      if (v43)
      {
        goto LABEL_82;
      }

      if (v49 <= -65)
      {
        if (v41 < -64 || v41 > 64)
        {
          goto LABEL_65;
        }

        goto LABEL_31;
      }

      if (v49 > 64)
      {
        if (v41 <= -65 || v41 >= 65)
        {
          goto LABEL_65;
        }

LABEL_31:
        if ((v41 & 0x8000000000000000) == 0)
        {
LABEL_32:
          if (v41 == 64)
          {
            goto LABEL_65;
          }

          v50 = 0;
          goto LABEL_41;
        }

        if (v41 == -64)
        {
          goto LABEL_65;
        }

        v52 = 0;
LABEL_58:
        v50 = v52 << (v4 - 64);
LABEL_41:
        if (!v50)
        {
          goto LABEL_65;
        }

        v53 = v50 - 1;
        if (v53 < 0)
        {
          goto LABEL_83;
        }

        if (v53 >= *v13->messageStore)
        {
          goto LABEL_84;
        }

        if (*&v13->queue[4 * v53] == v19)
        {
          if (v42 != -1)
          {
            continue;
          }

LABEL_65:
          v22, 0x40, v6, v7, v8, v9, v10, v11, v77, v82;
          v21, v54, v55, v56, v57, v58, v59, v60, v80, v85;
          v13, v61, v62, v63, v64, v65, v66, v67, v81, v86;
          goto LABEL_66;
        }

        if (v3 == ++v44)
        {
          goto LABEL_65;
        }

        goto LABEL_16;
      }

      v51 = *&v22->queue[8 * (v47 >> 6)];
      if (v49 < 0)
      {
        if (v49 != -64)
        {
          v52 = v51 >> -v49;
          if (v41 <= -65)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }

        if (v41 <= -65 || v41 >= 65)
        {
          goto LABEL_65;
        }

        if ((v41 & 0x8000000000000000) == 0)
        {
          if (v41 == 64)
          {
            goto LABEL_65;
          }

          v5 = 64;
          v50 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        if (v49 != 64)
        {
          v52 = v51 << v49;
          if (v41 <= -65)
          {
            goto LABEL_65;
          }

LABEL_37:
          if (v41 > 64)
          {
            goto LABEL_65;
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            if (v41 == 64)
            {
              goto LABEL_65;
            }

            v50 = v52 >> v41;
            goto LABEL_41;
          }

          if (v41 == -64)
          {
            goto LABEL_65;
          }

          goto LABEL_58;
        }

        if (v41 <= -65 || v41 >= 65)
        {
          goto LABEL_65;
        }

        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }
      }

      if (v41 == -64)
      {
        goto LABEL_65;
      }

      v52 = 0;
      v5 = 64;
      goto LABEL_58;
    }

    break;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v3 = sub_22B7025DC(v3, v5, v6, v7, v8, v9, v10, v11);
  *(v4 + 128) = v3;
LABEL_73:
  result = HIDWORD(v77);
  if (v12 < *(v3 + 16))
  {
    sub_22B6FF288(SWORD2(v77), v82);
    *(v4 + 128) = v3;
    swift_endAccess();
    v13, v70, v71, v72, v73, v74, v75, v76, v77, v82;
    return v12;
  }

  __break(1u);
  return result;
}

void sub_22B6FED4C(IMDScheduledMessageCoordinator *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = a1;
  if (a1->messageStore[0] != 1 || (v6 = *a1->chatRegistry, !v6[2]))
  {
    v44 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5->queue[0] == 1)
      {
        v48 = *v5->chatRegistry;
        v49 = *(v48 + 16);
        if (v49)
        {
          v50 = (v48 + 32 * v49);
          v51 = *v50;
          v52 = v50[1];
          v54 = v50[2];
          v53 = v50[3];
          swift_beginAccess();
          v55 = *(v151 + 32);

          v4 = sub_22B703E38(v51, v52, v54, v53, 7411);
          v55, v56, v57, v58, v59, v60, v61, v62, v137, v143;
          v63 = sub_22B7034D0(v51, v52, v54, v53);
          if (v63)
          {
            v71 = v63;
            v72 = sub_22B703A6C(v63, 0);

            v73 = sub_22B75A09C(v152, (v72 + 4), v71, v51, v52, v54, v53);
            v153, v74, v75, v76, v77, v78, v79, v80, v140, v146;
            if (v73 != v71)
            {
              goto LABEL_44;
            }

            v53, v81, v82, v83, v84, v85, v86, v87, v141, v147;
          }

          else
          {
            v53, v64, v65, v66, v67, v68, v69, v70, v140, v146;
            v72 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = a2(0, *(v44 + 16) + 1, 1, v44);
          }

          i = *(v44 + 16);
          v88 = *(v44 + 24);
          v2 = i + 1;
          if (i >= v88 >> 1)
          {
            v44 = a2(v88 > 1, i + 1, 1, v44);
          }

          *(v44 + 16) = v2;
          v89 = v44 + 24 * i;
          *(v89 + 32) = 1;
          *(v89 + 40) = v4;
          *(v89 + 48) = v72;
        }
      }

      v90 = sub_22B74B1A4();
      v45 = v93 >> 1;
      v46 = (v93 >> 1) - v92;
      if (v93 >> 1 == v92)
      {
        return;
      }

      if ((v93 >> 1) <= v92)
      {
        goto LABEL_41;
      }

      v94 = v91;
      v95 = v92;
      v148 = v90;
      swift_unknownObjectRetain();
      swift_beginAccess();
      for (i = (v94 + 32 * v95 + 16); ; i += 4)
      {
        v97 = *(i - 2);
        v96 = *(i - 1);
        v98 = *i;
        v99 = i[1];
        v100 = *(v151 + 32);

        v101 = sub_22B703C30(v97, v96, v98, v99, 7829);
        v100, v102, v103, v104, v105, v106, v107, v108, v137, v148;
        v109 = sub_22B7034D0(v97, v96, v98, v99);
        if (v109)
        {
          break;
        }

        v99, v110, v111, v112, v113, v114, v115, v116, v142, v149;
        v117 = MEMORY[0x277D84F90];
LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = a2(0, *(v44 + 16) + 1, 1, v44);
        }

        v135 = *(v44 + 16);
        v134 = *(v44 + 24);
        if (v135 >= v134 >> 1)
        {
          v44 = a2(v134 > 1, v135 + 1, 1, v44);
        }

        *(v44 + 16) = v135 + 1;
        v136 = v44 + 24 * v135;
        *(v136 + 32) = 2;
        *(v136 + 40) = v101;
        *(v136 + 48) = v117;
        if (!--v46)
        {
          swift_unknownObjectRelease();
          return;
        }
      }

      v4 = v109;
      if (v109 < 1)
      {
        v117 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22B6F0AD4(&unk_27D8CEBF0, &qword_22B7F9738);
        v117 = swift_allocObject();
        v118 = j__malloc_size(v117);
        v119 = v118 - 32;
        if (v118 < 32)
        {
          v119 = v118 - 29;
        }

        v117[2] = v4;
        v117[3] = 2 * (v119 >> 2);
      }

      v2 = sub_22B7036E0(v152, (v117 + 4), v4, v97, v96, v98, v99);
      v5 = v153;

      v5, v120, v121, v122, v123, v124, v125, v126, v142, v149;
      if (v2 == v4)
      {
        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v44 = a2(v45 > 1, v46, 1, v44);
LABEL_9:
      *(v44 + 16) = v46;
      v47 = v44 + 24 * i;
      *(v47 + 32) = 0;
      *(v47 + 40) = v4;
      *(v47 + 48) = v2;
    }

    v99, v127, v128, v129, v130, v131, v132, v133, v137, v143;
    goto LABEL_33;
  }

  v7 = v6[4];
  v8 = v6[5];
  v10 = v6[6];
  v9 = v6[7];
  swift_beginAccess();
  v11 = *(v151 + 32);

  v4 = sub_22B703C30(v7, v8, v10, v9, 5417);
  v11, v12, v13, v14, v15, v16, v17, v18, v137, v143;
  v19 = sub_22B7034D0(v7, v8, v10, v9);
  if (!v19)
  {
    v9, v20, v21, v22, v23, v24, v25, v26, v138, v144;
    v2 = MEMORY[0x277D84F90];
LABEL_8:
    v44 = a2(0, 1, 1, MEMORY[0x277D84F90]);
    i = *(v44 + 16);
    v45 = *(v44 + 24);
    v46 = i + 1;
    if (i >= v45 >> 1)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v27 = v19;
  v2 = sub_22B703A6C(v19, 0);
  v28 = sub_22B7036E0(v152, v2 + 32, v27, v7, v8, v10, v9);
  v29 = v153;

  v29, v30, v31, v32, v33, v34, v35, v36, v138, v144;
  if (v28 == v27)
  {
    v9, v37, v38, v39, v40, v41, v42, v43, v139, v145;
    goto LABEL_8;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

unint64_t sub_22B6FF288(__int16 a1, int a2)
{
  sub_22B701D3C();
  v5 = *v2;
  v6 = *(*v2)->messageStore;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22B71B65C(0, v6 + 1, 1, v5, v7, v8, v9, v10);
  }

  v12 = *v5->messageStore;
  v11 = *v5->chatRegistry;
  if (v12 >= v11 >> 1)
  {
    v5 = sub_22B71B65C((v11 > 1), v12 + 1, 1, v5, v7, v8, v9, v10);
  }

  *v5->messageStore = v12 + 1;
  *&v5->queue[4 * v12] = a2;
  *v2 = v5;
  v13 = v2[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_22B71B560(0, *v13->messageStore + 1, 1, v13, v14, v15, v16, v17);
  }

  v19 = *v13->messageStore;
  v18 = *v13->chatRegistry;
  if (v19 >= v18 >> 1)
  {
    v13 = sub_22B71B560((v18 > 1), v19 + 1, 1, v13, v14, v15, v16, v17);
  }

  *v13->messageStore = v19 + 1;
  *&v13->queue[2 * v19] = a1;
  v2[1] = v13;

  return sub_22B701F04(v6);
}

void sub_22B6FF3BC(uint64_t a1, uint64_t a2, void (*a3)(__objc2_class **, uint64_t))
{
  v136 = *(a2 + 16);
  if (!v136)
  {
    return;
  }

  v4 = v3;
  v137 = a2 + 32;
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    v20 = (v137 + 24 * v5);
    v21 = *(v4 + 128);
    if (*(v21 + 16) <= *v20)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      return;
    }

    v139 = v5;
    v22 = *(v20 + 2);
    v23 = (v21 + 40 * *v20);
    v24 = v23[5];
    v26 = v23[6];
    v25 = v23[7];
    v27 = v23[8];
    v142 = v23[4];

    if (v27)
    {
      v143 = v25;

      v35 = sub_22B7DC618();
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }

      v36 = sub_22B702144(v22, v35 % v27);
      v38 = v37;
      v26, v37, v39, v40, v41, v42, v43, v44, v118, v127;
      v24, v45, v46, v47, v48, v49, v50, v51, v121, v130;
      v142, v52, v53, v54, v55, v56, v57, v58, v122, v131;
      v59 = v143;
      if ((v38 & 1) == 0)
      {
        break;
      }
    }

LABEL_3:
    v5 = v139 + 1;
    v26, v28, v29, v30, v31, v32, v33, v34, v118, v127;
    v24, v6, v7, v8, v9, v10, v11, v12, v119, v128;
    v142, v13, v14, v15, v16, v17, v18, v19, v120, v129;
    if (v139 + 1 == v136)
    {
      return;
    }
  }

  v60 = 64 - v143;
  if (__OFSUB__(64, v143))
  {
    goto LABEL_79;
  }

  queue = v26->queue;
  v61 = v36 % v27;
  v127 = (v143 - 64);
  v145 = &v24->chatRegistry[6];
  v146 = -1 - v143;
  v140 = v26;
  v141 = v24;
  v144 = 64 - v143;
  while (1)
  {
    v62 = v61 % v27 * v59;
    if (((v61 % v27) * v59) >> 64 != v62 >> 63)
    {
      goto LABEL_72;
    }

    if (v62 >= 0)
    {
      v63 = v61 % v27 * v59;
    }

    else
    {
      v63 = v62 + 63;
    }

    if (v62 < -63)
    {
      goto LABEL_73;
    }

    if (v63 >> 6 >= *v26->messageStore)
    {
      goto LABEL_74;
    }

    v64 = 64 - (v62 - (v63 & 0xFFFFFFFFFFFFFFC0));
    v65 = __OFSUB__(v64, v59);
    v66 = v64 - v59;
    if (v65)
    {
      goto LABEL_75;
    }

    if (v66 <= -65 || v66 > 64)
    {
LABEL_19:
      if (v146 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_67;
      }

      if ((v60 & 0x8000000000000000) == 0)
      {
        if (v60 >= 0x40)
        {
          goto LABEL_67;
        }

        goto LABEL_22;
      }

      if (v60 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_67;
      }

LABEL_56:
      v67 = 0;
      goto LABEL_60;
    }

    v68 = *&queue[8 * (v63 >> 6)];
    if (v66 < 0)
    {
      break;
    }

    if (v66 == 64)
    {
      goto LABEL_19;
    }

    v67 = v68 << v66;
LABEL_26:
    if (v146 < 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_67;
    }

    if ((v60 & 0x8000000000000000) == 0)
    {
      if (v60 >= 0x40)
      {
        goto LABEL_67;
      }

      goto LABEL_29;
    }

    if (v60 <= 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_67;
    }

LABEL_60:
    v69 = v67 << v127;
    if ((v69 & 0x8000000000000000) != 0)
    {
LABEL_71:
      __break(1u);
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_30:
    if (!v69)
    {
      goto LABEL_67;
    }

    if (v69 > *v24->messageStore)
    {
      goto LABEL_76;
    }

    v70 = *&v145[2 * v69];
    v61 = sub_22B702144(v22, v61 + 1);
    v72 = v71;
    v73 = sub_22B701320(v70, 0, a3);
    if (v73)
    {
      v74 = v4;
      if (*(v73 + 16) == *(a1 + 16) && *(v73 + 32) == *(a1 + 32))
      {
        v75 = *(v73 + 24);
        v76 = *(a1 + 24);
        v77 = *(v75 + 16);
        if (v77 == *(v76 + 16))
        {
          if (!v77 || v75 == v76)
          {

            v140, v97, v98, v99, v100, v101, v102, v103, v118, v127;
            v141, v104, v105, v106, v107, v108, v109, v110, v125, v134;
            v142, v111, v112, v113, v114, v115, v116, v117, v126, v135;
            return;
          }

          v78 = (v75 + 56);
          v79 = (v76 + 56);
          while (1)
          {
            v28 = *v78;
            v31 = *(v79 - 1);
            v32 = *v79;
            v29 = *(v78 - 3) >> 16;
            v30 = (*(v78 - 2) >> 16);
            v33 = (*(v79 - 3) >> 16);
            v34 = (*(v79 - 2) >> 16);
            v80 = *(v78 - 1) == v31 && v28 == v32;
            v81 = v80 && v29 == v33;
            if (!v81 || v30 != v34)
            {
              LOBYTE(v118) = 0;
              if ((sub_22B7DC4D8() & 1) == 0)
              {
                break;
              }
            }

            v78 += 4;
            v79 += 4;
            if (!--v77)
            {
              goto LABEL_68;
            }
          }
        }
      }

      v4 = v74;
      v26 = v140;
      v24 = v141;
      v59 = v143;
    }

    v60 = 64 - v143;
    if ((v72 & 1) != 0 || v61 == -1)
    {
      goto LABEL_3;
    }
  }

  if (v66 != -64)
  {
    v67 = v68 >> -v66;
    goto LABEL_26;
  }

  if (v146 < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_67;
  }

  if ((v60 & 0x8000000000000000) == 0)
  {
    v59 = v143;
    LOBYTE(v60) = 64 - v143;
    v24 = v141;
    if (v144 >= 0x40)
    {
      goto LABEL_67;
    }

LABEL_22:
    v67 = 0;
LABEL_29:
    v69 = v67 >> v60;
    if ((v69 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_30;
  }

  v59 = v143;
  v24 = v141;
  if (v144 > 0xFFFFFFFFFFFFFFC0)
  {
    goto LABEL_56;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v140, v28, v29, v30, v31, v32, v33, v34, v118, v127;
  v141, v83, v84, v85, v86, v87, v88, v89, v123, v132;
  v142, v90, v91, v92, v93, v94, v95, v96, v124, v133;
}

void sub_22B6FF854(int a1)
{
  v175 = a1;
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_99:
    __break(1u);
    return;
  }

  v3 = v1;
  LODWORD(v4) = a1;
  v164 = *(v1 + 80);
  v5 = *(v1 + 24);

  v6 = v2(&v175);
  sub_22B4DDE5C(v2, v5);
  if (!v6)
  {
    goto LABEL_76;
  }

  sub_22B6FED4C(v6, sub_22B71B8BC);
  v8 = v7;
  sub_22B6FF3BC(v6, v7, sub_22B704BC4);
  if ((v13 & 0x10000) == 0)
  {

    v8, v14, v15, v16, v17, v18, v19, v20, v146, v154;
    goto LABEL_76;
  }

  v21 = *(v3 + 64);
  v22 = *(v21 + 16);
  if (v22 >> 15)
  {
    goto LABEL_89;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_22B71B8A8((v24 > 1), v25 + 1, 1, v21, v9, v10, v11, v12);
    }

    *(v21 + 16) = v25 + 1;
    *(v21 + 4 * v25 + 32) = v4;
    *(v3 + 64) = v21;
    v26 = sub_22B6FE8EC(v22, v8);
    v28 = v27;
    v8, v29, v27, v30, v31, v32, v33, v34, v146, v154;
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [*(v3 + 56) setObject:v6 forKey:v8 cost:sub_22B74A1AC()];

    if (v28)
    {
      v8 = qword_22B7F9790[v26];
      swift_beginAccess();
      sub_22B70232C(v28, v8, 1);
      swift_endAccess();
      v28, v35, v36, v37, v38, v39, v40, v41, v147, v155;
    }

    swift_beginAccess();
    v42 = *(v3 + 40);
    if (v42 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v43 = 25 * v42;
    if ((v42 * 25) >> 64 != (25 * v42) >> 63)
    {
      goto LABEL_92;
    }

    v44 = *(v3 + 48);
    if (v44 <= (v43 / 0x64))
    {
      break;
    }

    if (v44 + 0x4000000000000000 < 0)
    {
      goto LABEL_93;
    }

    v45 = 2 * v44;
    v46 = 200 * v44;
    if ((v45 * 100) >> 64 != v46 >> 63)
    {
      goto LABEL_94;
    }

    if (v46 >> 31 <= 0x18)
    {
      v25 = v46 / 0x19uLL;
      if (qword_27D8CCC18 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
LABEL_18:
    v47 = sub_22B7DB2B8();
    sub_22B4CFA74(v47, qword_27D8CE680);
    v21 = sub_22B7DB298();
    v48 = sub_22B7DBCB8();
    if (os_log_type_enabled(v21, v48))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v25 >> 3;
      _os_log_impl(&dword_22B4CC000, v21, v48, "The number of 1 bits in the bloom filter was too large. Increasing filter size to %d bytes.", v8, 8u);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v49 = (v25 - 1) | ((v25 - 1) >> 1) | (((v25 - 1) | ((v25 - 1) >> 1)) >> 2);
    v50 = v49 | (v49 >> 4) | ((v49 | (v49 >> 4)) >> 8);
    v51 = v50 | HIWORD(v50);
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v52 = MEMORY[0x231894B30](0, (v51 + 1));
    v53 = *(v3 + 32);
    *(v3 + 32) = v52;
    *(v3 + 40) = v54;
    *(v3 + 48) = 0;
    v53, v54, v55, v56, v57, v58, v59, v60, v147, v155;
    v61 = *(*(v3 + 64) + 16);
    if (v61 >> 15)
    {
      goto LABEL_98;
    }

    if (!v61)
    {
      break;
    }

    v22 = 0;
    LODWORD(v4) = 40;
    v162 = v3;
    v146 = v6;
    v154 = *(*(v3 + 64) + 16);
    while (1)
    {
      if (v22 >= v61)
      {
        goto LABEL_88;
      }

      v21 = v3;
      v62 = sub_22B701320(v22, 0, sub_22B704BC4);
      if (v62)
      {
        break;
      }

LABEL_25:
      v22 = (v22 + 1);
      LOWORD(v61) = v154;
      if (v22 == v154)
      {
        goto LABEL_75;
      }
    }

    v21 = v3;
    sub_22B6FED4C(v62, sub_22B71B8BC);
    v67 = v63;
    v167 = *v63->messageStore;
    if (!v167)
    {
LABEL_24:
      v67, v64, v65, v66, v9, v10, v11, v12, v146, v154;

      v6 = v146;
      goto LABEL_25;
    }

    queue = v63->queue;
    swift_beginAccess();
    v21 = 0;
    v163 = v67;
    while (1)
    {
      if (v21 >= *v67->messageStore)
      {
        goto LABEL_84;
      }

      v77 = &queue[24 * v21];
      v78 = *(v3 + 128);
      if (*(v78 + 16) <= *v77)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v171 = v21;
      v79 = *(v77 + 2);
      v8 = *(v77 + 2);
      v168 = *v77;
      v80 = (v78 + 40 * *v77);
      v81 = v80[5];
      v82 = v80[6];
      v6 = v80[7];
      v83 = v80[8];
      v177[0] = v80[4];
      v21 = v177[0];
      v177[1] = v81;
      v177[2] = v82;
      v177[3] = v6;
      v177[4] = v83;
      v170 = v79;

      v173 = v21;
      swift_bridgeObjectRetain_n();
      v172 = v81;
      v84 = v82;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v83)
      {
        v88 = sub_22B7DC618();
        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        v21 = v177;
        v89 = sub_22B702144(v8, v88 % v83);
        if ((v85 & 1) == 0)
        {
          break;
        }
      }

      v82, v85, v86, v87, v9, v10, v11, v12, v146, v154;
      v8 = v172;
      v172, v90, v91, v92, v93, v94, v95, v96, v148, v156;
LABEL_38:
      v76 = v171;
      v68 = v173;
      v173, v97, v98, v99, v100, v101, v102, v103, v149, v157;
      v170, v104, v105, v106, v107, v108, v109, v110, v150, v158;
      v84, v111, v112, v113, v114, v115, v116, v117, v151, v159;
      v8, v118, v119, v120, v121, v122, v123, v124, v152, v160;
LABEL_31:
      v21 = v76 + 1;
      v68, v69, v70, v71, v72, v73, v74, v75, v146, v154;
      if (v21 == v167)
      {
        goto LABEL_24;
      }
    }

    v4 = 64 - v6;
    if (!__OFSUB__(64, v6))
    {
      v125 = v89 % v83;
      v176[0] = v173;
      v176[1] = v172;
      v176[2] = v82;
      v176[3] = v6;
      v176[4] = v83;
      v169 = v82->queue;
      v165 = v82;
      v174 = *v82->messageStore;
      v126 = *v172->messageStore;
      v127 = -1 - v6;
      while (1)
      {
        v128 = v125 % v83 * v6;
        if (((v125 % v83) * v6) >> 64 != v128 >> 63)
        {
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (v128 >= 0)
        {
          v129 = v125 % v83 * v6;
        }

        else
        {
          v129 = v128 + 63;
        }

        if (v128 < -63)
        {
          goto LABEL_80;
        }

        if (v129 >> 6 >= v174)
        {
          goto LABEL_81;
        }

        v130 = 64 - (v128 - (v129 & 0xFFFFFFFFFFFFFFC0));
        v131 = __OFSUB__(v130, v6);
        v132 = v130 - v6;
        if (v131)
        {
          goto LABEL_82;
        }

        if (v132 <= -65 || v132 > 64)
        {
          break;
        }

        v134 = *&v169[8 * (v129 >> 6)];
        if (v132 < 0)
        {
          if (v132 == -64)
          {
            break;
          }

          v133 = v134 >> -v132;
          if (v127 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v132 == 64)
          {
            break;
          }

          v133 = v134 << v132;
          if (v127 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v4 >= 0x40)
          {
            goto LABEL_79;
          }

LABEL_59:
          v135 = v133 >> v4;
          if ((v135 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          goto LABEL_60;
        }

        if (v4 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_79;
        }

LABEL_72:
        v135 = v133 << (v6 - 64);
        if ((v135 & 0x8000000000000000) != 0)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_60:
        if (!v135)
        {
          goto LABEL_79;
        }

        if (v135 > v126)
        {
          goto LABEL_83;
        }

        v3 = *&v172->chatRegistry[2 * v135 + 6];
        v21 = v176;
        v125 = sub_22B702144(v8, v125 + 1);
        if (v3 == v22)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v8 = qword_22B7F9790[v168];
          v3 = v162;
          swift_beginAccess();
          v68 = v170;
          sub_22B70232C(v170, v8, 1);
          swift_endAccess();
          LODWORD(v4) = 40;
          v67 = v163;
          v76 = v171;
          goto LABEL_31;
        }

        if ((v136 & 1) != 0 || v125 == -1)
        {
          v84 = v165;
          v165, v136, v137, v138, v9, v10, v11, v12, v146, v154;
          v8 = v172;
          v172, v139, v140, v141, v142, v143, v144, v145, v153, v161;
          v3 = v162;
          v67 = v163;
          LODWORD(v4) = 40;
          goto LABEL_38;
        }
      }

      if (v127 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_79;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          goto LABEL_79;
        }

        v133 = 0;
        goto LABEL_59;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_79;
      }

      v133 = 0;
      goto LABEL_72;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v21 = sub_22B71B8A8(0, v22 + 1, 1, v21, v9, v10, v11, v12);
    *(v3 + 64) = v21;
  }

LABEL_75:

LABEL_76:
  *(v3 + 80) = v164;
}

void sub_22B700088(int a1)
{
  v175 = a1;
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_99:
    __break(1u);
    return;
  }

  v3 = v1;
  LODWORD(v4) = a1;
  v164 = *(v1 + 80);
  v5 = *(v1 + 24);

  v6 = v2(&v175);
  sub_22B4DDE5C(v2, v5);
  if (!v6)
  {
    goto LABEL_76;
  }

  sub_22B6FED4C(v6, sub_22B71C660);
  v8 = v7;
  sub_22B6FF3BC(v6, v7, sub_22B704BC4);
  if ((v13 & 0x10000) == 0)
  {

    v8, v14, v15, v16, v17, v18, v19, v20, v146, v154;
    goto LABEL_76;
  }

  v21 = *(v3 + 64);
  v22 = *(v21 + 16);
  if (v22 >> 15)
  {
    goto LABEL_89;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_22B71C550((v24 > 1), v25 + 1, 1, v21, v9, v10, v11, v12);
    }

    *(v21 + 16) = v25 + 1;
    *(v21 + 4 * v25 + 32) = v4;
    *(v3 + 64) = v21;
    v26 = sub_22B6FE8EC(v22, v8);
    v28 = v27;
    v8, v29, v27, v30, v31, v32, v33, v34, v146, v154;
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [*(v3 + 56) setObject:v6 forKey:v8 cost:sub_22B74A1AC()];

    if (v28)
    {
      v8 = qword_22B7F9790[v26];
      swift_beginAccess();
      sub_22B70232C(v28, v8, 1);
      swift_endAccess();
      v28, v35, v36, v37, v38, v39, v40, v41, v147, v155;
    }

    swift_beginAccess();
    v42 = *(v3 + 40);
    if (v42 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v43 = 25 * v42;
    if ((v42 * 25) >> 64 != (25 * v42) >> 63)
    {
      goto LABEL_92;
    }

    v44 = *(v3 + 48);
    if (v44 <= (v43 / 0x64))
    {
      break;
    }

    if (v44 + 0x4000000000000000 < 0)
    {
      goto LABEL_93;
    }

    v45 = 2 * v44;
    v46 = 200 * v44;
    if ((v45 * 100) >> 64 != v46 >> 63)
    {
      goto LABEL_94;
    }

    if (v46 >> 31 <= 0x18)
    {
      v25 = v46 / 0x19uLL;
      if (qword_27D8CCC18 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
LABEL_18:
    v47 = sub_22B7DB2B8();
    sub_22B4CFA74(v47, qword_27D8CE680);
    v21 = sub_22B7DB298();
    v48 = sub_22B7DBCB8();
    if (os_log_type_enabled(v21, v48))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v25 >> 3;
      _os_log_impl(&dword_22B4CC000, v21, v48, "The number of 1 bits in the bloom filter was too large. Increasing filter size to %d bytes.", v8, 8u);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v49 = (v25 - 1) | ((v25 - 1) >> 1) | (((v25 - 1) | ((v25 - 1) >> 1)) >> 2);
    v50 = v49 | (v49 >> 4) | ((v49 | (v49 >> 4)) >> 8);
    v51 = v50 | HIWORD(v50);
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v52 = MEMORY[0x231894B30](0, (v51 + 1));
    v53 = *(v3 + 32);
    *(v3 + 32) = v52;
    *(v3 + 40) = v54;
    *(v3 + 48) = 0;
    v53, v54, v55, v56, v57, v58, v59, v60, v147, v155;
    v61 = *(*(v3 + 64) + 16);
    if (v61 >> 15)
    {
      goto LABEL_98;
    }

    if (!v61)
    {
      break;
    }

    v22 = 0;
    LODWORD(v4) = 40;
    v162 = v3;
    v146 = v6;
    v154 = *(*(v3 + 64) + 16);
    while (1)
    {
      if (v22 >= v61)
      {
        goto LABEL_88;
      }

      v21 = v3;
      v62 = sub_22B701320(v22, 0, sub_22B704BC4);
      if (v62)
      {
        break;
      }

LABEL_25:
      v22 = (v22 + 1);
      LOWORD(v61) = v154;
      if (v22 == v154)
      {
        goto LABEL_75;
      }
    }

    v21 = v3;
    sub_22B6FED4C(v62, sub_22B71C660);
    v67 = v63;
    v167 = *v63->messageStore;
    if (!v167)
    {
LABEL_24:
      v67, v64, v65, v66, v9, v10, v11, v12, v146, v154;

      v6 = v146;
      goto LABEL_25;
    }

    queue = v63->queue;
    swift_beginAccess();
    v21 = 0;
    v163 = v67;
    while (1)
    {
      if (v21 >= *v67->messageStore)
      {
        goto LABEL_84;
      }

      v77 = &queue[24 * v21];
      v78 = *(v3 + 128);
      if (*(v78 + 16) <= *v77)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v171 = v21;
      v79 = *(v77 + 2);
      v8 = *(v77 + 2);
      v168 = *v77;
      v80 = (v78 + 40 * *v77);
      v81 = v80[5];
      v82 = v80[6];
      v6 = v80[7];
      v83 = v80[8];
      v177[0] = v80[4];
      v21 = v177[0];
      v177[1] = v81;
      v177[2] = v82;
      v177[3] = v6;
      v177[4] = v83;
      v170 = v79;

      v173 = v21;
      swift_bridgeObjectRetain_n();
      v172 = v81;
      v84 = v82;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v83)
      {
        v88 = sub_22B7DC618();
        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        v21 = v177;
        v89 = sub_22B702144(v8, v88 % v83);
        if ((v85 & 1) == 0)
        {
          break;
        }
      }

      v82, v85, v86, v87, v9, v10, v11, v12, v146, v154;
      v8 = v172;
      v172, v90, v91, v92, v93, v94, v95, v96, v148, v156;
LABEL_38:
      v76 = v171;
      v68 = v173;
      v173, v97, v98, v99, v100, v101, v102, v103, v149, v157;
      v170, v104, v105, v106, v107, v108, v109, v110, v150, v158;
      v84, v111, v112, v113, v114, v115, v116, v117, v151, v159;
      v8, v118, v119, v120, v121, v122, v123, v124, v152, v160;
LABEL_31:
      v21 = v76 + 1;
      v68, v69, v70, v71, v72, v73, v74, v75, v146, v154;
      if (v21 == v167)
      {
        goto LABEL_24;
      }
    }

    v4 = 64 - v6;
    if (!__OFSUB__(64, v6))
    {
      v125 = v89 % v83;
      v176[0] = v173;
      v176[1] = v172;
      v176[2] = v82;
      v176[3] = v6;
      v176[4] = v83;
      v169 = v82->queue;
      v165 = v82;
      v174 = *v82->messageStore;
      v126 = *v172->messageStore;
      v127 = -1 - v6;
      while (1)
      {
        v128 = v125 % v83 * v6;
        if (((v125 % v83) * v6) >> 64 != v128 >> 63)
        {
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (v128 >= 0)
        {
          v129 = v125 % v83 * v6;
        }

        else
        {
          v129 = v128 + 63;
        }

        if (v128 < -63)
        {
          goto LABEL_80;
        }

        if (v129 >> 6 >= v174)
        {
          goto LABEL_81;
        }

        v130 = 64 - (v128 - (v129 & 0xFFFFFFFFFFFFFFC0));
        v131 = __OFSUB__(v130, v6);
        v132 = v130 - v6;
        if (v131)
        {
          goto LABEL_82;
        }

        if (v132 <= -65 || v132 > 64)
        {
          break;
        }

        v134 = *&v169[8 * (v129 >> 6)];
        if (v132 < 0)
        {
          if (v132 == -64)
          {
            break;
          }

          v133 = v134 >> -v132;
          if (v127 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v132 == 64)
          {
            break;
          }

          v133 = v134 << v132;
          if (v127 < 0xFFFFFFFFFFFFFF7FLL)
          {
            goto LABEL_79;
          }
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v4 >= 0x40)
          {
            goto LABEL_79;
          }

LABEL_59:
          v135 = v133 >> v4;
          if ((v135 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          goto LABEL_60;
        }

        if (v4 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_79;
        }

LABEL_72:
        v135 = v133 << (v6 - 64);
        if ((v135 & 0x8000000000000000) != 0)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_60:
        if (!v135)
        {
          goto LABEL_79;
        }

        if (v135 > v126)
        {
          goto LABEL_83;
        }

        v3 = *&v172->chatRegistry[2 * v135 + 6];
        v21 = v176;
        v125 = sub_22B702144(v8, v125 + 1);
        if (v3 == v22)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v8 = qword_22B7F9790[v168];
          v3 = v162;
          swift_beginAccess();
          v68 = v170;
          sub_22B70232C(v170, v8, 1);
          swift_endAccess();
          LODWORD(v4) = 40;
          v67 = v163;
          v76 = v171;
          goto LABEL_31;
        }

        if ((v136 & 1) != 0 || v125 == -1)
        {
          v84 = v165;
          v165, v136, v137, v138, v9, v10, v11, v12, v146, v154;
          v8 = v172;
          v172, v139, v140, v141, v142, v143, v144, v145, v153, v161;
          v3 = v162;
          v67 = v163;
          LODWORD(v4) = 40;
          goto LABEL_38;
        }
      }

      if (v127 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_79;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          goto LABEL_79;
        }

        v133 = 0;
        goto LABEL_59;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_79;
      }

      v133 = 0;
      goto LABEL_72;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v21 = sub_22B71C550(0, v22 + 1, 1, v21, v9, v10, v11, v12);
    *(v3 + 64) = v21;
  }

LABEL_75:

LABEL_76:
  *(v3 + 80) = v164;
}

uint64_t sub_22B7008D4(unint64_t a1, unint64_t a2, void (*a3)(__objc2_class **, uint64_t))
{
  v5 = v3;
  swift_beginAccess();
  v8 = *(v3 + 32);
  v9 = *(v5 + 40);
  v10 = MEMORY[0x277D84F90];
  v187 = MEMORY[0x277D84F90];

  sub_22B7CDCB0(a1, a2, 0xFuLL, 5417, 1, v8, v9, &v187);
  v8, v11, v12, v13, v14, v15, v16, v17, v157, v171;
  v18 = v187;
  sub_22B700CB0(0, v187);
  v20 = v19;
  v18, v21, v22, v23, v24, v25, v26, v27, v158, v172;
  v188 = v20;
  v28 = *(v5 + 32);
  v29 = *(v5 + 40);
  v187 = v10;
  v30 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v30 = a1;
  }

  v31 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v31 = 11;
  }

  v32 = v31 | (v30 << 16);

  sub_22B7CE088(a1, a2, v32, 7411, 1, v28, v29, &v187);
  v28, v33, v34, v35, v36, v37, v38, v39, v159, v173;
  v40 = v187;
  sub_22B700CB0(1u, v187);
  v42 = v41;
  v40, v43, v44, v45, v46, v47, v48, v49, v160, v174;
  v189 = v42;
  v50 = *(v5 + 32);
  v51 = *(v5 + 40);
  v52 = MEMORY[0x277D84FA0];
  v186 = v10;
  v187 = MEMORY[0x277D84FA0];

  sub_22B7CE9A0(a1, a2, 7829, 1, v50, v51, &v187, &v186);
  v50, v53, v54, v55, v56, v57, v58, v59, v161, v175;
  v60 = v186;
  v187, v61, v62, v63, v64, v65, v66, v67, v162, v176;
  sub_22B700CB0(2u, v60);
  v69 = v68;
  v60, v70, v71, v72, v73, v74, v75, v76, v163, v177;
  v190 = v69;
  v187 = v52;
  v77 = a1;

  sub_22B755E24(v78);

  sub_22B755E24(v79);

  sub_22B755E24(v80);
  sub_22B6F0AD4(&qword_27D8CD640, &qword_22B7F9748);
  swift_arrayDestroy();
  v81 = v187;
  v82 = sub_22B700FA0(a1, a2, v187, a3);
  v84 = v83;
  v86 = v85;
  v81, v83, v85, v87, v88, v89, v90, v91, v164, v178;
  if (!v84)
  {
    return 0;
  }

  v92 = sub_22B747CA4(a1, a2, v84);

  v93 = sub_22B703FDC(0, a1, a2);
  v95 = v94;
  v97 = v96;
  v99 = v98;
  a2, v94, v96, v98, v100, v101, v102, v103, v165, v179;
  v104 = sub_22B704078(v93, v95, v97, v99, *(v92 + 16));
  v99, v105, v106, v107, v108, v109, v110, v111, v166, v180;
  v119 = v86[5];
  v120 = *v119->messageStore;
  if (v120)
  {

    v182 = v82;
    v185 = v77;
    v168 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v104 = sub_22B7025F0(v104, v121, v122, v123, v124, v125, v126, v127);
    }

    v128 = 0;
    v129 = (v92 + 56);
    do
    {
      v130 = *&v119->queue[8 * v128];
      if ((v130 & 0x8000000000000000) == 0 && v130 < *v104->messageStore)
      {
        if ((v128 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (v128 >= *(v92 + 16))
        {
          goto LABEL_20;
        }

        v132 = *(v129 - 1);
        v131 = *v129;
        v133 = &v104->queue[32 * v130];
        v134 = *(v133 + 24);
        *v133 = *(v129 - 3);
        *(v133 + 16) = v132;
        *(v133 + 24) = v131;

        v134, v135, v136, v137, v138, v139, v140, v141, v168, v182;
      }

      ++v128;
      v129 += 4;
    }

    while (v120 != v128);
    v119, v121, v122, v123, v124, v125, v126, v127, v168, v182;
    v92, v142, v143, v144, v145, v146, v147, v148, v169, v183;
    LODWORD(v82) = v184;
    v77 = v185;
  }

  else
  {
    v92, v112, v113, v114, v115, v116, v117, v118, v167, v181;
  }

  v104, v149, v150, v151, v152, v153, v154, v155, v170, v184;
  sub_22B747CA4(v77, a2, v84);

  return v82;
}

void sub_22B700CB0(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  swift_beginAccess();
  v5 = *(v2 + 128);
  if (*(v5 + 16) <= v4)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v107 = *(a2 + 16);
  if (v107)
  {
    v6 = (v5 + 40 * v4);
    v7 = v6[4];
    v8 = v6[5];
    v9 = v6[6];
    v111 = v6[7];
    v10 = v6[8];
    v100 = (a2 + 32);
    v109 = &v8->chatRegistry[6];

    v11 = 0;
    v12 = MEMORY[0x277D84FA0];
    v93 = v7;
    while (1)
    {
      v34 = v100[v11];

      v108 = v11;
      if (v10)
      {

        v42 = sub_22B7DC618();
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        v43 = sub_22B702144(v34, v42 % v10);
        v45 = v44;
        v9, v44, v46, v47, v48, v49, v50, v51, v93, v100;
        v8, v52, v53, v54, v55, v56, v57, v58, v96, v103;
        v7, v59, v60, v61, v62, v63, v64, v65, v97, v104;
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

LABEL_4:
      v11 = v108 + 1;
      v9, v35, v36, v37, v38, v39, v40, v41, v93, v100;
      v8, v13, v14, v15, v16, v17, v18, v19, v94, v101;
      v7 = v95;
      v95, v20, v21, v22, v23, v24, v25, v26, v95, v102;
      if (v108 + 1 == v107)
      {
        v9, v27, v28, v29, v30, v31, v32, v33, v93, v100;
        v8, v79, v80, v81, v82, v83, v84, v85, v98, v105;
        v7, v86, v87, v88, v89, v90, v91, v92, v99, v106;
        return;
      }
    }

    v110 = v34;
    v66 = v43 % v10;
    v67 = v12 + 56;
    while (1)
    {
      v68 = sub_22B714034(v66 % v10, v9, v111);
      if ((v68 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v68)
      {
        goto LABEL_25;
      }

      if (v68 > *v8->messageStore)
      {
        goto LABEL_26;
      }

      v69 = v8;
      v70 = *&v109[2 * v68];
      v71 = sub_22B702144(v110, v66 + 1);
      v66 = v71;
      if (v72)
      {
        v73 = -1;
      }

      else
      {
        v73 = v71;
      }

      v74 = MEMORY[0x231895FC0](*(v12 + 40), v70, 2);
      v75 = -1 << *(v12 + 32);
      v76 = v74 & ~v75;
      if ((*(v67 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
      {
        v77 = ~v75;
        while (*(*(v12 + 48) + 2 * v76) != v70)
        {
          v76 = (v76 + 1) & v77;
          if (((*(v67 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v8 = v69;
        if (v73 == -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_20:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B7CAD44(v70, v76, isUniquelyReferenced_nonNull_native);
        v8 = v69;
        if (v73 == -1)
        {
          goto LABEL_4;
        }

        v67 = v12 + 56;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_22B700FA0(IMDScheduledMessageCoordinator *a1, unint64_t a2, uint64_t a3, void (*a4)(__objc2_class **, uint64_t))
{
  v6 = v4;
  v7 = a3;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v85 = (v11 + 63) >> 6;

  v14 = 0;
  v84 = MEMORY[0x277D84F90];
  if (v13)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v16 = *v7->blocklistObserver;
        v17 = (v14 << 7) | (2 * v15);
        v18 = *(v16 + v17);
        v19 = sub_22B701320(*(v16 + v17), 1, a4);
        if (v19)
        {
          break;
        }

        if (!v13)
        {
          goto LABEL_6;
        }
      }

      HIDWORD(v78) = v18;
      v79 = v10;
      v80 = a4;
      v81 = v7;
      v82 = v6;
      v83 = v19;
      v21 = *(*(v19 + 24) + 16);

      v30 = 0;
      v31 = (v22 + 56);
      v86 = -v21;
      v87 = v22;
      v32 = -1;
      while (v86 + v32 != -1)
      {
        if (++v32 >= *v87->messageStore)
        {
          goto LABEL_36;
        }

        v88 = v31 + 4;
        v33 = a2;
        v7 = a1;
        v34 = *v31;

        v35 = sub_22B7DC088();
        v36 = v34;
        a2 = v33;
        v36, v37, v38, v39, v40, v41, v42, v43, v77, v78;
        v31 = v88;
        v44 = __OFADD__(v30, v35);
        v30 += v35;
        if (v44)
        {
          goto LABEL_37;
        }
      }

      v87, v23, v24, v25, v26, v27, v28, v29, v77, v78;
      v45 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_22B71BC38(0, (*v84->messageStore + 1), 1, v84, v46, v47, v48, v49);
      }

      v6 = v82;
      v50 = v83;
      v52 = *v45->messageStore;
      v51 = *v45->chatRegistry;
      if (v52 >= v51 >> 1)
      {
        v45 = sub_22B71BC38((v51 > 1), (v52 + 1), 1, v45, v46, v47, v48, v49);
        v50 = v83;
      }

      *v45->messageStore = v52 + 1;
      v84 = v45;
      v53 = v45 + 24 * v52;
      *(v53 + 16) = WORD2(v78);
      *(v53 + 5) = v50;
      *(v53 + 6) = v30;
      a4 = v80;
      v7 = v81;
      v10 = v79;
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v20 >= v85)
    {
      break;
    }

    v13 = *(v10 + 8 * v20);
    ++v14;
    if (v13)
    {
      v14 = v20;
      goto LABEL_4;
    }
  }

  v89 = v84;

  sub_22B702668(&v89);
  v84, v54, v55, v56, v57, v58, v59, v60, v77, v78;
  v7 = v89;
  v61 = *v89->messageStore;
  if (!v61)
  {
LABEL_28:

    return 0;
  }

  v62 = 0;
  membershipObserver = v89->membershipObserver;
  while (v62 < *v7->messageStore)
  {
    v64 = *(membershipObserver - 4);

    if (sub_22B70183C(a1, a2, v65, v66, v67, v68, v69, v70))
    {

      v74 = v6[12];
      v44 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v44)
      {
        goto LABEL_38;
      }

      v6[12] = v75;
      if ((v64 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v76 = v6[8];
      if (*(v76 + 16) <= v64)
      {
        goto LABEL_40;
      }

      return *(v76 + 4 * v64 + 32);
    }

    v71 = v6[13];
    v44 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v44)
    {
      goto LABEL_35;
    }

    ++v62;
    v6[13] = v72;
    membershipObserver += 24;
    if (v61 == v62)
    {
      goto LABEL_28;
    }
  }

LABEL_34:
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
LABEL_40:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22B701320(__int16 a1, char a2, void (*a3)(__objc2_class **, uint64_t))
{
  v5 = v3;
  LOBYTE(v6) = a2;
  v8 = &off_278709000;
  p_prots = &OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol.prots;
  if ([*(v3 + 56) totalCostLimit] >= *(v3 + 120))
  {
    goto LABEL_16;
  }

  v11 = *(v3 + 80);
  v10 = *(v3 + 88);
  v12 = (v3 + 80);
  v13 = __OFADD__(v11, v10);
  v14 = v11 + v10;
  if (v13)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v14 < 101 || v10 / v14 <= 0.1 || (v6 & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(v3 + 56);
  v16 = [v15 totalCostLimit];
  if (v16 + 0x4000000000000000 < 0)
  {
    goto LABEL_43;
  }

  if (*(v5 + 120) >= 2 * v16)
  {
    v17 = 2 * v16;
  }

  else
  {
    v17 = *(v5 + 120);
  }

  [v15 setTotalCostLimit_];

  if (qword_27D8CCC18 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v18 = sub_22B7DB2B8();
    sub_22B4CFA74(v18, qword_27D8CE680);

    v19 = sub_22B7DB298();
    v20 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_15;
    }

    result = swift_slowAlloc();
    *result = 134218240;
    v23 = *(v5 + 80);
    v22 = *(v5 + 88);
    v13 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v13)
    {
      break;
    }

    *(result + 4) = round(v22 / v24 * 1000.0) / 10.0;
    *(result + 12) = 2048;
    v25 = v8[451];
    v26 = result;
    *(result + 14) = [*(v5 + 56) v25];

    _os_log_impl(&dword_22B4CC000, v19, v20, "Cache miss rate of %f%% is too high. Increasing cache size to %ld bytes", v26, 0x16u);
    MEMORY[0x231898D60](v26, -1, -1);

LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    *(&p_prots[211]->count + *(v5 + 112)) = 0;
LABEL_16:
    v8 = ((*(&p_prots[211]->count + *(v5 + 112)) > 1) & v6);
    v27 = a1;
    v12 = 0x277CCA000;
    p_prots = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v28 = [*(v5 + 56) objectForKey_];
    if (v28)
    {
      v29 = v28;

      if ((v8 & 1) == 0)
      {
        return v29;
      }

      v30 = *(v5 + 80);
      v13 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (!v13)
      {
        *(v5 + 80) = v31;
        return v29;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = *(v5 + 88);
    v13 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v13)
    {
      *(v5 + 88) = v33;
      if (__ROR8__(0x8F5C28F5C28F5C29 * v33 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        if (qword_27D8CCC18 != -1)
        {
          swift_once();
        }

        v37 = sub_22B7DB2B8();
        sub_22B4CFA74(v37, qword_27D8CE680);
        v38 = sub_22B7DBC78();

        v39 = sub_22B7DB298();
        if (os_log_type_enabled(v39, v38))
        {
          buf = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v55 = v54;
          *buf = 136315138;
          v40 = sub_22B7426E0(*(v5 + 80), *(v5 + 88));
          HIDWORD(v52) = v38;
          v42 = v41;

          v43 = sub_22B4CFAAC(v40, v42, &v55);
          v42, v44, v45, v46, v47, v48, v49, v50, v51, v52;
          *(buf + 4) = v43;
          _os_log_impl(&dword_22B4CC000, v39, BYTE4(v52), "Cache stats: %s", buf, 0xCu);
          sub_22B4CFB78(v54);
          MEMORY[0x231898D60](v54, -1, -1);
          MEMORY[0x231898D60](buf, -1, -1);
        }

        else
        {
        }

        v8 = *(v5 + 16);
        if (!v8)
        {
LABEL_36:

          return 0;
        }
      }

      else
      {
LABEL_23:
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      if ((a1 & 0x8000) == 0)
      {
        v34 = *(v5 + 64);
        if (*(v34 + 16) > a1)
        {
          v35 = *(v5 + 24);
          v56 = *(v34 + 4 * v27 + 32);

          v29 = (v8)(&v56);
          if (v29)
          {
            v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
            [*(v5 + 56) setObject:v29 forKey:v36 cost:sub_22B74A1AC()];
          }

          else
          {
          }

          a3(v8, v35);
          return v29;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  __break(1u);
  return result;
}

IMDScheduledMessageCoordinator *sub_22B70183C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 24);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = 7;
  }

  if ((*(v8 + 16) & 1) == 0)
  {
    v35 = MEMORY[0x277D84F90];
    v20 = 15;
    goto LABEL_17;
  }

  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  v17 = *(v10 + 48);
  v18 = *(v10 + 56);

  v20 = sub_22B7498A4(a1, v12, v15, v16, v17, v18);
  LOBYTE(v15) = v21;
  v18, v21, v22, v23, v24, v25, v26, v27, v93, v95;
  if (v15)
  {
    return 0;
  }

  v9 = v12;
  v35 = sub_22B71BB34(0, 1, 1, MEMORY[0x277D84F90], v28, v29, v30, v31);
  v12 = *v35->messageStore;
  v10 = *v35->chatRegistry;
  v36 = v12 + 1;
  if (v12 >= v10 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *v35->messageStore = v36;
    v37 = v35 + 16 * v12;
    *(v37 + 4) = 15;
    *(v37 + 5) = v20;
    v10 = *(v8 + 24);
    v11 = *(v10 + 16);
    if (v11 == 1)
    {
      break;
    }

    v12 = v9;
LABEL_17:
    v97 = v13;
    v14 |= v13 << 16;
    v36 = v14;
    if (*(v8 + 32) == 1)
    {
      if (!v11)
      {
        goto LABEL_47;
      }

      v38 = (v10 + 32 * v11);
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v36 = sub_22B749DEC(a1, v12, v39, v40, v41, v42);
      LOBYTE(v40) = v43;
      v42, v43, v44, v45, v46, v47, v48, v49, v93, v95;
      if (v40)
      {
        goto LABEL_20;
      }
    }

    v95 = v14;
    sub_22B74B1A4();
    v9 = v50;
    v13 = v51;
    v8 = v52 >> 1;
    swift_unknownObjectRetain();
    v98 = v36;
    v99 = v36 >> 14;
    v12 = v8 - v13;
    if (v8 == v13)
    {
LABEL_22:
      swift_unknownObjectRelease();
      if (v99 < 4 * v97)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_22B71BB34(0, *v35->messageStore + 1, 1, v35, v53, v54, v55, v56);
        }

        v58 = *v35->messageStore;
        v57 = *v35->chatRegistry;
        if (v58 >= v57 >> 1)
        {
          v35 = sub_22B71BB34((v57 > 1), v58 + 1, 1, v35, v53, v54, v55, v56);
        }

        *v35->messageStore = v58 + 1;
        v59 = v35 + 16 * v58;
        *(v59 + 4) = v98;
        *(v59 + 5) = v95;
      }

      return v35;
    }

    if (v13 <= v8)
    {
      v60 = v8;
    }

    else
    {
      v60 = v13;
    }

    v36 = v60 - v13;
    v10 = v9 + 32 * v13;
    v14 = v10 + 16;
    while (v36)
    {
      v10 = v99;
      if (v99 < v20 >> 14)
      {
        goto LABEL_46;
      }

      v61 = *v14;
      v62 = *(v14 + 8);
      v64 = *(v14 - 16);
      v63 = *(v14 - 8);

      v65 = sub_22B7DB738();
      v67 = v66;
      v9 = sub_22B701BFC(v65, v68, v69, v66, v64, v63, v61, v62);
      v20 = v70;
      LOBYTE(v63) = v71;
      v67, v70, v71, v72, v73, v74, v75, v76, v93, v95;
      v62, v77, v78, v79, v80, v81, v82, v83, v94, v96;
      if (v63)
      {
        v35, v84, v85, v86, v87, v88, v89, v90, v93, v95;
        swift_unknownObjectRelease();
        return 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_22B71BB34(0, *v35->messageStore + 1, 1, v35, a5, a6, a7, a8);
      }

      v8 = *v35->messageStore;
      v91 = *v35->chatRegistry;
      v13 = v8 + 1;
      if (v8 >= v91 >> 1)
      {
        v35 = sub_22B71BB34((v91 > 1), v8 + 1, 1, v35, a5, a6, a7, a8);
      }

      *v35->messageStore = v13;
      v10 = v35 + 16 * v8;
      *(v10 + 32) = v9;
      *(v10 + 40) = v20;
      --v36;
      v14 += 32;
      if (!--v12)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v35 = sub_22B71BB34((v10 > 1), v36, 1, v35, a5, a6, a7, a8);
  }

  if (*(v8 + 32) == 1 && v20 >> 14 < 4 * v13)
  {
LABEL_20:
    v35, v32, v33, v34, a5, a6, a7, a8, v93, v95;
    return 0;
  }

  return v35;
}

unint64_t sub_22B701BFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v33 = a1;
  v34 = a3;
  v43[1] = a1;
  v43[2] = a2;
  v43[3] = a3;
  v43[4] = a4;
  sub_22B704A08();
  sub_22B7DBB78();
  v43[0] = v41;
  while (1)
  {
    v16 = v43[0];
    v17 = v43[0] >> 14;
    if (v43[0] >> 14 == v42 >> 14)
    {
      goto LABEL_7;
    }

    result = sub_22B74B0B8(v43, v39, v40);
    if (a2 >> 14 < v17)
    {
      break;
    }

    v19 = sub_22B7DC058();
    v21 = v20;
    v24 = sub_22B749B7C(v19, v22, v23, v20, a5, a6, a7, a8);
    v26 = v25;
    v21, v25, v27, v28, v29, v30, v31, v32, v33, v34;
    if ((v26 & 1) == 0)
    {
      v40, v9, v10, v11, v12, v13, v14, v15, v33, v34;
      if (v17 > v24 >> 14)
      {
        __break(1u);
LABEL_7:
        v40, v9, v10, v11, v12, v13, v14, v15, v33, v34;
        return 0;
      }

      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_22B701D3C()
{
  v1 = *v0;
  v2 = *(*v0 + 16) + 1;
  v3 = 100 * v2;
  if ((v2 * 100) >> 64 != (100 * v2) >> 63)
  {
    goto LABEL_14;
  }

  v4 = __OFADD__(v3, 60);
  v5 = v3 + 60;
  if (v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5 - 1;
  if ((v5 - 1) > 0x1DF)
  {
    v7 = v6 / 0x3C;
    if (v0[4] >= (v6 / 0x3C))
    {
      return;
    }

    if (v6 >> 33 > 0xE)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    if (v0[4] >= 8)
    {
      return;
    }

    LODWORD(v7) = 8;
  }

  v8 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
  v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
  v10 = v9 | HIWORD(v9);
  v11 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
LABEL_17:
    __break(1u);
    return;
  }

  *&v27 = MEMORY[0x277D84F90];
  *(&v27 + 1) = 1;
  do
  {
    sub_22B713BE0(0);
    sub_22B713E60(0, v12, v13, v14, v15, v16, v17, v18);
    --v11;
  }

  while (v11);
  v26 = v27;
  v0[2], v19, v20, v21, v22, v23, v24, v25, v27, 1;
  v0[2] = v26;
  *(v0 + 3) = *(&v26 + 1);
  if (*(v1 + 16))
  {
    sub_22B7DC618();
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_22B701F04(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = result;
  if (*(*v1 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v1[4];
  result = sub_22B7DC618();
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2[4];
  result = sub_22B701FE0(result % v4);
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result % v5;
  if (((result % v5) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v3 + 1;
  if (((v5 | v7) & 0x8000000000000000) == 0)
  {
    sub_22B713BE0(v7);
    return sub_22B71411C(v7, v6, v8, v9, v10, v11, v12, v13);
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_22B701FE0(unint64_t result)
{
  v2 = v1[4];
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (!v2)
  {
    return -1;
  }

  v3 = v1[3];
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_42;
  }

  v5 = result;
  v6 = 0;
  v7 = v1[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v3;
  while (1)
  {
    result = v6 + v5;
    if (__CFADD__(v6, v5))
    {
      break;
    }

    v11 = result % v2 * v3;
    if (((result % v2) * v3) >> 64 != v11 >> 63)
    {
      goto LABEL_37;
    }

    if (v11 >= 0)
    {
      v12 = result % v2 * v3;
    }

    else
    {
      v12 = v11 + 63;
    }

    if (v11 < -63)
    {
      goto LABEL_38;
    }

    if (v12 >> 6 >= v9)
    {
      goto LABEL_39;
    }

    v13 = 64 - (v11 - (v12 & 0xFFFFFFFFFFFFFFC0));
    v14 = __OFSUB__(v13, v3);
    v15 = v13 - v3;
    if (v14)
    {
      goto LABEL_40;
    }

    if (v15 <= -65 || v15 > 64)
    {
LABEL_15:
      if (v10 < 0xFFFFFFFFFFFFFF7FLL || (v4 & 0x8000000000000000) == 0 || v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      v17 = 0;
      goto LABEL_32;
    }

    v16 = *(v8 + 8 * (v12 >> 6));
    if (v15 < 0)
    {
      if (v15 == -64)
      {
        goto LABEL_15;
      }

      v17 = v16 >> -v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    else
    {
      if (v15 == 64)
      {
        goto LABEL_15;
      }

      v17 = v16 << v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

LABEL_32:
      if (!(v17 << (v3 - 64)))
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v4 >= 0x40 || !(v17 >> v4))
    {
      return result;
    }

LABEL_24:
    if (v2 == ++v6)
    {
      return -1;
    }
  }

  __break(1u);
LABEL_37:
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
  __break(1u);
  return result;
}

uint64_t sub_22B702144(uint64_t result, uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v2[3];
  v5 = 64 - v4;
  if (__OFSUB__(64, v4))
  {
    goto LABEL_57;
  }

  v6 = 0;
  v7 = v2[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v4;
  while (1)
  {
    v11 = v6 + a2;
    if (__CFADD__(v6, a2))
    {
      break;
    }

    v12 = v11 % v3 * v4;
    if (((v11 % v3) * v4) >> 64 != v12 >> 63)
    {
      goto LABEL_50;
    }

    if (v12 >= 0)
    {
      v13 = v11 % v3 * v4;
    }

    else
    {
      v13 = v12 + 63;
    }

    if (v12 < -63)
    {
      goto LABEL_51;
    }

    if (v13 >> 6 >= v9)
    {
      goto LABEL_52;
    }

    v14 = 64 - (v12 - (v13 & 0xFFFFFFFFFFFFFFC0));
    v15 = __OFSUB__(v14, v4);
    v16 = v14 - v4;
    if (v15)
    {
      goto LABEL_53;
    }

    if (v16 <= -65 || v16 > 64)
    {
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }

      v17 = 0;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_35:
      if (v5 <= 0xFFFFFFFFFFFFFFC0)
      {
        return v17;
      }

      goto LABEL_38;
    }

    v18 = *(v8 + 8 * (v13 >> 6));
    if (v16 < 0)
    {
      if (v16 == -64)
      {
        if (v10 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        v17 = 0;
        if ((v5 & 0x8000000000000000) == 0)
        {
          if (v5 >= 0x40)
          {
            return v17;
          }

          goto LABEL_24;
        }

        if (v5 <= 0xFFFFFFFFFFFFFFC0)
        {
          return v17;
        }

        goto LABEL_38;
      }

      v17 = v18 >> -v16;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == 64)
      {
        if (v10 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        v17 = 0;
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_17:
          if (v5 >= 0x40)
          {
            return v17;
          }

          goto LABEL_24;
        }

        goto LABEL_35;
      }

      v17 = v18 << v16;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 >= 0x40)
      {
        return 0;
      }

LABEL_24:
      v17 >>= v5;
      if (!v17)
      {
        return v17;
      }

      goto LABEL_25;
    }

    if (v5 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

LABEL_38:
    v17 <<= v4 - 64;
    if (!v17)
    {
      return v17;
    }

LABEL_25:
    v19 = v17 - 1;
    if (v19 < 0)
    {
      goto LABEL_54;
    }

    if (v19 >= *(*v2 + 16))
    {
      goto LABEL_55;
    }

    if (*(*v2 + 4 * v19 + 32) == result)
    {
      return v6 + a2;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_22B70232C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v5 - 1;
    while (1)
    {
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a2);
      sub_22B7DC698();
      result = sub_22B7DC6A8();
      a2 = result;
      if (v8 == v7)
      {
        break;
      }

      if (a3)
      {
        if (v7 > 0x7FFFFFFE)
        {
          goto LABEL_16;
        }

        v10 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
        v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
        v12 = v11 | HIWORD(v11);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_17;
        }

        if (v7 + 1 != v14)
        {
          goto LABEL_3;
        }
      }

      v15 = *(v3 + 8);
      if (v15 < 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      if (!v15)
      {
        goto LABEL_18;
      }

      if (sub_22B7DB1C8())
      {
LABEL_3:
        ++v7;
      }

      else
      {
        result = sub_22B7DB1D8();
        v16 = *(v3 + 16);
        v13 = __OFADD__(v16, 1);
        v17 = v16 + 1;
        if (v13)
        {
          goto LABEL_19;
        }

        *(v3 + 16) = v17;
        ++v7;
      }
    }
  }

  sub_22B7DC6C8();
  MEMORY[0x231895FF0](a2);
  MEMORY[0x231895FF0](0);
  v18 = sub_22B7DC6A8();
  sub_22B6F1320(v18);
  return v18;
}

IMDScheduledMessageCoordinator *sub_22B7024C0(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD680, &unk_22B7F9780);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v17 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v17[v12])
    {
      memmove(queue, v17, v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8, v19, v20;
  return v14;
}

uint64_t sub_22B702604(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22B7DC1C8();
  }

  return sub_22B7DC318();
}

void sub_22B702668(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B703C1C(v2);
  }

  v3 = v2[2];
  v32[0] = (v2 + 4);
  v32[1] = v3;
  v4 = sub_22B7DC4C8();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v12 = v2 + 8;
      v13 = -1;
      for (i = 1; i != v3; ++i)
      {
        v15 = v2[3 * i + 6];
        v16 = v13;
        v17 = v12;
        do
        {
          if (*(v17 - 2) >= v15)
          {
            break;
          }

          v18 = *(v17 - 2);
          v19 = *(v17 - 2);
          *(v17 - 3) = *v17;
          v17 -= 3;
          v20 = *(v17 + 8);
          v17[4] = v19;
          *(v17 + 1) = v18;
          *(v17 - 4) = v20;
          v17[1] = v15;
        }

        while (!__CFADD__(v16++, 1));
        v12 += 3;
        --v13;
      }
    }
  }

  else
  {
    v9 = v4;
    v10 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
      v11 = sub_22B7DB958();
      *v11->messageStore = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v30[0] = v11->queue;
    v30[1] = v10;
    sub_22B7027D8(v30, v31, v32, v9, v5, v6, v7, v8);
    *v11->messageStore = 0;
    v11, v22, v23, v24, v25, v26, v27, v28, v29, v30[0];
  }

  *a1 = v2;
}

void sub_22B7027D8(char **result, const char *a2, uint64_t *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_88:
    v99 = *result;
    if (!*result)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v11 = sub_22B702FD4(v11, a2, a3, a4, a5, a6, a7, a8);
    }

    messageStore = v11->messageStore;
    v90 = *v11->messageStore;
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v11 + 16 * v90);
        v92 = *v91;
        v93 = &messageStore[2 * v90];
        v94 = v93[1];
        sub_22B702D98((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v99);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *messageStore)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *messageStore - v90;
        if (*messageStore < v90)
        {
          goto LABEL_116;
        }

        v90 = *messageStore - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *messageStore = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:
    v11, a2, a3, a4, a5, a6, a7, a8, v96, v97;
    return;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v12 = v10++;
    if (v10 < v9)
    {
      v13 = *(*a3 + 24 * v10 + 16);
      v14 = 24 * v12;
      v15 = *a3 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = v12 + 2;
      v18 = (v15 + 64);
      v19 = v13;
      while (v9 != v17)
      {
        v20 = *v18;
        v18 += 3;
        v21 = (v16 < v13) ^ (v19 >= v20);
        ++v17;
        v19 = v20;
        if ((v21 & 1) == 0)
        {
          v10 = v17 - 1;
          if (v16 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v10 = v9;
      if (v16 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v10 < v12)
      {
        goto LABEL_119;
      }

      if (v12 < v10)
      {
        v22 = 24 * v10 - 8;
        v23 = v10;
        v24 = v12;
        do
        {
          if (v24 != --v23)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v25 = (v31 + v14);
            v26 = (v31 + v22);
            v27 = *v25;
            v28 = *(v25 + 1);
            v29 = *(v25 + 2);
            v30 = *v26;
            *v25 = *(v26 - 1);
            *(v25 + 2) = v30;
            *(v26 - 8) = v27;
            *(v26 - 1) = v28;
            *v26 = v29;
          }

          ++v24;
          v22 -= 24;
          v14 += 24;
        }

        while (v24 < v23);
        v9 = a3[1];
      }
    }

LABEL_20:
    if (v10 < v9)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_118;
      }

      if (v10 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_120;
        }

        if (a4 + v12 < v9)
        {
          v9 = a4 + v12;
        }

        if (v9 < v12)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v10 != v9)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v12)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22B702FE8(0, *v11->messageStore + 1, 1, v11, a5, a6, a7, a8);
    }

    v42 = *v11->messageStore;
    v41 = *v11->chatRegistry;
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v11 = sub_22B702FE8((v41 > 1), v42 + 1, 1, v11, a5, a6, a7, a8);
    }

    *v11->messageStore = v43;
    queue = v11->queue;
    v45 = &v11->queue[16 * v42];
    *v45 = v12;
    *(v45 + 1) = v10;
    v99 = *result;
    if (!*result)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *v11->queue;
          v48 = *v11->membershipObserver;
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v11->super.isa + 2 * v43;
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &queue[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v11->super.isa + 2 * v43;
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &queue[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &queue[16 * v46 - 16];
        v85 = *v84;
        v86 = &queue[16 * v46];
        v87 = *(v86 + 1);
        sub_22B702D98((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v99);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *v11->messageStore)
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v11->messageStore;
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&queue[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *v11->messageStore = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &queue[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v11->super.isa + 2 * v43;
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &queue[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = a3[1];
    a4 = v97;
    if (v10 >= v9)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 24 * v10;
  v34 = v12 - v10;
LABEL_30:
  v35 = *(v32 + 24 * v10 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(v37 - 8) >= v35)
    {
LABEL_29:
      ++v10;
      v33 += 24;
      --v34;
      if (v10 != v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *v37;
    v39 = *(v37 + 8);
    *v37 = *(v37 - 24);
    *(v37 + 16) = *(v37 - 8);
    *(v37 - 16) = v39;
    *(v37 - 8) = v35;
    *(v37 - 24) = v38;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_22B702D98(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

IMDScheduledMessageCoordinator *sub_22B702FE8(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD658, &qword_22B7FA090);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

unint64_t sub_22B7030EC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B703184(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B703184(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B7C1398(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7031F8(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_53:
    v28 = result;
    v7 = sub_22B7C1398(v7, a4, a5);
    result = v28;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v29 = result;
    v11 = sub_22B7C1398(result, a4, a5);
    result = v29;
  }

  result = sub_22B7030EC(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    v19 = &v31 + 7;
    v20 = &v31 + 6;
    while (v18 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v31 = v19;
        v27 = v20;
        result = sub_22B7DB728();
        v20 = v27;
        v19 = v31;
      }

      else
      {
        v21 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v19[v21] & 0xC0) == 0x80)
          {
            v24 = &v20[v21];
            v25 = 1;
            do
            {
              ++v25;
              v26 = *v24--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v25 = 1;
          }

          v21 -= v25;
        }

        else
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v30 = v20;
            v31 = v19;
            v22 = sub_22B7DC328();
            v20 = v30;
            v19 = v31;
          }

          do
          {
            v23 = *(v22 - 1 + v21--) & 0xC0;
          }

          while (v23 == 128);
        }

        result = (v21 << 16) | 5;
      }

      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_52;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v32 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_22B7DC328();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B7034D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_22B7030EC(a1, a3, a4);
  v8 = sub_22B7030EC(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_22B7DC328();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB728();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_22B7DC328();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_22B7036E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v11 = 0;
    result = a4;
LABEL_69:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = result;
    return v11;
  }

  if (!a3)
  {
    result = a4;
    v11 = 0;
    goto LABEL_69;
  }

  if (a3 < 0)
  {
    goto LABEL_74;
  }

  v50 = result;
  v51 = a5;
  v11 = 0;
  v12 = a5 >> 14;
  v13 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a4 >> 14;
  v54 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a7 & 0xFFFFFFFFFFFFFFLL;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a7) & 0xF;
  }

  else
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  result = a4;
  v49 = a4;
  v17 = a3 - 1;
  v52 = v16;
  v53 = a4 >> 14;
  do
  {
    v18 = result >> 14;
    if (result >> 14 == v12)
    {
      goto LABEL_68;
    }

    v19 = result & 0xC;
    v20 = (result & 1) == 0 || v19 == v14;
    v21 = v20;
    if (v20)
    {
      v22 = result;
      if (v19 == v14)
      {
        v44 = result;
        v45 = sub_22B7C1398(result, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v45;
        result = v44;
        v18 = v22 >> 14;
        if (v22 >> 14 < v53)
        {
          goto LABEL_70;
        }
      }

      else if (v18 < v15)
      {
        goto LABEL_70;
      }

      if (v18 >= v12)
      {
        goto LABEL_70;
      }

      if ((v22 & 1) == 0)
      {
        v23 = result;
        v24 = sub_22B7C1670(v22, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v24;
        result = v23;
      }
    }

    else
    {
      if (v18 < v15)
      {
        goto LABEL_71;
      }

      v22 = result;
      if (v18 >= v12)
      {
        goto LABEL_71;
      }
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v47 = result;
      v38 = sub_22B7DC2D8();
      v16 = v52;
      v15 = v53;
      v29 = v38;
      result = v47;
      if ((v21 & 1) == 0)
      {
LABEL_46:
        if (v16 <= result >> 16)
        {
          goto LABEL_73;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v25 = v22 >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v26 = &v56;
      }

      else
      {
        v26 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v46 = result;
          v27 = sub_22B7DC328();
          v16 = v52;
          v15 = v53;
          v26 = v27;
          result = v46;
        }
      }

      v28 = v26 + v25;
      v29 = *v28;
      if (*v28 < 0)
      {
        v30 = (__clz(v29 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = v28[1];
            v32 = v28[2];
            v33 = ((v29 & 0xF) << 12) | ((v31 & 0x3F) << 6);
          }

          else
          {
            v34 = v28[1];
            v35 = v28[2];
            v32 = v28[3];
            v33 = ((v29 & 0xF) << 18) | ((v34 & 0x3F) << 12) | ((v35 & 0x3F) << 6);
          }

          v29 = v33 & 0xFFFFFFC0 | v32 & 0x3F;
        }

        else if (v30 != 1)
        {
          v29 = v28[1] & 0x3F | ((v29 & 0x1F) << 6);
          if ((v21 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    if (v19 == v14)
    {
      result = sub_22B7C1398(result, a6, a7);
      v16 = v52;
      v15 = v53;
      if (v52 <= result >> 16)
      {
        goto LABEL_72;
      }
    }

    else if (v16 <= result >> 16)
    {
      goto LABEL_72;
    }

    if ((result & 1) == 0)
    {
      v36 = result;
      v37 = sub_22B7C1670(result, a6, a7);
      v16 = v52;
      v15 = v53;
      result = v36 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_47:
    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22B7DB718();
      v16 = v52;
      v15 = v53;
    }

    else
    {
      v39 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v41 = *(&v56 + v39);
      }

      else
      {
        v40 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v40 = sub_22B7DC328();
          v16 = v52;
          v15 = v53;
        }

        v41 = *(v40 + v39);
      }

      v42 = v41;
      v43 = __clz(v41 ^ 0xFF) - 24;
      if (v42 >= 0)
      {
        LOBYTE(v43) = 1;
      }

      result = ((v39 + v43) << 16) | 5;
    }

    *(a2 + 4 * v11) = v29;
    if (v17 == v11)
    {
      v11 = a3;
LABEL_68:
      v9 = v50;
      a5 = v51;
      a4 = v49;
      goto LABEL_69;
    }

    ++v11;
  }

  while (!__OFADD__(v11, 1));
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void *sub_22B703A6C(uint64_t a1, uint64_t a2)
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

  sub_22B6F0AD4(&unk_27D8CEBF0, &qword_22B7F9738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_22B703AF0@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = *a1;
  if (a1[1] >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    result = sub_22B7DB898();
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_22B703BC8()
{
  result = qword_28141F5F0;
  if (!qword_28141F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F5F0);
  }

  return result;
}

unint64_t sub_22B703C30(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a2 >> 14;
  v7 = result >> 14;
  if (result >> 14 == a2 >> 14)
  {
LABEL_2:
    sub_22B7DC6C8();
    MEMORY[0x231895FF0](a5);
    MEMORY[0x231895FF0](0);
    return sub_22B7DC6A8();
  }

  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = result;
  while ((v12 & 0xC) != v11 && (v12 & 1) != 0)
  {
    if (v12 >> 14 < v7)
    {
      goto LABEL_27;
    }

    result = v12;
    if (v12 >> 14 >= v6)
    {
      goto LABEL_27;
    }

LABEL_21:
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_22B7DC2D8();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        sub_22B7DC328();
      }

      sub_22B7DC338();
    }

    sub_22B7DC6C8();
    MEMORY[0x231895FF0](a5);
    sub_22B7DC698();
    a5 = sub_22B7DC6A8();
    result = sub_22B7DC028();
    v12 = result;
    if (v6 == result >> 14)
    {
      goto LABEL_2;
    }
  }

  result = v12;
  if ((v12 & 0xC) == v11)
  {
    result = sub_22B7C1398(v12, a3, a4);
  }

  if (result >> 14 >= v7 && result >> 14 < v6)
  {
    if ((result & 1) == 0)
    {
      sub_22B7C1670(result, a3, a4);
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B703E38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1 >> 14;
  if (a1 >> 14 != a2 >> 14)
  {
    do
    {
      v12 = sub_22B7DC038();
      sub_22B75A66C(v12, a1, a2, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        sub_22B7DC338();
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a5);
      sub_22B7DC698();
      a5 = sub_22B7DC6A8();
    }

    while (v6 != sub_22B7DC038() >> 14);
  }

  sub_22B7DC6C8();
  MEMORY[0x231895FF0](a5);
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6A8();
}

int64_t sub_22B703FDC(int64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v3 = a2;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    sub_22B7031F8(0xFuLL, result, v4 | (v3 << 16), a2, a3);

    return sub_22B7DB738();
  }

  return result;
}

void *sub_22B704078(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a5)
    {
      return MEMORY[0x277D84F90];
    }

    v8 = result;
    v10 = sub_22B7DB958();
    v11 = v10;
    v10[2] = a5;
    v10[4] = v8;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v12 = a5 - 1;
    if (v12)
    {
      v13 = v10 + 11;
      do
      {
        *(v13 - 3) = v8;
        *(v13 - 2) = a2;
        *(v13 - 1) = a3;
        *v13 = a4;

        v13 += 4;
        --v12;
      }

      while (v12);
    }

    return v11;
  }

  return result;
}

unint64_t sub_22B704A08()
{
  result = qword_27D8CD648;
  if (!qword_27D8CD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD648);
  }

  return result;
}

unint64_t sub_22B704A5C()
{
  result = qword_28141F300;
  if (!qword_28141F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F300);
  }

  return result;
}

unint64_t sub_22B704AB0()
{
  result = qword_27D8CEEE0;
  if (!qword_27D8CEEE0)
  {
    sub_22B4D01A0(255, &qword_27D8CD668, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEEE0);
  }

  return result;
}

uint64_t sub_22B704B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B704B70()
{
  result = qword_28141F310;
  if (!qword_28141F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F310);
  }

  return result;
}

void sub_22B704C50(void *a1)
{
  if (![a1 unreadCount])
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_281422620);
    v3 = a1;
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136315138;
      v22 = [v3 guid];

      if (v22)
      {
        v23 = sub_22B7DB6A8();
        v25 = v24;

        v26 = sub_22B4CFAAC(v23, v25, &v35);
        v25, v27, v28, v29, v30, v31, v32, v33, v34, v35;
        *(v6 + 4) = v26;
        v20 = "Received summary for chat with GUID %s but chat is already marked as read (likely via another device). Not writing summary to chat.";
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([a1 isFiltered] == 2)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v2 = sub_22B7DB2B8();
    sub_22B4CFA74(v2, qword_281422620);
    v3 = a1;
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136315138;
      v8 = [v3 guid];

      if (v8)
      {
        v9 = sub_22B7DB6A8();
        v11 = v10;

        v12 = sub_22B4CFAAC(v9, v11, &v35);
        v11, v13, v14, v15, v16, v17, v18, v19, v34, v35;
        *(v6 + 4) = v12;
        v20 = "Not summarizing junk chat with GUID %s";
LABEL_13:
        _os_log_impl(&dword_22B4CC000, v4, v5, v20, v6, 0xCu);
        sub_22B4CFB78(v7);
        MEMORY[0x231898D60](v7, -1, -1);
        MEMORY[0x231898D60](v6, -1, -1);
LABEL_15:

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }
}

void sub_22B704F28(uint64_t a1)
{
  v252[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (!v1)
  {
    if (qword_28141F370 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_65;
  }

  v2 = a1;
  v3 = sub_22B759CB4(*(a1 + 16), 0);
  v4 = sub_22B75A2BC(v252, v3 + 4, v1, v2);
  v5 = v252[0];

  sub_22B705E3C(v5);
  if (v4 != v1)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
LABEL_46:
    v202 = sub_22B7DB2B8();
    sub_22B4CFA74(v202, qword_281422620);
    osloga = sub_22B7DB298();
    v203 = sub_22B7DBC98();
    if (os_log_type_enabled(osloga, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v203, "Tried to update chats with summaries, but there were no summaries provided.", v204, 2u);
      MEMORY[0x231898D60](v204, -1, -1);
    }

LABEL_60:

    return;
  }

  v6 = [objc_opt_self() sharedProvider];
  if (!v6)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v205 = sub_22B7DB2B8();
    sub_22B4CFA74(v205, qword_281422620);

    osloga = sub_22B7DB298();
    v206 = sub_22B7DBC98();

    if (os_log_type_enabled(osloga, v206))
    {
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v252[0] = v208;
      *v207 = 136315394;
      *(v207 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80E4F0, v252);
      *(v207 + 12) = 2080;
      v209 = MEMORY[0x2318952A0](v3, MEMORY[0x277D837D0]);
      v211 = v210;

      v212 = sub_22B4CFAAC(v209, v211, v252);
      v211, v213, v214, v215, v216, v217, v218, v219, v224, v234;
      *(v207 + 14) = v212;
      _os_log_impl(&dword_22B4CC000, osloga, v206, "%s No broadcaster for messages with GUIDs %s", v207, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v208, -1, -1);
      MEMORY[0x231898D60](v207, -1, -1);

      return;
    }

    goto LABEL_60;
  }

  v244 = v3;
  v243 = [v6 broadcasterForChatListeners];
  swift_unknownObjectRelease();
  v245 = sub_22B71DF84(MEMORY[0x277D84F90]);
  v7 = v2 + 64;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v2 + 64);
  v11 = (v8 + 63) >> 6;

  *(&v12 + 1) = 2;
  *&v12 = 138412290;
  v225 = v12;
  oslog = v11;
  v248 = v2;
  v13 = 0;
  if (!v10)
  {
LABEL_8:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        if (*v245->messageStore)
        {
          sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
          v178 = sub_22B7DB568();
          v245, v179, v180, v181, v182, v183, v184, v185, v225, *(&v225 + 1);
          [v243 updatedSummariesForChatsWithGUIDsAndProperties_];

          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v186 = sub_22B7DB2B8();
          sub_22B4CFA74(v186, qword_281422620);

          v187 = sub_22B7DB298();
          v188 = sub_22B7DBC78();

          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            v252[0] = v190;
            *v189 = 136315394;
            *(v189 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80E4F0, v252);
            *(v189 + 12) = 2080;
            v191 = MEMORY[0x2318952A0](v244, MEMORY[0x277D837D0]);
            v193 = v192;

            v194 = sub_22B4CFAAC(v191, v193, v252);
            v193, v195, v196, v197, v198, v199, v200, v201, v233, v242;
            *(v189 + 14) = v194;
            _os_log_impl(&dword_22B4CC000, v187, v188, "%s Broadcasted messagesUpdated for GUIDs %s", v189, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v190, -1, -1);
            MEMORY[0x231898D60](v189, -1, -1);
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v245, v171, v172, v173, v174, v175, v176, v177, v225, *(&v225 + 1);

          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v220 = sub_22B7DB2B8();
          sub_22B4CFA74(v220, qword_281422620);
          v221 = sub_22B7DB298();
          v222 = sub_22B7DBC98();
          if (os_log_type_enabled(v221, v222))
          {
            v223 = swift_slowAlloc();
            *v223 = 0;
            _os_log_impl(&dword_22B4CC000, v221, v222, "There were no chats to update after processing the summary dictionary.", v223, 2u);
            MEMORY[0x231898D60](v223, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        return;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v14 = v13;
LABEL_11:
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + 8 * v16);
        v21 = objc_opt_self();

        v22 = v20;
        v23 = [v21 sharedInstance];
        v24 = sub_22B7DB678();
        v25 = [v23 chatForMessageGUID_];

        if (!v25)
        {
          v18, v26, v27, v28, v29, v30, v31, v32, v225, *(&v225 + 1);
LABEL_29:

          goto LABEL_30;
        }

        sub_22B704C50(v25);
        if (v40)
        {
          break;
        }

        v18, v33, v34, v35, v36, v37, v38, v39, v225, *(&v225 + 1);

LABEL_30:
        v13 = v14;
        v11 = oslog;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      v246 = v25;
      v41 = [v22 string];
      v42 = sub_22B7DB6A8();
      v44 = v43;

      v44, v45, v46, v47, v48, v49, v50, v51, v225, *(&v225 + 1);
      v52 = (v44 >> 56) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v52 = v42 & 0xFFFFFFFFFFFFLL;
      }

      v249 = v22;
      if (v52)
      {
        v53 = objc_opt_self();
        v252[0] = 0;
        v54 = [v53 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v252];
        v55 = v252[0];
        if (!v54)
        {
          v127 = v55;
          v18, v56, v57, v58, v59, v60, v61, v62, v226, v235;
          v128 = sub_22B7DA6F8();

          swift_willThrow();
          v2 = v248;
          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v129 = sub_22B7DB2B8();
          sub_22B4CFA74(v129, qword_281422620);
          v130 = v128;
          v131 = sub_22B7DB298();
          v132 = sub_22B7DBC98();

          if (os_log_type_enabled(v131, v132))
          {
            v133 = v22;
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *v134 = v225;
            v136 = v128;
            v137 = _swift_stdlib_bridgeErrorToNSError();
            *(v134 + 4) = v137;
            *v135 = v137;
            _os_log_impl(&dword_22B4CC000, v131, v132, "Failed to encode summary: %@", v134, 0xCu);
            sub_22B4D0D64(v135, &unk_27D8CEC60, &qword_22B7F9E20);
            MEMORY[0x231898D60](v135, -1, -1);
            MEMORY[0x231898D60](v134, -1, -1);
          }

          else
          {
          }

          goto LABEL_30;
        }

        v63 = sub_22B7DA848();
        v65 = v64;

        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F97B0;
        *(inited + 32) = sub_22B7DB6A8();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v67;
        *(inited + 48) = v19;
        *(inited + 56) = v18;
        *(inited + 80) = sub_22B7DB6A8();
        *(inited + 88) = v68;
        *(inited + 120) = MEMORY[0x277CC9318];
        *(inited + 96) = v63;
        *(inited + 104) = v65;
        *(inited + 128) = sub_22B7DB6A8();
        *(inited + 136) = v69;
        *(inited + 168) = MEMORY[0x277D839B0];
        *(inited + 144) = 0;

        sub_22B705E44(v63, v65);
        v70 = sub_22B71DF98(inited);
        swift_setDeallocating();
        sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
        swift_arrayDestroy();
        v71 = swift_initStackObject();
        *(v71 + 16) = xmmword_22B7F93B0;
        *(v71 + 32) = sub_22B7DB6A8();
        *(v71 + 40) = v72;
        *(v71 + 72) = sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
        *(v71 + 48) = v70;
        v73 = sub_22B71DF98(v71);
        swift_setDeallocating();
        sub_22B4D0D64(v71 + 32, &qword_27D8CDB60, &qword_22B7FA360);
        sub_22B705E98(v63, v65);
      }

      else
      {
        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        v74 = swift_initStackObject();
        *(v74 + 16) = xmmword_22B7F93B0;
        *(v74 + 32) = sub_22B7DB6A8();
        *(v74 + 40) = v75;
        v76 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        *(v74 + 72) = sub_22B4D01A0(0, &qword_28141EFF8, 0x277CBEB68);
        *(v74 + 48) = v76;
        v73 = sub_22B71DF98(v74);
        swift_setDeallocating();
        sub_22B4D0D64(v74 + 32, &qword_27D8CDB60, &qword_22B7FA360);
      }

      sub_22B7B0AC8(v77);
      v79 = v78;
      v73, v80, v81, v82, v83, v84, v85, v86, v226, v235;
      v87 = sub_22B7DB568();
      v79, v88, v89, v90, v91, v92, v93, v94, v227, v236;
      LODWORD(v79) = [v246 updateProperties_];

      v2 = v248;
      if (!v79)
      {
        break;
      }

      v138 = [v246 guid];
      if (!v138)
      {
        goto LABEL_67;
      }

      v146 = v138;
      v18, v139, v140, v141, v142, v143, v144, v145, v228, v237;
      v147 = sub_22B7DB6A8();
      v149 = v148;

      sub_22B7B0AC8(v73);
      v151 = v150;
      v73, v152, v153, v154, v155, v156, v157, v158, v230, v239;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v252[0] = v245;
      sub_22B768860(v151, v147, v149, isUniquelyReferenced_nonNull_native, v160, v161, v162, v163, v231, v240);

      v149, v164, v165, v166, v167, v168, v169, v170, v232, v241;
      v245 = v252[0];
      v11 = oslog;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v73, v95, v96, v97, v98, v99, v100, v101, v228, v237;
    v18, v102, v103, v104, v105, v106, v107, v108, v229, v238;
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v109 = sub_22B7DB2B8();
    sub_22B4CFA74(v109, qword_281422620);
    v110 = v246;
    v111 = sub_22B7DB298();
    v112 = sub_22B7DBC98();
    v22 = v249;
    if (!os_log_type_enabled(v111, v112))
    {

      goto LABEL_29;
    }

    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v252[0] = v114;
    *v113 = 136315138;
    v115 = [v110 guid];
    v247 = v110;

    if (!v115)
    {
      break;
    }

    v116 = sub_22B7DB6A8();
    v118 = v117;

    v119 = sub_22B4CFAAC(v116, v118, v252);
    v118, v120, v121, v122, v123, v124, v125, v126, v225, *(&v225 + 1);
    *(v113 + 4) = v119;
    _os_log_impl(&dword_22B4CC000, v111, v112, "Failed to update summary property on chat with guid %s.", v113, 0xCu);
    sub_22B4CFB78(v114);
    MEMORY[0x231898D60](v114, -1, -1);
    MEMORY[0x231898D60](v113, -1, -1);

    v13 = v14;
    v2 = v248;
    v11 = oslog;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_22B705E44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22B705E98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

NSNumber __swiftcall NSNumber.round(toSignificantDigit:)(Swift::Int64 toSignificantDigit)
{
  if (toSignificantDigit <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = toSignificantDigit;
  }

  v4 = [v1 longLongValue];
  if (!v4 || (v4 <= 9 ? (v5 = toSignificantDigit <= 1) : (v5 = 0), v5))
  {
    sub_22B705FCC();
    return sub_22B7DBFB8();
  }

  else
  {
    v6 = log10(fabs(v4));
    __exp10(round(v6) - v3 + 1.0);

    return sub_22B7DBAC8();
  }
}

unint64_t sub_22B705FCC()
{
  result = qword_28141EFE0;
  if (!qword_28141EFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141EFE0);
  }

  return result;
}

Class sub_22B706018(void *a1, uint64_t a2, Swift::Int64 a3)
{
  v4 = a1;
  v5.super.super.isa = NSNumber.round(toSignificantDigit:)(a3).super.super.isa;

  return v5.super.super.isa;
}