char *sub_20B871ECC(uint64_t a1)
{
  v59 = a1;
  v61 = sub_20C134B14();
  v2 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C136F94();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_20C136C64();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 136);
  v65 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 112), v17);
  sub_20C13B174();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &qword_27C768690, &unk_20C14FD90);
    return MEMORY[0x277D84F90];
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_20C1369E4();
  v18 = v62;
  sub_20C136F34();
  sub_20B875EFC(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
  v19 = v64;
  v20 = sub_20C13DA74();
  v60 = v13;
  v21 = *(v63 + 1);
  v21(v18, v19);
  v21(v9, v19);
  if ((v20 & 1) == 0)
  {
    (*(v14 + 8))(v16, v60);
    return MEMORY[0x277D84F90];
  }

  v63 = v16;
  v64 = v14;
  v67 = MEMORY[0x277D84F90];
  v62 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems;
  v22 = *(v65 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems);
  v23 = *(v22 + 16);
  v24 = (v2 + 8);

  v26 = 0;
  v27 = v61;
  while (v23 != v26)
  {
    v28 = *(v22 + 16);
    if (v26 >= v28)
    {
      __break(1u);
      goto LABEL_46;
    }

    (*(v2 + 16))(v4, v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v27);
    v29 = sub_20C134AB4();
    v20 = v30;
    if (v29 == *(v65 + 240) && v30 == *(v65 + 248))
    {

      (*v24)(v4, v27);
LABEL_34:

      v25 = sub_20BC07748(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = *(v25 + 2);
      v28 = *(v25 + 3);
      v20 = v26 + 1;
      if (v26 < v28 >> 1)
      {
LABEL_35:
        v39 = v63;
        v38 = v64;
        v50 = v62;
        *(v25 + 2) = v20;
        v51 = &v25[16 * v26];
        *(v51 + 4) = 4;
        v51[40] = 2;
        v67 = v25;
        v52 = v60;
        goto LABEL_38;
      }

LABEL_46:
      v25 = sub_20BC07748((v28 > 1), v20, 1, v25);
      goto LABEL_35;
    }

    ++v26;
    v32 = sub_20C13DFF4();

    (*v24)(v4, v27);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  v34 = v59;
  v35 = *(v59 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v66 = MEMORY[0x277D84F90];
    sub_20BB5E2F4(0, v35, 0);
    v36 = v66;
    v37 = (v34 + 32);
    v39 = v63;
    v38 = v64;
    do
    {
      v41 = *v37++;
      v40 = v41;
      v42 = v41 == 37;
      if (v41 == 37)
      {
        v43 = 0;
      }

      else
      {
        v43 = v40;
      }

      if (v42)
      {
        v44 = 2;
      }

      else
      {
        v44 = 0;
      }

      if (v40 == 52)
      {
        v45 = 2;
      }

      else
      {
        v45 = v43;
      }

      if (v40 == 52)
      {
        v46 = 2;
      }

      else
      {
        v46 = v44;
      }

      v66 = v36;
      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_20BB5E2F4((v47 > 1), v48 + 1, 1);
        v36 = v66;
      }

      *(v36 + 16) = v48 + 1;
      v49 = v36 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      --v35;
    }

    while (v35);
  }

  else
  {
    v39 = v63;
    v38 = v64;
  }

  sub_20B8DA1D4(v36);
  v52 = v60;
  v50 = v62;
LABEL_38:
  v53 = *(*&v50[v65] + 16);
  if (v53)
  {
    v54 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_20BC07748(0, *(v54 + 2) + 1, 1, v54);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_20BC07748((v55 > 1), v56 + 1, 1, v54);
    }

    (*(v38 + 8))(v39, v60);
    result = v54;
    *(v54 + 2) = v56 + 1;
    v57 = &v54[16 * v56];
    *(v57 + 4) = v53;
    v57[40] = 1;
  }

  else
  {
    (*(v38 + 8))(v39, v52);
    return v67;
  }

  return result;
}

uint64_t sub_20B872540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v18 - v3;
  v5 = sub_20C132E94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  sub_20C138014();
  v10 = v0[7];
  v18[1] = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  (*(v7 + 16))(v12 + v11, v9, v6);
  sub_20BE8BBF4(v12);
  swift_setDeallocating();
  v13 = *(v7 + 8);
  v13(v12 + v11, v6);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  v14 = v19;
  v15 = sub_20C137CB4();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v15(sub_20B5DF6DC, v16);

  (*(v20 + 8))(v4, v14);
  return (v13)(v9, v6);
}

uint64_t sub_20B872864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v20 = v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_20C138034();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &qword_27C763EF8, &unk_20C15E830);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &qword_27C763EF8, &unk_20C15E830);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = v0[7];
  v19[1] = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  (*(v8 + 16))(v15 + v14, v10, v7);
  sub_20BE8BBF4(v15);
  swift_setDeallocating();
  v19[0] = *(v8 + 8);
  (v19[0])(v15 + v14, v7);
  swift_deallocClassInstance();
  v16 = v20;
  sub_20C13A1F4();

  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  (*(v2 + 8))(v16, v1);
  return (v19[0])(v10, v7);
}

void sub_20B872BF4(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = v51 - v4;
  v5 = sub_20C132E94();
  MEMORY[0x28223BE20](v5 - 8);
  v62 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1344C4();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  v71 = sub_20C134B14();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v51 - v17;
  v19 = sub_20C135AE4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v63 = v21;
  v64 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v51 - v23;
  v25 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v25, v18, &qword_27C7620C8, &unk_20C14FB80);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20B520158(v18, &qword_27C7620C8, &unk_20C14FB80);
    return;
  }

  v26 = *(v20 + 32);
  v26(v24, v18, v19);
  v72 = *(v2 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20B8746BC(&v72);
  v54 = v26;
  v57 = v19;

  v27 = *(v72 + 16);
  v58 = v2;
  v56 = v20;
  v55 = v20 + 32;
  if (!v27)
  {

    v52 = 0;
    goto LABEL_7;
  }

  v28 = v69;
  v29 = v71;
  (*(v69 + 16))(v15, v72 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v69 + 72) * (v27 - 1), v71);

  v30 = sub_20C134AD4();
  (*(v28 + 8))(v15, v29);
  if (v30 != -1)
  {
    v52 = v30 + 1;
LABEL_7:
    sub_20C135AA4();
    v51[1] = sub_20C134324();
    v31 = v61;
    v32 = *(v60 + 8);
    v32(v11, v61);
    v53 = v24;
    sub_20C135AA4();
    sub_20C1344B4();
    v32(v11, v31);
    v33 = v59;
    sub_20C135AA4();
    sub_20C134464();
    v32(v33, v31);
    sub_20C132E64();
    v34 = v70;
    sub_20C134AA4();
    __swift_project_boxed_opaque_existential_1((v58 + 200), *(v58 + 224));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
    v35 = *(sub_20C1351C4() - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_20C14F980;
    v38 = v69;
    (*(v69 + 16))(v37 + v36, v34, v71);
    swift_storeEnumTagMultiPayload();
    v39 = v66;
    sub_20C139734();

    v40 = swift_allocObject();
    swift_weakInit();
    v41 = v56;
    v42 = v64;
    v43 = v53;
    v44 = v57;
    (*(v56 + 16))(v64, v53, v57);
    v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v46 = (v63 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v54(v47 + v45, v42, v44);
    *(v47 + v46) = v40;
    v48 = v68;
    v49 = sub_20C137CB4();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B875E1C;
    *(v50 + 24) = v47;

    v49(sub_20B5DF6DC, v50);

    (*(v67 + 8))(v39, v48);
    (*(v38 + 8))(v70, v71);
    (*(v41 + 8))(v43, v44);
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_20B873458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20C1344C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135AA4();
  v7 = sub_20C1344B4();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v14[0] = v7;
  v14[1] = v9;
  v15 = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00, &unk_20C15E820);
  sub_20C133BD4();
  sub_20B583F4C(v7, v9, v11 & 1);
  if (v16 != 4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_20B595E60();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_20B8735E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v39 - v2;
  v3 = sub_20C134B14();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  MEMORY[0x28223BE20](v8);
  v42 = &v39 - v9;
  v43 = v10;
  MEMORY[0x28223BE20](v11);
  v47 = &v39 - v12;
  v51 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = 0;
    v49 = (v52 + 8);
    v50 = v52 + 16;
    while (v15 < *(v13 + 16))
    {
      v16 = *(v52 + 80);
      v17 = *(v52 + 16);
      v17(v7, v13 + ((v16 + 32) & ~v16) + *(v52 + 72) * v15, v3);
      if (sub_20C134AB4() == v51[30] && v18 == v51[31])
      {

LABEL_12:

        v21 = *(v52 + 32);
        v52 += 32;
        v40 = ~v16;
        v41 = v21;
        v22 = v42;
        v21(v42, v7, v3);
        v23 = v47;
        v21(v47, v22, v3);
        v24 = v51[29];
        v39 = v51[28];
        v42 = v24;
        __swift_project_boxed_opaque_existential_1(v51 + 25, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
        v25 = v3;
        v26 = *(sub_20C1351C4() - 8);
        v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_20C14F980;
        v17((v28 + v27), v23, v3);
        swift_storeEnumTagMultiPayload();
        sub_20C139734();

        v29 = swift_allocObject();
        swift_weakInit();
        v30 = v44;
        v17(v44, v23, v3);
        v31 = (v16 + 16) & v40;
        v32 = (v43 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = swift_allocObject();
        v34 = v52;
        v41(v33 + v31, v30, v25);
        *(v33 + v32) = v29;
        v35 = v46;
        v36 = v48;
        v37 = sub_20C137CB4();
        v38 = swift_allocObject();
        *(v38 + 16) = sub_20B875D4C;
        *(v38 + 24) = v33;

        v37(sub_20B52347C, v38);

        (*(v45 + 8))(v36, v35);
        (*(v34 - 24))(v47, v25);
        return;
      }

      v20 = sub_20C13DFF4();

      if (v20)
      {
        goto LABEL_12;
      }

      ++v15;
      (*v49)(v7, v3);
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

double sub_20B873B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20C134B04();
  v5 = v4;
  v7 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00, &unk_20C15E820);
  sub_20C133BD4();
  sub_20B583F4C(v3, v5, v7);
  if (v10 != 4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_20B596048(v10);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20B873C0C(uint64_t a1, char a2)
{
  v3 = v2;
  v41 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_20C1333A4();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_20C1352E4();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v41 - v20;
  v22 = sub_20C134F24();
  v23.n128_f64[0] = MEMORY[0x28223BE20](v22);
  v45 = v3;
  v46 = v9;
  v52 = v3;
  v48 = v6;
  v49 = v7;
  v26 = v25;
  v27 = *(v25 + 104);
  v43 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v28;
  v27(v23);
  v29 = *MEMORY[0x277D52B30];
  v30 = sub_20C136664();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v21, v29, v30);
  (*(v31 + 56))(v21, 0, 1, v30);
  v32 = sub_20C132C14();
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  (*(v50 + 104))(v15, *MEMORY[0x277D51768], v51);
  v42 = v26;
  v33 = *MEMORY[0x277D523D8];
  v34 = sub_20C135ED4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v12, v33, v34);
  (*(v35 + 56))(v12, 0, 1, v34);
  v36 = v46;
  sub_20B80D384(v46);
  v37 = sub_20C136E94();
  v38 = v48;
  (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
  type metadata accessor for TVWorkoutDetailMenuPresenter(0);
  sub_20B875EFC(&qword_27C766BF8, type metadata accessor for TVWorkoutDetailMenuPresenter, &unk_20C15E7F8);
  v39 = v43;
  sub_20C138DA4();

  sub_20B520158(v38, &unk_27C76BC90, &unk_20C1586D0);
  (*(v47 + 8))(v36, v49);
  sub_20B520158(v12, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v50 + 8))(v15, v51);
  sub_20B520158(v18, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v21, &unk_27C7622E0, &unk_20C14FCF0);
  return (*(v42 + 8))(v39, v44);
}

void *sub_20B874394()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  __swift_destroy_boxed_opaque_existential_1(v0 + 25);

  sub_20B583E6C((v0 + 33));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark, &qword_27C763EF8, &unk_20C15E830);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_workoutDetail, &qword_27C7620C8, &unk_20C14FB80);

  return v0;
}

uint64_t sub_20B87444C()
{
  sub_20B874394();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutDetailMenuPresenter(uint64_t a1)
{
  result = qword_27C766BE0;
  if (!qword_27C766BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8744F8(uint64_t a1)
{
  sub_20B87463C(319, &qword_27C766BF0, MEMORY[0x277D53BA0]);
  if (v1 <= 0x3F)
  {
    sub_20B87463C(319, &qword_27C762120, MEMORY[0x277D51E68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B87463C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20B8746BC(uint64_t *a1)
{
  v2 = *(sub_20C134B14() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DBC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B874764(v5);
  *a1 = v3;
}

void sub_20B874764(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134B14();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134B14() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B874B38(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B874890(0, v2, 1, a1);
  }
}

void sub_20B874890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C134B14();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C134AD4();
      v28 = sub_20C134AD4();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B874B38(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134B14();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20B87551C(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C134AD4();
      v126 = sub_20C134AD4();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C134AD4();
        v39 = sub_20C134AD4();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20B87551C(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C134AD4();
    v104 = sub_20C134AD4();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20B87551C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134B14();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C134AD4();
          v45 = sub_20C134AD4();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C134AD4();
        v26 = sub_20C134AD4();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07B4(&v64, &v63, &v62);
}

void *sub_20B875AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark;
  v9 = sub_20C138034();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_workoutDetail;
  v11 = sub_20C135AE4();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + 16) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v13, v4 + 152);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 192) = sub_20C13A914();
  *(v4 + 240) = a2;
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  return v4;
}

uint64_t objectdestroy_18Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_20B875E48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_20B875EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20B876074(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_upNextQueueItems) = *a1;
}

uint64_t sub_20B8760D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void SessionViewController.playerViewController(_:willTransitionToVisibilityOfPlaybackControls:with:)(uint64_t a1, char a2, void *a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v8[4] = sub_20B8764FC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_29;
  v7 = _Block_copy(v8);

  [a3 addCoordinatedAnimations:v7 completion:0];
  _Block_release(v7);
}

void sub_20B8762C4(char a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B574();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_20B517000, v7, v8, "player willTransitionToVisibilityOfPlaybackControls: %{BOOL}d", v9, 8u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    swift_unknownObjectRetain();

    sub_20B6776DC((a1 & 1) == 0);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v14 = v12;
    v15 = *(v12 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v13 + 240))(a1 & 1, ObjectType, v13);
  }
}

uint64_t sub_20B87664C(void *a1)
{
  v2 = [a1 mediaCharacteristic];
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  v3 = sub_20C13C954();
  v5 = v4;
  if (v3 == sub_20C13C954() && v5 == v6)
  {

    return 0;
  }

  else
  {
    v8 = sub_20C13DFF4();

    result = 0;
    if ((v8 & 1) == 0)
    {
      v10 = [a1 mediaCharacteristic];
      if (qword_27C7607D8 != -1)
      {
        swift_once();
      }

      v11 = sub_20C13C954();
      v13 = v12;
      if (v11 == sub_20C13C954() && v13 == v14)
      {

        return 1;
      }

      else
      {
        v15 = sub_20C13DFF4();

        if (v15)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20B8768AC(void *a1)
{
  v109 = sub_20C13BB84();
  v2 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13B074();
  v127 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v125 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20C1391E4();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134C44();
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = &v96 - v19;
  v111 = sub_20C135D24();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v113 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20C134F74();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = &v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v26 - 8);
  v107 = &v96 - v27;
  v28 = sub_20C1333A4();
  v132 = *(v28 - 8);
  v133 = v28;
  MEMORY[0x28223BE20](v28);
  v131 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v30 - 8);
  v105 = &v96 - v31;
  v103 = sub_20C1352E4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v104 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v33 - 8);
  v106 = &v96 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v96 - v36;
  v38 = sub_20C134F24();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v96 - v43;
  v45 = sub_20C133654();
  v129 = *(v45 - 8);
  v130 = v45;
  MEMORY[0x28223BE20](v45);
  v128 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20B87664C(a1);
  if (v47 == 2)
  {
    sub_20C13B544();
    v48 = a1;
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_20B517000, v49, v50, "Player didSelect mediaPresentationSetting: %@ is not an Audio Focus selection", v51, 0xCu);
      sub_20B64F5CC(v52);
      MEMORY[0x20F2F6A40](v52, -1, -1);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    return (*(v2 + 8))(v4, v109);
  }

  else
  {
    v109 = v5;
    v55 = 0xEF636973754D7375;
    v56 = 0x636F466F69647541;
    v101 = v47;
    v57 = sub_20C135464();
    v59 = v58;
    if (v57 == sub_20C135464() && v59 == v60)
    {

      v100 = 0x636F466F69647541;
    }

    else
    {
      v61 = sub_20C13DFF4();

      if ((v61 & 1) == 0)
      {
        v56 = 0xD000000000000011;
      }

      v100 = v56;
      if ((v61 & 1) == 0)
      {
        v55 = 0x800000020C19DAD0;
      }
    }

    v99 = v55;
    v62 = *MEMORY[0x277D52B38];
    v63 = sub_20C136664();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v44, v62, v63);
    (*(v64 + 56))(v44, 0, 1, v63);
    (*(v39 + 104))(v41, *MEMORY[0x277D51450], v38);
    v65 = sub_20C132C14();
    v66 = *(v65 - 8);
    v97 = *(v66 + 56);
    v98 = v66 + 56;
    v67 = v37;
    v97(v37, 1, 1, v65);
    v68 = sub_20C135ED4();
    v96 = *(*(v68 - 8) + 56);
    v69 = v106;
    v96(v106, 1, 1, v68);
    (*(v102 + 104))(v104, *MEMORY[0x277D51768], v103);
    v70 = sub_20C136E94();
    (*(*(v70 - 8) + 56))(v105, 1, 1, v70);
    v71 = v128;
    sub_20C133644();
    v72 = *MEMORY[0x277D517C0];
    v73 = sub_20C1352F4();
    v74 = *(v73 - 8);
    v75 = v107;
    (*(v74 + 104))(v107, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v97(v67, 1, 1, v65);
    v96(v69, 1, 1, v68);
    v76 = sub_20C136914();
    (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
    v77 = v131;
    sub_20C133384();
    v78 = v113;
    (*(v129 + 16))(v113, v71, v130);
    (*(v110 + 104))(v78, *MEMORY[0x277D52120], v111);
    v79 = v132;
    v80 = v114;
    v81 = v77;
    v82 = v133;
    (*(v132 + 16))(v114, v81, v133);
    (*(v79 + 56))(v80, 0, 1, v82);
    v83 = sub_20C135664();
    (*(*(v83 - 8) + 56))(v115, 1, 1, v83);
    v84 = sub_20C135674();
    (*(*(v84 - 8) + 56))(v118, 1, 1, v84);
    v85 = v120;
    sub_20C134F94();
    v86 = sub_20C134FB4();
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
    (*(*(v87 - 8) + 56))(v121, 1, 1, v87);
    v88 = sub_20C135F14();
    (*(*(v88 - 8) + 56))(v122, 1, 1, v88);
    v89 = v116;
    sub_20C134F54();
    v90 = v117;
    v91 = v119;
    (*(v117 + 16))(v112, v89, v119);
    v92 = v123;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20B877A50();
    v93 = v126;
    sub_20C13A764();
    v94 = v125;
    sub_20C13B064();
    v95 = v109;
    sub_20C13A764();
    (*(v127 + 8))(v94, v95);
    (*(v124 + 8))(v92, v93);
    (*(v90 + 8))(v89, v91);
    (*(v132 + 8))(v131, v133);
    return (*(v129 + 8))(v128, v130);
  }
}

unint64_t sub_20B877A50()
{
  result = qword_281103B30;
  if (!qword_281103B30)
  {
    sub_20C1391E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103B30);
  }

  return result;
}

void *sub_20B877AD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v5;
  (*(a5 + 8))(a3, a5, v12);
  sub_20B5E2E18();
  *v14 = sub_20C13D374();
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v15 = sub_20C13C584();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = sub_20B5E2B78(a1, a2);
    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B877C48()
{
  v1 = [v0 attributedText];

  return v1;
}

void sub_20B877C80(void *a1)
{
  [v1 setAttributedText_];
}

id sub_20B877DAC(double a1, double a2, double a3, double a4)
{
  v148 = sub_20C13BBC4();
  v147 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v140 - v12;
  v146 = sub_20C13BC44();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30, &qword_20C15EA20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v140 - v16;
  v18 = sub_20C13BD14();
  v19 = *(v18 - 8);
  v149 = v18;
  v150 = v19;
  MEMORY[0x28223BE20](v18);
  v151 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  v22 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v22 - 8) + 56))(&v4[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  type metadata accessor for RoundedIconView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v25] = v26;
  v27 = &v4[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  sub_20B879E14(v156);
  v28 = v156[3];
  *(v27 + 2) = v156[2];
  *(v27 + 3) = v28;
  *(v27 + 8) = v157;
  v29 = v156[1];
  *v27 = v156[0];
  *(v27 + 1) = v29;
  *(v27 + 72) = xmmword_20C15E8F0;
  *(v27 + 88) = xmmword_20C15E900;
  *(v27 + 13) = 0x4014000000000000;
  v30 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  *&v4[v30] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setAdjustsFontForContentSizeCategory_];
  *&v4[v32] = v33;
  v34 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  *&v4[v34] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v35 = type metadata accessor for WeekdayPlannerModalityCell(0);
  v155.receiver = v4;
  v155.super_class = v35;
  v36 = objc_msgSendSuper2(&v155, sel_initWithFrame_, a1, a2, a3, a4);
  v37 = v151;
  sub_20C13BCC4();
  v38 = &v36[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  v39 = *&v36[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider];
  sub_20C13BCD4();
  v40 = v149;
  v41 = v150;
  (*(v150 + 16))(v17, v37, v149);
  (*(v41 + 56))(v17, 0, 1, v40);
  v42 = v36;
  MEMORY[0x20F2F4B70](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v43 = sub_20C13BBF4();
  (*(*(v43 - 8) + 56))(v144, 1, 1, v43);
  v44 = [objc_opt_self() secondaryLabelColor];
  sub_20C13BC34();
  v45 = v147;
  v46 = v148;
  (*(v147 + 104))(v10, *MEMORY[0x277D74A98], v148);
  sub_20C13BC04();
  (*(v45 + 8))(v10, v46);
  (*(v145 + 8))(v14, v146);
  sub_20C13D464();

  v47 = v42;
  [v47 directionalLayoutMargins];
  [v47 setDirectionalLayoutMargins_];
  v48 = [v47 layer];
  [v48 setCornerRadius_];

  v49 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView) setBackgroundColor_];
  [*(v47 + v49) setTintColor_];
  v50 = [v47 contentView];
  [v50 addSubview_];

  v51 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel) setFont_];
  [*(v47 + v51) setTextColor_];
  v52 = *(v47 + v51);
  v144 = v51;
  LODWORD(v53) = 1148846080;
  [v52 setContentCompressionResistancePriority:1 forAxis:v53];
  v54 = [v47 &selRef_setMaximumFractionDigits_];
  [v54 addSubview_];

  v55 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  [*(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel) setFont_];
  [*(v47 + v55) setTextColor_];
  v56 = *(v47 + v55);
  v57 = v55;
  v145 = v55;
  LODWORD(v58) = 1148846080;
  [v56 setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = [v47 &selRef_setMaximumFractionDigits_];
  [v59 addSubview_];

  v60 = *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator);
  v61 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v146 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  [v60 setBackgroundColor_];
  v62 = [v47 &selRef_setMaximumFractionDigits_];
  [v62 addSubview_];

  v63 = [*(v47 + v61) heightAnchor];
  v64 = [v47 window];

  sub_20C138804();
  v66 = v65;

  v67 = [v63 constraintEqualToConstant_];
  v147 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  v68 = *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint);
  *(v47 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint) = v67;

  v148 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C15E910;
  v70 = [*(v47 + v49) leadingAnchor];
  v71 = [v47 &selRef_setMaximumFractionDigits_];
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 constant:*(v38 + 9)];
  *(v69 + 32) = v73;
  v74 = [*(v47 + v49) widthAnchor];
  v75 = [*(v47 + v49) heightAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v69 + 40) = v76;
  v77 = [*(v47 + v49) topAnchor];
  v78 = [v47 &selRef_setMaximumFractionDigits_];
  v79 = [v78 &selRef_setLineBreakMode_];

  v80 = [v77 constraintEqualToAnchor:v79 constant:*(v38 + 13)];
  *(v69 + 48) = v80;
  v81 = [*(v47 + v49) bottomAnchor];
  v82 = [v47 &selRef_setMaximumFractionDigits_];
  v83 = [v82 &selRef_secondaryLabel + 5];

  v84 = [v81 constraintLessThanOrEqualToAnchor:v83 constant:-*(v38 + 13)];
  type metadata accessor for UILayoutPriority(0);
  v86 = v85;
  v152 = 1065353216;
  v153 = 1148846080;
  v143 = sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v87) = v154;
  [v84 setPriority_];
  *(v69 + 56) = v84;
  v88 = [*(v47 + v49) centerYAnchor];
  v89 = [v47 &selRef_setMaximumFractionDigits_];
  v90 = [v89 centerYAnchor];

  v91 = [v88 constraintEqualToAnchor_];
  v152 = 0x40000000;
  v153 = 1148846080;
  v142 = v86;
  sub_20C13BBA4();
  LODWORD(v92) = v154;
  [v91 setPriority_];
  *(v69 + 64) = v91;
  v93 = [*(v47 + v49) heightAnchor];
  v94 = [v93 constraintEqualToConstant_];

  *(v69 + 72) = v94;
  v95 = v144;
  v96 = [*&v144[v47] leadingAnchor];
  v97 = *(v47 + v49);
  v141 = v49;
  v98 = [v97 trailingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98 constant:*(v38 + 11)];

  *(v69 + 80) = v99;
  v100 = [*&v95[v47] trailingAnchor];
  v101 = [v47 contentView];
  v102 = [v101 trailingAnchor];

  v103 = [v100 constraintEqualToAnchor:v102 constant:-*(v38 + 9)];
  *(v69 + 88) = v103;
  v104 = [*&v95[v47] topAnchor];
  v105 = [*(v47 + v49) topAnchor];
  v106 = [v104 &selRef_passwordEntryCancelledHandler + 6];

  *(v69 + 96) = v106;
  v107 = v145;
  v108 = [*(v47 + v145) leadingAnchor];
  v109 = [*&v95[v47] leadingAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v69 + 104) = v110;
  v111 = [*(v47 + v107) trailingAnchor];
  v112 = [*&v95[v47] trailingAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v69 + 112) = v113;
  v114 = [*(v47 + v107) topAnchor];
  v115 = [*&v95[v47] bottomAnchor];
  v116 = [v114 constraintGreaterThanOrEqualToAnchor_];

  *(v69 + 120) = v116;
  v117 = [*(v47 + v107) bottomAnchor];
  v118 = [v47 contentView];
  v119 = [v118 bottomAnchor];

  v120 = [v117 constraintEqualToAnchor:v119 constant:-*(v38 + 12)];
  *(v69 + 128) = v120;
  v121 = [*(v47 + v107) bottomAnchor];
  v122 = [*(v47 + v141) bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-*(v38 + 12)];

  v152 = 0x40000000;
  v153 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v124) = v154;
  [v123 setPriority_];
  *(v69 + 136) = v123;
  v125 = v146;
  v126 = [*(v47 + v146) leadingAnchor];
  v127 = [*&v95[v47] leadingAnchor];
  v128 = [v126 constraintEqualToAnchor_];

  *(v69 + 144) = v128;
  v129 = [*(v47 + v125) trailingAnchor];
  v130 = [v47 trailingAnchor];

  v131 = [v129 constraintEqualToAnchor_];
  *(v69 + 152) = v131;
  v132 = [*(v47 + v125) &selRef_secondaryLabel + 5];
  v133 = [v47 contentView];

  v134 = [v133 &selRef_secondaryLabel + 5];
  v135 = [v132 constraintEqualToAnchor_];

  *(v69 + 160) = v135;
  v136 = *(v47 + v147);
  *(v69 + 168) = v136;
  sub_20B5E29D0();
  v137 = v136;
  v138 = sub_20C13CC54();

  [v148 activateConstraints_];

  (*(v150 + 8))(v151, v149);
  return v47;
}

id sub_20B8792CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WeekdayPlannerModalityCell(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerModalityCell(uint64_t a1)
{
  result = qword_281101330;
  if (!qword_281101330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B879468(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B879524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_20B87956C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B8795D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B879624@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B87967C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B8796E0(uint64_t a1, void *a2)
{
  sub_20C1380F4();
  v3 = sub_20C138104();
  v4 = sub_20C138104();
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = 48.0;
  if (v3 == v4)
  {
    v7 = 72.0;
  }

  return v6 - v7;
}

void sub_20B879778(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x42)
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    if (v15 == 2)
    {
      v16 = *(v11 + 41);
      v17 = *&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView];
      v18 = v13;
      v55 = v14;
      sub_20B9C7E94(v12);
      v19 = sub_20C13C914();

      v20 = [objc_opt_self() smm:v19 systemImageNamed:?];

      v21 = [v20 imageWithRenderingMode_];
      [*(v17 + OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView) setImage_];

      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel] setAttributedText_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel] setAttributedText_];
      v22 = [v1 layer];
      [v22 setMaskedCorners_];

      if (v16)
      {
        v23 = v16 == 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = !v23;
      [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator] setHidden_];

      v25 = v55;
    }

    else
    {
      v55 = v3;
      sub_20C13B534();
      sub_20B7C3220(v12, v13, v14, v15);
      v39 = v1;
      v40 = sub_20C13BB74();
      v41 = sub_20C13D1D4();

      sub_20B7C3288(v12, v13, v14, v15);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v40;
        v43 = v52;
        v54 = swift_slowAlloc();
        v58 = v54;
        *v42 = 138543874;
        *(v42 + 4) = v39;
        *v43 = v39;
        *(v42 + 12) = 2160;
        *(v42 + 14) = 1752392040;
        *(v42 + 22) = 2080;
        v56[0] = v12;
        v56[1] = v13;
        v56[2] = v14;
        v57 = v15;
        v44 = sub_20B879DC0();
        v45 = v39;
        v46 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v44);
        v48 = sub_20B51E694(v46, v47, &v58);

        *(v42 + 24) = v48;
        v40 = v53;
        _os_log_impl(&dword_20B517000, v53, v41, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v42, 0x20u);
        v49 = v52;
        sub_20B520158(v52, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v49, -1, -1);
        v50 = v54;
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x20F2F6A40](v50, -1, -1);
        MEMORY[0x20F2F6A40](v42, -1, -1);
      }

      (*(v4 + 8))(v10, v55);
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel] setAttributedText_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel] setAttributedText_];
    [*(*&v1[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView] + OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView) setImage_];
    v26 = [v1 layer];
    [v26 setMaskedCorners_];

    sub_20C13B534();

    v27 = v1;
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v3;
      v56[0] = v32;
      v33 = v32;
      *v30 = 138543874;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2080;
      v58 = a1;
      v34 = sub_20B5F66D0();
      v35 = v27;
      v36 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v34);
      v38 = sub_20B51E694(v36, v37, v56);

      *(v30 + 24) = v38;
      _os_log_impl(&dword_20B517000, v28, v29, "Attempted to configure %{public}@ with item: %{mask.hash}s", v30, 0x20u);
      sub_20B520158(v31, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);

      (*(v4 + 8))(v6, v55);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

unint64_t sub_20B879DC0()
{
  result = qword_27C766CB0;
  if (!qword_27C766CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766CB0);
  }

  return result;
}

id sub_20B879E14@<X0>(void *a1@<X8>)
{
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v2 = qword_27C760710;
  v31 = qword_27C79A1B0;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79A1B8;
  v4 = objc_opt_self();
  v30 = v3;
  v29 = [v4 systemGray4Color];
  v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v27 = [v4 separatorColor];
  v5 = *MEMORY[0x277D769D0];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = objc_opt_self();
  v26 = [v10 fontWithDescriptor:v7 size:0.0];

  v25 = [v4 secondaryLabelColor];
  v11 = *MEMORY[0x277D74420];
  v12 = [v6 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v15 = swift_initStackObject();
  v16 = MEMORY[0x277D74430];
  *(v15 + 16) = xmmword_20C14F980;
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = v11;
  v18 = v14;
  v19 = v17;
  v20 = sub_20B6B134C(v15);
  swift_setDeallocating();
  sub_20B520158(v15 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v20;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v21 = sub_20C13C744();

  v22 = [v12 fontDescriptorByAddingAttributes_];

  v23 = [v10 fontWithDescriptor:v22 size:0.0];
  result = [v4 whiteColor];
  *a1 = v31;
  a1[1] = v30;
  a1[2] = v29;
  a1[3] = v28;
  a1[4] = v27;
  a1[5] = v26;
  a1[6] = v25;
  a1[7] = v23;
  a1[8] = result;
  return result;
}

void sub_20B87A234()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_iconView;
  type metadata accessor for RoundedIconView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separator;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_styleProvider;
  sub_20B879E14(v15);
  v8 = v15[3];
  *(v7 + 32) = v15[2];
  *(v7 + 48) = v8;
  *(v7 + 64) = v16;
  v9 = v15[1];
  *v7 = v15[0];
  *(v7 + 16) = v9;
  *(v7 + 72) = xmmword_20C15E8F0;
  *(v7 + 88) = xmmword_20C15E900;
  *(v7 + 104) = 0x4014000000000000;
  v10 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B87A470(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_20B87A4B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL sub_20B87A518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
    return sub_20C13D5F4() & 1;
  }

  return result;
}

uint64_t sub_20B87A588()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state);
  if (v3)
  {
    sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator, &v21);
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    v5 = *(v4 + 24);
    v6 = v3;
    v5();

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  sub_20B583E6C(v0 + 16);
  v7 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_identifier;
  v8 = sub_20C132EE4();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  sub_20B880DDC(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v30 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v26 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v28 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v22 = v12;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
  v24 = v13;
  sub_20B520158(&v21, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription, &unk_27C762390, &unk_20C15EC90);
  v14 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_content;
  v15 = sub_20C135EB4();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
  v17 = sub_20C135E14();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader));
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient));
  v18 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf__marketingBannerEnabled;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  return v1;
}

uint64_t sub_20B87A85C()
{
  sub_20B87A588();

  return swift_deallocClassInstance();
}

void sub_20B87A8DC(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MarketingHeaderBannerShelf.BannerSource(319);
    if (v2 <= 0x3F)
    {
      sub_20B87D5A8(319);
      if (v3 <= 0x3F)
      {
        sub_20C135EB4();
        if (v4 <= 0x3F)
        {
          sub_20C135E14();
          if (v5 <= 0x3F)
          {
            sub_20B52432C();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20B87AAF0(char *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v74 = a2;
  v75 = a1;
  v8 = sub_20C13BB84();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20C135E74();
  MEMORY[0x28223BE20](v72);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137124();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = sub_20C1362B4();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  v73 = v5;
  sub_20B880D74(v5 + v27, v26, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
  v29 = *(*(v28 - 8) + 48);
  v76 = v26;
  v30 = v29(v26, 2, v28);
  if (v30)
  {
    v31 = v73;
    v32 = v75;
    if (v30 != 1)
    {
      if (sub_20C135D64() == v32 && v33 == v74)
      {
      }

      else
      {
        v57 = sub_20C13DFF4();

        if ((v57 & 1) == 0)
        {
          return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
        }
      }

      if ((*(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds + 8) & 1) == 0 && *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds) <= a3)
      {
        v58 = *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
        v59 = *(v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
        __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v58);
        (*(v59 + 72))(v32, v74, v58, v59);
      }
    }
  }

  else
  {
    v34 = v71;
    v64 = v14;
    v65 = v12;
    sub_20B880D74(v76, v23, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);

    v35 = v70;
    v36 = *(v70 + 32);
    v66 = v18;
    v36(v20, v23, v18);
    if (sub_20C136234() == v75 && v37 == v74)
    {

      v38 = v11;
    }

    else
    {
      v39 = sub_20C13DFF4();

      v38 = v11;
      if ((v39 & 1) == 0)
      {
        (*(v35 + 8))(v20, v66);
        return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
      }
    }

    sub_20C136284();
    v40 = v35;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = v20;
      v41 = v34;
      v42 = a3 / a4;
      v43 = v17;
      v44 = v65;
      (*(v34 + 32))(v17, v38, v65);
      sub_20C137104();
      v45 = v66;
      if (v46 <= v42)
      {
        v60 = *(v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
        __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), *(v73 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24));
        v61 = sub_20C1370D4();
        (*(v60 + 40))(v61);

        (*(v34 + 8))(v43, v44);
        (*(v40 + 8))(v75, v45);
      }

      else
      {
        v47 = v17;
        v48 = v67;
        sub_20C13B424();
        v49 = v64;
        (*(v41 + 16))(v64, v17, v44);
        v50 = sub_20C13BB74();
        v51 = sub_20C13D1F4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = v41;
          v53 = swift_slowAlloc();
          *v53 = 134349312;
          *(v53 + 4) = v42;
          *(v53 + 12) = 2050;
          sub_20C137104();
          v55 = v54;
          v56 = *(v52 + 8);
          v56(v49, v44);
          *(v53 + 14) = v55;
          _os_log_impl(&dword_20B517000, v50, v51, "Banner video was not watched long enough to report event: %{public}f %{public}f", v53, 0x16u);
          MEMORY[0x20F2F6A40](v53, -1, -1);

          (*(v68 + 8))(v48, v69);
          v56(v47, v44);
        }

        else
        {

          v62 = *(v41 + 8);
          v62(v49, v44);
          (*(v68 + 8))(v48, v69);
          v62(v47, v44);
        }

        (*(v40 + 8))(v75, v66);
      }
    }

    else
    {
      (*(v35 + 8))(v20, v66);
      sub_20B880DDC(v38, MEMORY[0x277D52358]);
    }
  }

  return sub_20B880DDC(v76, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
}

uint64_t sub_20B87B268(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_20C132C14();
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = v6;
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v65 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v65 - v11;
  v73 = v12;
  MEMORY[0x28223BE20](v13);
  v77 = &v65 - v14;
  v15 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C1362B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  sub_20B880D74(v2 + v24, v17, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
  v26 = (*(*(v25 - 8) + 48))(v17, 2, v25);
  v67 = v18;
  if (v26)
  {
    sub_20B880DDC(v17, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v27 = v79;
  }

  else
  {

    (*(v19 + 32))(v23, v17, v18);
    v27 = v79;
    v28 = sub_20C136254();
    result = (*(v19 + 8))(v23, v18);
    if (v28)
    {
      return result;
    }
  }

  v65 = v2;
  *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 1;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader), *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader + 24));
  v30 = v3;
  v31 = v27;
  sub_20C136294();
  v32 = sub_20C132BD4();
  v34 = v33;
  (*(v68 + 8))(v5, v30);
  v35 = v69;
  v36 = off_2822D4BB8[0];
  type metadata accessor for LocalImageLoader();
  v36(v32, v34);

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v66;
  v39 = v31;
  v40 = v67;
  (*(v19 + 16))(v66, v39, v67);
  v41 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  (*(v19 + 32))(v42 + v41, v38, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_20B88110C;
  *(v43 + 24) = v42;
  v44 = v71;
  v45 = v72;
  v46 = v80;
  v47 = v74;
  (*(v72 + 16))(v71, v80, v74);
  v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = (v70 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v45 + 32))(v50 + v48, v44, v47);
  v51 = (v50 + v49);
  *v51 = sub_20B5F67A4;
  v51[1] = v43;
  v52 = v76;
  sub_20C137C94();
  (*(v45 + 8))(v46, v47);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20B8811B4;
  *(v54 + 24) = v53;
  v55 = v75;
  v56 = v78;
  (*(v35 + 16))(v75, v52, v78);
  v57 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v58 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v35 + 32))(v59 + v57, v55, v56);
  v60 = (v59 + v58);
  *v60 = sub_20B5F7764;
  v60[1] = v54;
  v61 = v77;
  sub_20C137C94();
  v62 = *(v35 + 8);
  v62(v52, v56);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B5DF6DC, v64);

  return (v62)(v61, v56);
}

double sub_20B87BA8C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
    v13 = *(v12 + 48);
    v14 = sub_20C1362B4();
    (*(*(v14 - 8) + 16))(v7, a3, v14);
    *&v7[v13] = v8;
    (*(*(v12 - 8) + 56))(v7, 0, 2, v12);
    v15 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    v16 = v8;
    sub_20B880FE8(v7, v11 + v15);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B87BDD4();
  }

  return result;
}

double sub_20B87BC78(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v8 = v6;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
    (*(*(v9 - 8) + 56))(v4, 2, 2, v9);
    v10 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880FE8(v4, v8 + v10);
    swift_endAccess();
    sub_20B87BDD4();
  }

  return result;
}

void sub_20B87BDD4()
{
  v1 = v0;
  v163 = sub_20C132C14();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v164 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C554();
  v166 = *(v3 - 8);
  v167 = v3;
  MEMORY[0x28223BE20](v3);
  v165 = (&v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = sub_20C1362B4();
  v172 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v174 = *(v6 - 8);
  v175 = v6;
  MEMORY[0x28223BE20](v6);
  v173 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v169 = &v159 - v9;
  v10 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  v170 = *(v12 - 1);
  v171 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C135734();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v1;
  sub_20B52F9E8(v23, v21, &unk_27C762390, &unk_20C15EC90);
  if ((*(v16 + 48))(v21, 1, v15))
  {
    sub_20B520158(v21, &unk_27C762390, &unk_20C15EC90);
    goto LABEL_10;
  }

  v26 = v168;
  v25 = v169;
  v27 = v172;
  (*(v16 + 16))(v18, v21, v15);
  sub_20B520158(v21, &unk_27C762390, &unk_20C15EC90);
  sub_20C132E84();
  v28 = sub_20C135704();
  (*(v170 + 8))(v14, v171);
  (*(v16 + 8))(v18, v15);
  if (v28)
  {
    if (*(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading))
    {
      return;
    }

    v29 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880D74(v24 + v29, v26, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
    v31 = (*(*(v30 - 8) + 48))(v26, 2, v30);
    if (v31)
    {
      if (v31 == 1)
      {
        sub_20C13B424();
        v32 = sub_20C13BB74();
        v33 = sub_20C13D1F4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_20B517000, v32, v33, "Engagement banner still initializing", v34, 2u);
          MEMORY[0x20F2F6A40](v34, -1, -1);
        }

        v174[1](v25, v175);
        return;
      }

      v94 = (v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder);
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder), *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder + 24));
      v95 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
      sub_20C135E04();
      v96 = v24;
      v97 = sub_20C138544();

      v98 = [v97 string];

      v99 = sub_20C13C954();
      v172 = v100;
      v173 = v99;

      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      sub_20C135E04();
      v171 = sub_20C138544();

      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      sub_20C135D84();
      v169 = sub_20C138544();

      v168 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v175 = sub_20C135E04();
      v174 = sub_20C135D84();
      sub_20C135E84();
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
      v102 = swift_allocBox();
      v104 = v103;
      v105 = v101[16];
      v106 = (v103 + v101[20]);
      v162 = v101[24];
      v170 = v95;
      *v103 = sub_20C135D64();
      v104[1] = v107;
      sub_20C135E94();
      *(v104 + v105) = sub_20C135D74();
      v108 = v171;
      v110 = v168;
      v109 = v169;
      *v106 = v171;
      v106[1] = v109;
      v111 = MEMORY[0x277D84F90];
      v113 = v174;
      v112 = v175;
      v106[2] = v110;
      v106[3] = v112;
      v106[4] = v113;
      v106[5] = v111;
      v114 = v161;
      (*(v161 + 16))(v104 + v162, v164, v163);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_20C14F980;
      *(v115 + 32) = v102 | 0x4000000000000002;
      v162 = v102;

      v171 = v108;
      v169 = v109;
      v116 = v110;
      v117 = v96;
      v118 = v116;

      v119 = MEMORY[0x277D84F90];

      v120 = sub_20C135D64();
      v180 = 0uLL;
      LOBYTE(v181) = 1;
      *(&v181 + 1) = v179[0];
      DWORD1(v181) = *(v179 + 3);
      *(&v181 + 1) = 0;
      *&v182 = 0;
      WORD4(v182) = 384;
      *(&v182 + 10) = v177;
      HIWORD(v182) = v178;
      v183 = 0uLL;
      *&v184 = v120;
      *(&v184 + 1) = v121;
      *&v185 = v173;
      *(&v185 + 1) = v172;
      LOBYTE(v186) = 0;
      *(&v186 + 1) = *v176;
      DWORD1(v186) = *&v176[3];
      *(&v186 + 1) = v115;
      *&v187[0] = v119;
      *(v187 + 8) = 0u;
      *(&v187[1] + 8) = 0u;
      *(&v187[2] + 1) = 0;
      v188 = 2;
      nullsub_1();
      v122 = v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
      v123 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
      v197 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
      v198 = v123;
      v199 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
      v124 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
      v193 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
      v194 = v124;
      v125 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
      v195 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
      v196 = v125;
      v126 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
      v189 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
      v190 = v126;
      v127 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
      v191 = *(v96 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
      v192 = v127;
      v128 = v187[2];
      *(v122 + 128) = v187[1];
      *(v122 + 144) = v128;
      *(v122 + 160) = v188;
      v129 = v185;
      *(v122 + 64) = v184;
      *(v122 + 80) = v129;
      v130 = v187[0];
      *(v122 + 96) = v186;
      *(v122 + 112) = v130;
      v131 = v181;
      *v122 = v180;
      *(v122 + 16) = v131;
      v132 = v183;
      *(v122 + 32) = v182;
      *(v122 + 48) = v132;
      sub_20B520158(&v189, &qword_27C762340, &unk_20C150290);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v134 = v118;
        if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
        {
          v148 = Strong;
          sub_20B61DA18(v96, Strong);
          if (v150)
          {
            v152 = v149;
            v153 = v150;
            v173 = v151;
            sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
            v154 = sub_20C13D374();
            v156 = v165;
            v155 = v166;
            *v165 = v154;
            v157 = v167;
            (*(v155 + 104))(v156, *MEMORY[0x277D85200], v167);
            v158 = sub_20C13C584();
            (*(v155 + 8))(v156, v157);
            if ((v158 & 1) == 0)
            {
LABEL_43:
              __break(1u);
              return;
            }

            sub_20B620F14(v152, v153, v173, v117, 1, v148);

            swift_unknownObjectRelease();

            v137 = v163;
            v136 = v164;
            v114 = v161;
LABEL_32:
            (*(v114 + 8))(v136, v137);
            return;
          }

          sub_20C0C2D50(0);

          swift_unknownObjectRelease();
          v114 = v161;
LABEL_31:
          v137 = v163;
          v136 = v164;
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_31;
    }

    v63 = *(v26 + *(v30 + 48));
    v64 = v160;
    (*(v27 + 32))(v160, v26, v162);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D58, &unk_20C186C80);
    v66 = swift_allocBox();
    v68 = v67;
    v69 = v65[12];
    v70 = v65[16];
    v175 = v24;
    v71 = (v67 + v70);
    v72 = (v67 + v65[20]);
    sub_20C136284();
    *(v68 + v69) = v63;
    v73 = v63;
    *v71 = sub_20C1362A4();
    v71[1] = v74;
    v75 = v64;
    v76 = v175;
    *v72 = sub_20C136264();
    v72[1] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_20C14F980;
    *(v78 + 32) = v66 | 0x2000000000000000;

    v79 = sub_20C135D64();
    v180 = 0uLL;
    LOBYTE(v181) = 1;
    *(&v181 + 1) = v179[0];
    DWORD1(v181) = *(v179 + 3);
    *(&v181 + 1) = 0;
    *&v182 = 0;
    WORD4(v182) = 384;
    *(&v182 + 10) = v177;
    HIWORD(v182) = v178;
    v183 = 0uLL;
    *&v184 = v79;
    *(&v184 + 1) = v80;
    v185 = 0uLL;
    LOBYTE(v186) = 0;
    *(&v186 + 1) = *v176;
    DWORD1(v186) = *&v176[3];
    *(&v186 + 1) = v78;
    *&v187[0] = MEMORY[0x277D84F90];
    *(v187 + 8) = 0u;
    *(&v187[1] + 8) = 0u;
    *(&v187[2] + 1) = 0;
    v188 = 2;
    nullsub_1();
    v81 = v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
    v82 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
    v197 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
    v198 = v82;
    v199 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
    v83 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
    v193 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
    v194 = v83;
    v84 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
    v195 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
    v196 = v84;
    v85 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
    v189 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
    v190 = v85;
    v86 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
    v191 = *(v76 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
    v192 = v86;
    v87 = v187[2];
    *(v81 + 128) = v187[1];
    *(v81 + 144) = v87;
    *(v81 + 160) = v188;
    v88 = v185;
    *(v81 + 64) = v184;
    *(v81 + 80) = v88;
    v89 = v187[0];
    *(v81 + 96) = v186;
    *(v81 + 112) = v89;
    v90 = v181;
    *v81 = v180;
    *(v81 + 16) = v90;
    v91 = v183;
    *(v81 + 32) = v182;
    *(v81 + 48) = v91;
    sub_20B520158(&v189, &qword_27C762340, &unk_20C150290);
    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v27;
      if (*&v92[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v174 = v92;
        sub_20B61DA18(v76, v92);
        if (v139)
        {
          v141 = v139;
          v142 = v140;
          v173 = v138;
          sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
          v143 = sub_20C13D374();
          v145 = v165;
          v144 = v166;
          *v165 = v143;
          v146 = v167;
          (*(v144 + 104))(v145, *MEMORY[0x277D85200], v167);
          v147 = sub_20C13C584();
          (*(v144 + 8))(v145, v146);
          if ((v147 & 1) == 0)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          sub_20B620F14(v173, v141, v142, v175, 1, v174);

          swift_unknownObjectRelease();

          v135 = v162;
          v93 = v27;
          v75 = v160;
LABEL_28:
          (*(v93 + 8))(v75, v135);
          return;
        }

        sub_20C0C2D50(0);

        swift_unknownObjectRelease();
      }
    }

    else
    {

      v93 = v27;
    }

    v135 = v162;
    goto LABEL_28;
  }

LABEL_10:
  v35 = v173;
  sub_20C13B424();
  v36 = sub_20C13BB74();
  v37 = sub_20C13D1F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_20B517000, v36, v37, "Hiding engagement banner, user not subscribed", v38, 2u);
    MEMORY[0x20F2F6A40](v38, -1, -1);
  }

  v174[1](v35, v175);
  v180 = 0uLL;
  LOBYTE(v181) = 1;
  *(&v181 + 1) = 0;
  *&v182 = 0;
  WORD4(v182) = 128;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  LOBYTE(v186) = 0;
  *(&v186 + 1) = MEMORY[0x277D84F90];
  *&v187[0] = MEMORY[0x277D84F90];
  *(v187 + 8) = 0u;
  *(&v187[1] + 8) = 0u;
  *(&v187[2] + 1) = 0;
  v188 = 2;
  nullsub_1();
  v39 = v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
  v40 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v197 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v198 = v40;
  v199 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v41 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v193 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v194 = v41;
  v42 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v195 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v196 = v42;
  v43 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v189 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v190 = v43;
  v44 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v191 = *(v24 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
  v192 = v44;
  v45 = v187[2];
  *(v39 + 128) = v187[1];
  *(v39 + 144) = v45;
  *(v39 + 160) = v188;
  v46 = v185;
  *(v39 + 64) = v184;
  *(v39 + 80) = v46;
  v47 = v187[0];
  *(v39 + 96) = v186;
  *(v39 + 112) = v47;
  v48 = v181;
  *v39 = v180;
  *(v39 + 16) = v48;
  v49 = v183;
  *(v39 + 32) = v182;
  *(v39 + 48) = v49;
  sub_20B520158(&v189, &qword_27C762340, &unk_20C150290);
  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    if (*(v50 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
LABEL_18:
      swift_unknownObjectRelease();
      return;
    }

    v51 = v50;
    sub_20B61DA18(v24, v50);
    if (!v53)
    {
      sub_20C0C2D50(0);
      goto LABEL_18;
    }

    v55 = v52;
    v56 = v53;
    v57 = v54;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v58 = sub_20C13D374();
    v60 = v165;
    v59 = v166;
    *v165 = v58;
    v61 = v167;
    (*(v59 + 104))(v60, *MEMORY[0x277D85200], v167);
    v62 = sub_20C13C584();
    (*(v59 + 8))(v60, v61);
    if (v62)
    {
      sub_20B620F14(v55, v56, v57, v24, 1, v51);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_42;
  }
}

uint64_t sub_20B87CFA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v51 = *(v47 - 8);
  v9 = v51[8];
  MEMORY[0x28223BE20](v47);
  v46 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v43 - v11;
  MEMORY[0x28223BE20](v12);
  v50 = v43 - v13;
  MEMORY[0x28223BE20](v14);
  v48 = v43 - v15;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache), *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache + 24));
  sub_20C1392E4();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B88104C;
  *(v16 + 24) = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B881054;
  *(v17 + 24) = v16;
  (*(v3 + 16))(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v5, v2);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20B5D9E70;
  v20[1] = v17;
  v43[1] = v1;

  v21 = v49;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B881098;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B622D08;
  *(v23 + 24) = v22;
  v24 = v51;
  v45 = v51[2];
  v26 = v46;
  v25 = v47;
  v45(v46, v21, v47);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v44 = v28;
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v27[4];
  v31(v30 + v28, v26, v25);
  v32 = (v30 + v29);
  *v32 = sub_20B5DF3D4;
  v32[1] = v23;

  v33 = v50;
  sub_20C137C94();
  v34 = v51[1];
  ++v51;
  v35 = v49;
  v34(v49, v25);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B87D918;
  *(v36 + 24) = 0;
  v45(v35, v33, v25);
  v37 = swift_allocObject();
  v31(v37 + v44, v35, v25);
  v38 = (v37 + v29);
  *v38 = sub_20B5DF204;
  v38[1] = v36;
  v39 = v48;
  sub_20C137C94();
  v34(v50, v25);
  v40 = sub_20C137CB4();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v40(sub_20B5DF6DC, v41);

  return (v34)(v39, v25);
}

void sub_20B87D5A8(uint64_t a1)
{
  if (!qword_27C762130)
  {
    sub_20C135734();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C762130);
    }
  }
}

uint64_t sub_20B87D600(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B87D650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_20B87D6A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_20B87D6BC(void *result, int a2)
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

uint64_t sub_20B87D714(uint64_t a1)
{
  sub_20B87D76C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20B87D76C(uint64_t a1)
{
  if (!qword_27C766D48)
  {
    sub_20C1362B4();
    sub_20B51C88C(255, &qword_27C7626E8, 0x277D755B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766D48);
    }
  }
}

uint64_t sub_20B87D7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_20C135734();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B88109C(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_20B87D918(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "[MarketingHeaderBanner] error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20B87DAF4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  if (!*(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state))
  {
    v17 = v1;
    v18 = v66;
    v56 = v5;
    v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state;
    v60 = v8;
    v61 = v4;
    v58 = v9;
    v19 = v17;
    (*(v13 + 16))(v16, v17 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf__marketingBannerEnabled, v12, v14);
    sub_20C13A344();
    (*(v13 + 8))(v16, v12);
    if (LOBYTE(v67[0]) == 1)
    {
      sub_20C135EA4();
      v20 = sub_20C135EC4();
      v22 = v21;
      v23 = type metadata accessor for EngagementMessageTarget();
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      *v25 = 0;
      *(v25 + 1) = 0;
      v26 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = &v24[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_identifier];
      *v27 = v20;
      v27[1] = v22;
      v68.receiver = v24;
      v68.super_class = v23;
      v28 = objc_msgSendSuper2(&v68, sel_init);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = &v28[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      v31 = v28;
      v32 = *&v28[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      v33 = v30[1];
      *v30 = sub_20B880EA4;
      v30[1] = v29;

      sub_20B583ECC(v32, v33);

      v34 = swift_allocObject();
      swift_weakInit();
      v35 = &v31[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      v66 = v31;
      v36 = *&v31[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
      v37 = *&v31[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval + 8];
      *v35 = sub_20B880EAC;
      v35[1] = v34;

      sub_20B583ECC(v36, v37);

      v38 = *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
      v39 = *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
      __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v38);
      (*(v39 + 16))(v31, v38, v39);
      swift_getObjectType();
      swift_allocObject();
      swift_weakInit();
      sub_20B880EBC();
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v67);
      sub_20C13B0D4();
      swift_allocObject();
      swift_weakInit();
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v67);
      sub_20C139454();
      swift_allocObject();
      swift_weakInit();
      sub_20B880F2C(&unk_281103B10, MEMORY[0x277D543B0], MEMORY[0x277D543A8]);
      sub_20C13A784();

      __swift_destroy_boxed_opaque_existential_1(v67);
      __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient), *(v19 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient + 24));
      v40 = v60;
      sub_20C1398E4();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_20B880F74;
      *(v41 + 24) = v19;
      v42 = v64;
      v43 = v57;
      v44 = v61;
      (*(v64 + 16))(v57, v40, v61);
      v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v46 = (v56 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      (*(v42 + 32))(v47 + v45, v43, v44);
      v48 = (v47 + v46);
      *v48 = sub_20B58D058;
      v48[1] = v41;

      sub_20C137C94();
      (*(v42 + 8))(v40, v44);
      v49 = v58;
      v50 = sub_20C137CB4();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      v50(sub_20B52347C, v51);

      (*(v65 + 8))(v11, v49);
      sub_20B87CFA8();
      v52 = *(v19 + v59);
      *(v19 + v59) = v66;
    }

    else
    {
      sub_20C13B424();
      v53 = sub_20C13BB74();
      v54 = sub_20C13D1D4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        MEMORY[0x20F2F6A40](v55, -1, -1);
      }

      (*(v62 + 8))(v18, v63);
    }
  }
}

double sub_20B87E38C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B87B268(a1);
  }

  return result;
}

double sub_20B87E3EC(uint64_t a1)
{
  v1 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
    (*(*(v7 - 8) + 56))(v3, 2, 2, v7);
    v8 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
    swift_beginAccess();
    sub_20B880FE8(v3, v6 + v8);
    swift_endAccess();
    sub_20B87BDD4();
  }

  return result;
}

void sub_20B87E50C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B87AAF0(v2, v3, v4, v5);
  }
}

double sub_20B87E590(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B87CFA8();
  }

  return result;
}

uint64_t sub_20B87E5E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B87E660@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B87E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1362B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D50, &unk_20C15EC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v15 = &v27 + *(v14 + 56) - v12;
  sub_20B880D74(a1, &v27 - v12, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  sub_20B880D74(a2, v15, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    v28 = v5;
    sub_20B880D74(v13, v10, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
    v19 = *(v16 + 48);
    v20 = *&v10[v19];
    if (!v17(v15, 2, v16))
    {
      v23 = *&v15[v19];
      v24 = v28;
      (*(v28 + 32))(v7, v15, v4);
      v25 = sub_20C136254();
      v26 = *(v24 + 8);
      v26(v10, v4);
      if (v25)
      {
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        v21 = sub_20C13D5F4();

        v26(v7, v4);
        sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
        return v21 & 1;
      }

      v26(v7, v4);

      sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
      goto LABEL_10;
    }

    (*(v28 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 != 1)
  {
    if (v17(v15, 2, v16) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_20B520158(v13, &qword_27C766D50, &unk_20C15EC80);
LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

  if (v17(v15, 2, v16) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_20B880DDC(v13, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_20B87EB28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v1 - 8);
  v267 = &v229 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v268 = &v229 - v4;
  MEMORY[0x28223BE20](v5);
  v248 = &v229 - v6;
  MEMORY[0x28223BE20](v7);
  v256 = &v229 - v8;
  v266 = sub_20C137124();
  v261 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v259 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for ShelfMetricAction(0);
  v271 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v254 = &v229 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v273 = &v229 - v12;
  MEMORY[0x28223BE20](v13);
  v232 = &v229 - v14;
  MEMORY[0x28223BE20](v15);
  v260 = &v229 - v16;
  MEMORY[0x28223BE20](v17);
  v242 = &v229 - v18;
  v241 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v241);
  v240 = &v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_20C13BB84();
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v245 = &v229 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for NavigationSource(0);
  v253 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v236 = &v229 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v235 = &v229 - v23;
  MEMORY[0x28223BE20](v24);
  v243 = &v229 - v25;
  MEMORY[0x28223BE20](v26);
  v249 = &v229 - v27;
  v231 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v231);
  v237 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v230 = &v229 - v30;
  MEMORY[0x28223BE20](v31);
  v258 = &v229 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800, &unk_20C15EC70);
  MEMORY[0x28223BE20](v33 - 8);
  v234 = &v229 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v269 = &v229 - v36;
  v37 = sub_20C132C14();
  v279 = *(v37 - 8);
  v280 = v37;
  MEMORY[0x28223BE20](v37);
  v276 = &v229 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v272 = &v229 - v40;
  MEMORY[0x28223BE20](v41);
  v255 = &v229 - v42;
  MEMORY[0x28223BE20](v43);
  v251 = &v229 - v44;
  MEMORY[0x28223BE20](v45);
  v252 = &v229 - v46;
  MEMORY[0x28223BE20](v47);
  v257 = &v229 - v48;
  v239 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v239);
  v238 = &v229 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v250 = &v229 - v51;
  v264 = sub_20C136DD4();
  v270 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v244 = &v229 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v263 = &v229 - v54;
  v265 = sub_20C135E74();
  MEMORY[0x28223BE20](v265);
  v56 = &v229 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1362B4();
  v274 = *(v57 - 8);
  v275 = v57;
  MEMORY[0x28223BE20](v57);
  v277 = &v229 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v229 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v229 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = &v229 - v66;
  v68 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  swift_beginAccess();
  sub_20B880D74(v0 + v68, v67, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
  v70 = *(v69 - 8);
  (*(v70 + 56))(v64, 1, 2, v69);
  v71 = sub_20B87E754(v67, v64);
  sub_20B880DDC(v64, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  result = sub_20B880DDC(v67, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  if (v71)
  {
    return result;
  }

  sub_20B880D74(v0 + v68, v61, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v73 = (*(v70 + 48))(v61, 2, v69);
  v233 = v0;
  if (!v73)
  {

    (*(v274 + 32))(v277, v61, v275);
    sub_20C136284();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v110 = v280;
    v111 = v278;
    if (EnumCaseMultiPayload == 1)
    {
      v112 = v280;
      v113 = v261;
      v114 = v259;
      (*(v261 + 32))(v259, v56, v266);
      v276 = sub_20C1355B4();
      v116 = v115;
      v117 = sub_20C136664();
      v118 = v260;
      (*(*(v117 - 8) + 56))(v260, 1, 1, v117);
      v119 = v111[5];
      v120 = *MEMORY[0x277D513F8];
      v121 = sub_20C134F24();
      (*(*(v121 - 8) + 104))(v118 + v119, v120, v121);
      (*(v279 + 56))(v118 + v111[6], 1, 1, v112);
      v122 = v111[8];
      v123 = *MEMORY[0x277D523B8];
      v124 = sub_20C135ED4();
      v125 = *(v124 - 8);
      (*(v125 + 104))(v118 + v122, v123, v124);
      (*(v125 + 56))(v118 + v122, 0, 1, v124);
      v126 = v111[10];
      v127 = *MEMORY[0x277D51760];
      v128 = sub_20C1352E4();
      (*(*(v128 - 8) + 104))(v118 + v126, v127, v128);
      v129 = v111[11];
      v130 = sub_20C136E94();
      (*(*(v130 - 8) + 56))(v118 + v129, 1, 1, v130);
      v131 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v132 = (v118 + v111[7]);
      *v132 = v276;
      v132[1] = v116;
      v133 = (v118 + v111[9]);
      *v133 = 0;
      v133[1] = 0;
      *(v118 + v111[12]) = v131;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v135 = Strong;
        sub_20C137114();
        v136 = sub_20C136234();
        v138 = v137;
        v139 = v118;
        v140 = v256;
        sub_20B880D74(v139, v256, type metadata accessor for ShelfMetricAction);
        v141 = v271;
        (*(v271 + 7))(v140, 0, 1, v111);
        v142 = v140;
        v143 = v248;
        sub_20B52F9E8(v142, v248, &unk_27C7622D0, &unk_20C14FCE0);
        v144 = v114;
        if ((*(v141 + 6))(v143, 1, v111) == 1)
        {
          sub_20B520158(v143, &unk_27C7622D0, &unk_20C14FCE0);
        }

        else
        {
          v175 = v232;
          sub_20B880E3C(v143, v232, type metadata accessor for ShelfMetricAction);
          sub_20BF9FD30(v233, v175, v135);
          sub_20B880DDC(v175, type metadata accessor for ShelfMetricAction);
        }

        v176 = v266;
        v177 = v275;
        v178 = v261;
        v179 = v280;
        v180 = v135 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v181 = *(v180 + 8);
          ObjectType = swift_getObjectType();
          v183 = v255;
          (*(v181 + 72))(v135, v255, v136, v138, ObjectType, v181);
          swift_unknownObjectRelease();
          v144 = v259;
        }

        else
        {
          v183 = v255;
        }

        swift_unknownObjectRelease();

        sub_20B520158(v256, &unk_27C7622D0, &unk_20C14FCE0);
        (*(v279 + 8))(v183, v179);
        sub_20B880DDC(v260, type metadata accessor for ShelfMetricAction);
        (*(v178 + 8))(v144, v176);
        v185 = v233;
        v184 = v177;
      }

      else
      {
        sub_20B880DDC(v118, type metadata accessor for ShelfMetricAction);
        (*(v113 + 8))(v114, v266);
        v184 = v275;
        v185 = v233;
      }

LABEL_44:
      v226 = *(v185 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 24);
      v227 = *(v185 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator + 32);
      __swift_project_boxed_opaque_existential_1((v185 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator), v226);
      v228 = v277;
      (*(v227 + 32))(v277, v226, v227);
      return (*(v274 + 8))(v228, v184);
    }

    (*(v270 + 32))(v263, v56, v264);
    v151 = v257;
    sub_20C136DC4();
    v152 = v253;
    v153 = v262;
    (*(v253 + 56))(v269, 1, 1, v262);
    v154 = v279;
    v155 = (v279 + 16);
    v156 = *(v279 + 16);
    v157 = v252;
    v156(v252, v151, v110);
    sub_20BBD6CD8(v157, v258);
    v158 = v251;
    v271 = v156;
    v272 = v155;
    v156(v251, v151, v110);
    v159 = type metadata accessor for NavigationSharingURLInfo(0);
    v160 = *(v154 + 56);
    v161 = v249;
    v162 = v249 + *(v159 + 20);
    v276 = (v154 + 56);
    v273 = v160;
    (v160)(v162, 1, 1, v110);
    (*(v154 + 32))(v161, v158, v110);
    v163 = (v161 + *(v159 + 24));
    *v163 = 0;
    v163[1] = 0;
    swift_storeEnumTagMultiPayload();
    v164 = v234;
    sub_20B52F9E8(v269, v234, &unk_27C767800, &unk_20C15EC70);
    v165 = *(v152 + 48);
    v166 = v165(v164, 1, v153);
    if (v166 == 1)
    {
      v167 = v243;
      sub_20B880D74(v161, v243, type metadata accessor for NavigationSource);
      v168 = v165(v164, 1, v153) == 1;
      v169 = v258;
      v170 = v239;
      v171 = v164;
      v172 = v237;
      v184 = v275;
      v173 = v236;
      v185 = v233;
      v174 = v278;
      if (!v168)
      {
        sub_20B520158(v171, &unk_27C767800, &unk_20C15EC70);
      }
    }

    else
    {
      v167 = v243;
      sub_20B880E3C(v164, v243, type metadata accessor for NavigationSource);
      v169 = v258;
      v170 = v239;
      v172 = v237;
      v184 = v275;
      v173 = v236;
      v185 = v233;
      v174 = v278;
    }

    v186 = v235;
    sub_20B880D74(v167, v235, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v187 = type metadata accessor for NavigationSource;
    }

    else
    {
      sub_20B880DDC(v186, type metadata accessor for NavigationSharingURLInfo);
      v186 = v230;
      sub_20B880D74(v169, v230, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_20B880DDC(v249, type metadata accessor for NavigationSource);
        sub_20B520158(v269, &unk_27C767800, &unk_20C15EC70);
        v188 = v280;
        (*(v279 + 8))(v257, v280);
        v189 = v169;
        v190 = v238;
        sub_20B880E3C(v189, v238, type metadata accessor for NavigationResource);
        *(v190 + v170[5]) = 0;
        type metadata accessor for NavigationIntent(0);
        v191 = 2;
        v192 = v190;
        swift_storeEnumTagMultiPayload();
LABEL_41:
        sub_20B880E3C(v167, v192 + v170[6], type metadata accessor for NavigationSource);
        *(v192 + v170[7]) = 0;
        *(v192 + v170[8]) = v191;
        *(v192 + v170[9]) = 0;
        v202 = v250;
        sub_20B880E3C(v192, v250, type metadata accessor for NavigationRequest);
        swift_getObjectType();
        v203 = v202;
        v204 = v240;
        sub_20B880D74(v203, v240, type metadata accessor for NavigationRequest);
        sub_20B880F2C(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
        sub_20C13A764();
        sub_20B880DDC(v204, type metadata accessor for NavigationRequested);
        v205 = sub_20C1355B4();
        v207 = v206;
        v208 = sub_20C136664();
        v209 = v242;
        (*(*(v208 - 8) + 56))(v242, 1, 1, v208);
        v210 = v174[5];
        v211 = *MEMORY[0x277D513F8];
        v212 = sub_20C134F24();
        (*(*(v212 - 8) + 104))(v209 + v210, v211, v212);
        (v273)(v209 + v174[6], 1, 1, v188);
        v213 = v174[8];
        v214 = *MEMORY[0x277D523B8];
        v215 = sub_20C135ED4();
        v216 = *(v215 - 8);
        (*(v216 + 104))(v209 + v213, v214, v215);
        (*(v216 + 56))(v209 + v213, 0, 1, v215);
        v217 = v174[10];
        v218 = *MEMORY[0x277D51760];
        v219 = sub_20C1352E4();
        (*(*(v219 - 8) + 104))(v209 + v217, v218, v219);
        v220 = v174[11];
        v221 = sub_20C136E94();
        (*(*(v221 - 8) + 56))(v209 + v220, 1, 1, v221);
        v222 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        v223 = (v209 + v174[7]);
        *v223 = v205;
        v223[1] = v207;
        v224 = (v209 + v174[9]);
        *v224 = 0;
        v224[1] = 0;
        *(v209 + v174[12]) = v222;
        v225 = swift_unknownObjectWeakLoadStrong();
        if (v225)
        {
          sub_20BF9FD30(v185, v209, v225);
          swift_unknownObjectRelease();
        }

        sub_20B880DDC(v209, type metadata accessor for ShelfMetricAction);
        sub_20B880DDC(v250, type metadata accessor for NavigationRequest);
        (*(v270 + 8))(v263, v264);
        goto LABEL_44;
      }

      v187 = type metadata accessor for NavigationResource;
    }

    sub_20B880DDC(v186, v187);
    sub_20B880D74(v167, v173, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v193 = type metadata accessor for NavigationSource;
      v194 = v173;
    }

    else
    {
      sub_20B880DDC(v173, type metadata accessor for NavigationSharingURLInfo);
      sub_20B880D74(v169, v172, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20B880DDC(v249, type metadata accessor for NavigationSource);
        sub_20B520158(v269, &unk_27C767800, &unk_20C15EC70);
        v195 = v280;
        v196 = *(v279 + 8);
        v196(v257, v280);
        v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00) + 48);
        v198 = sub_20C1388F4();
        (*(*(v198 - 8) + 8))(v172 + v197, v198);
        v196(v172, v195);
        v167 = v243;
        v192 = v238;
        sub_20B880E3C(v169, v238, type metadata accessor for NavigationResource);
        *(v192 + v170[5]) = 1;
        type metadata accessor for NavigationIntent(0);
        swift_storeEnumTagMultiPayload();
        v191 = 2;
LABEL_40:
        v188 = v195;
        v174 = v278;
        goto LABEL_41;
      }

      v193 = type metadata accessor for NavigationResource;
      v194 = v172;
    }

    sub_20B880DDC(v194, v193);
    v199 = v238;
    sub_20B880D74(v169, v238, type metadata accessor for NavigationResource);
    v200 = v251;
    v201 = v257;
    v195 = v280;
    v271(v251, v257, v280);
    v192 = v199;
    sub_20BB7F2E8(v200, 1, v199 + v170[5]);
    sub_20B880DDC(v249, type metadata accessor for NavigationSource);
    sub_20B880DDC(v169, type metadata accessor for NavigationResource);
    sub_20B520158(v269, &unk_27C767800, &unk_20C15EC70);
    (*(v279 + 8))(v201, v195);
    v191 = 0;
    goto LABEL_40;
  }

  sub_20B880DDC(v61, type metadata accessor for MarketingHeaderBannerShelf.BannerSource);
  v74 = v272;
  sub_20C135E84();
  sub_20BD09848(v75);
  if (!v77)
  {
    sub_20BD09C88();
    if (!v77)
    {
      v76 = sub_20C132B54();
    }
  }

  v78 = v76;
  v79 = v77;
  v80 = v279;
  v81 = v280;
  v277 = *(v279 + 8);
  (v277)(v74, v280);
  v82 = sub_20C136664();
  v83 = v273;
  (*(*(v82 - 8) + 56))(v273, 1, 1, v82);
  v84 = v278;
  v85 = *(v278 + 20);
  v86 = *MEMORY[0x277D513F8];
  v87 = sub_20C134F24();
  (*(*(v87 - 8) + 104))(v83 + v85, v86, v87);
  (*(v80 + 56))(v83 + v84[6], 1, 1, v81);
  v88 = v84[8];
  v89 = *MEMORY[0x277D523B8];
  v90 = sub_20C135ED4();
  v91 = *(v90 - 8);
  (*(v91 + 104))(v83 + v88, v89, v90);
  (*(v91 + 56))(v83 + v88, 0, 1, v90);
  v92 = v84[10];
  v93 = *MEMORY[0x277D51760];
  v94 = sub_20C1352E4();
  (*(*(v94 - 8) + 104))(v83 + v92, v93, v94);
  v95 = v84[11];
  v96 = sub_20C136E94();
  (*(*(v96 - 8) + 56))(v83 + v95, 1, 1, v96);
  v97 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v98 = (v83 + v84[7]);
  *v98 = v78;
  v98[1] = v79;
  v99 = (v83 + v84[9]);
  *v99 = 0;
  v99[1] = 0;
  *(v83 + v84[12]) = v97;
  v100 = v233;
  v101 = swift_unknownObjectWeakLoadStrong();
  if (v101)
  {
    v102 = v101;
    sub_20C135E84();
    v103 = sub_20C135D64();
    v105 = v104;
    v106 = v268;
    sub_20B880D74(v83, v268, type metadata accessor for ShelfMetricAction);
    v107 = v271;
    (*(v271 + 7))(v106, 0, 1, v84);
    v108 = v267;
    sub_20B52F9E8(v106, v267, &unk_27C7622D0, &unk_20C14FCE0);
    if ((*(v107 + 6))(v108, 1, v84) == 1)
    {
      sub_20B520158(v108, &unk_27C7622D0, &unk_20C14FCE0);
    }

    else
    {
      v145 = v254;
      sub_20B880E3C(v108, v254, type metadata accessor for ShelfMetricAction);
      sub_20BF9FD30(v100, v145, v102);
      sub_20B880DDC(v145, type metadata accessor for ShelfMetricAction);
    }

    v146 = v102 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    v147 = swift_unknownObjectWeakLoadStrong();
    v148 = v276;
    if (v147)
    {
      v149 = *(v146 + 8);
      v150 = swift_getObjectType();
      (*(v149 + 72))(v102, v148, v103, v105, v150, v149);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    sub_20B520158(v106, &unk_27C7622D0, &unk_20C14FCE0);
    (v277)(v148, v280);
  }

  return sub_20B880DDC(v83, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B880D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B880DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B880E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20B880EBC()
{
  result = qword_27C771DE0;
  if (!qword_27C771DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DE0);
  }

  return result;
}

uint64_t sub_20B880F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20B880F74()
{
  sub_20C1340E4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v1 = v2;
  *(v1 + 8) = 0;
}

uint64_t sub_20B880FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingHeaderBannerShelf.BannerSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B88109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8811D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20B881460(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaybackTrackMask();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_20B8814B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI12FilterButton_highlightTimer] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for FilterButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:256];
  [v9 addTarget:v9 action:sel_handleTouchDown_ forControlEvents:1];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:32];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:64];
  [v9 addTarget:v9 action:sel_handleTouchUp_ forControlEvents:128];

  return v9;
}

void sub_20B881704(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FilterButton();
  objc_msgSendSuper2(&v10, sel_setHighlighted_, v3 & 1);
  if (![v2 buttonType] && (!objc_msgSend(v2, sel_isHighlighted) || *(v2 + OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight) == 1))
  {
    *(v2 + OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight) = 0;
    if ([v2 isHighlighted])
    {
      v4 = 0.165;
    }

    else
    {
      v4 = 0.25;
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v9[4] = sub_20B8819CC;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20B7B548C;
    v9[3] = &block_descriptor_30;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v5 animateWithDuration:6 delay:v7 options:0 animations:v4 completion:0.0];
    _Block_release(v7);
  }
}

id sub_20B881964(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FilterButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_20B8819CC()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 1.0;
  if (v2)
  {
    v3 = 0.75;
  }

  return [v1 setAlpha_];
}

char *sub_20B881A38(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v3 setAlpha_];
  sub_20C1380F4();
  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  [v3 setContentMode_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v6] = v3;
  v7 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setAlpha_];
  v9 = [objc_opt_self() blackColor];
  [v8 setBackgroundColor_];

  [v8 setClipsToBounds_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_presenter] = a1;
  v66.receiver = v1;
  v66.super_class = type metadata accessor for PhoneSessionBackgroundView();

  v10 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display + 8) = &off_2822AEEC8;
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView];
  v13 = v10;
  [v13 addSubview_];
  v64 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  [v13 addSubview_];
  v65 = objc_opt_self();
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v18 = *&v10[v11];
  v19 = [v18 leadingAnchor];
  v20 = [v13 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v15];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = v21;
  v24 = [v18 trailingAnchor];
  v25 = [v13 trailingAnchor];
  v26 = -v16;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = v27;
  v30 = [v18 topAnchor];
  v31 = [v13 &selRef_setLineBreakMode_];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v14];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  v34 = [v18 bottomAnchor];
  v35 = [v13 &selRef_secondaryLabel + 5];
  v36 = -v17;
  v37 = [v34 constraintEqualToAnchor:v35 constant:v36];

  LODWORD(v38) = 1148846080;
  [v37 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C14FE90;
  *(v39 + 32) = v23;
  *(v39 + 40) = v29;
  *(v39 + 48) = v32;
  *(v39 + 56) = v37;
  v40 = v32;

  v41 = *&v13[v64];
  v42 = [v41 leadingAnchor];
  v43 = [v13 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v15];

  LODWORD(v45) = 1148846080;
  [v44 &selRef_meterUnit];
  v46 = v44;
  v47 = [v41 trailingAnchor];
  v48 = [v13 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v26];

  LODWORD(v50) = 1148846080;
  [v49 &selRef_meterUnit];
  v51 = v49;
  v52 = [v41 topAnchor];
  v53 = [v13 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v14];

  LODWORD(v55) = 1148846080;
  [v54 &selRef_meterUnit];
  v56 = [v41 bottomAnchor];
  v57 = [v13 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:v36];

  LODWORD(v59) = 1148846080;
  [v58 &selRef_meterUnit];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v46;
  *(inited + 40) = v51;
  *(inited + 48) = v54;
  *(inited + 56) = v58;
  v61 = v54;

  sub_20B8D9310(inited);
  sub_20B5E29D0();
  v62 = sub_20C13CC54();

  [v65 activateConstraints_];

  return v13;
}

id sub_20B882188(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhoneSessionBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20B88223C(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView] setImage_];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_20B882808;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);

  [v2 animateWithDuration:v4 animations:0.2];
  _Block_release(v4);
  return [v1 layoutIfNeeded];
}

void sub_20B882358(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView);

    [v3 setAlpha_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView);

    [v6 setAlpha_];
  }
}

double sub_20B882430()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeBounds];
  v6 = v5;

  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v9.width = 16.0;
    v9.height = 9.0;
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = v3;
    v11.size.height = v6;
    v10 = AVMakeRectWithAspectRatioInsideRect(v9, v11);
    return v10.size.width;
  }

  return v3;
}

id sub_20B882528(uint64_t (*a1)(id), uint64_t a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView);
  v8 = [v7 alpha];
  if (v9 >= 1.0)
  {
    return a1(v8);
  }

  v10 = objc_opt_self();
  [v10 begin];
  v17[4] = a1;
  v17[5] = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20B7B548C;
  v17[3] = &block_descriptor_31;
  v11 = _Block_copy(v17);

  [v10 setCompletionBlock_];
  _Block_release(v11);
  [v7 alpha];
  v13 = v12;
  [v7 setAlpha_];
  v14 = [v7 layer];
  v15 = sub_20B8826C8(v13, a3);
  [v14 addAnimation:v15 forKey:0];

  return [v10 commit];
}

id sub_20B8826C8(double a1, double a2)
{
  v3 = sub_20C13C914();
  v4 = [objc_opt_self() animationWithKeyPath_];

  v5 = sub_20C138374();
  [v4 setFromValue_];

  v6 = sub_20C138374();
  [v4 setToValue_];

  v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v8 = v4;
  LODWORD(v9) = 1051260355;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051260355;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v11, v10}];
  [v8 setTimingFunction_];

  [v8 setDuration_];
  return v8;
}

void sub_20B882810()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v1 setAlpha_];
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_imageView;
  [v1 setContentMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v4) = v1;
  v5 = OBJC_IVAR____TtC9SeymourUI26PhoneSessionBackgroundView_blackView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setAlpha_];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B8829AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout];
  *v12 = 0x3FDB6DB6DB6DB6DBLL;
  v12[8] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 1;
  v14 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v15 = WorkoutPlanArtworkView.init(artwork:appearance:)(v56, &v55);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v13] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = *MEMORY[0x277D76988];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel;
  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v19 size:0.0];

  [v16 setFont_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  v25 = objc_opt_self();
  v26 = [v25 whiteColor];
  [v16 setTextColor_];

  [v16 setAllowsDefaultTighteningForTruncation_];
  *&v5[v22] = v16;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel;
  v32 = [v23 fontWithDescriptor:v28 size:{0.0, ObjectType}];

  [v27 setFont_];
  v33 = [v25 secondaryLabelColor];
  [v27 setTextColor_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  *&v5[v31] = v27;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v34 &selRef_count + 2];
  [v34 setAdjustsFontForContentSizeCategory_];
  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  [v34 setLineBreakMode_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v35 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel;
  v39 = [v23 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  v40 = [v25 secondaryLabelColor];
  [v34 setTextColor_];

  *&v5[v38] = v34;
  v54.receiver = v5;
  v54.super_class = v53;
  v41 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v42 = [v41 traitCollection];
  v43 = [v25 systemBackgroundColor];
  v44 = sub_20C13D3B4();
  v45 = [v43 resolvedColorWithTraitCollection_];

  [v41 setBackgroundColor_];
  v46 = [v41 layer];
  [v46 setCornerRadius_];

  [v41 setClipsToBounds_];
  v47 = [v41 contentView];
  [v47 addSubview_];

  v48 = [v41 contentView];
  [v48 addSubview_];

  v49 = [v41 contentView];
  [v49 addSubview_];

  v50 = [v41 contentView];
  [v50 addSubview_];

  sub_20B883144();
  return v41;
}

void sub_20B883144()
{
  v1 = v0;
  v79 = objc_opt_self();
  v78 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints;
  sub_20B5E29D0();

  v2 = sub_20C13CC54();

  [v79 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C150930;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 &selRef_setLineBreakMode_];

  v77 = &v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout];
  v8 = [v5 constraintEqualToAnchor:v7 constant:0.0];

  *(v3 + 32) = v8;
  v9 = [v4 leadingAnchor];
  v10 = [v1 &selRef_setMaximumFractionDigits_];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 &selRef_setMaximumFractionDigits_];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v3 + 48) = v16;
  v17 = [v4 widthAnchor];
  v18 = [v1 &selRef_setMaximumFractionDigits_];
  v19 = [v18 widthAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v21) = v80;
  [v20 setPriority_];
  *(v3 + 56) = v20;
  v22 = [v4 heightAnchor];
  v23 = [v4 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 multiplier:*v77];

  sub_20C13BBA4();
  LODWORD(v25) = v80;
  [v24 setPriority_];
  *(v3 + 64) = v24;
  v26 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel];
  v27 = [v26 topAnchor];
  v28 = [v4 bottomAnchor];
  v29 = 10.0;
  if (*(v77 + 8))
  {
    v29 = 24.0;
  }

  v30 = [v27 constraintEqualToAnchor:v28 constant:v29];

  *(v3 + 72) = v30;
  v31 = [v26 leadingAnchor];
  v32 = [v1 contentView];
  v33 = [v32 leadingAnchor];

  if (*(v77 + 8))
  {
    v34 = 24.0;
  }

  else
  {
    v34 = 16.0;
  }

  v35 = [v31 constraintEqualToAnchor:v33 constant:v34];

  *(v3 + 80) = v35;
  v36 = [v26 trailingAnchor];
  v37 = [v1 contentView];
  v38 = [v37 trailingAnchor];

  if (*(v77 + 8))
  {
    v39 = -24.0;
  }

  else
  {
    v39 = -16.0;
  }

  v40 = [v36 constraintEqualToAnchor:v38 constant:v39];

  *(v3 + 88) = v40;
  v41 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel];
  v42 = [v41 topAnchor];
  v43 = [v26 bottomAnchor];
  v44 = 4.0;
  if (*(v77 + 8))
  {
    v44 = 8.0;
  }

  v45 = [v42 constraintEqualToAnchor:v43 constant:v44];

  *(v3 + 96) = v45;
  v46 = [v41 leadingAnchor];
  v47 = [v1 contentView];
  v48 = [v47 leadingAnchor];

  if (*(v77 + 8))
  {
    v49 = 24.0;
  }

  else
  {
    v49 = 16.0;
  }

  v50 = [v46 constraintEqualToAnchor:v48 constant:v49];

  *(v3 + 104) = v50;
  v51 = [v41 trailingAnchor];
  v52 = [v1 contentView];
  v53 = [v52 trailingAnchor];

  if (*(v77 + 8))
  {
    v54 = -24.0;
  }

  else
  {
    v54 = -16.0;
  }

  v55 = [v51 constraintEqualToAnchor:v53 constant:v54];

  *(v3 + 112) = v55;
  v56 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel];
  v57 = [v56 topAnchor];
  v58 = [v41 bottomAnchor];
  v59 = 12.0;
  if (!*(v77 + 8))
  {
    v59 = 8.0;
  }

  v60 = [v57 constraintEqualToAnchor:v58 constant:v59];

  *(v3 + 120) = v60;
  v61 = [v56 leadingAnchor];
  v62 = [v1 contentView];
  v63 = [v62 leadingAnchor];

  if (*(v77 + 8))
  {
    v64 = 24.0;
  }

  else
  {
    v64 = 16.0;
  }

  v65 = [v61 constraintEqualToAnchor:v63 constant:v64];

  *(v3 + 128) = v65;
  v66 = [v56 trailingAnchor];
  v67 = [v1 contentView];
  v68 = [v67 trailingAnchor];

  if (*(v77 + 8))
  {
    v69 = -24.0;
  }

  else
  {
    v69 = -16.0;
  }

  v70 = [v66 constraintEqualToAnchor:v68 constant:v69];

  *(v3 + 136) = v70;
  v71 = [v56 bottomAnchor];
  v72 = [v1 contentView];
  v73 = [v72 bottomAnchor];

  v74 = -14.0;
  if (*(v77 + 8))
  {
    v74 = -24.0;
  }

  v75 = [v71 constraintLessThanOrEqualToAnchor:v73 constant:v74];

  *(v3 + 144) = v75;
  *&v1[v78] = v3;

  v76 = sub_20C13CC54();

  [v79 activateConstraints_];
}

uint64_t type metadata accessor for WorkoutPlanGalleryBrickItemCell(uint64_t a1)
{
  result = qword_2811008D0;
  if (!qword_2811008D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B883C68(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanGalleryBrickItemCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanGalleryBrickItemCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_20B883DC8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B883E14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B883E7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B883EE0(unint64_t a1, void *a2)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v15[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15[1] = v2;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v17 = v3;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v19 = v4;
    *v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *&v20[9] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v12 = LOBYTE(v15[0]);
    v11 = *(&v16 + 1);
    v5 = v17;
    v6 = v18;
    v7 = v4;
    v8 = *v20;
    v9 = *&v20[16];
    sub_20B52F9E8(v15, v14, &qword_27C765648, &unk_20C15EEB0);
    sub_20B884510(v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9);

    v10 = sub_20C1380F4();
    sub_20BD8E578(v12, a2, v10);
  }

  else
  {
    sub_20C13DE24();
    __break(1u);
  }
}

BOOL sub_20B884050(uint64_t a1)
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  return v1 == sub_20C138104();
}

void sub_20B884088(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView);
  v8 = &v7[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork];
  swift_beginAccess();
  v51[0] = *v8;
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  v11 = *(v8 + 3);
  v52 = *(v8 + 8);
  v51[2] = v10;
  v51[3] = v11;
  v51[1] = v9;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_20B520158(v51, &qword_27C765640, &unk_20C158F20);
  v12 = &v7[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  [v7 setNeedsDisplay];
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v13;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v49 = v15;
    v50[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *(v50 + 9) = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v46 = v14;
    v47 = v16;
    v17 = v44;
    v39[1] = *(&v45 + 1);
    v40 = *(&v14 + 1);
    v18 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout;
    if (v44 == *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout + 8))
    {
      sub_20B52F9E8(&v44, v42, &qword_27C765648, &unk_20C15EEB0);
    }

    else
    {
      *v18 = 0x3FDB6DB6DB6DB6DBLL;
      *(v18 + 8) = v17;
      sub_20B52F9E8(&v44, v42, &qword_27C765648, &unk_20C15EEB0);
      sub_20B883144();
    }

    v42[0] = *v8;
    v27 = *(v8 + 1);
    v28 = *(v8 + 2);
    v29 = *(v8 + 3);
    v43 = *(v8 + 8);
    v42[2] = v28;
    v42[3] = v29;
    v42[1] = v27;
    v31 = v49;
    v30 = v50[0];
    v32 = v48;
    *(v8 + 8) = *&v50[1];
    *(v8 + 2) = v31;
    *(v8 + 3) = v30;
    *(v8 + 1) = v32;
    *v8 = v47;
    sub_20B52F9E8(&v47, &v41, &qword_27C765640, &unk_20C158F20);
    sub_20B520158(v42, &qword_27C765640, &unk_20C158F20);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    [v7 setNeedsDisplay];
    v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel);
    v34 = sub_20C13C914();

    [v33 setText_];

    v35 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel);
    v36 = sub_20C13C914();

    [v35 setText_];

    v37 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel);
    v38 = v40;
    [v37 setAttributedText_];
    sub_20B520158(&v47, &qword_27C765640, &unk_20C158F20);
  }

  else
  {
    sub_20C13B4A4();

    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v3;
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v21 = 136315138;
      *&v42[0] = a1;

      v24 = sub_20C13C9D4();
      v26 = sub_20B51E694(v24, v25, &v44);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_20B517000, v19, v20, "Unsupported shelf item for WorkoutPlanGalleryBrickItemCell: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);

      (*(v4 + 8))(v6, v22);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

double sub_20B884510(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
  }

  return result;
}

void sub_20B88456C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_layout;
  *v4 = 0x3FDB6DB6DB6DB6DBLL;
  *(v4 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_activatedConstraints) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_artworkView;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 1;
  v6 = objc_allocWithZone(type metadata accessor for WorkoutPlanArtworkView());
  v7 = WorkoutPlanArtworkView.init(artwork:appearance:)(v34, &v33);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v5) = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x277D76988];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_titleLabel;
  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v11 size:0.0];

  [v8 setFont_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v8 setTextColor_];

  [v8 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v14) = v8;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_subtitleLabel;
  v24 = [v15 fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  v25 = [v17 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v23) = v19;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 &selRef_count + 2];
  [v26 setAdjustsFontForContentSizeCategory_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  [v26 setLineBreakMode_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v27 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanGalleryBrickItemCell_detailLabel;
  v31 = [v15 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  v32 = [v17 secondaryLabelColor];
  [v26 setTextColor_];

  *(v1 + v30) = v26;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B884B10(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  v13 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setAllowsDefaultTighteningForTruncation_];
  if (qword_27C760810 != -1)
  {
    swift_once();
  }

  [v12 setTextColor_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for TVShelfSubHeaderView(0);
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel];
  v17 = v14;
  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v21 = *(MEMORY[0x277D768C8] + 16);
  v22 = *(MEMORY[0x277D768C8] + 24);
  v23 = *&v14[v15];
  v24 = [v23 leadingAnchor];
  v25 = [v17 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v19];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  v28 = v26;
  v29 = [v23 trailingAnchor];
  v30 = [v17 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v22];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v23 topAnchor];
  v35 = [v17 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v20];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = [v23 bottomAnchor];
  v39 = [v17 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v21];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14FE90;
  *(v42 + 32) = v28;
  *(v42 + 40) = v33;
  *(v42 + 48) = v36;
  *(v42 + 56) = v40;
  v43 = v36;

  *(inited + 32) = v42;
  v44 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C7677E0, &unk_20C15AA30);
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v44 activateConstraints_];

  return v17;
}

id sub_20B8851DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfSubHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfSubHeaderView(uint64_t a1)
{
  result = qword_27C766D90;
  if (!qword_27C766D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8852D4(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20B8853A4()
{
  if (qword_27C760660 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() itemWithLayoutSize_];

  return v0;
}

uint64_t sub_20B885428@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

double sub_20B885480(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_20B8854CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (((a3 >> 57) & 0x78 | a3 & 7) == 0x1C)
  {
    v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel);
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x18))
    {
      v5 = sub_20C13C914();
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v4 setText_];
  }
}

void sub_20B885568()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setAllowsDefaultTighteningForTruncation_];
  if (qword_27C760810 != -1)
  {
    swift_once();
  }

  [v4 setTextColor_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B885750(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for TVShelfSubHeaderView(0)) initWithFrame_];
  v9 = *&v8[OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_subHeaderLabel];
  if (*(a1 + 144))
  {
    v10 = sub_20C13C914();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  [objc_msgSend(a2 container)];
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();
  [objc_msgSend(a2 container)];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = v16 - v12 - v14 - a3 - a4 + 20.0;
  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1112014848;
  [v8 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v18, v19}];
  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v22 absoluteDimension_];
  v24 = [v22 estimatedDimension_];
  v25 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v24];

  v26 = sub_20C13C914();
  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:v26 alignment:2 absoluteOffset:{20.0, 0.0}];

  return v27;
}

char *sub_20B8859A4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v0[v1] = v2;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for InstructionsImageView();
  v4 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = [v4 layer];
  [v5 setShadowRadius_];

  v6 = [v4 layer];
  LODWORD(v7) = 0.25;
  [v6 setShadowOpacity_];

  v8 = [v4 layer];
  [v8 setShadowOffset_];

  v9 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  [v4 addSubview_];
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14FE90;
  v12 = [*&v4[v9] widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v11 + 32) = v13;
  v14 = [*&v4[v9] heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v11 + 40) = v15;
  v16 = [*&v4[v9] centerXAnchor];
  v17 = [v4 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v11 + 48) = v18;
  v19 = [*&v4[v9] centerYAnchor];
  v20 = [v4 centerYAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v11 + 56) = v21;
  sub_20B5E29D0();
  v22 = sub_20C13CC54();

  [v10 activateConstraints_];

  return v4;
}

id sub_20B885EC0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InstructionsImageView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20B885F28()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21InstructionsImageView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B886034(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = (*(a6 + 8))(a1, a2, a4, a6);
  v12 = [v6 contentView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C150050;
  v14 = [v7 contentView];
  v15 = [v14 topAnchor];

  v16 = [v7 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v13 + 32) = v17;
  v18 = [v7 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v7 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v13 + 40) = v21;
  v22 = [v7 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v7 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v13 + 48) = v25;
  v26 = [v7 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v7 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v13 + 56) = v29;
  v30 = [v7 contentView];
  v31 = [v30 widthAnchor];

  v32 = [v31 constraintEqualToConstant_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v33) = v38;
  [v32 setPriority_];
  *(v13 + 64) = v32;
  sub_20B5E29D0();
  v34 = sub_20C13CC54();

  [v36 activateConstraints_];

  return (*(a5 + 64))(a1, a3, a4, a5);
}

void sub_20B886780(unint64_t a1, void *a2)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x48)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v44[0] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44[1] = v2;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v46 = v3;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
    v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
    v48 = v4;
    *v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x70);
    *&v49[9] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x79);
    v39 = LOBYTE(v44[0]);
    v38 = *(&v45 + 1);
    v5 = v46;
    v6 = v47;
    v7 = v4;
    v8 = *v49;
    v9 = *&v49[8];
    v10 = *&v49[16];
    sub_20B886C20(v44, v43);
    sub_20B884510(v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, v9, v10);

    v11 = sub_20C1380F4();
    sub_20BD8E578(v39, a2, v11);
    v13 = v12;
    v14 = [v41 contentView];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];

    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20C150050;
    v17 = [v41 contentView];
    v18 = [v17 topAnchor];

    v19 = [v41 topAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v16 + 32) = v20;
    v21 = [v41 contentView];
    v22 = [v21 bottomAnchor];

    v23 = [v41 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v16 + 40) = v24;
    v25 = [v41 contentView];
    v26 = [v25 leadingAnchor];

    v27 = [v41 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v16 + 48) = v28;
    v29 = [v41 contentView];
    v30 = [v29 trailingAnchor];

    v31 = [v41 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v16 + 56) = v32;
    v33 = [v41 contentView];
    v34 = [v33 widthAnchor];

    v35 = [v34 constraintEqualToConstant_];
    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v36) = v43[0];
    [v35 setPriority_];
    *(v16 + 64) = v35;
    sub_20B5E29D0();
    v37 = sub_20C13CC54();

    [v15 activateConstraints_];

    sub_20B884088(a1);
  }

  else
  {
    sub_20C13DE24();
    __break(1u);
  }
}

uint64_t sub_20B886C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765648, &unk_20C15EEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_20B886C90(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SessionRoutePickerFooterView();
  v13 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView];
  v16 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = v16;
  v18 = *&v13[v14];
  v19 = v17;
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  [*&v19[OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *&v19[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 lightTextColor];
  [v23 setBackgroundColor_];

  [v19 addSubview_];
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C151850;
  v27 = [*&v13[v14] widthAnchor];
  v28 = [v19 widthAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v29;
  v30 = [*&v13[v14] heightAnchor];
  v31 = [v19 heightAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v26 + 40) = v32;
  v33 = [*&v19[v20] topAnchor];
  v34 = [v19 topAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v26 + 48) = v35;
  v36 = [*&v19[v20] bottomAnchor];
  v37 = [v19 topAnchor];

  v38 = [v36 constraintEqualToAnchor:v37 constant:0.5];
  *(v26 + 56) = v38;
  v39 = [*&v19[v20] leadingAnchor];
  v40 = [v19 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v26 + 64) = v41;
  v42 = [*&v19[v20] trailingAnchor];
  v43 = [v19 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v26 + 72) = v44;
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v25 activateConstraints_];

  return v19;
}

id sub_20B88718C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRoutePickerFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B887230()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI28SessionRoutePickerFooterView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B887320(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + 104) = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 120);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + 160) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 168);
  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v3);

  return v1;
}

uint64_t sub_20B88755C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B8876D4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B887644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B8876D4();
}

uint64_t sub_20B8876D4()
{
  v1[17] = v0;
  v2 = sub_20C13BB84();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v1[23] = *(v4 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_20C13CDA4();
  v1[27] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[28] = v6;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_20B887850, v6, v5);
}

uint64_t sub_20B887850()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(v6 + 21, v6[24]);
  sub_20C139724();
  v7 = *__swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
  *(v0 + 40) = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v7;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  sub_20B51C710((v0 + 56), v8 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B888250;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B8404CC;
  *(v10 + 24) = v9;
  (*(v5 + 16))(v2, v1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v4);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20B8404D4;
  v13[1] = v10;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  sub_20C137C94();
  v14 = *(v5 + 8);
  *(v0 + 248) = v14;
  *(v0 + 256) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v4);

  return MEMORY[0x2822009F8](sub_20B887AB4, 0, 0);
}

uint64_t sub_20B887AB4()
{
  v1 = v0[26];
  v2 = swift_task_alloc();
  v0[33] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueButtonPresenter.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_20B887BC4;
  v4 = v0[30];

  return MEMORY[0x2822008A0](v0 + 15, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B888314, v2, v4);
}

uint64_t sub_20B887BC4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = sub_20B887E48;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[31];
    v7 = v2[26];
    v8 = v2[21];
    v2[36] = v2[15];

    v6(v7, v8);
    v4 = v2[28];
    v5 = v2[29];
    v3 = sub_20B887D30;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B887D30()
{
  v1 = *(v0 + 288);

  v2 = *(v1 + 16);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount) = v2;
    sub_20BAB8C50();
    sub_20BAB8EF0(*(v4 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary), 0);
    swift_unknownObjectRelease();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    *(v5 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount) = v2;
    sub_20BAB8C50();
    sub_20BAB8EF0(*(v6 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary), 0);
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20B887E48()
{
  (*(v0 + 248))(*(v0 + 208), *(v0 + 168));
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_20B887EB4, v1, v2);
}

uint64_t sub_20B887EB4()
{
  v20 = v0;
  v1 = *(v0 + 280);

  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 152);
    v18 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](*(v0 + 104), *(v0 + 112));
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[UpNextQueueButtonPresenter] Failed to query up next queue: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20B8880B4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  return sub_20C137C94();
}

uint64_t sub_20B8881BC()
{
  sub_20B583E6C((v0 + 2));
  sub_20B583E6C((v0 + 4));
  sub_20B583ECC(v0[6], v0[7]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_20B888258(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E081C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B888324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B88753C(v0);
}

uint64_t static AccountFitnessSettingsChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for RemoteBrowsingWorkoutCompleted(uint64_t a1)
{
  result = qword_27C766DB8;
  if (!qword_27C766DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8884A0(uint64_t a1)
{
  sub_20B8885B4(319, &qword_27C766DC8, MEMORY[0x277D50400]);
  if (v1 <= 0x3F)
  {
    sub_20B8885B4(319, &qword_27C766DD0, MEMORY[0x277D502A0]);
    if (v2 <= 0x3F)
    {
      sub_20B8885B4(319, &qword_27C766DD8, MEMORY[0x277D51EA0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B8885B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for RemoteParticipantButton(uint64_t a1)
{
  result = qword_27C766DE0;
  if (!qword_27C766DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B888654(uint64_t a1)
{
  sub_20B8886CC();
  if (v1 <= 0x3F)
  {
    sub_20B88872C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B8886CC()
{
  if (!qword_27C766DF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766DF0);
    }
  }
}

void sub_20B88872C(uint64_t a1)
{
  if (!qword_27C766DF8)
  {
    sub_20C135174();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E00, &qword_20C15F078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C766DF8);
    }
  }
}

void sub_20B8887AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C135174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteParticipantButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B864224(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = 3;
      goto LABEL_6;
    }

    MEMORY[0x20F2F58E0](2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = 0;
LABEL_6:
      MEMORY[0x20F2F58E0](v11);
      sub_20C13CA64();

      sub_20C13CA64();

      return;
    }

    v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8, &unk_20C158990) + 48)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x20F2F58E0](1);
    sub_20B888B00(&unk_27C764640, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
    sub_20C13C7C4();
    sub_20C13E184();
    if (v13)
    {
      sub_20C13CA64();
      v16.n128_f64[0] = sub_20B7A7B44(v13, v14, v15);
    }

    (*(v4 + 8))(v6, v3, v16);
  }
}

uint64_t sub_20B888A34()
{
  sub_20C13E164();
  sub_20B8887AC(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B888A78(uint64_t a1)
{
  sub_20C13E164();
  sub_20B8887AC(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B888B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B888B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135174();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteParticipantButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v62 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E10, &qword_20C15F0F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v20 = (&v62 + *(v19 + 56) - v17);
  sub_20B864224(a1, &v62 - v17);
  sub_20B864224(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_27:
        sub_20B889164(v18);
        return 0;
      }

      goto LABEL_53;
    }

    sub_20B864224(v18, v9);
    v27 = *v9;
    v26 = v9[1];
    v25 = v9[2];
    v24 = v9[3];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_25:

      goto LABEL_27;
    }

    v29 = v20[2];
    v28 = v20[3];
    v30 = v27 == *v20 && v26 == v20[1];
    if (!v30)
    {
      v31 = sub_20C13DFF4();

      if ((v31 & 1) == 0)
      {
LABEL_33:

        goto LABEL_49;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20B864224(v18, v15);
    v23 = *v15;
    v22 = v15[1];
    v25 = v15[2];
    v24 = v15[3];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_25;
    }

    v29 = v20[2];
    v28 = v20[3];
    if (v23 != *v20 || v22 != v20[1])
    {
      v53 = sub_20C13DFF4();

      if ((v53 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

LABEL_36:

LABEL_37:
    if (v25 == v29 && v24 == v28)
    {
    }

    else
    {
      v58 = sub_20C13DFF4();

      if ((v58 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_53;
  }

  sub_20B864224(v18, v12);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8, &unk_20C158990) + 48);
  v34 = *&v12[v32];
  v33 = *&v12[v32 + 8];
  v35 = *&v12[v32 + 16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = sub_20B7A7B44(v34, v33, v35);
    (*(v67 + 8))(v12, v4, v51);
    goto LABEL_27;
  }

  v65 = v35;
  v66 = v34;
  v64 = v33;
  v36 = *(v20 + v32);
  v37 = *(v20 + v32 + 8);
  v38 = *(v20 + v32 + 16);
  v39 = v67;
  (*(v67 + 32))(v6, v20, v4);
  v40 = MEMORY[0x20F2EC8B0](v12, v6);
  v41 = *(v39 + 8);
  v41(v12, v4);
  if ((v40 & 1) == 0)
  {
    v41(v6, v4);
    sub_20B7A7B44(v36, v37, v38);
    v55 = v65;
    v54 = v66;
    v56 = v64;
LABEL_48:
    sub_20B7A7B44(v54, v56, v55);
    goto LABEL_49;
  }

  v42 = v37;
  v43 = v66;
  if (!v66)
  {
    v41(v6, v4);
    v44 = v36;
    v45 = v64;
    if (!v44)
    {
      v43 = 0;
      v48 = v65;
LABEL_52:
      sub_20B7A7B44(v43, v45, v48);
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v44 = v36;
  v45 = v64;
  if (!v44)
  {
    v59 = sub_20B889228(v66, v64, v65);
    (v41)(v6, v4, v59);

    v43 = v66;

LABEL_47:
    sub_20B7A7B44(v43, v45, v65);
    v54 = v44;
    v56 = v42;
    v55 = v38;
    goto LABEL_48;
  }

  v46 = v42;
  v30 = v64 == v42;
  v47 = v38;
  v48 = v65;
  if (v30 && v65 == v47)
  {
    v61 = sub_20B889228(v66, v64, v65);
    (v41)(v6, v4, v61);
    sub_20B7A7B44(v44, v45, v48);

    goto LABEL_52;
  }

  v63 = v46;
  LODWORD(v67) = sub_20C13DFF4();
  v50 = sub_20B889228(v43, v45, v48);
  (v41)(v6, v4, v50);
  sub_20B7A7B44(v44, v63, v47);

  sub_20B7A7B44(v43, v45, v48);
  if ((v67 & 1) == 0)
  {
LABEL_49:
    sub_20B8891CC(v18);
    return 0;
  }

LABEL_53:
  sub_20B8891CC(v18);
  return 1;
}

uint64_t sub_20B889164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E10, &qword_20C15F0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B8891CC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteParticipantButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_20B889228(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

id sub_20B8893D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TintableLabel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_20B8894BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_20B88FD2C(a4, a5, a6);
  }

  while ((sub_20C13C894() & 1) == 0);
  return v10 != v11;
}

BOOL sub_20B8895C4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xED000073676E6952;
    v9 = 0x7974697669746361;
    switch(*v4)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x7261426E727562;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v10 = 0x636E65646163;
        goto LABEL_20;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6174736964;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x796772656E65;
        break;
      case 5:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        break;
      case 6:
        v8 = 0xE900000000000074;
        v9 = 0x6867696C68676968;
        break;
      case 7:
        v8 = 0xE900000000000079;
        v9 = 0x7469736E65746E69;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v10 = 0x6E696C636E69;
LABEL_20:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v8 = 0xE300000000000000;
        v9 = 7172210;
        break;
      case 0xA:
        v8 = 0xE900000000000072;
        v9 = 0x6F74617261706573;
        break;
      case 0xB:
        v9 = 7172211;
        v8 = 0xE300000000000000;
        break;
      case 0xC:
        v8 = 0xE800000000000000;
        v9 = 0x73736572676F7270;
        break;
      case 0xD:
        v8 = 0xE500000000000000;
        v9 = 0x72656D6974;
        break;
      case 0xE:
        v9 = 0x617254636973756DLL;
        v8 = 0xEA00000000006B63;
        break;
      default:
        break;
    }

    v11 = 0x7974697669746361;
    v12 = 0xED000073676E6952;
    switch(a1)
    {
      case 1:
        v12 = 0xE700000000000000;
        if (v9 == 0x7261426E727562)
        {
          goto LABEL_47;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x636E65646163;
        goto LABEL_50;
      case 3:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6174736964)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 4:
        v12 = 0xE600000000000000;
        if (v9 != 0x796772656E65)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 5:
        v12 = 0xE900000000000065;
        if (v9 != 0x7461527472616568)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 6:
        v12 = 0xE900000000000074;
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 7:
        v12 = 0xE900000000000079;
        if (v9 != 0x7469736E65746E69)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 8:
        v12 = 0xE700000000000000;
        v13 = 0x6E696C636E69;
LABEL_50:
        if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 9:
        v12 = 0xE300000000000000;
        if (v9 != 7172210)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 10:
        v12 = 0xE900000000000072;
        v11 = 0x6F74617261706573;
        goto LABEL_46;
      case 11:
        v12 = 0xE300000000000000;
        if (v9 != 7172211)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 12:
        v12 = 0xE800000000000000;
        if (v9 != 0x73736572676F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 13:
        v12 = 0xE500000000000000;
        if (v9 != 0x72656D6974)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 14:
        v12 = 0xEA00000000006B63;
        if (v9 != 0x617254636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_47:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_20C13DFF4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_20B889A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_20C13DFF4();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

BOOL sub_20B889B14(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xED000073676E6952;
    v9 = 0x7974697669746361;
    switch(*v4)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x7261426E727562;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v10 = 0x636E65646163;
        goto LABEL_19;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6174736964;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x796772656E65;
        break;
      case 5:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        break;
      case 6:
        v8 = 0xE900000000000074;
        v9 = 0x6867696C68676968;
        break;
      case 7:
        v8 = 0xE900000000000079;
        v9 = 0x7469736E65746E69;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v10 = 0x6E696C636E69;
LABEL_19:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v8 = 0xE300000000000000;
        v9 = 7172210;
        break;
      case 0xA:
        v8 = 0xE900000000000072;
        v9 = 0x6F74617261706573;
        break;
      case 0xB:
        v9 = 7172211;
        v8 = 0xE300000000000000;
        break;
      case 0xC:
        v8 = 0xE800000000000000;
        v9 = 0x73736572676F7270;
        break;
      case 0xD:
        v8 = 0xE500000000000000;
        v9 = 0x72656D6974;
        break;
      default:
        break;
    }

    v11 = 0x7974697669746361;
    v12 = 0xED000073676E6952;
    switch(a1)
    {
      case 1:
        v12 = 0xE700000000000000;
        if (v9 == 0x7261426E727562)
        {
          goto LABEL_44;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x636E65646163;
        goto LABEL_47;
      case 3:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6174736964)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 4:
        v12 = 0xE600000000000000;
        if (v9 != 0x796772656E65)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 5:
        v12 = 0xE900000000000065;
        if (v9 != 0x7461527472616568)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 6:
        v12 = 0xE900000000000074;
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 7:
        v12 = 0xE900000000000079;
        if (v9 != 0x7469736E65746E69)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 8:
        v12 = 0xE700000000000000;
        v13 = 0x6E696C636E69;
LABEL_47:
        if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 9:
        v12 = 0xE300000000000000;
        if (v9 != 7172210)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 10:
        v12 = 0xE900000000000072;
        v11 = 0x6F74617261706573;
        goto LABEL_43;
      case 11:
        v12 = 0xE300000000000000;
        if (v9 != 7172211)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 12:
        v12 = 0xE800000000000000;
        if (v9 != 0x73736572676F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      case 13:
        v12 = 0xE500000000000000;
        if (v9 != 0x72656D6974)
        {
          goto LABEL_2;
        }

        goto LABEL_44;
      default:
LABEL_43:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_44:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_20C13DFF4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t sub_20B889EDC(uint64_t a1, void *a2, char *a3, unint64_t a4, void (*a5)(void, void, void), char *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v726 = a8;
  v727 = a2;
  v729 = a6;
  v730 = a5;
  v722 = a4;
  v728 = a3;
  v733 = a1;
  LODWORD(v741) = a9;
  v773 = *MEMORY[0x277D85DE8];
  v9 = sub_20C133A74();
  v10 = *(v9 - 8);
  v731 = v9;
  v732 = v10;
  MEMORY[0x28223BE20](v9);
  v725 = &v685 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v12 - 8);
  v693 = &v685 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v687 = &v685 - v15;
  MEMORY[0x28223BE20](v16);
  v685 = &v685 - v17;
  MEMORY[0x28223BE20](v18);
  v692 = &v685 - v19;
  MEMORY[0x28223BE20](v20);
  v691 = &v685 - v21;
  MEMORY[0x28223BE20](v22);
  v690 = &v685 - v23;
  MEMORY[0x28223BE20](v24);
  v689 = &v685 - v25;
  v743 = sub_20C134EC4();
  v740 = *(v743 - 8);
  MEMORY[0x28223BE20](v743);
  v721 = (&v685 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v719 = &v685 - v28;
  MEMORY[0x28223BE20](v29);
  v715 = &v685 - v30;
  MEMORY[0x28223BE20](v31);
  v720 = &v685 - v32;
  MEMORY[0x28223BE20](v33);
  v718 = &v685 - v34;
  MEMORY[0x28223BE20](v35);
  v714 = &v685 - v36;
  MEMORY[0x28223BE20](v37);
  v717 = &v685 - v38;
  MEMORY[0x28223BE20](v39);
  v742 = &v685 - v40;
  v723 = v41;
  MEMORY[0x28223BE20](v42);
  v716 = (&v685 - v43);
  v44 = sub_20C135524();
  v45 = *(v44 - 8);
  v738 = v44;
  v739 = v45;
  MEMORY[0x28223BE20](v44);
  v713 = &v685 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v712 = &v685 - v48;
  MEMORY[0x28223BE20](v49);
  v711 = &v685 - v50;
  MEMORY[0x28223BE20](v51);
  v710 = &v685 - v52;
  MEMORY[0x28223BE20](v53);
  v686 = &v685 - v54;
  MEMORY[0x28223BE20](v55);
  v695 = &v685 - v56;
  MEMORY[0x28223BE20](v57);
  v709 = &v685 - v58;
  MEMORY[0x28223BE20](v59);
  v708 = &v685 - v60;
  MEMORY[0x28223BE20](v61);
  v707 = &v685 - v62;
  MEMORY[0x28223BE20](v63);
  v706 = &v685 - v64;
  MEMORY[0x28223BE20](v65);
  v705 = &v685 - v66;
  MEMORY[0x28223BE20](v67);
  v704 = &v685 - v68;
  MEMORY[0x28223BE20](v69);
  v688 = &v685 - v70;
  MEMORY[0x28223BE20](v71);
  v699 = &v685 - v72;
  MEMORY[0x28223BE20](v73);
  v736 = &v685 - v74;
  MEMORY[0x28223BE20](v75);
  v735 = &v685 - v76;
  MEMORY[0x28223BE20](v77);
  v697 = &v685 - v78;
  MEMORY[0x28223BE20](v79);
  v696 = &v685 - v80;
  v724 = 0;
  v744 = sub_20C133E24();
  v737 = *(v744 - 8);
  MEMORY[0x28223BE20](v744);
  v703 = &v685 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v701 = &v685 - v83;
  MEMORY[0x28223BE20](v84);
  v694 = &v685 - v85;
  MEMORY[0x28223BE20](v86);
  v702 = &v685 - v87;
  MEMORY[0x28223BE20](v88);
  v700 = &v685 - v89;
  MEMORY[0x28223BE20](v90);
  v698 = &v685 - v91;
  MEMORY[0x28223BE20](v92);
  v94 = &v685 - v93;
  MEMORY[0x28223BE20](v95);
  v734 = &v685 - v96;
  MEMORY[0x28223BE20](v97);
  v99 = &v685 - v98;
  v100.i64[0] = *(sub_20C135894() + 16);
  v748 = v100;

  v101 = sub_20C1358F4();
  v102.i64[0] = v748.i64[0];
  v102.i64[1] = *(v101 + 16);
  v748 = v102;

  v103.i64[0] = *(sub_20C135904() + 16);
  v747 = v103;

  v104 = sub_20C1358A4();
  v105.i64[0] = v747.i64[0];
  v105.i64[1] = *(v104 + 16);
  v747 = v105;

  v106.i64[0] = *(sub_20C135874() + 16);
  v746 = v106;

  v107 = sub_20C1358B4();
  v108.i64[0] = v746.i64[0];
  v108.i64[1] = *(v107 + 16);
  v746 = v108;

  sub_20C135864();
  v109 = sub_20C13CFB4();

  v110.i64[0] = *(v109 + 16);
  v745 = v110;

  v111 = *(sub_20C1358E4() + 16);

  if (v111)
  {
    v112 = 8;
  }

  else
  {
    v112 = 9;
  }

  v113 = sub_20C1358C4();
  v114.i64[0] = v745.i64[0];
  v114.i64[1] = *(v113 + 16);
  v745 = v114;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E18, &qword_20C15F110);
  v115 = swift_allocObject();
  v115[4] = vbsl_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v748), vceqzq_s64(v747)), vuzp1q_s32(vceqzq_s64(v746), vceqzq_s64(v745)))), 0x909090909090909, 0x706050304010200);
  v115[5].i8[0] = v112;
  v116 = MEMORY[0x277D84F90];
  for (i = 32; i != 41; ++i)
  {
    v118 = v115->u8[i];
    if (v118 != 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_20BC07848(0, *(v116 + 2) + 1, 1, v116);
      }

      v120 = *(v116 + 2);
      v119 = *(v116 + 3);
      if (v120 >= v119 >> 1)
      {
        v116 = sub_20BC07848((v119 > 1), v120 + 1, 1, v116);
      }

      *(v116 + 2) = v120 + 1;
      v116[v120 + 32] = v118;
    }
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v121 = *(v116 + 2);
  v122 = (v116 + 32);
  v123 = v741;
  if (v741 <= 3u)
  {
    if (v741 > 1u)
    {
      goto LABEL_41;
    }

    if (v741)
    {
      goto LABEL_36;
    }

    do
    {
      if (!v121)
      {
        goto LABEL_28;
      }

      v163 = *v122++;
      --v121;
    }

    while (v163);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
    v748.i64[0] = swift_allocObject();
    *(v748.i64[0] + 16) = xmmword_20C14F980;
    v164 = sub_20C135894();
    v94 = *(v737 + 16);
    (v94)(v99, v727, v744);
    v165 = v738;
    v166 = (v739 + 2);
    v167 = v739[2];
    v167(v696, v728, v738);
    v747.i64[0] = v166;
    v746.i64[0] = v167;
    v167(v697, v729, v165);
    v168 = (v740 + 16);
    v169 = *(v740 + 16);
    (v169)(v716, v730, v743);
    sub_20B6AE918(v722, v689);
    type metadata accessor for BodyFocusFilterOptionsShelf(0);
    v170 = swift_allocObject();
    *(v170 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v171 = v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row;
    sub_20B5D8060(&v762);
    v172 = v771;
    *(v171 + 128) = v770;
    *(v171 + 144) = v172;
    *(v171 + 160) = v772;
    v173 = v767;
    *(v171 + 64) = v766;
    *(v171 + 80) = v173;
    v174 = v769;
    *(v171 + 96) = v768;
    *(v171 + 112) = v174;
    v175 = v763;
    *v171 = v762;
    *(v171 + 16) = v175;
    v176 = v765;
    *(v171 + 32) = v764;
    *(v171 + 48) = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
    sub_20C133AA4();
    v177 = *(v164 + 16);
    if (!v177)
    {
      goto LABEL_95;
    }

    v178 = sub_20BEDE884(*(v164 + 16), 0);
    v179 = *(sub_20C138244() - 8);
    sub_20BEE20B4(v761, &v178[(*(v179 + 80) + 32) & ~*(v179 + 80)], v177, v164);
    v181 = v180;
    sub_20B583EDC(*&v761[0]);
    if (v181 == v177)
    {
      goto LABEL_96;
    }

    __break(1u);
    do
    {
LABEL_36:
      if (!v121)
      {
        goto LABEL_28;
      }

      v182 = *v122++;
      --v121;
    }

    while (v182 != 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
    v748.i64[0] = swift_allocObject();
    *(v748.i64[0] + 16) = xmmword_20C14F980;
    v183 = sub_20C135904();
    v184 = *(v737 + 16);
    v184(v94, v727, v744);
    v185 = v738;
    v186 = (v739 + 2);
    v187 = v739[2];
    v187(v699, v728, v738);
    v747.i64[0] = v186;
    v746.i64[0] = v187;
    v187(v688, v729, v185);
    v189 = (v740 + 16);
    v188 = *(v740 + 16);
    v188(v717, v730, v743);
    sub_20B6AE918(v722, v690);
    type metadata accessor for EquipmentFilterOptionsShelf(0);
    v131 = swift_allocObject();
    *(v131 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v190 = v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row;
    sub_20B5D8060(&v762);
    v191 = v771;
    *(v190 + 128) = v770;
    *(v190 + 144) = v191;
    *(v190 + 160) = v772;
    v192 = v767;
    *(v190 + 64) = v766;
    *(v190 + 80) = v192;
    v193 = v769;
    *(v190 + 96) = v768;
    *(v190 + 112) = v193;
    v194 = v763;
    *v190 = v762;
    *(v190 + 16) = v194;
    v195 = v765;
    *(v190 + 32) = v764;
    *(v190 + 48) = v195;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
    sub_20C133AA4();
    v196 = *(v183 + 16);
    if (v196)
    {
      v197 = sub_20BEDE8AC(*(v183 + 16), 0);
      v198 = *(sub_20C1382B4() - 8);
      sub_20BEE209C(v761, &v197[(*(v198 + 80) + 32) & ~*(v198 + 80)], v196, v183);
      v200 = v199;
      sub_20B583EDC(*&v761[0]);
      if (v200 != v196)
      {
        __break(1u);
LABEL_41:
        if (v123 != 2)
        {
          goto LABEL_47;
        }

        do
        {
          if (!v121)
          {
            goto LABEL_28;
          }

          v201 = *v122++;
          --v121;
        }

        while (v201 != 2);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
        v748.i64[0] = swift_allocObject();
        *(v748.i64[0] + 16) = xmmword_20C14F980;
        v202 = sub_20C1358F4();
        v203 = *(v737 + 16);
        v203(v700, v727, v744);
        v204 = v738;
        v205 = v739[2];
        v205(v706, v728, v738);
        v747.i64[0] = v205;
        v205(v707, v729, v204);
        v206 = (v740 + 16);
        v207 = *(v740 + 16);
        v207(v718, v730, v743);
        sub_20B6AE918(v722, v691);
        type metadata accessor for DurationFilterOptionsShelf(0);
        v131 = swift_allocObject();
        *(v131 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_20C132ED4();
        v208 = v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_row;
        sub_20B5D8060(&v762);
        v209 = v767;
        *(v208 + 64) = v766;
        *(v208 + 80) = v209;
        *(v208 + 160) = v772;
        v210 = v771;
        *(v208 + 128) = v770;
        *(v208 + 144) = v210;
        v211 = v769;
        *(v208 + 96) = v768;
        *(v208 + 112) = v211;
        v212 = v763;
        *v208 = v762;
        *(v208 + 16) = v212;
        v213 = v765;
        *(v208 + 32) = v764;
        *(v208 + 48) = v213;
        v214 = *(v202 + 16);
        if (v214)
        {
          v215 = sub_20BEDE80C(*(v202 + 16), 0);
          v216 = *(sub_20C1341A4() - 8);
          sub_20BEE2054(&v750, &v215[(*(v216 + 80) + 32) & ~*(v216 + 80)], v214, v202);
          v218 = v217;
          sub_20B583EDC(v750);
          if (v218 != v214)
          {
            __break(1u);
            do
            {
LABEL_47:
              if (!v121)
              {
                goto LABEL_28;
              }

              v219 = *v122++;
              --v121;
            }

            while (v219 != 3);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
            v748.i64[0] = swift_allocObject();
            *(v748.i64[0] + 16) = xmmword_20C14F980;
            v220 = sub_20C135874();
            v746.i64[0] = *(v737 + 16);
            (v746.i64[0])(v698, v727, v744);
            v221 = v738;
            v222 = v739[2];
            v222(v704, v728, v738);
            v222(v705, v729, v221);
            v223 = *(v740 + 16);
            v223(v714, v730, v743);
            type metadata accessor for ModalityFilterOptionsShelf(0);
            v131 = swift_allocObject();
            *(v131 + 24) = 0;
            swift_unknownObjectWeakInit();
            sub_20C132ED4();
            v224 = v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row;
            sub_20B5D8060(&v762);
            v225 = v767;
            *(v224 + 64) = v766;
            *(v224 + 80) = v225;
            *(v224 + 160) = v772;
            v226 = v771;
            *(v224 + 128) = v770;
            *(v224 + 144) = v226;
            v227 = v769;
            *(v224 + 96) = v768;
            *(v224 + 112) = v227;
            v228 = v763;
            *v224 = v762;
            *(v224 + 16) = v228;
            v229 = v765;
            *(v224 + 32) = v764;
            *(v224 + 48) = v229;
            v230 = *(v220 + 16);
            if (v230)
            {
              v231 = sub_20BEDE834(*(v220 + 16), 0);
              v232 = *(sub_20C1365F4() - 8);
              sub_20BEE2024(&v750, &v231[(*(v232 + 80) + 32) & ~*(v232 + 80)], v230, v220);
              v234 = v233;
              sub_20B583EDC(v750);
              if (v234 != v230)
              {
                __break(1u);
                goto LABEL_52;
              }
            }

            else
            {

              v231 = MEMORY[0x277D84F90];
            }

            v320 = v724;
            *&v750 = v231;

            sub_20B98080C(&v750);
            if (v320)
            {
              goto LABEL_131;
            }

            v747.i64[0] = v750;
            (v746.i64[0])(v734, v698, v744);
            v455 = v738;
            v222(v735, v704, v738);
            v223(v742, v714, v743);
            v222(v736, v705, v455);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E60, &unk_20C165A90);
            v456 = swift_allocObject();
            *(v456 + 48) = 0u;
            *(v456 + 64) = 0u;
            *(v456 + 80) = 0u;
            *(v456 + 96) = 0u;
            *(v456 + 112) = 0u;
            v457 = *(*v456 + 176);
            v458 = sub_20C1365F4();
            v459 = *(*(v458 - 8) + 56);
            v459(v456 + v457, 1, 1, v458);
            v459(v456 + *(*v456 + 184), 1, 1, v458);
            v459(v456 + *(*v456 + 192), 1, 1, v458);
            *(v456 + 40) = v733;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
            sub_20C133AA4();
            v460 = *(&v750 + 1);
            *(v456 + 16) = v750;
            *(v456 + 24) = v460;
            sub_20C13A924();
            swift_allocObject();
            swift_unknownObjectRetain();
            *(v456 + 32) = sub_20C13A914();
            v461 = v747.i64[0];
            *(v456 + *(*v456 + 216)) = v747.i64[0];
            *(v456 + *(*v456 + 224)) = v461;
            *(v456 + *(*v456 + 208)) = 3;
            *(v456 + *(*v456 + 200)) = v726;
            v462 = v222;
            v463 = v737;
            (*(v737 + 32))(v456 + qword_27C79BF30, v734, v744);
            v464 = v735;
            v462(v456 + qword_27C79BF38, v735, v455);
            v465 = v739;
            v466 = v739[4];
            v466(v456 + *(*v456 + 232), v464, v455);
            v466(v456 + *(*v456 + 240), v736, v455);
            v467 = *(*v456 + 248);
            v468 = v740 + 32;
            v746.i64[0] = *(v740 + 32);
            (v746.i64[0])(v456 + v467, v742, v743);
            *(v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator) = v456;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
            sub_20C133AA4();
            v469 = v465[1];
            v469(v705, v455);
            v469(v704, v455);
            (*(v463 + 8))(v698, v744);
            sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer);
            v470 = *(v131 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator);
            v471 = OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator;
            v472 = swift_allocObject();
            swift_weakInit();
            v473 = *(v470 + 48);
            v474 = *(v470 + 56);
            *(v470 + 48) = sub_20B88FB50;
            *(v470 + 56) = v472;

            sub_20B583ECC(v473, v474);

            v475 = *(v131 + v471);
            v747.i64[0] = v471;
            v476 = swift_allocObject();
            swift_weakInit();
            v477 = *(v475 + 64);
            v478 = *(v475 + 72);
            *(v475 + 64) = sub_20B88FB58;
            *(v475 + 72) = v476;

            sub_20B583ECC(v477, v478);

            v479 = *(v131 + v471);
            v480 = swift_allocObject();
            swift_weakInit();
            v482 = v742;
            v481 = v743;
            v483 = v746.i64[0];
            (v746.i64[0])(v742, v714, v743);
            v484 = (*(v468 + 48) + 24) & ~*(v468 + 48);
            v485 = swift_allocObject();
            *(v485 + 16) = v480;
            v483(v485 + v484, v482, v481);
            v486 = *(v479 + 80);
            v487 = *(v479 + 88);
            *(v479 + 80) = sub_20B88FB60;
            *(v479 + 88) = v485;

            sub_20B583ECC(v486, v487);

            v488 = v747.i64[0];
            v489 = *(v131 + v747.i64[0]);
            v490 = swift_allocObject();
            swift_weakInit();
            v491 = *(v489 + 96);
            v492 = *(v489 + 104);
            *(v489 + 96) = sub_20B7E05FC;
            *(v489 + 104) = v490;

            sub_20B583ECC(v491, v492);

            v493 = *(v131 + v488);
            v494 = swift_allocObject();
            swift_weakInit();

            v495 = *(v493 + 112);
            v496 = *(v493 + 120);
            *(v493 + 112) = sub_20B88FB78;
            *(v493 + 120) = v494;
            swift_retain_n();
            sub_20B583ECC(v495, v496);

            v366 = &off_2822A84F8;
LABEL_116:
            result = v748.i64[0];
            *(v748.i64[0] + 32) = v131;
            goto LABEL_117;
          }
        }

        else
        {

          v215 = MEMORY[0x277D84F90];
        }

        v320 = v724;
        *&v750 = v215;

        sub_20B9808B4(&v750);
        if (v320)
        {
          goto LABEL_131;
        }

        v746.i64[0] = v750;
        v203(v734, v700, v744);
        v412 = v738;
        v413 = v747.i64[0];
        (v747.i64[0])(v735, v706, v738);
        v207(v742, v718, v743);
        v413(v736, v707, v412);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E58, &unk_20C165AA0);
        v414 = swift_allocObject();
        *(v414 + 48) = 0u;
        *(v414 + 64) = 0u;
        *(v414 + 80) = 0u;
        *(v414 + 96) = 0u;
        *(v414 + 112) = 0u;
        v415 = *(*v414 + 176);
        v416 = sub_20C1341A4();
        v417 = *(*(v416 - 8) + 56);
        v745.i64[0] = v207;
        v417(v414 + v415, 1, 1, v416);
        v417(v414 + *(*v414 + 184), 1, 1, v416);
        v417(v414 + *(*v414 + 192), 1, 1, v416);
        *(v414 + 40) = v733;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
        sub_20C133AA4();
        v418 = *(&v750 + 1);
        *(v414 + 16) = v750;
        *(v414 + 24) = v418;
        sub_20C13A924();
        swift_allocObject();
        swift_unknownObjectRetain();
        *(v414 + 32) = sub_20C13A914();
        v419 = v746.i64[0];
        *(v414 + *(*v414 + 216)) = v746.i64[0];
        *(v414 + *(*v414 + 224)) = v419;
        *(v414 + *(*v414 + 208)) = 2;
        *(v414 + *(*v414 + 200)) = v726;
        v741 = v206;
        v420 = v737;
        (*(v737 + 32))(v414 + qword_27C79BF30, v734, v744);
        v421 = v735;
        (v747.i64[0])(v414 + qword_27C79BF38, v735, v412);
        v422 = v739;
        v423 = v739[4];
        v423(v414 + *(*v414 + 232), v421, v412);
        v423(v414 + *(*v414 + 240), v736, v412);
        v424 = *(*v414 + 248);
        v425 = v740 + 32;
        v747.i64[0] = *(v740 + 32);
        v426 = v743;
        (v747.i64[0])(v414 + v424, v742, v743);
        *(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator) = v414;
        v427 = v691;
        sub_20B6AE918(v691, v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality);
        (v745.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_filterRoot, v718, v426);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
        sub_20C133AA4();
        sub_20B520158(v427, &unk_27C7710A0, &unk_20C156800);
        v428 = v422[1];
        v428(v707, v412);
        v428(v706, v412);
        (*(v420 + 8))(v700, v744);
        sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_storefrontLocalizer);
        v429 = OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator;
        v430 = *(v131 + OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_coordinator);
        v431 = swift_allocObject();
        swift_weakInit();
        v432 = *(v430 + 48);
        v433 = *(v430 + 56);
        *(v430 + 48) = sub_20B88FB20;
        *(v430 + 56) = v431;

        sub_20B583ECC(v432, v433);

        v434 = *(v131 + v429);
        v746.i64[0] = v429;
        v435 = swift_allocObject();
        swift_weakInit();
        v436 = *(v434 + 64);
        v437 = *(v434 + 72);
        *(v434 + 64) = sub_20B88FB28;
        *(v434 + 72) = v435;

        sub_20B583ECC(v436, v437);

        v438 = *(v131 + v429);
        v439 = swift_allocObject();
        swift_weakInit();
        v440 = v742;
        v441 = v747.i64[0];
        (v747.i64[0])(v742, v718, v426);
        v442 = (*(v425 + 48) + 24) & ~*(v425 + 48);
        v443 = swift_allocObject();
        *(v443 + 16) = v439;
        v441(v443 + v442, v440, v426);
        v444 = *(v438 + 80);
        v445 = *(v438 + 88);
        *(v438 + 80) = sub_20B88FB30;
        *(v438 + 88) = v443;

        sub_20B583ECC(v444, v445);

        v446 = v746.i64[0];
        v447 = *(v131 + v746.i64[0]);
        v448 = swift_allocObject();
        swift_weakInit();
        v449 = *(v447 + 96);
        v450 = *(v447 + 104);
        *(v447 + 96) = sub_20B7E05FC;
        *(v447 + 104) = v448;

        sub_20B583ECC(v449, v450);

        v451 = *(v131 + v446);
        v452 = swift_allocObject();
        swift_weakInit();

        v453 = *(v451 + 112);
        v454 = *(v451 + 120);
        *(v451 + 112) = sub_20B88FB48;
        *(v451 + 120) = v452;
        swift_retain_n();
        sub_20B583ECC(v453, v454);

        v366 = &off_2822A2058;
        goto LABEL_116;
      }
    }

    else
    {

      v197 = MEMORY[0x277D84F90];
    }

    v320 = v724;
    v367 = v188;
    *&v761[0] = v197;

    sub_20B98095C(v761);
    if (v320)
    {
LABEL_132:

      __break(1u);
      goto LABEL_133;
    }

    v745.i64[0] = *&v761[0];
    v184(v734, v94, v744);
    v368 = v738;
    v369 = v746.i64[0];
    (v746.i64[0])(v735, v699, v738);
    v741 = v367;
    v367(v742, v717, v743);
    v732 = v189;
    v370 = v688;
    v369(v736, v688, v368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E68, &unk_20C15F160);
    v371 = swift_allocObject();
    *(v371 + 48) = 0u;
    *(v371 + 64) = 0u;
    *(v371 + 80) = 0u;
    *(v371 + 96) = 0u;
    *(v371 + 112) = 0u;
    v372 = *(*v371 + 176);
    v373 = sub_20C1382B4();
    v374 = *(*(v373 - 8) + 56);
    v374(v371 + v372, 1, 1, v373);
    v374(v371 + *(*v371 + 184), 1, 1, v373);
    v374(v371 + *(*v371 + 192), 1, 1, v373);
    *(v371 + 40) = v733;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
    sub_20C133AA4();
    v375 = *(&v761[0] + 1);
    *(v371 + 16) = *&v761[0];
    *(v371 + 24) = v375;
    sub_20C13A924();
    swift_allocObject();
    swift_unknownObjectRetain();
    v376 = sub_20C13A914();
    v377 = v739;
    v378 = v739[1];
    v378(v370, v368);
    v378(v699, v368);
    v379 = v737;
    v380 = v744;
    (*(v737 + 8))(v94, v744);
    *(v371 + 32) = v376;
    v381 = v745.i64[0];
    *(v371 + *(*v371 + 216)) = v745.i64[0];
    *(v371 + *(*v371 + 224)) = v381;
    *(v371 + *(*v371 + 208)) = 1;
    *(v371 + *(*v371 + 200)) = v726;
    (*(v379 + 32))(v371 + qword_27C79BF30, v734, v380);
    v382 = v735;
    (v746.i64[0])(v371 + qword_27C79BF38, v735, v368);
    v383 = v377[4];
    v383(v371 + *(*v371 + 232), v382, v368);
    v383(v371 + *(*v371 + 240), v736, v368);
    v384 = *(*v371 + 248);
    v385 = v740 + 32;
    v747.i64[0] = *(v740 + 32);
    v386 = v743;
    (v747.i64[0])(v371 + v384, v742, v743);
    *(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator) = v371;
    sub_20B6AE988(v690, v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_rootModality);
    v741(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_filterRoot, v717, v386);
    sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_storefrontLocalizer);
    v387 = swift_allocObject();
    swift_weakInit();
    v388 = *(v371 + 48);
    v389 = *(v371 + 56);
    *(v371 + 48) = sub_20B88FB80;
    *(v371 + 56) = v387;

    sub_20B583ECC(v388, v389);

    v390 = *(v131 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator);
    v391 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator;
    v746.i64[0] = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator;
    v392 = swift_allocObject();
    swift_weakInit();
    v393 = *(v390 + 64);
    v394 = *(v390 + 72);
    *(v390 + 64) = sub_20B88FB88;
    *(v390 + 72) = v392;

    sub_20B583ECC(v393, v394);

    v395 = *(v131 + v391);
    v396 = swift_allocObject();
    swift_weakInit();
    v397 = v742;
    v398 = v747.i64[0];
    (v747.i64[0])(v742, v717, v386);
    v399 = (*(v385 + 48) + 24) & ~*(v385 + 48);
    v400 = swift_allocObject();
    *(v400 + 16) = v396;
    v398(v400 + v399, v397, v386);
    v401 = *(v395 + 80);
    v402 = *(v395 + 88);
    *(v395 + 80) = sub_20B88FB90;
    *(v395 + 88) = v400;

    sub_20B583ECC(v401, v402);

    v403 = v746.i64[0];
    v404 = *(v131 + v746.i64[0]);
    v405 = swift_allocObject();
    swift_weakInit();
    v406 = *(v404 + 96);
    v407 = *(v404 + 104);
    *(v404 + 96) = sub_20B7E05FC;
    *(v404 + 104) = v405;

    sub_20B583ECC(v406, v407);

    v408 = *(v131 + v403);
    v409 = swift_allocObject();
    swift_weakInit();

    v410 = *(v408 + 112);
    v411 = *(v408 + 120);
    *(v408 + 112) = sub_20B88FBA8;
    *(v408 + 120) = v409;
    swift_retain_n();
    sub_20B583ECC(v410, v411);

    v366 = &off_2822DF8B8;
    goto LABEL_116;
  }

  if (v741 > 5u)
  {
    if (v741 == 6)
    {
      goto LABEL_27;
    }

    if (v741 == 7)
    {
      do
      {
        if (!v121)
        {
          goto LABEL_28;
        }

        v124 = *v122++;
        --v121;
      }

      while (v124 != 7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
      v748.i64[0] = swift_allocObject();
      *(v748.i64[0] + 16) = xmmword_20C14F980;
      v125 = sub_20C1358C4();
      v126 = *(v737 + 16);
      v126(v701, v727, v744);
      v127 = v738;
      v128 = v739[2];
      v128(v710, v728, v738);
      v747.i64[0] = v128;
      v128(v711, v729, v127);
      v129 = (v740 + 16);
      v130 = *(v740 + 16);
      v130(v719, v730, v743);
      type metadata accessor for TipCategoryFilterOptionsShelf(0);
      v131 = swift_allocObject();
      *(v131 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v132 = v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row;
      sub_20B5D8060(&v762);
      v133 = v767;
      *(v132 + 64) = v766;
      *(v132 + 80) = v133;
      *(v132 + 160) = v772;
      v134 = v771;
      *(v132 + 128) = v770;
      *(v132 + 144) = v134;
      v135 = v769;
      *(v132 + 96) = v768;
      *(v132 + 112) = v135;
      v136 = v763;
      *v132 = v762;
      *(v132 + 16) = v136;
      v137 = v765;
      *(v132 + 32) = v764;
      *(v132 + 48) = v137;
      v138 = *(v125 + 16);
      if (v138)
      {
        v139 = sub_20BEDE924(*(v125 + 16), 0);
        v140 = *(sub_20C1370C4() - 8);
        sub_20BEE20E4(&v750, &v139[(*(v140 + 80) + 32) & ~*(v140 + 80)], v138, v125);
        v142 = v141;
        sub_20B583EDC(v750);
        if (v142 != v138)
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {

        v139 = MEMORY[0x277D84F90];
      }

      v320 = v724;
      *&v750 = v139;

      sub_20B980A04(&v750);
      if (!v320)
      {

        v746.i64[0] = v750;
        v126(v734, v701, v744);
        v497 = v738;
        v498 = v747.i64[0];
        (v747.i64[0])(v735, v710, v738);
        v130(v742, v719, v743);
        v498(v736, v711, v497);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E30, &qword_20C15F120);
        v499 = swift_allocObject();
        *(v499 + 48) = 0u;
        *(v499 + 64) = 0u;
        *(v499 + 80) = 0u;
        *(v499 + 96) = 0u;
        *(v499 + 112) = 0u;
        v500 = *(*v499 + 176);
        v501 = sub_20C1370C4();
        v502 = *(*(v501 - 8) + 56);
        v745.i64[0] = v130;
        v502(v499 + v500, 1, 1, v501);
        v502(v499 + *(*v499 + 184), 1, 1, v501);
        v502(v499 + *(*v499 + 192), 1, 1, v501);
        *(v499 + 40) = v733;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
        sub_20C133AA4();
        v503 = *(&v750 + 1);
        *(v499 + 16) = v750;
        *(v499 + 24) = v503;
        sub_20C13A924();
        swift_allocObject();
        swift_unknownObjectRetain();
        *(v499 + 32) = sub_20C13A914();
        v504 = v746.i64[0];
        *(v499 + *(*v499 + 216)) = v746.i64[0];
        *(v499 + *(*v499 + 224)) = v504;
        *(v499 + *(*v499 + 208)) = 7;
        *(v499 + *(*v499 + 200)) = v726;
        v741 = v129;
        v505 = v737;
        (*(v737 + 32))(v499 + qword_27C79BF30, v734, v744);
        v506 = v735;
        (v747.i64[0])(v499 + qword_27C79BF38, v735, v497);
        v507 = v739;
        v508 = v739[4];
        v508(v499 + *(*v499 + 232), v506, v497);
        v508(v499 + *(*v499 + 240), v736, v497);
        v509 = *(*v499 + 248);
        v510 = v740 + 32;
        v747.i64[0] = *(v740 + 32);
        v511 = v743;
        (v747.i64[0])(v499 + v509, v742, v743);
        *(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator) = v499;
        (v745.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_filterRoot, v719, v511);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
        sub_20C133AA4();
        v512 = v507[1];
        v512(v711, v497);
        v512(v710, v497);
        (*(v505 + 8))(v701, v744);
        sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer);
        v513 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator;
        v514 = *(v131 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator);
        v515 = swift_allocObject();
        swift_weakInit();
        v516 = *(v514 + 48);
        v517 = *(v514 + 56);
        *(v514 + 48) = sub_20B88FA2C;
        *(v514 + 56) = v515;

        sub_20B583ECC(v516, v517);

        v518 = *(v131 + v513);
        v746.i64[0] = v513;
        v519 = swift_allocObject();
        swift_weakInit();
        v520 = *(v518 + 64);
        v521 = *(v518 + 72);
        *(v518 + 64) = sub_20B88FA34;
        *(v518 + 72) = v519;

        sub_20B583ECC(v520, v521);

        v522 = *(v131 + v513);
        v523 = swift_allocObject();
        swift_weakInit();
        v524 = v742;
        v525 = v747.i64[0];
        (v747.i64[0])(v742, v719, v511);
        v526 = (*(v510 + 48) + 24) & ~*(v510 + 48);
        v527 = swift_allocObject();
        *(v527 + 16) = v523;
        v525(v527 + v526, v524, v511);
        v528 = *(v522 + 80);
        v529 = *(v522 + 88);
        *(v522 + 80) = sub_20B88FA3C;
        *(v522 + 88) = v527;

        sub_20B583ECC(v528, v529);

        v530 = v746.i64[0];
        v531 = *(v131 + v746.i64[0]);
        v532 = swift_allocObject();
        swift_weakInit();
        v533 = *(v531 + 96);
        v534 = *(v531 + 104);
        *(v531 + 96) = sub_20B7E05FC;
        *(v531 + 104) = v532;

        sub_20B583ECC(v533, v534);

        v535 = *(v131 + v530);
        v536 = swift_allocObject();
        swift_weakInit();

        v537 = *(v535 + 112);
        v538 = *(v535 + 120);
        *(v535 + 112) = sub_20B88FA54;
        *(v535 + 120) = v536;
        swift_retain_n();
        sub_20B583ECC(v537, v538);

        v366 = &off_2822FBFE0;
        goto LABEL_116;
      }

      goto LABEL_131;
    }

    do
    {
LABEL_21:
      if (!v121)
      {
        goto LABEL_28;
      }

      v143 = *v122++;
      --v121;
    }

    while (v143 != 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
    v748.i64[0] = swift_allocObject();
    *(v748.i64[0] + 16) = xmmword_20C14F980;
    v144 = sub_20C1358E4();
    v145 = *(v737 + 16);
    v145(v703, v727, v744);
    v146 = v738;
    v147 = v739[2];
    v147(v712, v728, v738);
    v747.i64[0] = v147;
    v147(v713, v729, v146);
    v148 = (v740 + 16);
    v149 = *(v740 + 16);
    v149(v721, v730, v743);
    sub_20B6AE918(v722, v693);
    type metadata accessor for TrainerFilterOptionsShelf(0);
    v131 = swift_allocObject();
    *(v131 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v150 = v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row;
    sub_20B5D8060(&v762);
    v151 = v767;
    *(v150 + 64) = v766;
    *(v150 + 80) = v151;
    *(v150 + 160) = v772;
    v152 = v771;
    *(v150 + 128) = v770;
    *(v150 + 144) = v152;
    v153 = v769;
    *(v150 + 96) = v768;
    *(v150 + 112) = v153;
    v154 = v763;
    *v150 = v762;
    *(v150 + 16) = v154;
    v155 = v765;
    *(v150 + 32) = v764;
    *(v150 + 48) = v155;
    v156 = *(v144 + 16);
    if (v156)
    {
      v157 = sub_20BEDE7E4(*(v144 + 16), 0);
      v158 = *(sub_20C134E04() - 8);
      sub_20BEE203C(&v750, &v157[(*(v158 + 80) + 32) & ~*(v158 + 80)], v156, v144);
      v160 = v159;
      sub_20B583EDC(v750);
      if (v160 != v156)
      {
        __break(1u);
        while (1)
        {
          v161 = *v122++;
          --v121;
          if (v161 == 6)
          {
            break;
          }

LABEL_27:
          if (!v121)
          {
            goto LABEL_28;
          }
        }

        sub_20C135864();
        v266 = sub_20C13CFB4();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
        v748.i64[0] = swift_allocObject();
        *(v748.i64[0] + 16) = xmmword_20C14F980;
        v717 = *(v737 + 16);
        v718 = (v737 + 16);
        (v717)(v694, v727, v744);
        v267 = v738;
        v268 = v739 + 2;
        v269 = v739[2];
        v269(v695, v728, v738);
        v727 = v268;
        v719 = v269;
        v269(v686, v729, v267);
        v270 = *(v740 + 16);
        v271 = v730;
        v741 = (v740 + 16);
        v730 = v270;
        v270(v715, v271, v743);
        sub_20B6AE918(v722, v687);
        v714 = type metadata accessor for TVCatalogThemeFilterOptionsShelf(0);
        v272 = swift_allocObject();
        *(v272 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_20C132ED4();
        v720 = v272;
        v273 = v272 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
        sub_20B5D8060(&v762);
        v274 = v771;
        *(v273 + 128) = v770;
        *(v273 + 144) = v274;
        *(v273 + 160) = v772;
        v275 = v767;
        *(v273 + 64) = v766;
        *(v273 + 80) = v275;
        v276 = v769;
        *(v273 + 96) = v768;
        *(v273 + 112) = v276;
        v277 = v763;
        *v273 = v762;
        *(v273 + 16) = v277;
        v278 = v765;
        *(v273 + 32) = v764;
        *(v273 + 48) = v278;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
        sub_20C133AA4();
        v279 = *(v266 + 32);
        LODWORD(v268) = v279 & 0x3F;
        v722 = ((1 << v279) + 63) >> 6;
        v280 = (8 * v722);
        v281 = swift_bridgeObjectRetain_n();
        v747.i64[0] = v266;
        if (v268 > 0xD)
        {
          goto LABEL_120;
        }

        while (1)
        {
          v721 = &v685;
          MEMORY[0x28223BE20](v281);
          v728 = &v685 - ((v280 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v728, v280);
          v729 = 0;
          v282 = 0;
          v283 = v266 + 56;
          v284 = 1 << *(v266 + 32);
          v285 = -1;
          if (v284 < 64)
          {
            v285 = ~(-1 << v284);
          }

          v286 = v285 & *(v266 + 56);
          v287 = (v284 + 63) >> 6;
          v746.i64[0] = (v732 + 2);
          v745.i64[0] = (v732 + 1);
          v288 = v732;
          while (v286)
          {
            v289 = __clz(__rbit64(v286));
            v286 &= v286 - 1;
LABEL_72:
            v292 = v289 | (v282 << 6);
            v280 = v725;
            v293 = v731;
            v288[2](v725, *(v747.i64[0] + 48) + v288[9] * v292, v731);
            v294 = sub_20C133A64();
            (v288[1])(v280, v293);
            if (v294)
            {
              *&v728[(v292 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v292;
              v295 = __OFADD__(v729++, 1);
              if (v295)
              {
                __break(1u);
LABEL_76:
                v296 = v747.i64[0];
                v297 = sub_20BC0E730(v728, v722, v729, v747.i64[0]);
                goto LABEL_77;
              }
            }
          }

          v290 = v282;
          while (1)
          {
            v282 = v290 + 1;
            if (__OFADD__(v290, 1))
            {
              break;
            }

            if (v282 >= v287)
            {
              goto LABEL_76;
            }

            v291 = *(v283 + 8 * v282);
            ++v290;
            if (v291)
            {
              v289 = __clz(__rbit64(v291));
              v286 = (v291 - 1) & v291;
              goto LABEL_72;
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            break;
          }

          v266 = v747.i64[0];
        }

        v626 = swift_slowAlloc();
        v627 = v724;
        v628 = sub_20B9840FC(v626, v722, v747.i64[0], sub_20BC68DB0, 0);
        v724 = v627;
        if (v627)
        {
          goto LABEL_135;
        }

        v629 = v628;
        v296 = v747.i64[0];

        MEMORY[0x20F2F6A40](v626, -1, -1);
        v297 = v629;
LABEL_77:
        *&v750 = v297;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E38, &unk_20C165AE0);
        sub_20B88FA5C();
        v280 = &v750;
        v721 = sub_20C13CBF4();

        v299 = *(v296 + 32);
        v300 = v299 & 0x3F;
        v301 = ((1 << v299) + 63) >> 6;
        v722 = v301;
        if (v300 > 0xD)
        {
          v625 = 8 * v301;

          v280 = v625;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            v630 = swift_slowAlloc();
            v631 = v724;
            v632 = sub_20B9840FC(v630, v722, v747.i64[0], sub_20BC68DE4, 0);
            v724 = v631;
            if (v631)
            {

              v684 = v630;
              goto LABEL_137;
            }

            v316 = v632;

            MEMORY[0x20F2F6A40](v630, -1, -1);
            v169 = *(v316 + 16);
            if (v169)
            {
              goto LABEL_93;
            }

            goto LABEL_128;
          }

          v296 = v747.i64[0];
        }

        v716 = &v685;
        MEMORY[0x28223BE20](v298);
        v728 = &v685 - ((v302 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v728, v302);
        v729 = 0;
        v303 = 0;
        v304 = v296 + 56;
        v305 = 1 << *(v296 + 32);
        v306 = -1;
        if (v305 < 64)
        {
          v306 = ~(-1 << v305);
        }

        v307 = v306 & *(v296 + 56);
        v308 = (v305 + 63) >> 6;
        v746.i64[0] = (v732 + 2);
        v745.i64[0] = (v732 + 1);
        while (1)
        {
          if (v307)
          {
            v309 = __clz(__rbit64(v307));
            v307 &= v307 - 1;
          }

          else
          {
            v310 = v303;
            do
            {
              v303 = v310 + 1;
              if (__OFADD__(v310, 1))
              {
                goto LABEL_119;
              }

              if (v303 >= v308)
              {
                goto LABEL_92;
              }

              v311 = *(v304 + 8 * v303);
              ++v310;
            }

            while (!v311);
            v309 = __clz(__rbit64(v311));
            v307 = (v311 - 1) & v311;
          }

          v312 = v309 | (v303 << 6);
          v314 = v731;
          v313 = v732;
          v280 = v725;
          v732[2](v725, *(v747.i64[0] + 48) + v732[9] * v312, v731);
          v315 = sub_20C133A64();
          v313[1](v280, v314);
          if (!v315)
          {
            *&v728[(v312 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v312;
            v295 = __OFADD__(v729++, 1);
            if (v295)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_92:
        v316 = sub_20BC0E730(v728, v722, v729, v747.i64[0]);
        v169 = *(v316 + 16);
        if (v169)
        {
LABEL_93:
          v317 = sub_20BEDE94C(v169, 0);
          sub_20BEE2084(&v750, &v317[(*(v732 + 80) + 32) & ~*(v732 + 80)], v169, v316);
          v319 = v318;
          v99 = *(&v750 + 1);
          v94 = v750;
          v168 = v751;
          v170 = v752;

          sub_20B583EDC(v94);
          if (v319 != v169)
          {
            __break(1u);
LABEL_95:

            v178 = MEMORY[0x277D84F90];
LABEL_96:
            v320 = v724;
            *&v761[0] = v178;

            sub_20B9809B0(v761);
            if (!v320)
            {

              v745.i64[0] = *&v761[0];
              (v94)(v734, v99, v744);
              v321 = v738;
              v322 = v746.i64[0];
              (v746.i64[0])(v735, v696, v738);
              (v169)(v742, v716, v743);
              v322(v736, v697, v321);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E70, &qword_20C165B00);
              v323 = swift_allocObject();
              *(v323 + 48) = 0u;
              *(v323 + 64) = 0u;
              *(v323 + 80) = 0u;
              *(v323 + 96) = 0u;
              *(v323 + 112) = 0u;
              v324 = *v323;
              v741 = v168;
              v325 = *(v324 + 176);
              v326 = sub_20C138244();
              v327 = *(v326 - 8);
              v732 = v169;
              v328 = *(v327 + 56);
              v328(v323 + v325, 1, 1, v326);
              v328(v323 + *(*v323 + 184), 1, 1, v326);
              v328(v323 + *(*v323 + 192), 1, 1, v326);
              *(v323 + 40) = v733;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
              sub_20C133AA4();
              v329 = *(&v761[0] + 1);
              *(v323 + 16) = *&v761[0];
              *(v323 + 24) = v329;
              sub_20C13A924();
              swift_allocObject();
              swift_unknownObjectRetain();
              v330 = sub_20C13A914();
              v331 = v739;
              v332 = v739[1];
              v332(v697, v321);
              v332(v696, v321);
              v333 = v737;
              v334 = v744;
              (*(v737 + 8))(v99, v744);
              *(v323 + 32) = v330;
              v335 = v745.i64[0];
              *(v323 + *(*v323 + 216)) = v745.i64[0];
              *(v323 + *(*v323 + 224)) = v335;
              *(v323 + *(*v323 + 208)) = 0;
              *(v323 + *(*v323 + 200)) = v726;
              (*(v333 + 32))(v323 + qword_27C79BF30, v734, v334);
              v336 = v735;
              (v746.i64[0])(v323 + qword_27C79BF38, v735, v321);
              v337 = v331[4];
              v337(v323 + *(*v323 + 232), v336, v321);
              v337(v323 + *(*v323 + 240), v736, v321);
              v338 = *(*v323 + 248);
              v339 = v740 + 32;
              v747.i64[0] = *(v740 + 32);
              v340 = v743;
              (v747.i64[0])(v323 + v338, v742, v743);
              *(v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator) = v323;
              sub_20B6AE988(v689, v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_rootModality);
              (v732)(v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_filterRoot, v716, v340);
              sub_20B52E424(&v750, v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_storefrontLocalizer);
              v341 = swift_allocObject();
              swift_weakInit();
              v342 = *(v323 + 48);
              v343 = *(v323 + 56);
              *(v323 + 48) = sub_20B88FBB0;
              *(v323 + 56) = v341;

              sub_20B583ECC(v342, v343);

              v344 = *(v170 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator);
              v345 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator;
              v746.i64[0] = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator;
              v346 = swift_allocObject();
              swift_weakInit();
              v347 = *(v344 + 64);
              v348 = *(v344 + 72);
              *(v344 + 64) = sub_20B88FBB8;
              *(v344 + 72) = v346;

              sub_20B583ECC(v347, v348);

              v349 = *(v170 + v345);
              v350 = swift_allocObject();
              swift_weakInit();
              v351 = v742;
              v352 = v747.i64[0];
              (v747.i64[0])(v742, v716, v340);
              v353 = (*(v339 + 48) + 24) & ~*(v339 + 48);
              v354 = swift_allocObject();
              *(v354 + 16) = v350;
              v352(v354 + v353, v351, v340);
              v355 = *(v349 + 80);
              v356 = *(v349 + 88);
              *(v349 + 80) = sub_20B88FC84;
              *(v349 + 88) = v354;

              sub_20B583ECC(v355, v356);

              v357 = v746.i64[0];
              v358 = *(v170 + v746.i64[0]);
              v359 = swift_allocObject();
              swift_weakInit();
              v360 = *(v358 + 96);
              v361 = *(v358 + 104);
              *(v358 + 96) = sub_20B7E05FC;
              *(v358 + 104) = v359;

              sub_20B583ECC(v360, v361);

              v362 = *(v170 + v357);
              v363 = swift_allocObject();
              swift_weakInit();

              v364 = *(v362 + 112);
              v365 = *(v362 + 120);
              *(v362 + 112) = sub_20B88FD24;
              *(v362 + 120) = v363;
              swift_retain_n();
              sub_20B583ECC(v364, v365);

              v366 = &off_2822F26E8;
              result = v748.i64[0];
              *(v748.i64[0] + 32) = v170;
LABEL_117:
              *(result + 40) = v366;
              return result;
            }

            goto LABEL_132;
          }

LABEL_129:
          v749 = v317;
          v320 = v724;
          sub_20C06364C(&v749);
          if (!v320)
          {

            *&v750 = v721;
            sub_20B8D91F0(v749);
            v746.i64[0] = v750;
            v633 = v744;
            (v717)(v734, v694, v744);
            v634 = v738;
            v635 = v719;
            (v719)(v735, v695, v738);
            v730(v742, v715, v743);
            v636 = v686;
            v635(v736, v686, v634);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48, &unk_20C165AF0);
            v637 = swift_allocObject();
            *(v637 + 48) = 0u;
            *(v637 + 64) = 0u;
            *(v637 + 80) = 0u;
            *(v637 + 96) = 0u;
            *(v637 + 112) = 0u;
            v638 = v731;
            v639 = v732[7];
            (v639)(v637 + *(*v637 + 176), 1, 1, v731);
            (v639)(v637 + *(*v637 + 184), 1, 1, v638);
            (v639)(v637 + *(*v637 + 192), 1, 1, v638);
            *(v637 + 40) = v733;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
            sub_20C133AA4();
            v640 = *(&v750 + 1);
            *(v637 + 16) = v750;
            *(v637 + 24) = v640;
            sub_20C13A924();
            swift_allocObject();
            swift_unknownObjectRetain();
            v641 = sub_20C13A914();
            v642 = v739;
            v643 = v739[1];
            v643(v636, v634);
            v643(v695, v634);
            v644 = v737;
            (*(v737 + 8))(v694, v633);
            *(v637 + 32) = v641;
            v645 = v746.i64[0];
            *(v637 + *(*v637 + 216)) = v746.i64[0];
            *(v637 + *(*v637 + 224)) = v645;
            *(v637 + *(*v637 + 208)) = 6;
            *(v637 + *(*v637 + 200)) = v726;
            (*(v644 + 32))(v637 + qword_27C79BF30, v734, v633);
            v646 = v735;
            v635((v637 + qword_27C79BF38), v735, v634);
            v647 = v642[4];
            v647(v637 + *(*v637 + 232), v646, v634);
            v647(v637 + *(*v637 + 240), v736, v634);
            v648 = *(*v637 + 248);
            v649 = v740 + 32;
            v745.i64[0] = *(v740 + 32);
            v650 = v743;
            (v745.i64[0])(v637 + v648, v742, v743);
            v651 = v720;
            *&v720[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator] = v637;
            sub_20B6AE988(v687, &v651[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality]);
            v730(&v651[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot], v715, v650);
            sub_20B52E424(v761, &v651[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer]);
            *&v651[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content] = v747.i64[0];
            v652 = swift_allocObject();
            swift_weakInit();
            v653 = *(v637 + 48);
            v654 = *(v637 + 56);
            *(v637 + 48) = sub_20B88FAC0;
            *(v637 + 56) = v652;

            sub_20B583ECC(v653, v654);

            v655 = *&v651[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator];
            v656 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
            v747.i64[0] = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
            v657 = swift_allocObject();
            swift_weakInit();
            v658 = *(v655 + 64);
            v659 = *(v655 + 72);
            *(v655 + 64) = sub_20B88FAC8;
            *(v655 + 72) = v657;

            sub_20B583ECC(v658, v659);

            v660 = *&v651[v656];
            v661 = swift_allocObject();
            swift_weakInit();
            v662 = v742;
            v663 = v745.i64[0];
            (v745.i64[0])(v742, v715, v650);
            v664 = (*(v649 + 48) + 24) & ~*(v649 + 48);
            v665 = swift_allocObject();
            *(v665 + 16) = v661;
            v663(v665 + v664, v662, v650);
            v666 = *(v660 + 80);
            v667 = *(v660 + 88);
            *(v660 + 80) = sub_20B88FAD0;
            *(v660 + 88) = v665;

            sub_20B583ECC(v666, v667);

            v668 = v747.i64[0];
            v669 = *&v651[v747.i64[0]];
            v670 = swift_allocObject();
            swift_weakInit();
            v671 = *(v669 + 96);
            v672 = *(v669 + 104);
            *(v669 + 96) = sub_20B7E05FC;
            *(v669 + 104) = v670;

            sub_20B583ECC(v671, v672);

            v673 = *&v651[v668];
            v674 = swift_allocObject();
            swift_weakInit();

            v675 = *(v673 + 112);
            v676 = *(v673 + 120);
            *(v673 + 112) = sub_20B88FAE8;
            *(v673 + 120) = v674;
            swift_retain_n();
            sub_20B583ECC(v675, v676);

            v366 = &off_2822D9808;
            result = v748.i64[0];
            *(v748.i64[0] + 32) = v651;
            goto LABEL_117;
          }

LABEL_133:

          while (1)
          {
            v677 = v720;
            sub_20B583E6C((v720 + 16));
            v626 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
            v678 = sub_20C132EE4();
            (*(*(v678 - 8) + 8))(&v626[v677], v678);
            v679 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144];
            v758 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128];
            v759 = v679;
            v760 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160];
            v680 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80];
            v754 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64];
            v755 = v680;
            v681 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112];
            v756 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96];
            v757 = v681;
            v682 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16];
            v750 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row];
            v751 = v682;
            v683 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48];
            v752 = *&v677[OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32];
            v753 = v683;
            sub_20B520158(&v750, &qword_27C762340, &unk_20C150290);
            swift_deallocPartialClassInstance();
            __break(1u);
LABEL_135:

            v684 = v626;
LABEL_137:
            MEMORY[0x20F2F6A40](v684, -1, -1);
          }
        }

LABEL_128:
        v317 = MEMORY[0x277D84F90];
        goto LABEL_129;
      }
    }

    else
    {

      v157 = MEMORY[0x277D84F90];
    }

    v320 = v724;
    *&v750 = v157;

    sub_20B980860(&v750);
    if (!v320)
    {

      v746.i64[0] = v750;
      v145(v734, v703, v744);
      v539 = v738;
      v540 = v747.i64[0];
      (v747.i64[0])(v735, v712, v738);
      v149(v742, v721, v743);
      v540(v736, v713, v539);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E28, &qword_20C15F118);
      v541 = swift_allocObject();
      *(v541 + 48) = 0u;
      *(v541 + 64) = 0u;
      *(v541 + 80) = 0u;
      *(v541 + 96) = 0u;
      *(v541 + 112) = 0u;
      v542 = *(*v541 + 176);
      v543 = sub_20C134E04();
      v544 = *(*(v543 - 8) + 56);
      v745.i64[0] = v149;
      v544(v541 + v542, 1, 1, v543);
      v544(v541 + *(*v541 + 184), 1, 1, v543);
      v544(v541 + *(*v541 + 192), 1, 1, v543);
      *(v541 + 40) = v733;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
      sub_20C133AA4();
      v545 = *(&v750 + 1);
      *(v541 + 16) = v750;
      *(v541 + 24) = v545;
      sub_20C13A924();
      swift_allocObject();
      swift_unknownObjectRetain();
      *(v541 + 32) = sub_20C13A914();
      v546 = v746.i64[0];
      *(v541 + *(*v541 + 216)) = v746.i64[0];
      *(v541 + *(*v541 + 224)) = v546;
      *(v541 + *(*v541 + 208)) = 8;
      *(v541 + *(*v541 + 200)) = v726;
      v741 = v148;
      v547 = v737;
      (*(v737 + 32))(v541 + qword_27C79BF30, v734, v744);
      v548 = v735;
      (v747.i64[0])(v541 + qword_27C79BF38, v735, v539);
      v549 = v739;
      v550 = v739[4];
      v550(v541 + *(*v541 + 232), v548, v539);
      v550(v541 + *(*v541 + 240), v736, v539);
      v551 = *(*v541 + 248);
      v552 = v740 + 32;
      v747.i64[0] = *(v740 + 32);
      v553 = v743;
      (v747.i64[0])(v541 + v551, v742, v743);
      *(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator) = v541;
      v554 = v693;
      sub_20B6AE918(v693, v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_rootModality);
      (v745.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_filterRoot, v721, v553);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      sub_20B520158(v554, &unk_27C7710A0, &unk_20C156800);
      v555 = v549[1];
      v555(v713, v539);
      v555(v712, v539);
      (*(v547 + 8))(v703, v744);
      sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer);
      v556 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator;
      v557 = *(v131 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator);
      v558 = swift_allocObject();
      swift_weakInit();
      v559 = *(v557 + 48);
      v560 = *(v557 + 56);
      *(v557 + 48) = sub_20B88F9FC;
      *(v557 + 56) = v558;

      sub_20B583ECC(v559, v560);

      v561 = *(v131 + v556);
      v746.i64[0] = v556;
      v562 = swift_allocObject();
      swift_weakInit();
      v563 = *(v561 + 64);
      v564 = *(v561 + 72);
      *(v561 + 64) = sub_20B88FA04;
      *(v561 + 72) = v562;

      sub_20B583ECC(v563, v564);

      v565 = *(v131 + v556);
      v566 = swift_allocObject();
      swift_weakInit();
      v567 = v742;
      v568 = v747.i64[0];
      (v747.i64[0])(v742, v721, v553);
      v569 = (*(v552 + 48) + 24) & ~*(v552 + 48);
      v570 = swift_allocObject();
      *(v570 + 16) = v566;
      v568(v570 + v569, v567, v553);
      v571 = *(v565 + 80);
      v572 = *(v565 + 88);
      *(v565 + 80) = sub_20B88FA0C;
      *(v565 + 88) = v570;

      sub_20B583ECC(v571, v572);

      v573 = v746.i64[0];
      v574 = *(v131 + v746.i64[0]);
      v575 = swift_allocObject();
      swift_weakInit();
      v576 = *(v574 + 96);
      v577 = *(v574 + 104);
      *(v574 + 96) = sub_20B7E05FC;
      *(v574 + 104) = v575;

      sub_20B583ECC(v576, v577);

      v578 = *(v131 + v573);
      v579 = swift_allocObject();
      swift_weakInit();

      v580 = *(v578 + 112);
      v581 = *(v578 + 120);
      *(v578 + 112) = sub_20B88FA24;
      *(v578 + 120) = v579;
      swift_retain_n();
      sub_20B583ECC(v580, v581);

      v366 = &off_2822E87E0;
      goto LABEL_116;
    }

LABEL_131:

    __break(1u);
    goto LABEL_132;
  }

LABEL_52:
  if (v123 != 4)
  {
    goto LABEL_58;
  }

  do
  {
    if (!v121)
    {
      goto LABEL_28;
    }

    v235 = *v122++;
    --v121;
  }

  while (v235 != 4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
  v748.i64[0] = swift_allocObject();
  *(v748.i64[0] + 16) = xmmword_20C14F980;
  v236 = sub_20C1358A4();
  v237 = *(v737 + 16);
  v237(v702, v727, v744);
  v238 = v738;
  v239 = v739[2];
  v239(v708, v728, v738);
  v747.i64[0] = v239;
  v239(v709, v729, v238);
  v240 = (v740 + 16);
  v241 = *(v740 + 16);
  v241(v720, v730, v743);
  sub_20B6AE918(v722, v692);
  type metadata accessor for MusicGenreFilterOptionsShelf(0);
  v131 = swift_allocObject();
  *(v131 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v242 = v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row;
  sub_20B5D8060(&v762);
  v243 = v767;
  *(v242 + 64) = v766;
  *(v242 + 80) = v243;
  *(v242 + 160) = v772;
  v244 = v771;
  *(v242 + 128) = v770;
  *(v242 + 144) = v244;
  v245 = v769;
  *(v242 + 96) = v768;
  *(v242 + 112) = v245;
  v246 = v763;
  *v242 = v762;
  *(v242 + 16) = v246;
  v247 = v765;
  *(v242 + 32) = v764;
  *(v242 + 48) = v247;
  v248 = *(v236 + 16);
  if (!v248)
  {

    v249 = MEMORY[0x277D84F90];
LABEL_114:
    v320 = v724;
    *&v750 = v249;

    sub_20B980908(&v750);
    if (!v320)
    {

      v746.i64[0] = v750;
      v237(v734, v702, v744);
      v582 = v738;
      v583 = v747.i64[0];
      (v747.i64[0])(v735, v708, v738);
      v241(v742, v720, v743);
      v583(v736, v709, v582);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E50, &qword_20C15F158);
      v584 = swift_allocObject();
      *(v584 + 48) = 0u;
      *(v584 + 64) = 0u;
      *(v584 + 80) = 0u;
      *(v584 + 96) = 0u;
      *(v584 + 112) = 0u;
      v585 = *(*v584 + 176);
      v586 = sub_20C1333E4();
      v587 = *(*(v586 - 8) + 56);
      v745.i64[0] = v241;
      v587(v584 + v585, 1, 1, v586);
      v587(v584 + *(*v584 + 184), 1, 1, v586);
      v587(v584 + *(*v584 + 192), 1, 1, v586);
      *(v584 + 40) = v733;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
      sub_20C133AA4();
      v588 = *(&v750 + 1);
      *(v584 + 16) = v750;
      *(v584 + 24) = v588;
      sub_20C13A924();
      swift_allocObject();
      swift_unknownObjectRetain();
      *(v584 + 32) = sub_20C13A914();
      v589 = v746.i64[0];
      *(v584 + *(*v584 + 216)) = v746.i64[0];
      *(v584 + *(*v584 + 224)) = v589;
      *(v584 + *(*v584 + 208)) = 4;
      *(v584 + *(*v584 + 200)) = v726;
      v741 = v240;
      v590 = v737;
      (*(v737 + 32))(v584 + qword_27C79BF30, v734, v744);
      v591 = v735;
      (v747.i64[0])(v584 + qword_27C79BF38, v735, v582);
      v592 = v739;
      v593 = v739[4];
      v593(v584 + *(*v584 + 232), v591, v582);
      v593(v584 + *(*v584 + 240), v736, v582);
      v594 = *(*v584 + 248);
      v595 = v740 + 32;
      v747.i64[0] = *(v740 + 32);
      v596 = v743;
      (v747.i64[0])(v584 + v594, v742, v743);
      *(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator) = v584;
      v597 = v692;
      sub_20B6AE918(v692, v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_rootModality);
      (v745.i64[0])(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_filterRoot, v720, v596);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      sub_20B520158(v597, &unk_27C7710A0, &unk_20C156800);
      v598 = v592[1];
      v598(v709, v582);
      v598(v708, v582);
      (*(v590 + 8))(v702, v744);
      sub_20B52E424(&v750, v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_storefrontLocalizer);
      v599 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator;
      v600 = *(v131 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator);
      v601 = swift_allocObject();
      swift_weakInit();
      v602 = *(v600 + 48);
      v603 = *(v600 + 56);
      *(v600 + 48) = sub_20B88FAF0;
      *(v600 + 56) = v601;

      sub_20B583ECC(v602, v603);

      v604 = *(v131 + v599);
      v746.i64[0] = v599;
      v605 = swift_allocObject();
      swift_weakInit();
      v606 = *(v604 + 64);
      v607 = *(v604 + 72);
      *(v604 + 64) = sub_20B88FAF8;
      *(v604 + 72) = v605;

      sub_20B583ECC(v606, v607);

      v608 = *(v131 + v599);
      v609 = swift_allocObject();
      swift_weakInit();
      v610 = v742;
      v611 = v747.i64[0];
      (v747.i64[0])(v742, v720, v596);
      v612 = (*(v595 + 48) + 24) & ~*(v595 + 48);
      v613 = swift_allocObject();
      *(v613 + 16) = v609;
      v611(v613 + v612, v610, v596);
      v614 = *(v608 + 80);
      v615 = *(v608 + 88);
      *(v608 + 80) = sub_20B88FB00;
      *(v608 + 88) = v613;

      sub_20B583ECC(v614, v615);

      v616 = v746.i64[0];
      v617 = *(v131 + v746.i64[0]);
      v618 = swift_allocObject();
      swift_weakInit();
      v619 = *(v617 + 96);
      v620 = *(v617 + 104);
      *(v617 + 96) = sub_20B7E05FC;
      *(v617 + 104) = v618;

      sub_20B583ECC(v619, v620);

      v621 = *(v131 + v616);
      v622 = swift_allocObject();
      swift_weakInit();

      v623 = *(v621 + 112);
      v624 = *(v621 + 120);
      *(v621 + 112) = sub_20B88FB18;
      *(v621 + 120) = v622;
      swift_retain_n();
      sub_20B583ECC(v623, v624);

      v366 = &off_2822E91C0;
      goto LABEL_116;
    }

    goto LABEL_131;
  }

  v249 = sub_20BEDE8D4(*(v236 + 16), 0);
  v250 = *(sub_20C1333E4() - 8);
  sub_20BEE206C(&v750, &v249[(*(v250 + 80) + 32) & ~*(v250 + 80)], v248, v236);
  v252 = v251;
  sub_20B583EDC(v750);
  if (v252 == v248)
  {
    goto LABEL_114;
  }

  __break(1u);
LABEL_58:
  while (v121)
  {
    v253 = *v122++;
    --v121;
    if (v253 == 5)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_20C14F980;
      v255 = sub_20C1358B4();
      v256 = sub_20C1358D4();
      v257 = v734;
      (*(v737 + 16))(v734, v727, v744);
      v258 = v738;
      v259 = v739[2];
      v260 = v735;
      v259(v735, v728, v738);
      v261 = v736;
      v259(v736, v729, v258);
      v262 = v742;
      (*(v740 + 16))(v742, v730, v743);
      v263 = v685;
      sub_20B6AE918(v722, v685);
      type metadata accessor for SkillLevelFilterOptionsShelf(0);
      swift_allocObject();

      v265 = sub_20B7DC03C(v264, v255, v256, v257, v260, v261, v262, v263, v726);
      result = v254;
      *(v254 + 32) = v265;
      *(v254 + 40) = &off_2822A7FB8;
      return result;
    }
  }

LABEL_28:

  return MEMORY[0x277D84F90];
}