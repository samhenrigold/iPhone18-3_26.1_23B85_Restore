uint64_t sub_1B79A7E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30[0] = a7;
  v32 = a1;
  v33 = a9;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  v22 = *(v21 + 40);
  v30[1] = *(v21 + 48);
  v31 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  v24 = v30[0];
  *(v23 + 48) = v30[0];
  *(v23 + 56) = a8;
  v25 = *(a2 + 48);
  *(v23 + 96) = *(a2 + 32);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(a2 + 64);
  *(v23 + 144) = *(a2 + 80);
  v26 = *(a2 + 16);
  *(v23 + 64) = *a2;
  *(v23 + 80) = v26;
  v34[0] = a3;
  v34[1] = a4;
  v34[2] = a5;
  v34[3] = a6;
  v34[4] = v24;
  v34[5] = a8;
  v27 = type metadata accessor for Jet(0, v34);
  (*(*(v27 - 8) + 16))(v34, a2, v27);
  v31(v32, sub_1B79AF0E0, v23);

  sub_1B7957EE0(v17, a5, a8);
  v28 = *(v15 + 8);
  v28(v17, a5);
  sub_1B7957EE0(v20, a5, a8);
  return (v28)(v20, a5);
}

uint64_t sub_1B79A8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26[-1] - v15;
  v17 = sub_1B7A9A7E0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B7A9A760();
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v18 = type metadata accessor for Jet(0, v26);
  (*(*(v18 - 8) + 16))(v26, a1, v18);
  v19 = sub_1B7A9A750();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  *(v20 + 64) = a6;
  *(v20 + 72) = a7;
  v22 = *(a1 + 48);
  *(v20 + 112) = *(a1 + 32);
  *(v20 + 128) = v22;
  *(v20 + 144) = *(a1 + 64);
  *(v20 + 160) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v20 + 80) = *a1;
  *(v20 + 96) = v23;
  sub_1B79A9B34(0, 0, v16, &unk_1B7A9E8C8, v20);
}

uint64_t sub_1B79A8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v13;
  v8[25] = v14;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B79A82D0, v10, v9);
}

uint64_t sub_1B79A82D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = v4;
  type metadata accessor for Jet(0, v0 + 104);
  *(v0 + 232) = sub_1B79A6B58();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_1B79A83B4;

  return sub_1B79A8558(0);
}

uint64_t sub_1B79A83B4()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79A84F8, v3, v2);
}

uint64_t sub_1B79A84F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79A8558(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 25) = a1;
  *(v2 + 64) = sub_1B7A9A760();
  *(v2 + 72) = sub_1B7A9A750();
  v4 = sub_1B7A9A710();
  *(v2 + 80) = v4;
  *(v2 + 88) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B79A85F8, v4, v3);
}

uint64_t sub_1B79A85F8()
{
  if (*(v0 + 25) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1B7A96F20(), , , v1 = *(v0 + 40), v1 == 255) || (sub_1B79AAC54(*(v0 + 32), *(v0 + 40)), (v1 & 1) != 0))
  {
    *(v0 + 96) = *(*(v0 + 56) + 48);

    *(v0 + 104) = sub_1B7A9A750();
    v3 = sub_1B7A9A710();
    *(v0 + 112) = v3;
    *(v0 + 120) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B79A8744, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B79A8744()
{
  if (*(v0 + 96))
  {

    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_1B79A884C;
    v2 = *(v0 + 25);

    return sub_1B79A8558(v2);
  }

  else
  {

    sub_1B7A99300();
    *(v0 + 144) = sub_1B7A992B0();
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1B79A8E84, v4, v5);
  }
}

uint64_t sub_1B79A884C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B79A896C, v3, v2);
}

uint64_t sub_1B79A896C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *(v0 + 136) = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 26) = v1;
  if (v1 == 255)
  {
    sub_1B7A99720();
    sub_1B7A99300();
    *(v0 + 152) = sub_1B7A992B0();

    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = sub_1B79A91D0;
  }

  else
  {

    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = sub_1B79A8AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1B79A8AB8()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 56);

    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_1B79AF040(v2, 1);
    sub_1B7A97600();
    sub_1B79AAC54(v2, v1);
    sub_1B79AAC54(v2, v1);
LABEL_6:

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 160) = v2;
  *(v0 + 168) = v2;
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (v6)
  {
    if (v6 == 1)
    {

      (*(v5 + 32))(v7);
      v8 = sub_1B7A992D0();

      v9 = swift_task_alloc();
      *(v9 + 16) = v5;
      *(v9 + 24) = v8;
      sub_1B7A97600();

      sub_1B79AAC6C(v2, 0);

      goto LABEL_6;
    }

    *(v0 + 176) = *(v5 + 24);

    v14 = sub_1B7A97600();
    (*(v5 + 32))(v14);
    *(v0 + 184) = sub_1B7A992D0();

    *(v0 + 48) = v6;
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08, &qword_1B7A9E870);
    v17 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08, &qword_1B7A9E870, MEMORY[0x1E69E6328]);
    *v15 = v0;
    v15[1] = sub_1B79A951C;

    return MEMORY[0x1EEE16720](v0 + 48, v16, v17);
  }

  else
  {
    *(v0 + 208) = *(v5 + 24);

    v12 = sub_1B7A97600();
    (*(v5 + 32))(v12);
    *(v0 + 216) = sub_1B7A992D0();

    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A8E84()
{
  v1 = v0[18];
  v0[20] = v1;
  v0[21] = v1;
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {

      (*(v2 + 32))(v4);
      v5 = sub_1B7A992D0();

      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      sub_1B7A97600();

      sub_1B79AAC6C(v1, 0);

      v7 = v0[1];

      return v7();
    }

    else
    {
      v0[22] = *(v2 + 24);

      v11 = sub_1B7A97600();
      (*(v2 + 32))(v11);
      v0[23] = sub_1B7A992D0();

      v0[6] = v3;
      v12 = swift_task_alloc();
      v0[24] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08, &qword_1B7A9E870);
      v14 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08, &qword_1B7A9E870, MEMORY[0x1E69E6328]);
      *v12 = v0;
      v12[1] = sub_1B79A951C;

      return MEMORY[0x1EEE16720](v0 + 6, v13, v14);
    }
  }

  else
  {
    v0[26] = *(v2 + 24);

    v9 = sub_1B7A97600();
    (*(v2 + 32))(v9);
    v0[27] = sub_1B7A992D0();

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A91D0()
{
  v1 = v0[19];
  v0[20] = v1;
  v0[21] = v1;
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {

      (*(v2 + 32))(v4);
      v5 = sub_1B7A992D0();

      v6 = swift_task_alloc();
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      sub_1B7A97600();

      sub_1B79AAC6C(v1, 0);

      v7 = v0[1];

      return v7();
    }

    else
    {
      v0[22] = *(v2 + 24);

      v11 = sub_1B7A97600();
      (*(v2 + 32))(v11);
      v0[23] = sub_1B7A992D0();

      v0[6] = v3;
      v12 = swift_task_alloc();
      v0[24] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46E08, &qword_1B7A9E870);
      v14 = sub_1B797EC34(&qword_1EBA46E10, &qword_1EBA46E08, &qword_1B7A9E870, MEMORY[0x1E69E6328]);
      *v12 = v0;
      v12[1] = sub_1B79A951C;

      return MEMORY[0x1EEE16720](v0 + 6, v13, v14);
    }
  }

  else
  {
    v0[26] = *(v2 + 24);

    v9 = sub_1B7A97600();
    (*(v2 + 32))(v9);
    v0[27] = sub_1B7A992D0();

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1B79A9650;

    return MEMORY[0x1EEE16728]();
  }
}

uint64_t sub_1B79A951C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9A48;
  }

  else
  {
    v4[31] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9868;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1B79A9650(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9954;
  }

  else
  {

    v4[30] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1B79A9780;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1B79A9780()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9868()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9954()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9A48()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[7];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_1B7A97600();

  sub_1B79AAC6C(v2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B79A9B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7957820(a3, v25 - v10, &qword_1EBA46B40, &qword_1B7A9DF90);
  v12 = sub_1B7A9A7E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7957888(v11, &qword_1EBA46B40, &qword_1B7A9DF90);
  }

  else
  {
    sub_1B7A9A7D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7A9A710();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7A9A4F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B7957888(a3, &qword_1EBA46B40, &qword_1B7A9DF90);

      return v23;
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

  sub_1B7957888(a3, &qword_1EBA46B40, &qword_1B7A9DF90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B79A9E34@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a2;
  v72 = a8;
  v69 = a4;
  v94 = a9;
  v75 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v119 = v17;
  *(&v119 + 1) = MEMORY[0x1E69E5FE0];
  *&v120 = v18;
  *(&v120 + 1) = MEMORY[0x1E69E5FE8];
  v74 = sub_1B7A987A0();
  v84 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v95 = &v68 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78, &qword_1B7A9DF28);
  v79 = sub_1B7A97590();
  v86 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v68 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80, &unk_1B7A9DF30);
  v81 = sub_1B7A97590();
  v88 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v68 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
  v82 = sub_1B7A97590();
  v89 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v68 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  v85 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98, &qword_1B7A9DF48);
  v83 = sub_1B7A97590();
  v91 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v68 - v23;
  type metadata accessor for AppMetricsViewModifier(255);
  v92 = sub_1B7A97590();
  v87 = sub_1B7A97B40();
  v93 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v68 - v26;
  v70 = *a1;
  v27 = v70;
  v28 = a3;
  v96 = a3;
  v97 = a4;
  v29 = a5;
  v98 = a5;
  v99 = a6;
  v30 = a6;
  v31 = v71;
  v32 = v72;
  v100 = a7;
  v101 = v72;
  v102 = v71;
  v103 = v70;
  v33 = v28;
  sub_1B7A99260();
  *&v119 = v27;
  sub_1B7A98390();
  (*(v75 + 8))(v16, v33);
  swift_getKeyPath();
  v34 = v31[3];
  v121 = v31[2];
  v122 = v34;
  v123 = v31[4];
  v124 = *(v31 + 80);
  v35 = v31[1];
  v119 = *v31;
  v120 = v35;
  v118[0] = v33;
  v118[1] = v69;
  v118[2] = v29;
  v118[3] = v30;
  v118[4] = a7;
  v118[5] = v32;
  type metadata accessor for Jet(0, v118);
  *&v119 = sub_1B79A6B58();
  v36 = v74;
  WitnessTable = swift_getWitnessTable();
  v38 = v73;
  v39 = v95;
  sub_1B7A98150();

  (*(v84 + 8))(v39, v36);
  v40 = sub_1B7A99300();
  v41 = MEMORY[0x1E6980A18];
  v42 = sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78, &qword_1B7A9DF28, MEMORY[0x1E6980A18]);
  v116 = WitnessTable;
  v117 = v42;
  v43 = v79;
  v44 = swift_getWitnessTable();
  v45 = v77;
  v46 = v70;
  sub_1B7A55AFC(v70, v43, v40, v44, v77);
  (*(v86 + 8))(v38, v43);
  v47 = sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80, &unk_1B7A9DF30, &unk_1B7AA7138);
  v114 = v44;
  v115 = v47;
  v48 = v81;
  v49 = swift_getWitnessTable();
  v50 = v78;
  sub_1B7A64E28(v46, v48, v49);
  (*(v88 + 8))(v45, v48);
  v51 = MEMORY[0x1E6980B30];
  v52 = sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88, &qword_1B7AA9E50, MEMORY[0x1E6980B30]);
  v112 = v49;
  v113 = v52;
  v53 = v82;
  v54 = swift_getWitnessTable();
  v55 = v76;
  sub_1B79F2B78(v46, v53, v54);
  (*(v89 + 8))(v50, v53);
  v56 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, v41);
  v110 = v54;
  v111 = v56;
  v57 = swift_getWitnessTable();
  v58 = sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98, &qword_1B7A9DF48, v51);
  v108 = v57;
  v109 = v58;
  v59 = v83;
  v60 = swift_getWitnessTable();
  v61 = v80;
  sub_1B7A126F4(v46, v59, v60, v80);
  (*(v91 + 8))(v55, v59);
  v62 = sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  v106 = v60;
  v107 = v62;
  v104 = swift_getWitnessTable();
  v105 = v60;
  v63 = v87;
  v64 = swift_getWitnessTable();
  v65 = v90;
  sub_1B7957EE0(v61, v63, v64);
  v66 = *(v93 + 8);
  v66(v61, v63);
  sub_1B7957EE0(v65, v63, v64);
  return (v66)(v65, v63);
}

void *EnvironmentValues.restartJet.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B79AACCC(x0_0, a2, a3);

  return sub_1B7A97890();
}

void *sub_1B79AA7EC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79AACCC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79AA83C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79AACCC(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B79AA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[19] = a3;
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v10 = sub_1B7A9A710();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B79AA948, v10, v9);
}

uint64_t sub_1B79AA948()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 176);
  v4 = *(v0 + 192);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = v4;
  type metadata accessor for Jet(0, v0 + 104);
  *(v0 + 232) = sub_1B79A6B58();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_1B79AAA2C;

  return sub_1B79A8558(1);
}

uint64_t sub_1B79AAA2C()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79AF2E0, v3, v2);
}

uint64_t sub_1B79AAB70()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B798D54C;

  return sub_1B79AA89C(v7, v8, (v0 + 10), v2, v3, v4, v5, v6);
}

void sub_1B79AAC54(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1B79AAC6C(result, a2 & 1);
  }
}

void sub_1B79AAC6C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1B79AAC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46BD0;
  if (!qword_1EBA46BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BD0);
  }

  return result;
}

unint64_t sub_1B79AACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46BD8;
  if (!qword_1EBA46BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46BD8);
  }

  return result;
}

uint64_t JetStartUpCoordinator.init(startUpProcedure:transaction:makeObjects:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  type metadata accessor for _JetTakeOff(0);
  v10 = swift_allocObject();
  v10[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8, &qword_1B7A9DF88);
  sub_1B7A96EE0();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = 0;

  *a5 = v10;
  return result;
}

Swift::Void __swiftcall JetStartUpCoordinator.restart()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = sub_1B7A9A7E0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  swift_retain_n();
  sub_1B79A9B34(0, 0, v3, &unk_1B7A9DFA0, v6);
}

uint64_t RestartJetAction.callAsFunction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  if (v4)
  {
    v5 = sub_1B7A9A7E0();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;

    v7 = &unk_1B7A9DFB8;
    v8 = v3;
    v9 = v6;
  }

  else
  {
    sub_1B7A99720();
    v10 = sub_1B7A9A7E0();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v7 = &unk_1B7A9DFB0;
    v8 = v3;
  }

  return sub_1B79A9B34(0, 0, v8, v7, v9);
}

uint64_t JetStartUpCoordinator.debugDescription.getter()
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0xD000000000000017, 0x80000001B7AC55E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF0, &unk_1B7A9DFC0);
  sub_1B7A9AD50();
  MEMORY[0x1B8CAB750](62, 0xE100000000000000);
  return 0;
}

void *JetStartUpCoordinator.extend(startUpProcedure:withDependencies:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = *a1;
  result = sub_1B79AB1F4(&v6, a3, a4);
  *a2 = result;
  return result;
}

void *sub_1B79AB1F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a1;
  if (*a1 == 2)
  {
    v7 = *(v3 + 16);
    sub_1B79ADE14(v7);
  }

  v8 = *(v3 + 24);
  v9 = swift_allocObject();
  v9[6] = 0;
  sub_1B79AEDC0(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8, &qword_1B7A9DF88);
  sub_1B7A96EE0();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = v3;

  return v9;
}

uint64_t JetStartUpDecoration.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

void *sub_1B79AB3A0(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B79AED6C(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B79AB3E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B79E9404();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B79AB418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = *(a1 + 16);
  v81 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v77 - v6;
  v8 = *(v7 + 24);
  *&v114 = v3;
  *(&v114 + 1) = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v114 = v3;
  *(&v114 + 1) = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = MEMORY[0x1E6981CD8];
  *&v114 = v3;
  *(&v114 + 1) = MEMORY[0x1E6981CD8];
  *v115 = OpaqueTypeMetadata2;
  *&v115[8] = v8;
  v12 = MEMORY[0x1E6981CD0];
  *&v115[16] = MEMORY[0x1E6981CD0];
  *&v115[24] = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  *&v114 = v3;
  *(&v114 + 1) = v11;
  *v115 = OpaqueTypeMetadata2;
  *&v115[8] = v8;
  *&v115[16] = v12;
  *&v115[24] = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  *&v114 = MEMORY[0x1E69E6530];
  *(&v114 + 1) = v13;
  v87 = v13;
  *v115 = MEMORY[0x1E69E6540];
  *&v115[8] = v14;
  v86 = v14;
  v15 = sub_1B7A98980();
  v90 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D88, &qword_1B7A9E728);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D90, &qword_1B7A9E730);
  v21 = sub_1B7A976B0();
  v22 = sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90, &qword_1B7A9E730, MEMORY[0x1E697CD20]);
  *&v114 = v20;
  *(&v114 + 1) = v21;
  *v115 = v22;
  *&v115[8] = MEMORY[0x1E697C270];
  v23 = swift_getOpaqueTypeConformance2();
  v84 = v19;
  *&v114 = v19;
  *(&v114 + 1) = MEMORY[0x1E6981E70];
  *v115 = v3;
  *&v115[8] = v23;
  v82 = v23;
  *&v115[16] = MEMORY[0x1E6981E60];
  *&v115[24] = v8;
  v24 = v8;
  v25 = sub_1B7A979C0();
  v97 = v15;
  v26 = sub_1B7A97B40();
  v94 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v77 - v27;
  v100 = v25;
  v85 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v83 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v77 - v31;
  v32 = sub_1B7A97880();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v26;
  v96 = sub_1B7A97B40();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v77 - v37;
  v38 = v2[1];
  v114 = *v2;
  *v115 = v38;
  *&v115[9] = *(v2 + 25);
  v117 = *(v2 + 24);
  v39 = *(v2 + 2);
  v116 = v39;
  if (v117 == 1)
  {
    v113 = v39;
  }

  else
  {
    sub_1B7957820(&v116, &v118, &qword_1EBA46DA0, &qword_1B7A9E738);
    sub_1B7A9AA10();
    v40 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v116, &qword_1EBA46DA0, &qword_1B7A9E738);
    v36 = (*(v33 + 8))(v35, v32);
    LOBYTE(v39) = v113;
  }

  v119 = v115[24];
  v41 = v115[16];
  v118 = *&v115[16];
  if (v115[24] != 1)
  {

    sub_1B7A9AA10();
    v42 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v118, &qword_1EBA46DA8, &qword_1B7A9E740);
    v36 = (*(v33 + 8))(v35, v32);
    v41 = v112;
  }

  v43 = v97;
  v44 = v99;
  if (v39 > 1u)
  {
    if (v39 != 2)
    {
      v65 = v80;
      (v114)(v36);
      v66 = v79;
      sub_1B7957EE0(v65, v3, v24);
      v67 = *(v81 + 8);
      v67(v65, v3);
      sub_1B7957EE0(v66, v3, v24);
      WitnessTable = swift_getWitnessTable();
      v69 = swift_getWitnessTable();
      v110 = WitnessTable;
      v111 = v69;
      v70 = swift_getWitnessTable();
      sub_1B7959A28(v65, v99, v3, v70, v24);
      v67(v65, v3);
      v67(v66, v3);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v39 && (v41 & 1) != 0)
  {
LABEL_11:
    MEMORY[0x1EEE9AC00](v36);
    *(&v77 - 4) = v3;
    *(&v77 - 3) = v24;
    v91 = v3;
    *(&v77 - 2) = &v114;
    v57 = v83;
    sub_1B7A979B0();
    v58 = v100;
    v59 = swift_getWitnessTable();
    v60 = v92;
    sub_1B7957EE0(v57, v58, v59);
    v61 = *(v85 + 8);
    v61(v57, v58);
    sub_1B7957EE0(v60, v58, v59);
    v62 = swift_getWitnessTable();
    v63 = v93;
    sub_1B79B5878(v57, v58, v43, v59, v62);
    v102 = v59;
    v103 = v62;
    v64 = swift_getWitnessTable();
    sub_1B79B5878(v63, v44, v91, v64, v24);
    (*(v94 + 8))(v63, v44);
    v61(v57, v58);
    v61(v92, v58);
    goto LABEL_13;
  }

  MEMORY[0x1EEE9AC00](v36);
  v91 = v3;
  *(&v77 - 4) = v3;
  *(&v77 - 3) = v24;
  v78 = v24;
  *(&v77 - 2) = &v114;
  v45 = v89;
  sub_1B7A98970();
  v46 = swift_getWitnessTable();
  v47 = v100;
  v48 = v88;
  sub_1B7957EE0(v45, v43, v46);
  v49 = *(v90 + 8);
  v49(v45, v43);
  sub_1B7957EE0(v48, v43, v46);
  v50 = swift_getWitnessTable();
  v51 = v43;
  v52 = v44;
  v53 = v93;
  sub_1B7959A28(v45, v47, v51, v50, v46);
  v104 = v50;
  v105 = v46;
  v54 = swift_getWitnessTable();
  v55 = v78;
  sub_1B79B5878(v53, v52, v91, v54, v78);
  (*(v94 + 8))(v53, v52);
  v56 = v45;
  v24 = v55;
  v49(v56, v51);
  v49(v48, v51);
LABEL_13:
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v108 = v71;
  v109 = v72;
  v106 = swift_getWitnessTable();
  v107 = v24;
  v73 = v96;
  v74 = swift_getWitnessTable();
  v75 = v101;
  sub_1B7957EE0(v101, v73, v74);
  return (*(v95 + 8))(v75, v73);
}

uint64_t sub_1B79AC12C()
{
  v0 = sub_1B7A976B0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46D90, &qword_1B7A9E730);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DB0, &qword_1B7A9E748);
  sub_1B79AEB1C();
  sub_1B7A98020();
  sub_1B7A976A0();
  sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90, &qword_1B7A9E730, MEMORY[0x1E697CD20]);
  sub_1B7A98510();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B79AC39C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DC8, &unk_1B7A9E750);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - v1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A97960();
  sub_1B7A98760();
  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v5 = &v2[*(v0 + 36)];
  *v5 = KeyPath;
  v5[1] = sub_1B79AED04;
  v5[2] = v4;
  sub_1B79AEBD8();
  sub_1B7A982C0();
  sub_1B7957888(v2, &qword_1EBA46DC8, &unk_1B7A9E750);
}

uint64_t sub_1B79AC538()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_1B79AC5C8(void (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  sub_1B7957EE0(v8, a2, a3);
  v13 = *(v6 + 8);
  v13(v8, a2);
  sub_1B7957EE0(v11, a2, a3);
  v13(v11, a2);
}

uint64_t sub_1B79AC76C@<X0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v36 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = a2;
  v36 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = a2;
  v36 = MEMORY[0x1E6981CD8];
  v37 = OpaqueTypeMetadata2;
  v38 = a3;
  v39 = MEMORY[0x1E6981CD0];
  v40 = OpaqueTypeConformance2;
  v32 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v29 - v17;
  sub_1B7A9A760();
  v29 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  v19 = sub_1B7A989E0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = swift_checkMetadataState();
  v21 = v8;
  v22 = v32;
  v23 = MEMORY[0x1E6981CD8];
  v24 = MEMORY[0x1E6981CD0];
  sub_1B7A984E0();
  (*(v33 + 8))(v21, a2);
  v35 = a2;
  v36 = v23;
  v37 = v20;
  v38 = a3;
  v39 = v24;
  v40 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_1B7957EE0(v15, v13, v25);
  v27 = *(v31 + 8);
  v27(v15, v13);
  sub_1B7957EE0(v26, v13, v25);
  v27(v26, v13);
}

uint64_t sub_1B79ACAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a4;
  v18 = a2;
  v19 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DE8, &qword_1B7A9E798);
  sub_1B7A976E0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7A9C180;
  sub_1B7A976D0();
  MEMORY[0x1B8CA96B0](2, v13, a2, a3);

  v18 = a2;
  v19 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15 = *(v7 + 8);
  v15(v9, OpaqueTypeMetadata2);
  sub_1B7957EE0(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15(v12, OpaqueTypeMetadata2);
}

uint64_t _JetViewDefaultWorking.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A978F0();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF8, &qword_1B7AA6BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1B7A978E0();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v12 = sub_1B79AECBC(&qword_1EBA46C00, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  sub_1B7A970B0();

  (*(v19 + 8))(v4, v2);
  (*(v6 + 16))(v8, v11, v5);
  v20 = v2;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1B7A972B0();
  result = (*(v6 + 8))(v11, v5);
  *a1 = sub_1B79AD09C;
  *(a1 + 8) = 0;
  v15 = v17;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_1B79AD09C@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = result;
  *(a1 + 96) = 0;
  return result;
}

uint64_t _JetViewDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v9 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *a1 = sub_1B79AD68C;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  v7 = v9;
}

uint64_t sub_1B79AD26C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;

  ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, a4);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
  v11 = a4 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 2;
  return result;
}

uint64_t sub_1B79AD2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v9 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *a1 = sub_1B79AF2DC;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  v7 = v9;
}

uint64_t sub_1B79AD3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D338;

  return sub_1B79A8558(0);
}

uint64_t sub_1B79AD478()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  return sub_1B79AD3E4();
}

uint64_t sub_1B79AD52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  return sub_1B79AD3D0();
}

uint64_t sub_1B79AD5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D338;

  return sub_1B79AD3E4();
}

uint64_t View.startUpDecoration(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B79AD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79AE23C(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B79AD77C(uint64_t a1, uint64_t a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7A96F30();
}

uint64_t sub_1B79AD868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7A96F30();
}

uint64_t sub_1B79AD964(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v4 = a2;
  sub_1B7A96F30();
}

uint64_t sub_1B79ADA80()
{
  sub_1B79ADE24(*(v0 + 16));

  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI11_JetTakeOff__objectGraph;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF0, &qword_1B7A9E7A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + 48);
  *(v0 + 48) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + 48);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_1B79ADB5C()
{
  sub_1B79ADA80();

  return swift_deallocClassInstance();
}

void *Jet.init(startUpProcedure:makeObjects:working:failed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  sub_1B7A98A40();
  v17 = sub_1B7A97180();
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  result[2] = v16;
  result[3] = v17;
  result[4] = a2;
  result[5] = a3;
  *a9 = sub_1B79A6F40;
  *(a9 + 8) = result;
  *(a9 + 16) = 0;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = KeyPath;
  *(a9 + 80) = 0;
  return result;
}

unint64_t Jet.init<>(startUpProcedure:makeObjects:content:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  sub_1B79ADE14(*a1);
  sub_1B7A98A40();
  v12 = sub_1B7A97180();
  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_1B79A6F40;
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *(a6 + 24) = j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC;
  *(a6 + 32) = 0;
  *(a6 + 40) = sub_1B79AF2C8;
  *(a6 + 48) = 0;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;

  return sub_1B79ADE24(v11);
}

unint64_t sub_1B79ADE14(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B79ADE24(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t Jet.init<>(startUpProcedure:transaction:makeObjects:content:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a1;
  sub_1B79ADE14(*a1);
  sub_1B7A98A40();
  v12 = sub_1B7A97180();
  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_1B79A6F40;
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *(a6 + 24) = j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC;
  *(a6 + 32) = 0;
  *(a6 + 40) = sub_1B79AF2C8;
  *(a6 + 48) = 0;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;

  return sub_1B79ADE24(v11);
}

uint64_t Jet.init<>(startUpWith:content:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10, &unk_1B7AA5330, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  Jet.init(startUpWith:working:failed:content:)(j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, a2, a3, a4);
}

uint64_t sub_1B79AE0A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, a4);
}

uint64_t JetStartUpCoordinator.init(startUpProcedure:makeObjects:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  sub_1B7A98A40();
  v8 = sub_1B7A97180();
  type metadata accessor for _JetTakeOff(0);
  v9 = swift_allocObject();
  v9[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8, &qword_1B7A9DF88);
  sub_1B7A96EE0();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = 0;

  *a4 = v9;
  return result;
}

unint64_t sub_1B79AE23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46C28[0];
  if (!qword_1EBA46C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA46C28);
  }

  return result;
}

uint64_t sub_1B79AE2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79AE31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B79AE364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI0A16StartUpProcedureO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B79AE3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B79AE440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B79AE49C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for JetStartUpDecoration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetStartUpDecoration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B79AE6F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B79AE750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1B79AE7B8(uint64_t a1)
{
  sub_1B79AE86C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B79AE86C(uint64_t a1)
{
  if (!qword_1EBA46CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46BE8, &qword_1B7A9DF88);
    v1 = sub_1B7A96F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA46CB0);
    }
  }
}

unint64_t sub_1B79AE8D0()
{
  result = qword_1EBA46CB8;
  if (!qword_1EBA46CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CC0, &qword_1B7A9E518);
    sub_1B797EC34(&qword_1EBA46CC8, &qword_1EBA46CD0, &unk_1B7A9E520, &unk_1B7A9E664);
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46CB8);
  }

  return result;
}

uint64_t sub_1B79AE9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B79AEA04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B79AEA4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B79AEB1C()
{
  result = qword_1EBA46DB8;
  if (!qword_1EBA46DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DB0, &qword_1B7A9E748);
    sub_1B79AEBD8();
    sub_1B79AECBC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46DB8);
  }

  return result;
}

unint64_t sub_1B79AEBD8()
{
  result = qword_1EBA46DC0;
  if (!qword_1EBA46DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DC8, &unk_1B7A9E750);
    sub_1B797EC34(&qword_1EDC10120, &qword_1EBA46DD0, &qword_1B7AA4BE0, MEMORY[0x1E697D680]);
    sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0, &qword_1B7A9E760, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46DC0);
  }

  return result;
}

uint64_t sub_1B79AECBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

unint64_t sub_1B79AED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46E00;
  if (!qword_1EBA46E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46E00);
  }

  return result;
}

unint64_t sub_1B79AEDC0(unint64_t result)
{
  if (result != 2)
  {
    return sub_1B79ADE14(result);
  }

  return result;
}

uint64_t sub_1B79AEDD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79DC72C(a1, v4);
}

uint64_t sub_1B79AEE88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79DC72C(a1, v4);
}

id sub_1B79AF040(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_6Tm()
{
  sub_1B79A7E10(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  j__swift_release(*(v0 + 136));

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();
  sub_1B79A7E10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  j__swift_release(*(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_1B79AF15C(uint64_t a1)
{
  v4 = v1[5];
  v11 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B79A8224(a1, v7, v8, (v1 + 10), v11, v4, v5, v6);
}

id sub_1B79AF24C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B79AF040(result, a2 & 1);
  }

  return result;
}

unint64_t sub_1B79AF264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46E18;
  if (!qword_1EBA46E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46E18);
  }

  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IntentView.init<A>(what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v48 = a7;
  v49 = a8;
  v46 = a4;
  v47 = a6;
  v50 = a3;
  v51 = a5;
  v45 = a2;
  v54 = a1;
  v55 = a9;
  v43 = a17;
  v44 = a18;
  v42 = a16;
  v39 = a15;
  v52 = *(a10 - 8);
  v38 = a13;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v53 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = swift_allocObject();
  v23[2] = a10;
  v23[3] = a11;
  v40 = a11;
  v23[4] = a12;
  v23[5] = a13;
  v41 = a14;
  v23[6] = a14;
  v23[7] = a15;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v23[8] = v42;
  v23[9] = v25;
  v27 = v45;
  v23[10] = v26;
  v23[11] = v27;
  v23[12] = a3;
  v28 = v46;
  v23[13] = v46;
  v23[14] = a5;
  v30 = v47;
  v29 = v48;
  v23[15] = v47;
  v23[16] = v29;
  v23[17] = v49;
  v56[0] = swift_getAssociatedTypeWitness();
  v56[1] = v38;
  v56[2] = a11;
  v56[3] = a12;
  v56[4] = v26;
  v56[5] = v25;
  v31 = v39;
  v56[6] = v39;
  v56[7] = v24;
  v32 = v24;
  v33 = type metadata accessor for _IntentViewContinuousContent(0, v56);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v56[0]) = 0;

  *(&v36 + 1) = v33;
  *&v36 = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v53, v27, v56, v50, v28, v51, v30, sub_1B79AF84C, v55, v23, v36, v40, a12, v41, WitnessTable, v31, v32);
  return (*(v52 + 8))(v54, a10);
}

uint64_t sub_1B79AF58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v45 = a5;
  v46 = a7;
  v35 = a6;
  v36 = a4;
  v44 = a3;
  v38 = a2;
  v47 = a9;
  v43 = a13;
  v42 = a12;
  v41 = a18;
  v37 = a16;
  v39 = a15;
  v40 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v34 - v22;
  (*(v24 + 16))(&v34 - v22, a1, AssociatedTypeWitness, v21);

  v25 = v39;
  v26 = v41;
  v27 = v42;
  v28 = v40;
  v29 = v43;
  _IntentViewContinuousContent.init(_:transaction:working:failed:content:)(v23, v38, v44, v36, v45, v35, v46, a8, &v63, AssociatedTypeWitness, v43, v40, v42, v41, a17, v39, a16);
  *&v58 = AssociatedTypeWitness;
  *(&v58 + 1) = v29;
  *&v59 = v28;
  *(&v59 + 1) = v27;
  *&v60 = v26;
  *(&v60 + 1) = a17;
  *&v61 = v25;
  *(&v61 + 1) = v37;
  v30 = type metadata accessor for _IntentViewContinuousContent(0, &v58);
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(&v63, v30, WitnessTable);
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v58 = v63;
  v59 = v64;
  v32 = *(*(v30 - 8) + 8);
  v32(&v58, v30);
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v48 = v53;
  v49 = v54;
  sub_1B7957EE0(&v48, v30, WitnessTable);
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v63 = v48;
  v64 = v49;
  return (v32)(&v63, v30);
}

uint64_t _IntentViewContinuousContent.init(_:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v38 = a1;
  v36 = a17;
  v46 = a15;
  v47 = a16;
  v45 = a14;
  v18 = *(a10 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v20);
  v22 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a10;
  *(v24 + 3) = a11;
  *(v24 + 4) = a12;
  *(v24 + 5) = a13;
  v25 = v46;
  *(v24 + 6) = v45;
  *(v24 + 7) = v25;
  v26 = v36;
  *(v24 + 8) = v47;
  *(v24 + 9) = v26;
  (*(v18 + 32))(&v24[v22], v21);
  *&v24[v23] = v37;
  v48[0] = a10;
  v48[1] = a11;
  v48[2] = a12;
  v48[3] = a13;
  v48[4] = v45;
  v48[5] = v46;
  v48[6] = v47;
  v48[7] = v26;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher(0, v48);
  swift_getWitnessTable();
  v27 = sub_1B7A97110();
  v29 = v28;
  LOBYTE(v23) = v30;
  result = (*(v18 + 8))(v38, a10);
  *a9 = v27;
  *(a9 + 8) = v29;
  *(a9 + 16) = v23 & 1;
  v32 = v40;
  *(a9 + 24) = v39;
  *(a9 + 32) = v32;
  v33 = v42;
  *(a9 + 40) = v41;
  *(a9 + 48) = v33;
  v34 = v44;
  *(a9 + 56) = v43;
  *(a9 + 64) = v34;
  return result;
}

uint64_t IntentView.init<A>(what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v16 + 16))(v19, a1, v20, v17);
  v24 = sub_1B7988414(v21, v22, v23);
  v27 = sub_1B7988468(v24, v25, v26);
  IntentView.init<A>(what:transaction:working:failed:content:)(v19, v30, nullsub_1, 0, sub_1B79AFC58, 0, v31, v32, a9, a5, &type metadata for _IntentViewDefaultContinuousWorking, &type metadata for _IntentViewDefaultContinuousFailed, a6, a7, v24, v27, a8, a10);
  return (*(v16 + 8))(a1, a5);
}

uint64_t sub_1B79AFC58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

uint64_t sub_1B79AFCE4(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v3 = *v2;
  v50 = *(*v2 + 112);
  v49 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v40 - v9;
  v10 = sub_1B7A9A100();
  v11 = sub_1B7A9AB60();
  v12 = sub_1B7A96F50();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v40 - v14;
  v44 = v11;
  v42 = *(v11 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - v18;
  *(v2 + v3[20]) = 0;
  v20 = *(*v2 + 168);
  v21 = *(v10 - 8);
  v22 = *(v21 + 56);
  v43 = v10;
  v40[1] = v21 + 56;
  v41 = v22;
  (v22)(v19, 1, 1, v10, v17);
  v23 = v3[11];
  v24 = v3[12];
  v25 = v3[13];
  v26 = v49;
  sub_1B79B0268(v19, v49, v23, v24, v25, v50);
  v27 = v2 + v20;
  v28 = v51;
  v29 = v15;
  v30 = v48;
  v31 = v12;
  v32 = v26;
  (*(v13 + 32))(v27, v29, v31);
  v33 = v52;
  v34 = *(v26 - 8);
  (*(v34 + 16))(v2 + *(*v2 + 144), v28, v32);
  *(v2 + *(*v2 + 152)) = v33;

  sub_1B7A98BA0();
  v35 = v7;
  if ((*(v30 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v45 + 8))(v7, v46);
    sub_1B79B038C();

    (*(v34 + 8))(v28, v32);
  }

  else
  {
    v36 = v47;
    (*(v30 + 32))(v47, v35, AssociatedTypeWitness);
    (*(v30 + 16))(v19, v36, AssociatedTypeWitness);
    v37 = v43;
    swift_storeEnumTagMultiPayload();
    *v38.i64 = v41(v19, 0, 1, v37);
    sub_1B79B35E8(v19, v38);
    (*(v42 + 8))(v19, v44);

    (*(v34 + 8))(v28, v32);
    (*(v30 + 8))(v36, AssociatedTypeWitness);
  }

  return v2;
}

uint64_t sub_1B79B0268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  sub_1B7A28F54(v11, v7);
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1B79B038C()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  v24 = *(v28 + 80);
  v3 = sub_1B7A99D80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v27 = &v23 - v10;
  v12 = sub_1B7A9A7E0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1B7A98E70();
  v25 = *(v1 + *(*v1 + 152));
  v14 = v3;
  (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
  sub_1B7A9A760();

  v15 = sub_1B7A9A750();
  (*(v4 + 8))(v8, v14);
  v16 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  *(v18 + 32) = v24;
  *(v18 + 40) = v2[11];
  v20 = v28;
  *(v18 + 48) = *(v28 + 96);
  *(v18 + 64) = v2[14];
  *(v18 + 72) = *(v20 + 120);
  *(v18 + 88) = v2[17];
  (*(v4 + 32))(v18 + v16, v26, v14);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;

  v21 = sub_1B79A9B34(0, 0, v27, &unk_1B7A9ED18, v18);
  sub_1B79B3568();
  *(v1 + *(*v1 + 160)) = v21;
}

uint64_t *sub_1B79B073C()
{
  v1 = *v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 160)))
  {

    sub_1B7A9A7F0();

    v1 = *v0;
  }

  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 144), *(v2 + 80));

  v3 = *(*v0 + 168);
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v4 = sub_1B7A96F50();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B79B08D4()
{
  sub_1B79B073C();

  return swift_deallocClassInstance();
}

uint64_t sub_1B79B0928()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79B0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v23;
  *(v8 + 80) = v22;
  *(v8 + 64) = v20;
  *(v8 + 72) = v21;
  *(v8 + 48) = a8;
  *(v8 + 56) = v19;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 104) = AssociatedTypeWitness;
  v11 = sub_1B7A98BC0();
  *(v8 + 112) = v11;
  v12 = sub_1B7A9AB60();
  *(v8 + 120) = v12;
  *(v8 + 128) = *(v12 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = *(AssociatedTypeWitness - 8);
  *(v8 + 168) = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  *(v8 + 176) = v13;
  *(v8 + 184) = *(v13 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1B7A9AB60();
  *(v8 + 208) = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  *(v8 + 216) = v14;
  *(v8 + 224) = *(v14 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(a7 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = sub_1B7A9A760();
  *(v8 + 280) = sub_1B7A9A750();
  v16 = sub_1B7A9A710();
  *(v8 + 288) = v16;
  *(v8 + 296) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1B79B0E30, v16, v15);
}

uint64_t sub_1B79B0E30()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[5];
  sub_1B7A99200();
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v2, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79B0F90;
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79B0F90()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79B157C;
  }

  else
  {
    v5 = sub_1B79B10E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79B10E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

LABEL_5:
    (*(v0 + 304))(*(v0 + 248), *(v0 + 264), *(v0 + 40));
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 136);
      v10 = *(v0 + 112);
      (*(v8 + 56))(v9, 0, 1, v10);
      (*(v8 + 32))(v7, v9, v10);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v11 = *(v0 + 264);
        v12 = *(v0 + 240);
        v13 = *(v0 + 40);
        (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 112));
        (*(v12 + 8))(v11, v13);
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 240);
        v39 = *(v0 + 144);
        v38 = *(v0 + 152);
        v40 = *(v0 + 112);
        v41 = *(v0 + 40);
        IntentViewLogFinishedSequenceError()();
        (*(v39 + 8))(v38, v40);
        (*(v37 + 8))(v36, v41);
      }
    }

    else
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      v18 = *(v0 + 112);
      (*(*(v0 + 240) + 8))(*(v0 + 264), *(v0 + 40));
      (*(v15 + 56))(v14, 1, 1, v18);
      (*(v17 + 8))(v14, v16);
    }

    v19 = *(v0 + 8);

    return v19();
  }

  (*(v2 + 32))(*(v0 + 168), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 104);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 104);
  v24 = *(v0 + 32);
  v25 = swift_task_alloc();
  v26 = *(v0 + 56);
  v27 = *(v0 + 72);
  v28 = *(v0 + 88);
  *(v25 + 16) = *(v0 + 40);
  *(v25 + 32) = v26;
  *(v25 + 48) = v27;
  *(v25 + 64) = v28;
  *(v25 + 80) = v24;
  *(v25 + 88) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
  sub_1B7A97600();

  (*(v22 + 8))(v21, v23);
  v29 = sub_1B7A9A750();
  *(v0 + 320) = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v31 = swift_task_alloc();
  *(v0 + 336) = v31;
  *v31 = v0;
  v31[1] = sub_1B79B0F90;
  v32 = *(v0 + 208);
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);
  v35 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v32, v29, v35, v34, v33, AssociatedConformanceWitness);
}

uint64_t sub_1B79B157C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1B7A9AE50();
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = v6;
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  }

  else
  {
    v9 = *(v0 + 176);
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 32);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  v17 = *(v0 + 88);
  v18 = *(v0 + 72);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v14 = swift_task_alloc();
  *(v14 + 16) = v20;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  *(v14 + 64) = v17;
  *(v14 + 80) = v13;
  *(v14 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
  sub_1B7A97600();

  (*(v12 + 8))(v11, v20);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B79B17E8@<X0>(uint64_t a2@<X1>, BOOL *a5@<X8>)
{
  v15 = a2;
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(v10, v15, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *v12.i64 = (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
    sub_1B79B35E8(v10, v12);
    (*(v8 + 8))(v10, v7);
  }

  *v16 = Strong == 0;
  return result;
}

Swift::Void __swiftcall IntentViewLogFinishedSequenceError()()
{
  v0 = sub_1B7A9A280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA45B38 != -1)
  {
    swift_once();
  }

  v4 = off_1EBA46E20;
  os_unfair_lock_lock(off_1EBA46E20 + 5);
  v5 = *(v4 + 16);
  os_unfair_lock_unlock(v4 + 5);
  if ((v5 & 1) == 0)
  {
    os_unfair_lock_lock(v4 + 5);
    *(v4 + 16) = 1;
    os_unfair_lock_unlock(v4 + 5);
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1B79B1C74@<X0>(void *a2@<X1>, BOOL *a5@<X8>)
{
  v15 = a5;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B7A9A100();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - v9);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
    v12 = a2;
    sub_1B79B35E8(v10, v13);
    (*(v8 + 8))(v10, v7);
  }

  *v15 = Strong == 0;
  return result;
}

uint64_t sub_1B79B1E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = v16;
  v18[7] = v15;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher(0, v18);
  (*(v6 + 16))(v8, a1, a3);
  swift_allocObject();

  return sub_1B79AFCE4(v8, a2);
}

uint64_t sub_1B79B204C(_OWORD *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = a1[2];
  v12[0] = a1[1];
  v12[1] = v7;
  v8 = a1[4];
  v12[2] = a1[3];
  v12[3] = v8;
  v9 = type metadata accessor for _IntentViewContinuousContent.Dispatcher(0, v12);
  WitnessTable = swift_getWitnessTable();
  return a2(v4, v5, v6, v9, WitnessTable);
}

uint64_t _IntentViewContinuousContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>)
{
  v52 = a2;
  v5 = *(a1 + 16);
  a3.i64[0] = v5;
  v53 = a3;
  v6 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v7 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44.i8[-v8];
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  *v67 = AssociatedTypeWitness;
  *&v67[24] = v10;
  *&v69 = v11;
  v12.i64[0] = v6;
  v54 = *(a1 + 24);
  *&v67[8] = v54;
  v13 = vzip1q_s64(v53, v54);
  *&v14 = vdupq_laneq_s64(v54, 1).u64[0];
  *(&v14 + 1) = v10;
  v45 = v14;
  v53 = *(a1 + 56);
  v68 = v53;
  v46 = vzip1q_s64(v12, v53);
  v47 = v13;
  v12.i64[0] = vdupq_laneq_s64(v53, 1).u64[0];
  v12.i64[1] = v11;
  v44 = v12;
  v15 = type metadata accessor for _ResultView(0, v67);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = v44.i64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v44.i8[-v18];
  v19 = *(v3 + 16);
  v20 = *(v3 + 48);
  v68 = *(v3 + 32);
  v69 = v20;
  v21 = *(v3 + 16);
  *v67 = *v3;
  *&v67[16] = v21;
  v22 = *(v3 + 48);
  v65[2] = v68;
  v65[3] = v22;
  v70 = *(v3 + 64);
  v66 = *(v3 + 64);
  v65[0] = *v67;
  v65[1] = v19;
  sub_1B79B204C(a1, MEMORY[0x1E697DD38]);
  v55 = v47;
  v56 = v45;
  v57 = v46;
  v58 = v44;
  swift_getKeyPath();
  v59 = v5;
  v60 = v54;
  v61 = v10;
  v62 = v6;
  v63 = v53;
  v64 = v11;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher(255, &v59);
  swift_getWitnessTable();
  sub_1B7A974B0();

  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  v24 = v53;
  *(v23 + 24) = v54;
  *(v23 + 40) = v10;
  *(v23 + 48) = v6;
  *(v23 + 56) = v24;
  *(v23 + 72) = v11;
  v25 = v69;
  *(v23 + 112) = v68;
  *(v23 + 128) = v25;
  *(v23 + 144) = v70;
  v26 = *&v67[16];
  *(v23 + 80) = *v67;
  *(v23 + 96) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  v28 = v53;
  *(v27 + 24) = v54;
  *(v27 + 40) = v10;
  *(v27 + 48) = v6;
  *(v27 + 56) = v28;
  *(v27 + 72) = v11;
  v29 = v69;
  *(v27 + 112) = v68;
  *(v27 + 128) = v29;
  *(v27 + 144) = v70;
  v30 = *&v67[16];
  *(v27 + 80) = *v67;
  *(v27 + 96) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v5;
  v33 = v53;
  v32 = v54;
  *(v31 + 24) = v54;
  *(v31 + 40) = v10;
  *(v31 + 48) = v6;
  *(v31 + 56) = v33;
  *(v31 + 72) = v11;
  v34 = v69;
  *(v31 + 112) = v68;
  *(v31 + 128) = v34;
  *(v31 + 144) = v70;
  v35 = *&v67[16];
  *(v31 + 80) = *v67;
  *(v31 + 96) = v35;
  *(&v43 + 1) = v33.i64[0];
  *&v43 = v10;
  v36 = v48;
  sub_1B7A55184(v9, sub_1B79B3030, v23, sub_1B79B3068, v27, sub_1B79B30A0, v31, AssociatedTypeWitness, v48, v32, v43, v33.i64[1], v11);
  WitnessTable = swift_getWitnessTable();
  v38 = v49;
  v39 = v36;
  sub_1B7957EE0(v36, v15, WitnessTable);
  v40 = *(*(a1 - 8) + 16);
  v40(v65, v67, a1);
  v40(v65, v67, a1);
  v40(v65, v67, a1);
  v41 = *(v51 + 8);
  v41(v39, v15);
  sub_1B7957EE0(v38, v15, WitnessTable);
  return (v41)(v38, v15);
}

uint64_t sub_1B79B25D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v17 + 24))(v14);
  sub_1B7957EE0(v12, a4, a8);
  v18 = *(v10 + 8);
  v18(v12, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v18)(v16, a4);
}

uint64_t sub_1B79B270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a7;
  v34 = a8;
  v32 = a5;
  v37 = a1;
  v38 = a9;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v22 = *(v21 + 40);
  v35 = *(v21 + 48);
  v36 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v25 = v32;
  v24 = v33;
  *(v23 + 32) = v32;
  *(v23 + 40) = a6;
  v26 = v34;
  *(v23 + 48) = v24;
  *(v23 + 56) = v26;
  *(v23 + 64) = a10;
  *(v23 + 72) = a11;
  v27 = *(a2 + 48);
  *(v23 + 112) = *(a2 + 32);
  *(v23 + 128) = v27;
  *(v23 + 144) = *(a2 + 64);
  v28 = *(a2 + 16);
  *(v23 + 80) = *a2;
  *(v23 + 96) = v28;
  v39[0] = a3;
  v39[1] = a4;
  v39[2] = v25;
  v39[3] = a6;
  v39[4] = v24;
  v39[5] = v26;
  v39[6] = a10;
  v39[7] = a11;
  v29 = type metadata accessor for _IntentViewContinuousContent(0, v39);
  (*(*(v29 - 8) + 16))(v39, a2, v29);
  v36(v37, sub_1B79B3A38, v23);

  sub_1B7957EE0(v17, a6, a11);
  v30 = *(v15 + 8);
  v30(v17, a6);
  sub_1B7957EE0(v20, a6, a11);
  return (v30)(v20, a6);
}

uint64_t sub_1B79B2924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29[-1] - v18;
  v28 = &v29[-1] - v18;
  v20 = sub_1B7A9A7E0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1B7A9A760();
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v29[6] = a8;
  v29[7] = a9;
  v21 = type metadata accessor for _IntentViewContinuousContent(0, v29);
  (*(*(v21 - 8) + 16))(v29, a1, v21);
  v22 = sub_1B7A9A750();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;
  *(v23 + 48) = a4;
  *(v23 + 56) = a5;
  *(v23 + 64) = a6;
  *(v23 + 72) = a7;
  *(v23 + 80) = a8;
  *(v23 + 88) = a9;
  v25 = *(a1 + 48);
  *(v23 + 128) = *(a1 + 32);
  *(v23 + 144) = v25;
  *(v23 + 160) = *(a1 + 64);
  v26 = *(a1 + 16);
  *(v23 + 96) = *a1;
  *(v23 + 112) = v26;
  sub_1B79A9B34(0, 0, v28, &unk_1B7A9ED30, v23);
}

uint64_t sub_1B79B2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 144) = v15;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  sub_1B7A9A760();
  *(v8 + 152) = sub_1B7A9A750();
  v10 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79B2BA8, v10, v9);
}

uint64_t sub_1B79B2BA8()
{
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for _IntentViewContinuousContent(0, v0 + 16);
  sub_1B79B204C(v1, MEMORY[0x1E697DD30]);
  sub_1B79B038C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B79B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v17 + 56))(v14);
  sub_1B7957EE0(v12, a4, a8);
  v18 = *(v10 + 8);
  v18(v12, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v18)(v16, a4);
}

uint64_t _IntentViewDefaultContinuousWorking.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = result;
  *(a1 + 96) = 1;
  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1B79B2F60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1B79B2FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA46F68, &unk_1B7AA5340);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_1EBA46E20 = result;
  return result;
}

uint64_t sub_1B79B315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B79B31C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B79B3210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B79B3260(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B7A9A100();
    sub_1B7A9AB60();
    v1 = sub_1B7A96F50();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

unint64_t sub_1B79B33A0()
{
  result = qword_1EBA46F28;
  if (!qword_1EBA46F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46F30, &unk_1B7AA84E0);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    sub_1B797EC34(&qword_1EDC10A48, &qword_1EBA46F38, &qword_1B7A9EC98, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46F28);
  }

  return result;
}

unint64_t sub_1B79B3484()
{
  result = qword_1EBA46F40;
  if (!qword_1EBA46F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DF8, &qword_1B7A9E7D0);
    sub_1B797EC34(&qword_1EBA46F48, &qword_1EBA46F50, &unk_1B7A9ECA0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1B797EC34(&qword_1EDC0FCD8, &qword_1EBA46F58, &unk_1B7AA84F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46F40);
  }

  return result;
}

void sub_1B79B3568()
{
  if (*(v0 + *(*v0 + 160)))
  {

    sub_1B7A9A7F0();
  }
}

uint64_t sub_1B79B35E8(uint64_t a1, int64x2_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  a2.i64[0] = v6;
  v19 = a2;
  v7 = v4[14];
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v8 = sub_1B7A9AB60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18.i8[-v10];
  v12 = v4[13];
  v13 = v4[17];
  v14.i64[0] = v7;
  v18 = *(v5 + 11);
  v15 = *(v5 + 6);
  v26 = vzip1q_s64(v19, v18);
  v27 = v15;
  v19 = *(v5 + 15);
  v16 = *(v5 + 8);
  v28 = vzip1q_s64(v14, v19);
  v29 = v16;
  swift_getKeyPath();
  v20 = v6;
  v21 = v18;
  v22 = v12;
  v23 = v7;
  v24 = v19;
  v25 = v13;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);

  return sub_1B7A96F30();
}

uint64_t sub_1B79B3800(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = *(sub_1B7A99D80() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B798D338;

  return sub_1B79B0A90(a1, v8, v9, v1 + v6, v10, v11, v4, v15);
}

uint64_t objectdestroy_5Tm_0()
{
  sub_1B79599CC(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1B79B3A70(uint64_t a1)
{
  v4 = v1[5];
  v11 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B79B2AF4(a1, v7, v8, (v1 + 12), v11, v4, v5, v6);
}

__n128 FlowBackActionImplementation.init<A>(following:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1, uint64_t a2)@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  result = *(a1 + 1);
  *(v13 + 56) = result;
  *a6 = sub_1B79B3FDC;
  a6[1] = v13;
  return result;
}

uint64_t sub_1B79B3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sub_1B7A99FE0() == a1 && v16 == a2)
  {

LABEL_5:
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v18 = type metadata accessor for FlowAuthority(255, a7, a8, a9);
    v19 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v38, v19);
    sub_1B7A2A358(v18);
LABEL_6:

    sub_1B7A887C0();
LABEL_7:

    return 1;
  }

  v17 = sub_1B7A9AE80();

  if (v17)
  {
    goto LABEL_5;
  }

  if (sub_1B7A99FC0() == a1 && v21 == a2)
  {

LABEL_13:
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v23 = type metadata accessor for FlowAuthority(255, a7, a8, a9);
    v24 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v38, v24);
    sub_1B7A2A358(v23);

    sub_1B7A88ABC();
    goto LABEL_7;
  }

  v22 = sub_1B7A9AE80();

  if (v22)
  {
    goto LABEL_13;
  }

  if (sub_1B7A99FB0() == a1 && v25 == a2)
  {

    goto LABEL_18;
  }

  v26 = sub_1B7A9AE80();

  if (v26)
  {
LABEL_18:
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v27 = type metadata accessor for FlowAuthority(255, a7, a8, a9);
    v28 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v38, v28);
    v29 = sub_1B7A2A370(v27);

    if (!v29)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (sub_1B7A99FD0() == a1 && v30 == a2)
  {
  }

  else
  {
    v31 = sub_1B7A9AE80();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = a3;
  v40 = a4;
  v41 = a5;
  v32 = type metadata accessor for FlowAuthority(255, a7, a8, a9);
  v33 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](&v38);
  sub_1B7A2A358(v32);

  v34 = sub_1B7A88DD8();

  if ((v34 & 1) == 0)
  {
    v39 = a3;
    v40 = a4;
    v41 = a5;
    MEMORY[0x1B8CA9A40](&v38, v33);
    sub_1B7A2A358(v32);
    goto LABEL_6;
  }

  v39 = a3;
  v40 = a4;
  v41 = a5;
  MEMORY[0x1B8CA9A40](&v38, v33);
  v35 = sub_1B7A2A370(v32);

  if (v35)
  {
    v36 = sub_1B7A29318();

    if (v36)
    {
      v39 = a3;
      v40 = a4;
      v41 = a5;
      MEMORY[0x1B8CA9A40](&v38, v33);
      v37 = sub_1B7A2A370(v32);

      if (!v37)
      {
        return 1;
      }

LABEL_19:
      sub_1B7A29044();
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_1B79B401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1B7A9A760();
  v4[6] = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79B40B8, v6, v5);
}

uint64_t sub_1B79B40B8()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1B7A99FF0();
  v4 = v1(v3);

  v5 = sub_1B7A98FA0();
  v6 = MEMORY[0x1E69AB010];
  if ((v4 & 1) == 0)
  {
    v6 = MEMORY[0x1E69AB008];
  }

  (*(*(v5 - 8) + 104))(v2, *v6, v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79B41AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B7A9A000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = *v2;
  v12 = v2[1];
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = *(a2 + 16);
  *(v15 + 3) = v13;
  *(v15 + 4) = v12;
  (*(v9 + 32))(&v15[v14], &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1B7A9EDE8;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);

  v17 = sub_1B7A9A150();
  v18 = sub_1B7A9A7E0();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B7A9EDF0;
  v19[5] = v16;
  v19[6] = v17;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v19);

  return v17;
}

uint64_t sub_1B79B444C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79B4488(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B79B44D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B79B4524(uint64_t a1)
{
  v4 = *(sub_1B7A9A000() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79B401C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B79B461C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79DC72C(a1, v4);
}

uint64_t sub_1B79B46D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B7A63CF8(a1, v4, v5, v6, v7, v8);
}

uint64_t View.impressionableClickLocation(impressionMetrics:position:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B7957820(a1, v10, &qword_1EBA45C90, &qword_1B7A9C190);
  sub_1B7A995C0();
  View.impressionableClickLocation(data:)(v13, a4, a5);
  return sub_1B7957888(v13, &qword_1EBA465D0, &qword_1B7A9D3C0);
}

uint64_t sub_1B79B4908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v3 = type metadata accessor for ClickLocationViewModifier(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &KeyPath - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&KeyPath - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF8, &qword_1B7A9EEF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &KeyPath - v12;
  KeyPath = swift_getKeyPath();
  sub_1B7957820(v2 + *(v3 + 24), v7, &qword_1EBA465D0, &qword_1B7A9D3C0);
  v14 = sub_1B7A995F0();
  v15 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  sub_1B7957888(v7, &qword_1EBA465D0, &qword_1B7A9D3C0);
  if (v15 == 1)
  {
    v16 = v2;
    sub_1B797BEA8(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
    v16 = v2;
    sub_1B7A986D0();
    v17 = sub_1B7A96C20();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  v18 = &v13[*(v11 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EB0, &qword_1B7A9EF00);
  sub_1B797E788(v10, v18 + *(v19 + 28), &qword_1EBA45D18, &qword_1B7A9C320);
  *v18 = KeyPath;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47000, &qword_1B7A9EF08);
  (*(*(v20 - 8) + 16))(v13, v29, v20);
  sub_1B79B556C(v16, &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1B79B55D0(&KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = swift_getKeyPath();
  v24 = v30;
  sub_1B797E788(v13, v30, &qword_1EBA46FF8, &qword_1B7A9EEF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47008, &qword_1B7A9EF38);
  v26 = v24 + *(result + 36);
  *v26 = sub_1B79B5634;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  return result;
}

void *sub_1B79B4CF4(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B79B56A4(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B79B4D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1B7957820(a1, &v12 - v6, &qword_1EBA45D18, &qword_1B7A9C320);
  v8 = sub_1B7957820(v7, v4, &qword_1EBA45D18, &qword_1B7A9C320);
  sub_1B79B56A4(v8, v9, v10);
  sub_1B7A978A0();
  return sub_1B7957888(v7, &qword_1EBA45D18, &qword_1B7A9C320);
}

uint64_t sub_1B79B4EC4(int a1, uint64_t a2)
{
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = (&v38 - v4);
  v5 = sub_1B7A96C20();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46650, &qword_1B7A9D630);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1B7A99900();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = sub_1B7A995F0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v41 = type metadata accessor for ClickLocationViewModifier(0);
  sub_1B7957820(a2 + *(v41 + 24), v17, &qword_1EBA465D0, &qword_1B7A9D3C0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1B7957888(v17, &qword_1EBA465D0, &qword_1B7A9D3C0);
  }

  (*(v19 + 32))(v25, v17, v18);
  sub_1B797BE80(v14);
  sub_1B7A998A0();
  sub_1B7A99850();
  sub_1B7A99910();
  (*(v51 + 8))(v11, v52);
  (*(v49 + 8))(v14, v50);
  if (!v53)
  {
    return (*(v19 + 8))(v25, v18);
  }

  if ((v48 & 1) == 0)
  {
    sub_1B7A99830();

    return (*(v19 + 8))(v25, v18);
  }

  v27 = v42;
  sub_1B797BEA8(v42);
  v28 = v46;
  v29 = v47;
  if ((*(v46 + 48))(v27, 1, v47) == 1)
  {
    sub_1B7957888(v27, &qword_1EBA45D18, &qword_1B7A9C320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
    v30 = v44;
    sub_1B7A986D0();
    sub_1B7A96C00();
    (*(v28 + 8))(v30, v29);
    v31 = v43;
    sub_1B7A995B0();

    sub_1B7A99820();

    v32 = *(v19 + 8);
    v32(v31, v18);
    return (v32)(v25, v18);
  }

  else
  {
    (*(v28 + 32))(v45, v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
    v33 = v44;
    sub_1B7A986D0();
    sub_1B7A96C00();
    v52 = *(v28 + 8);
    v52(v33, v29);
    v34 = v40;
    v39 = v25;
    sub_1B7A995B0();

    v35 = v45;
    sub_1B7A96C00();
    v36 = v43;
    sub_1B7A995D0();

    v37 = *(v19 + 8);
    v37(v34, v18);
    sub_1B7A99820();

    v37(v36, v18);
    v52(v35, v29);
    return (v37)(v39, v18);
  }
}

uint64_t sub_1B79B556C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickLocationViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79B55D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickLocationViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79B5634(int a1)
{
  v3 = *(type metadata accessor for ClickLocationViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79B4EC4(a1, v4);
}

unint64_t sub_1B79B56A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FDA0;
  if (!qword_1EDC0FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FDA0);
  }

  return result;
}

unint64_t sub_1B79B5708()
{
  result = qword_1EDC0FD30;
  if (!qword_1EDC0FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47008, &qword_1B7A9EF38);
    v3 = sub_1B79B5794();
    sub_1B797D3EC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD30);
  }

  return result;
}

unint64_t sub_1B79B5794()
{
  result = qword_1EDC0FD50;
  if (!qword_1EDC0FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46FF8, &qword_1B7A9EEF8);
    sub_1B797EC34(&qword_1EDC0FD00, &qword_1EBA47000, &qword_1B7A9EF08, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0FCD0, &qword_1EBA45EB0, &qword_1B7A9EF00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD50);
  }

  return result;
}

uint64_t sub_1B79B5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B7A97B10();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1B7A97B30();
}

uint64_t Component.model(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a3 + 8);

  return View.dataObject<A>(_:)(a1, a2, AssociatedTypeWitness, v7);
}

uint64_t Component.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return _ComponentBody.init(_:)(v9, a1, a2, a3, v11);
}

uint64_t _ComponentBody.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = (a4 + *(type metadata accessor for _ComponentBody(0, a2, a3, a5) + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v8 = sub_1B7A64A18(AssociatedTypeWitness, v10, v11, v12);
  v8[1] = v13;
  v14 = *(*(a2 - 8) + 32);

  return v14(a4, a1, a2);
}

uint64_t sub_1B79B5B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return sub_1B7A64D4C(v4, AssociatedTypeWitness, v6, a2);
}

uint64_t _ComponentBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v113 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v91 - v6;
  v7 = type metadata accessor for ComponentMenuContent(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent, &unk_1B7AA36F8);
  v134 = AssociatedTypeWitness;
  v135 = v7;
  v136 = AssociatedConformanceWitness;
  v137 = v9;
  v124 = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v91 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v91 - v14;
  v105 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v100 = v16;
  v103 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v91 - v18;
  v126 = AssociatedConformanceWitness;
  v127 = AssociatedTypeWitness;
  v20 = type metadata accessor for ActionButton(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v108 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v91 - v21;
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getAssociatedConformanceWitness();
  v134 = v20;
  v135 = v13;
  v136 = WitnessTable;
  v137 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v101 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v91 - v25;
  v109 = v20;
  v134 = v20;
  v135 = v13;
  v112 = v13;
  v98 = WitnessTable;
  v136 = WitnessTable;
  v137 = v23;
  v96 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = v24;
  v120 = v9;
  v134 = v24;
  v135 = v7;
  v121 = v7;
  v123 = OpaqueTypeConformance2;
  v136 = OpaqueTypeConformance2;
  v137 = v9;
  v27 = swift_getOpaqueTypeMetadata2();
  v107 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v104 = &v91 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v91 - v36;
  v115 = v27;
  v117 = sub_1B7A97B40();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v124 = &v91 - v38;
  v39 = v113;
  v40 = v114;
  sub_1B79B5B94(v113, v37);
  v118 = v2;
  v41 = swift_getAssociatedConformanceWitness();
  sub_1B7A99140();
  v44 = *(v32 + 8);
  v42 = v32 + 8;
  v43 = v44;
  v44(v37, v31);
  if (v132)
  {
    sub_1B795C1E4(&v130, &v134);
    v45 = sub_1B7A96FC0();
    v46 = *(*(v45 - 8) + 56);
    v95 = v42;
    v47 = v99;
    v46(v99, 1, 1, v45);
    sub_1B7999E90(&v134, &v130);
    v94 = v43;
    v48 = v105;
    v49 = *(v105 + 16);
    v93 = v31;
    v50 = v34;
    v51 = v103;
    v49(v103, v40, v39);
    v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v53 = swift_allocObject();
    v100 = v41;
    v54 = v118;
    *(v53 + 16) = v118;
    *(v53 + 24) = v3;
    (*(v48 + 32))(v53 + v52, v51, v39);
    v55 = v106;
    ActionButton.init(role:action:label:)(v47, &v130, sub_1B79B6D54, v53, v127, v126, v106);
    sub_1B79B5B94(v39, v50);
    v56 = v110;
    (*(v3 + 72))(v50, v54, v3);
    v57 = v50;
    v58 = v93;
    v94(v57, v93);
    v59 = v97;
    v60 = v109;
    v61 = v112;
    sub_1B7A98110();
    (*(v111 + 8))(v56, v61);
    (*(v108 + 8))(v55, v60);
    v132 = v58;
    v133 = v100;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v130);
    sub_1B79B5B94(v39, boxed_opaque_existential_1Tm);
    v63 = v102;
    v64 = v119;
    v65 = v123;
    sub_1B79B6B48(&v130, v119, v123, v102);
    (*(v101 + 8))(v59, v64);
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v67 = v120;
    v66 = v121;
    *&v130 = v64;
    *(&v130 + 1) = v121;
    v131 = v65;
    v132 = v120;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v104;
    v70 = v115;
    sub_1B7957EE0(v63, v115, v68);
    v71 = *(v107 + 8);
    v71(v63, v70);
    sub_1B7957EE0(v69, v70, v68);
    *&v130 = v127;
    *(&v130 + 1) = v66;
    v131 = v126;
    v132 = v67;
    v72 = swift_getOpaqueTypeConformance2();
    sub_1B79B5878(v63, v70, OpaqueTypeMetadata2, v68, v72);
    v73 = v63;
    v74 = v123;
    v71(v73, v70);
    v71(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(&v134);
  }

  else
  {
    sub_1B79B69B8(&v130);
    sub_1B79B5B94(v39, v34);
    v75 = v93;
    (*(v3 + 64))(v34, v118, v3);
    v43(v34, v31);
    v137 = v31;
    v138 = v41;
    v76 = __swift_allocate_boxed_opaque_existential_1Tm(&v134);
    sub_1B79B5B94(v39, v76);
    v77 = v92;
    v79 = v126;
    v78 = v127;
    sub_1B79B6B48(&v134, v127, v126, v92);
    (*(v95 + 8))(v75, v78);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    v67 = v120;
    v66 = v121;
    v134 = v78;
    v135 = v121;
    v136 = v79;
    v137 = v120;
    v118 = MEMORY[0x1E697CDD8];
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v91;
    v82 = OpaqueTypeMetadata2;
    sub_1B7957EE0(v77, OpaqueTypeMetadata2, v80);
    v83 = *(v94 + 1);
    v83(v77, v82);
    sub_1B7957EE0(v81, v82, v80);
    v64 = v119;
    v134 = v119;
    v135 = v66;
    v74 = v123;
    v136 = v123;
    v137 = v67;
    v84 = swift_getOpaqueTypeConformance2();
    sub_1B7959A28(v77, v115, v82, v84, v80);
    v83(v77, v82);
    v83(v81, v82);
  }

  v134 = v64;
  v135 = v66;
  v136 = v74;
  v137 = v67;
  v85 = swift_getOpaqueTypeConformance2();
  v134 = v127;
  v135 = v66;
  v136 = v126;
  v137 = v67;
  v86 = swift_getOpaqueTypeConformance2();
  v128 = v85;
  v129 = v86;
  v87 = v117;
  v88 = swift_getWitnessTable();
  v89 = v124;
  sub_1B7957EE0(v124, v87, v88);
  return (*(v116 + 8))(v89, v87);
}

uint64_t sub_1B79B69B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47020, &qword_1B7A9EFA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79B6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  v10 = type metadata accessor for _ComponentBody(0, a2, a3, v9);
  sub_1B79B5B94(v10, v8);
  (*(a3 + 64))(v8, a2, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1B79B6B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for ComponentMenuContent(255);
  v8 = sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent, &unk_1B7AA36F8);
  v21 = a2;
  v22 = v7;
  v23 = a3;
  v24 = v8;
  v20[0] = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v20[4] = a1;
  v16 = swift_checkMetadataState();
  sub_1B7A98130();
  v21 = a2;
  v22 = v16;
  v23 = a3;
  v24 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v10 + 8);
  v18(v12, OpaqueTypeMetadata2);
  sub_1B7957EE0(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v18)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1B79B6D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for _ComponentBody(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1B79B6A20(v8, v5, v6);
}

uint64_t sub_1B79B6DE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A99120();
  v4 = type metadata accessor for ComponentMenuContent(0);
  sub_1B7999E90(a1, a2 + v4[5]);
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  v6 = a2 + v4[7];
  KeyPath = swift_getKeyPath();

  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t _ComponentBodyButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_1B7A97E60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47028, &qword_1B7A9EFB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_1B7A98750();
  v11 = sub_1B79B70C0();
  sub_1B79B7124(v11, v12, v13);
  sub_1B7A98120();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B79B70C0()
{
  result = qword_1EBA47030;
  if (!qword_1EBA47030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47028, &qword_1B7A9EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47030);
  }

  return result;
}

unint64_t sub_1B79B7124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47038;
  if (!qword_1EBA47038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47038);
  }

  return result;
}

uint64_t sub_1B79B71D8(uint64_t a1)
{
  v2 = sub_1B7A97E60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47028, &qword_1B7A9EFB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_1B7A98750();
  v11 = sub_1B79B70C0();
  sub_1B79B7124(v11, v12, v13);
  sub_1B7A98120();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B79B7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47040[0];
  if (!qword_1EBA47040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47040);
  }

  return result;
}

uint64_t sub_1B79B73FC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v1 = type metadata accessor for DataObject(319, AssociatedTypeWitness, v4, v5);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B79B74B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1B79B75F8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1B79B77FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Models.AlertAction.init(contentUnavailableError:retry:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v79 = a2;
  v86 = a4;
  v5 = sub_1B7A98F40();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470D0, &qword_1B7AA9510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470D8, &qword_1B7A9F158);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v65 - v12;
  v13 = sub_1B7A98F80();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1B7A99F00();
  v74 = *(v89 - 8);
  v75 = v89 - 8;
  v76 = v74;
  MEMORY[0x1EEE9AC00](v89 - 8);
  v65 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v65 - v17;
  v18 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B7A9A280();
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B7A97880();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentUnavailableTextLogBuilder();
  inited = swift_initStackObject();
  inited[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0, &unk_1B7AA4AC0);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 2;
  inited[3] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8, &unk_1B7A9F160);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 2;
  inited[4] = v27;
  v28 = a1;
  v29 = a1;
  v30 = sub_1B7A4309C(a1);
  v32 = v31;
  v34 = v33;

  sub_1B7A97870();
  v81 = sub_1B7A98050();
  v80 = v35;
  sub_1B795A450(v30, v32, v34 & 1);

  v36 = *(v22 + 8);
  v36(v24, v21);
  v37 = a1;

  v88 = a1;
  v38 = sub_1B7A38084(a1, inited);
  v40 = v39;
  LOBYTE(v32) = v41;
  sub_1B7A97870();
  v78 = sub_1B7A98050();
  v77 = v42;
  sub_1B795A450(v38, v40, v32 & 1);

  v36(v24, v21);
  v43 = v70;
  sub_1B7A9A200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  v44 = swift_allocObject();
  v69 = xmmword_1B7A9C180;
  *(v44 + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v82 = inited;
  v45 = sub_1B7A3852C();
  *(&v91 + 1) = MEMORY[0x1E69E6158];
  *&v90 = v45;
  *(&v90 + 1) = v46;
  sub_1B7A98C70();
  sub_1B7957888(&v90, &qword_1EBA46B50, &qword_1B7A9DD90);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  v47 = v72;
  sub_1B7A99E30();

  (*(v73 + 8))(v43, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46410, &qword_1B7A9D0C8);
  v48 = v76;
  v49 = swift_allocObject();
  *(v49 + 16) = v69;
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  sub_1B7A96AC0();
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_1B7A99ED0();
  v50 = MEMORY[0x1E69AB020];
  v51 = v79;
  if (!v79)
  {
    v52 = v87;
    v57 = v88;
    if ((sub_1B7A99DD0() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v52 = v87;

  sub_1B7A96AC0();
  sub_1B7A98F70();
  *(&v91 + 1) = sub_1B7A98FC0();
  v92 = v50;
  __swift_allocate_boxed_opaque_existential_1Tm(&v90);

  sub_1B7A98FB0();
  v53 = v67;
  sub_1B7A99ED0();
  v54 = v68;
  (*(v48 + 32))(v68, v53, v89);
  v93 = v49;
  v56 = *(v49 + 16);
  v57 = v88;
  if (v56 >= *(v49 + 24) >> 1)
  {
    v49 = sub_1B7987A70(1, v56 + 1, 1, v49);
    v93 = v49;
  }

  sub_1B79B8434(0, 0, 1, v54, v55);
  sub_1B7974C44(v51, v52);
  v50 = MEMORY[0x1E69AB020];
  if (sub_1B7A99DD0())
  {
LABEL_9:
    sub_1B7A96AC0();
    sub_1B7A98F70();
    *(swift_allocObject() + 16) = v57;
    *(&v91 + 1) = sub_1B7A98FC0();
    v92 = v50;
    __swift_allocate_boxed_opaque_existential_1Tm(&v90);
    v58 = v57;
    sub_1B7A98FB0();
    v59 = v65;
    sub_1B7A99ED0();
    v60 = v66;
    (*(v48 + 32))(v66, v59, v89);
    v93 = v49;
    v62 = *(v49 + 16);
    if (v62 >= *(v49 + 24) >> 1)
    {
      v93 = sub_1B7987A70(1, v62 + 1, 1, v49);
    }

    sub_1B79B8434(0, 0, 1, v60, v61);
  }

LABEL_12:
  sub_1B7A98F70();
  v63 = sub_1B7A99F30();
  (*(*(v63 - 8) + 56))(v84, 1, 1, v63);
  sub_1B7A98F30();
  sub_1B7A99E90();
  v64 = v82;
  swift_setDeallocating();

  sub_1B7974C44(v51, v52);
}

void sub_1B79B8370(uint64_t a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  v2 = sub_1B7A96B00();
  v3 = AMSLogableError();

  sub_1B7A9A4B0();
  v4 = sub_1B7A9A480();
  [v1 setString_];
}

unint64_t sub_1B79B8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *v5;
  result = sub_1B7A99F00();
  v12 = *(result - 8);
  v13 = *(v12 + 72);
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v26 = a4;
  v16 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = v16 + v13 * a1;
  result = swift_arrayDestroy();
  v18 = a3 - v14;
  if (__OFSUB__(a3, v14))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v13 * a3;
  if (v18)
  {
    v20 = *(v10 + 16);
    if (!__OFSUB__(v20, a2))
    {
      result = v17 + v19;
      v21 = v16 + v13 * a2;
      if (v17 + v19 < v21 || result >= v21 + (v20 - a2) * v13)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v21)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v23 = *(v10 + 16);
      v24 = __OFADD__(v23, v18);
      v25 = v23 + v18;
      if (!v24)
      {
        *(v10 + 16) = v25;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1B7957888(v26, &qword_1EBA470D8, &qword_1B7A9F158);
  }

  if (v19 < 1)
  {
    return sub_1B7957888(v26, &qword_1EBA470D8, &qword_1B7A9F158);
  }

  result = (*(v12 + 16))(v17, v26, v15);
  if (v13 >= v19)
  {
    return sub_1B7957888(v26, &qword_1EBA470D8, &qword_1B7A9F158);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1B79B85EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408, &qword_1B7A9D0C0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B79B86D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B79B8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s13PopupHUDModelC8RowModelVMa(0);
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

uint64_t View.dispatch<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v43 = a5;
  v44 = a1;
  v45 = a2;
  v38 = a6;
  swift_getAssociatedTypeWitness();
  v37 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v13, v14);
  v15 = sub_1B7A98870();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v36 - v16;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a4, a6, a7);
  WitnessTable = swift_getWitnessTable();
  v23 = type metadata accessor for _IntentDispatchViewModifier(0, v21, WitnessTable, v22);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v36 - v25;
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v28 = a3;
  v30 = v43;
  v29 = v44;
  v31 = v37;
  v32 = v38;
  v27[4] = v43;
  v27[5] = v32;
  v27[6] = v31;
  (*(v17 + 16))(v20, v29, a4);
  v33 = v40;
  (*(v41 + 16))(v40, v45, v42);
  v34 = sub_1B79B8F04(sub_1B79C9444, v27, v20, v33, v21, WitnessTable, v26);
  MEMORY[0x1B8CA96D0](v26, v28, v23, v30, v34);
  return (*(v24 + 8))(v26, v23);
}

uint64_t View.dispatch<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a7;
  v38 = a5;
  v39 = a1;
  v40 = a2;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v13 = sub_1B7A98870();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - v14;
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _OneShotIntentDispatchWorker(255, a4, a6, v19);
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for _IntentDispatchViewModifier(0, v20, WitnessTable, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v28 = v38;
  v27 = v39;
  v29 = v33;
  v26[4] = v38;
  v26[5] = v29;
  (*(v15 + 16))(v18, v27, a4);
  v30 = v35;
  (*(v36 + 16))(v35, v40, v37);
  v31 = sub_1B79B8F04(sub_1B79C9440, v26, v18, v30, v20, WitnessTable, v25);
  MEMORY[0x1B8CA96D0](v25, a3, v22, v28, v31);
  return (*(v23 + 8))(v25, v22);
}

double sub_1B79B8F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for _IntentDispatchViewModifier(0, a5, a6, a4);
  v13 = a7 + v12[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a7 + v12[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for _IntentObserverKey(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  swift_getFunctionTypeMetadata1();
  v20 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v18, v20, v18, WitnessTable);
  *v14 = v33;
  *(v14 + 16) = v34;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a1;
  v22[5] = a2;
  *(a7 + 32) = sub_1B7A97110();
  *(a7 + 40) = v23;
  *(a7 + 48) = v24 & 1;
  (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v12[10], a3, AssociatedTypeWitness);
  v25 = v12[11];
  v26 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v26, v27, v28);
  v29 = sub_1B7A98870();
  (*(*(v29 - 8) + 32))(a7 + v25, a4, v29);
  result = 0.0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t View.dispatch<A>(_:into:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v40 = a6;
  v34 = a4;
  v44 = a2;
  v45 = a3;
  v42 = a1;
  v43 = sub_1B7A999B0();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v13, v14);
  v38 = sub_1B7A98870();
  v15 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - v16;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _OneShotIntentDispatchWorker(255, a5, a7, v21);
  WitnessTable = swift_getWitnessTable();
  v24 = type metadata accessor for _IntentDispatchViewModifier(0, v22, WitnessTable, v23);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v29 = v40;
  v30 = v35;
  v28[4] = v40;
  v28[5] = v30;
  (*(v17 + 16))(v20, v42, a5);
  v31 = v37;
  (*(v15 + 16))(v37, v44, v38);
  v32 = v39;
  (*(v41 + 16))(v39, v45, v43);
  sub_1B79B9500(sub_1B79B9844, v28, v20, v31, v32, v22, WitnessTable, v27);
  MEMORY[0x1B8CA96D0](v27, v34, v24, v29);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_1B79B9500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = type metadata accessor for _IntentDispatchViewModifier(0, a6, a7, a4);
  v14 = a8 + v13[12];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a8 + v13[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for _IntentObserverKey(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  swift_getFunctionTypeMetadata1();
  v21 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v19, v21, v19, WitnessTable);
  *v15 = v39;
  *(v15 + 16) = v40;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a1;
  v23[5] = a2;

  *(a8 + 32) = sub_1B7A97110();
  *(a8 + 40) = v24;
  *(a8 + 48) = v25 & 1;
  v26 = *(AssociatedTypeWitness - 8);
  (*(v26 + 16))(a8 + v13[10], a3, AssociatedTypeWitness);
  v27 = v13[11];
  v28 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v28, v29, v30);
  v31 = sub_1B7A98870();
  v32 = *(v31 - 8);
  (*(v32 + 16))(a8 + v27, a4, v31);
  v33 = sub_1B7A999B0();
  *(a8 + 24) = v33;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a8);
  (*(*(v33 - 8) + 32))(boxed_opaque_existential_1Tm, a5, v33);

  (*(v32 + 8))(a4, v31);
  return (*(v26 + 8))(a3, AssociatedTypeWitness);
}

uint64_t sub_1B79B9848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OneShotIntentDispatchWorker(0, *(v4 + 24), *(v4 + 40), a4);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t View.dispatch<A>(_:into:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a9;
  v44 = a6;
  v37 = a4;
  v48 = a2;
  v49 = a3;
  v46 = a1;
  v47 = sub_1B7A999B0();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a7;
  swift_getAssociatedTypeWitness();
  v38 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v15, v16);
  v42 = sub_1B7A98870();
  v17 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - v18;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a5, a7, a8);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for _IntentDispatchViewModifier(0, v23, WitnessTable, v24);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v36 - v27;
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v30 = v44;
  v31 = v38;
  v32 = v39;
  v29[4] = v44;
  v29[5] = v32;
  v29[6] = v31;
  (*(v19 + 16))(v22, v46, a5);
  v33 = v41;
  (*(v17 + 16))(v41, v48, v42);
  v34 = v43;
  (*(v45 + 16))(v43, v49, v47);
  sub_1B79B9500(sub_1B79B9C3C, v29, v22, v33, v34, v23, WitnessTable, v28);
  MEMORY[0x1B8CA96D0](v28, v37, v25, v30);
  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_1B79B9C40()
{
  type metadata accessor for _ContinuousIntentDispatchWorker(0, v0[3], v0[5], v0[6]);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t View.dispatch<A, B>(_:into:following:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v51 = a9;
  v47 = a7;
  v48 = a1;
  v38 = a4;
  v49 = a2;
  v50 = a3;
  type metadata accessor for IntentResult(255, a6, a3, a4);
  v13 = sub_1B7A98870();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v37 - v14;
  v39 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v16, v17);
  v18 = sub_1B7A98870();
  v42 = *(v18 - 8);
  v43 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v37 - v19;
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _OneShotIntentDispatchWorker(255, a5, a8, v24);
  WitnessTable = swift_getWitnessTable();
  v26 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, v25, a6, WitnessTable);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v37 - v28;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v32 = v47;
  v31 = v48;
  v30[4] = a6;
  v30[5] = v32;
  v30[6] = v39;
  (*(v20 + 16))(v23, v31, a5);
  v33 = v41;
  (*(v42 + 16))(v41, v49, v43);
  v34 = v44;
  (*(v45 + 16))(v44, v50, v46);
  v35 = sub_1B79BA028(sub_1B79C9448, v30, v23, v33, v34, v25, a6, WitnessTable, v29);
  MEMORY[0x1B8CA96D0](v29, v38, v26, v32, v35);
  return (*(v27 + 8))(v29, v26);
}

double sub_1B79BA028@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a6, a7, a8);
  v15 = a9 + v14[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a9 + v14[16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for _IntentObserverKey(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  swift_getFunctionTypeMetadata1();
  v22 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v20, v22, v20, WitnessTable);
  *v16 = v41;
  *(v16 + 16) = v42;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = a1;
  v24[6] = a2;
  *(a9 + 32) = sub_1B7A97110();
  *(a9 + 40) = v25;
  *(a9 + 48) = v26 & 1;
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v14[12], a3, AssociatedTypeWitness);
  v27 = v14[13];
  v28 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v28, v29, v30);
  v31 = sub_1B7A98870();
  (*(*(v31 - 8) + 32))(a9 + v27, a4, v31);
  v32 = v14[14];
  type metadata accessor for IntentResult(255, a7, v33, v34);
  v35 = sub_1B7A98870();
  (*(*(v35 - 8) + 32))(a9 + v32, a5, v35);
  result = 0.0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  return result;
}

uint64_t View.dispatch<A, B>(_:into:following:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a5;
  v49 = a1;
  v50 = a8;
  v54 = a3;
  v55 = a4;
  v52 = a2;
  v56 = a9;
  v53 = sub_1B7A999B0();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntentResult(255, a7, v13, v14);
  v15 = sub_1B7A98870();
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v40 - v16;
  v41 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v18, v19);
  v44 = sub_1B7A98870();
  v20 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - v21;
  v22 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for _OneShotIntentDispatchWorker(255, a6, a10, v26);
  WitnessTable = swift_getWitnessTable();
  v40 = a7;
  v28 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, v27, a7, WitnessTable);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v40 - v30;
  v32 = swift_allocObject();
  v32[2] = v57;
  v32[3] = a6;
  v33 = a6;
  v34 = v49;
  v35 = v50;
  v32[4] = a7;
  v32[5] = v35;
  v32[6] = v41;
  (*(v22 + 16))(v25, v34, v33);
  v36 = v43;
  (*(v20 + 16))(v43, v52, v44);
  v37 = v45;
  (*(v46 + 16))(v45, v54, v47);
  v38 = v48;
  (*(v51 + 16))(v48, v55, v53);
  sub_1B79BA77C(sub_1B79BA744, v32, v25, v36, v37, v38, v27, v40, v31, WitnessTable);
  MEMORY[0x1B8CA96D0](v31, v57, v28, v35);
  return (*(v29 + 8))(v31, v28);
}

uint64_t sub_1B79BA748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OneShotIntentDispatchWorker(0, *(v4 + 24), *(v4 + 48), a4);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B79BA77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a7, a8, a10);
  v15 = a9 + v14[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a9 + v14[16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for _IntentObserverKey(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  swift_getFunctionTypeMetadata1();
  v22 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v20, v22, v20, WitnessTable);
  *v16 = v47;
  *(v16 + 16) = v48;
  v24 = swift_allocObject();
  v24[2] = a7;
  v24[3] = a8;
  v24[4] = a10;
  v24[5] = a1;
  v24[6] = a2;

  *(a9 + 32) = sub_1B7A97110();
  *(a9 + 40) = v25;
  *(a9 + 48) = v26 & 1;
  v27 = *(AssociatedTypeWitness - 8);
  (*(v27 + 16))(a9 + v14[12], a3, AssociatedTypeWitness);
  v28 = v14[13];
  v29 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v29, v30, v31);
  v32 = sub_1B7A98870();
  v33 = *(v32 - 8);
  (*(v33 + 16))(a9 + v28, a4, v32);
  v34 = v14[14];
  type metadata accessor for IntentResult(255, a8, v35, v36);
  v37 = sub_1B7A98870();
  v38 = *(v37 - 8);
  (*(v38 + 16))(a9 + v34, a5, v37);
  v39 = sub_1B7A999B0();
  *(a9 + 24) = v39;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a9);
  (*(*(v39 - 8) + 32))(boxed_opaque_existential_1Tm, a6, v39);

  (*(v38 + 8))(a5, v37);
  (*(v33 + 8))(a4, v32);
  return (*(v27 + 8))(a3, AssociatedTypeWitness);
}

uint64_t View.dispatch<A, B>(_:into:following:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a4;
  v49 = a7;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a9;
  type metadata accessor for IntentResult(255, a6, a3, a4);
  v13 = sub_1B7A98870();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - v14;
  v42 = a8;
  swift_getAssociatedTypeWitness();
  v41 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v16, v17);
  v45 = sub_1B7A98870();
  v18 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v40 - v19;
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a5, a8, a10);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, v24, a6, WitnessTable);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v29 = swift_allocObject();
  v29[2] = v54;
  v29[3] = a5;
  v30 = a5;
  v29[4] = a6;
  v31 = a6;
  v33 = v49;
  v32 = v50;
  v34 = v41;
  v35 = v42;
  v29[5] = v49;
  v29[6] = v35;
  v29[7] = v34;
  (*(v20 + 16))(v23, v32, v30);
  v36 = v44;
  (*(v18 + 16))(v44, v51, v45);
  v37 = v46;
  (*(v47 + 16))(v46, v52, v48);
  v38 = sub_1B79BA028(sub_1B79C944C, v29, v23, v36, v37, v24, v31, WitnessTable, v28);
  MEMORY[0x1B8CA96D0](v28, v54, v25, v33, v38);
  return (*(v26 + 8))(v28, v25);
}

uint64_t View.dispatch<A, B>(_:into:following:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a5;
  v52 = a8;
  v53 = a1;
  v57 = a3;
  v58 = a4;
  v55 = a2;
  v59 = a9;
  v56 = sub_1B7A999B0();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntentResult(255, a7, v14, v15);
  v16 = sub_1B7A98870();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - v17;
  v43 = a10;
  swift_getAssociatedTypeWitness();
  v44 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v19, v20);
  v47 = sub_1B7A98870();
  v21 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - v22;
  v23 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a6, a10, a11);
  WitnessTable = swift_getWitnessTable();
  v42 = a7;
  v28 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, v27, a7, WitnessTable);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v41 - v30;
  v32 = swift_allocObject();
  v32[2] = v60;
  v32[3] = a6;
  v33 = a6;
  v35 = v52;
  v34 = v53;
  v32[4] = a7;
  v32[5] = v35;
  v36 = v44;
  v32[6] = v43;
  v32[7] = v36;
  (*(v23 + 16))(v26, v34, v33);
  v37 = v46;
  (*(v21 + 16))(v46, v55, v47);
  v38 = v48;
  (*(v49 + 16))(v48, v57, v50);
  v39 = v51;
  (*(v54 + 16))(v51, v58, v56);
  sub_1B79BA77C(sub_1B79BB37C, v32, v26, v37, v38, v39, v27, v42, v31, WitnessTable);
  MEMORY[0x1B8CA96D0](v31, v60, v28, v35);
  return (*(v29 + 8))(v31, v28);
}

uint64_t sub_1B79BB380()
{
  type metadata accessor for _ContinuousIntentDispatchWorker(0, v0[3], v0[6], v0[7]);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B79BB40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v13 = type metadata accessor for IntentResult(0, a4, v11, v12);
  v14 = *(a2 + *(v13 + 28));
  (*(*(v13 - 8) + 8))(a2, v13);
  result = type metadata accessor for _DispatchID(0, a3, a5, v15);
  *(a6 + *(result + 36)) = v14;
  v17 = a6 + *(result + 40);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  return result;
}

uint64_t sub_1B79BB4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17 = type metadata accessor for IntentResult(0, a5, v15, v16);
  v18 = *(a2 + *(v17 + 28));
  (*(*(v17 - 8) + 8))(a2, v17);
  v20 = type metadata accessor for _DispatchID(0, a4, a7, v19);
  *(a8 + *(v20 + 36)) = v18;
  v23 = type metadata accessor for IntentResult(0, a6, v21, v22);
  v24 = *(a3 + *(v23 + 28));
  v25 = *(a3 + *(v23 + 32));
  result = (*(*(v23 - 8) + 8))(a3, v23);
  v27 = a8 + *(v20 + 40);
  *v27 = v24;
  *(v27 + 8) = v25;
  *(v27 + 16) = 0;
  return result;
}

uint64_t sub_1B79BB628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _DispatchID(0, a3, a4, a4);
  if (*(a1 + *(v6 + 36)) != *(a2 + *(v6 + 36)))
  {
    goto LABEL_18;
  }

  v7 = *(v6 + 40);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 16);
  v10 = (a2 + v7);
  if (v9)
  {
    if (!*(v10 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    v12 = *v10;
    if (*(v10 + 16))
    {
      v12 = 0;
    }

    if (v10[2])
    {
      return v11 & 1;
    }

    v13 = v10[1];
    if (*v8 != v12 || v8[1] != v13)
    {
      return v11 & 1;
    }
  }

  v15 = sub_1B7A98D90();
  v17 = v16;
  if (v15 == sub_1B7A98D90() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_1B7A9AE80();

    if ((v19 & 1) == 0)
    {
LABEL_18:
      v11 = 0;
      return v11 & 1;
    }
  }

  sub_1B7A98D70();
  v20 = v32;
  v21 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v30[3] = v20;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1Tm, v21, v20);
  sub_1B7A98D70();
  v23 = v29;
  v24 = __swift_project_boxed_opaque_existential_1(v28, v29);
  v27[3] = v23;
  v25 = __swift_allocate_boxed_opaque_existential_1Tm(v27);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  v11 = sub_1B7A999A0();
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v11 & 1;
}

uint64_t sub_1B79BB878(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A98D90();
}

uint64_t sub_1B79BB900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v90 = a3;
  v88 = *(a2 - 8);
  v93 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v94 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v9, v10);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v64 - v12;
  v91 = v6;
  v92 = v7;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for _DispatchID(0, v13, AssociatedConformanceWitness, v18);
  v85 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v64 - v20;
  swift_getWitnessTable();
  v21 = sub_1B7A97C30();
  v71 = v21;
  WitnessTable = swift_getWitnessTable();
  v75 = WitnessTable;
  v76 = v19;
  v74 = swift_getWitnessTable();
  v99 = v21;
  v100 = v19;
  v101 = WitnessTable;
  v102 = v74;
  v81 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v66 = &v64 - v23;
  v72 = sub_1B7A97590();
  v86 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v64 - v24;
  v25 = AssociatedConformanceWitness;
  v68 = AssociatedConformanceWitness;
  type metadata accessor for _IntentProgress(255, v13, AssociatedConformanceWitness, v26);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v79 = sub_1B7A97DF0();
  v80 = sub_1B7A97590();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v77 = &v64 - v30;
  v31 = v8;
  v32 = *(v8 + 40);
  v33 = *(v14 + 16);
  v67 = v13;
  v33(v16, v3 + v32, v13, v29);
  v34 = sub_1B7A98870();
  v35 = v3;
  v65 = v3;
  v36 = v82;
  MEMORY[0x1B8CA9A40](v34);
  v37 = v70;
  sub_1B79BB40C(v16, v36, v13, AssociatedTypeWitness, v25, v70);
  v38 = v88;
  AssociatedTypeWitness = *(v88 + 16);
  v39 = v94;
  v64 = v31;
  AssociatedTypeWitness(v94, v35, v31);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v91;
  *(v41 + 16) = v92;
  *(v41 + 24) = v42;
  v88 = *(v38 + 32);
  (v88)(v41 + v40, v39, v31);
  v82 = swift_checkMetadataState();
  v43 = v37;
  v44 = v76;
  v45 = v75;
  v46 = v74;
  sub_1B7A984C0();

  (*(v85 + 8))(v43, v44);
  v47 = v94;
  v48 = v64;
  AssociatedTypeWitness(v94, v65, v64);
  v49 = swift_allocObject();
  v50 = v91;
  *(v49 + 16) = v92;
  *(v49 + 24) = v50;
  (v88)(v49 + v40, v47, v48);
  v99 = v82;
  v100 = v44;
  v101 = v45;
  v102 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v73;
  v53 = OpaqueTypeMetadata2;
  v54 = v66;
  sub_1B7A984A0();

  (*(v84 + 8))(v54, v53);
  v97 = OpaqueTypeConformance2;
  v98 = MEMORY[0x1E69805D0];
  v55 = v72;
  v56 = swift_getWitnessTable();
  v57 = v69;
  sub_1B79E3830(v67, 0, 0, v55, v67, v56, v68);
  (*(v86 + 8))(v52, v55);
  v58 = swift_getWitnessTable();
  v95 = v56;
  v96 = v58;
  v59 = v80;
  v60 = swift_getWitnessTable();
  v61 = v77;
  sub_1B7957EE0(v57, v59, v60);
  v62 = *(v83 + 8);
  v62(v57, v59);
  sub_1B7957EE0(v61, v59, v60);
  return (v62)(v61, v59);
}

uint64_t sub_1B79BC1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98C30();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v87 = sub_1B7A98870();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v73 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v85 = v17;
  v86 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318, &qword_1B7A9F4B8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v73 - v24;
  v26 = sub_1B7A999B0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v83 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v91);
  if (v93)
  {
    v29 = swift_dynamicCast();
    (*(v27 + 56))(v25, v29 ^ 1u, 1, v26);
    v30 = (*(v27 + 48))(v25, 1, v26);
    v31 = v85;
    if (v30 != 1)
    {
      (*(v27 + 32))(v81, v25, v26);
      v73 = sub_1B7A97120();
      v33 = type metadata accessor for _IntentDispatchViewModifier(0, a2, a3, v32);
      (*(v86 + 16))(v82, a1 + v33[10], v31);
      v34 = v77;
      sub_1B7A98830();
      v35 = a1 + v33[12];
      v36 = *v35;
      if (*(v35 + 8) == 1)
      {
        *&v91 = *v35;

        if (!v36)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v54 = sub_1B7A97E70();
        sub_1B7A96D30();

        v31 = v85;
        v55 = v78;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release(v36);
        (*(v79 + 8))(v55, v80);
        v36 = v91;
        if (!v91)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
          v57 = swift_allocObject();
          v57[3] = 0;
          v57[4] = 0;
          v57[2] = &unk_1B7AA7E08;
          v58 = v74;
          MEMORY[0x1B8CA9E30](v56, &unk_1B7A9F4F8, v57, v56);
          v36 = sub_1B7A992C0();

          v59 = v58;
          v34 = v77;
          (*(v75 + 8))(v59, v76);
        }
      }

      v90 = v36;
      v60 = (a1 + v33[13]);
      v61 = *(v60 + 16);
      v91 = *v60;
      v92 = v61;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress(255, v31, AssociatedConformanceWitness, v63);
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v64 = v88;
      if (v88)
      {
        v65 = v89;
        v66 = swift_allocObject();
        v66[2] = a2;
        v66[3] = a3;
        v66[4] = v64;
        v66[5] = v65;
        v31 = v85;
        v67 = &unk_1B7A9F500;
      }

      else
      {
        v67 = 0;
        v66 = 0;
      }

      v68 = *(a3 + 48);
      v72 = a3;
      v70 = v81;
      v69 = v82;
      v68(1, v82, v34, &v90, v67, v66, v81, a2, v72);
      sub_1B7974C44(v67, v66);
      swift_unknownObjectRelease();

      (*(v84 + 8))(v34, v87);
      (*(v86 + 8))(v69, v31);
      (*(v27 + 8))(v70, v26);
    }
  }

  else
  {
    sub_1B7957888(&v91, &qword_1EBA46B50, &qword_1B7A9DD90);
    (*(v27 + 56))(v25, 1, 1, v26);
    v31 = v85;
  }

  sub_1B7957888(v25, &qword_1EBA47318, &qword_1B7A9F4B8);
  v82 = sub_1B7A97120();
  v38 = type metadata accessor for _IntentDispatchViewModifier(0, a2, a3, v37);
  (*(v86 + 16))(v20, a1 + v38[10], v31);
  sub_1B7A98830();
  v39 = a1 + v38[12];
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    *&v91 = *v39;

    if (!v40)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v41 = sub_1B7A97E70();
    v31 = v85;
    sub_1B7A96D30();

    v42 = v78;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v40);
    (*(v79 + 8))(v42, v80);
    v40 = v91;
    if (!v91)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
      v44 = swift_allocObject();
      v44[3] = 0;
      v44[4] = 0;
      v44[2] = &unk_1B7AA7E08;
      v45 = v74;
      MEMORY[0x1B8CA9E30](v43, &unk_1B7A9F4E8, v44, v43);
      v40 = sub_1B7A992C0();

      (*(v75 + 8))(v45, v76);
    }
  }

  v90 = v40;
  v46 = (a1 + v38[13]);
  v47 = *(v46 + 16);
  v91 = *v46;
  v92 = v47;
  v48 = swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress(255, v31, v48, v49);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v50 = v88;
  if (v88)
  {
    v51 = v89;
    v52 = swift_allocObject();
    v52[2] = a2;
    v52[3] = a3;
    v52[4] = v50;
    v52[5] = v51;
    v53 = &unk_1B7A9F4F0;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  (*(a3 + 40))(1, v20, v14, &v90, v53, v52, a2, a3);
  sub_1B7974C44(v53, v52);
  swift_unknownObjectRelease();

  (*(v84 + 8))(v14, v87);
  (*(v86 + 8))(v20, v31);
}

uint64_t sub_1B79BCDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98C30();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v87 = sub_1B7A98870();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v73 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v85 = v17;
  v86 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318, &qword_1B7A9F4B8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v73 - v24;
  v26 = sub_1B7A999B0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v83 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v91);
  if (v93)
  {
    v29 = swift_dynamicCast();
    (*(v27 + 56))(v25, v29 ^ 1u, 1, v26);
    v30 = (*(v27 + 48))(v25, 1, v26);
    v31 = v85;
    if (v30 != 1)
    {
      (*(v27 + 32))(v81, v25, v26);
      v73 = sub_1B7A97120();
      v33 = type metadata accessor for _IntentDispatchViewModifier(0, a2, a3, v32);
      (*(v86 + 16))(v82, a1 + v33[10], v31);
      v34 = v77;
      sub_1B7A98830();
      v35 = a1 + v33[12];
      v36 = *v35;
      if (*(v35 + 8) == 1)
      {
        *&v91 = *v35;

        if (!v36)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v54 = sub_1B7A97E70();
        sub_1B7A96D30();

        v31 = v85;
        v55 = v78;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release(v36);
        (*(v79 + 8))(v55, v80);
        v36 = v91;
        if (!v91)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
          v57 = swift_allocObject();
          v57[3] = 0;
          v57[4] = 0;
          v57[2] = &unk_1B7AA7E08;
          v58 = v74;
          MEMORY[0x1B8CA9E30](v56, &unk_1B7A9F4D8, v57, v56);
          v36 = sub_1B7A992C0();

          v59 = v58;
          v34 = v77;
          (*(v75 + 8))(v59, v76);
        }
      }

      v90 = v36;
      v60 = (a1 + v33[13]);
      v61 = *(v60 + 16);
      v91 = *v60;
      v92 = v61;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress(255, v31, AssociatedConformanceWitness, v63);
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v64 = v88;
      if (v88)
      {
        v65 = v89;
        v66 = swift_allocObject();
        v66[2] = a2;
        v66[3] = a3;
        v66[4] = v64;
        v66[5] = v65;
        v31 = v85;
        v67 = &unk_1B7A9F4E0;
      }

      else
      {
        v67 = 0;
        v66 = 0;
      }

      v68 = *(a3 + 48);
      v72 = a3;
      v70 = v81;
      v69 = v82;
      v68(0, v82, v34, &v90, v67, v66, v81, a2, v72);
      sub_1B7974C44(v67, v66);
      swift_unknownObjectRelease();

      (*(v84 + 8))(v34, v87);
      (*(v86 + 8))(v69, v31);
      (*(v27 + 8))(v70, v26);
    }
  }

  else
  {
    sub_1B7957888(&v91, &qword_1EBA46B50, &qword_1B7A9DD90);
    (*(v27 + 56))(v25, 1, 1, v26);
    v31 = v85;
  }

  sub_1B7957888(v25, &qword_1EBA47318, &qword_1B7A9F4B8);
  v82 = sub_1B7A97120();
  v38 = type metadata accessor for _IntentDispatchViewModifier(0, a2, a3, v37);
  (*(v86 + 16))(v20, a1 + v38[10], v31);
  sub_1B7A98830();
  v39 = a1 + v38[12];
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    *&v91 = *v39;

    if (!v40)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v41 = sub_1B7A97E70();
    v31 = v85;
    sub_1B7A96D30();

    v42 = v78;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v40);
    (*(v79 + 8))(v42, v80);
    v40 = v91;
    if (!v91)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
      v44 = swift_allocObject();
      v44[3] = 0;
      v44[4] = 0;
      v44[2] = &unk_1B7AA7E08;
      v45 = v74;
      MEMORY[0x1B8CA9E30](v43, &unk_1B7A9F4C0, v44, v43);
      v40 = sub_1B7A992C0();

      (*(v75 + 8))(v45, v76);
    }
  }

  v90 = v40;
  v46 = (a1 + v38[13]);
  v47 = *(v46 + 16);
  v91 = *v46;
  v92 = v47;
  v48 = swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress(255, v31, v48, v49);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v50 = v88;
  if (v88)
  {
    v51 = v89;
    v52 = swift_allocObject();
    v52[2] = a2;
    v52[3] = a3;
    v52[4] = v50;
    v52[5] = v51;
    v53 = &unk_1B7A9F4D0;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  (*(a3 + 40))(0, v20, v14, &v90, v53, v52, a2, a3);
  sub_1B7974C44(v53, v52);
  swift_unknownObjectRelease();

  (*(v84 + 8))(v14, v87);
  (*(v86 + 8))(v20, v31);
}

uint64_t sub_1B79BD9C0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A98D90();
}

uint64_t sub_1B79BDA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v98 = a3;
  v96 = *(a2 - 8);
  v101 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v104 = *(v6 + 24);
  v105 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for IntentResult(0, v104, v7, v8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = &v71 - v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 16);
  v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v13, v14);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v71 - v16;
  v102 = v10;
  v103 = v11;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for _DispatchID(0, v17, AssociatedConformanceWitness, v22);
  v92 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v71 - v24;
  swift_getWitnessTable();
  v25 = v12;
  v26 = sub_1B7A97C30();
  v77 = v26;
  WitnessTable = swift_getWitnessTable();
  v80 = WitnessTable;
  v81 = v23;
  v79 = swift_getWitnessTable();
  v110 = v26;
  v111 = v23;
  v112 = WitnessTable;
  v113 = v79;
  v89 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v100 = &v71 - v28;
  v78 = sub_1B7A97590();
  v94 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v71 - v29;
  v30 = AssociatedConformanceWitness;
  v75 = AssociatedConformanceWitness;
  type metadata accessor for _IntentProgress(255, v17, AssociatedConformanceWitness, v31);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v86 = sub_1B7A97DF0();
  v87 = sub_1B7A97590();
  v90 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v76 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v83 = &v71 - v35;
  v36 = *(v18 + 16);
  v37 = v3 + *(v25 + 48);
  v74 = v17;
  v36(v20, v37, v17, v34);
  v38 = v25;
  v39 = sub_1B7A98870();
  v40 = v84;
  MEMORY[0x1B8CA9A40](v39);
  v41 = sub_1B7A98870();
  v73 = v3;
  v42 = v88;
  MEMORY[0x1B8CA9A40](v41);
  v43 = v42;
  v44 = v104;
  sub_1B79BB4EC(v20, v40, v43, v17, AssociatedTypeWitness, v104, v30, v99);
  v45 = v96;
  v95 = *(v96 + 16);
  v46 = v105;
  v72 = v38;
  v95(v105, v3, v38);
  v47 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v49 = v102;
  v48[2] = v103;
  v48[3] = v44;
  v48[4] = v49;
  v96 = *(v45 + 32);
  (v96)(v48 + v47, v46, v38);
  AssociatedTypeWitness = swift_checkMetadataState();
  v50 = v99;
  v51 = v81;
  v52 = v80;
  v53 = v79;
  sub_1B7A984C0();

  (*(v92 + 8))(v50, v51);
  v54 = v105;
  v55 = v72;
  v95(v105, v73, v72);
  v56 = swift_allocObject();
  v57 = v104;
  v56[2] = v103;
  v56[3] = v57;
  v56[4] = v102;
  (v96)(v56 + v47, v54, v55);
  v110 = AssociatedTypeWitness;
  v111 = v51;
  v112 = v52;
  v113 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v82;
  v60 = OpaqueTypeMetadata2;
  v61 = v100;
  sub_1B7A984A0();

  (*(v91 + 8))(v61, v60);
  v108 = OpaqueTypeConformance2;
  v109 = MEMORY[0x1E69805D0];
  v62 = v78;
  v63 = swift_getWitnessTable();
  v64 = v76;
  sub_1B79E3830(v74, 0, 0, v62, v74, v63, v75);
  (*(v94 + 8))(v59, v62);
  v65 = swift_getWitnessTable();
  v106 = v63;
  v107 = v65;
  v66 = v87;
  v67 = swift_getWitnessTable();
  v68 = v83;
  sub_1B7957EE0(v64, v66, v67);
  v69 = *(v90 + 8);
  v69(v64, v66);
  sub_1B7957EE0(v68, v66, v67);
  return (v69)(v68, v66);
}

uint64_t sub_1B79BE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v82 = sub_1B7A98C30();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v94 = sub_1B7A98870();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = v79 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v92 = v17;
  v93 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318, &qword_1B7A9F4B8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v79 - v24;
  v26 = sub_1B7A999B0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v87 = v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v89 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v98);
  if (v100)
  {
    v29 = swift_dynamicCast();
    (*(v27 + 56))(v25, v29 ^ 1u, 1, v26);
    v30 = (*(v27 + 48))(v25, 1, v26);
    v31 = v92;
    if (v30 != 1)
    {
      (*(v27 + 32))(v87, v25, v26);
      v79[1] = sub_1B7A97120();
      v32 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a2, v91, a4);
      (*(v93 + 16))(v88, a1 + v32[12], v31);
      v33 = v83;
      sub_1B7A98830();
      v34 = a1 + v32[15];
      v35 = *v34;
      if (*(v34 + 8) == 1)
      {
        *&v98 = *v34;

        if (!v35)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v59 = sub_1B7A97E70();
        sub_1B7A96D30();

        v31 = v92;
        v60 = v84;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release(v35);
        (*(v85 + 8))(v60, v86);
        v35 = v98;
        if (!v98)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
          v62 = swift_allocObject();
          v62[3] = 0;
          v62[4] = 0;
          v62[2] = &unk_1B7AA7E08;
          v63 = v80;
          MEMORY[0x1B8CA9E30](v61, &unk_1B7A9F568, v62, v61);
          v35 = sub_1B7A992C0();

          v64 = v63;
          v33 = v83;
          (*(v81 + 8))(v64, v82);
        }
      }

      v97 = v35;
      v65 = (a1 + v32[16]);
      v66 = *(v65 + 16);
      v98 = *v65;
      v99 = v66;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress(255, v31, AssociatedConformanceWitness, v68);
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v69 = v95;
      if (v95)
      {
        v70 = v96;
        v71 = swift_allocObject();
        v72 = v91;
        v71[2] = a2;
        v71[3] = v72;
        v71[4] = a4;
        v71[5] = v69;
        v71[6] = v70;
        v31 = v92;
        v73 = &unk_1B7A9F570;
      }

      else
      {
        v73 = 0;
        v71 = 0;
      }

      v74 = *(a4 + 48);
      v78 = a4;
      v76 = v87;
      v75 = v88;
      v74(1, v88, v33, &v97, v73, v71, v87, a2, v78);
      sub_1B7974C44(v73, v71);
      swift_unknownObjectRelease();

      (*(v90 + 8))(v33, v94);
      (*(v93 + 8))(v75, v31);
      (*(v27 + 8))(v76, v26);
    }
  }

  else
  {
    sub_1B7957888(&v98, &qword_1EBA46B50, &qword_1B7A9DD90);
    (*(v27 + 56))(v25, 1, 1, v26);
    v31 = v92;
  }

  sub_1B7957888(v25, &qword_1EBA47318, &qword_1B7A9F4B8);
  v88 = sub_1B7A97120();
  v36 = v91;
  v37 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a2, v91, a4);
  (*(v93 + 16))(v20, a1 + v37[12], v31);
  sub_1B7A98830();
  v38 = a1 + v37[15];
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    *&v98 = *v38;

    if (!v39)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v40 = sub_1B7A97E70();
    v31 = v92;
    sub_1B7A96D30();

    v41 = v84;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v39);
    (*(v85 + 8))(v41, v86);
    v39 = v98;
    if (!v98)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
      v43 = swift_allocObject();
      v43[3] = 0;
      v43[4] = 0;
      v43[2] = &unk_1B7AA7E08;
      v92 = a4;
      v44 = v31;
      v45 = a2;
      v46 = v20;
      v47 = v14;
      v48 = v36;
      v49 = v80;
      MEMORY[0x1B8CA9E30](v42, &unk_1B7A9F558, v43, v42);
      v39 = sub_1B7A992C0();

      v50 = v49;
      v36 = v48;
      v14 = v47;
      v20 = v46;
      a2 = v45;
      v31 = v44;
      a4 = v92;
      (*(v81 + 8))(v50, v82);
    }
  }

  v97 = v39;
  v51 = (a1 + v37[16]);
  v52 = *(v51 + 16);
  v98 = *v51;
  v99 = v52;
  v53 = swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress(255, v31, v53, v54);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v55 = v95;
  if (v95)
  {
    v56 = v96;
    v57 = swift_allocObject();
    v57[2] = a2;
    v57[3] = v36;
    v57[4] = a4;
    v57[5] = v55;
    v57[6] = v56;
    v58 = &unk_1B7A9F560;
  }

  else
  {
    v58 = 0;
    v57 = 0;
  }

  (*(a4 + 40))(1, v20, v14, &v97, v58, v57, a2, a4);
  sub_1B7974C44(v58, v57);
  swift_unknownObjectRelease();

  (*(v90 + 8))(v14, v94);
  (*(v93 + 8))(v20, v31);
}

uint64_t sub_1B79BF028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v82 = sub_1B7A98C30();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v11, v12);
  v94 = sub_1B7A98870();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = v79 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v92 = v17;
  v93 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318, &qword_1B7A9F4B8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v79 - v24;
  v26 = sub_1B7A999B0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v87 = v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v89 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v98);
  if (v100)
  {
    v29 = swift_dynamicCast();
    (*(v27 + 56))(v25, v29 ^ 1u, 1, v26);
    v30 = (*(v27 + 48))(v25, 1, v26);
    v31 = v92;
    if (v30 != 1)
    {
      (*(v27 + 32))(v87, v25, v26);
      v79[1] = sub_1B7A97120();
      v32 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a2, v91, a4);
      (*(v93 + 16))(v88, a1 + v32[12], v31);
      v33 = v83;
      sub_1B7A98830();
      v34 = a1 + v32[15];
      v35 = *v34;
      if (*(v34 + 8) == 1)
      {
        *&v98 = *v34;

        if (!v35)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v59 = sub_1B7A97E70();
        sub_1B7A96D30();

        v31 = v92;
        v60 = v84;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release(v35);
        (*(v85 + 8))(v60, v86);
        v35 = v98;
        if (!v98)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
          v62 = swift_allocObject();
          v62[3] = 0;
          v62[4] = 0;
          v62[2] = &unk_1B7AA7E08;
          v63 = v80;
          MEMORY[0x1B8CA9E30](v61, &unk_1B7A9F548, v62, v61);
          v35 = sub_1B7A992C0();

          v64 = v63;
          v33 = v83;
          (*(v81 + 8))(v64, v82);
        }
      }

      v97 = v35;
      v65 = (a1 + v32[16]);
      v66 = *(v65 + 16);
      v98 = *v65;
      v99 = v66;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress(255, v31, AssociatedConformanceWitness, v68);
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v69 = v95;
      if (v95)
      {
        v70 = v96;
        v71 = swift_allocObject();
        v72 = v91;
        v71[2] = a2;
        v71[3] = v72;
        v71[4] = a4;
        v71[5] = v69;
        v71[6] = v70;
        v31 = v92;
        v73 = &unk_1B7A9F550;
      }

      else
      {
        v73 = 0;
        v71 = 0;
      }

      v74 = *(a4 + 48);
      v78 = a4;
      v76 = v87;
      v75 = v88;
      v74(0, v88, v33, &v97, v73, v71, v87, a2, v78);
      sub_1B7974C44(v73, v71);
      swift_unknownObjectRelease();

      (*(v90 + 8))(v33, v94);
      (*(v93 + 8))(v75, v31);
      (*(v27 + 8))(v76, v26);
    }
  }

  else
  {
    sub_1B7957888(&v98, &qword_1EBA46B50, &qword_1B7A9DD90);
    (*(v27 + 56))(v25, 1, 1, v26);
    v31 = v92;
  }

  sub_1B7957888(v25, &qword_1EBA47318, &qword_1B7A9F4B8);
  v88 = sub_1B7A97120();
  v36 = v91;
  v37 = type metadata accessor for _IntentDispatchViewModifierFollowing(0, a2, v91, a4);
  (*(v93 + 16))(v20, a1 + v37[12], v31);
  sub_1B7A98830();
  v38 = a1 + v37[15];
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    *&v98 = *v38;

    if (!v39)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v40 = sub_1B7A97E70();
    v31 = v92;
    sub_1B7A96D30();

    v41 = v84;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v39);
    (*(v85 + 8))(v41, v86);
    v39 = v98;
    if (!v98)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320, &qword_1B7AA0040);
      v43 = swift_allocObject();
      v43[3] = 0;
      v43[4] = 0;
      v43[2] = &unk_1B7AA7E08;
      v92 = a4;
      v44 = v31;
      v45 = a2;
      v46 = v20;
      v47 = v14;
      v48 = v36;
      v49 = v80;
      MEMORY[0x1B8CA9E30](v42, &unk_1B7A9F530, v43, v42);
      v39 = sub_1B7A992C0();

      v50 = v49;
      v36 = v48;
      v14 = v47;
      v20 = v46;
      a2 = v45;
      v31 = v44;
      a4 = v92;
      (*(v81 + 8))(v50, v82);
    }
  }

  v97 = v39;
  v51 = (a1 + v37[16]);
  v52 = *(v51 + 16);
  v98 = *v51;
  v99 = v52;
  v53 = swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress(255, v31, v53, v54);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v55 = v95;
  if (v95)
  {
    v56 = v96;
    v57 = swift_allocObject();
    v57[2] = a2;
    v57[3] = v36;
    v57[4] = a4;
    v57[5] = v55;
    v57[6] = v56;
    v58 = &unk_1B7A9F540;
  }

  else
  {
    v58 = 0;
    v57 = 0;
  }

  (*(a4 + 40))(0, v20, v14, &v97, v58, v57, a2, a4);
  sub_1B7974C44(v58, v57);
  swift_unknownObjectRelease();

  (*(v90 + 8))(v14, v94);
  (*(v93 + 8))(v20, v31);
}

uint64_t sub_1B79BFCB4(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v77 = a6;
  v65 = a5;
  v67 = a4;
  v69 = a3;
  v60 = a2;
  v66 = a1;
  v8 = *(*v7 + 80);
  v70 = *(*v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for IntentResult(255, AssociatedTypeWitness, v10, v11);
  v76 = sub_1B7A98870();
  v64 = *(v76 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v57 - v13;
  v74 = sub_1B7A999B0();
  v61 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v59 = v14;
  v73 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v8;
  v16 = *(v8 - 8);
  v58 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v57 - v20;
  v21 = sub_1B7A9AB60();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57 - v30;
  v67 = *v67;
  if ((v66 & 1) != 0 || !*(v68 + 16) && (sub_1B79C20D8(v69, v15, v70), IntentResult.data.getter(v12, v24, v32, v33), (*(v25 + 8))(v31, v12), v34 = (*(*(AssociatedTypeWitness - 8) + 48))(v24, 1, AssociatedTypeWitness), (*(v22 + 8))(v24, v21), v34 == 1) || (sub_1B79C20D8(v69, v15, v70), v38 = sub_1B7996ACC(v12, v35, v36, v37), result = (*(v25 + 8))(v28, v12), v38))
  {
    v40 = sub_1B7A9A7E0();
    (*(*(v40 - 8) + 56))(v71, 1, 1, v40);
    v41 = *(v16 + 16);
    v57 = v15;
    v41(v72, v60, v15);
    v42 = v16;
    v43 = v61;
    (*(v61 + 16))(v73, v62, v74);
    v44 = v64;
    (*(v64 + 16))(v75, v69, v76);
    sub_1B7A9A760();
    v45 = v65;
    sub_1B7974B84(v65, v77);
    v46 = v67;

    v47 = sub_1B7A9A750();
    v48 = (*(v42 + 80) + 72) & ~*(v42 + 80);
    v49 = (v58 + *(v43 + 80) + v48) & ~*(v43 + 80);
    v50 = (v59 + *(v44 + 80) + v49) & ~*(v44 + 80);
    v51 = swift_allocObject();
    v52 = MEMORY[0x1E69E85E0];
    *(v51 + 2) = v47;
    *(v51 + 3) = v52;
    v53 = v70;
    *(v51 + 4) = v57;
    *(v51 + 5) = v53;
    v54 = v77;
    *(v51 + 6) = v45;
    *(v51 + 7) = v54;
    *(v51 + 8) = v46;
    (*(v42 + 32))(&v51[v48], v72);
    (*(v43 + 32))(&v51[v49], v73, v74);
    (*(v44 + 32))(&v51[v50], v75, v76);
    v55 = sub_1B79A9B34(0, 0, v71, &unk_1B7A9F510, v51);
    v56 = v68;
    sub_1B79C6DFC();
    *(v56 + 16) = v55;
  }

  return result;
}

uint64_t sub_1B79C0300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v23;
  v8[11] = v24;
  v8[8] = a8;
  v8[9] = v22;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_1B7A9A720();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[16] = AssociatedTypeWitness;
  v13 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v11, v12);
  v8[17] = v13;
  v8[18] = *(v13 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v14, v15);
  v8[21] = swift_task_alloc();
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();
  v17 = type metadata accessor for _IntentProgress(0, v23, v24, v16);
  v8[24] = v17;
  v8[25] = *(v17 - 8);
  v8[26] = swift_task_alloc();
  sub_1B7A9A760();
  v8[27] = sub_1B7A9A750();
  v19 = sub_1B7A9A710();
  v8[28] = v19;
  v8[29] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1B79C0590, v19, v18);
}

uint64_t sub_1B79C0590()
{
  v1 = v0[4];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v11 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_1B79C0724;
    v3 = v0[26];

    return v11(v3);
  }

  else
  {
    v0[2] = v0[6];
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_1B79C08D4;
    v6 = v0[23];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[7];
    v10 = v0[8];

    return IntentDispatchAction.callAsFunction<A>(_:_:)(v6, v9, v10, v7, v8);
  }
}

uint64_t sub_1B79C0724()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[6];
  v6 = swift_task_alloc();
  v1[31] = v6;
  *v6 = v5;
  v6[1] = sub_1B79C08D4;
  v7 = v1[23];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[7];
  v11 = v1[8];

  return IntentDispatchAction.callAsFunction<A>(_:_:)(v7, v10, v11, v8, v9);
}

uint64_t sub_1B79C08D4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1B79C1784;
  }

  else
  {
    v5 = sub_1B79C09E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79C09E8()
{
  v1 = *(v0 + 256);
  sub_1B7A9A820();
  if (v1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 128));
    *(v0 + 280) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 112);
      v4 = *(v0 + 120);
      v5 = *(v0 + 96);
      v6 = *(v0 + 104);
      v7 = *(v0 + 32);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 208);
        v10 = *(v0 + 104);
        v9 = *(v0 + 112);
        v11 = *(v0 + 96);
        v12 = *(v0 + 32);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v53 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 288) = v15;
        *v15 = v0;
        v16 = sub_1B79C1264;
LABEL_9:
        v15[1] = v16;
        v26 = *(v0 + 208);

        return v53(v26);
      }

      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

      v39 = *(v0 + 24);
    }

    else
    {
      v23 = *(v0 + 32);

      if (v23)
      {
        v24 = *(v0 + 32);
        **(v0 + 208) = v1;
        swift_storeEnumTagMultiPayload();
        v25 = v1;
        v53 = (v24 + *v24);
        v15 = swift_task_alloc();
        *(v0 + 296) = v15;
        *v15 = v0;
        v16 = sub_1B79C14C0;
        goto LABEL_9;
      }

      v40 = *(v0 + 280);
      v41 = *(v0 + 168);
      v43 = *(v0 + 144);
      v42 = *(v0 + 152);
      v44 = *(v0 + 136);
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 72);
      *v41 = v40;
      swift_storeEnumTagMultiPayload();
      v48 = v40;
      sub_1B79C20D8(v47, v46, v45);
      sub_1B7996A3C(v41, v44, v49, v50);
      sub_1B79C7C94(v42, v47, v46, v45);
      (*(v43 + 8))(v42, v44);
      v39 = v40;
    }
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = (*(v0 + 176) + 16);
    if (v17)
    {
      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      v21 = *(v0 + 128);
      v22 = *v18;
      *(v0 + 264) = *v18;
      (v22)(v19, v20, v21);
      swift_storeEnumTagMultiPayload();
      v53 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 272) = v15;
      *v15 = v0;
      v16 = sub_1B79C0F78;
      goto LABEL_9;
    }

    v28 = *v18;
    v29 = *(v0 + 176);
    v30 = *(v0 + 168);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 136);
    v52 = *(v0 + 128);
    v54 = *(v0 + 184);
    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v36 = *(v0 + 72);
    v28(v30);
    swift_storeEnumTagMultiPayload();
    sub_1B79C20D8(v36, v35, v34);
    sub_1B7996A3C(v30, v33, v37, v38);
    sub_1B79C7C94(v31, v36, v35, v34);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v54, v52);
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1B79C0F78()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C10FC, v6, v5);
}

uint64_t sub_1B79C10FC()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v13 = *(v0 + 128);
  v14 = *(v0 + 184);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  (*(v0 + 264))(v2);
  swift_storeEnumTagMultiPayload();
  sub_1B79C20D8(v8, v7, v6);
  sub_1B7996A3C(v2, v5, v9, v10);
  sub_1B79C7C94(v3, v8, v7, v6);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v14, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1B79C1264()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C13E8, v6, v5);
}

uint64_t sub_1B79C13E8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B79C14C0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C1644, v6, v5);
}

uint64_t sub_1B79C1644()
{

  v1 = v0[35];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v9 = v1;
  sub_1B79C20D8(v8, v7, v6);
  sub_1B7996A3C(v2, v5, v10, v11);
  sub_1B79C7C94(v3, v8, v7, v6);
  (*(v4 + 8))(v3, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B79C1784()
{
  v1 = *(v0 + 256);
  *(v0 + 24) = v1;
  *(v0 + 280) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 32);

    (*(v5 + 32))(v4, v3, v6);
    if (v7)
    {
      v8 = *(v0 + 208);
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      v11 = *(v0 + 96);
      v12 = *(v0 + 32);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v35 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v16 = sub_1B79C1264;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 208);

      return v35(v20);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v22 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 32);

    if (v17)
    {
      v18 = *(v0 + 32);
      **(v0 + 208) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v35 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 296) = v15;
      *v15 = v0;
      v16 = sub_1B79C14C0;
      goto LABEL_6;
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 168);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = *(v0 + 136);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 72);
    *v24 = v23;
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    sub_1B79C20D8(v30, v29, v28);
    sub_1B7996A3C(v24, v27, v32, v33);
    sub_1B79C7C94(v25, v30, v29, v28);
    (*(v26 + 8))(v25, v27);
    v22 = v23;
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B79C1B68(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v59 = a4;
  v61 = a3;
  v54 = a2;
  v58 = a1;
  v7 = *(*v6 + 80);
  v62 = *(*v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult(255, AssociatedTypeWitness, v9, v10);
  v66 = sub_1B7A98870();
  v53 = *(v66 - 8);
  v55 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v51 - v12;
  v13 = v7;
  v14 = *(v7 - 8);
  v52 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v51 - v18;
  v19 = sub_1B7A9AB60();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v51 - v28;
  v59 = *v59;
  if ((v58 & 1) != 0 || !*(v60 + 16) && (sub_1B79C20D8(v61, v13, v62), IntentResult.data.getter(v11, v22, v30, v31), (*(v23 + 8))(v29, v11), v32 = (*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness), (*(v20 + 8))(v22, v19), v32 == 1) || (sub_1B79C20D8(v61, v13, v62), v36 = sub_1B7996ACC(v11, v33, v34, v35), result = (*(v23 + 8))(v26, v11), v36))
  {
    v38 = sub_1B7A9A7E0();
    (*(*(v38 - 8) + 56))(v63, 1, 1, v38);
    (*(v14 + 16))(v64, v54, v13);
    v39 = v53;
    (*(v53 + 16))(v65, v61, v66);
    sub_1B7A9A760();
    v41 = v56;
    v40 = v57;
    sub_1B7974B84(v56, v57);
    v42 = v59;

    v43 = sub_1B7A9A750();
    v44 = (*(v14 + 80) + 72) & ~*(v14 + 80);
    v45 = (v52 + v44 + *(v39 + 80)) & ~*(v39 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v46 + 2) = v43;
    *(v46 + 3) = v47;
    v48 = v62;
    *(v46 + 4) = v13;
    *(v46 + 5) = v48;
    *(v46 + 6) = v41;
    *(v46 + 7) = v40;
    *(v46 + 8) = v42;
    (*(v14 + 32))(&v46[v44], v64, v13);
    (*(v39 + 32))(&v46[v45], v65, v66);
    v49 = sub_1B79A9B34(0, 0, v63, &unk_1B7A9F528, v46);
    v50 = v60;
    sub_1B79C6DFC();
    *(v50 + 16) = v49;
  }

  return result;
}

uint64_t sub_1B79C20D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v4, v5);
  v6 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v6);
}

uint64_t sub_1B79C2140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v22;
  v8[10] = v23;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_1B7A9A720();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v13 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v11, v12);
  v8[16] = v13;
  v8[17] = *(v13 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v14, v15);
  v8[20] = swift_task_alloc();
  v8[21] = *(AssociatedTypeWitness - 8);
  v8[22] = swift_task_alloc();
  v17 = type metadata accessor for _IntentProgress(0, v22, v23, v16);
  v8[23] = v17;
  v8[24] = *(v17 - 8);
  v8[25] = swift_task_alloc();
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v19 = sub_1B7A9A710();
  v8[27] = v19;
  v8[28] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1B79C23CC, v19, v18);
}

uint64_t sub_1B79C23CC()
{
  v1 = v0[4];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1B79C2560;
    v3 = v0[25];

    return v10(v3);
  }

  else
  {
    v0[2] = v0[6];
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_1B79C2710;
    v6 = v0[22];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[7];

    return IntentDispatchAction.callAsFunction<A>(_:)(v6, v9, v7, v8);
  }
}

uint64_t sub_1B79C2560()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[6];
  v6 = swift_task_alloc();
  v1[30] = v6;
  *v6 = v5;
  v6[1] = sub_1B79C2710;
  v7 = v1[22];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[7];

  return IntentDispatchAction.callAsFunction<A>(_:)(v7, v10, v8, v9);
}

uint64_t sub_1B79C2710()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1B79C35C0;
  }

  else
  {
    v5 = sub_1B79C2824;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79C2824()
{
  v1 = *(v0 + 248);
  sub_1B7A9A820();
  if (v1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 120));
    *(v0 + 272) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 104);
      v4 = *(v0 + 112);
      v5 = *(v0 + 88);
      v6 = *(v0 + 96);
      v7 = *(v0 + 32);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 200);
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v11 = *(v0 + 88);
        v12 = *(v0 + 32);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v53 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 280) = v15;
        *v15 = v0;
        v16 = sub_1B79C30A0;
LABEL_9:
        v15[1] = v16;
        v26 = *(v0 + 200);

        return v53(v26);
      }

      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v39 = *(v0 + 24);
    }

    else
    {
      v23 = *(v0 + 32);

      if (v23)
      {
        v24 = *(v0 + 32);
        **(v0 + 200) = v1;
        swift_storeEnumTagMultiPayload();
        v25 = v1;
        v53 = (v24 + *v24);
        v15 = swift_task_alloc();
        *(v0 + 288) = v15;
        *v15 = v0;
        v16 = sub_1B79C32FC;
        goto LABEL_9;
      }

      v40 = *(v0 + 272);
      v41 = *(v0 + 160);
      v43 = *(v0 + 136);
      v42 = *(v0 + 144);
      v44 = *(v0 + 128);
      v46 = *(v0 + 72);
      v45 = *(v0 + 80);
      v47 = *(v0 + 64);
      *v41 = v40;
      swift_storeEnumTagMultiPayload();
      v48 = v40;
      sub_1B79C20D8(v47, v46, v45);
      sub_1B7996A3C(v41, v44, v49, v50);
      sub_1B79C7C94(v42, v47, v46, v45);
      (*(v43 + 8))(v42, v44);
      v39 = v40;
    }
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = (*(v0 + 168) + 16);
    if (v17)
    {
      v19 = *(v0 + 200);
      v20 = *(v0 + 176);
      v21 = *(v0 + 120);
      v22 = *v18;
      *(v0 + 256) = *v18;
      (v22)(v19, v20, v21);
      swift_storeEnumTagMultiPayload();
      v53 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 264) = v15;
      *v15 = v0;
      v16 = sub_1B79C2DB4;
      goto LABEL_9;
    }

    v28 = *v18;
    v29 = *(v0 + 168);
    v30 = *(v0 + 160);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v33 = *(v0 + 128);
    v52 = *(v0 + 120);
    v54 = *(v0 + 176);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v36 = *(v0 + 64);
    v28(v30);
    swift_storeEnumTagMultiPayload();
    sub_1B79C20D8(v36, v35, v34);
    sub_1B7996A3C(v30, v33, v37, v38);
    sub_1B79C7C94(v31, v36, v35, v34);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v54, v52);
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1B79C2DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C2F38, v6, v5);
}

uint64_t sub_1B79C2F38()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v13 = *(v0 + 120);
  v14 = *(v0 + 176);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  (*(v0 + 256))(v2);
  swift_storeEnumTagMultiPayload();
  sub_1B79C20D8(v8, v7, v6);
  sub_1B7996A3C(v2, v5, v9, v10);
  sub_1B79C7C94(v3, v8, v7, v6);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v14, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1B79C30A0()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C3224, v6, v5);
}

uint64_t sub_1B79C3224()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B79C32FC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C3480, v6, v5);
}

uint64_t sub_1B79C3480()
{

  v1 = v0[34];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v9 = v1;
  sub_1B79C20D8(v8, v7, v6);
  sub_1B7996A3C(v2, v5, v10, v11);
  sub_1B79C7C94(v3, v8, v7, v6);
  (*(v4 + 8))(v3, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B79C35C0()
{
  v1 = *(v0 + 248);
  *(v0 + 24) = v1;
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 32);

    (*(v5 + 32))(v4, v3, v6);
    if (v7)
    {
      v8 = *(v0 + 200);
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 88);
      v12 = *(v0 + 32);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v35 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_1B79C30A0;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 200);

      return v35(v20);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v22 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 32);

    if (v17)
    {
      v18 = *(v0 + 32);
      **(v0 + 200) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v35 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v16 = sub_1B79C32FC;
      goto LABEL_6;
    }

    v23 = *(v0 + 272);
    v24 = *(v0 + 160);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 128);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    *v24 = v23;
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    sub_1B79C20D8(v30, v29, v28);
    sub_1B7996A3C(v24, v27, v32, v33);
    sub_1B79C7C94(v25, v30, v29, v28);
    (*(v26 + 8))(v25, v27);
    v22 = v23;
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B79C39AC()
{
  if (*(v0 + 16))
  {

    sub_1B7A9A7F0();
  }

  return v0;
}

void sub_1B79C3A14(void *a1)
{
  sub_1B79C4310();
  if (v2 <= 0x3F)
  {
    sub_1B7A97140();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v5 <= 0x3F)
      {
        v6 = AssociatedTypeWitness;
        v7 = swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResult(255, v7, v8, v9);
        sub_1B7A98870();
        if (v12 <= 0x3F)
        {
          type metadata accessor for IntentResult(255, a1[3], v10, v11);
          sub_1B7A98870();
          if (v13 <= 0x3F)
          {
            sub_1B79C93D4(319, &qword_1EBA47278, qword_1EBA47280, qword_1B7A9FE40, MEMORY[0x1E697DCC0]);
            if (v14 <= 0x3F)
            {
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              type metadata accessor for _IntentProgress(255, v6, AssociatedConformanceWitness, v16);
              swift_getFunctionTypeMetadata1();
              sub_1B7A9AB60();
              sub_1B7A970E0();
              if (v17 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B79C3C0C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = 8;
  if (*(v9 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v9 + 64);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v8;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (*(*(a3[3] - 8) + 64) > 8uLL)
  {
    v10 = *(*(a3[3] - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  if (v12 >= a2)
  {
    goto LABEL_33;
  }

  v16 = *(*(a3[3] - 8) + 80) & 0xF8 | 7;
  v17 = 39 - (((-17 - v16) | v16) - (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - ((((-17 - v15) | v15) - ((((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16) + ((((-50 - v13) | v13) - (v14 + v15)) | v15) - 7) | v16);
  if (v17 <= 3)
  {
    v18 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v23 = (v21 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v12 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v25 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13;
  if (v8 < 0x7FFFFFFF)
  {
    v27 = *((((v25 + v14 + v15) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  else
  {
    v26 = *(v7 + 48);

    return v26(v25, v8, AssociatedTypeWitness);
  }
}

void sub_1B79C3F5C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(a4[3] - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v11 + 80) & 0xF8;
  v19 = v18 | 7;
  v20 = v17 + (v18 | 7);
  v21 = (v18 + 23) & ~(v18 | 7);
  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = 39 - (((-17 - v22) | v22) - (((v15 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - ((((((-50 - v16) | v16) - v20) | v19) - (v21 + v22 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - 8) | v22);
  if (v13 >= a3)
  {
    v26 = 0;
    if (v13 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v13 >= a2)
    {
LABEL_23:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *&a1[v23] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v23] = 0;
      }

      else if (v26)
      {
        a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v29 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16;
      if (v10 < 0x7FFFFFFF)
      {
        v31 = ((v29 + v17 + v19) & ~v19);
        if ((a2 & 0x80000000) != 0)
        {
          v32 = (((v12 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v21;
          if (v32 != -8)
          {
            bzero(v31, (v32 + 8));
            *v31 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v30 = *(v9 + 56);

        v30(v29, a2, v10, v33);
      }

      return;
    }
  }

  v27 = ~v13 + a2;
  bzero(a1, v23);
  if (v23 <= 3)
  {
    v28 = (v27 >> 8) + 1;
  }

  else
  {
    v28 = 1;
  }

  if (v23 <= 3)
  {
    *a1 = v27;
    if (v26 > 1)
    {
LABEL_33:
      if (v26 == 2)
      {
        *&a1[v23] = v28;
      }

      else
      {
        *&a1[v23] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v26 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v26)
  {
    a1[v23] = v28;
  }
}

void sub_1B79C4310()
{
  if (!qword_1EBA47270)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA47270);
    }
  }
}

void sub_1B79C4364(uint64_t a1)
{
  sub_1B79C4310();
  if (v1 <= 0x3F)
  {
    sub_1B7A97140();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        v5 = AssociatedTypeWitness;
        v6 = swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResult(255, v6, v7, v8);
        sub_1B7A98870();
        if (v9 <= 0x3F)
        {
          sub_1B79C93D4(319, &qword_1EBA47278, qword_1EBA47280, qword_1B7A9FE40, MEMORY[0x1E697DCC0]);
          if (v10 <= 0x3F)
          {
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            type metadata accessor for _IntentProgress(255, v5, AssociatedConformanceWitness, v12);
            swift_getFunctionTypeMetadata1();
            sub_1B7A9AB60();
            sub_1B7A970E0();
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B79C4530(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v8 + 80) & 0xF8 | 7;
  if (v12 >= a2)
  {
    goto LABEL_31;
  }

  v14 = 39 - (((-17 - v13) | v13) - (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((((-50 - v10) | v10) - (v11 + v13)) | v13));
  if (v14 <= 3)
  {
    v15 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *&a1[v14];
      if (!v18)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v20 = (v18 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    return v12 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  v22 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v10 + 17) & ~v10;
  if (v7 < 0x7FFFFFFF)
  {
    v24 = *((((v22 + v11 + v13) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(v6 + 48);

    return v23(v22, v7, AssociatedTypeWitness);
  }
}

void sub_1B79C47F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v10 + 80) & 0xF8;
  v16 = v15 | 7;
  v17 = (v14 + (v15 | 7) + ((v13 + 49) & ~v13)) & ~(v15 | 7);
  v18 = (v15 + 23) & ~(v15 | 7);
  v19 = v18 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 41;
  if (v12 >= a3)
  {
    v22 = 0;
    if (v12 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v12 >= a2)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v25 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13;
      if (v9 < 0x7FFFFFFF)
      {
        v27 = v25 + v14 + v16;
        v28 = (v27 & ~v16);
        if ((a2 & 0x80000000) != 0)
        {
          v29 = (((v11 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v18;
          if (v29 != -8)
          {
            bzero((v27 & ~v16), (v29 + 8));
            *v28 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v26 = *(v8 + 56);

        v26(v25, a2, v9, AssociatedTypeWitness);
      }

      return;
    }
  }

  v23 = ~v12 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_29:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

uint64_t sub_1B79C4B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C4BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C4C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v27;
  v8[6] = v28;
  v8[3] = a7;
  v8[4] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47308, &qword_1B7A9F498);
  v8[7] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47310, &qword_1B7A9F4A0);
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v16 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v14, v15);
  v8[12] = v16;
  v8[13] = *(v16 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v17, v18);
  v8[16] = swift_task_alloc();
  v8[17] = *(AssociatedTypeWitness - 8);
  v8[18] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v8[19] = v19;
  v8[20] = *(v19 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1B7A9AB60();
  v8[23] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v8[24] = v20;
  v8[25] = *(v20 - 8);
  v8[26] = swift_task_alloc();
  v21 = swift_checkMetadataState();
  v8[27] = v21;
  v8[28] = *(v21 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v22 = swift_task_alloc();
  v8[31] = v22;
  v8[32] = sub_1B7A9A760();
  v8[33] = sub_1B7A9A750();
  v8[2] = a4;
  v23 = swift_task_alloc();
  v8[34] = v23;
  *v23 = v8;
  v23[1] = sub_1B79C5094;

  return IntentDispatchAction.callAsFunction<A>(_:_:)(v22, a5, a6, a8, v27);
}

uint64_t sub_1B79C5094()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B7A9A710();
    v5 = v4;
    v6 = sub_1B79C595C;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1B7A9A710();
    v8 = v10;
    *(v2 + 288) = v9;
    *(v2 + 296) = v10;
    v6 = sub_1B79C51F4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B79C51F4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79C533C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79C533C()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79C5AF4;
  }

  else
  {
    v5 = sub_1B79C5490;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79C5490()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_5:
    v10 = *(v0 + 72);
    (*(v0 + 304))(*(v0 + 232), *(v0 + 248), *(v0 + 216));
    v11 = swift_dynamicCast();
    v12 = *(v10 + 56);
    if (v11)
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v12(v16, 0, 1, v15);
      (*(v14 + 32))(v13, v16, v15);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v17 = *(v0 + 248);
        v18 = *(v0 + 216);
        v19 = *(v0 + 224);
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        (*(v19 + 8))(v17, v18);
      }

      else
      {
        v43 = *(v0 + 248);
        v44 = *(v0 + 216);
        v45 = *(v0 + 224);
        v47 = *(v0 + 72);
        v46 = *(v0 + 80);
        v48 = *(v0 + 64);
        IntentViewLogFinishedSequenceError()();
        (*(v47 + 8))(v46, v48);
        (*(v45 + 8))(v43, v44);
      }
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 56);
      v12(v23, 1, 1, *(v0 + 64));
      (*(v22 + 8))(v20, v21);
      sub_1B7957888(v23, &qword_1EBA47308, &qword_1B7A9F498);
    }

    v24 = *(v0 + 8);

    return v24();
  }

  (*(v2 + 32))(*(v0 + 144), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 88);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v49 = *(v0 + 96);
  v50 = *(v0 + 88);
  v51 = *(v0 + 144);
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  v32 = *(v0 + 24);
  v33 = *(v0 + 32);
  (*(v26 + 16))(v27);
  swift_storeEnumTagMultiPayload();
  sub_1B79C5D7C(v32, v33, v31, v30);
  sub_1B7996A3C(v27, v49, v34, v35);
  sub_1B79C7F58(v28, v32, v33, v31, v30);
  (*(v29 + 8))(v28, v49);
  (*(v26 + 8))(v51, v50);
  v36 = sub_1B7A9A750();
  *(v0 + 320) = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v38 = swift_task_alloc();
  *(v0 + 336) = v38;
  *v38 = v0;
  v38[1] = sub_1B79C533C;
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  v42 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v39, v36, v42, v41, v40, AssociatedConformanceWitness);
}

uint64_t sub_1B79C595C()
{

  v1 = v0[35];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v10 = v1;
  sub_1B79C5D7C(v9, v8, v7, v6);
  sub_1B7996A3C(v2, v5, v11, v12);
  sub_1B79C7F58(v3, v9, v8, v7, v6);
  (*(v4 + 8))(v3, v5);

  v13 = v0[1];

  return v13();
}