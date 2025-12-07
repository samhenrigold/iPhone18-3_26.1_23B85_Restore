uint64_t sub_1D26C2268()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v35 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2872008();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v18, v15, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      sub_1D26CEFC8(v15, type metadata accessor for Bubble.BubbleType);
      sub_1D2877FE8();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED8B0058;
      sub_1D28718C8();
      return sub_1D28780E8();
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v29 = qword_1ED8B0058;
        sub_1D28718C8();
        v23 = sub_1D28780E8();
        v27 = type metadata accessor for Bubble.BubbleType;
        v28 = v15;
        goto LABEL_24;
      }

      sub_1D26CEFC8(v15, type metadata accessor for Bubble.BubbleType);
      return 0;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D26CE3F4(v15, v9, type metadata accessor for CharacterAsset);
        v23 = sub_1D268B138();
        v27 = type metadata accessor for CharacterAsset;
        v28 = v9;
LABEL_24:
        sub_1D26CEFC8(v28, v27);
        return v23;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v21 = v33;
        sub_1D26CE3F4(v15, v33, type metadata accessor for PhotosPersonAsset);
        if (v21[1])
        {
          v23 = *v21;
        }

        else
        {
          v23 = 0;
        }

        sub_1D2870F68();
        v24 = type metadata accessor for PhotosPersonAsset;
      }

      else
      {
        v21 = v34;
        sub_1D26CE3F4(v15, v34, type metadata accessor for Prompt);
        v23 = v21[1];
        sub_1D2870F68();
        v24 = type metadata accessor for Prompt;
      }

LABEL_23:
      v27 = v24;
      v28 = v21;
      goto LABEL_24;
    }

    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1D26CE3F4(v15, v21, type metadata accessor for CuratedPrompt);
      v23 = v21[2];
      sub_1D2870F68();
      v24 = type metadata accessor for CuratedPrompt;
      goto LABEL_23;
    }

    v26 = v32;
    (*(v32 + 32))(v12, v15, v10);
    v23 = sub_1D24DC8F0();
    (*(v26 + 8))(v12, v10);
  }

  return v23;
}

uint64_t sub_1D26C2900@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v42 = a5;
  v40 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE60, &qword_1D289D618);
  v14 = sub_1D22BB9D8(&qword_1ED89D1F8, &qword_1EC6DFE60, &qword_1D289D618, MEMORY[0x1E697D658]);
  v47 = a3;
  v48 = v13;
  v43 = v14;
  v44 = v13;
  v49 = a4;
  v50 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v38 - v20;
  v21 = sub_1D2875B08();
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v26 | v23)
  {
    v39 = &v38;
    MEMORY[0x1EEE9AC00](v22);
    *(&v38 - 4) = a1;
    *(&v38 - 3) = a2;
    *(&v38 - 2) = v30;
    v31 = v44;
    v40 = v25;
    v32 = v21;
    v33 = v43;
    sub_1D2876DB8();
    v25 = v40;
    v47 = a3;
    v48 = v31;
    v49 = a4;
    v50 = v33;
    v21 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v38;
    sub_1D245980C();
    v36 = *(v16 + 8);
    v36(v18, OpaqueTypeMetadata2);
    sub_1D245980C();
    sub_1D24CB6D4(v18, OpaqueTypeMetadata2, a3, OpaqueTypeConformance2, a4);
    v36(v18, OpaqueTypeMetadata2);
    v36(v35, OpaqueTypeMetadata2);
  }

  else
  {
    sub_1D245980C();
    v27 = v39;
    sub_1D245980C();
    v47 = a3;
    v48 = v44;
    v49 = a4;
    v50 = v43;
    v28 = swift_getOpaqueTypeConformance2();
    sub_1D24CB7CC(v27, OpaqueTypeMetadata2, a3, v28, a4);
    v29 = *(v40 + 1);
    v29(v27, a3);
    v29(v12, a3);
  }

  v47 = a3;
  v48 = v44;
  v49 = a4;
  v50 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = a4;
  swift_getWitnessTable();
  sub_1D245980C();
  return (*(v41 + 8))(v25, v21);
}

double sub_1D26C2DE8(uint64_t a1)
{
  sub_1D2877938();
  sub_1D2874BE8();

  return result;
}

uint64_t sub_1D26C2E54(uint64_t a1)
{
  v2 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for BubbleView(0);
  if ((*(a1 + *(result + 64)) & 1) == 0)
  {
    strcpy(v9, "Destination-");
    HIBYTE(v9[6]) = 0;
    v9[7] = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
    sub_1D2874338();
    v6 = sub_1D2846EE0();
    v8 = v7;
    sub_1D26CEFC8(v4, type metadata accessor for Bubble);
    MEMORY[0x1D38A0C50](v6, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8, &qword_1D289D340);
    return sub_1D2874348();
  }

  return result;
}

uint64_t sub_1D26C2FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = type metadata accessor for Bubble.BubbleType(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for Bubble(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for CuratedPrompt(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D2878568();
  v3[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D26C30FC, v5, v4);
}

uint64_t sub_1D26C30FC()
{
  *(v0 + 208) = *(type metadata accessor for BubbleView(0) + 72);
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBF0, &unk_1D289D348);
  sub_1D2874338();
  v1 = *(v0 + 16);
  if (v1)
  {

LABEL_17:

    v17 = *(v0 + 8);

    return v17();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v2, v3, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    sub_1D26CEFC8(*(v0 + 64), type metadata accessor for Bubble.BubbleType);
    sub_1D2874338();
    sub_1D26CE3F4(v9, v10, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v15 = *(v0 + 56);

      v16 = type metadata accessor for Bubble.BubbleType;
LABEL_16:
      sub_1D26CEFC8(v15, v16);
      goto LABEL_17;
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    sub_1D26CE3F4(*(v0 + 56), v12, type metadata accessor for CuratedPrompt);
    v13 = (v12 + *(v11 + 48));
    v14 = v13[1];
    *(v0 + 176) = v14;
    if (v14)
    {
      *(v0 + 184) = *v13;
      *(v0 + 192) = sub_1D26BBA10();
      v8 = sub_1D26C35D8;
      goto LABEL_9;
    }

    v15 = *(v0 + 96);
LABEL_15:

    v16 = type metadata accessor for CuratedPrompt;
    goto LABEL_16;
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  sub_1D26CE3F4(*(v0 + 64), v4, type metadata accessor for CuratedPrompt);
  v6 = (v4 + *(v5 + 48));
  v7 = v6[1];
  *(v0 + 144) = v7;
  if (!v7)
  {
    v15 = *(v0 + 104);
    goto LABEL_15;
  }

  *(v0 + 152) = *v6;
  *(v0 + 160) = sub_1D26BBA10();
  v8 = sub_1D26C3404;
LABEL_9:

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D26C3404()
{
  CGRectMake();
  v1 = sub_1D2871C78();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v3 = 0;
  }

  v0[21] = v3;
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D26C34F0, v4, v5);
}

uint64_t sub_1D26C34F0()
{
  v1 = v0[21];
  v2 = v0[13];

  v0[4] = v1;
  sub_1D2874348();
  sub_1D26CEFC8(v2, type metadata accessor for CuratedPrompt);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D26C35D8()
{
  CGRectMake();
  v1 = sub_1D2871C78();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v3 = 0;
  }

  v0[25] = v3;
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D26C36C4, v4, v5);
}

uint64_t sub_1D26C36C4()
{
  v1 = v0[25];
  v2 = v0[12];

  v0[3] = v1;
  sub_1D2874348();
  sub_1D26CEFC8(v2, type metadata accessor for CuratedPrompt);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D26C37B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v36 = a3;
  v4 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  LODWORD(a2) = *a2 - 5;
  type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  if (a2 > 1)
  {
    sub_1D2874338();
    sub_1D26CE3F4(v14, v6, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D26CE3F4(v6, v22, type metadata accessor for CuratedPrompt);
      v30 = v35;
      sub_1D26CE38C(v22, v35, type metadata accessor for CuratedPrompt);
      swift_storeEnumTagMultiPayload();
      v31 = v34;
      sub_1D2874338();
      sub_1D26CE270(v30, v31);
      sub_1D2874348();
      v28 = type metadata accessor for CuratedPrompt;
      v29 = v22;
    }

    else
    {
      v28 = type metadata accessor for Bubble.BubbleType;
      v29 = v6;
    }
  }

  else
  {
    sub_1D2874338();
    sub_1D26CE3F4(v19, v11, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D26CE3F4(v11, v25, type metadata accessor for CuratedPrompt);
      if (*&v25[v20[12] + 8] || *&v25[v20[11] + 8] || v25[v20[23] + 48] != 255)
      {
        v26 = v35;
        sub_1D26CE38C(v25, v35, type metadata accessor for CuratedPrompt);
        swift_storeEnumTagMultiPayload();
        v27 = v34;
        sub_1D2874338();
        sub_1D26CE270(v26, v27);
        sub_1D2874348();
      }

      v28 = type metadata accessor for CuratedPrompt;
      v29 = v25;
    }

    else
    {
      v28 = type metadata accessor for Bubble.BubbleType;
      v29 = v11;
    }
  }

  return sub_1D26CEFC8(v29, v28);
}

uint64_t sub_1D26C3BF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v89 = a2;
  v90 = a3;
  v91 = a1;
  v97 = a4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0030, &qword_1D289DA18);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v75 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCB0, &qword_1D289D470);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v75 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCA8, &qword_1D289D468);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF00, &qword_1D289D6A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v75 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0038, &qword_1D289DA20);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF10, &qword_1D289D6B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v75 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCB8, &qword_1D289D478);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCA0, &qword_1D289D460);
  MEMORY[0x1EEE9AC00](v93);
  v21 = (&v75 - v20);
  v22 = sub_1D2875628();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 16);
  v28 = *(v4 + 24) == 1;
  v81 = v24;
  v80 = v23;
  v79 = v26;
  if (v28)
  {
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_4:
    v29 = sub_1D26BBCD4();
    *v21 = sub_1D2875918();
    v21[1] = v29;
    *(v21 + 16) = 0;
    sub_1D26C6FCC(v91, v89 & 1, v90 & 1, v19);
    if (*(v4 + *(type metadata accessor for BubbleView(0) + 68)))
    {
      v30 = 1;
      v31 = v85;
LABEL_22:
      (*(v9 + 56))(v31, v30, 1, v8);
      v70 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0050, &qword_1D289DA38) + 44);
      v71 = v88;
      sub_1D22BD1D0(v19, v88, &qword_1EC6DFCB8, &qword_1D289D478);
      v72 = v82;
      sub_1D22BD1D0(v31, v82, &qword_1EC6DFF10, &qword_1D289D6B8);
      sub_1D22BD1D0(v71, v70, &qword_1EC6DFCB8, &qword_1D289D478);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0058, &qword_1D289DA40);
      sub_1D22BD1D0(v72, v70 + *(v73 + 48), &qword_1EC6DFF10, &qword_1D289D6B8);
      sub_1D22BD238(v31, &qword_1EC6DFF10, &qword_1D289D6B8);
      sub_1D22BD238(v19, &qword_1EC6DFCB8, &qword_1D289D478);
      sub_1D22BD238(v72, &qword_1EC6DFF10, &qword_1D289D6B8);
      sub_1D22BD238(v71, &qword_1EC6DFCB8, &qword_1D289D478);
      sub_1D22BD1D0(v21, v95, &qword_1EC6DFCA0, &qword_1D289D460);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0A0, &qword_1EC6DFCA0, &qword_1D289D460, MEMORY[0x1E6981870]);
      sub_1D26CB7F4();
      sub_1D2875AF8();
      v66 = v21;
      v67 = &qword_1EC6DFCA0;
      v68 = &qword_1D289D460;
      return sub_1D22BD238(v66, v67, v68);
    }

    v38 = *v4;
    v31 = v85;
    if (*(v4 + 8))
    {
      v39 = *v4;
      if (v39 != 5)
      {
LABEL_17:
        if (v39 != 6)
        {
          v69 = v76;
          sub_1D26C7A04(v76);
          sub_1D22EC9BC(v69, v31, &qword_1EC6DFF00, &qword_1D289D6A8);
          v30 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v78 = v19;
      v46 = sub_1D28762E8();
      v19 = v78;
      sub_1D2873BE8();

      v47 = v79;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v38, 0);
      (*(v80 + 8))(v47, v81);
      v39 = v98;
      if (v98 != 5)
      {
        goto LABEL_17;
      }
    }

    v30 = 1;
    goto LABEL_22;
  }

  v32 = v24;
  sub_1D2870F78();
  sub_1D2878A28();
  v78 = v19;
  v33 = sub_1D28762E8();
  v75 = v4;
  v34 = v33;
  sub_1D2873BE8();

  v19 = v78;
  v4 = v75;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D2273818(v27, 0);
  (*(v23 + 8))(v26, v32);
  if ((v100 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  v35 = v89;
  v36 = *v4;
  if (*(v4 + 8) == 1)
  {
    v37 = *v4;
    if (v37 == 5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v40 = sub_1D28762E8();
    sub_1D2873BE8();

    v41 = v79;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v36, 0);
    (*(v80 + 8))(v41, v81);
    v37 = v99;
    if (v99 == 5)
    {
      goto LABEL_15;
    }
  }

  if (v37 != 6)
  {
    v48 = v77;
    sub_1D26C6FCC(v91, v35 & 1, v90 & 1, v77);
    v49 = sub_1D2877838();
    v51 = v50;
    v52 = v48 + *(v83 + 36);
    sub_1D26C7A04(v52);
    v53 = sub_1D2875698();
    v54 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0040, &qword_1D289DA28) + 36));
    *v54 = v53;
    v54[1] = sub_1D26CF834;
    v54[2] = 0;
    LOBYTE(v53) = sub_1D2876348();
    sub_1D26BBCD4();
    sub_1D2874298();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0048, &qword_1D289DA30) + 36);
    *v63 = v53;
    *(v63 + 8) = v56;
    *(v63 + 16) = v58;
    *(v63 + 24) = v60;
    *(v63 + 32) = v62;
    *(v63 + 40) = 0;
    v64 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD20, &qword_1D289D4E0) + 36));
    *v64 = v49;
    v64[1] = v51;
    v43 = &qword_1EC6DFCB0;
    v44 = &qword_1D289D470;
    sub_1D22BD1D0(v48, v84, &qword_1EC6DFCB0, &qword_1D289D470);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB880();
    sub_1D26CB938();
    sub_1D2875AF8();
    v45 = v48;
    goto LABEL_20;
  }

LABEL_15:
  v42 = v88;
  sub_1D26C6FCC(v91, v35 & 1, v90 & 1, v88);
  v43 = &qword_1EC6DFCB8;
  v44 = &qword_1D289D478;
  sub_1D22BD1D0(v42, v84, &qword_1EC6DFCB8, &qword_1D289D478);
  swift_storeEnumTagMultiPayload();
  sub_1D26CB880();
  sub_1D26CB938();
  sub_1D2875AF8();
  v45 = v42;
LABEL_20:
  sub_1D22BD238(v45, v43, v44);
  v65 = v92;
  sub_1D22BD1D0(v92, v95, &qword_1EC6DFCA8, &qword_1D289D468);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D0A0, &qword_1EC6DFCA0, &qword_1D289D460, MEMORY[0x1E6981870]);
  sub_1D26CB7F4();
  sub_1D2875AF8();
  v66 = v65;
  v67 = &qword_1EC6DFCA8;
  v68 = &qword_1D289D468;
  return sub_1D22BD238(v66, v67, v68);
}

BOOL sub_1D26C4724(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 48);
  if (qword_1ED8A14E8 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (*(v8 + 16) != *(qword_1ED8B0138 + 16))
  {
    return 0;
  }

  v9 = *v1;
  if (*(v1 + 8) == 1)
  {
    v10 = *v1;
  }

  else
  {
    v12 = v5;
    sub_1D2870F78();
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v9, 0);
    (*(v4 + 8))(v7, v12);
    v10 = v15[15];
  }

  return (v10 - 7) < 0xFFFFFFFE;
}

uint64_t sub_1D26C48E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v71 = a1;
  v79 = a3;
  v70 = sub_1D2875628();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDF0, &qword_1D289D5B8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDE8, &qword_1D289D5B0);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v67 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDE0, &qword_1D289D5A8);
  MEMORY[0x1EEE9AC00](v74);
  v12 = &v67 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDD8, &qword_1D289D5A0);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v67 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDD0, &qword_1D289D598);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v67 - v14;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  LOBYTE(v82) = 0;
  LOBYTE(v81) = 0;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE00, &qword_1D289D5C8) + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE10, &qword_1D289D5E0) + 28);
  v19 = *MEMORY[0x1E6980FA8];
  v20 = sub_1D2876628();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = v72;
  *v8 = v71;
  *(v8 + 1) = v21;
  v8[16] = 0;
  *(v8 + 17) = v90[0];
  v22 = MEMORY[0x1E69E7CC0];
  *(v8 + 5) = *(v90 + 3);
  *(v8 + 3) = v22;
  *(v8 + 4) = KeyPath;
  v8[40] = 0;
  *(v8 + 41) = *v89;
  *(v8 + 11) = *&v89[3];
  *(v8 + 6) = v16;
  *(v8 + 7) = 2;
  v8[64] = 0;
  v23 = swift_getKeyPath();
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDF8, &qword_1D289D5C0) + 36)];
  *v24 = v23;
  v24[8] = 1;
  v25 = swift_getKeyPath();
  v26 = &v8[*(v6 + 44)];
  *v26 = v25;
  v26[1] = 0x3FE999999999999ALL;
  sub_1D2870F68();
  sub_1D26BBA10();
  sub_1D26C6848();
  sub_1D2877848();
  sub_1D2875208();
  sub_1D22EC9BC(v8, v10, &qword_1EC6DFDF0, &qword_1D289D5B8);
  v27 = &v10[*(v73 + 36)];
  v28 = v87;
  *(v27 + 4) = v86;
  *(v27 + 5) = v28;
  *(v27 + 6) = v88;
  v29 = v83;
  *v27 = v82;
  *(v27 + 1) = v29;
  v30 = v85;
  *(v27 + 2) = v84;
  *(v27 + 3) = v30;
  LOBYTE(v23) = sub_1D2876328();
  type metadata accessor for BubbleView(0);
  sub_1D2874298();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1D22EC9BC(v10, v12, &qword_1EC6DFDE8, &qword_1D289D5B0);
  v39 = &v12[*(v74 + 36)];
  *v39 = v23;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v23) = sub_1D2876398();
  sub_1D2874298();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v12;
  v49 = v76;
  sub_1D22EC9BC(v48, v76, &qword_1EC6DFDE0, &qword_1D289D5A8);
  v50 = v49 + *(v75 + 36);
  *v50 = v23;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  sub_1D26C69AC(&v81);
  v51 = v81;
  v52 = sub_1D26C6E70();
  v53 = *(v3 + 16);
  if (*(v3 + 24) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v54 = sub_1D28762E8();
    sub_1D2873BE8();

    v55 = v68;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v53, 0);
    (*(v69 + 8))(v55, v70);
    LOBYTE(v53) = v80;
  }

  v56 = v78;
  v57 = &v78[*(v77 + 36)];
  *v57 = v51;
  v57[8] = 1;
  v57[9] = v52;
  v57[10] = (v53 & 1) == 0;
  *(v57 + 2) = swift_getKeyPath();
  v57[24] = 0;
  *(v57 + 4) = swift_getKeyPath();
  v57[40] = 0;
  *(v57 + 6) = swift_getKeyPath();
  v57[56] = 0;
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD08, &qword_1D289D4C8) + 60);
  *&v57[v58] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  sub_1D22EC9BC(v49, v56, &qword_1EC6DFDD8, &qword_1D289D5A0);
  v59 = sub_1D28777E8();
  v61 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDC8, &qword_1D289D590);
  v63 = v79;
  v64 = v79 + *(v62 + 36);
  sub_1D26C50F8(0, v64);
  v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD18, &qword_1D289D4D8) + 36));
  *v65 = v59;
  v65[1] = v61;
  return sub_1D22EC9BC(v56, v63, &qword_1EC6DFDD0, &qword_1D289D598);
}

uint64_t sub_1D26C50F8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFD0, &qword_1D289D978);
  v74 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v73 = &v70 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFD8, &qword_1D289D980);
  MEMORY[0x1EEE9AC00](v89);
  v93 = &v70 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFE0, &qword_1D289D988);
  MEMORY[0x1EEE9AC00](v90);
  v7 = &v70 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFE8, &qword_1D289D990);
  v72 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v71 = &v70 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFF0, &qword_1D289D998);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v70 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFF8, &qword_1D289D9A0);
  MEMORY[0x1EEE9AC00](v98);
  v11 = &v70 - v10;
  v95 = type metadata accessor for BubbleActionButtonStyle(0);
  MEMORY[0x1EEE9AC00](v95);
  v70 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0000, &qword_1D289D9A8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0008, &unk_1D289D9B0);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v70 - v13;
  v100 = type metadata accessor for BubbleView(0);
  v75 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v76 = v14;
  v77 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v79 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v70 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0010, &qword_1D289D9C0);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v70 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0018, &qword_1D289D9C8);
  MEMORY[0x1EEE9AC00](v96);
  v82 = &v70 - v17;
  v99 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v99);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D2875628();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + 16);
  v101 = v2;
  v28 = *(v2 + 24);
  v88 = a1;
  if (a1)
  {
    if (v28)
    {
      v29 = v100;
      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v45 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v27, 0);
      (*(v24 + 8))(v26, v23);
      v29 = v100;
      if ((v103 & 1) == 0)
      {
LABEL_4:
        if ((*(v101 + *(v29 + 48)) & 1) == 0)
        {
          v30 = v77;
          sub_1D26CE38C(v101, v77, type metadata accessor for BubbleView);
          v31 = (*(v75 + 80) + 16) & ~*(v75 + 80);
          v32 = swift_allocObject();
          sub_1D26CE3F4(v30, v32 + v31, type metadata accessor for BubbleView);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
          sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
          v33 = v78;
          sub_1D2877368();
          v34 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
          v35 = sub_1D26CF028();
          v36 = v80;
          v37 = v84;
          sub_1D28767B8();
          (*(v79 + 8))(v33, v37);
          v38 = v81;
          v39 = v83;
          (*(v81 + 16))(v86, v36, v83);
          swift_storeEnumTagMultiPayload();
          v103 = v37;
          v104 = &type metadata for BubbleActionContextMenuButtonStyle;
          v105 = v34;
          v106 = v35;
          swift_getOpaqueTypeConformance2();
          v40 = sub_1D26CF7A8(qword_1ED8A09B8, type metadata accessor for BubbleActionButtonStyle, &unk_1D28AB98C);
          v103 = v37;
          v104 = v95;
          v105 = v34;
          v106 = v40;
          swift_getOpaqueTypeConformance2();
          v41 = v82;
          sub_1D2875AF8();
          (*(v38 + 8))(v36, v39);
          v42 = &qword_1EC6E0018;
          v43 = &qword_1D289D9C8;
          sub_1D22BD1D0(v41, v11, &qword_1EC6E0018, &qword_1D289D9C8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CF07C();
          sub_1D26CF1EC();
          sub_1D2875AF8();
          v44 = v41;
LABEL_20:
          sub_1D22BD238(v44, v42, v43);
          v49 = 0;
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    if ((*(v101 + *(v29 + 48)) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v28)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v46 = sub_1D28762E8();
    v87 = v7;
    v47 = v46;
    sub_1D2873BE8();

    v7 = v87;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v27, 0);
    (*(v24 + 8))(v26, v23);
    if (v103 != 1)
    {
      goto LABEL_15;
    }
  }

  if ((*(v101 + *(v100 + 48)) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v22, v19, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D26CEFC8(v19, type metadata accessor for Bubble.BubbleType);
  if (EnumCaseMultiPayload != 9)
  {
    if (v88)
    {
      sub_1D26C60B0(1, v7);
      v50 = sub_1D26CEE54();
      v51 = sub_1D26CF028();
      v52 = v71;
      v53 = v90;
      sub_1D28767B8();
      sub_1D22BD238(v7, &qword_1EC6DFFE0, &qword_1D289D988);
      v54 = v72;
      v55 = v91;
      (*(v72 + 16))(v93, v52, v91);
      swift_storeEnumTagMultiPayload();
      v103 = v53;
      v104 = &type metadata for BubbleActionContextMenuButtonStyle;
      v105 = v50;
      v106 = v51;
      swift_getOpaqueTypeConformance2();
      v56 = sub_1D26CF7A8(qword_1ED8A09B8, type metadata accessor for BubbleActionButtonStyle, &unk_1D28AB98C);
      v103 = v53;
      v104 = v95;
      v105 = v50;
      v106 = v56;
      swift_getOpaqueTypeConformance2();
      v57 = v92;
      sub_1D2875AF8();
      (*(v54 + 8))(v52, v55);
    }

    else
    {
      sub_1D26C60B0(0, v7);
      KeyPath = swift_getKeyPath();
      v59 = v70;
      *v70 = KeyPath;
      *(v59 + 8) = 0;
      *(v59 + 16) = swift_getKeyPath();
      *(v59 + 24) = 0;
      v60 = v95;
      v61 = *(v95 + 24);
      *(v59 + v61) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
      swift_storeEnumTagMultiPayload();
      *(v59 + *(v60 + 28)) = 0x403A000000000000;
      v62 = sub_1D26CEE54();
      v101 = sub_1D26CF7A8(qword_1ED8A09B8, type metadata accessor for BubbleActionButtonStyle, &unk_1D28AB98C);
      v63 = v73;
      v64 = v90;
      sub_1D28767B8();
      sub_1D26CEFC8(v59, type metadata accessor for BubbleActionButtonStyle);
      sub_1D22BD238(v7, &qword_1EC6DFFE0, &qword_1D289D988);
      v65 = v74;
      v66 = v94;
      (*(v74 + 16))(v93, v63, v94);
      swift_storeEnumTagMultiPayload();
      v67 = sub_1D26CF028();
      v103 = v64;
      v104 = &type metadata for BubbleActionContextMenuButtonStyle;
      v105 = v62;
      v106 = v67;
      swift_getOpaqueTypeConformance2();
      v103 = v64;
      v104 = v60;
      v105 = v62;
      v106 = v101;
      swift_getOpaqueTypeConformance2();
      v57 = v92;
      sub_1D2875AF8();
      (*(v65 + 8))(v63, v66);
    }

    v42 = &qword_1EC6DFFF0;
    v43 = &qword_1D289D998;
    sub_1D22BD1D0(v57, v11, &qword_1EC6DFFF0, &qword_1D289D998);
    swift_storeEnumTagMultiPayload();
    sub_1D26CF07C();
    sub_1D26CF1EC();
    sub_1D2875AF8();
    v44 = v57;
    goto LABEL_20;
  }

LABEL_15:
  v49 = 1;
LABEL_21:
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0020, &qword_1D289D9D0);
  return (*(*(v68 - 8) + 56))(v102, v49, 1, v68);
}

uint64_t sub_1D26C60B0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = type metadata accessor for BubbleView(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0028, &unk_1D289D9D8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v16, v13, type metadata accessor for Bubble.BubbleType);
  v17 = 1 << swift_getEnumCaseMultiPayload();
  if ((v17 & 0x7E8) == 0)
  {
    if ((v17 & 0x13) != 0)
    {
      sub_1D26CEFC8(v13, type metadata accessor for Bubble.BubbleType);
    }

    else
    {
      sub_1D26CE3F4(v13, v10, type metadata accessor for CuratedPrompt);
      v25 = sub_1D26C4724(v10);
      sub_1D26CEFC8(v10, type metadata accessor for CuratedPrompt);
      if (v25)
      {
        goto LABEL_3;
      }
    }

    v19 = -2.0;
    v18 = -7.0;
    goto LABEL_7;
  }

  sub_1D26CEFC8(v13, type metadata accessor for Bubble.BubbleType);
LABEL_3:
  v18 = -12.0;
  v19 = -12.0;
LABEL_7:
  sub_1D26CE38C(v2, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BubbleView);
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = sub_1D26CE3F4(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for BubbleView);
  MEMORY[0x1EEE9AC00](v22);
  *(&v26 - 16) = v28 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D2877368();
  v23 = &v7[*(v5 + 36)];
  *v23 = v18;
  v23[1] = v19;
  sub_1D2875798();
  sub_1D26CEF10();
  sub_1D2876AA8();

  return sub_1D22BD238(v7, &qword_1EC6E0028, &unk_1D289D9D8);
}

double sub_1D26C6558()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

double sub_1D26C66BC()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

double sub_1D26C6848()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 6.0;
  if (v6 == 6)
  {
    result = 10.0;
  }

  if (v6 == 5)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1D26C69AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D2875188();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v14, v11, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 5)
    {
      sub_1D26CEFC8(v11, type metadata accessor for Bubble.BubbleType);
      v17 = *(v1 + *(v15 + 88) + 56);
      v18 = *(v3 + 20);
      v19 = *MEMORY[0x1E697F468];
      v20 = sub_1D2875868();
      (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
      *v5 = v17;
      *(v5 + 1) = v17;
      sub_1D26CF7A8(&qword_1ED89D740, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 4)
    {
LABEL_3:
      sub_1D26CEFC8(v11, type metadata accessor for Bubble.BubbleType);
      sub_1D22ED498();
LABEL_6:
      result = sub_1D2877608();
      *a1 = result;
      return result;
    }

    v26 = *(v1 + *(v15 + 88) + 64);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v26 = *(v1 + *(v15 + 88) + 72);
LABEL_13:
    v27 = *(v3 + 20);
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1D2875868();
    (*(*(v29 - 8) + 104))(&v5[v27], v28, v29);
    *v5 = v26;
    *(v5 + 1) = v26;
    sub_1D26CF7A8(&qword_1ED89D740, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    *a1 = sub_1D2877608();
    return sub_1D26CEFC8(v11, type metadata accessor for Bubble.BubbleType);
  }

  sub_1D26CE3F4(v11, v8, type metadata accessor for CuratedPrompt);
  if (sub_1D26C4724(v8))
  {
    v22 = *(v1 + *(v15 + 88) + 64);
    v23 = *(v3 + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_1D2875868();
    (*(*(v25 - 8) + 104))(&v5[v23], v24, v25);
    *v5 = v22;
    *(v5 + 1) = v22;
    sub_1D26CF7A8(&qword_1ED89D740, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  }

  else
  {
    sub_1D22ED498();
  }

  v30 = sub_1D2877608();
  result = sub_1D26CEFC8(v8, type metadata accessor for CuratedPrompt);
  *a1 = v30;
  return result;
}

BOOL sub_1D26C6E70()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BubbleView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1D26C6FCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v72 = a3;
  v71 = a4;
  v8 = sub_1D2873998();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2875628();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCD8, &qword_1D289D498);
  MEMORY[0x1EEE9AC00](v61);
  v18 = &v56 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCD0, &qword_1D289D490);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCC8, &qword_1D289D488);
  MEMORY[0x1EEE9AC00](v64);
  v69 = &v56 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCC0, &qword_1D289D480);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v56 - v21;
  sub_1D26C9F80(a1, v85);
  v60 = *&v85[0];
  v76 = BYTE8(v85[0]);
  sub_1D26BBA10();
  v75 = a2;
  v70 = v11;
  if (a2)
  {
    type metadata accessor for BubbleView(0);
    sub_1D26BBA10();
  }

  else
  {
    sub_1D26BBA10();
  }

  sub_1D2877848();
  sub_1D2875208();
  v84 = v76;
  v83 = 1;
  *&v82[54] = v85[3];
  *&v82[70] = v85[4];
  *&v82[86] = v85[5];
  *&v82[102] = v85[6];
  *&v82[6] = v85[0];
  *&v82[22] = v85[1];
  *&v82[38] = v85[2];
  v22 = *(v5 + 16);
  v23 = *(v5 + 24);
  if (v23 == 1)
  {
    v24 = *(v5 + 16);
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v25 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v22, 0);
    (*(v73 + 8))(v16, v74);
    LODWORD(v24) = v79;
  }

  if ((v24 ^ 1 | v75))
  {
    sub_1D26BBA10();
    if (!v23)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2878A28();
      v26 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v22, 0);
      (*(v73 + 8))(v16, v74);
      v27 = v79;
      goto LABEL_12;
    }
  }

  else if (!v23)
  {
    goto LABEL_9;
  }

  v27 = v22;
LABEL_12:
  if ((v27 ^ 1 | v75))
  {
    sub_1D26BBA10();
  }

  sub_1D2877848();
  sub_1D28748C8();
  sub_1D26C69AC(&v78);
  v28 = v78;
  v29 = sub_1D26C6E70();
  if (!v23)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v30 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v22, 0);
    (*(v73 + 8))(v16, v74);
    LOBYTE(v22) = v77;
  }

  v31 = &v18[*(v61 + 36)];
  *v31 = v28;
  v31[8] = 0;
  v31[9] = v29;
  v31[10] = (v22 & 1) == 0;
  *(v31 + 2) = swift_getKeyPath();
  v31[24] = 0;
  *(v31 + 4) = swift_getKeyPath();
  v31[40] = 0;
  *(v31 + 6) = swift_getKeyPath();
  v31[56] = 0;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD08, &qword_1D289D4C8) + 60);
  *&v31[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  *v18 = v60;
  v18[8] = v76;
  *(v18 + 2) = 0;
  v18[24] = 1;
  v18[25] = 1;
  *(v18 + 90) = *&v82[64];
  v33 = *&v82[96];
  *(v18 + 106) = *&v82[80];
  *(v18 + 122) = v33;
  *(v18 + 17) = *&v82[110];
  v34 = *&v82[16];
  *(v18 + 26) = *v82;
  *(v18 + 42) = v34;
  v35 = *&v82[48];
  *(v18 + 58) = *&v82[32];
  *(v18 + 74) = v35;
  v36 = v80;
  *(v18 + 9) = v79;
  *(v18 + 10) = v36;
  *(v18 + 11) = v81;
  type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  v37 = v62;
  sub_1D2874338();
  v38 = v37;
  v39 = v70;
  sub_1D26CE3F4(v38, v70, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v40 = sub_1D28770A8();
  }

  else
  {
    if (qword_1ED8A6B70 != -1)
    {
      swift_once();
    }

    v41 = v59;
    v42 = __swift_project_value_buffer(v59, qword_1ED8B02D0);
    (*(v58 + 16))(v57, v42, v41);
    v40 = sub_1D2877108();
  }

  v43 = v40;
  sub_1D26CEFC8(v39, type metadata accessor for Bubble.BubbleType);
  sub_1D26C69AC(&v78);
  v44 = v78;
  v45 = v65;
  sub_1D22EC9BC(v18, v65, &qword_1EC6DFCD8, &qword_1D289D498);
  v46 = v45 + *(v66 + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  *(v46 + 16) = 256;
  v47 = v69;
  sub_1D22EC9BC(v45, v69, &qword_1EC6DFCD0, &qword_1D289D490);
  *(v47 + *(v64 + 36)) = 1;
  v48 = sub_1D28777E8();
  v50 = v49;
  v51 = v68;
  v52 = &v68[*(v63 + 36)];
  sub_1D26C50F8(0, v52);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD18, &qword_1D289D4D8) + 36));
  *v53 = v48;
  v53[1] = v50;
  sub_1D22EC9BC(v47, v51, &qword_1EC6DFCC8, &qword_1D289D488);
  v54 = v71;
  sub_1D22EC9BC(v51, v71, &qword_1EC6DFCC0, &qword_1D289D480);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCB8, &qword_1D289D478);
  *(v54 + *(result + 36)) = (v72 & 1) == 0;
  return result;
}

uint64_t sub_1D26C7A04@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF48, &qword_1D289D6F8);
  MEMORY[0x1EEE9AC00](v97);
  v3 = &v78[-v2];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF50, &unk_1D289D700);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v78[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v78[-v6];
  v85 = sub_1D28764E8();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF58, &qword_1D289D710);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v78[-v10];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF60, &qword_1D289D718);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v78[-v11];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF68, &qword_1D289D720);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v78[-v12];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF70, &qword_1D289D728);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v78[-v15];
  v16 = sub_1D2875628();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if ((v20 & 1) == 0)
    {
LABEL_3:
      v21 = v1 + *(type metadata accessor for BubbleView(0) + 36);
      v22 = *v21;
      if (*(v21 + 8) != 1)
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v23 = sub_1D28762E8();
        sub_1D2873BE8();

        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v22, 0);
        (*(v17 + 8))(v19, v16);
        LOBYTE(v22) = v99;
      }

      if (v22)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      sub_1D26CA37C(v24, v3);
      v25 = &qword_1EC6DFF48;
      v26 = &qword_1D289D6F8;
      sub_1D22BD1D0(v3, v96, &qword_1EC6DFF48, &qword_1D289D6F8);
      swift_storeEnumTagMultiPayload();
      sub_1D26CE45C();
      sub_1D26CEB34();
      sub_1D2875AF8();
      v27 = v3;
      return sub_1D22BD238(v27, v25, v26);
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v28 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v20, 0);
    (*(v17 + 8))(v19, v16);
    if (v99 != 1)
    {
      goto LABEL_3;
    }
  }

  v83 = v1;
  sub_1D26CAB00(&v99);
  v81 = *(&v99 + 1);
  v82 = v99;
  v80 = *(&v100 + 1);
  v29 = v100;
  v30 = BYTE2(v101);
  v31 = v84;
  v32 = v101;
  v33 = v85;
  (*(v84 + 104))(v9, *MEMORY[0x1E6980F30], v85);
  v34 = *MEMORY[0x1E6980E28];
  v35 = sub_1D28763F8();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v7, v34, v35);
  (*(v36 + 56))(v7, 0, 1, v35);
  sub_1D2876418();
  v37 = sub_1D2876458();
  sub_1D22BD238(v7, &qword_1EC6D9D40, &qword_1D28804D0);
  (*(v31 + 8))(v9, v33);
  KeyPath = swift_getKeyPath();
  v39 = v30;
  v79 = v30;
  v105 = v30;
  v40 = v82;
  v41 = v81;
  *&v99 = v82;
  *(&v99 + 1) = v81;
  v42 = v80;
  *&v100 = v29;
  *(&v100 + 1) = v80;
  LOWORD(v101) = v32;
  BYTE2(v101) = v39;
  *(&v101 + 3) = v103;
  BYTE7(v101) = v104;
  *(&v101 + 1) = KeyPath;
  v102 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF90, &qword_1D289D748);
  sub_1D26CE948();
  v43 = v93;
  sub_1D2876FA8();
  sub_1D26CECE0(v40, v41, v29, v42, v32, v79);

  v44 = swift_getKeyPath();
  v45 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF88, &qword_1D289D740) + 36)];
  *v45 = v44;
  v45[8] = 1;
  v46 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF80, &qword_1D289D738) + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE10, &qword_1D289D5E0) + 28);
  v48 = *MEMORY[0x1E6980FA8];
  v49 = sub_1D2876628();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v51 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF78, &qword_1D289D730) + 36)];
  *v51 = v50;
  v51[8] = 1;
  v52 = swift_getKeyPath();
  v53 = &v43[*(v86 + 36)];
  *v53 = v52;
  v53[1] = 0x3FE999999999999ALL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498, &qword_1D2894E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v43) = sub_1D2876348();
  *(inited + 32) = v43;
  v55 = sub_1D2876358();
  *(inited + 33) = v55;
  v56 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v43)
  {
    v56 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v55)
  {
    v56 = sub_1D2876378();
  }

  type metadata accessor for BubbleView(0);
  sub_1D2874298();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v89;
  sub_1D22EC9BC(v93, v89, &qword_1EC6DFF58, &qword_1D289D710);
  v66 = &v65[*(v87 + 36)];
  *v66 = v56;
  *(v66 + 1) = v58;
  *(v66 + 2) = v60;
  *(v66 + 3) = v62;
  *(v66 + 4) = v64;
  v66[40] = 0;
  v67 = [objc_opt_self() labelColor];
  v68 = sub_1D2877128();
  v69 = swift_getKeyPath();
  v70 = v65;
  v71 = v91;
  sub_1D22EC9BC(v70, v91, &qword_1EC6DFF60, &qword_1D289D718);
  v72 = &v71[*(v88 + 36)];
  *v72 = v69;
  v72[1] = v68;
  sub_1D26BBA10();
  sub_1D2877848();
  sub_1D28748C8();
  v73 = v90;
  sub_1D22EC9BC(v71, v90, &qword_1EC6DFF68, &qword_1D289D720);
  v74 = &v73[*(v94 + 36)];
  v75 = v100;
  *v74 = v99;
  v74[1] = v75;
  v74[2] = v101;
  v25 = &qword_1EC6DFF70;
  v26 = &qword_1D289D728;
  v76 = v92;
  sub_1D22EC9BC(v73, v92, &qword_1EC6DFF70, &qword_1D289D728);
  sub_1D22BD1D0(v76, v96, &qword_1EC6DFF70, &qword_1D289D728);
  swift_storeEnumTagMultiPayload();
  sub_1D26CE45C();
  sub_1D26CEB34();
  sub_1D2875AF8();
  v27 = v76;
  return sub_1D22BD238(v27, v25, v26);
}

uint64_t sub_1D26C8580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v76 = a4;
  v75 = a5;
  v66 = sub_1D2875628();
  v77 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD78, &qword_1D289D538);
  MEMORY[0x1EEE9AC00](v65);
  v13 = &v62 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD70, &qword_1D289D530);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v62 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD68, &qword_1D289D528);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v62 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD60, &qword_1D289D520);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v62 - v16;
  type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBF0, &unk_1D289D348);
  sub_1D2874338();
  v17 = v94;
  sub_1D26C91C4(v94, a1, a2, &v78);

  v104 = v88;
  v105 = v89;
  v106 = v90;
  LOBYTE(v107) = v91;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v96 = v80;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v94 = v78;
  v95 = v79;
  v18 = sub_1D2877848();
  v63 = v19;
  v64 = v18;
  sub_1D26C9AA4(a3, v92);
  v62 = *&v92[0];
  v20 = BYTE8(v92[0]);
  LOBYTE(v92[0]) = BYTE8(v92[0]);
  sub_1D26C69AC(&v78);
  v21 = v78;
  v22 = sub_1D26C6E70();
  v23 = *(v6 + 16);
  v67 = *(v6 + 24);
  v69 = v11;
  if (v67 == 1)
  {
    v24 = v23;
    v25 = v66;
    v26 = v77;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v23, 0);
    v26 = v77;
    v25 = v66;
    (*(v77 + 8))(v11, v66);
    v24 = v93[0];
  }

  v28 = &v13[*(v65 + 36)];
  *v28 = v21;
  v28[8] = 0;
  v28[9] = v22;
  v28[10] = (v24 & 1) == 0;
  *(v28 + 2) = swift_getKeyPath();
  v28[24] = 0;
  *(v28 + 4) = swift_getKeyPath();
  v28[40] = 0;
  *(v28 + 6) = swift_getKeyPath();
  v28[56] = 0;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD08, &qword_1D289D4C8) + 60);
  *&v28[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  v30 = v105;
  *(v13 + 10) = v104;
  *(v13 + 11) = v30;
  *(v13 + 12) = v106;
  v31 = v107;
  v32 = v101;
  *(v13 + 6) = v100;
  *(v13 + 7) = v32;
  v33 = v103;
  *(v13 + 8) = v102;
  *(v13 + 9) = v33;
  v34 = v97;
  *(v13 + 2) = v96;
  *(v13 + 3) = v34;
  v35 = v99;
  *(v13 + 4) = v98;
  *(v13 + 5) = v35;
  v36 = v95;
  *v13 = v94;
  *(v13 + 1) = v36;
  v37 = v62;
  *(v13 + 26) = v31;
  *(v13 + 27) = v37;
  v13[224] = v20;
  *(v13 + 225) = *v93;
  *(v13 + 57) = *&v93[3];
  v38 = v63;
  *(v13 + 29) = v64;
  *(v13 + 30) = v38;
  sub_1D26BBA10();
  sub_1D26BBA10();
  sub_1D2877848();
  sub_1D2875208();
  v39 = v13;
  v40 = v72;
  sub_1D22EC9BC(v39, v72, &qword_1EC6DFD78, &qword_1D289D538);
  v41 = (v40 + *(v68 + 36));
  v42 = v83;
  v41[4] = v82;
  v41[5] = v42;
  v41[6] = v84;
  v43 = v79;
  *v41 = v78;
  v41[1] = v43;
  v44 = v81;
  v41[2] = v80;
  v41[3] = v44;
  if (v67)
  {
    if (v23)
    {
      goto LABEL_13;
    }

    sub_1D26BBA10();
    goto LABEL_12;
  }

  sub_1D2870F78();
  sub_1D2878A28();
  v45 = sub_1D28762E8();
  sub_1D2873BE8();

  v46 = v69;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D2273818(v23, 0);
  v47 = *(v26 + 8);
  v77 = v26 + 8;
  v47(v46, v25);
  v48 = v25;
  if (LOBYTE(v92[0]) != 1)
  {
    sub_1D26BBA10();
  }

  sub_1D2870F78();
  sub_1D2878A28();
  v49 = sub_1D28762E8();
  sub_1D2873BE8();

  v50 = v69;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D2273818(v23, 0);
  v47(v50, v48);
  if ((v92[0] & 1) == 0)
  {
LABEL_12:
    sub_1D26BBA10();
  }

LABEL_13:
  sub_1D2877848();
  sub_1D28748C8();
  v51 = v74;
  sub_1D22EC9BC(v40, v74, &qword_1EC6DFD70, &qword_1D289D530);
  v52 = (v51 + *(v71 + 36));
  v53 = v92[1];
  *v52 = v92[0];
  v52[1] = v53;
  v52[2] = v92[2];
  v54 = sub_1D28777E8();
  v56 = v55;
  v57 = v73;
  v58 = &v73[*(v70 + 36)];
  sub_1D26C50F8(0, v58);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD18, &qword_1D289D4D8) + 36));
  *v59 = v54;
  v59[1] = v56;
  sub_1D22EC9BC(v51, v57, &qword_1EC6DFD68, &qword_1D289D528);
  v60 = v75;
  sub_1D22EC9BC(v57, v75, &qword_1EC6DFD60, &qword_1D289D520);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD58, &qword_1D289D518);
  *(v60 + *(result + 36)) = (v76 & 1) == 0;
  return result;
}

uint64_t sub_1D26C8E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D2875628();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF00, &qword_1D289D6A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFB8, &qword_1D289D8B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFC0, &qword_1D289D8B8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  sub_1D26C7A04(v11);
  v18 = type metadata accessor for PlaygroundImage(0);
  if ((*(*(v18 - 8) + 48))(a2, 1, v18) == 1)
  {
    goto LABEL_7;
  }

  v19 = *a1;
  if (*(a1 + 8) == 1)
  {
    v20 = *a1;
    if (v20 == 5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v36 = v6;
    v21 = sub_1D28762E8();
    v37 = a3;
    v22 = v21;
    sub_1D2873BE8();

    a3 = v37;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v19, 0);
    (*(v38 + 8))(v8, v36);
    v20 = v39;
    if (v39 == 5)
    {
LABEL_7:
      v23 = 0.0;
      goto LABEL_8;
    }
  }

  v23 = 1.0;
  if (v20 == 6)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1D22EC9BC(v11, v14, &qword_1EC6DFF00, &qword_1D289D6A8);
  *&v14[*(v12 + 36)] = v23;
  v24 = sub_1D2875698();
  sub_1D22EC9BC(v14, v17, &qword_1EC6DFFB8, &qword_1D289D8B0);
  v25 = &v17[*(v15 + 36)];
  *v25 = v24;
  v25[1] = sub_1D26CF834;
  v25[2] = 0;
  LOBYTE(v24) = sub_1D2876348();
  sub_1D26BBCD4();
  sub_1D2874298();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1D22EC9BC(v17, a3, &qword_1EC6DFFC0, &qword_1D289D8B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFC8, &qword_1D289D8C0);
  v35 = a3 + *(result + 36);
  *v35 = v24;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

double sub_1D26C91C4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v57 + 1) = a3;
  *&v57 = a2;
  v6 = sub_1D2875628();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52[-v11];
  v13 = sub_1D28771B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    v55 = v9;
    v56 = v7;
    v24 = v6;
    v90 = v57;
    sub_1D22BD06C();
    sub_1D2870F68();
    v25 = sub_1D2876698();
    v27 = v26;
    v29 = v28;
    v30 = v58;
    sub_1D26BBB74();
    v31 = sub_1D28763F8();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    sub_1D2876448();
    sub_1D22BD238(v12, &qword_1EC6D9D40, &qword_1D28804D0);
    v32 = sub_1D2876658();
    *&v57 = v33;
    *(&v57 + 1) = v32;
    v35 = v34;
    v54 = v36;

    sub_1D22ED6E0(v25, v27, v29 & 1);

    sub_1D26BBA10();
    sub_1D26BBA10();
    sub_1D2877848();
    sub_1D2875208();
    *&v80[54] = v86;
    *&v80[70] = v87;
    *&v80[86] = v88;
    *&v80[102] = v89;
    *&v80[6] = v83;
    *&v80[22] = v84;
    v37 = v35 & 1;
    v82 = v37;
    v81 = 1;
    *&v80[38] = v85;
    v38 = *(v30 + 16);
    if (*(v30 + 24) == 1)
    {
      if (v38)
      {
        goto LABEL_13;
      }

      sub_1D26BBA10();
      v53 = v37;
    }

    else
    {
      v53 = v37;
      sub_1D2870F78();
      sub_1D2878A28();
      v39 = sub_1D28762E8();
      sub_1D2873BE8();

      v40 = v55;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v38, 0);
      v41 = v56 + 8;
      v42 = *(v56 + 8);
      v42(v40, v24);
      v56 = v41;
      if (v90 != 1)
      {
        sub_1D26BBA10();
      }

      sub_1D2870F78();
      sub_1D2878A28();
      v43 = sub_1D28762E8();
      sub_1D2873BE8();

      v44 = v55;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v38, 0);
      v42(v44, v24);
      if (v90)
      {
        goto LABEL_12;
      }
    }

    sub_1D26BBA10();
LABEL_12:
    LOBYTE(v37) = v53;
LABEL_13:
    sub_1D2877848();
    sub_1D28748C8();
    *(&v75[4] + 10) = *&v80[64];
    *(&v75[5] + 10) = *&v80[80];
    *(&v75[6] + 10) = *&v80[96];
    *(v75 + 10) = *v80;
    *(&v75[1] + 10) = *&v80[16];
    *(&v75[2] + 10) = *&v80[32];
    *&v73 = *(&v57 + 1);
    *(&v73 + 1) = v57;
    LOBYTE(v74) = v37;
    *(&v74 + 1) = v54;
    *&v75[0] = 0;
    WORD4(v75[0]) = 257;
    *(&v75[7] + 1) = *&v80[110];
    *(&v75[3] + 10) = *&v80[48];
    sub_1D26CF7F0(&v73);
    v69 = v76;
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v65 = v75[4];
    v66 = v75[5];
    v67 = v75[6];
    v68 = v75[7];
    v61 = v75[0];
    v62 = v75[1];
    v63 = v75[2];
    v64 = v75[3];
    v59 = v73;
    v60 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD90, &unk_1D289D550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD98, &qword_1D289D560);
    sub_1D26CC6A8();
    sub_1D26CC734();
    sub_1D2875AF8();
    goto LABEL_14;
  }

  v17 = a1;
  sub_1D2877188();
  (*(v14 + 104))(v16, *MEMORY[0x1E6981630], v13);
  v18 = sub_1D2877228();

  (*(v14 + 8))(v16, v13);
  sub_1D26BBA10();
  v19 = sub_1D2876338();
  sub_1D2874298();
  LOBYTE(v59) = 1;
  v82 = 0;
  v83 = v18;
  LOWORD(v84) = 1;
  *(&v84 + 2) = v73;
  WORD3(v84) = WORD2(v73);
  BYTE8(v84) = v19;
  *(&v84 + 9) = v90;
  HIDWORD(v84) = *(&v90 + 3);
  *&v85 = v20;
  *(&v85 + 1) = v21;
  *&v86 = v22;
  *(&v86 + 1) = v23;
  LOBYTE(v87) = 0;
  LOBYTE(v75[2]) = 0;
  v75[0] = v85;
  v75[1] = v86;
  v73 = v18;
  v74 = v84;
  sub_1D26CF7FC(&v73);
  v100 = v76;
  v101 = v77;
  v102 = v78;
  v103 = v79;
  v96 = v75[4];
  v97 = v75[5];
  v98 = v75[6];
  v99 = v75[7];
  v92 = v75[0];
  v93 = v75[1];
  v94 = v75[2];
  v95 = v75[3];
  v90 = v73;
  v91 = v74;
  sub_1D22BD1D0(&v83, &v59, &qword_1EC6DFD90, &unk_1D289D550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD90, &unk_1D289D550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD98, &qword_1D289D560);
  sub_1D26CC6A8();
  sub_1D26CC734();
  sub_1D2875AF8();

  sub_1D22BD238(&v83, &qword_1EC6DFD90, &unk_1D289D550);
  v100 = v69;
  v101 = v70;
  v102 = v71;
  v103 = v72;
  v96 = v65;
  v97 = v66;
  v98 = v67;
  v99 = v68;
  v92 = v61;
  v93 = v62;
  v94 = v63;
  v95 = v64;
  v90 = v59;
  v91 = v60;
LABEL_14:
  v45 = v101;
  *(a4 + 160) = v100;
  *(a4 + 176) = v45;
  *(a4 + 192) = v102;
  *(a4 + 208) = v103;
  v46 = v97;
  *(a4 + 96) = v96;
  *(a4 + 112) = v46;
  v47 = v99;
  *(a4 + 128) = v98;
  *(a4 + 144) = v47;
  v48 = v93;
  *(a4 + 32) = v92;
  *(a4 + 48) = v48;
  v49 = v95;
  *(a4 + 64) = v94;
  *(a4 + 80) = v49;
  result = *&v90;
  v51 = v91;
  *a4 = v90;
  *(a4 + 16) = v51;
  return result;
}

uint64_t sub_1D26C9AA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_1D28771B8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28771C8();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2873998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for PlaygroundImage(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BD1D0(v34, v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (qword_1ED8A6B70 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v7, qword_1ED8B02D0);
    (*(v8 + 16))(v10, v18, v7);
    v36 = sub_1D2877108();
    v37 = 1;
    result = sub_1D2875AF8();
  }

  else
  {
    sub_1D26CE3F4(v13, v17, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    sub_1D28771A8();

    v21 = v29;
    v20 = v30;
    (*(v29 + 104))(v6, *MEMORY[0x1E6981648], v30);
    sub_1D28771D8();

    (*(v21 + 8))(v6, v20);
    v23 = v31;
    v22 = v32;
    v24 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x1E6981630], v33);
    v25 = sub_1D2877228();

    (*(v22 + 8))(v23, v24);
    v36 = v25;
    v37 = 0;
    sub_1D2875AF8();
    result = sub_1D26CEFC8(v17, type metadata accessor for PlaygroundImage);
  }

  v26 = v39;
  v27 = v35;
  *v35 = v38;
  *(v27 + 8) = v26;
  return result;
}

uint64_t sub_1D26C9F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_1D28771B8();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28771C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PlaygroundImage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BD1D0(v24, v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D22BD238(v11, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v26 = sub_1D2877098();
    v27 = 1;
    result = sub_1D2875AF8();
  }

  else
  {
    sub_1D26CE3F4(v11, v15, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    sub_1D28771A8();

    (*(v6 + 104))(v8, *MEMORY[0x1E6981648], v5);
    sub_1D28771D8();

    (*(v6 + 8))(v8, v5);
    v18 = v22;
    v17 = v23;
    (*(v22 + 104))(v4, *MEMORY[0x1E6981630], v23);
    v19 = sub_1D2877228();

    (*(v18 + 8))(v4, v17);
    v26 = v19;
    v27 = 0;
    sub_1D2875AF8();
    result = sub_1D26CEFC8(v15, type metadata accessor for PlaygroundImage);
  }

  v20 = v29;
  v21 = v25;
  *v25 = v28;
  *(v21 + 8) = v20;
  return result;
}

uint64_t sub_1D26CA37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v63 = a2;
  v45 = sub_1D2875E18();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v41 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFB0, &qword_1D289D8A8);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v41 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA8, &unk_1D289D768);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v41 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF48, &qword_1D289D6F8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v41 - v16;
  sub_1D26CAB00(&v64);
  v17 = v64;
  v18 = v65;
  v19 = v66;
  v20 = v67;
  v21 = v68;
  v22 = v69;
  v23 = sub_1D28764A8();
  KeyPath = swift_getKeyPath();
  v72 = v22;
  v53 = v18;
  v54 = v17;
  v64 = v17;
  v65 = v18;
  v51 = v20;
  v52 = v19;
  v66 = v19;
  v67 = v20;
  v25 = v44;
  v50 = v21;
  v68 = v21;
  v26 = v45;
  v46 = v22;
  v69 = v22;
  v47 = KeyPath;
  v70 = KeyPath;
  v71 = v23;
  v49 = v23;
  v27 = v43;
  type metadata accessor for BubbleView(0);
  sub_1D24CC0C4(v12);
  v28 = v42;
  (*(v25 + 104))(v42, *MEMORY[0x1E697FF38], v26);
  (*(v25 + 56))(v28, 0, 1, v26);
  v29 = *(v4 + 56);
  sub_1D22BD1D0(v12, v27, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v28, v27 + v29, &qword_1EC6D99B8, &unk_1D287E890);
  v30 = *(v25 + 48);
  if (v30(v27, 1, v26) == 1)
  {
    sub_1D22BD238(v28, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    if (v30(v27 + v29, 1, v26) == 1)
    {
      sub_1D22BD238(v27, &qword_1EC6D99B8, &unk_1D287E890);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v27, v48, &qword_1EC6D99B8, &unk_1D287E890);
  if (v30(v27 + v29, 1, v26) == 1)
  {
    sub_1D22BD238(v28, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v25 + 8))(v48, v26);
LABEL_6:
    sub_1D22BD238(v27, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_8;
  }

  v31 = v41;
  (*(v25 + 32))(v41, v27 + v29, v26);
  sub_1D26CF7A8(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v32 = v48;
  sub_1D2877F98();
  v33 = *(v25 + 8);
  v33(v31, v26);
  sub_1D22BD238(v28, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
  v33(v32, v26);
  sub_1D22BD238(v27, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_8:
  v34 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF90, &qword_1D289D748);
  sub_1D26CE948();
  sub_1D2876FA8();
  sub_1D26CECE0(v54, v53, v52, v51, v50, v46);

  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  v35 = qword_1ED8B0018;
  v36 = v57;
  (*(v60 + 32))(v57, v34, v61);
  *(v36 + *(v58 + 36)) = v35;
  v37 = swift_getKeyPath();
  v38 = v55;
  sub_1D22EC9BC(v36, v55, &qword_1EC6DFFA8, &unk_1D289D768);
  v39 = v38 + *(v56 + 36);
  *v39 = v37;
  *(v39 + 8) = 1;
  sub_1D22EC9BC(v38, v63, &qword_1EC6DFF48, &qword_1D289D6F8);
  return sub_1D2870F78();
}

void sub_1D26CAB00(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v63 = sub_1D2872008();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BubbleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0, &qword_1D289D338);
  sub_1D2874338();
  sub_1D26CE3F4(v15, v12, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1D26CE3F4(v12, v18, type metadata accessor for CuratedPrompt);
      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      sub_1D2870F68();
      sub_1D26CEFC8(v18, type metadata accessor for CuratedPrompt);
      *&v69 = v20;
      *(&v69 + 1) = v21;
      sub_1D22BD06C();
      v22 = sub_1D2876698();
      v24 = v23;
      *&v65 = v22;
      *(&v65 + 1) = v23;
      v26 = v25 & 1;
      *&v66 = v25 & 1;
      *(&v66 + 1) = v27;
      LOBYTE(v67) = 0;
      sub_1D22BBFAC(v22, v23, v25 & 1);
      sub_1D2870F68();
      sub_1D2875AF8();
      v65 = v69;
      v66 = v70;
      v67 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10, &qword_1D289D760);
      sub_1D2459164();
      sub_1D2875AF8();
      if (HIBYTE(v71))
      {
        v28 = 256;
      }

      else
      {
        v28 = 0;
      }

      v65 = v69;
      v66 = v70;
      v67 = v28 | v71;
      v68 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA0, &qword_1D289D758);
      sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
      sub_1D2875AF8();
      sub_1D22ED6E0(v22, v24, v26);

LABEL_20:
      v51 = v69;
      v50 = v70;
      v52 = v71;
      v53 = v72;
LABEL_21:
      v54 = v64;
      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      v32 = v7;
      v33 = v63;
      (*(v7 + 32))(v9, v12, v63);
      *&v69 = sub_1D24DC8F0();
      *(&v69 + 1) = v34;
      sub_1D22BD06C();
      v35 = sub_1D2876698();
      v37 = v36;
      v39 = v38 & 1;
      *&v65 = v35;
      *(&v65 + 1) = v36;
      *&v66 = v38 & 1;
      *(&v66 + 1) = v40;
      LOBYTE(v67) = 1;
      sub_1D22BBFAC(v35, v36, v38 & 1);
      sub_1D2870F68();
      sub_1D2875AF8();
      v65 = v69;
      v66 = v70;
      v67 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10, &qword_1D289D760);
      sub_1D2459164();
      sub_1D2875AF8();
      if (HIBYTE(v71))
      {
        v41 = 256;
      }

      else
      {
        v41 = 0;
      }

      v65 = v69;
      v66 = v70;
      v67 = v41 | v71;
      v68 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA0, &qword_1D289D758);
      sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
      sub_1D2875AF8();
      sub_1D22ED6E0(v35, v37, v39);

      (*(v32 + 8))(v9, v33);
      goto LABEL_20;
    }

LABEL_23:
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v68 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA0, &qword_1D289D758);
    sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
    sub_1D2875AF8();
    v62 = v69;
    v63 = v70;
    v52 = v71;
    v53 = v72;
    sub_1D26CEFC8(v12, type metadata accessor for Bubble.BubbleType);
    v51 = v62;
    v50 = v63;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1D26CE3F4(v12, v6, type metadata accessor for CharacterAsset);
    *&v69 = sub_1D268B138();
    *(&v69 + 1) = v42;
    sub_1D22BD06C();
    v43 = sub_1D2876698();
    v45 = v44;
    *&v65 = v43;
    *(&v65 + 1) = v44;
    v47 = v46 & 1;
    *&v66 = v46 & 1;
    *(&v66 + 1) = v48;
    LOBYTE(v67) = 0;
    sub_1D22BBFAC(v43, v44, v46 & 1);
    sub_1D2870F68();
    sub_1D2875AF8();
    v65 = v69;
    v66 = v70;
    LOBYTE(v67) = v71;
    HIBYTE(v67) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10, &qword_1D289D760);
    sub_1D2459164();
    sub_1D2875AF8();
    if (HIBYTE(v71))
    {
      v49 = 256;
    }

    else
    {
      v49 = 0;
    }

    v65 = v69;
    v66 = v70;
    v67 = v49 | v71;
    v68 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA0, &qword_1D289D758);
    sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
    sub_1D2875AF8();
    sub_1D22ED6E0(v43, v45, v47);

    sub_1D26CEFC8(v6, type metadata accessor for CharacterAsset);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_23;
  }

  v29 = v3;
  sub_1D26CE3F4(v12, v3, type metadata accessor for PhotosPersonAsset);
  if (v3[1])
  {
    v30 = *v3;
    v31 = v3[1];
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  v54 = v64;
  *&v69 = v30;
  *(&v69 + 1) = v31;
  sub_1D22BD06C();
  sub_1D2870F68();
  v55 = sub_1D2876698();
  v57 = v56;
  v59 = v58 & 1;
  *&v65 = v55;
  *(&v65 + 1) = v56;
  *&v66 = v58 & 1;
  *(&v66 + 1) = v60;
  LOBYTE(v67) = 1;
  sub_1D22BBFAC(v55, v56, v58 & 1);
  sub_1D2870F68();
  sub_1D2875AF8();
  v65 = v69;
  v66 = v70;
  LOBYTE(v67) = v71;
  HIBYTE(v67) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10, &qword_1D289D760);
  sub_1D2459164();
  sub_1D2875AF8();
  if (HIBYTE(v71))
  {
    v61 = 256;
  }

  else
  {
    v61 = 0;
  }

  v65 = v69;
  v66 = v70;
  v67 = v61 | v71;
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFFA0, &qword_1D289D758);
  sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
  sub_1D2875AF8();
  sub_1D22ED6E0(v55, v57, v59);

  sub_1D26CEFC8(v29, type metadata accessor for PhotosPersonAsset);
  v51 = v69;
  v50 = v70;
  v52 = v71;
  v53 = v72;
LABEL_22:
  *v54 = v51;
  *(v54 + 16) = v50;
  *(v54 + 32) = v52;
  *(v54 + 34) = v53;
}

unint64_t sub_1D26CB56C()
{
  result = qword_1EC6DFC78;
  if (!qword_1EC6DFC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC70, &qword_1D289D438);
    sub_1D26CB5F8();
    sub_1D26CD204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFC78);
  }

  return result;
}

unint64_t sub_1D26CB5F8()
{
  result = qword_1ED89D4D8;
  if (!qword_1ED89D4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC80, &qword_1D289D440);
    sub_1D26CB684();
    sub_1D26CCF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4D8);
  }

  return result;
}

unint64_t sub_1D26CB684()
{
  result = qword_1ED89D4E8;
  if (!qword_1ED89D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC88, &qword_1D289D448);
    sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
    sub_1D26CBF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4E8);
  }

  return result;
}

unint64_t sub_1D26CB73C()
{
  result = qword_1ED89D548;
  if (!qword_1ED89D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC98, &qword_1D289D458);
    sub_1D22BB9D8(&qword_1ED89D0A0, &qword_1EC6DFCA0, &qword_1D289D460, MEMORY[0x1E6981870]);
    sub_1D26CB7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D548);
  }

  return result;
}

unint64_t sub_1D26CB7F4()
{
  result = qword_1ED89D5D0;
  if (!qword_1ED89D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCA8, &qword_1D289D468);
    sub_1D26CB880();
    sub_1D26CB938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5D0);
  }

  return result;
}

unint64_t sub_1D26CB880()
{
  result = qword_1ED89D770;
  if (!qword_1ED89D770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCB0, &qword_1D289D470);
    sub_1D26CB938();
    sub_1D22BB9D8(&qword_1ED89D710, &qword_1EC6DFD20, &qword_1D289D4E0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D770);
  }

  return result;
}

unint64_t sub_1D26CB938()
{
  result = qword_1ED89D780;
  if (!qword_1ED89D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCB8, &qword_1D289D478);
    sub_1D26CB9C4();
    sub_1D26CBECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D780);
  }

  return result;
}

unint64_t sub_1D26CB9C4()
{
  result = qword_1ED89D7A0;
  if (!qword_1ED89D7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCC0, &qword_1D289D480);
    sub_1D26CBA7C();
    sub_1D22BB9D8(&qword_1ED89D700, &qword_1EC6DFD18, &qword_1D289D4D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7A0);
  }

  return result;
}

unint64_t sub_1D26CBA7C()
{
  result = qword_1ED89D7C8;
  if (!qword_1ED89D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCC8, &qword_1D289D488);
    sub_1D26CBB08();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7C8);
  }

  return result;
}

unint64_t sub_1D26CBB08()
{
  result = qword_1ED89D800;
  if (!qword_1ED89D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCD0, &qword_1D289D490);
    sub_1D26CBBC0();
    sub_1D22BB9D8(&qword_1ED89D390, &qword_1EC6DFD10, &qword_1D289D4D0, MEMORY[0x1E6980458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D800);
  }

  return result;
}

unint64_t sub_1D26CBBC0()
{
  result = qword_1ED89D850;
  if (!qword_1ED89D850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCD8, &qword_1D289D498);
    sub_1D26CBC78();
    sub_1D22BB9D8(qword_1ED8A2918, &qword_1EC6DFD08, &qword_1D289D4C8, &unk_1D289C490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D850);
  }

  return result;
}

unint64_t sub_1D26CBC78()
{
  result = qword_1ED89D8D8;
  if (!qword_1ED89D8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCE0, &qword_1D289D4A0);
    sub_1D26CBD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8D8);
  }

  return result;
}

unint64_t sub_1D26CBD04()
{
  result = qword_1ED89D9F0;
  if (!qword_1ED89D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCE8, &qword_1D289D4A8);
    sub_1D26CBD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9F0);
  }

  return result;
}

unint64_t sub_1D26CBD90()
{
  result = qword_1ED89DC00;
  if (!qword_1ED89DC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFCF0, &qword_1D289D4B0);
    sub_1D26CC064(&qword_1ED89D228, &qword_1EC6DFCF8, &qword_1D289D4B8, sub_1D26CBE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC00);
  }

  return result;
}

unint64_t sub_1D26CBE48()
{
  result = qword_1ED89D558;
  if (!qword_1ED89D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD00, &qword_1D289D4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D558);
  }

  return result;
}

unint64_t sub_1D26CBECC()
{
  result = qword_1ED8A0DE8;
  if (!qword_1ED8A0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DE8);
  }

  return result;
}

unint64_t sub_1D26CBF20()
{
  result = qword_1ED89D500;
  if (!qword_1ED89D500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD28, &qword_1D289D4E8);
    sub_1D26CB73C();
    sub_1D26CBFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D500);
  }

  return result;
}

unint64_t sub_1D26CBFAC()
{
  result = qword_1ED89D560;
  if (!qword_1ED89D560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD30, &qword_1D289D4F0);
    sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
    sub_1D26CC8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D560);
  }

  return result;
}

uint64_t sub_1D26CC064(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D26CC0E0()
{
  result = qword_1ED89D550;
  if (!qword_1ED89D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD40, &qword_1D289D500);
    sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48, &qword_1D289D508, MEMORY[0x1E6981870]);
    sub_1D26CC198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D550);
  }

  return result;
}

unint64_t sub_1D26CC198()
{
  result = qword_1ED89D7B0;
  if (!qword_1ED89D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD50, &qword_1D289D510);
    sub_1D26CC250();
    sub_1D22BB9D8(&qword_1ED89D708, &qword_1EC6DFDB8, &qword_1D289D580, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7B0);
  }

  return result;
}

unint64_t sub_1D26CC250()
{
  result = qword_1ED89D7D8;
  if (!qword_1ED89D7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD58, &qword_1D289D518);
    sub_1D26CC2DC();
    sub_1D26CBECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7D8);
  }

  return result;
}

unint64_t sub_1D26CC2DC()
{
  result = qword_1ED89D820;
  if (!qword_1ED89D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD60, &qword_1D289D520);
    sub_1D26CC394();
    sub_1D22BB9D8(&qword_1ED89D700, &qword_1EC6DFD18, &qword_1D289D4D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D820);
  }

  return result;
}

unint64_t sub_1D26CC394()
{
  result = qword_1ED89D888;
  if (!qword_1ED89D888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD68, &qword_1D289D528);
    sub_1D26CC420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D888);
  }

  return result;
}

unint64_t sub_1D26CC420()
{
  result = qword_1ED89D948;
  if (!qword_1ED89D948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD70, &qword_1D289D530);
    sub_1D26CC4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D948);
  }

  return result;
}

unint64_t sub_1D26CC4AC()
{
  result = qword_1ED89DB10;
  if (!qword_1ED89DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD78, &qword_1D289D538);
    sub_1D26CC564();
    sub_1D22BB9D8(qword_1ED8A2918, &qword_1EC6DFD08, &qword_1D289D4C8, &unk_1D289C490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB10);
  }

  return result;
}

unint64_t sub_1D26CC564()
{
  result = qword_1ED89DDC8;
  if (!qword_1ED89DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD80, &qword_1D289D540);
    sub_1D26CC61C();
    sub_1D22BB9D8(&qword_1ED89D648, &qword_1EC6DFDB0, &qword_1D289D578, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDC8);
  }

  return result;
}

unint64_t sub_1D26CC61C()
{
  result = qword_1ED89D5E0;
  if (!qword_1ED89D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD88, &qword_1D289D548);
    sub_1D26CC6A8();
    sub_1D26CC734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5E0);
  }

  return result;
}

unint64_t sub_1D26CC6A8()
{
  result = qword_1ED89D9D0;
  if (!qword_1ED89D9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD90, &unk_1D289D550);
    sub_1D22F587C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9D0);
  }

  return result;
}

unint64_t sub_1D26CC734()
{
  result = qword_1ED89D908;
  if (!qword_1ED89D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFD98, &qword_1D289D560);
    sub_1D26CC7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D908);
  }

  return result;
}

unint64_t sub_1D26CC7C0()
{
  result = qword_1ED89DA90;
  if (!qword_1ED89DA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDA0, &qword_1D289D568);
    sub_1D26CC84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA90);
  }

  return result;
}

unint64_t sub_1D26CC84C()
{
  result = qword_1ED89DCF8;
  if (!qword_1ED89DCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDA8, &qword_1D289D570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCF8);
  }

  return result;
}

unint64_t sub_1D26CC8D0()
{
  result = qword_1ED89D5C8;
  if (!qword_1ED89D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDC0, &qword_1D289D588);
    sub_1D26CC95C();
    sub_1D26CB73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5C8);
  }

  return result;
}

unint64_t sub_1D26CC95C()
{
  result = qword_1ED89D768;
  if (!qword_1ED89D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDC8, &qword_1D289D590);
    sub_1D26CCA14();
    sub_1D22BB9D8(&qword_1ED89D700, &qword_1EC6DFD18, &qword_1D289D4D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D768);
  }

  return result;
}

unint64_t sub_1D26CCA14()
{
  result = qword_1ED89D778;
  if (!qword_1ED89D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDD0, &qword_1D289D598);
    sub_1D26CCACC();
    sub_1D22BB9D8(qword_1ED8A2918, &qword_1EC6DFD08, &qword_1D289D4C8, &unk_1D289C490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D778);
  }

  return result;
}

unint64_t sub_1D26CCACC()
{
  result = qword_1ED89D788;
  if (!qword_1ED89D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDD8, &qword_1D289D5A0);
    sub_1D26CCB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D788);
  }

  return result;
}

unint64_t sub_1D26CCB58()
{
  result = qword_1ED89D7A8;
  if (!qword_1ED89D7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDE0, &qword_1D289D5A8);
    sub_1D26CCBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7A8);
  }

  return result;
}

unint64_t sub_1D26CCBE4()
{
  result = qword_1ED89D7D0;
  if (!qword_1ED89D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDE8, &qword_1D289D5B0);
    sub_1D26CCC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7D0);
  }

  return result;
}

unint64_t sub_1D26CCC70()
{
  result = qword_1ED89D808;
  if (!qword_1ED89D808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDF0, &qword_1D289D5B8);
    sub_1D26CCD28();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0, &unk_1D288E500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D808);
  }

  return result;
}

unint64_t sub_1D26CCD28()
{
  result = qword_1ED89D860;
  if (!qword_1ED89D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFDF8, &qword_1D289D5C0);
    sub_1D26CCDE0();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0, &qword_1D287FD70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D860);
  }

  return result;
}

unint64_t sub_1D26CCDE0()
{
  result = qword_1ED89D8F8;
  if (!qword_1ED89D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE00, &qword_1D289D5C8);
    sub_1D26CCE98();
    sub_1D22BB9D8(&qword_1ED89D2E0, &qword_1EC6DFE10, &qword_1D289D5E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8F8);
  }

  return result;
}

unint64_t sub_1D26CCE98()
{
  result = qword_1ED89DA80;
  if (!qword_1ED89DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE08, &unk_1D289D5D0);
    sub_1D24DA0AC();
    sub_1D22BB9D8(&qword_1ED89D2B8, &qword_1EC6DA270, &qword_1D28880F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA80);
  }

  return result;
}

unint64_t sub_1D26CCF50()
{
  result = qword_1ED89D4E0;
  if (!qword_1ED89D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE18, &qword_1D289D5E8);
    sub_1D26CD008();
    sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &qword_1D289D450, sub_1D26CB73C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4E0);
  }

  return result;
}

unint64_t sub_1D26CD008()
{
  result = qword_1ED89D4F0;
  if (!qword_1ED89D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE20, &qword_1D289D5F0);
    sub_1D26CD094();
    sub_1D26CB73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4F0);
  }

  return result;
}

unint64_t sub_1D26CD094()
{
  result = qword_1ED89D510;
  if (!qword_1ED89D510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE28, &qword_1D289D5F8);
    sub_1D26CD14C();
    sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D510);
  }

  return result;
}

unint64_t sub_1D26CD14C()
{
  result = qword_1ED89D568;
  if (!qword_1ED89D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE30, &qword_1D289D600);
    sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &qword_1D289D4F8, sub_1D26CC0E0);
    sub_1D26CB73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D568);
  }

  return result;
}

unint64_t sub_1D26CD204()
{
  result = qword_1EC6DFE38;
  if (!qword_1EC6DFE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE40, &unk_1D289D608);
    sub_1D26CC8D0();
    sub_1D26CB73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE38);
  }

  return result;
}

unint64_t sub_1D26CD290()
{
  result = qword_1EC6DFE48;
  if (!qword_1EC6DFE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC10, &qword_1D289D3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC70, &qword_1D289D438);
    sub_1D26CB56C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE48);
  }

  return result;
}

unint64_t sub_1D26CD350()
{
  result = qword_1EC6DFE50;
  if (!qword_1EC6DFE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC20, &qword_1D289D3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC10, &qword_1D289D3D8);
    sub_1D26CD290();
    swift_getOpaqueTypeConformance2();
    sub_1D26CF7A8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE50);
  }

  return result;
}

unint64_t sub_1D26CD448()
{
  result = qword_1EC6DFE58;
  if (!qword_1EC6DFE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC28, &qword_1D289D3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC20, &qword_1D289D3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE60, &qword_1D289D618);
    sub_1D26CD350();
    sub_1D22BB9D8(&qword_1ED89D1F8, &qword_1EC6DFE60, &qword_1D289D618, MEMORY[0x1E697D658]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE58);
  }

  return result;
}

unint64_t sub_1D26CD568()
{
  result = qword_1EC6DFE68;
  if (!qword_1EC6DFE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC30, &qword_1D289D3F8);
    sub_1D26CD448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE68);
  }

  return result;
}

unint64_t sub_1D26CD5F4()
{
  result = qword_1EC6DFE70;
  if (!qword_1EC6DFE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC38, &qword_1D289D400);
    sub_1D26CD568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE70);
  }

  return result;
}

unint64_t sub_1D26CD680()
{
  result = qword_1EC6DFE78;
  if (!qword_1EC6DFE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC40, &qword_1D289D408);
    sub_1D26CD5F4();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFE78);
  }

  return result;
}

double sub_1D26CD738()
{
  v1 = *(type metadata accessor for BubbleView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D26C2DE8(v2);
}

unint64_t sub_1D26CD798()
{
  result = qword_1EC6DFEB0;
  if (!qword_1EC6DFEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC48, &qword_1D289D410);
    sub_1D26CD680();
    sub_1D22BB9D8(&qword_1ED89D3B8, &qword_1EC6D9F78, &unk_1D2880610, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFEB0);
  }

  return result;
}

uint64_t sub_1D26CD850()
{
  v2 = *(type metadata accessor for BubbleView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D22BC8FC;

  return sub_1D26C2FB4(v4, v5, v0 + v3);
}

unint64_t sub_1D26CD92C()
{
  result = qword_1EC6DFEB8;
  if (!qword_1EC6DFEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC50, &qword_1D289D418);
    sub_1D26CD798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFEB8);
  }

  return result;
}

uint64_t sub_1D26CD9B8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for BubbleView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26C37B0(a1, a2, v6);
}

uint64_t sub_1D26CDA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEC0, &qword_1D28A29A0);
  sub_1D26CE310();
  return sub_1D2877248();
}

uint64_t sub_1D26CDAD4@<X0>(uint64_t a3@<X8>)
{
  sub_1D22BD06C();
  sub_1D2870F68();
  result = sub_1D2876698();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1D26CDB40@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v64 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA098, &qword_1D28808C0);
  MEMORY[0x1EEE9AC00](v73);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0068, &qword_1D289DAD8);
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0070, &qword_1D289DAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0078, &qword_1D289DAE8);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = *(v20 + 16);
  v78 = &v64 - v21;
  v76 = v22;
  v74 = v20;
  v75 = v20 + 16;
  v77(v19);
  v23 = 1;
  if (a1)
  {
    sub_1D2875798();
    v24 = sub_1D2876668();
    v68 = v25;
    v69 = v24;
    v70 = v8;
    v27 = v26;
    v67 = v28;
    v66 = sub_1D2876328();
    sub_1D2874298();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v71 = v12;
    v37 = v27 & 1;
    v83 = v27 & 1;
    v82 = 0;
    sub_1D28770B8();
    v65 = sub_1D28770C8();

    v38 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0E0, &qword_1D28808E0) + 36)];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0F0, &unk_1D28808F0);
    v40 = v5;
    v41 = *(v39 + 52);
    v42 = *MEMORY[0x1E697F468];
    v43 = sub_1D2875868();
    (*(*(v43 - 8) + 104))(v38 + v41, v42, v43);
    *v38 = v65;
    *(v38 + *(v39 + 56)) = 256;
    v8 = v70;
    v44 = v68;
    *v7 = v69;
    *(v7 + 1) = v44;
    v7[16] = v37;
    v12 = v71;
    *(v7 + 3) = v67;
    v7[32] = v66;
    *(v7 + 5) = v30;
    *(v7 + 6) = v32;
    *(v7 + 7) = v34;
    *(v7 + 8) = v36;
    v7[72] = 0;
    v45 = sub_1D28770A8();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0D0, &qword_1D28808D8) + 36)] = v45;
    v46 = sub_1D28763F8();
    (*(*(v46 - 8) + 56))(v40, 1, 1, v46);
    v47 = sub_1D2876448();
    sub_1D22BD238(v40, &qword_1EC6D9D40, &qword_1D28804D0);
    KeyPath = swift_getKeyPath();
    v49 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0C0, &qword_1D28808D0) + 36)];
    *v49 = KeyPath;
    v49[1] = v47;
    v50 = swift_getKeyPath();
    v51 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA0B0, &qword_1D28808C8) + 36)];
    *v51 = v50;
    v51[8] = 1;
    sub_1D2877AE8();
    v52 = v72;
    v53 = &v7[*(v73 + 36)];
    *v53 = 0x3FE38C35418A5BF6;
    *(v53 + 1) = v54;
    *(v53 + 2) = v55;
    sub_1D22EFE70(0xD00000000000002ELL, 0x80000001D28BFEA0, 0, 0, v52);
    sub_1D22BD238(v7, &qword_1EC6DA098, &qword_1D28808C0);
    sub_1D22EC9BC(v52, v15, &qword_1EC6E0068, &qword_1D289DAD8);
    v23 = 0;
  }

  (*(v81 + 56))(v15, v23, 1, v8);
  v56 = v80;
  v58 = v77;
  v57 = v78;
  v59 = v76;
  (v77)(v80, v78, v76);
  sub_1D22BD1D0(v15, v12, &qword_1EC6E0070, &qword_1D289DAE0);
  v60 = v79;
  (v58)(v79, v56, v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0080, &unk_1D289DAF0);
  sub_1D22BD1D0(v12, v60 + *(v61 + 48), &qword_1EC6E0070, &qword_1D289DAE0);
  sub_1D22BD238(v15, &qword_1EC6E0070, &qword_1D289DAE0);
  v62 = *(v74 + 8);
  v62(v57, v59);
  sub_1D22BD238(v12, &qword_1EC6E0070, &qword_1D289DAE0);
  return (v62)(v56, v59);
}

uint64_t sub_1D26CE210@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1D28777F8();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0060, &unk_1D289DAC8);
  return sub_1D26CDB40(v4, a2 + *(v6 + 44));
}

uint64_t sub_1D26CE270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble.BubbleType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D26CE310()
{
  result = qword_1ED89D208;
  if (!qword_1ED89D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFEC0, &qword_1D28A29A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D208);
  }

  return result;
}

uint64_t sub_1D26CE38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26CE3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D26CE45C()
{
  result = qword_1EC6D7988;
  if (!qword_1EC6D7988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF70, &qword_1D289D728);
    sub_1D26CE4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7988);
  }

  return result;
}

unint64_t sub_1D26CE4E8()
{
  result = qword_1EC6D7998;
  if (!qword_1EC6D7998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF68, &qword_1D289D720);
    sub_1D26CE5A0();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278, &unk_1D288CDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7998);
  }

  return result;
}

unint64_t sub_1D26CE5A0()
{
  result = qword_1EC6D79B0;
  if (!qword_1EC6D79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF60, &qword_1D289D718);
    sub_1D26CE62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79B0);
  }

  return result;
}

unint64_t sub_1D26CE62C()
{
  result = qword_1EC6D7A00;
  if (!qword_1EC6D7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF58, &qword_1D289D710);
    sub_1D26CE6E4();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0, &unk_1D288E500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A00);
  }

  return result;
}

unint64_t sub_1D26CE6E4()
{
  result = qword_1EC6D7A90;
  if (!qword_1EC6D7A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF78, &qword_1D289D730);
    sub_1D26CE79C();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0, &qword_1D287FD70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A90);
  }

  return result;
}

unint64_t sub_1D26CE79C()
{
  result = qword_1EC6D7B48;
  if (!qword_1EC6D7B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF80, &qword_1D289D738);
    sub_1D26CE854();
    sub_1D22BB9D8(&qword_1ED89D2E0, &qword_1EC6DFE10, &qword_1D289D5E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B48);
  }

  return result;
}

unint64_t sub_1D26CE854()
{
  result = qword_1EC6D7C80;
  if (!qword_1EC6D7C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF88, &qword_1D289D740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF90, &qword_1D289D748);
    sub_1D26CE948();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C80);
  }

  return result;
}

unint64_t sub_1D26CE948()
{
  result = qword_1EC6D7DB0;
  if (!qword_1EC6D7DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF90, &qword_1D289D748);
    sub_1D26CEA00();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DB0);
  }

  return result;
}

unint64_t sub_1D26CEA00()
{
  result = qword_1EC6D7840;
  if (!qword_1EC6D7840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF98, &qword_1D289D750);
    sub_1D26CEAB8(&qword_1EC6D7850, &qword_1EC6DFFA0, &qword_1D289D758, sub_1D2459164);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7840);
  }

  return result;
}

uint64_t sub_1D26CEAB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D26CEB34()
{
  result = qword_1EC6D7B50;
  if (!qword_1EC6D7B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF48, &qword_1D289D6F8);
    sub_1D26CEBEC();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B50);
  }

  return result;
}

unint64_t sub_1D26CEBEC()
{
  result = qword_1EC6D7C88;
  if (!qword_1EC6D7C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFFA8, &unk_1D289D768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFF90, &qword_1D289D748);
    sub_1D26CE948();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0, &qword_1D2890510, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C88);
  }

  return result;
}

double sub_1D26CECE0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1D26CECF0(result, a2, a3, a4, a5);
  }

  return v6;
}

double sub_1D26CECF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D22ED6E0(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1D26CED34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2875388();
  *a1 = result;
  return result;
}

uint64_t sub_1D26CED8C(uint64_t a1)
{
  v2 = sub_1D2876628();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D2875348();
}

unint64_t sub_1D26CEE54()
{
  result = qword_1ED89D9B0;
  if (!qword_1ED89D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFFE0, &qword_1D289D988);
    sub_1D26CEF10();
    sub_1D26CF7A8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9B0);
  }

  return result;
}

unint64_t sub_1D26CEF10()
{
  result = qword_1ED89DBA0;
  if (!qword_1ED89DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0028, &unk_1D289D9D8);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBA0);
  }

  return result;
}

uint64_t sub_1D26CEFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D26CF028()
{
  result = qword_1ED89E9C8;
  if (!qword_1ED89E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E9C8);
  }

  return result;
}

unint64_t sub_1D26CF07C()
{
  result = qword_1ED89D598;
  if (!qword_1ED89D598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0018, &qword_1D289D9C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998, &unk_1D288E3E0);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    sub_1D26CF028();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BubbleActionButtonStyle(255);
    sub_1D26CF7A8(qword_1ED8A09B8, type metadata accessor for BubbleActionButtonStyle, &unk_1D28AB98C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D598);
  }

  return result;
}

unint64_t sub_1D26CF1EC()
{
  result = qword_1ED89D5A0;
  if (!qword_1ED89D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFFF0, &qword_1D289D998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFFE0, &qword_1D289D988);
    sub_1D26CEE54();
    sub_1D26CF028();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BubbleActionButtonStyle(255);
    sub_1D26CF7A8(qword_1ED8A09B8, type metadata accessor for BubbleActionButtonStyle, &unk_1D28AB98C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5A0);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for BubbleView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1D2273818(*v2, *(v2 + 8));
  sub_1D2273818(*(v2 + 16), *(v2 + 24));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_1D2273818(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v6 = v2 + v1[11];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE80, &qword_1D289D620);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE88, &qword_1D289D628);

  v8 = v2 + v1[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE90, &qword_1D289D630);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE98, &qword_1D289D638);

  v10 = v2 + v1[18];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEA0, &qword_1D289D640);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEA8, &unk_1D289D648);

  v12 = v1[19];
  v13 = sub_1D28714E8();
  v14 = *(*(v13 - 8) + 8);
  v14(v2 + v12, v13);
  v14(v2 + v1[20], v13);
  v14(v2 + v1[21], v13);

  return swift_deallocObject();
}

uint64_t sub_1D26CF7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26CF8BC@<X0>(void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1D2870F68();
  sub_1D2870F68();
  v8 = a5;
  result = sub_1D2876668();
  *a6 = result;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11 & 1;
  *(a6 + 24) = v12;
  return result;
}

uint64_t sub_1D26CF95C@<X0>(void *a7@<X6>, uint64_t a8@<X8>)
{
  sub_1D2870F68();
  v10 = a7;
  sub_1D2870F68();
  sub_1D2870F68();
  result = sub_1D2876668();
  *a8 = result;
  *(a8 + 8) = v12;
  *(a8 + 16) = v13 & 1;
  *(a8 + 24) = v14;
  return result;
}

uint64_t sub_1D26CFA14@<X0>(uint64_t *a3@<X8>)
{
  sub_1D2870F68();
  result = sub_1D2877198();
  *a3 = result;
  return result;
}

uint64_t sub_1D26CFA5C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D2870F68();
  result = sub_1D2877198();
  *a1 = result;
  return result;
}

uint64_t sub_1D26CFAA4()
{
  sub_1D26B7BC0();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D26CFB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_1D2877008() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEDE3EF8](v2, v3);
}

uint64_t sub_1D26CFB5C@<X0>(void *a2@<X8>)
{
  result = sub_1D2877098();
  *a2 = 0;
  a2[1] = result;
  return result;
}

uint64_t sub_1D26CFB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D26CFBE8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1D26CFBE8()
{
  result = qword_1EC6E0090;
  if (!qword_1EC6E0090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF978, &unk_1D289DBE0);
    sub_1D26CFC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0090);
  }

  return result;
}

unint64_t sub_1D26CFC6C()
{
  result = qword_1EC6E0098;
  if (!qword_1EC6E0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConditioningImageGenerationSupport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConditioningImageGenerationSupport(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D26CFE14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D26CFE28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1D26CFE48()
{
  v1 = *v0;
  sub_1D28797D8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1D38A2260](v2);
  return sub_1D2879828();
}

uint64_t sub_1D26CFEA8()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1D38A2260](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x1D38A2260](v2);
}

uint64_t sub_1D26CFEF0()
{
  v1 = *v0;
  sub_1D28797D8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1D38A2260](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1D38A2260](v2);
  return sub_1D2879828();
}

BOOL sub_1D26CFF50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1D26CFF94()
{
  result = qword_1EC6E00A0;
  if (!qword_1EC6E00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E00A0);
  }

  return result;
}

unint64_t sub_1D26CFFFC()
{
  result = qword_1EC6E00A8;
  if (!qword_1EC6E00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E00A8);
  }

  return result;
}

uint64_t sub_1D26D0050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D22BD1D0(a3, v25 - v10, &qword_1EC6D8E60, &qword_1D28811F0);
  v12 = sub_1D28785F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1D2870F78();
  if (v14 == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D8E60, &qword_1D28811F0);
  }

  else
  {
    sub_1D28785E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D28784F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2878138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D2870F78();
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

uint64_t sub_1D26D0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D22BD1D0(a3, v25 - v10, &qword_1EC6D8E60, &qword_1D28811F0);
  v12 = sub_1D28785F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1D2870F78();
  if (v14 == 1)
  {
    sub_1D22BD238(v11, &qword_1EC6D8E60, &qword_1D28811F0);
  }

  else
  {
    sub_1D28785E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D28784F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2878138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9410, &qword_1D287D390);
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9410, &qword_1D287D390);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall _CuratedPromptsManager.resetVectorDatabase()()
{
  v1 = *(v0 + 80);
  sub_1D2870F68();
  os_unfair_lock_lock((v1 + 32));
  sub_1D26D48AC((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));

  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  [v2 setURL:0 forKey:v3];

  _CuratedPromptsManager.configureVectorDatabase()();
}

void sub_1D26D06B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CuratedPrompt(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 56);
  v12 = *(v11 + 16);
  sub_1D2870F68();
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D26D643C(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10);
      v14 = &v10[*(v7 + 56)];
      v15 = *v14 == a1 && *(v14 + 1) == a2;
      if (v15 || (sub_1D2879618() & 1) != 0)
      {

        sub_1D26D64FC(v10, a3);
        v16 = 0;
        goto LABEL_12;
      }

      ++v13;
      sub_1D26D64A0(v10);
      if (v12 == v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v16 = 1;
LABEL_12:
    (*(v8 + 56))(a3, v16, 1, v7);
  }
}

uint64_t sub_1D26D0844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26D7F74(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
  sub_1D28719E8();

  *a2 = *(v3 + 120);
  return sub_1D2870F78();
}

void sub_1D26D091C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26D7F74(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady);
}

uint64_t sub_1D26D09F4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D2873CB8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1D2878568();
  v2[12] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D26D0AE8, v5, v4);
}

uint64_t sub_1D26D0AE8()
{
  v1 = v0[7];
  v2 = v1[2];
  v0[15] = v2;
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v0[5] = MEMORY[0x1E69E7CC0];
    v0[17] = v3;
    v0[18] = v3;
    v0[16] = 0;
    v4 = v1[4];
    v0[19] = v4;
    v5 = v1[5];
    v0[20] = v5;
    sub_1D2870F68();
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_1D26D0C28;

    return sub_1D26D49BC(v4, v5, 0xA / v2);
  }

  else
  {

    v8 = v0[1];
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1D26D0C28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1D26D0FB4;
  }

  else
  {

    v4[23] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1D26D0D58;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

void sub_1D26D0D58()
{
  v1 = v0[18];
  v2 = sub_1D26D6560(v0[23], v0 + 5);

  v3 = *(v2 + 16);
  v4 = *(v1 + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[18];
  if (isUniquelyReferenced_nonNull_native && (v8 = v7[3] >> 1, v8 >= v5))
  {
    if (*(v2 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v13 = v4 + v3;
    }

    else
    {
      v13 = v4;
    }

    v7 = sub_1D27CCA98(isUniquelyReferenced_nonNull_native, v13, 1, v0[18]);
    v8 = v7[3] >> 1;
    if (*(v2 + 16))
    {
LABEL_5:
      v9 = v8 - v7[2];
      type metadata accessor for CuratedPrompt(0);
      if (v9 >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v10 = v7[2];
        v11 = __OFADD__(v10, v3);
        v12 = v10 + v3;
        if (!v11)
        {
          v7[2] = v12;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v0[5] = v7;
  v14 = v0[15];
  v15 = v0[16] + 1;
  if (v15 == v14)
  {

    v16 = v0[1];

    v16(v7);
  }

  else
  {
    v0[17] = v7;
    v0[18] = v7;
    v0[16] = v15;
    v17 = v0[7] + 16 * v15;
    v18 = *(v17 + 32);
    v0[19] = v18;
    v19 = *(v17 + 40);
    v0[20] = v19;
    sub_1D2870F68();
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_1D26D0C28;

    sub_1D26D49BC(v18, v19, 0xA / v14);
  }
}

uint64_t sub_1D26D0FB4(uint64_t a1)
{
  v32 = v1;
  v2 = v1[22];
  sub_1D28725A8();
  sub_1D2870F68();
  v3 = v2;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[22];
    v8 = v1[19];
    v7 = v1[20];
    v9 = v1[10];
    v30 = v1[11];
    v10 = v1[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315394;
    v13 = sub_1D23D7C84(v8, v7, &v31);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_1D2879748();
    v16 = sub_1D23D7C84(v14, v15, &v31);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to get suggested curated prompts for string: %s with error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);

    (*(v9 + 8))(v30, v10);
  }

  else
  {
    v17 = v1[22];
    v19 = v1[10];
    v18 = v1[11];
    v20 = v1[9];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v1[15];
  v22 = v1[16] + 1;
  if (v22 == v21)
  {
    v23 = v1[17];

    v24 = v1[1];

    return v24(v23);
  }

  else
  {
    v1[16] = v22;
    v26 = v1[7] + 16 * v22;
    v27 = *(v26 + 32);
    v1[19] = v27;
    v28 = *(v26 + 40);
    v1[20] = v28;
    sub_1D2870F68();
    v29 = swift_task_alloc();
    v1[21] = v29;
    *v29 = v1;
    v29[1] = sub_1D26D0C28;

    return sub_1D26D49BC(v27, v28, 0xA / v21);
  }
}

void sub_1D26D12B8()
{
  v1 = type metadata accessor for CuratedPrompt(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *(v0 + 56);
  v9 = *(v8 + 16);
  sub_1D2870F68();
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v18 = v4;
    v19 = v1;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v13 = *(v2 + 72);
      sub_1D26D643C(v8 + v12 + v13 * v10, v7);
      if (v7[*(v1 + 84)] == 1)
      {
        sub_1D26D64FC(v7, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D838C(0, *(v11 + 16) + 1, 1);
          v11 = v20;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D23D838C((v15 > 1), v16 + 1, 1);
          v11 = v20;
        }

        *(v11 + 16) = v16 + 1;
        v4 = v18;
        sub_1D26D64FC(v18, v11 + v12 + v16 * v13);
        v1 = v19;
      }

      else
      {
        sub_1D26D64A0(v7);
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall _CuratedPromptsManager.configureVectorDatabase()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + 80);
  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    os_unfair_lock_unlock((v4 + 32));
    sub_1D2878588();
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v8[5] = v6;
    v8[6] = v5;
    sub_1D2870F78();
    sub_1D26D0050(0, 0, v3, &unk_1D289DD30, v8);

    sub_1D22BD238(v3, &qword_1EC6D8E60, &qword_1D28811F0);
  }

  else
  {

    os_unfair_lock_unlock((v4 + 32));
  }
}

uint64_t sub_1D26D162C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7374706D6F7270;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x69726F6765746163;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEA00000000007365;
  }

  v6 = 0x7374706D6F7270;
  if (*a2 != 1)
  {
    v6 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x69726F6765746163;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xEA00000000007365;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D2879618();
  }

  return v9 & 1;
}

uint64_t sub_1D26D1730()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D26D17D8(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D26D186C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

unint64_t sub_1D26D1910@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D26D6D6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D26D1940(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007365;
  v4 = 0x7374706D6F7270;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x69726F6765746163;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1D26D19A4()
{
  v1 = 0x7374706D6F7270;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69726F6765746163;
  }
}

unint64_t sub_1D26D1A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D26D6D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D26D1A2C(uint64_t a1)
{
  v2 = sub_1D26D7BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D26D1A68(uint64_t a1)
{
  v2 = sub_1D26D7BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D26D1AA4@<X0>(void *a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1D26D6DB8(a1, *a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t _CuratedPromptsManager.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1D26D5DB8(a1);

  return v2;
}

uint64_t _CuratedPromptsManager.init(servicesFetcher:)(uint64_t a1)
{
  v1 = sub_1D26D5DB8(a1);

  return v1;
}

uint64_t sub_1D26D1B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1D2878568();
  v4[4] = sub_1D2878558();
  v4[5] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1D26D1C1C;

  return sub_1D26D67D4();
}

uint64_t sub_1D26D1C1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 56) = a1;

  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1D26D1D70;

  return sub_1D26D2090(a1);
}

uint64_t sub_1D26D1D70()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1D26D1EB0;

  return sub_1D26D3454();
}

uint64_t sub_1D26D1EB0()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26D1FEC, v1, v0);
}

uint64_t sub_1D26D1FEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  *(v2 + 88) = 1;
  sub_1D26D38D8();

  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D256C334, v4, v3);
}

uint64_t sub_1D26D2090(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D2873CB8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_1D2871798();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1D2878568();
  v2[18] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[19] = v6;
  v2[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D26D2204, v6, v5);
}

uint64_t sub_1D26D2204(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_1D2871788();
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = swift_task_alloc();
    *(v1 + 168) = v4;
    *v4 = v1;
    v4[1] = sub_1D26D2660;
    v5 = v3;
LABEL_5:

    return sub_1D26D7FDC(v5);
  }

  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 208) = 0u;
  v6 = sub_1D26D8698();
  *(v1 + 256) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = swift_task_alloc();
    *(v1 + 264) = v8;
    *v8 = v1;
    v8[1] = sub_1D26D2C4C;
    v5 = v7;
    goto LABEL_5;
  }

  sub_1D26D8824(0, 0, 0, 0);
  v10 = *(v1 + 64);

  v11 = MEMORY[0x1E69E7CC0];
  v10[6] = MEMORY[0x1E69E7CC0];
  v10[7] = v11;
  v10[8] = 0;
  v10[9] = 0;

  sub_1D23B7BB8();
  v12 = sub_1D2878A58();
  v13 = sub_1D2878068();
  v14 = [v12 stringForKey_];

  if (v14)
  {
    sub_1D28780A8();
  }

  sub_1D28725A8();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v1 + 96);
  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  if (v17)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D226E000, v15, v16, "Curated prompts are indexed", v21, 2u);
    MEMORY[0x1D38A3520](v21, -1, -1);
  }

  v22 = *(v20 + 8);
  v22(v18, v19);
  v23 = *(v1 + 128);
  v24 = *(v1 + 136);
  v25 = *(v1 + 112);
  v26 = *(v1 + 120);
  v27 = *(v1 + 64);
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;

  sub_1D28725A8();
  (*(v26 + 16))(v23, v24, v25);
  v28 = sub_1D2873CA8();
  v29 = sub_1D28789F8();
  v30 = os_log_type_enabled(v28, v29);
  v32 = *(v1 + 120);
  v31 = *(v1 + 128);
  v33 = *(v1 + 112);
  if (v30)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    sub_1D2871758();
    v36 = v35;
    v37 = *(v32 + 8);
    v37(v31, v33);
    *(v34 + 4) = v36 * -1000.0;
    _os_log_impl(&dword_1D226E000, v28, v29, "Loaded curated prompts bundle in %f ms", v34, 0xCu);
    MEMORY[0x1D38A3520](v34, -1, -1);
  }

  else
  {

    v37 = *(v32 + 8);
    v37(v31, v33);
  }

  v38 = *(v1 + 136);
  v39 = *(v1 + 112);
  v22(*(v1 + 88), *(v1 + 72));
  v37(v38, v39);

  v40 = *(v1 + 8);

  return v40();
}

uint64_t sub_1D26D2660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = a3;
  v6[25] = a4;

  v7 = v5[20];
  v8 = v5[19];

  return MEMORY[0x1EEE6DFA0](sub_1D26D278C, v8, v7);
}

uint64_t sub_1D26D278C()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    if (v1 >> 62)
    {
      if (sub_1D2879368())
      {
LABEL_4:
        if (*(v2 + 16))
        {
          v3 = *(v0 + 56);
          v4 = [v3 bundlePath];
          v5 = sub_1D28780A8();
          v7 = v6;

          v8 = *(v0 + 192);
          v9 = *(v0 + 200);
          v11 = *(v0 + 176);
          v10 = *(v0 + 184);
          goto LABEL_10;
        }
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v12 = *(v0 + 56);

    goto LABEL_9;
  }

LABEL_9:
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v5 = 0;
  v7 = 0;
LABEL_10:
  *(v0 + 240) = v5;
  *(v0 + 248) = v7;
  *(v0 + 224) = v8;
  *(v0 + 232) = v9;
  *(v0 + 208) = v11;
  *(v0 + 216) = v10;
  v13 = sub_1D26D8698();
  *(v0 + 256) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1D26D2C4C;

    return sub_1D26D7FDC(v14);
  }

  else
  {
    sub_1D26D8824(v11, v10, v8, v9);
    v17 = *(v0 + 64);

    v18 = MEMORY[0x1E69E7CC0];
    v17[6] = MEMORY[0x1E69E7CC0];
    v17[7] = v18;
    v17[8] = 0;
    v17[9] = 0;

    sub_1D23B7BB8();
    v19 = sub_1D2878A58();
    v20 = sub_1D2878068();
    v21 = [v19 stringForKey_];

    if (v21)
    {
      sub_1D28780A8();
    }

    sub_1D28725A8();
    v22 = sub_1D2873CA8();
    v23 = sub_1D28789F8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);
    v27 = *(v0 + 80);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v22, v23, "Curated prompts are indexed", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    v29 = *(v27 + 8);
    v29(v25, v26);
    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 64);
    *(v34 + 32) = 0;
    *(v34 + 40) = 0;

    sub_1D28725A8();
    (*(v33 + 16))(v30, v31, v32);
    v35 = sub_1D2873CA8();
    v36 = sub_1D28789F8();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 120);
    v38 = *(v0 + 128);
    v40 = *(v0 + 112);
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      sub_1D2871758();
      v43 = v42;
      v44 = *(v39 + 8);
      v44(v38, v40);
      *(v41 + 4) = v43 * -1000.0;
      _os_log_impl(&dword_1D226E000, v35, v36, "Loaded curated prompts bundle in %f ms", v41, 0xCu);
      MEMORY[0x1D38A3520](v41, -1, -1);
    }

    else
    {

      v44 = *(v39 + 8);
      v44(v38, v40);
    }

    v45 = *(v0 + 136);
    v46 = *(v0 + 112);
    v29(*(v0 + 88), *(v0 + 72));
    v44(v45, v46);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1D26D2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[34] = a1;
  v6[35] = a3;
  v6[36] = a4;

  v7 = v5[20];
  v8 = v5[19];

  return MEMORY[0x1EEE6DFA0](sub_1D26D2D84, v8, v7);
}

uint64_t sub_1D26D2D84()
{
  v1 = v0[34];
  if (!v1)
  {
    v17 = v0[32];
    sub_1D26D8824(v0[26], v0[27], v0[28], v0[29]);

    v18 = v0[8];

    v19 = MEMORY[0x1E69E7CC0];
    v18[6] = MEMORY[0x1E69E7CC0];
    v18[7] = v19;
    v18[8] = 0;
    v18[9] = 0;

    v20 = 0;
    v21 = 0;
    goto LABEL_27;
  }

  v2 = v0[4];
  v3 = v0[26];
  if (!v3)
  {

    goto LABEL_23;
  }

  v4 = v0[36];
  v5 = v0[29];
  v6 = v0[27];
  if (v5)
  {
    v7 = v0[28];
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v0[29];
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (v4)
  {
    v9 = v0[35];
  }

  else
  {
    v9 = 0;
  }

  if (v4)
  {
    v10 = v0[36];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v76 = v0[27];
    v27 = v0[32];
    sub_1D2870F68();
    sub_1D2870F68();
  }

  else
  {
    v12 = sub_1D2879618();
    sub_1D2870F68();
    sub_1D2870F68();

    if (v12)
    {
      v14 = v0[28];
      v13 = v0[29];
      v16 = v0[26];
      v15 = v0[27];

      sub_1D26D8824(v16, v15, v14, v13);
LABEL_23:
      v22 = v0[32];
      v23 = v0[8];
      v24 = *(v0 + 35);
      *(v23 + 48) = v1;
      *(v23 + 56) = v2;
      *(v23 + 64) = v24;

      v25 = [v22 bundlePath];
      v20 = sub_1D28780A8();
      v21 = v26;

      goto LABEL_27;
    }

    v76 = v6;
    v27 = v0[32];
  }

  v29 = v0[28];
  v28 = v0[29];
  v74 = v0[26];
  v75 = v0[27];
  v30 = v0[8];

  v30[6] = v3;
  v30[7] = v76;
  v30[8] = v29;
  v30[9] = v28;
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2870F68();

  sub_1D26D8824(v74, v75, v29, v28);
  v20 = v0[30];
  v21 = v0[31];
LABEL_27:
  sub_1D23B7BB8();
  v31 = sub_1D2878A58();
  v32 = sub_1D2878068();
  v33 = [v31 stringForKey_];

  if (!v33)
  {
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_34:
    sub_1D2870F68();
    goto LABEL_35;
  }

  v34 = sub_1D28780A8();
  v36 = v35;

  if (!v21)
  {
    goto LABEL_38;
  }

  if (!v36)
  {
    goto LABEL_34;
  }

  if (v20 == v34 && v21 == v36)
  {

LABEL_39:
    sub_1D28725A8();
    v47 = sub_1D2873CA8();
    v48 = sub_1D28789F8();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[12];
    v51 = v0[9];
    v52 = v0[10];
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D226E000, v47, v48, "Curated prompts are indexed", v53, 2u);
      MEMORY[0x1D38A3520](v53, -1, -1);
    }

    v44 = *(v52 + 8);
    v44(v50, v51);
    goto LABEL_42;
  }

  v73 = sub_1D2879618();
  sub_1D2870F68();

  if (v73)
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_35:
  sub_1D28725A8();
  v37 = sub_1D2873CA8();
  v38 = sub_1D28789F8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D226E000, v37, v38, "Needs to reindex curated prompts", v39, 2u);
    MEMORY[0x1D38A3520](v39, -1, -1);
  }

  v40 = v0[13];
  v41 = v0[9];
  v42 = v0[10];
  v43 = v0[8];

  v44 = *(v42 + 8);
  v44(v40, v41);
  v45 = *(v43 + 80);
  v46 = swift_task_alloc();
  *(v46 + 16) = v20;
  *(v46 + 24) = v21;
  os_unfair_lock_lock((v45 + 32));
  sub_1D26D48AC((v45 + 16));
  os_unfair_lock_unlock((v45 + 32));

LABEL_42:
  v55 = v0[16];
  v54 = v0[17];
  v56 = v0[14];
  v57 = v0[15];
  v58 = v0[8];
  *(v58 + 32) = v20;
  *(v58 + 40) = v21;

  sub_1D28725A8();
  (*(v57 + 16))(v55, v54, v56);
  v59 = sub_1D2873CA8();
  v60 = sub_1D28789F8();
  v61 = os_log_type_enabled(v59, v60);
  v63 = v0[15];
  v62 = v0[16];
  v64 = v0[14];
  if (v61)
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    sub_1D2871758();
    v67 = v66;
    v68 = *(v63 + 8);
    v68(v62, v64);
    *(v65 + 4) = v67 * -1000.0;
    _os_log_impl(&dword_1D226E000, v59, v60, "Loaded curated prompts bundle in %f ms", v65, 0xCu);
    MEMORY[0x1D38A3520](v65, -1, -1);
  }

  else
  {

    v68 = *(v63 + 8);
    v68(v62, v64);
  }

  v69 = v0[17];
  v70 = v0[14];
  v44(v0[11], v0[9]);
  v68(v69, v70);

  v71 = v0[1];

  return v71();
}

uint64_t sub_1D26D3454()
{
  v1[2] = v0;
  v2 = sub_1D2873CB8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1D2878568();
  v1[6] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26D3548, v4, v3);
}

uint64_t sub_1D26D3548()
{
  sub_1D2870F78();
  *(v0 + 72) = sub_1D23C82C4();

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D26D35FC;

  return sub_1D24B49E8();
}

uint64_t sub_1D26D35FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D26D37A8;
  }

  else
  {

    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D26D372C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D26D372C()
{
  v1 = v0[12];
  v2 = v0[2];

  *(v2 + 96) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D26D37A8()
{

  sub_1D28725F8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A08();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Failed to fetch recent stickers", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

void sub_1D26D38D8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_38:
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38A1C30](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v20;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_1D2870F78();
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v1 + 24) = v6;

  v7 = *(v1 + 24);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }

    goto LABEL_19;
  }

  v8 = sub_1D2879368();
  if (v8)
  {
LABEL_19:
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    v19 = v7 & 0xC000000000000001;
    sub_1D2870F68();
    v9 = 0;
    v10 = &unk_1D289DEF8;
    v17 = v7;
    v18 = v8;
    while (1)
    {
      if (v19)
      {
        MEMORY[0x1D38A1C30](v9, v7);
      }

      else
      {
        sub_1D2870F78();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        swift_getKeyPath();
        sub_1D26D7F74(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
        sub_1D28719E8();

        v13 = v10;
        v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady;
        if (*(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1D28719D8();

          swift_getKeyPath();
          sub_1D28719E8();

          if (*(*(v12 + 120) + 88) == 1)
          {
            sub_1D24A8C44(1);
            sub_1D24A3810(1, *(v12 + 176) - 5 < 2);
            swift_unknownObjectRelease();
          }

          else
          {
            if (*(v12 + v14) != 1)
            {
              v10 = &unk_1D289DEF8;
              v16 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v16);
              sub_1D28719D8();
              swift_unknownObjectRelease();

              v7 = v17;
              v8 = v18;
              goto LABEL_22;
            }

            *(v12 + v14) = 1;
            swift_unknownObjectRelease();
          }

          v7 = v17;
          v8 = v18;
          v10 = &unk_1D289DEF8;
        }

        else
        {

          swift_unknownObjectRelease();
          v8 = v18;
          v10 = v13;
        }
      }

      else
      {
      }

LABEL_22:
      if (v8 == ++v9)
      {

        return;
      }
    }
  }
}

uint64_t sub_1D26D3D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_1D2873CB8();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_1D26D3E64;

  return sub_1D26D4214();
}

uint64_t sub_1D26D3E64()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D26D40F8;
  }

  else
  {
    v2 = sub_1D26D3F78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D26D3F78()
{
  sub_1D23B7BB8();
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  v3 = sub_1D2878068();
  [v1 setObject:v2 forKey:v3];

  sub_1D28725A8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D28789F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Prompt imported", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D26D40F8(uint64_t a1)
{
  sub_1D28725A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A18();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Failed to store prompt embeddings", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = v1[6];
  v8 = v1[4];
  v9 = v1[5];

  (*(v9 + 8))(v7, v8);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1D26D4214()
{
  v1[2] = v0;
  v2 = type metadata accessor for CuratedPrompt(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1D2878568();
  v1[6] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26D4308, v4, v3);
}

uint64_t sub_1D26D4308()
{
  v1 = *(v0[2] + 104);
  v0[9] = v1;
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D26D43B8, v1, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1D26D43B8()
{
  sub_1D2871B58();
  v0[10] = 0;
  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1D26D44B0, v1, v2);
}

uint64_t sub_1D26D4444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26D44B0()
{
  v1 = v0;
  v2 = *(v0[2] + 56);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v0[4];
    v19 = v1[3];
    v20 = v1[5];
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D8BC4(0, v3, 0);
    v4 = v22;
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    v21 = v1;
    do
    {
      v7 = v1[5];
      sub_1D26D643C(v6, v7);
      v8 = (v7 + *(v19 + 56));
      v9 = *v8;
      v10 = v8[1];
      v11 = *v7;
      v12 = *(v20 + 8);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D26D64A0(v7);
      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D23D8BC4((v13 > 1), v14 + 1, 1);
      }

      *(v22 + 16) = v14 + 1;
      v15 = (v22 + 32 * v14);
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v11;
      v15[7] = v12;
      v6 += v18;
      --v3;
      v1 = v21;
    }

    while (v3);
  }

  v1[11] = v4;
  v16 = swift_task_alloc();
  v1[12] = v16;
  *v16 = v1;
  v16[1] = sub_1D26D467C;

  return sub_1D26A438C(v4);
}

uint64_t sub_1D26D467C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1D26D4840;
  }

  else
  {
    v5 = sub_1D26D47D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D26D47D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26D4840()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D26D48AC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D26D48F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D26D3D68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D26D49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *(type metadata accessor for CuratedPrompt(0) - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1D2878568();
  v4[16] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[17] = v6;
  v4[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D26D4AEC, v6, v5);
}

uint64_t sub_1D26D4AEC()
{
  v1 = v0[8];
  v2 = *(v1 + 56);
  v0[19] = v2;
  if (*(v1 + 104))
  {
    sub_1D2870F68();
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_1D26D4E50;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_1D26A3D94(v6, v4, v5);
  }

  else
  {
    sub_1D2870F68();

    result = sub_1D26D5340();
    v8 = result;
    v30 = *(result + 16);
    if (v30)
    {
      v9 = 0;
      v10 = v0[9];
      v33 = v0[10];
      v34 = *(v2 + 16);
      v29 = result + 32;
      v11 = MEMORY[0x1E69E7CC0];
      v28 = result;
      while (v9 < *(v8 + 16))
      {
        if (v34)
        {
          v31 = v9;
          v32 = v11;
          v13 = 0;
          v14 = *(v29 + 8 * v9);
          while (v13 < *(v2 + 16))
          {
            v15 = v0[10];
            v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
            v17 = *(v10 + 72);
            sub_1D26D643C(v2 + v16 + v17 * v13, v15);
            v18 = *v15;
            v19 = *(v33 + 8);
            v0[4] = v14;
            if (v18 == sub_1D28795C8() && v19 == v20)
            {

LABEL_22:
              v24 = v0[11];
              v23 = v0[12];
              sub_1D26D64FC(v0[10], v24);
              sub_1D26D64FC(v24, v23);
              v11 = v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_1D27CCA98(0, v32[2] + 1, 1, v32);
              }

              v9 = v31;
              v26 = v11[2];
              v25 = v11[3];
              if (v26 >= v25 >> 1)
              {
                v11 = sub_1D27CCA98((v25 > 1), v26 + 1, 1, v11);
              }

              v12 = v0[12];
              v11[2] = v26 + 1;
              result = sub_1D26D64FC(v12, v11 + v16 + v26 * v17);
LABEL_8:
              v8 = v28;
              goto LABEL_9;
            }

            v22 = sub_1D2879618();

            if (v22)
            {
              goto LABEL_22;
            }

            ++v13;
            result = sub_1D26D64A0(v0[10]);
            if (v34 == v13)
            {
              v9 = v31;
              v11 = v32;
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        if (++v9 == v30)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
LABEL_28:

      v27 = v0[1];

      return v27(v11);
    }
  }

  return result;
}

uint64_t sub_1D26D4E50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_1D26D527C;
  }

  else
  {
    v7 = sub_1D26D4F94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1D26D4F94()
{
  v1 = v0[21];

  v25 = *(v1 + 16);
  v26 = v1;
  if (v25)
  {
    v2 = 0;
    v29 = v0[13];
    v30 = v0[19];
    v3 = v0[9];
    v24 = v0[21] + 32;
    v27 = MEMORY[0x1E69E7CC0];
    while (v2 < *(v26 + 16))
    {
      v28 = v2;
      v5 = (v24 + 16 * v2);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v30 + 16);
      sub_1D2870F68();
      if (v8)
      {
        v9 = 0;
        while (1)
        {
          if (v9 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v10 = v0[13];
          v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v12 = *(v3 + 72);
          sub_1D26D643C(v0[19] + v11 + v12 * v9, v10);
          v13 = *(v29 + 8);
          v0[2] = *v10;
          v0[3] = v13;
          sub_1D2870F68();
          if (sub_1D28782E8() == v7 && v14 == v6)
          {
            break;
          }

          v16 = sub_1D2879618();

          if (v16)
          {
            goto LABEL_17;
          }

          ++v9;
          sub_1D26D64A0(v0[13]);
          if (v8 == v9)
          {
            goto LABEL_3;
          }
        }

LABEL_17:
        v18 = v0[14];
        v17 = v0[15];
        v19 = v0[13];

        sub_1D26D64FC(v19, v18);
        sub_1D26D64FC(v18, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D27CCA98(0, v27[2] + 1, 1, v27);
        }

        v4 = v28;
        v21 = v27[2];
        v20 = v27[3];
        if (v21 >= v20 >> 1)
        {
          v27 = sub_1D27CCA98((v20 > 1), v21 + 1, 1, v27);
        }

        v22 = v0[15];
        v27[2] = v21 + 1;
        sub_1D26D64FC(v22, v27 + v11 + v21 * v12);
      }

      else
      {
LABEL_3:

        v4 = v28;
      }

      v2 = v4 + 1;
      if (v2 == v25)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v23 = v0[1];

    v23(v27);
  }
}

uint64_t sub_1D26D527C()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D26D5340()
{
  v0 = type metadata accessor for CuratedPrompt(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v51 - v5);
  if (qword_1ED8A4928 != -1)
  {
LABEL_106:
    swift_once();
  }

  v7 = sub_1D23D0054();
  v9 = v8;
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    v9 = 0x80000001D28BFFC0;
    v7 = 0xD000000000000028;
  }

  v59 = v7;
  v60 = v9;
  v57 = 32;
  v58 = 0xE100000000000000;
  sub_1D22BD06C();
  v11 = sub_1D2878F58();

  v55 = *(v11 + 16);
  if (v55)
  {
    v12 = 0;
    v53 = &v59 + 1;
    v54 = v11 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v52 = v13;
      while (1)
      {
        if (v12 >= *(v11 + 16))
        {
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
          goto LABEL_106;
        }

        v14 = (v54 + 16 * v12);
        v16 = *v14;
        v15 = v14[1];
        ++v12;
        v17 = *(v56 + 56);
        v18 = *(v17 + 16);
        sub_1D2870F68();
        sub_1D2870F68();
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            if (v19 >= *(v17 + 16))
            {
              __break(1u);
              goto LABEL_101;
            }

            sub_1D26D643C(v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v3);
            v20 = *(v3 + 2) == v16 && *(v3 + 3) == v15;
            if (v20 || (sub_1D2879618() & 1) != 0)
            {
              break;
            }

            ++v19;
            sub_1D26D64A0(v3);
            if (v18 == v19)
            {
              goto LABEL_9;
            }
          }

          sub_1D26D64FC(v3, v6);
          v22 = *v6;
          v21 = v6[1];
          sub_1D2870F68();
          sub_1D26D64A0(v6);
          v23 = HIBYTE(v21) & 0xF;
          v24 = v22 & 0xFFFFFFFFFFFFLL;
          if ((v21 & 0x2000000000000000) != 0 ? HIBYTE(v21) & 0xF : v22 & 0xFFFFFFFFFFFFLL)
          {
            break;
          }
        }

LABEL_9:

LABEL_10:
        if (v12 == v55)
        {
          v13 = v52;
          goto LABEL_99;
        }
      }

      if ((v21 & 0x1000000000000000) != 0)
      {
        v28 = sub_1D23BE2FC(v22, v21, 10);
        v41 = v42;
        goto LABEL_86;
      }

      if ((v21 & 0x2000000000000000) != 0)
      {
        v59 = v22;
        v60 = v21 & 0xFFFFFFFFFFFFFFLL;
        if (v22 == 43)
        {
          if (!v23)
          {
            goto LABEL_105;
          }

          if (--v23)
          {
            v28 = 0;
            v36 = v53;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              if (!is_mul_ok(v28, 0xAuLL))
              {
                break;
              }

              v31 = __CFADD__(10 * v28, v37);
              v28 = 10 * v28 + v37;
              if (v31)
              {
                break;
              }

              ++v36;
              if (!--v23)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (!v23)
          {
            goto LABEL_103;
          }

          if (--v23)
          {
            v28 = 0;
            v32 = v53;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              if (!is_mul_ok(v28, 0xAuLL))
              {
                break;
              }

              v31 = 10 * v28 >= v33;
              v28 = 10 * v28 - v33;
              if (!v31)
              {
                break;
              }

              ++v32;
              if (!--v23)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else if (v23)
        {
          v28 = 0;
          v39 = &v59;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              break;
            }

            v31 = __CFADD__(10 * v28, v40);
            v28 = 10 * v28 + v40;
            if (v31)
            {
              break;
            }

            v39 = (v39 + 1);
            if (!--v23)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v26 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v26 = sub_1D2879208();
      }

      v27 = *v26;
      if (v27 == 43)
      {
        if (v24 < 1)
        {
          goto LABEL_102;
        }

        v23 = v24 - 1;
        if (v24 == 1)
        {
          goto LABEL_84;
        }

        v28 = 0;
        if (v26)
        {
          v34 = v26 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_84;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_84;
            }

            v31 = __CFADD__(10 * v28, v35);
            v28 = 10 * v28 + v35;
            if (v31)
            {
              goto LABEL_84;
            }

            ++v34;
            if (!--v23)
            {
              goto LABEL_85;
            }
          }
        }
      }

      else if (v27 == 45)
      {
        if (v24 < 1)
        {
          goto LABEL_104;
        }

        v23 = v24 - 1;
        if (v24 == 1)
        {
          goto LABEL_84;
        }

        v28 = 0;
        if (v26)
        {
          v29 = v26 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              break;
            }

            v31 = 10 * v28 >= v30;
            v28 = 10 * v28 - v30;
            if (!v31)
            {
              break;
            }

            ++v29;
            if (!--v23)
            {
              goto LABEL_85;
            }
          }

LABEL_84:
          v28 = 0;
          LOBYTE(v23) = 1;
          goto LABEL_85;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_84;
        }

        v28 = 0;
        if (v26)
        {
          do
          {
            v38 = *v26 - 48;
            if (v38 > 9)
            {
              goto LABEL_84;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_84;
            }

            v31 = __CFADD__(10 * v28, v38);
            v28 = 10 * v28 + v38;
            if (v31)
            {
              goto LABEL_84;
            }

            ++v26;
          }

          while (--v24);
        }
      }

      LOBYTE(v23) = 0;
LABEL_85:
      LOBYTE(v57) = v23;
      v41 = v23;
LABEL_86:

      if (v41)
      {
        goto LABEL_10;
      }

      v43 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_1D27CD1B0(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = v43;
      v46 = *(v43 + 2);
      v47 = v45;
      v48 = *(v45 + 3);
      if (v46 >= v48 >> 1)
      {
        v47 = sub_1D27CD1B0((v48 > 1), v46 + 1, 1, v47);
      }

      *(v47 + 2) = v46 + 1;
      v49 = &v47[8 * v46];
      v13 = v47;
      *(v49 + 4) = v28;
      if (v12 == v55)
      {
        goto LABEL_99;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_99:

  return v13;
}

void *_CuratedPromptsManager.deinit()
{

  return v0;
}

uint64_t _CuratedPromptsManager.__deallocating_deinit()
{
  _CuratedPromptsManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D26D59F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  v4 = sub_1D26D5DB8(a1);

  *a2 = v4;
}

void sub_1D26D5A4C(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_1D25D0574(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];
  sub_1D2870F78();
  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D24EFB38();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D24E61DC(v13, a2 & 1);
  v17 = sub_1D25D0574(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D28796E8();
    __break(1u);
LABEL_29:
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD00000000000001BLL, 0x80000001D28C0030);
    sub_1D2879348();
    MEMORY[0x1D38A0C50](39, 0xE100000000000000);
    sub_1D2879398();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1D25D0574(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      sub_1D2870F78();
      if (v37 < v34)
      {
        sub_1D24E61DC(v34, 1);
        v38 = sub_1D25D0574(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1D26D5DB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v42 - v5;
  v6 = sub_1D2873CB8();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28716B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = v23;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00E8, &qword_1D289DED0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v2 + 80) = v24;
  *(v2 + 88) = 0;
  *(v2 + 96) = v23;
  *(v2 + 16) = a1;
  v25 = objc_opt_self();
  sub_1D2870F78();
  v26 = [v25 defaultManager];
  v27 = sub_1D2878068();
  v28 = [v26 containerURLForSecurityApplicationGroupIdentifier_];

  if (v28)
  {
    sub_1D2871638();

    (*(v9 + 56))(v19, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v19, 1, 1, v8);
  }

  sub_1D22EC9BC(v19, v22, &qword_1EC6DA1B8, &qword_1D2884470);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
    if (sub_1D23CCFDC())
    {
      goto LABEL_6;
    }

LABEL_10:
    v29 = *(v9 + 48);
    goto LABEL_11;
  }

  if ((sub_1D23CCFDC() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_1D22BD1D0(v22, v16, &qword_1EC6DA1B8, &qword_1D2884470);
  v29 = *(v9 + 48);
  if (v29(v16, 1, v8) != 1)
  {
    (*(v9 + 32))(v13, v16, v8);
    v30 = v43;
    (*(v9 + 16))(v43, v13, v8);
    type metadata accessor for CuratedPromptsEmbeddingStorageManager();
    swift_allocObject();
    v31 = sub_1D26A3760(v30);
    (*(v9 + 8))(v13, v8);
    *(v2 + 104) = v31;
    goto LABEL_15;
  }

  sub_1D22BD238(v16, &qword_1EC6DA1B8, &qword_1D2884470);
LABEL_11:
  *(v2 + 104) = 0;
  if (v29(v22, 1, v8) == 1)
  {
    v32 = v44;
    sub_1D28725A8();
    v33 = sub_1D2873CA8();
    v34 = sub_1D2878A18();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D226E000, v33, v34, "Can't access group container", v35, 2u);
      MEMORY[0x1D38A3520](v35, -1, -1);
    }

    (*(v45 + 8))(v32, v46);
  }

LABEL_15:
  v36 = sub_1D28785F8();
  v37 = v47;
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  sub_1D2878568();
  sub_1D2870F78();
  v38 = sub_1D2878558();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v2;
  sub_1D22AE01C(0, 0, v37, &unk_1D289DEE0, v39);

  sub_1D22BD238(v22, &qword_1EC6DA1B8, &qword_1D2884470);
  return v2;
}

uint64_t sub_1D26D643C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedPrompt(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26D64A0(uint64_t a1)
{
  v2 = type metadata accessor for CuratedPrompt(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D26D64FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedPrompt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26D6560(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = type metadata accessor for CuratedPrompt(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v25 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - v10);
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = 0;
  v13 = *(v9 + 72);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = a1 + v30;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = v27 + v13 * v12++;
    sub_1D26D643C(v15, v11);
    v16 = *(*v29 + 16);
    v17 = *v29 + v30;
    sub_1D2870F68();
    v18 = v16 + 1;
    while (--v18)
    {
      sub_1D26D643C(v17, v7);
      if (*v7 == *v11 && v7[1] == v11[1])
      {
        sub_1D26D64A0(v7);
LABEL_4:

        sub_1D26D64A0(v11);
        goto LABEL_5;
      }

      v17 += v13;
      v20 = sub_1D2879618();
      sub_1D26D64A0(v7);
      if (v20)
      {
        goto LABEL_4;
      }
    }

    sub_1D26D64FC(v11, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D23D838C(0, *(v14 + 16) + 1, 1);
      v14 = v31;
    }

    v23 = *(v14 + 16);
    v22 = *(v14 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1D23D838C((v22 > 1), v23 + 1, 1);
      v14 = v31;
    }

    *(v14 + 16) = v23 + 1;
    sub_1D26D64FC(v26, v14 + v30 + v23 * v13);
LABEL_5:
    ;
  }

  while (v12 != v28);
  return v14;
}

uint64_t sub_1D26D67D4()
{
  v1 = sub_1D2873CB8();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v2 = sub_1D2871538();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v3 = sub_1D2871AF8();
  v0[15] = v3;
  v0[16] = *(v3 - 8);
  v0[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00E0, &qword_1D289DEA8);
  v0[18] = v4;
  v0[19] = *(v4 - 8);
  v0[20] = swift_task_alloc();
  v5 = sub_1D28716B8();
  v0[21] = v5;
  v0[22] = *(v5 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26D6A24, 0, 0);
}

uint64_t sub_1D26D6A24()
{
  sub_1D2871AB8();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1D2871AD8();
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[20];
  v26 = v0[21];
  v27 = v0[25];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[14];
  v23 = v0[15];
  v15 = v0[13];
  v24 = v0[12];
  v25 = v0[24];
  sub_1D2871AC8();
  v16 = (*(v10 + 8))(v9, v11);
  MEMORY[0x1D389A560](v16);
  (*(v12 + 8))(v13, v23);
  v0[7] = 0xD000000000000015;
  v0[8] = 0x80000001D28C0050;
  (*(v15 + 104))(v14, *MEMORY[0x1E6968F70], v24);
  sub_1D22BD06C();
  sub_1D2871698();
  (*(v15 + 8))(v14, v24);
  v17 = *(v7 + 8);
  v17(v8, v26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v7 + 32))(v27, v25, v26);
  v18 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v19 = sub_1D28715B8();
  v20 = [v18 initWithURL_];

  v17(v27, v26);
  if (!v20)
  {
    sub_1D28725A8();
    v1 = sub_1D2873CA8();
    v2 = sub_1D28789F8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1D226E000, v1, v2, "Asset not found in ModelCatalog", v3, 2u);
      MEMORY[0x1D38A3520](v3, -1, -1);
    }

    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];

    (*(v5 + 8))(v4, v6);
    v20 = 0;
  }

  v21 = v0[1];

  return v21(v20);
}

unint64_t sub_1D26D6D6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879488();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D26D6DB8(void *a1, void *a2)
{
  v104 = type metadata accessor for CuratedPrompt(0);
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v107 = v93 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v111 = v93 - v8;
  v101 = sub_1D2872068();
  v113 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  v98 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00B0, &qword_1D289DE40);
  v100 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v93 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00B8, &qword_1D289DE48);
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v18 = v93 - v17;
  v19 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D26D7BD0();
  v20 = a2;
  v21 = v109;
  sub_1D2879868();
  if (v21)
  {

    return __swift_destroy_boxed_opaque_existential_0(v108);
  }

  v109 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00C0, &qword_1D289DE50);
  v116 = 0;
  v115 = v20;
  sub_1D26D7CD8(&qword_1ED89CF00, &qword_1EC6E00C0, &qword_1D289DE50, sub_1D26D7C24);
  sub_1D28794A8();
  v95 = v20;
  v96 = v18;
  v97 = 0;
  v23 = 0;
  v24 = v114[0];
  v25 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  v26 = *(v114[0] + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v28 = v14;
  v29 = v100;
LABEL_4:
  v30 = v109;
  while (v26 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
LABEL_23:
      v35 = sub_1D2879368();
      v36 = v105;
      v37 = v113;
      if (!v35)
      {
        goto LABEL_24;
      }

LABEL_13:
      v114[0] = v25;
      v38 = v114;
      sub_1D23D8BA4(0, v35 & ~(v35 >> 63), 0);
      if ((v35 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        v40 = v114[0];
        v41 = v100;
        v42 = v100 & 0xC000000000000001;
        do
        {
          if (v42)
          {
            v43 = MEMORY[0x1D38A1C30](v39, v41);
          }

          else
          {
            v43 = *(v41 + 8 * v39 + 32);
            sub_1D2870F78();
          }

          v44 = *(v43 + 16);
          v114[0] = v40;
          v46 = *(v40 + 16);
          v45 = *(v40 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_1D23D8BA4((v45 > 1), v46 + 1, 1);
            v41 = v100;
            v40 = v114[0];
          }

          ++v39;
          *(v40 + 16) = v46 + 1;
          v47 = v40 + 16 * v46;
          *(v47 + 32) = v44;
          *(v47 + 40) = v43;
          v37 = v113;
        }

        while (v35 != v39);
        goto LABEL_25;
      }

      __break(1u);
LABEL_45:
      swift_once();
      if ((sub_1D23CF554() & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v68 = v105;
      v69 = v103;
      v70 = v97;
      goto LABEL_83;
    }

    if (*(v24 + 8 * v23++ + 32))
    {
      v32 = sub_1D2870F78();
      MEMORY[0x1D38A0E30](v32);
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
        v29 = v100;
      }

      sub_1D2878488();
      v27 = v115;
      goto LABEL_4;
    }
  }

  v114[0] = v27;
  swift_getKeyPath();
  sub_1D2871358();
  v33 = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00D0, &unk_1D289DE80);
  sub_1D22BB9D8(&qword_1ED89CF08, &qword_1EC6E00D0, &unk_1D289DE80, MEMORY[0x1E69E6328]);
  sub_1D22BB9D8(&qword_1ED8A6CC8, &qword_1EC6E00B0, &qword_1D289DE40, MEMORY[0x1E6968898]);
  v34 = sub_1D2878308();
  (*(v29 + 8))(v33, v28);

  v100 = v34;
  v94 = v34 >> 62;
  if (v34 >> 62)
  {
    goto LABEL_23;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v105;
  v37 = v113;
  if (v35)
  {
    goto LABEL_13;
  }

LABEL_24:
  if (*(v25 + 16))
  {
LABEL_25:
    v48 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB40, &qword_1D288E888);
    v49 = sub_1D28793F8();
  }

  else
  {
    v48 = v101;
    v49 = MEMORY[0x1E69E7CC8];
  }

  v114[0] = v49;
  v50 = sub_1D2870F68();
  v51 = v97;
  sub_1D26D5A4C(v50, 1, v114);
  if (v51)
  {
LABEL_89:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v52 = v114[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E00D8, &unk_1D289DE90);
  v116 = 1;
  v53 = v95;
  v114[0] = v95;
  v114[1] = v52;
  sub_1D26D7CD8(&qword_1ED89CF18, &qword_1EC6E00D8, &unk_1D289DE90, sub_1D26D7D54);
  v54 = v53;
  sub_1D28794A8();

  v97 = 0;
  v95 = v54;
  v55 = *(v115 + 16);
  if (v55)
  {
    v56 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v93[1] = v115;
    v57 = v115 + v56;
    v109 = *(v98 + 72);
    v27 = v107;
    v58 = (v106 + 48);
    v36 = MEMORY[0x1E69E7CC0];
    v59 = v104;
    v60 = v112;
    do
    {
      sub_1D22BD1D0(v57, v60, &qword_1EC6DA210, &unk_1D2886B20);
      v61 = v60;
      v62 = v110;
      sub_1D22EC9BC(v61, v110, &qword_1EC6DA210, &unk_1D2886B20);
      if ((*v58)(v62, 1, v59) == 1)
      {
        sub_1D22BD238(v62, &qword_1EC6DA210, &unk_1D2886B20);
        v60 = v112;
      }

      else
      {
        sub_1D26D64FC(v62, v111);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1D27CCA98(0, v36[2] + 1, 1, v36);
        }

        v60 = v112;
        v64 = v36[2];
        v63 = v36[3];
        if (v64 >= v63 >> 1)
        {
          v36 = sub_1D27CCA98((v63 > 1), v64 + 1, 1, v36);
        }

        v36[2] = v64 + 1;
        sub_1D26D64FC(v111, v36 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v64);
        v27 = v107;
        v59 = v104;
      }

      v57 += v109;
      --v55;
    }

    while (v55);

    v65 = v101;
    v37 = v113;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    v27 = v107;
    v65 = v48;
  }

  v66 = v99;
  (*(v37 + 104))(v99, *MEMORY[0x1E696E398], v65);
  v67 = sub_1D2872058();
  (*(v37 + 8))(v66, v65);
  v23 = v96;
  v38 = v106;
  if (v67)
  {
    if (qword_1ED8A4928 != -1)
    {
      goto LABEL_45;
    }

    if (sub_1D23CF554())
    {
      goto LABEL_43;
    }
  }

LABEL_46:
  v71 = v36[2];
  v72 = MEMORY[0x1E69E7CC0];
  if (v71)
  {
    v73 = 0;
    while (v73 < v36[2])
    {
      v74 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v75 = v38[9];
      sub_1D26D643C(v36 + v74 + v75 * v73, v27);
      v76 = *(v27 + 48);
      v77 = *(v76 + 24) == 0x6973736572707845 && *(v76 + 32) == 0xEB00000000736E6FLL;
      if (v77 || (sub_1D2879618() & 1) != 0)
      {
        sub_1D26D64A0(v27);
      }

      else
      {
        sub_1D26D64FC(v27, v102);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114[0] = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D838C(0, *(v72 + 16) + 1, 1);
          v38 = v106;
          v72 = v114[0];
        }

        v80 = *(v72 + 16);
        v79 = *(v72 + 24);
        v81 = v102;
        if (v80 >= v79 >> 1)
        {
          sub_1D23D838C((v79 > 1), v80 + 1, 1);
          v81 = v102;
          v38 = v106;
          v72 = v114[0];
        }

        *(v72 + 16) = v80 + 1;
        sub_1D26D64FC(v81, v72 + v74 + v80 * v75);
        v27 = v107;
      }

      if (v71 == ++v73)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_61:

  v114[0] = MEMORY[0x1E69E7CC0];
  v82 = v100;
  if (v94)
  {
    v83 = sub_1D2879368();
  }

  else
  {
    v83 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v105;
  v69 = v103;
  v70 = v97;
  if (!v83)
  {
    v90 = MEMORY[0x1E69E7CC0];
    goto LABEL_82;
  }

  v84 = 0;
  v85 = v82 & 0xC000000000000001;
  v86 = v82 & 0xFFFFFFFFFFFFFF8;
  while (v85)
  {
    v87 = MEMORY[0x1D38A1C30](v84, v82);
    v88 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_79;
    }

LABEL_71:
    v89 = *(v87 + 24) == 0x6973736572707845 && *(v87 + 32) == 0xEB00000000736E6FLL;
    if (v89 || (sub_1D2879618() & 1) != 0)
    {
    }

    else
    {
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v82 = v100;
    }

    ++v84;
    if (v88 == v83)
    {
      goto LABEL_80;
    }
  }

  if (v84 >= *(v86 + 16))
  {
    goto LABEL_88;
  }

  v87 = *(v82 + 8 * v84 + 32);
  sub_1D2870F78();
  v88 = v84 + 1;
  if (!__OFADD__(v84, 1))
  {
    goto LABEL_71;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  v90 = v114[0];
  v68 = v105;
  v69 = v103;
  v70 = v97;
LABEL_82:

  v100 = v90;
  v23 = v96;
LABEL_83:
  LOBYTE(v114[0]) = 2;
  sub_1D28794E8();
  if (v70)
  {

    v91 = v95;
    (*(v69 + 8))(v23, v68);
  }

  else
  {
    (*(v69 + 8))(v23, v68);
    v92 = v95;
  }

  __swift_destroy_boxed_opaque_existential_0(v108);
  return v100;
}

unint64_t sub_1D26D7BD0()
{
  result = qword_1ED8A0DE0;
  if (!qword_1ED8A0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DE0);
  }

  return result;
}

unint64_t sub_1D26D7C24()
{
  result = qword_1ED8A13F8[0];
  if (!qword_1ED8A13F8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E00C8, &qword_1D289DE58);
    sub_1D26D7F74(&qword_1ED8A14E0, type metadata accessor for CuratedPromptCategory, &unk_1D289C060);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A13F8);
  }

  return result;
}

uint64_t sub_1D26D7CD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D26D7D54()
{
  result = qword_1ED8A4998[0];
  if (!qword_1ED8A4998[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA210, &unk_1D2886B20);
    sub_1D26D7F74(&qword_1ED8A4A60, type metadata accessor for CuratedPrompt, &unk_1D28ABF6C);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4998);
  }

  return result;
}

uint64_t sub_1D26D7E08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D22B9934(a1, v4);
}

uint64_t sub_1D26D7EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D26D1B58(a1, v4, v5, v6);
}

uint64_t sub_1D26D7F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26D7FDC(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_1D2873CB8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_1D28716B8();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26D8110, 0, 0);
}

uint64_t sub_1D26D8110()
{
  v42 = v0;
  v1 = v0[11];
  v2 = sub_1D2878068();
  v3 = sub_1D2878068();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[16];
    v8 = v0[17];
    sub_1D2871638();

    (*(v8 + 32))(v5, v6, v7);
    v9 = sub_1D28716C8();
    v11 = v10;
    v12 = v0[11];
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    v0[10] = v12;
    sub_1D26D8870();
    v13 = v12;
    sub_1D28713C8();
    v32 = v0[19];
    v33 = v0[16];
    v34 = v0[17];
    v35 = v0[11];

    sub_1D22D6D60(v9, v11);

    (*(v34 + 8))(v32, v33);
    v37 = v0[2];
    v36 = v0[3];
    v38 = v0[4];
    v39 = v0[5];
  }

  else
  {
    v14 = v0[11];
    sub_1D28725A8();
    v15 = v14;
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[15];
    v21 = v0[12];
    v20 = v0[13];
    if (v18)
    {
      v22 = v0[11];
      v40 = v0[15];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136446210;
      v25 = [v22 bundlePath];
      v26 = sub_1D28780A8();
      v28 = v27;

      v29 = sub_1D23D7C84(v26, v28, &v41);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1D226E000, v16, v17, "Cannot load with bundle %{public}s, missing file", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);

      (*(v20 + 8))(v40, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v37 = 0;
    v36 = 0;
    v38 = 0;
    v39 = 0;
  }

  v30 = v0[1];

  return v30(v37, v36, v38, v39);
}

id sub_1D26D8698()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2878068();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {
    sub_1D28725A8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Cannot find ImagePlaygroundInternal.framework bundle", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v5;
}

double sub_1D26D8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1D26D8870()
{
  result = qword_1ED8A0DC8;
  if (!qword_1ED8A0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DC8);
  }

  return result;
}

unint64_t sub_1D26D88E8()
{
  result = qword_1EC6E00F0;
  if (!qword_1EC6E00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E00F0);
  }

  return result;
}

unint64_t sub_1D26D8940()
{
  result = qword_1ED8A0DD0;
  if (!qword_1ED8A0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DD0);
  }

  return result;
}

unint64_t sub_1D26D8998()
{
  result = qword_1ED8A0DD8;
  if (!qword_1ED8A0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DD8);
  }

  return result;
}

uint64_t sub_1D26D8A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D26D8B1C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D26D8A68()
{
  sub_1D26D8AA4();
  sub_1D2875638();
  return v1;
}

unint64_t sub_1D26D8AA4()
{
  result = qword_1ED89D6F0;
  if (!qword_1ED89D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6F0);
  }

  return result;
}

unint64_t sub_1D26D8B1C()
{
  result = qword_1EC6E00F8;
  if (!qword_1EC6E00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E00F8);
  }

  return result;
}

uint64_t type metadata accessor for PickerViewController(uint64_t a1)
{
  result = qword_1EC6E0118;
  if (!qword_1EC6E0118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D26D8C14()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EC6E0100);
  if (v5)
  {
    v6 = *(v0 + qword_1EC6E0108);
    v7 = *(v5 + 16);
    v8 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
    if (v6 == v8)
    {
      *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = v6;
      sub_1D2870F78();
      sub_1D23068A8(v8);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v14[-2] = v7;
      LOBYTE(v14[-1]) = v6;
      v14[1] = v7;
      sub_1D245EB0C();
      sub_1D2870F78();
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D28725E8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "creationViewModel is nil", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

double sub_1D26D8E74()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EC6E0100))
  {
    v5 = *(v0 + qword_1EC6E0110);
    sub_1D2870F78();
    if (v5)
    {
      v6 = v5;
      ComposingViewModel.load(fromAPIRecipe:)(v6);
    }

    else
    {
      ComposingViewModel.reset()();
    }
  }

  else
  {
    sub_1D28725E8();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "creationViewModel is nil", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1D26D902C(uint64_t a1)
{
  v3 = type metadata accessor for PickerEditorView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  *&v6[qword_1EC6E0100] = 0;
  v6[qword_1EC6E0108] = 0;
  *&v6[qword_1EC6E0110] = 0;
  sub_1D23C6A20(a1, v5);
  v7 = sub_1D28759F8();
  sub_1D26D934C(a1);
  return v7;
}

void *sub_1D26D9134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickerEditorView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *(v2 + qword_1EC6E0100) = 0;
  *(v2 + qword_1EC6E0108) = 0;
  *(v2 + qword_1EC6E0110) = 0;
  sub_1D23C6A20(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D28759E8();
  v7 = v6;
  sub_1D26D934C(a2);
  if (v6)
  {
  }

  return v6;
}

id sub_1D26D9204(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC6E0100] = 0;
  v1[qword_1EC6E0108] = 0;
  *&v1[qword_1EC6E0110] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1D26D92B8()
{

  v1 = *(v0 + qword_1EC6E0110);
}

void sub_1D26D92F8(uint64_t a1)
{

  v2 = *(a1 + qword_1EC6E0110);
}

uint64_t sub_1D26D934C(uint64_t a1)
{
  v2 = type metadata accessor for PickerEditorView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D26D93C8()
{
  sub_1D25940B8();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D26D9404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v5 = sub_1D2871DD8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D26D94FC(uint64_t a1)
{
  v2 = sub_1D2871DD8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D22F8BBC(v5);
}

void sub_1D26D95C8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);
}

void sub_1D26D96A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowPromptAlert);
}

uint64_t sub_1D26D9778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF978();
  *a1 = result & 1;
  return result;
}

void sub_1D26D97A4(unsigned __int8 *a1)
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
  v1 = sub_1D2878A58();
  v2 = sub_1D28784E8();
  v3 = sub_1D2878068();
  [v1 setValue:v2 forKey:v3];
}

void *sub_1D26D9850@<X0>(_BYTE *a1@<X8>)
{
  sub_1D245CAA4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D26D9910(uint64_t a1)
{
  v2 = sub_1D2874EA8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D28753B8();
}

void sub_1D26D9A2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ComposingView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[8];
  sub_1D28772F8();
  *v8 = v34;
  *(v8 + 1) = *(&v34 + 1);
  v9 = (a3 + v6[9]);
  sub_1D28772F8();
  *v9 = v34;
  v10 = a3 + v6[10];
  sub_1D28772F8();
  *v10 = v34;
  *(v10 + 1) = *(&v34 + 1);
  v11 = a3 + v6[11];
  sub_1D28772F8();
  *v11 = v34;
  *(v11 + 1) = *(&v34 + 1);
  v12 = a3 + v6[12];
  sub_1D28772F8();
  *v12 = v34;
  *(v12 + 1) = *(&v34 + 1);
  v13 = a3 + v6[14];
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  *v13 = v34;
  *(v13 + 2) = v35;
  swift_getKeyPath();
  sub_1D28746D8();
  v14 = a3 + v6[16];
  sub_1D26EA92C();
  sub_1D28742E8();
  *v14 = v34;
  *(v14 + 1) = *(&v34 + 1);
  v14[16] = v35;
  v15 = a3 + v6[17];
  type metadata accessor for HomeAnimationCoordinator(0);
  sub_1D26EEE94(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  *v15 = sub_1D28744C8();
  v15[8] = v16 & 1;
  v17 = v6[18];
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v18 = a3 + v6[19];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a3 + v6[20];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a3 + v6[21];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = a3 + v6[22];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = a3 + v6[23];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a3 + v6[24];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *(a3 + v6[25]) = 0x404C800000000000;
  v24 = (a3 + v6[26]);
  *v24 = 0x3A79706F63;
  v24[1] = 0xE500000000000000;
  *a3 = a1;
  v25 = (a3 + v6[6]);
  *v25 = a2;
  v25[1] = 0;
  type metadata accessor for ComposingAnimationCoordinator(0);
  swift_allocObject();
  sub_1D2870F78();
  v26 = sub_1D245EBCC(a1);
  v27 = (a3 + v6[7]);
  *v27 = v26;
  v27[1] = 0;
  type metadata accessor for StickerSaveAnimation.Coordinator(0);
  v28 = swift_allocObject();
  *(v28 + 16) = [objc_opt_self() defaultCenter];
  v29 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  v30 = type metadata accessor for PlaygroundImage(0);
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  v31 = v28 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 1;
  v32 = (v28 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  *v32 = 0;
  v32[1] = 0;
  *(v28 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationObserver) = 0;
  *(v28 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) = 0;
  sub_1D2871A18();
  swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator, &unk_1D28A3200);
  sub_1D2870F78();
  sub_1D28719D8();

  v33 = (a3 + v6[13]);
  *v33 = v28;
  v33[1] = 0;
}

double sub_1D26D9FA8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D22F7DF4();
    v2 = sub_1D22C3068();

    swift_getKeyPath();
    sub_1D26EEE94(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
    sub_1D28719E8();

    v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
      sub_1D2870F78();
      v3(0);

      sub_1D22D7900(v3, v4);
    }

    else
    {
    }
  }

  return result;
}

BOOL sub_1D26DA0E0()
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  if (v9 != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v0 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack);

  if (v0)
  {
    return 0;
  }

  sub_1D2877308();
  v2 = sub_1D22F7E14();

  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A3F70, type metadata accessor for EffectViewModel, &unk_1D28A4108);
  sub_1D28719E8();

  v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v4 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

  if (v4 < 0 && !(v3 | v4 & 0x7F) && (sub_1D26DA398() & 1) != 0)
  {
    return 1;
  }

  sub_1D2877308();
  v5 = sub_1D22F7E14();

  swift_getKeyPath();
  sub_1D28719E8();

  v6 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v7 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 128;
  }

  return !v8;
}

uint64_t sub_1D26DA398()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ComposingView(0) + 88);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1D2870F78();
  if ((v7 & 1) == 0)
  {
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    v6 = v12;
  }

  if (!v6)
  {
    return 1;
  }

  swift_getKeyPath();
  v12 = v6;
  sub_1D26EEE94(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState, &protocol conformance descriptor for GPUIExtensionState);
  sub_1D28719E8();

  v9 = *(v6 + 16);

  return v9;
}

BOOL sub_1D26DA570()
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v0 = sub_1D22F7E14();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A3F70, type metadata accessor for EffectViewModel, &unk_1D28A4108);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

  if (v2 >> 6 < 2 || __PAIR128__(-128, 1) < __PAIR128__(v2, v1) || v1 | v2 ^ 0x80)
  {

    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    v3 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    return v3 == 1;
  }
}

void sub_1D26DA758(BOOL *a2@<X8>)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v3 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);

  *a2 = (v3 & 0xFFFFFFFD) != 1;
}

double sub_1D26DA858(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D2877308();
  v5 = sub_1D23008B0();

  if (v5 & v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  v7 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);
  if (v7 == 3)
  {
    if ((v5 & v4 & 1) == 0)
    {
LABEL_6:
      *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) = v6;

      return result;
    }
  }

  else if (v7 == v6)
  {
    goto LABEL_6;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D26DAA04()
{
  v1 = v0;
  v2 = sub_1D2875E18();
  v53 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v54 = (&v46 - v12);
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComposingView(0);
  v18 = (v0 + v17[6]);
  v19 = *v18;
  v50 = v18[1];
  v51 = v19;
  v56 = v19;
  v57 = v50;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v20 = sub_1D2307934();

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

  v21 = v0 + v17[20];
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_6:
    v26 = (v1 + v17[16]);
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v26) = v26[16];
    LOBYTE(v56) = v27;
    v57 = v28;
    v58 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
    sub_1D28742A8();
    v30 = v54;
    v29 = v55;
    if (v59 != 2 && (v59 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_1D24CC0C4(v54);
    v33 = v53;
    (*(v53 + 104))(v29, *MEMORY[0x1E697FF38], v2);
    (*(v33 + 56))(v29, 0, 1, v2);
    v34 = v2;
    v35 = *(v4 + 48);
    sub_1D22BD1D0(v30, v6, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD1D0(v29, &v6[v35], &qword_1EC6D99B8, &unk_1D287E890);
    v36 = v29;
    v37 = *(v33 + 48);
    if (v37(v6, 1, v34) == 1)
    {
      sub_1D22BD238(v36, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
      if (v37(&v6[v35], 1, v34) == 1)
      {
        sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_17:
        v56 = v51;
        v57 = v50;
        sub_1D2877308();
        sub_1D22F7DF4();

        v45 = sub_1D22C211C();

        v31 = v45 ^ 1;
        return v31 & 1;
      }
    }

    else
    {
      v38 = v52;
      sub_1D22BD1D0(v6, v52, &qword_1EC6D99B8, &unk_1D287E890);
      if (v37(&v6[v35], 1, v34) != 1)
      {
        v39 = v53;
        v40 = &v6[v35];
        v41 = v48;
        (*(v53 + 32))(v48, v40, v34);
        sub_1D26EEE94(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v42 = v38;
        v43 = sub_1D2877F98();
        v44 = *(v39 + 8);
        v44(v41, v34);
        sub_1D22BD238(v55, &qword_1EC6D99B8, &unk_1D287E890);
        sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
        v44(v42, v34);
        sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
        if ((v43 & 1) == 0)
        {
          v31 = 1;
          return v31 & 1;
        }

        goto LABEL_17;
      }

      sub_1D22BD238(v55, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v30, &qword_1EC6D99B8, &unk_1D287E890);
      (*(v53 + 8))(v38, v34);
    }

    sub_1D22BD238(v6, &qword_1EC6E0DB0, &qword_1D288C390);
    v31 = 1;
    return v31 & 1;
  }

  sub_1D2870F78();
  sub_1D2878A28();
  v23 = sub_1D28762E8();
  v47 = v6;
  v24 = v2;
  v25 = v23;
  sub_1D2873BE8();

  v2 = v24;
  v6 = v47;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D2273818(v22, 0);
  (*(v14 + 8))(v16, v13);
  if ((v56 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v31 = 0;
  return v31 & 1;
}

double sub_1D26DB0C8(uint64_t a1, char a2)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

double sub_1D26DB14C@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for ComposingView(0);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = v4;
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 32);
  v60 = v1;
  v7 = (v1 + v6);
  v8 = *v7;
  v9 = v7[1];
  *&v75 = *v7;
  *(&v75 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v10 = v68;
  swift_getKeyPath();
  *&v75 = v10;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v12 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  v11 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8);
  v13 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  sub_1D233EA00(v12, v11, *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16));

  if (v13 != 255)
  {
    *&v75 = v8;
    *(&v75 + 1) = v9;
    sub_1D2877308();
    v14 = sub_1D230326C();

    if (v14)
    {
      sub_1D23D79B8(v12, v11, v13);
      if (v15)
      {
        v16 = sub_1D2875798();
        v54 = v17;
        v55 = v16;
        *&v53 = v18 & 1;
        *(&v53 + 1) = v19;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v53 = 0uLL;
      }

      sub_1D23D646C(v12, v11, v13);
      v23 = sub_1D2875798();
      v51 = v24;
      v52 = v23;
      v49 = v25;
      v50 = v26;
      if (v13 == 6)
      {
        v27 = (v12 >= 0x17) + v11 - 1;
        v28 = __PAIR128__(v27, v12 - 23) >= 2;
        if (__PAIR128__(v27, v12 - 23) >= 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0xD00000000000001FLL;
        }

        if (v28)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0x80000001D28C00D0;
        }

        v47 = v30;
        v48 = v29;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      *&v75 = v8;
      *(&v75 + 1) = v9;
      sub_1D2877308();
      v31 = sub_1D22FE93C();
      v33 = v32;
      v56 = v34;

      if (v13 <= 2)
      {
        if (!v13)
        {
          v35 = v12;
          v36 = v11;
          v37 = 0;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v35 = v12;
          v36 = v11;
          v37 = 2;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v35 = v12;
            v36 = v11;
            v37 = 3;
            goto LABEL_30;
          case 4:
            v35 = v12;
            v36 = v11;
            v37 = 4;
            goto LABEL_30;
          case 5:
            v35 = v12;
            v36 = v11;
            v37 = 5;
LABEL_30:
            sub_1D22FD918(v35, v36, v37);
            v38 = 0;
            v39 = 0;
LABEL_31:
            *&v61 = v52;
            *(&v61 + 1) = v51;
            LOBYTE(v62) = v49 & 1;
            *(&v62 + 1) = v50;
            *&v63 = v55;
            *(&v63 + 1) = v54;
            v64 = v53;
            *&v65 = v48;
            *(&v65 + 1) = v47;
            *&v66 = v31;
            *(&v66 + 1) = v33;
            *&v67[0] = v56;
            *(&v67[0] + 1) = v38;
            *&v67[1] = v39;
            sub_1D26EDE60(&v61);
            goto LABEL_32;
        }
      }

      sub_1D22FD918(v12, v11, v13);
      v44 = v59;
      sub_1D26EF2C0(v60, v59, type metadata accessor for ComposingView);
      v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v39 = swift_allocObject();
      sub_1D26EF328(v44, v39 + v45, type metadata accessor for ComposingView);
      v38 = sub_1D26EDDD4;
      goto LABEL_31;
    }

    sub_1D22FD918(v12, v11, v13);
  }

  if (sub_1D26DA570())
  {
    *&v61 = sub_1D26DB870();
    *(&v61 + 1) = v20;
    LOBYTE(v62) = v21 & 1;
    *(&v62 + 1) = v22;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    memset(v67, 0, 24);
    sub_1D26EDD74(&v61);
LABEL_32:
    v72 = v65;
    v73 = v66;
    v74[0] = v67[0];
    *(v74 + 9) = *(v67 + 9);
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D26EDD80();
    sub_1D2875AF8();
    v72 = v79;
    v73 = v80;
    v74[0] = v81[0];
    *(v74 + 9) = *(v81 + 9);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    CGRectMake();
    v79 = v72;
    v80 = v73;
    v81[0] = v74[0];
    *(v81 + 9) = *(v74 + 9);
    v75 = v68;
    v76 = v69;
    v77 = v70;
    v78 = v71;
    goto LABEL_33;
  }

  sub_1D26EDD50(&v75);
LABEL_33:
  v40 = v80;
  a1[4] = v79;
  a1[5] = v40;
  a1[6] = v81[0];
  *(a1 + 105) = *(v81 + 9);
  v41 = v76;
  *a1 = v75;
  a1[1] = v41;
  result = *&v77;
  v43 = v78;
  a1[2] = v77;
  a1[3] = v43;
  return result;
}

double sub_1D26DB670(uint64_t a1)
{
  MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  sub_1D2874BE8();

  return result;
}

void sub_1D26DB6EC(uint64_t a1)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v1 = (v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 255)
  {
    *v1 = 0;
    v1[1] = 0;
    sub_1D22FE198();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D26DB870()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ComposingView(0) + 76);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v6, 0);
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D2875798();
}