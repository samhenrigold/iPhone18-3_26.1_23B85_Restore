double sub_2437FB290@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  v6 = OUTLINED_FUNCTION_38(v5);
  MEMORY[0x28223BE20](v6);
  v51 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D28, &qword_24381D6D8);
  v9 = OUTLINED_FUNCTION_38(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_24381C914();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  sub_2437FF8F0(&qword_27ED92D30, MEMORY[0x277CFA8E8], MEMORY[0x277CFA8F0]);
  sub_24381CAB4();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v45 = a2;
  v44 = *(v14 + 32);
  v44(v21, v11, v12);
  v22 = sub_24381CAA4();
  v43 = v23;
  v39 = v22;
  v40 = HIDWORD(v22);
  v41 = v24;
  v42 = HIDWORD(v24);
  v46 = HIDWORD(v23);
  v47 = v25;
  v48 = HIDWORD(v25);
  v26 = sub_24381CCD4();
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v26);
  v27 = OUTLINED_FUNCTION_29();
  v28(v27);
  v29 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v30 = (v16 + v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v49 = a3;
  v32 = v44;
  v33 = v45;
  *(v31 + 4) = v50;
  *(v31 + 5) = v33;
  v32(&v31[v29], v19, v12);
  v34 = &v31[v30];
  v35 = v40;
  *v34 = v39;
  *(v34 + 1) = v35;
  v36 = v42;
  *(v34 + 2) = v41;
  *(v34 + 3) = v36;
  *(v34 + 4) = v43;
  *(v34 + 5) = v46;
  *(v34 + 6) = v47;
  *(v34 + 7) = v48;

  v37 = v49;

  sub_2437FCB64(0, 0, v51, &unk_24381D6E8, v31);

  (*(v14 + 8))(v21, v12);
  *(v37 + 32) = 0;
  result = 0.0;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  return result;
}

uint64_t sub_2437FB61C()
{
  OUTLINED_FUNCTION_37();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2437FB6F4;

  return sub_2437FB7D4();
}

uint64_t sub_2437FB6F4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_2437FB7D4()
{
  OUTLINED_FUNCTION_13();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D38, &qword_24381D710);
  v0[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[10] = v9;
  v0[11] = OUTLINED_FUNCTION_32();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D40, &qword_24381D718);
  OUTLINED_FUNCTION_38(v10);
  v0[12] = OUTLINED_FUNCTION_32();
  v11 = sub_24381C8D4();
  v0[13] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_32();
  v13 = sub_24381C724();
  v0[16] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[17] = v14;
  v0[18] = OUTLINED_FUNCTION_48();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D48, &qword_24381D720);
  v0[21] = v15;
  OUTLINED_FUNCTION_1(v15);
  v0[22] = v16;
  v0[23] = OUTLINED_FUNCTION_32();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D50, &qword_24381D728);
  OUTLINED_FUNCTION_38(v17);
  v0[24] = OUTLINED_FUNCTION_32();
  v18 = sub_24381C8A4();
  v0[25] = v18;
  OUTLINED_FUNCTION_1(v18);
  v0[26] = v19;
  v0[27] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_2437FBA40()
{
  OUTLINED_FUNCTION_58();
  sub_24381C604();
  swift_allocObject();
  *(v0 + 224) = sub_24381C5F4();
  sub_24381C904();
  sub_2437FF8F0(&qword_27ED92D58, MEMORY[0x277CFA848], MEMORY[0x277CFA858]);
  sub_24381C5E4();
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_16();
  v2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 232) = v3;
  *v3 = v4;
  v3[1] = sub_2437FBDD4;
  OUTLINED_FUNCTION_30();

  return sub_2437FCE38();
}

uint64_t sub_2437FBDD4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FBECC()
{
  OUTLINED_FUNCTION_13();
  sub_24381C8F4();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_2437FBF70;

  return sub_2437FD570();
}

uint64_t sub_2437FBF70()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 256) = v0;

  v7 = OUTLINED_FUNCTION_57();
  v8(v7);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_58();
  (*(v18[22] + 8))(v18[23], v18[21]);
  v19 = OUTLINED_FUNCTION_6();
  v20(v19);
  v21 = v18[32];
  sub_24381C904();
  OUTLINED_FUNCTION_22();
  sub_2437FF8F0(v22, v23, MEMORY[0x277CFA8B8]);
  sub_24381C5E4();
  if (v21)
  {
    v24 = v18[12];

    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_34();
    sub_2437FF890(v24, &qword_27ED92D40, &qword_24381D718);
    sub_24381CA34();
    OUTLINED_FUNCTION_5();
    v27 = sub_2437FF8F0(v25, v26, MEMORY[0x277CFA960]);
    v28 = OUTLINED_FUNCTION_33(v27);
    OUTLINED_FUNCTION_40();
    (*(v29 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_7(v30);
    v31 = OUTLINED_FUNCTION_29();
    sub_2437FECB4(v31);

    v32 = OUTLINED_FUNCTION_10();
    v33(v32);

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_30();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_49();
    v43 = OUTLINED_FUNCTION_16();
    v44(v43);
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v18[33] = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_15(v45);
    OUTLINED_FUNCTION_30();

    return sub_2437FE578();
  }
}

uint64_t sub_2437FC330()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FC428()
{
  OUTLINED_FUNCTION_13();
  sub_24381C8F4();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_2437FC4CC;

  return sub_2437FDDE4();
}

uint64_t sub_2437FC4CC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 288) = v0;

  v7 = OUTLINED_FUNCTION_57();
  v8(v7);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2437FC61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_58();
  (*(v18[10] + 8))(v18[11], v18[9]);
  v19 = OUTLINED_FUNCTION_6();
  v20(v19);
  sub_24381CA34();
  OUTLINED_FUNCTION_5();
  v23 = sub_2437FF8F0(v21, v22, MEMORY[0x277CFA960]);
  v24 = OUTLINED_FUNCTION_33(v23);
  OUTLINED_FUNCTION_40();
  (*(v25 + 104))();
  swift_willThrow();

  OUTLINED_FUNCTION_7(v26);
  v27 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v27);

  v28 = OUTLINED_FUNCTION_10();
  v29(v28);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2437FC794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();

  v17 = OUTLINED_FUNCTION_6();
  v19 = v18(v17);
  v20 = *(v16 + 240);
  OUTLINED_FUNCTION_2(v19);
  v21 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v21);

  v22 = OUTLINED_FUNCTION_10();
  v23(v22);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FC878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();

  v17 = OUTLINED_FUNCTION_26();
  v18(v17);
  v19 = OUTLINED_FUNCTION_18();
  v21 = v20(v19);
  v22 = *(v16 + 256);
  OUTLINED_FUNCTION_2(v21);
  v23 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v23);

  v24 = OUTLINED_FUNCTION_10();
  v25(v24);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FC978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();

  v17 = OUTLINED_FUNCTION_6();
  v19 = v18(v17);
  v20 = *(v16 + 272);
  OUTLINED_FUNCTION_2(v19);
  v21 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v21);

  v22 = OUTLINED_FUNCTION_10();
  v23(v22);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FCA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();

  v17 = OUTLINED_FUNCTION_26();
  v18(v17);
  v19 = OUTLINED_FUNCTION_18();
  v21 = v20(v19);
  v22 = *(v16 + 288);
  OUTLINED_FUNCTION_2(v21);
  v23 = OUTLINED_FUNCTION_29();
  sub_2437FECB4(v23);

  v24 = OUTLINED_FUNCTION_10();
  v25(v24);

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2437FCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2437FF45C(a3, v24 - v10);
  v12 = sub_24381CCD4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2437FF890(v11, &qword_27ED92D20, &qword_24381D6D0);
  }

  else
  {
    sub_24381CCC4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24381CC74();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24381CBC4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2437FF890(a3, &qword_27ED92D20, &qword_24381D6D0);

      return v22;
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

  sub_2437FF890(a3, &qword_27ED92D20, &qword_24381D6D0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2437FCE38()
{
  OUTLINED_FUNCTION_13();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_24381C6E4();
  v1[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_32();
  v6 = sub_24381C804();
  v1[9] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_32();
  v8 = sub_24381C8A4();
  v1[12] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v10);
}

void *sub_2437FCF7C()
{
  OUTLINED_FUNCTION_54();
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4(v3);
  if (v5 != *MEMORY[0x277CFA838] && v5 != *MEMORY[0x277CFA840])
  {
    return OUTLINED_FUNCTION_35();
  }

  v7 = v0[14];
  v8 = (*(v0[13] + 96))(v7, v0[12]);
  if (*(*v7 + 16))
  {
    v9 = v0[5];
    v10 = OUTLINED_FUNCTION_36();
    v11(v10);

    v0[15] = sub_24381C7B4();
    v0[16] = v12;
    sub_24381C7D4();
    v13 = *(v9 + 16);
    v0[17] = v13;
    v14 = (*v13 + 136) & 0xFFFFFFFFFFFFLL | 0x1068000000000000;
    v0[18] = *(*v13 + 136);
    v0[19] = v14;
    v8 = sub_2437FD0FC;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2437FD0FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_37();
  v9 = v8[18];
  v10 = v8[15];
  type metadata accessor for Uploader();
  v11 = OUTLINED_FUNCTION_47();
  v9(v11);
  v8[20] = v10;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2437FD1B8()
{
  OUTLINED_FUNCTION_13();
  v0[21] = v0[2];
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[22] = v1;
  *v1 = v2;
  v1[1] = sub_2437FD250;

  return sub_243807A44();
}

uint64_t sub_2437FD250()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FD348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_37();

  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  v10 = OUTLINED_FUNCTION_57();
  v11(v10);

  OUTLINED_FUNCTION_12();

  return v12();
}

uint64_t sub_2437FD40C()
{
  OUTLINED_FUNCTION_28();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_6();
  v2(v1);

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_2437FD4B4()
{
  OUTLINED_FUNCTION_54();

  v0 = OUTLINED_FUNCTION_26();
  v1(v0);
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t sub_2437FD570()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_41(v1, v2, v3);
  v4 = sub_24381C934();
  v0[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_48();
  v0[9] = swift_task_alloc();
  v6 = sub_24381C724();
  v0[10] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_48();
  v0[13] = swift_task_alloc();
  v8 = sub_24381C944();
  v0[14] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_48();
  v0[17] = swift_task_alloc();
  v10 = sub_24381C8C4();
  v0[18] = v10;
  OUTLINED_FUNCTION_1(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_32();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D70, &qword_24381D740);
  OUTLINED_FUNCTION_38(v12);
  v0[21] = OUTLINED_FUNCTION_32();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D78, &qword_24381D748);
  v0[22] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[23] = v14;
  v0[24] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2437FD7A0()
{
  OUTLINED_FUNCTION_28();
  sub_24381C634();
  swift_allocObject();
  *(v0 + 200) = sub_24381C624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D48, &qword_24381D720);
  sub_24381CD34();
  *(v0 + 224) = *MEMORY[0x277CFA900];
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3(v2);

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_2437FD884()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FD97C()
{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_21();
    v8(v7);
    v9 = OUTLINED_FUNCTION_52();
    v10(v9);
    (*(v5 + 104))(v3, *MEMORY[0x277CFA908], v4);
    sub_24381C924();
    OUTLINED_FUNCTION_0();
    sub_2437FF8F0(v11, v12, MEMORY[0x277CFA918]);
    sub_24381CA74();
    if (!v1)
    {
      v22 = OUTLINED_FUNCTION_27();
      v23(v22);

      OUTLINED_FUNCTION_12();
      goto LABEL_10;
    }

    (*(v2[15] + 8))(v2[16], v2[14]);

LABEL_9:
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_12();
LABEL_10:
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = OUTLINED_FUNCTION_51();
  v16(v15);
  sub_2437FF8F0(&qword_27ED92D88, MEMORY[0x277CFA880], MEMORY[0x277CFA888]);
  v17 = sub_24381C614();
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v19 = v2[13];
    v21 = v2[10];
    v20 = v2[11];

    (*(v20 + 8))(v19, v21);
    v28 = OUTLINED_FUNCTION_39();
    v29(v28);
    (*(v5 + 8))(v42, v0);
    goto LABEL_9;
  }

  v24 = OUTLINED_FUNCTION_23(v17, v18);
  v25(v24);
  OUTLINED_FUNCTION_39();
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v26, v27, MEMORY[0x277CFA918]);
  sub_24381CA74();
  v32 = OUTLINED_FUNCTION_56();
  v33(v32);
  v34 = OUTLINED_FUNCTION_6();
  v35(v34);
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_17(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_3(v37);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822005A8](v39);
}

uint64_t sub_2437FDD04()
{

  v0 = OUTLINED_FUNCTION_6();
  v1(v0);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_12();

  return v2();
}

uint64_t sub_2437FDDE4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_41(v1, v2, v3);
  v4 = sub_24381C934();
  v0[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_48();
  v0[9] = swift_task_alloc();
  v6 = sub_24381C724();
  v0[10] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_48();
  v0[13] = swift_task_alloc();
  v8 = sub_24381C944();
  v0[14] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_48();
  v0[17] = swift_task_alloc();
  v10 = sub_24381C8E4();
  v0[18] = v10;
  OUTLINED_FUNCTION_1(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_32();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D90, &qword_24381D750);
  OUTLINED_FUNCTION_38(v12);
  v0[21] = OUTLINED_FUNCTION_32();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D98, &qword_24381D758);
  v0[22] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[23] = v14;
  v0[24] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2437FE014()
{
  OUTLINED_FUNCTION_28();
  sub_24381C634();
  swift_allocObject();
  *(v0 + 200) = sub_24381C624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D38, &qword_24381D710);
  sub_24381CD34();
  *(v0 + 224) = *MEMORY[0x277CFA900];
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3(v2);

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_2437FE0F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FE1F0()
{
  OUTLINED_FUNCTION_53();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_21();
    v8(v7);
    v9 = OUTLINED_FUNCTION_52();
    v10(v9);
    (*(v5 + 104))(v3, *MEMORY[0x277CFA908], v4);
    sub_24381C924();
    OUTLINED_FUNCTION_0();
    sub_2437FF8F0(v11, v12, MEMORY[0x277CFA918]);
    sub_24381CA74();
    if (!v1)
    {
      v22 = OUTLINED_FUNCTION_27();
      v23(v22);

      OUTLINED_FUNCTION_12();
      goto LABEL_10;
    }

    (*(v2[15] + 8))(v2[16], v2[14]);

LABEL_9:
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_12();
LABEL_10:
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = OUTLINED_FUNCTION_51();
  v16(v15);
  sub_2437FF8F0(&qword_27ED92DA0, MEMORY[0x277CFA8D0], MEMORY[0x277CFA8D8]);
  v17 = sub_24381C614();
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v19 = v2[13];
    v21 = v2[10];
    v20 = v2[11];

    (*(v20 + 8))(v19, v21);
    v28 = OUTLINED_FUNCTION_39();
    v29(v28);
    (*(v5 + 8))(v42, v0);
    goto LABEL_9;
  }

  v24 = OUTLINED_FUNCTION_23(v17, v18);
  v25(v24);
  OUTLINED_FUNCTION_39();
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v26, v27, MEMORY[0x277CFA918]);
  sub_24381CA74();
  v32 = OUTLINED_FUNCTION_56();
  v33(v32);
  v34 = OUTLINED_FUNCTION_6();
  v35(v34);
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_17(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_3(v37);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822005A8](v39);
}

uint64_t sub_2437FE578()
{
  OUTLINED_FUNCTION_13();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  OUTLINED_FUNCTION_41(v5, v6, v7);
  v8 = sub_24381C6E4();
  v1[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_32();
  v10 = sub_24381C894();
  v1[13] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C8D4();
  v1[16] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[17] = v13;
  v1[18] = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v14);
}

void *sub_2437FE6BC()
{
  OUTLINED_FUNCTION_54();
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4(v3);
  if (v5 != *MEMORY[0x277CFA898] && v5 != *MEMORY[0x277CFA8A0])
  {
    return OUTLINED_FUNCTION_35();
  }

  v7 = v0[18];
  v8 = (*(v0[17] + 96))(v7, v0[16]);
  if (*(*v7 + 16))
  {
    v9 = v0[9];
    v10 = OUTLINED_FUNCTION_36();
    v11(v10);

    v0[19] = sub_24381C814();
    v0[20] = v12;
    sub_24381C844();
    v13 = *(v9 + 16);
    v0[21] = v13;
    v14 = (*v13 + 136) & 0xFFFFFFFFFFFFLL | 0x1068000000000000;
    v0[22] = *(*v13 + 136);
    v0[23] = v14;
    v8 = sub_2437FE83C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2437FE83C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_37();
  v9 = v8[22];
  v10 = v8[19];
  type metadata accessor for Downloader();
  v11 = OUTLINED_FUNCTION_47();
  v9(v11);
  v8[24] = v10;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2437FE8F8()
{
  OUTLINED_FUNCTION_13();
  *(v0 + 200) = *(v0 + 16);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2437FE994;

  return sub_2438152B0();
}

uint64_t sub_2437FE994()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2437FEA8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_37();

  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  v10 = OUTLINED_FUNCTION_57();
  v11(v10);

  OUTLINED_FUNCTION_12();

  return v12();
}

uint64_t sub_2437FEB50()
{
  OUTLINED_FUNCTION_28();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = OUTLINED_FUNCTION_6();
  v2(v1);

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_2437FEBF8()
{
  OUTLINED_FUNCTION_54();

  v0 = OUTLINED_FUNCTION_26();
  v1(v0);
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t sub_2437FECB4(uint64_t a1)
{
  v2 = sub_24381C934();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v8 = v7 - v6;
  v9 = sub_24381C724();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v15 = v14 - v13;
  v16 = sub_24381C944();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_42();
  v22 = v21 - v20;
  (*(v11 + 16))(v15, a1, v9);
  (*(v4 + 104))(v8, *MEMORY[0x277CFA8F8], v2);
  sub_24381C924();
  OUTLINED_FUNCTION_0();
  sub_2437FF8F0(v23, v24, MEMORY[0x277CFA918]);
  sub_24381CA74();
  return (*(v18 + 8))(v22, v16);
}

uint64_t sub_2437FEF04()
{
  type metadata accessor for Dispatcher();
  v0 = swift_allocObject();
  type metadata accessor for ProcessorFactory();
  result = sub_24381AD88();
  *(v0 + 16) = result;
  qword_27ED93248 = v0;
  return result;
}

uint64_t sub_2437FEF50()
{
  v0 = swift_allocObject();
  type metadata accessor for ProcessorFactory();
  *(v0 + 16) = sub_24381AD88();
  return v0;
}

uint64_t static Dispatcher.shared.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_24(&_MergedGlobals);
  }
}

uint64_t sub_2437FF044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
}

unint64_t sub_2437FF074()
{
  result = qword_27ED931B0[0];
  if (!qword_27ED931B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED931B0);
  }

  return result;
}

uint64_t Dispatcher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2437FF168(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2437FF1A8(uint64_t result, int a2, int a3)
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

uint64_t sub_2437FF264()
{
  v1 = sub_24381C914();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 32, v4 | 7);
}

uint64_t sub_2437FF338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_37();
  v9 = sub_24381C914();
  OUTLINED_FUNCTION_1(v9);
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v10[1] = sub_2437FB6F4;

  return sub_2437FB61C();
}

uint64_t sub_2437FF45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437FF4F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2437FF5EC;

  return v6(a1);
}

uint64_t sub_2437FF5EC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_2437FF6D0()
{
  OUTLINED_FUNCTION_28();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31(v1);

  return v4(v3);
}

uint64_t sub_2437FF768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2437FF7A0()
{
  OUTLINED_FUNCTION_28();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31(v1);

  return v4(v3);
}

uint64_t sub_2437FF838(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2437FF890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2437FF8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2437FF948(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437FF968(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_27ED92DA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED92DA8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return sub_24381C8F4();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return sub_24381C8F4();
}

void *OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *v3 = a1;
  v3[1] = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_24381CEF4();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_2437FF838(v1, v0);
}

uint64_t OUTLINED_FUNCTION_50()
{
}

uint64_t sub_2437FFFB4()
{
  v0 = swift_allocObject();
  sub_2437FFFEC();
  return v0;
}

void *sub_2437FFFEC()
{
  v0[2] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
  v0[4] = sub_24381CB24();
  return v0;
}

id sub_243800058(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = [v3 lock];
  v5 = *(v1 + 24);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v5 + 1;
    sub_2438000FC(a1, v6);
    swift_beginAccess();
    sub_243800160(v6, v5);
    swift_endAccess();
    [v3 unlock];
    return v5;
  }

  return result;
}

uint64_t sub_2438000FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243800160(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_243800490(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_2438005CC(v11, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
  }

  else
  {
    sub_2438003D4(a1);
    v6 = sub_243800504(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
      sub_24381CEC4();
      sub_243800490((*(v10 + 56) + 40 * v8), v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
      sub_24381CEE4();
      *v2 = v10;
    }

    else
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
    }

    return sub_2438003D4(v11);
  }

  return result;
}

id sub_24380029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = [v5 lock];
  OUTLINED_FUNCTION_0_0(v6, v7, v8, v9, v10);
  sub_243800368(a1, *(v2 + 32), &v12);
  if (v13)
  {
    sub_243800490(&v12, a2);
    swift_endAccess();
  }

  else
  {
    sub_2438003D4(&v12);
    swift_endAccess();
    sub_24380043C();
    swift_allocError();
    swift_willThrow();
  }

  return [v5 unlock];
}

double sub_243800368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_243800504(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_2438000FC(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2438003D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB8, &qword_24381DE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24380043C()
{
  result = qword_27ED92DC0;
  if (!qword_27ED92DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92DC0);
  }

  return result;
}

uint64_t sub_243800490(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2438004D0()
{
  sub_2438004A8();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_243800504(uint64_t a1)
{
  v2 = sub_24381CFB4();

  return sub_243800548(a1, v2);
}

unint64_t sub_243800548(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_2438005CC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_243800504(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_243800504(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 40 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_243800490(a1, v15);
  }

  else
  {

    return sub_243800700(v10, a2, a1, v14);
  }
}

uint64_t sub_243800700(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_243800490(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_2438007D8(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  v3 = OUTLINED_FUNCTION_2_0();
  v4(v3);
  sub_243819CF4(a1);
  v5 = OUTLINED_FUNCTION_1_0();
  v6(v5);
  return v2;
}

uint64_t sub_24380091C()
{
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon22DownloadRequestContext_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_243800988()
{
  v0 = sub_243819D40();
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon22DownloadRequestContext_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DownloadRequestContext(uint64_t a1)
{
  result = qword_27ED93250;
  if (!qword_27ED93250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243800A84(uint64_t a1)
{
  sub_243800B14(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243800B14(uint64_t a1)
{
  if (!qword_27ED92DD8)
  {
    type metadata accessor for Downloader.AssetDownloadResult(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v1 = sub_24381CD24();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED92DD8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_243800C10()
{
  OUTLINED_FUNCTION_36_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_76();
  v35 = v2;
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - v4;
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v41 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_58_0();
    sub_24380A00C(v7, v8, v9);
    v10 = v41;
    v12 = sub_24380AF24(v5);
    v13 = v5 + 64;
    v14 = v6 - 1;
    v32 = v5 + 64;
    v33 = v5;
    v15 = v34;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v5 + 32))
      {
        if ((*(v13 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_16;
        }

        if (v11 != *(v5 + 36))
        {
          goto LABEL_17;
        }

        v38 = v11;
        v39 = v12 >> 6;
        v37 = v14;
        v40 = v10;
        v16 = v36;
        v17 = *(v36 + 48);
        v18 = *(v5 + 56);
        v19 = *(*(v5 + 48) + 8 * v12);
        v20 = sub_24381CA14();
        OUTLINED_FUNCTION_9();
        v22 = v21;
        (*(v21 + 16))(&v15[v17], v18 + *(v23 + 72) * v12, v20);
        v24 = v35;
        *v35 = v19;
        v25 = *(v16 + 48);
        v10 = v40;
        (*(v22 + 32))(v24 + v25, &v15[v17], v20);
        sub_243800EC8(v19);
        v27 = v26;
        sub_24380B1F4(v24, &qword_27ED92EC0, &qword_24381D9E0);
        v41 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = OUTLINED_FUNCTION_28_0(v28);
          sub_24380A00C(v31, v29 + 1, 1);
          v10 = v41;
        }

        *(v10 + 16) = v29 + 1;
        *(v10 + 8 * v29 + 32) = v27;
        v5 = v33;
        if (v12 >= -(-1 << *(v33 + 32)))
        {
          goto LABEL_18;
        }

        v13 = v32;
        if ((*(v32 + 8 * v39) & (1 << v12)) == 0)
        {
          goto LABEL_19;
        }

        if (v38 != *(v33 + 36))
        {
          goto LABEL_20;
        }

        v30 = sub_24381CE14();
        if (!v37)
        {
          goto LABEL_14;
        }

        v12 = v30;
        v11 = *(v5 + 36);
        v14 = v37 - 1;
        if (v30 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_243800EC8(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v67 = v3;
  sub_24381C9A4();
  OUTLINED_FUNCTION_9();
  v59 = v5;
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v58 = v7 - v6;
  OUTLINED_FUNCTION_60();
  v8 = sub_24381C9F4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v61 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  sub_24381CA04();
  v16 = sub_24381C9E4();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v15, v8);
  v65 = v2;
  sub_24381CA04();
  v68 = sub_24381C9D4();
  v21 = v20;
  v63 = v19;
  v64 = v8;
  v19(v15, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  v66 = xmmword_24381D830;
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v23;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v67;
  sub_24381CB24();
  v24 = sub_2438013D8(v16, v18);
  v25 = v18;
  v62 = v16;
  if (v24)
  {
LABEL_7:
    v44 = v68;
    if (sub_2438013D8(v68, v21))
    {
      sub_2437FF838(v44, v21);
      sub_2437FF838(v16, v25);
LABEL_11:
      OUTLINED_FUNCTION_33_0();
      return;
    }

    v45 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
    v46 = swift_initStackObject();
    *(v46 + 16) = v66;
    if (*MEMORY[0x277D25418])
    {
      *(v46 + 32) = sub_24381CB84();
      *(v46 + 40) = v47;
      sub_24381CA04();
      v48 = sub_24381C9D4();
      v50 = v49;
      v63(v15, v64);
      *(v46 + 48) = v48;
      *(v46 + 56) = v50;
      v51 = sub_24381CB24();
      v52 = sub_243801690(v51);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_0();
      sub_24380948C(v52, v53, 0, v54, v55);
      sub_2437FF838(v68, v45);
      sub_2437FF838(v62, v25);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v57 = v21;
  v67 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED8, &qword_24381D9F8);
  v26 = swift_initStackObject();
  *(v26 + 16) = v66;
  if (!*MEMORY[0x277D25678])
  {
    goto LABEL_13;
  }

  *(v26 + 32) = sub_24381CB84();
  *(v26 + 40) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v28 + 32) = sub_24381CB84();
  *(v28 + 40) = v29;
  v30 = v61;
  sub_24381CA04();
  v31 = sub_24381C9E4();
  v33 = v32;
  v63(v30, v64);
  *(v28 + 48) = v31;
  *(v28 + 56) = v33;
  if (*MEMORY[0x277D254F8])
  {
    *(v28 + 64) = sub_24381CB84();
    *(v28 + 72) = v34;
    v35 = v58;
    sub_24381C9C4();
    v36 = sub_24381C984();
    v38 = v37;
    (*(v59 + 8))(v35, v60);
    *(v28 + 80) = v36;
    *(v28 + 88) = v38;
    *(v26 + 48) = sub_24381CB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    v39 = sub_24381CB24();
    v40 = sub_24380143C(v39);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_0();
    sub_24380948C(v40, v41, 0, v42, v43);
    v25 = v67;
    v16 = v62;
    v21 = v57;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

BOOL sub_2438013D8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

unint64_t sub_24380143C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    swift_dynamicCast();
    sub_24380B0CC(&v22, v24);
    sub_24380B0CC(v24, v25);
    sub_24380B0CC(v25, &v23);
    result = sub_24380939C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_24380B0CC(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_24380B0CC(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_243801690(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v23 = *(*(a1 + 56) + v11);

    sub_24380AF70(v23, *(&v23 + 1));
    swift_dynamicCast();
    sub_24380B0CC(&v24, v26);
    sub_24380B0CC(v26, v27);
    sub_24380B0CC(v27, &v25);
    result = sub_24380939C(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = sub_24380B0CC(&v25, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = sub_24380B0CC(&v25, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2438018E0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v52 = a2;
  v50 = sub_24381CA14();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24381C784();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v57 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v48 = v8;
    v58 = MEMORY[0x277D84F90];
    sub_24380A194(0, v11, 0);
    v13 = v58;
    v14 = sub_24380AF24(a3);
    v17 = 0;
    v18 = a3 + 64;
    v46 = v6 + 16;
    v47 = (v6 + 8);
    v44 = a3;
    v45 = v9 + 32;
    v40 = a3 + 72;
    v41 = v11;
    v19 = v6;
    v42 = v6;
    v43 = a3 + 64;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(a3 + 32))
      {
        v20 = v14 >> 6;
        v21 = 1 << v14;
        if ((*(v18 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a3 + 36) != v15)
        {
          goto LABEL_26;
        }

        v53 = v16;
        v56 = v15;
        v54 = v17;
        v22 = v9;
        v23 = v14;
        v24 = *(a3 + 56) + *(v19 + 72) * v14;
        v9 = v48;
        a3 = v50;
        (*(v19 + 16))(v48, v24, v50);
        v51(v9);
        v55 = v4;
        if (v4)
        {
          goto LABEL_30;
        }

        (*v47)(v9, a3);
        v25 = v13;
        v58 = v13;
        v27 = *(v13 + 16);
        v26 = *(v13 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24380A194(v26 > 1, v27 + 1, 1);
          v25 = v58;
        }

        *(v25 + 16) = v27 + 1;
        v9 = v22;
        v13 = v25;
        (*(v22 + 4))(v25 + ((v22[80] + 32) & ~v22[80]) + *(v22 + 9) * v27, v57, v49);
        a3 = v44;
        v28 = 1 << *(v44 + 32);
        if (v23 >= v28)
        {
          goto LABEL_27;
        }

        v29 = v23;
        v18 = v43;
        v30 = *(v43 + 8 * v20);
        if ((v30 & v21) == 0)
        {
          goto LABEL_28;
        }

        if (*(v44 + 36) != v56)
        {
          goto LABEL_29;
        }

        v31 = v30 & (-2 << (v29 & 0x3F));
        if (v31)
        {
          v28 = __clz(__rbit64(v31)) | v29 & 0x7FFFFFFFFFFFFFC0;
          v4 = v55;
          v32 = v41;
          v19 = v42;
        }

        else
        {
          v33 = v20 << 6;
          v34 = v20 + 1;
          v32 = v41;
          v35 = (v40 + 8 * v20);
          v4 = v55;
          while (v34 < (v28 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              v38 = v42;
              sub_24380AF64(v29, v56, v53 & 1);
              v19 = v38;
              v28 = __clz(__rbit64(v36)) + v33;
              goto LABEL_19;
            }
          }

          v39 = v42;
          sub_24380AF64(v29, v56, v53 & 1);
          v19 = v39;
        }

LABEL_19:
        v17 = v54 + 1;
        if (v54 + 1 == v32)
        {
          return v13;
        }

        v16 = 0;
        v15 = *(a3 + 36);
        v14 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    (*v47)(v9, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_243801D00()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_243801D38()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93268);
  __swift_project_value_buffer(v0, qword_27ED93268);
  sub_24381C794();
  type metadata accessor for Uploader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F60, &qword_24381DA78);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_243801DDC(uint64_t a1)
{
  OUTLINED_FUNCTION_50_0();
  v2 = swift_allocObject();
  sub_243801E14(a1);
  return v2;
}

uint64_t sub_243801E14(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for Registerer();

  *(v1 + 24) = sub_24380C808(v2);
  return v1;
}

uint64_t sub_243801E68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F38, &qword_24381DA48);
    v1 = sub_24381CF14();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2438096C0(v2, 1, &v4);

  return v4;
}

void sub_243801F1C(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v61 = sub_24381C714();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_60();
  v68 = sub_24381C9A4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v67 = v12 - v11;
  OUTLINED_FUNCTION_60();
  v66 = sub_24381CA14();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v18 = v17 - v16;
  v19 = *(v2 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v59 = v4;
    v70 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_74();
    sub_24380A05C(v21, v22, v23);
    v24 = v70;
    v26 = *(v14 + 16);
    v25 = v14 + 16;
    v27 = v2 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v64 = *(v25 + 56);
    v65 = v26;
    v62 = (v25 - 8);
    v63 = (v9 + 8);
    do
    {
      v28 = v24;
      v29 = v25;
      v65(v18, v27, v66);
      sub_24381C9C4();
      v30 = sub_24381C994();
      v32 = v31;
      (*v63)(v67, v68);
      (*v62)(v18, v66);
      v24 = v28;
      v71 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_24380A05C((v33 > 1), v34 + 1, 1);
        v24 = v71;
      }

      *(v24 + 16) = v35;
      v36 = v24 + 16 * v34;
      *(v36 + 32) = v30;
      *(v36 + 40) = v32;
      v27 += v64;
      --v19;
      v25 = v29;
    }

    while (v19);
    v69 = v24;
    v20 = MEMORY[0x277D84F90];
    v4 = v59;
LABEL_9:
    v37 = OUTLINED_FUNCTION_59();
    sub_24380A02C(v37, v35, 0);
    v38 = v20;
    v39 = (v4 + 8);
    v40 = (v69 + 40);
    while (2)
    {
      v41 = *(v40 - 1);
      v42 = *v40;
      v43 = *v40 >> 62;
      v40 += 2;
      v44 = v20;
      switch(v43)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(v41), v41))
          {
            goto LABEL_27;
          }

          v45 = HIDWORD(v41) - v41;
LABEL_16:
          v48 = OUTLINED_FUNCTION_37_0();
          sub_24380AF70(v48, v49);
          if (v45)
          {
LABEL_17:
            if (v45 < 1)
            {
              v44 = MEMORY[0x277D84F90];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
              v44 = swift_allocObject();
              v50 = _swift_stdlib_malloc_size(v44);
              v44[2] = v45;
              v44[3] = 2 * v50 - 64;
            }

            v51 = sub_24381C6F4();
            (*v39)(v60, v61);
            if (v51 != v45)
            {
              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              JUMPOUT(0x24380238CLL);
            }
          }

          else
          {
LABEL_12:
            v44 = MEMORY[0x277D84F90];
          }

LABEL_21:
          v52 = v44[2];
          v53 = swift_slowAlloc();
          memcpy(v53, v44 + 4, v52);
          v54 = OUTLINED_FUNCTION_37_0();
          sub_2437FF838(v54, v55);

          v57 = v38[2];
          v56 = v38[3];
          if (v57 >= v56 >> 1)
          {
            v58 = OUTLINED_FUNCTION_28_0(v56);
            sub_24380A02C(v58, v57 + 1, 1);
          }

          v38[2] = v57 + 1;
          v38[v57 + 4] = v53;
          --v35;
          v20 = MEMORY[0x277D84F90];
          if (!v35)
          {
            goto LABEL_24;
          }

          continue;
        case 2uLL:
          v47 = *(v41 + 16);
          v46 = *(v41 + 24);
          v45 = v46 - v47;
          if (!__OFSUB__(v46, v47))
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        case 3uLL:
          goto LABEL_21;
        default:
          v45 = BYTE6(v42);
          if (!BYTE6(v42))
          {
            goto LABEL_12;
          }

          goto LABEL_17;
      }
    }
  }

  v35 = *(MEMORY[0x277D84F90] + 16);
  if (v35)
  {
    v69 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_24:

  OUTLINED_FUNCTION_33_0();
}

void *sub_24380239C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24380877C(*(a1 + 16), 0);
  v4 = sub_24380ACC0(&v6, v3 + 4, v2, a1);
  sub_24380B0C4(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_24380242C(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  sub_24381CBA4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_60();
  v4 = sub_24381C754();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v10 = v9 - v8;
  v11 = *(v2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v48 = MEMORY[0x277D84F90];
    v13 = OUTLINED_FUNCTION_59();
    sub_24380A0AC(v13, v11, 0);
    v14 = v48;
    v15 = v2 + 32;
    v16 = (v6 + 8);
    do
    {
      sub_2438000FC(v15, v47);
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      sub_24381C764();
      v17 = sub_24381C734();
      v19 = v18;
      (*v16)(v10, v4);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v48 = v14;
      v21 = v14[2];
      v20 = v14[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_24380A0AC((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v14 = v48;
      }

      v14[2] = v22;
      v23 = &v14[2 * v21];
      v23[4] = v17;
      v23[5] = v19;
      v15 += 40;
      --v11;
    }

    while (v11);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (!v22)
    {
LABEL_21:

      OUTLINED_FUNCTION_33_0();
      return;
    }

    v14 = MEMORY[0x277D84F90];
  }

  v46 = v22;
  v48 = v12;
  v24 = OUTLINED_FUNCTION_59();
  sub_24380A07C(v24, v25, 0);
  v26 = 0;
  v27 = v48;
  v28 = v14 + 5;
  while (v26 < v14[2])
  {
    v29 = *v28;
    v47[0] = *(v28 - 1);
    v47[1] = v29;
    sub_24381CB94();
    sub_24380B0DC();
    v30 = sub_24381CDE4();
    v31 = OUTLINED_FUNCTION_57_0();
    v32(v31);
    if (v30)
    {
      v33 = *(v30 + 16);
      v34 = swift_slowAlloc();
      memcpy(v34, (v30 + 32), v33);
    }

    else
    {
      if (_MergedGlobals_0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v35 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v35, qword_27ED93268);

      v36 = sub_24381CA44();
      v37 = sub_24381CD84();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_42_0();
        v47[0] = OUTLINED_FUNCTION_63();
        *v38 = 136315138;
        v39 = OUTLINED_FUNCTION_67();
        *(v38 + 4) = sub_243808908(v39, v40, v41);
        _os_log_impl(&dword_2437FA000, v36, v37, "unable to convert token %s to C string.", v38, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_35_0();
      }

      v34 = 0;
    }

    v48 = v27;
    v43 = v27[2];
    v42 = v27[3];
    v44 = v46;
    if (v43 >= v42 >> 1)
    {
      v45 = OUTLINED_FUNCTION_28_0(v42);
      sub_24380A07C(v45, v43 + 1, 1);
      v44 = v46;
      v27 = v48;
    }

    ++v26;
    v27[2] = v43 + 1;
    v27[v43 + 4] = v34;
    v28 += 2;
    if (v44 == v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_243802854(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_0();
  if (v6)
  {
    if (v2 && (objc_opt_self(), OUTLINED_FUNCTION_45_0(), swift_dynamicCastObjCClass()))
    {

      sub_24381CB04();
    }

    else
    {
    }

    v8 = sub_24380043C();
    v20 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v9 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v9, qword_27ED93268);
    v10 = sub_24381CA44();
    v11 = sub_24381CD84();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_79(&dword_2437FA000, v12, v13, "mmcs engine returns nil results");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v14 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v14, qword_27ED93268);
    v19 = sub_24381CA44();
    v15 = sub_24381CD84();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = OUTLINED_FUNCTION_42_0();
      *v16 = 134349056;
      *(v16 + 4) = v4;
      _os_log_impl(&dword_2437FA000, v19, v15, "context for uploading asset with tracking number %{public}llu can not be loaded", v16, 0xCu);
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }
}

double sub_2438033D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_24380939C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_243808E78(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_243803434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v5 = OUTLINED_FUNCTION_25_0();
  sub_243802854(v5);
}

void sub_2438034A4(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F68, &qword_24381DA80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_0();
  if (v6)
  {
    if (v2 && (objc_opt_self(), OUTLINED_FUNCTION_45_0(), swift_dynamicCastObjCClass()))
    {

      sub_24381CB04();
    }

    else
    {
    }

    v8 = sub_24380043C();
    v20 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v9 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v9, qword_27ED93268);
    v10 = sub_24381CA44();
    v11 = sub_24381CD84();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_79(&dword_2437FA000, v12, v13, "mmcs engine returns nil results");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v14 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v14, qword_27ED93268);
    v19 = sub_24381CA44();
    v15 = sub_24381CD84();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = OUTLINED_FUNCTION_42_0();
      *v16 = 134349056;
      *(v16 + 4) = v4;
      _os_log_impl(&dword_2437FA000, v19, v15, "context for uploading asset with tracking number %{public}llu can not be loaded", v16, 0xCu);
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_33_0();
  }
}

void sub_243803E44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v4 = OUTLINED_FUNCTION_25_0();
  sub_2438034A4(v4);
}

uint64_t sub_243803EA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_24380AF24(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_24380AC04(v7, result, v5, 0, a1);
    return sub_243800490(v7, a2 + 8);
  }

  return result;
}

uint64_t sub_243803F48()
{
  OUTLINED_FUNCTION_13();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[25] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  OUTLINED_FUNCTION_38(v5);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = sub_24381CA14();
  v1[28] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[29] = v7;
  v1[30] = OUTLINED_FUNCTION_32();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E68, &unk_24381DE20);
  OUTLINED_FUNCTION_38(v8);
  v1[31] = OUTLINED_FUNCTION_32();
  v9 = sub_24381C754();
  v1[32] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[33] = v10;
  v1[34] = OUTLINED_FUNCTION_32();
  v11 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2438040D0()
{
  v97 = v0;
  *(v0 + 280) = *(*(*(*(v0 + 192) + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

  v2 = sub_24380239C(v1);
  v3 = v2[2];
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_74();
    v7 = sub_24380A174(v4, v5, v6);
    v8 = 4;
    v9 = *&v96[0];
    v10 = v92;
    while (1)
    {
      v11 = v2[v8];
      if (v11 < 0)
      {
        break;
      }

      *&v96[0] = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_24380A174((v12 > 1), v13 + 1, 1);
        v10 = v92;
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v11;
      ++v8;
      if (!--v3)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = v92;
LABEL_9:
  v90 = v10 + 136;
  *(v10 + 136) = v9;
  v14 = *(v9 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v95 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_74();
    v7 = sub_24380A154(v16, v17, v18);
    v19 = 0;
    v15 = v95;
    do
    {
      if (v19 >= *(v9 + 16))
      {
        goto LABEL_51;
      }

      v20 = v9 + 8 * v19;
      v7 = *(v20 + 32);
      if (v7 < 0)
      {
        goto LABEL_52;
      }

      *&v96[0] = *(v20 + 32);
      v7 = sub_24380029C(v7, v96 + 8);
      v22 = *(v95 + 16);
      v21 = *(v95 + 24);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_24380A154((v21 > 1), v22 + 1, 1);
      }

      ++v19;
      *(v95 + 16) = v22 + 1;
      v23 = (v95 + 48 * v22);
      v24 = v96[0];
      v25 = v96[2];
      v23[3] = v96[1];
      v23[4] = v25;
      v23[2] = v24;
    }

    while (v14 != v19);

    v10 = v92;
  }

  v26 = sub_243801E68(v15);
  *(v10 + 288) = v26;
  sub_243803EA0(v26, (v10 + 16));
  v27 = *(v10 + 256);
  if (!*(v10 + 48))
  {

    sub_24380B1F4(v10 + 16, &qword_27ED92E70, &qword_24381D990);
    v33 = OUTLINED_FUNCTION_72();
    __swift_storeEnumTagSinglePayload(v33, v34, 1, v27);
LABEL_21:
    sub_24380B1F4(*(v10 + 248), &qword_27ED92E68, &unk_24381DE20);
    v35 = sub_24380043C();
    OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v35);
    swift_willThrow();

    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  __swift_project_boxed_opaque_existential_1((v10 + 24), *(v10 + 48));
  OUTLINED_FUNCTION_37_0();
  sub_24381C764();
  v10 = v92;
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  __swift_destroy_boxed_opaque_existential_1((v92 + 24));
  v31 = OUTLINED_FUNCTION_72();
  if (__swift_getEnumTagSinglePayload(v31, v32, v27) == 1)
  {

    goto LABEL_21;
  }

  (*(*(v92 + 264) + 32))(*(v92 + 272), *(v92 + 248), *(v92 + 256));
  v38 = *(v9 + 16);
  if (!v38)
  {
    v63 = MEMORY[0x277D84F90];
    sub_243801F1C(MEMORY[0x277D84F90]);
    v67 = v66;

    *(v92 + 144) = v67;
    v61 = v92;
    v57 = v92 + 144;
LABEL_40:
    v68 = v26;
    v69 = (v61 + 152);
    v70 = v61 + 160;
    sub_24380242C(v63);
    v72 = v71;

    *v69 = v72;
    v73 = MEMORY[0x277D84F90];
    if (v38)
    {
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_58_0();
      sub_24380A0CC(v74, v75, v76);
      v73 = *&v96[0];
      v77 = *(*&v96[0] + 16);
      v78 = v92;
      do
      {
        *&v96[0] = v73;
        v79 = *(v73 + 24);
        if (v77 >= v79 >> 1)
        {
          sub_24380A0CC((v79 > 1), v77 + 1, 1);
          v78 = v92;
          v73 = *&v96[0];
        }

        *(v73 + 16) = v77 + 1;
        *(v73 + 4 * v77++ + 32) = 1;
        --v38;
      }

      while (v38);
    }

    else
    {
      v78 = v92;
    }

    v80 = *(v78 + 272);
    v81 = *(v78 + 216);
    v82 = *(v78 + 176);
    *(v78 + 160) = v73;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
    *(v78 + 296) = v83;
    v94 = *(v78 + 184);
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v83);
    v84 = v78;
    v85 = swift_task_alloc();
    *(v84 + 304) = v85;
    v85[1].i64[0] = v81;
    v85[1].i64[1] = v68;
    v85[2].i64[0] = v57;
    v85[2].i64[1] = v69;
    v85[3] = vextq_s8(v94, v94, 8uLL);
    v85[4].i64[0] = v80;
    v85[4].i64[1] = v82;
    v85[5].i64[0] = v90;
    v85[5].i64[1] = v70;
    v86 = swift_task_alloc();
    *(v84 + 312) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E78, &qword_24381D998);
    *v86 = v84;
    v86[1] = sub_2438048C4;
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77();

    return MEMORY[0x2822008A0](v7);
  }

  v89 = v26;
  v39 = *(v92 + 232);
  v40 = *(v92 + 176);
  OUTLINED_FUNCTION_21_0();
  v91 = v38;
  OUTLINED_FUNCTION_58_0();
  sub_24380A10C(v41, v42, v43);
  v44 = v92;
  v45 = 0;
  v46 = *&v96[0];
  v93 = v9 + 32;
  while (1)
  {
    v7 = *(v93 + 8 * v45);
    if (v7 < 0)
    {
      break;
    }

    if (!*(v40 + 16))
    {
      goto LABEL_54;
    }

    v7 = sub_243800504(v7);
    if ((v47 & 1) == 0)
    {
      goto LABEL_55;
    }

    v48 = v40;
    v49 = *(v39 + 72);
    (*(v39 + 16))(*(v44 + 240), *(v40 + 56) + v49 * v7, *(v44 + 224));
    v51 = *(*&v96[0] + 16);
    v50 = *(*&v96[0] + 24);
    if (v51 >= v50 >> 1)
    {
      v54 = OUTLINED_FUNCTION_28_0(v50);
      sub_24380A10C(v54, v51 + 1, 1);
      v44 = v92;
    }

    v52 = *(v44 + 240);
    v53 = *(v44 + 224);
    ++v45;
    *(*&v96[0] + 16) = v51 + 1;
    (*(v39 + 32))(*&v96[0] + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v51 * v49, v52, v53);
    v40 = v48;
    if (v91 == v45)
    {
      sub_243801F1C(*&v96[0]);
      v56 = v55;

      v57 = v92 + 144;
      *(v92 + 144) = v56;
      OUTLINED_FUNCTION_21_0();
      v38 = v91;
      OUTLINED_FUNCTION_58_0();
      v7 = sub_24380A0EC(v58, v59, v60);
      v61 = v92;
      v62 = 0;
      v63 = *&v96[0];
      while (v62 < *(v9 + 16))
      {
        v7 = *(v93 + 8 * v62);
        if (v7 < 0)
        {
          goto LABEL_57;
        }

        sub_24380029C(v7, v61 + 64);
        *&v96[0] = v46;
        v65 = *(v46 + 16);
        v64 = *(v46 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_24380A0EC((v64 > 1), v65 + 1, 1);
        }

        ++v62;
        *(v46 + 16) = v65 + 1;
        v61 = v92;
        v7 = sub_243800490((v92 + 64), v46 + 40 * v65 + 32);
        if (v91 == v62)
        {
          v26 = v89;
          goto LABEL_40;
        }
      }

      goto LABEL_56;
    }
  }

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
  return MEMORY[0x2822008A0](v7);
}

uint64_t sub_2438048C4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2438049C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = v16[37];
  v40 = v16[14];
  v41 = v16[13];
  v38 = v16[16];
  v39 = v16[15];
  sub_24380B130(v16[27], v16[26], &qword_27ED92E60, &unk_24381D980);
  v18 = OUTLINED_FUNCTION_72();
  result = __swift_getEnumTagSinglePayload(v18, v19, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = v16[37];
    v22 = v16[34];
    v23 = v16[32];
    v24 = v16[33];
    v37 = v16[30];
    v25 = v16[26];
    v26 = v16[27];
    v27 = v16[21];

    OUTLINED_FUNCTION_15_0();
    (*(v28 + 32))(v27, v25, v21);
    sub_24380B1F4(v26, &qword_27ED92E60, &unk_24381D980);

    (*(v24 + 8))(v22, v23);

    OUTLINED_FUNCTION_43();

    return v34(v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, a14, a15, a16);
  }

  return result;
}

uint64_t sub_243804B48()
{
  OUTLINED_FUNCTION_54();
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[27];

  sub_24380B1F4(v4, &qword_27ED92E60, &unk_24381D980);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_78();

  OUTLINED_FUNCTION_12();

  return v5();
}

void sub_243804C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_0();
  v50 = v22;
  v51 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v52 = v32;
  v34 = v33;
  v49 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E80, &unk_24381D9A0);
  OUTLINED_FUNCTION_9();
  v37 = v36;
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v49 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  OUTLINED_FUNCTION_38(v41);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v49 - v43;
  v53 = v31;
  v54 = v34;
  v55 = v29;
  v56 = v27;
  v57 = v25;
  v58 = v50;
  v59 = v51;
  v60 = v49;
  v61 = a22;
  (*(v37 + 104))(v40, *MEMORY[0x277D858A0], v35);
  sub_24381CD54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  sub_24380B054(v44, v52);
  OUTLINED_FUNCTION_33_0();
}

void sub_243804DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  OUTLINED_FUNCTION_36_0();
  v66 = v24;
  v65 = v25;
  v64 = v26;
  v63[5] = v27;
  v63[4] = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_9();
  v35 = v34;
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v36);
  v38 = v63 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  OUTLINED_FUNCTION_38(v39);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52_0();
  type metadata accessor for UploadRequestContext(0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  OUTLINED_FUNCTION_0_1();
  (*(v42 + 16))(v23, v30, v41);
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  v46 = *(v35 + 16);
  v63[2] = v32;
  v63[1] = v33;
  v46(v38, v32, v33);

  v48 = sub_243819F10(v47, v23, v38);
  v64 = *(*(v64 + 16) + 32);
  v65 = sub_24381C6A4();
  sub_24381C744();
  v49 = sub_24381CB74();

  v66 = v48;
  v63[3] = *(v48 + 16);
  type metadata accessor for Uploader.OptionsBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = a21;
  *(inited + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_24381D840;
  if (*MEMORY[0x277D25598])
  {
    *(v51 + 32) = sub_24381CB84();
    *(v51 + 40) = v52;
    sub_243800C10();
    v54 = v53;
    *(v51 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
    *(v51 + 48) = v54;
    v55 = sub_24381A61C();
    v57 = *v55;
    v56 = v55[1];
    *(v51 + 80) = v57;
    *(v51 + 88) = v56;
    LOBYTE(v57) = *(inited + 24);
    *(v51 + 120) = MEMORY[0x277D839B0];
    *(v51 + 96) = v57;

    sub_24381CB24();
    swift_setDeallocating();

    v58 = sub_24381CAF4();

    sub_243808140(0, &qword_27ED92EA8, &qword_24381DE50);

    sub_243808140(0, &qword_27ED92EA0, &unk_24381D9C0);
    v59 = v65;
    LODWORD(v54) = MMCSPutItems();

    if (!v54)
    {
      v60 = sub_24380043C();
      v67 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v60);
      sub_24381CD14();
    }

    v61 = OUTLINED_FUNCTION_56_0();
    sub_243805244(v61, v62);

    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    __break(1u);
  }
}

void *sub_243805244(void *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      if (*(v3 + v5))
      {
        OUTLINED_FUNCTION_35_0();
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v6 = *a2;
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      if (*(v6 + v8))
      {
        OUTLINED_FUNCTION_35_0();
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2438052F8()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE8, &unk_24381D8E0);
  v1[6] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_32();
  v6 = sub_24381C754();
  v1[9] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_32();
  v8 = sub_24381C6E4();
  v1[12] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_32();
  v10 = sub_24381CCD4();
  v1[15] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_32();
  v12 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v12);
}

void sub_2438054B8()
{
  v26 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = sub_24381CA64();
  v0[18] = __swift_project_value_buffer(v1, qword_27ED93268);

  v2 = sub_24381CA44();
  v3 = sub_24381CD94();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_24381C804();
    v10 = MEMORY[0x245D40CE0](v7, v9);
    v12 = sub_243808908(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    sub_24381CCE4();
    sub_24380B2B0(&qword_27ED92DF0, MEMORY[0x277D85720]);
    sub_24381CF24();
    (*(v5 + 8))(v4, v6);
    v13 = OUTLINED_FUNCTION_67();
    v16 = sub_243808908(v13, v14, v15);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2437FA000, v2, v3, "processing stream %s with priority %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_14_0();
  }

  if (*(v0[3] + 16))
  {
    sub_24381C804();
    sub_24381C7C4();
    sub_24381C7A4();

    v17 = sub_24381CA44();
    v18 = sub_24381CD94();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_42_0();
      v25 = OUTLINED_FUNCTION_63();
      *v19 = 136315138;
      v20 = OUTLINED_FUNCTION_56_0();
      v21 = MEMORY[0x245D40CE0](v20);
      v23 = sub_243808908(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2437FA000, v17, v18, "start registering assets with requests %s", v19, 0xCu);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_27_0();
    }

    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_24380584C;

    sub_24380DA54();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24380584C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_243805950()
{
  v24 = v0;

  v1 = sub_24381CA44();
  v2 = sub_24381CD94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_42_0();
    v4 = OUTLINED_FUNCTION_63();
    v23 = v4;
    *v3 = 136315138;
    sub_24381CA14();
    v5 = sub_24381CB14();
    v7 = sub_243808908(v5, v6, &v23);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2437FA000, v1, v2, "start transfer assets %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35_0();
  }

  v8 = v0[20];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  v22 = v0[12];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[5];
  v19 = v0[8];
  v20 = v0[6];
  v15 = v0[4];
  v21 = v0[9];
  v16 = swift_task_alloc();
  v16[2] = v15;
  v16[3] = v8;
  v16[4] = v9;
  v16[5] = v11;
  v16[6] = v14;
  sub_24381C8C4();
  (*(v13 + 104))(v19, *MEMORY[0x277D858A0], v20);
  sub_24381CD54();

  (*(v12 + 8))(v11, v21);
  (*(v10 + 8))(v9, v22);

  OUTLINED_FUNCTION_12();

  return v17();
}

uint64_t sub_243805BA4()
{
  OUTLINED_FUNCTION_54();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_12();

  return v4();
}

void sub_243805C68(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v41 = v1;
  v42 = v2;
  v36 = v3;
  v37 = v4;
  v39 = v5;
  v40 = v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  v38 = *(v9 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v10);
  v43 = &v31 - v11;
  OUTLINED_FUNCTION_60();
  v12 = sub_24381C754();
  v33 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v34 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24381C6E4();
  v32 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  OUTLINED_FUNCTION_38(v19);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v20);
  v35 = &v31 - v21;
  sub_24381CCD4();
  v22 = OUTLINED_FUNCTION_72();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  (*(v16 + 16))(v18, v36, v15);
  (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v12);
  v31 = v8;
  (*(v8 + 16))(v43, v39, v44);
  v25 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v26 = (v17 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v27 = (v14 + *(v8 + 80) + v26) & ~*(v8 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v41;
  *(v29 + 4) = v40;
  *(v29 + 5) = v30;
  (*(v16 + 32))(&v29[v25], v18, v32);
  (*(v13 + 32))(&v29[v26], v34, v33);
  (*(v31 + 32))(&v29[v27], v43, v44);
  *&v29[v28] = v42;

  sub_2437FCB64(0, 0, v35, &unk_24381D908, v29);

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_243805FD4()
{
  OUTLINED_FUNCTION_28();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = sub_24381C954();
  v0[16] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_32();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E08, &qword_24381D918);
  OUTLINED_FUNCTION_38(v6);
  v0[19] = OUTLINED_FUNCTION_32();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E10, &qword_24381D920);
  v0[20] = v7;
  OUTLINED_FUNCTION_38(v7);
  v0[21] = OUTLINED_FUNCTION_32();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E18, &qword_24381D928);
  v0[22] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_32();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E20, &qword_24381D930);
  v0[25] = v10;
  OUTLINED_FUNCTION_1(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C8C4();
  v0[28] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_32();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E28, &qword_24381D938);
  v0[31] = v14;
  OUTLINED_FUNCTION_1(v14);
  v0[32] = v15;
  v0[33] = OUTLINED_FUNCTION_32();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E30, &qword_24381D940);
  v0[34] = v16;
  OUTLINED_FUNCTION_1(v16);
  v0[35] = v17;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[38] = v18;
  *v18 = v19;
  v18[1] = sub_2438062F8;

  return sub_243803F48();
}

uint64_t sub_2438062F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  v2[39] = v4;
  v2[40] = v5;
  v2[41] = v6;
  v2[42] = v7;
  v2[43] = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_243806404()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v27 = *(v0 + 264);
  v28 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = swift_task_alloc();
  v8 = *(v0 + 312);
  v9 = *(v0 + 328);
  *(v7 + 16) = v5;
  *(v7 + 40) = v9;
  *(v7 + 24) = v8;
  v10 = sub_2438018E0(sub_243809244, v7, v6);

  *v2 = v10;
  v11 = *MEMORY[0x277CFA860];
  v12 = *(v4 + 104);
  *(v0 + 352) = v12;
  *(v0 + 360) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v2, v11, v3);

  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  sub_24381CD04();
  v13 = *(v1 + 8);
  *(v0 + 376) = v13;
  *(v0 + 384) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v27, v28);
  sub_24381CA24();
  v12(v2, *MEMORY[0x277CFA878], v3);
  sub_24381CD04();
  v13(v27, v28);
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v14 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v14, qword_27ED93268);

  v15 = sub_24381CA44();
  v16 = sub_24381CD94();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_42_0();
    v29 = OUTLINED_FUNCTION_63();
    *v17 = 136315138;
    v18 = sub_24381C784();
    MEMORY[0x245D40CE0](v10, v18);

    v19 = OUTLINED_FUNCTION_57_0();
    v22 = sub_243808908(v19, v20, v21);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2437FA000, v15, v16, "send back ephemeral assets %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 104);
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  *(swift_allocObject() + 16) = v24;
  *(v0 + 392) = sub_24381CA14();
  sub_243809358(&qword_27ED92E40, &qword_27ED92E30, &qword_24381D940);

  sub_24381CEB4();
  MEMORY[0x245D40EE0](v23);
  sub_24381CCF4();
  sub_24381CE84();
  sub_24381CE94();
  *(v0 + 60) = *MEMORY[0x277CFA970];
  *(v0 + 440) = *MEMORY[0x277CFA868];
  v25 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v25);
}

uint64_t sub_243806824()
{
  OUTLINED_FUNCTION_13();
  *(v0 + 400) = sub_24381CE74();
  sub_243809358(&qword_27ED92E48, &qword_27ED92E10, &qword_24381D920);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 408) = v1;
  *v1 = v2;
  v1[1] = sub_243806910;
  OUTLINED_FUNCTION_14();

  return MEMORY[0x282200310]();
}

uint64_t sub_243806910()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (!v0)
  {
    (*(v3 + 400))();
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243806A20()
{
  OUTLINED_FUNCTION_13();
  if (*(v0 + 56))
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 152), 1, 1, *(v0 + 392));
    v1 = OUTLINED_FUNCTION_7_0();

    return MEMORY[0x2822009F8](v1);
  }

  else
  {
    *(v0 + 88) = *(v0 + 48);
    v2 = sub_24381CE84();
    *(v0 + 424) = v3;
    v8 = (v2 + *v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    *(v0 + 432) = v4;
    *v4 = v5;
    v4[1] = sub_243807024;
    v6 = *(v0 + 152);

    return v8(v6, v0 + 88);
  }
}

uint64_t sub_243806B70()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[50];
  v0[52] = v0[12];
  v1();
  v2 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_243807024()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_243807124()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_68();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_243807188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v17 = *(v16 + 392);
  v18 = *(v16 + 152);
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    v19 = *(v16 + 328);
    v20 = *(v16 + 336);
    v21 = *(v16 + 280);
    v47 = *(v16 + 272);
    v50 = *(v16 + 296);
    v22 = *(v16 + 208);
    v23 = *(v16 + 216);
    v24 = *(v16 + 200);
    sub_2437FF838(*(v16 + 312), *(v16 + 320));
    sub_2437FF838(v19, v20);
    v25 = OUTLINED_FUNCTION_37_0();
    v26(v25);
    (*(v22 + 8))(v23, v24);
    (*(v21 + 8))(v50, v47);
    v48 = *(v16 + 152);
    v51 = *(v16 + 144);
    *(v16 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
    sub_24381CD14();

    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, v48, v51, a14, a15, a16);
  }

  else
  {
    v45 = *(v16 + 440);
    v36 = *(v16 + 60);
    v49 = *(v16 + 376);
    v37 = *(v16 + 352);
    v38 = *(v16 + 264);
    v39 = *(v16 + 240);
    v46 = *(v16 + 248);
    v40 = *(v16 + 224);
    OUTLINED_FUNCTION_15_0();
    (*(v41 + 32))(v39, v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E50, &qword_24381D970);
    OUTLINED_FUNCTION_0_1();
    (*(v42 + 104))(v39, v36);
    v37(v39, v45, v40);
    sub_24381CD04();
    v49(v38, v46);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_43();

    return MEMORY[0x2822009F8](v43);
  }
}

void sub_2438077D8(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_24381C754();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v15 = v14 - v13;
  sub_24381CA14();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  (*(v19 + 16))(v18 - v17, v8);
  (*(v11 + 16))(v15, v6, v9);
  sub_24380AF70(v4, v2);
  v20 = OUTLINED_FUNCTION_18();
  sub_24380AF70(v20, v21);
  sub_24381C774();
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_243807958(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  v4 = OUTLINED_FUNCTION_7_0();
  return MEMORY[0x2822009F8](v4);
}

void sub_243807988()
{
  OUTLINED_FUNCTION_28();
  if (!*(v0[3] + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_243800504(v0[4]);
  if ((v2 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v1;
  v4 = v0[2];
  v5 = *(v0[3] + 56);
  sub_24381CA14();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(v4, v5 + *(v6 + 72) * v3);
  OUTLINED_FUNCTION_12();

  v7();
}

uint64_t sub_243807A44()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_24381C8A4();
  v1[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_32();
  v6 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_243807AEC()
{
  OUTLINED_FUNCTION_54();
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v1 = OUTLINED_FUNCTION_18();
  v3 = v2(v1);
  if (v3 == *MEMORY[0x277CFA838])
  {
    v4 = v0[7];
    (*(v0[6] + 96))(v4, v0[5]);
    v0[8] = *v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[9] = v5;
    *v5 = v6;
    v7 = sub_243807CF0;
LABEL_5:
    v5[1] = v7;

    return sub_2438052F8();
  }

  v8 = v0[7];
  if (v3 == *MEMORY[0x277CFA840])
  {
    v9 = OUTLINED_FUNCTION_18();
    v10(v9);
    v0[11] = *v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[12] = v5;
    *v5 = v11;
    v7 = sub_243807E50;
    goto LABEL_5;
  }

  v13 = sub_24380043C();
  OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v13);
  swift_willThrow();
  v14 = OUTLINED_FUNCTION_18();
  v15(v14);

  OUTLINED_FUNCTION_12();

  return v16();
}

uint64_t sub_243807CF0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243807DEC()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_243807E50()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243807F4C()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_243807FB4()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_243808018()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_24380807C()
{

  return v0;
}

uint64_t sub_2438080A4()
{
  sub_24380807C();
  v0 = OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2438080D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_243801DDC(a1);
  *a2 = result;
  return result;
}

void sub_243808140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v7 + 24) >> 1)
  {
    if (*(v7 + 16) <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    sub_2438086A4(isUniquelyReferenced_nonNull_native, v9, 0, v7, a2, a3);
    v7 = v10;
  }

  *v3 = v7;
}

uint64_t sub_2438081BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_24381CF34() & 1;
  }
}

char *sub_243808200@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24381CC44();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_24380859C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_24380859C((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_24381CC34();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_24381CBF4();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_24381CC44();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_24380859C(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_24380859C((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_24381CBF4();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_24381CC44();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_24380859C(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

char *sub_24380859C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F88, &unk_24381DA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2438086A4(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_53_0();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_61(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

void *sub_24380877C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F58, &qword_24381DA70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void sub_2438087F8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_25_0();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_25_0();

    MEMORY[0x2821FE820](v9);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_243808908(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2438089CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_243808E78(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2438089CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243808ACC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_24381CE44();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243808ACC(uint64_t a1, unint64_t a2)
{
  v3 = sub_243808B18(a1, a2);
  sub_243808C30(&unk_28568EF08);
  return v3;
}

uint64_t sub_243808B18(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_24381CC24())
  {
    result = sub_243808D14(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24381CE24();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_24381CE44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243808C30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_243808D84(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243808D14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_243808D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_243808E78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243808ED8()
{
  v24 = sub_24381C6E4();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_24381C754();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v20 | 7);
}

uint64_t sub_2438090B0()
{
  OUTLINED_FUNCTION_54();
  v1 = sub_24381C6E4();
  OUTLINED_FUNCTION_1(v1);
  v2 = sub_24381C754();
  OUTLINED_FUNCTION_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E00, &unk_24381D8F0);
  OUTLINED_FUNCTION_38(v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_2437FF9EC;

  return sub_243805FD4();
}

uint64_t sub_243809278()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438092B0()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2437FB6F4;

  return sub_243807958(v5, v3, v6);
}

uint64_t sub_243809358(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24380939C(uint64_t a1, uint64_t a2)
{
  sub_24381CFC4();
  sub_24381CBE4();
  v4 = sub_24381CFE4();

  return sub_243809EF4(a1, a2, v4);
}

uint64_t sub_243809414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_243808E78(a4, a1);

  return a2;
}

uint64_t sub_243809454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_243809414((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24380948C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_24380AC84(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_24380ADA8(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_24380B0C4(v30);
    }

    v8 = v28;
    sub_24380B0CC(&v29, v27);
    v9 = *a5;
    v11 = sub_24380939C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
        sub_24381CED4();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2438099C4(v14, a4 & 1);
      v16 = sub_24380939C(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_243808E78(*(*a5 + 56) + 32 * v11, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v19 = (*(v18 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_24380B0CC(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_24380B0CC(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

void sub_2438096C0(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    sub_24380B130(i, &v26, &qword_27ED92F40, &unk_24381DA50);
    v8 = v26;
    v28 = v26;
    sub_243800490(&v27, v25);
    v9 = *a3;
    v11 = sub_243800504(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DC8, &qword_24381D7E8);
      sub_24381CED4();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v8;
    sub_243800490(v25, v18[7] + 40 * v11);
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v6;
    v18[2] = v21;
    a2 = 1;
    if (v24 == v6)
    {

      return;
    }
  }

  sub_243809C78(v14, a2 & 1);
  v16 = sub_243800504(v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);

    return;
  }

LABEL_22:
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

uint64_t sub_2438099C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
  v33 = v4;
  result = sub_24381CF04();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_243809FA8(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_24380B0CC(v22, v34);
    }

    else
    {
      sub_243808E78(v22, v34);
    }

    sub_24381CFC4();
    sub_24381CBE4();
    result = sub_24381CFE4();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_24380B0CC(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_243809C78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F38, &qword_24381DA48);
  result = sub_24381CF04();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v30 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        sub_243809FA8(0, (v29 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = (*(v5 + 56) + 40 * v18);
    if (v4)
    {
      sub_243800490(v20, v31);
    }

    else
    {
      sub_2438000FC(v20, v31);
    }

    result = sub_24381CFB4();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    result = sub_243800490(v31, *(v7 + 56) + 40 * v24);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_243809EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24381CF34() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_243809FA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_24381D850;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_24380A00C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A05C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A30C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A0AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A0CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24380A0EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24380A154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A82C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24380A174(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380A964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24380A1DC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC8, &qword_24381D9E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED0, &qword_24381D9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24380A30C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F28, &qword_24381DA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_24380A414(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_53_0();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_61(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

char *sub_24380A4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F18, &qword_24381DA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24380A5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F08, &qword_24381DA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_24380A6F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F20, &qword_24381DE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24380A82C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F48, &qword_24381DA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F40, &unk_24381DA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24380A964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F50, &qword_24381DA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_24380AA64(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_53_0();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = v7(0);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v16;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_18:
  v26 = *(v7(0) - 8);
  if (v11)
  {
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    sub_2438087F8(v9 + v27, v16, v23 + v27, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_24380AC04(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_2438000FC(*(a5 + 56) + 40 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24380AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_24380ACC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24380ADA8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_243808E78(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_24380B0CC(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_24380B1F4(v18, &qword_27ED92F00, &qword_24381DA20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24380AF64(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24380AF70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24380B054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E60, &unk_24381D980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24380B0CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24380B0DC()
{
  result = qword_27ED92F10;
  if (!qword_27ED92F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED92F10);
  }

  return result;
}

uint64_t sub_24380B130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24380B1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_24380B24C()
{
  result = qword_27ED92F78;
  if (!qword_27ED92F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED92F78);
  }

  return result;
}

uint64_t sub_24380B2B0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_22_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_34_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
}

void OUTLINED_FUNCTION_35_0()
{

  JUMPOUT(0x245D41570);
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return __swift_getEnumTagSinglePayload(v2 + v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_24381CC84();
}

uint64_t OUTLINED_FUNCTION_78()
{
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_80()
{
  *(v1 + 64) = v0;

  return v0;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_24381CD04();
}

BOOL OUTLINED_FUNCTION_83()
{

  return os_log_type_enabled(v0, v1);
}

void sub_24380B8B0(uint64_t a1)
{
  v1 = sub_24381C9E4();
  v3 = sub_24380B938(v1, v2);
  v4 = OUTLINED_FUNCTION_17_0();
  sub_2437FF838(v4, v5);
  v6 = MMCSReferenceSignatureCreateWithReferenceObject();

  if (v6)
  {
    sub_24381C704();
  }

  else
  {
    __break(1u);
  }
}

CFDataRef sub_24380B938(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x24380B9C4);
      }

      a1 = a1;
      v4 = v6;
      return sub_24380E948(a1, v4);
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      return sub_24380E948(a1, v4);
    case 3uLL:
      a1 = 0;
      v2 = 0;
      return sub_24380E8D0(a1, v2);
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_24380E8D0(a1, v2);
  }
}

void sub_24380B9D4()
{
  OUTLINED_FUNCTION_36_0();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FF8, &unk_24381DB80);
  OUTLINED_FUNCTION_0_1();
  v2 = MEMORY[0x28223BE20](v1);
  v45 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v44 = &v39 - v4;
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v52 = MEMORY[0x277D84F90];
    v7 = OUTLINED_FUNCTION_8_1();
    sub_24380A00C(v7, v8, v9);
    v10 = v52;
    v13 = sub_24380AF24(v5);
    v14 = 0;
    v15 = v5 + 64;
    v40 = v11;
    v41 = v6;
    v39 = v5 + 72;
    v42 = v5 + 64;
    v43 = v5;
    v16 = v46;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v5 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v5 + 36) != v11)
      {
        goto LABEL_23;
      }

      v49 = v11;
      v50 = 1 << v13;
      v47 = v12;
      v48 = v14;
      v18 = *(v16 + 48);
      v51 = v10;
      v19 = *(v5 + 56);
      v20 = *(*(v5 + 48) + 8 * v13);
      v21 = sub_24381C804();
      OUTLINED_FUNCTION_9();
      v23 = v22;
      v25 = v44;
      (*(v22 + 16))(&v44[v18], v19 + *(v24 + 72) * v13, v21);
      v26 = v45;
      *v45 = v20;
      (*(v23 + 32))(v26 + *(v16 + 48), &v25[v18], v21);
      v10 = v51;
      sub_24380BD24();
      v28 = v27;
      sub_24380B1F4(v26, &qword_27ED92FF8, &unk_24381DB80);
      v52 = v10;
      v30 = *(v10 + 16);
      v29 = *(v10 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_24380A00C((v29 > 1), v30 + 1, 1);
        v10 = v52;
      }

      *(v10 + 16) = v30 + 1;
      *(v10 + 8 * v30 + 32) = v28;
      v5 = v43;
      v31 = 1 << *(v43 + 32);
      if (v13 >= v31)
      {
        goto LABEL_24;
      }

      v15 = v42;
      v32 = *(v42 + 8 * v17);
      if ((v32 & v50) == 0)
      {
        goto LABEL_25;
      }

      if (*(v43 + 36) != v49)
      {
        goto LABEL_26;
      }

      v33 = v32 & (-2 << (v13 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v17 << 6;
        v35 = v17 + 1;
        v36 = (v39 + 8 * v17);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_24380AF64(v13, v49, v47 & 1);
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        sub_24380AF64(v13, v49, v47 & 1);
      }

LABEL_19:
      v12 = 0;
      v14 = v48 + 1;
      v13 = v31;
      v11 = v40;
      if (v48 + 1 == v41)
      {
        goto LABEL_20;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_24380BD24()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v2 = sub_24381C9F4();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v8 = v7 - v6;
  sub_24381C7F4();
  v9 = sub_24381C9E4();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v8, v2);
  sub_24381C7F4();
  v57 = sub_24381C9D4();
  v58 = v13;
  v12(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v15;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v1;
  sub_24381CB24();
  v16 = v9;
  if (sub_2438013D8(v9, v11))
  {
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_24381D830;
    if (*MEMORY[0x277D25508])
    {
      *(v17 + 32) = sub_24381CB84();
      *(v17 + 40) = v18;
      *(v17 + 72) = MEMORY[0x277D839B0];
      *(v17 + 48) = 1;
      v19 = sub_24381CB24();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_2_2();
      sub_24380948C(v19, v20, 0, v21, v22);
LABEL_10:
      v38 = OUTLINED_FUNCTION_29();
      if (sub_2438013D8(v38, v39))
      {
        sub_2437FF838(v16, v11);
        v40 = OUTLINED_FUNCTION_29();
        sub_2437FF838(v40, v41);
LABEL_14:
        OUTLINED_FUNCTION_33_0();
        return;
      }

      v42 = v16;
      v43 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_24381D830;
      if (*MEMORY[0x277D25418])
      {
        *(v44 + 32) = sub_24381CB84();
        *(v44 + 40) = v45;
        *(v44 + 48) = v57;
        *(v44 + 56) = v58;
        v46 = OUTLINED_FUNCTION_29();
        sub_24380AF70(v46, v47);
        v48 = sub_24381CB24();
        v49 = sub_243801690(v48);

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_2();
        sub_24380948C(v49, v50, 0, v51, v52);
        v53 = OUTLINED_FUNCTION_29();
        sub_2437FF838(v53, v54);
        sub_2437FF838(v42, v43);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v55 = v9;
  v56 = v11;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D25678])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v23 + 32) = sub_24381CB84();
  *(v23 + 40) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v25 + 32) = sub_24381CB84();
  *(v25 + 40) = v26;
  *(v25 + 48) = v9;
  *(v25 + 56) = v56;
  if (!*MEMORY[0x277D254F8])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v25 + 64) = sub_24381CB84();
  *(v25 + 72) = v27;
  sub_24380AF70(v9, v56);
  sub_24381C7F4();
  sub_24380B8B0(v8);
  v29 = v28;
  v31 = v30;
  v12(v8, v2);
  *(v25 + 80) = v29;
  *(v25 + 88) = v31;
  v32 = sub_24381CB24();
  *(v23 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
  *(v23 + 48) = v32;
  if (*MEMORY[0x277D25500])
  {
    *(v23 + 80) = sub_24381CB84();
    *(v23 + 88) = v33;
    *(v23 + 120) = MEMORY[0x277D839B0];
    *(v23 + 96) = 1;
    v34 = sub_24381CB24();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_2();
    sub_24380948C(v34, v35, 0, v36, v37);
    v16 = v55;
    v11 = v56;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_24380C200(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, unint64_t), uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v43 = v8;
    v52 = MEMORY[0x277D84F90];
    sub_24380FBA8(0, v9, 0);
    v51 = v52;
    result = sub_24380AF24(a1);
    v13 = result;
    v14 = 0;
    v15 = a1 + 64;
    v39 = v11;
    v40 = v9;
    v38 = a1 + 72;
    v41 = a1 + 64;
    v42 = a1;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_26;
      }

      v49 = v14;
      v50 = v11;
      v48 = v12;
      v17 = *(*(a1 + 48) + 8 * v13);
      v18 = (*(a1 + 56) + 16 * v13);
      v19 = *v18;
      v20 = v18[1];
      v21 = v4;
      v22 = *(v45 + 48);
      sub_24380AF70(*v18, v20);
      v23 = v43;
      v24 = v46(v43 + v22, v17, v19, v20);
      v4 = v21;
      if (v21)
      {
        sub_2437FF838(v19, v20);
      }

      v25 = v24;
      sub_2437FF838(v19, v20);
      *v23 = v25;
      v26 = v51;
      v52 = v51;
      v28 = *(v51 + 16);
      v27 = *(v51 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_24380FBA8(v27 > 1, v28 + 1, 1);
        v26 = v52;
      }

      *(v26 + 16) = v28 + 1;
      v51 = v26;
      result = sub_2438101AC();
      a1 = v42;
      v29 = 1 << *(v42 + 32);
      if (v13 >= v29)
      {
        goto LABEL_27;
      }

      v15 = v41;
      v30 = *(v41 + 8 * v16);
      if ((v30 & (1 << v13)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v42 + 36) != v50)
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v32 = v40;
      }

      else
      {
        v33 = v16 << 6;
        v34 = v16 + 1;
        v35 = (v38 + 8 * v16);
        v32 = v40;
        while (v34 < (v29 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_24380AF64(v13, v50, v48 & 1);
            v29 = __clz(__rbit64(v36)) + v33;
            goto LABEL_20;
          }
        }

        result = sub_24380AF64(v13, v50, v48 & 1);
      }

LABEL_20:
      v12 = 0;
      v14 = v49 + 1;
      v13 = v29;
      v11 = v39;
      if (v49 + 1 == v32)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_25:
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

  return result;
}

uint64_t sub_24380C570()
{

  v0 = OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24380C5A0()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93298);
  v1 = OUTLINED_FUNCTION_17_0();
  __swift_project_value_buffer(v1, v2);
  sub_24381C794();
  type metadata accessor for Registerer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93018, &qword_24381DBC0);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_24380C640(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24380C680(a1);
  return v2;
}

uint64_t sub_24380C680(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  v4 = OBJC_IVAR____TtCC17CloudAssetsDaemon10Registerer7Context_continutation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  *v3 = v1;

  (*(v6 + 8))(a1, v5);
  return v1;
}

uint64_t sub_24380C760()
{
  OUTLINED_FUNCTION_35_0();
  v1 = OBJC_IVAR____TtCC17CloudAssetsDaemon10Registerer7Context_continutation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24380C808(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_24380C848()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_24381C6E4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93020, &qword_24381DBC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_24381C804();
  OUTLINED_FUNCTION_9();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  if (v7)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v70 = v1;
    v71 = v3;
    v72 = &v65 - v23;
    v73 = v24;

    sub_24380029C(v5, v74);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v29 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v17, v29 ^ 1u, 1, v18);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
    if (EnumTagSinglePayload == 1)
    {
      sub_24380B1F4(v17, &qword_27ED93020, &qword_24381DBC8);
      if (_MergedGlobals_1 == -1)
      {
LABEL_11:
        v31 = sub_24381CA64();
        __swift_project_value_buffer(v31, qword_27ED93298);
        v32 = sub_24381CA44();
        v33 = sub_24381CD84();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134349056;
          *(v34 + 4) = v5;
          _os_log_impl(&dword_2437FA000, v32, v33, "asset request with tracking number %{public}llu can not be found", v34, 0xCu);
          OUTLINED_FUNCTION_35_0();
        }

        goto LABEL_14;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
      goto LABEL_11;
    }

    (*(v73 + 32))(v72, v17, v18);
    sub_24381C7E4();
    sub_24381C6C4();
    v35 = *(v10 + 8);
    v69 = v10 + 8;
    v35(v14, v8);
    sub_24381CBC4();

    v36 = sub_24381CAC4();
    v37 = v36;
    if ((v36 & 0x100000000) != 0)
    {
      v68 = v35;
      LODWORD(v74[0]) = v36;
      sub_243810264();
      swift_willThrowTypedImpl();
      v70 = swift_allocError();
      *v41 = v37;

      if (v71)
      {
        *v71 = -1;
      }

      if (_MergedGlobals_1 != -1)
      {
        OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
      }

      v42 = sub_24381CA64();
      __swift_project_value_buffer(v42, qword_27ED93298);
      v43 = v73;
      (*(v73 + 16))(v22, v72, v18);
      v44 = v70;
      v45 = v70;
      v46 = sub_24381CA44();
      v47 = sub_24381CD84();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v67 = v47;
        v49 = v48;
        v66 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74[0] = v71;
        *v49 = 136315394;
        v65 = v46;
        sub_24381C7E4();
        v50 = sub_24381C6C4();
        v52 = v51;
        v68(v14, v8);
        v53 = *(v43 + 8);
        v53(v22, v18);
        v54 = sub_243808908(v50, v52, v74);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2112;
        v55 = v70;
        v56 = v70;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 14) = v57;
        v58 = v65;
        v59 = v66;
        *v66 = v57;
        _os_log_impl(&dword_2437FA000, v58, v67, "unable to open file at path %s due to error %@", v49, 0x16u);
        sub_24380B1F4(v59, &qword_27ED92E38, &unk_24381DBD0);
        OUTLINED_FUNCTION_35_0();
        __swift_destroy_boxed_opaque_existential_1(v71);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_35_0();

        v60 = OUTLINED_FUNCTION_62();
        (v53)(v60);
      }

      else
      {

        v61 = *(v43 + 8);
        v61(v22, v18);
        v62 = OUTLINED_FUNCTION_62();
        (v61)(v62);
      }
    }

    else
    {

      if (v71)
      {
        *v71 = v37;
      }

      v38 = v70;
      if (v70)
      {
        *v38 = sub_24381CB74();

        v39 = OUTLINED_FUNCTION_15_1();
        v40(v39);
      }

      else
      {
        v63 = OUTLINED_FUNCTION_15_1();
        v64(v63);
      }
    }
  }

  else
  {
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
    }

    v25 = sub_24381CA64();
    __swift_project_value_buffer(v25, qword_27ED93298);
    v26 = sub_24381CA44();
    v27 = sub_24381CD84();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2437FA000, v26, v27, "context for registering assets can not be loaded", v28, 2u);
      OUTLINED_FUNCTION_35_0();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_24380CFBC(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_24380CFDC);
}

uint64_t sub_24380CFDC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FB0, &qword_24381DB28);
  *v2 = v0;
  v2[1] = sub_24380D0E8;

  return MEMORY[0x2822008A0](v0 + 16);
}

uint64_t sub_24380D0E8()
{
  OUTLINED_FUNCTION_13();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24380D21C;
  }

  else
  {

    v2 = sub_24380D200;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_24380D21C()
{
  OUTLINED_FUNCTION_13();

  v1 = *(v0 + 8);

  return v1();
}

void sub_24380D27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  type metadata accessor for Registerer.Context(0);
  swift_allocObject();
  sub_24380C680(v6);
  v8 = sub_24381CAF4();
  MMCSRegisterItems();
}

void sub_24380D3BC(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      *&v10 = 0;

      sub_24381CB04();
    }

    else
    {
    }

    memset(v11, 0, 32);
    sub_24380B1F4(v11, &qword_27ED92F70, &qword_24381DA88);
    sub_24380043C();
    *&v11[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F90, &qword_24381DAB0);
    sub_24381CC84();
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
    }

    v2 = sub_24381CA64();
    __swift_project_value_buffer(v2, qword_27ED93298);
    v3 = sub_24381CA44();
    v4 = sub_24381CD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2437FA000, v3, v4, "mmcs engine returns nil results", v5, 2u);
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    if (_MergedGlobals_1 != -1)
    {
      OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
    }

    v6 = sub_24381CA64();
    __swift_project_value_buffer(v6, qword_27ED93298);
    oslog = sub_24381CA44();
    v7 = sub_24381CD84();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2437FA000, oslog, v7, "context for registering assets can not be loaded", v8, 2u);
      OUTLINED_FUNCTION_35_0();
    }
  }
}

uint64_t sub_24380D950(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24381CF14();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void sub_24380DA04()
{
  OUTLINED_FUNCTION_14_1();
  v2 = v0;
  sub_24380D3BC(v1, v0);
}

uint64_t sub_24380DA54()
{
  OUTLINED_FUNCTION_13();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F98, &qword_24381DAC0);
  v1[34] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[35] = v4;
  v1[36] = swift_task_alloc();
  v5 = sub_24381CCD4();
  v1[37] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[38] = v6;
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24380DB68);
}

uint64_t sub_24380DB68()
{
  v50 = v0;
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_3(&_MergedGlobals_1);
  }

  v1 = sub_24381CA64();
  v0[40] = __swift_project_value_buffer(v1, qword_27ED93298);

  v2 = sub_24381CA44();
  v3 = sub_24381CD94();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[38];
    v4 = v0[39];
    v6 = v0[37];
    v7 = v0[32];
    v8 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_24381C804();
    v10 = MEMORY[0x245D40CE0](v7, v9);
    v12 = sub_243808908(v10, v11, &v49);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    sub_24381CCE4();
    sub_24380FCD8(&qword_27ED92DF0, MEMORY[0x277D85720], MEMORY[0x277D85730]);
    v13 = sub_24381CF24();
    v15 = v14;
    (*(v5 + 8))(v4, v6);
    v16 = sub_243808908(v13, v15, &v49);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2437FA000, v2, v3, "processing %s with priority %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_35_0();
  }

  v17 = v0[32];
  v18 = *(*(*(v0[33] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);
  v0[41] = v18;
  v19 = *(v17 + 16);
  if (v19)
  {
    v48 = v0[34];
    v49 = MEMORY[0x277D84F90];

    v20 = OUTLINED_FUNCTION_8_1();
    sub_24380FBE8(v20, v21, v22);
    v23 = v49;
    v24 = sub_24381C804();
    OUTLINED_FUNCTION_0_1();
    v47 = *(v25 + 16);
    v26 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v46 = *(v25 + 72);
    do
    {
      v27 = v0[36];
      v28 = *(v48 + 48);
      v47(&v27[v28], v26, v24);
      v0[27] = v24;
      v0[28] = sub_24380FCD8(&qword_27ED92FA0, MEMORY[0x277CFA820], MEMORY[0x277CFA818]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
      v47(boxed_opaque_existential_1, &v27[v28], v24);
      v30 = v18;
      v31 = sub_243800058((v0 + 24));
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
      *v27 = v31;
      v49 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_24380FBE8(v32 > 1, v33 + 1, 1);
        v23 = v49;
      }

      *(v23 + 16) = v33 + 1;
      sub_2438101AC();
      v26 += v46;
      --v19;
      v18 = v30;
    }

    while (v19);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v34 = sub_24380D950(v23, &qword_27ED93000, &qword_24381DBA8, sub_24380F154);

  v0[42] = sub_24380239C(v35);
  type metadata accessor for Registerer.OptionsBuilder();
  *(swift_initStackObject() + 16) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24381DAA0;
  result = *MEMORY[0x277D255F0];
  if (!*MEMORY[0x277D255F0])
  {
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v38;
  v39 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  result = *MEMORY[0x277D25500];
  if (!*MEMORY[0x277D25500])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 80) = sub_24381CB84();
  *(inited + 88) = v40;
  *(inited + 120) = v39;
  *(inited + 96) = 1;
  result = *MEMORY[0x277D25598];
  if (!*MEMORY[0x277D25598])
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *(inited + 128) = sub_24381CB84();
  *(inited + 136) = v41;
  sub_24380B9D4();
  v43 = v42;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
  *(inited + 144) = v43;
  v44 = sub_24381CB24();
  v0[43] = v44;
  swift_setDeallocating();

  v45 = swift_task_alloc();
  v0[44] = v45;
  *v45 = v0;
  v45[1] = sub_24380E0FC;

  return sub_24380CFBC(v45, v44);
}

uint64_t sub_24380E0FC()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  *(v2 + 360) = v3;
  *(v2 + 368) = v0;

  if (v0)
  {
    v4 = sub_24380E45C;
  }

  else
  {

    v4 = sub_24380E21C;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_24380E21C()
{
  v18 = v0;

  v1 = sub_24381CA44();
  v2 = sub_24381CD94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    v6 = sub_24381C804();
    v7 = MEMORY[0x245D40CE0](v3, v6);
    v9 = sub_243808908(v7, v8, &v17);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_2437FA000, v1, v2, "finish processing %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_35_0();
  }

  v10 = v0[46];
  v11 = sub_24380C200(v0[45], sub_24380FCAC, v0[41]);
  if (v10)
  {

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v11;

    v15 = sub_24380D950(v14, &qword_27ED92FB8, &qword_24381DB30, sub_24380ECB4);

    v16 = v0[1];

    return v16(v15);
  }
}

uint64_t sub_24380E45C()
{
  OUTLINED_FUNCTION_13();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24380E4E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = a4;
  v6 = sub_24381C6E4();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_42();
  v7 = sub_24381C9A4();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_42();
  v8 = sub_24381C9F4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v14 = v13 - v12;
  v15 = sub_24381C804();
  OUTLINED_FUNCTION_9();
  v29 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42();
  v20 = v19 - v18;
  sub_24380029C(a2, v31);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v27 = v15;
    swift_dynamicCast();
    type metadata accessor for Registerer.OptionsBuilder();
    sub_24381C7F4();
    sub_24380B8B0(v14);
    v28 = a2;
    v22 = v21;
    v24 = v23;
    (*(v10 + 8))(v14, v8);
    sub_24381C7C4();
    sub_24380AF70(a3, v32);
    sub_24380AF70(v22, v24);
    sub_24381C974();
    sub_24381C7F4();
    sub_24381C9B4();
    v25 = v22;
    a2 = v28;
    sub_2437FF838(v25, v24);
    (*(v29 + 8))(v20, v27);
  }

  return a2;
}

uint64_t sub_24380E7A8()
{

  v0 = OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24380E7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24380C808(a1);
  *a2 = result;
  return result;
}

void sub_24380E800(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_14_1();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_62(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_0_1(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v12 = OUTLINED_FUNCTION_62();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_6_0();

    MEMORY[0x2821FE828](v14);
  }

  else if (a3 != v4)
  {
    v11 = OUTLINED_FUNCTION_6_0();

    MEMORY[0x2821FE820](v11);
  }
}

CFDataRef sub_24380E8D0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *bytes = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return CFDataCreate(0, bytes, BYTE6(a2));
}

CFDataRef sub_24380E948(uint64_t a1, uint64_t a2)
{
  result = sub_24381C644();
  v5 = result;
  if (result)
  {
    result = sub_24381C664();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_24381C654();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return CFDataCreate(0, v5, v10);
}

void sub_24380E9D4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_24381CF54();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    sub_24380AF70(v7, *i);
    if (v6 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_243800504(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FE0, &qword_24381DB60);
      sub_24381CED4();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v8;
    v19 = (v18[7] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_24380F5F4(v14, a2 & 1);
  v16 = sub_243800504(v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2437FF838(v7, v6);

    return;
  }

LABEL_23:
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

void sub_24380ECB4(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_24381CA14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v11 = MEMORY[0x28223BE20](v10);
  v43 = (v36 - v13);
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v7;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_24381020C();
    v49 = *v17;
    v18 = v49;
    v19 = *v44;
    v20 = v9;
    (*v44)(v9, v17 + v40, v6);
    v21 = *v45;
    v23 = sub_243800504(v18);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = v22;
    if (v21[3] < v24 + v25)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC8, &unk_24381DB40);
      sub_24381CED4();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v29[6] + 8 * v23) = v18;
    v6 = v38;
    v30 = v29[7] + *(v39 + 72) * v23;
    v9 = v20;
    v19(v30, v20, v38);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_24380F868();
  v27 = sub_243800504(v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v23 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();
  v48 = v34;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v39 + 8))(v20, v38);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

void sub_24380F154(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v6 = sub_24381C804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92F98, &qword_24381DAC0);
  v11 = MEMORY[0x28223BE20](v10);
  v43 = (v36 - v13);
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v36[1] = v3;
  v37 = a1;
  v14 = 0;
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v39 = v7;
  v40 = v15;
  v44 = (v7 + 32);
  v38 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_24381CF54();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v43;
    sub_24381020C();
    v49 = *v17;
    v18 = v49;
    v19 = *v44;
    v20 = v9;
    (*v44)(v9, v17 + v40, v6);
    v21 = *v45;
    v23 = sub_243800504(v18);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = v22;
    if (v21[3] < v24 + v25)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93008, &qword_24381DBB0);
      sub_24381CED4();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v45;
    *(*v45 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v29[6] + 8 * v23) = v18;
    v6 = v38;
    v30 = v29[7] + *(v39 + 72) * v23;
    v9 = v20;
    v19(v30, v20, v38);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v14;
    v29[2] = v33;
    a2 = 1;
    a1 = v37;
    v12 = v16;
    if (v42 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_24380F868();
  v27 = sub_243800504(v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v23 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();
  v48 = v34;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v39 + 8))(v20, v38);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_24381CE34();
  MEMORY[0x245D40C80](0xD00000000000001BLL, 0x800000024381E3C0);
  sub_24381CE54();
  MEMORY[0x245D40C80](39, 0xE100000000000000);
  sub_24381CEF4();
  __break(1u);
}

uint64_t sub_24380F5F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FD8, &qword_24381DB58);
  result = sub_24381CF04();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v29 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        sub_243809FA8(0, (v28 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v30 = *(*(v5 + 56) + 16 * v18);
    if ((v4 & 1) == 0)
    {
      sub_24380AF70(v30, *(&v30 + 1));
    }

    result = sub_24381CFB4();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v7 + 48) + 8 * v23) = v19;
    *(*(v7 + 56) + 16 * v23) = v30;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_24380F868()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v44 = v4(0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v43 = &v39 - v8;
  v9 = *v0;
  v10 = OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_6_0();
  v42 = v3;
  v12 = sub_24381CF04();
  v13 = v12;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v13;
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v39 = v1;
  v14 = 0;
  v15 = (v9 + 64);
  v16 = 1 << *(v9 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v9 + 64);
  v19 = (v16 + 63) >> 6;
  v40 = (v6 + 16);
  v41 = v6;
  v20 = (v6 + 32);
  v21 = v12 + 64;
  if (!v18)
  {
LABEL_7:
    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v1 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v9 + 32);
    v1 = v39;
    if (v38 >= 64)
    {
      sub_243809FA8(0, (v38 + 63) >> 6, v9 + 64);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v25 = v22 | (v14 << 6);
    v26 = *(*(v9 + 48) + 8 * v25);
    v27 = *(v6 + 72);
    v28 = *(v9 + 56) + v27 * v25;
    if (v42)
    {
      (*v20)(v43, v28, v44);
    }

    else
    {
      (*v40)(v43, v28, v44);
    }

    v29 = sub_24381CFB4();
    v30 = -1 << *(v13 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v13 + 48) + 8 * v33) = v26;
    (*v20)((*(v13 + 56) + v27 * v33), v43, v44);
    ++*(v13 + 16);
    v6 = v41;
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v21 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void *sub_24380FB88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24380FEC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_24380FCD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for Registerer.Context(uint64_t a1)
{
  result = qword_27ED93280;
  if (!qword_27ED93280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24380FD98(uint64_t a1)
{
  sub_24380FE38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24380FE38(uint64_t a1)
{
  if (!qword_27ED92FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92FB0, &qword_24381DB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v1 = sub_24381CCA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED92FA8);
    }
  }
}

void *sub_24380FEC0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FE8, &qword_24381DB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FF0, &unk_24381DB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_24380FFF8()
{
  OUTLINED_FUNCTION_36_0();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8);
  if (v10)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_24380E800(v8 + v25, v14, v21 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438101AC()
{
  OUTLINED_FUNCTION_14_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return v0;
}

uint64_t sub_24381020C()
{
  OUTLINED_FUNCTION_14_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return v0;
}

unint64_t sub_243810264()
{
  result = qword_27ED93028;
  if (!qword_27ED93028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93028);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_243810378()
{
  sub_24381CFC4();
  MEMORY[0x245D41050](0);
  return sub_24381CFE4();
}

uint64_t sub_2438103CC(uint64_t a1)
{
  sub_24381CFC4();
  MEMORY[0x245D41050](0);
  return sub_24381CFE4();
}

unint64_t sub_243810410()
{
  result = qword_27ED93030;
  if (!qword_27ED93030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ProcessorError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x243810564);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2438105A8()
{
  OUTLINED_FUNCTION_36_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_76();
  v33 = v2;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - v4;
  v35 = v0;
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v40 = MEMORY[0x277D84F90];
    sub_24380A00C(0, v6, 0);
    v7 = v40;
    v9 = sub_24380AF24(v5);
    v10 = v5 + 64;
    v11 = v6 - 1;
    v30 = v5 + 64;
    v31 = v5;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v5 + 32))
      {
        if ((*(v10 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_16;
        }

        if (v8 != *(v5 + 36))
        {
          goto LABEL_17;
        }

        v37 = v8;
        v38 = v9 >> 6;
        v36 = v11;
        v39 = v7;
        v12 = v34;
        v13 = *(v34 + 48);
        v14 = *(v5 + 56);
        v15 = *(*(v5 + 48) + 8 * v9);
        v16 = sub_24381CA14();
        OUTLINED_FUNCTION_9();
        v18 = v17;
        v20 = v32;
        (*(v17 + 16))(&v32[v13], v14 + *(v19 + 72) * v9, v16);
        v21 = v33;
        *v33 = v15;
        v22 = *(v12 + 48);
        v7 = v39;
        (*(v18 + 32))(v21 + v22, &v20[v13], v16);
        sub_24381086C();
        v24 = v23;
        sub_24380B1F4(v21, &qword_27ED92EC0, &qword_24381D9E0);
        v40 = v7;
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = OUTLINED_FUNCTION_28_0(v25);
          sub_24380A00C(v28, v26 + 1, 1);
          v7 = v40;
        }

        *(v7 + 16) = v26 + 1;
        *(v7 + 8 * v26 + 32) = v24;
        v5 = v31;
        if (v9 >= -(-1 << *(v31 + 32)))
        {
          goto LABEL_18;
        }

        v10 = v30;
        if ((*(v30 + 8 * v38) & (1 << v9)) == 0)
        {
          goto LABEL_19;
        }

        if (v37 != *(v31 + 36))
        {
          goto LABEL_20;
        }

        v27 = sub_24381CE14();
        if (!v36)
        {
          goto LABEL_14;
        }

        v9 = v27;
        v8 = *(v5 + 36);
        v11 = v36 - 1;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_24381086C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  sub_24381C9A4();
  OUTLINED_FUNCTION_9();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v55 = v6;
  OUTLINED_FUNCTION_60();
  v7 = sub_24381C9F4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  sub_24381CA04();
  v61 = sub_24381C9E4();
  v62 = v16;
  v17 = *(v9 + 8);
  v58 = v7;
  v59 = v17;
  v17(v15, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  v60 = xmmword_24381D830;
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    goto LABEL_15;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v19;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v3;
  sub_24381CB24();
  swift_beginAccess();
  v20 = sub_243810D1C(v3, *(v1 + 24));
  v22 = v21;
  v24 = v23;
  swift_endAccess();
  if (v24)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930F8, &unk_24381DE80);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D25630])
  {
    goto LABEL_16;
  }

  *(v25 + 32) = sub_24381CB84();
  *(v25 + 40) = v26;
  *(v25 + 48) = v20;
  if (!*MEMORY[0x277D25638])
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v25 + 56) = sub_24381CB84();
  *(v25 + 64) = v27;
  if (__OFSUB__(v22, v20))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v25 + 72) = v22 - v20;
  v28 = sub_24381CB24();
  sub_243810D80(v28);

  swift_isUniquelyReferenced_nonNull_native();
  v29 = OUTLINED_FUNCTION_8_2();
  sub_24381867C(v29, v30, v31, v32, v33);
LABEL_7:
  v35 = v61;
  v34 = v62;
  if (sub_2438013D8(v61, v62))
  {
    sub_2437FF838(v35, v34);
LABEL_13:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED8, &qword_24381D9F8);
  v36 = swift_initStackObject();
  *(v36 + 16) = v60;
  if (!*MEMORY[0x277D25660])
  {
    goto LABEL_18;
  }

  *(v36 + 32) = sub_24381CB84();
  *(v36 + 40) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v38 + 32) = sub_24381CB84();
  *(v38 + 40) = v39;
  sub_24381CA04();
  v40 = sub_24381C9E4();
  v42 = v41;
  v59(v13, v58);
  *(v38 + 48) = v40;
  *(v38 + 56) = v42;
  if (*MEMORY[0x277D254F8])
  {
    *(v38 + 64) = sub_24381CB84();
    *(v38 + 72) = v43;
    v44 = v55;
    sub_24381C9C4();
    v45 = sub_24381C984();
    v47 = v46;
    (*(v56 + 8))(v44, v57);
    *(v38 + 80) = v45;
    *(v38 + 88) = v47;
    *(v36 + 48) = sub_24381CB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    v48 = sub_24381CB24();
    sub_24380143C(v48);

    swift_isUniquelyReferenced_nonNull_native();
    v49 = OUTLINED_FUNCTION_8_2();
    sub_24381867C(v49, v50, v51, v52, v53);
    sub_2437FF838(v61, v62);
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
}