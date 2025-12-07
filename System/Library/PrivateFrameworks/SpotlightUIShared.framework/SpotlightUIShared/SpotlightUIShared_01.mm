uint64_t sub_26B90C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26B9ACCF4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26B90C440, 0, 0);
}

uint64_t sub_26B90C440()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26B9ACD04();
  v5 = sub_26B90CAB8(&qword_2804261D8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26B9ACF34();
  sub_26B90CAB8(&qword_2804261E0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26B9ACD14();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26B90C5D0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26B90C5D0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B90C78C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26B90C78C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B90C7F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26B90C8EC;

  return v5(v2 + 32);
}

uint64_t sub_26B90C8EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26B90CA00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B90C7F8(a1, v4);
}

uint64_t sub_26B90CAB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B90CB00()
{
  result = qword_2804261E8;
  if (!qword_2804261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804261E8);
  }

  return result;
}

uint64_t sub_26B90CB54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return sub_26B90A88C(v4, v5, v6, v2, v3);
}

uint64_t ToolEntityParameterTypeInfo.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolEntityParameterTypeInfo.typeIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static ToolEntityParameterTypeInfo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26B9ACEB4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_26B9ACEB4();
    }
  }

  return result;
}

uint64_t sub_26B90CCFC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26B9ACEB4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_26B9ACEB4();
    }
  }

  return result;
}

uint64_t static ToolKitUtilities.toolInvocation(for:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v77 = a1;
  v78 = a2;
  v82 = a4;
  v4 = sub_26B9AB584();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v79 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_26B9AB224();
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426220, &qword_26B9B0898);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v60 - v14);
  v74 = sub_26B9ABA14();
  v72 = *(v74 - 8);
  v16 = MEMORY[0x28223BE20](v74);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  MEMORY[0x28223BE20](v20 - 8);
  v73 = &v60 - v21;
  v22 = sub_26B9AB914();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  sub_26B9ABC04();
  v29 = sub_26B9ABBF4();
  v61 = v26;
  v62 = v28;
  v64 = v11;
  v65 = v22;
  v66 = v23;
  v60 = v10;
  v63 = v29;
  sub_26B9AB9F4();
  swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = v78;
  *(v30 + 16) = v77;
  *(v30 + 24) = v31;
  *v15 = v30;
  v33 = v69;
  v32 = v70;
  (*(v69 + 104))(v15, *MEMORY[0x277D721C8], v70);
  sub_26B92349C(&qword_280426238, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_26B9223E8(&qword_280426240, &qword_280426220, &qword_26B9B0898);

  v34 = v71;
  sub_26B9ABC54();

  (*(v33 + 8))(v15, v32);
  v35 = *(v72 + 8);
  v36 = v74;
  v35(v18, v74);
  v37 = v75;
  sub_26B9AB204();
  v38 = v73;
  sub_26B9ABBC4();
  (*(v76 + 8))(v37, v64);
  v35(v34, v36);
  v40 = v65;
  v39 = v66;
  v41 = (*(v66 + 48))(v38, 1, v65);
  v42 = v80;
  if (v41 == 1)
  {
    sub_26B8EACD8(v38, &qword_280426228, &unk_26B9B08A0);
    v43 = sub_26B9A75D0();
    v44 = v68;
    v45 = v81;
    (*(v42 + 16))(v68, v43, v81);
    v46 = v78;

    v47 = sub_26B9AB564();
    v48 = sub_26B9AC934();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v82;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v83[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_26B91FC00(v77, v46, v83);
      _os_log_impl(&dword_26B8E8000, v47, v48, "Unable to find tool with ID: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x26D6879F0](v52, -1, -1);
      MEMORY[0x26D6879F0](v51, -1, -1);
    }

    (*(v42 + 8))(v44, v45);
    v53 = 1;
  }

  else
  {
    v56 = v62;
    (*(v39 + 32))(v62, v38, v40);
    (*(v39 + 16))(v61, v56, v40);
    v50 = v82;
    if (v67)
    {
      v57 = v67;
    }

    else
    {
      v57 = sub_26B922070(MEMORY[0x277D84F90]);
    }

    v58 = v60;

    sub_26B90D7EC(v57);

    v59 = sub_26B9ABAE4();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    sub_26B9AB924();
    (*(v66 + 8))(v62, v40);

    v53 = 0;
  }

  v54 = sub_26B9AB984();
  return (*(*(v54 - 8) + 56))(v50, v53, 1, v54);
}

unint64_t sub_26B90D7EC(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
  v2 = MEMORY[0x28223BE20](v44);
  v43 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v42 = &v39 - v4;
  v45 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426360, &qword_26B9B0D40);
    v5 = sub_26B9ACD84();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v45 + 64;
  v7 = 1 << *(v45 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v45 + 64);
  v10 = (v7 + 63) >> 6;
  v39 = v5 + 8;
  sub_26B9AAAE4();

  v12 = 0;
  v41 = v5;
  v40 = v6;
  while (v9)
  {
    v16 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v45 + 56);
    v20 = (*(v45 + 48) + 16 * v18);
    v22 = *v20;
    v46 = v20[1];
    v21 = v46;
    v23 = sub_26B9ABE84();
    v24 = *(v23 - 8);
    v25 = v19 + *(v24 + 72) * v18;
    v26 = v44;
    v27 = v42;
    (*(v24 + 16))(&v42[*(v44 + 48)], v25, v23);
    *v27 = v22;
    v27[1] = v21;
    v28 = v27;
    v29 = v43;
    sub_26B923680(v28, v43, &qword_280426298, &qword_26B9B0990);
    v30 = *(v26 + 48);
    v31 = *v29;
    v32 = v29[1];
    v48 = v23;
    v49 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v24 + 32))(boxed_opaque_existential_1, v29 + v30, v23);
    sub_26B8ECB70(&v47, v51);
    sub_26B8ECB70(v51, v52);
    sub_26B8ECB70(v52, &v50);

    v5 = v41;
    result = sub_26B9201A8(v31, v32);
    if (v34)
    {
      v13 = (v5[6] + 16 * result);
      *v13 = v31;
      v13[1] = v32;
      v14 = result;

      v15 = (v5[7] + 40 * v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      result = sub_26B8ECB70(&v50, v15);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = (v5[6] + 16 * result);
      *v35 = v31;
      v35[1] = v32;
      result = sub_26B8ECB70(&v50, v5[7] + 40 * result);
      v36 = v5[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_21;
      }

      v5[2] = v38;
    }

    v12 = v16;
    v6 = v40;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static ToolKitUtilities.toolInvocation(for:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_26B9AC114();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426250, &qword_26B9B08F0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B90DD28, 0, 0);
}

uint64_t sub_26B90DD28()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[21] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_26B90DE8C;

  return v6(v2, v3);
}

uint64_t sub_26B90DE8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v5 = sub_26B90E900;
  }

  else
  {
    v5 = sub_26B90DFA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B90DFA4()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v2);
  v6 = [v4 intentMessageData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_26B9AB124();
    v10 = v9;

    v11 = sub_26B9AB114();
    sub_26B922394(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = WFSpotlightResultRunnableFromData();

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v0 + 19;
      v15 = v0[25];
      v16 = v13;
      v17 = [v13 linkAction];
      v18 = [v16 appBundleIdentifier];
      sub_26B9AC504();

      sub_26B9AC0F4();
      if (v15)
      {
        v19 = v0[20];
        swift_unknownObjectRelease();
LABEL_20:
        swift_unknownObjectRelease();
        sub_26B8EACD8(v19, &qword_280426250, &qword_26B9B08F0);

        v36 = v0[1];

        return v36();
      }

      sub_26B8EACD8(v0[20], &qword_280426250, &qword_26B9B08F0);
      swift_unknownObjectRelease();
LABEL_17:
      v30 = *v14;
      v31 = v0[20];
      v5(*v14, 0, 1, v0[12]);
      sub_26B923680(v30, v31, &qword_280426250, &qword_26B9B08F0);
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
  }

  v20 = v0[9];
  v21 = [v20 intentMessageName];
  v22 = [v20 intentMessageData];
  if (v22)
  {
    v23 = v22;
    v24 = sub_26B9AB124();
    v26 = v25;

    v27 = sub_26B9AB114();
    sub_26B922394(v24, v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = INIntentCreate();

  if (v28)
  {
    v14 = v0 + 18;
    v29 = v0[25];
    sub_26B9AC104();
    if (v29)
    {
      v19 = v0[20];
      goto LABEL_20;
    }

    sub_26B8EACD8(v0[20], &qword_280426250, &qword_26B9B08F0);
    goto LABEL_17;
  }

LABEL_18:
  v32 = v0[17];
  v33 = v0[12];
  v34 = v0[13];
  sub_26B9236E8(v0[20], v32, &qword_280426250, &qword_26B9B08F0);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v19 = v0[20];
    sub_26B8EACD8(v0[17], &qword_280426250, &qword_26B9B08F0);
    sub_26B92225C();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[13];
  v41 = v0[12];
  v42 = *(v40 + 32);
  v42(v38, v0[17], v41);
  ObjectType = swift_getObjectType();
  (*(v40 + 16))(v39, v38, v41);
  v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v45 = swift_allocObject();
  v0[26] = v45;
  v42(v45 + v44, v39, v41);
  v46 = swift_task_alloc();
  v0[27] = v46;
  v47 = sub_26B9AB984();
  v0[28] = v47;
  *v46 = v0;
  v46[1] = sub_26B90E4FC;
  v48 = v0[24];
  v49 = v0[11];

  return MEMORY[0x2821DAB50](v49, &unk_26B9B0930, v45, v47, ObjectType, v48);
}

uint64_t sub_26B90E4FC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_26B90E9D0;
  }

  else
  {
    v2 = sub_26B90E630;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B90E630()
{
  v1 = v0[28];
  v2 = v0[10];
  sub_26B9236E8(v0[11], v2, &qword_280426248, &qword_26B9B08E8);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v19 = v0[20];
    v4 = v0[16];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    sub_26B8EACD8(v0[10], &qword_280426248, &qword_26B9B08E8);
    sub_26B92225C();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_26B8EACD8(v7, &qword_280426248, &qword_26B9B08E8);
    (*(v5 + 8))(v4, v6);
    sub_26B8EACD8(v19, &qword_280426250, &qword_26B9B08F0);
  }

  else
  {
    v10 = v0[28];
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    swift_unknownObjectRelease();
    sub_26B8EACD8(v15, &qword_280426248, &qword_26B9B08E8);
    (*(v14 + 8))(v12, v13);
    sub_26B8EACD8(v11, &qword_280426250, &qword_26B9B08F0);

    (*(v3 + 32))(v17, v16, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_26B90E900()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B90E9D0()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  sub_26B8EACD8(v1, &qword_280426250, &qword_26B9B08F0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B90EADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B90EB00, 0, 0);
}

uint64_t sub_26B90EB00()
{
  v1 = sub_26B9AB9A4();
  v3 = v2;
  v0[5] = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26B90EBC8;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x2821DAA98](v7, v6, ObjectType, v3);
}

uint64_t sub_26B90EBC8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26B9237C0;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_26B90ECE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B90ECE4()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9AB984();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t static ToolKitUtilities.entityDefinition(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426268, &qword_26B9B0938);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26B9ABEC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  static ToolKitUtilities.typeDefinition(for:)(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26B8EACD8(v6, &qword_280426268, &qword_26B9B0938);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v13, v6, v7);
    v14(v11, v13, v7);
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D72B68])
    {
      (*(v8 + 96))(v11, v7);
      v15 = sub_26B9ABF94();
      v16 = *(v15 - 8);
      (*(v16 + 32))(a2, v11, v15);
      return (*(v16 + 56))(a2, 0, 1, v15);
    }

    (*(v8 + 8))(v11, v7);
  }

  v18 = sub_26B9ABF94();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t static ToolKitUtilities.typeDefinition(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v66 = a2;
  v62 = sub_26B9ABF24();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B9AB584();
  v65 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = v51 - v5;
  v7 = sub_26B9AB224();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426270, &qword_26B9B0940);
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (v51 - v10);
  v12 = sub_26B9AC144();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426268, &qword_26B9B0938);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = v51 - v19;
  sub_26B9ABC04();
  v20 = sub_26B9ABBF4();
  v53 = v7;
  v54 = v6;
  v52 = v3;
  v21 = v20;
  sub_26B9AC124();
  swift_getKeyPath();
  v22 = v62;
  v23 = swift_allocBox();
  v51[0] = *(v64 + 16);
  v51[1] = v64 + 16;
  (v51[0])(v24, v63, v22);
  *v11 = v23;
  v25 = v55;
  (*(v55 + 104))(v11, *MEMORY[0x277D721C8], v9);
  sub_26B92349C(&qword_280426278, MEMORY[0x277D73198], MEMORY[0x277D73190]);
  sub_26B9223E8(&qword_280426280, &qword_280426270, &qword_26B9B0940);
  sub_26B9ABC54();

  (*(v25 + 8))(v11, v9);
  v26 = v57;
  v27 = *(v56 + 8);
  v27(v15, v57);
  v28 = v58;
  sub_26B9AB204();
  v29 = v59;
  v56 = v21;
  sub_26B9ABBD4();
  (*(v60 + 8))(v28, v53);
  v27(v17, v26);
  v30 = sub_26B9ABEC4();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  v33 = v54;
  v34 = v61;
  if (v32 == 1)
  {
    sub_26B8EACD8(v29, &qword_280426268, &qword_26B9B0938);
    v35 = sub_26B9A75D0();
    v36 = v65;
    v37 = v52;
    (*(v65 + 16))(v33, v35, v52);
    v38 = v62;
    (v51[0])(v34, v63, v62);
    v39 = sub_26B9AB564();
    v40 = sub_26B9AC934();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67[0] = v42;
      *v41 = 136315138;
      v43 = sub_26B9ABF14();
      v44 = v34;
      v46 = v45;
      (*(v64 + 8))(v44, v38);
      v47 = sub_26B91FC00(v43, v46, v67);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_26B8E8000, v39, v40, "Unable to find type with ID: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D6879F0](v42, -1, -1);
      MEMORY[0x26D6879F0](v41, -1, -1);
    }

    else
    {

      (*(v64 + 8))(v34, v38);
    }

    (*(v36 + 8))(v33, v37);
    v48 = sub_26B9ABEC4();
    return (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  }

  else
  {

    v50 = v66;
    (*(v31 + 32))(v66, v29, v30);
    return (*(v31 + 56))(v50, 0, 1, v30);
  }
}

uint64_t sub_26B90F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t static ToolKitUtilities.hydrate(invocation:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8);
  v2[5] = swift_task_alloc();
  v3 = sub_26B9AB914();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v2[10] = swift_task_alloc();
  v4 = sub_26B9AC0E4();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426290, &qword_26B9B0988);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B90FD0C, 0, 0);
}

uint64_t sub_26B90FD0C()
{
  v1 = sub_26B9AB954();
  v2 = sub_26B910C58(v1);
  *(v0 + 168) = v2;
  *(v0 + 176) = 0;

  v3 = *(v2 + 32);
  *(v0 + 232) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v2[8];
  v61 = v2;
  *(v0 + 184) = v2;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = *(v0 + 168);
LABEL_14:
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v18 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v19 = v18 | (v8 << 6);
      v20 = (*(v9 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      (*(v16 + 16))(v14, *(v9 + 56) + *(v16 + 72) * v19, v17);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      v24 = *(v23 + 48);
      *v15 = v21;
      *(v15 + 1) = v22;
      (*(v16 + 32))(&v15[v24], v14, v17);
      (*(*(v23 - 8) + 56))(v15, 0, 1, v23);

      v12 = v8;
LABEL_15:
      *(v0 + 192) = v6;
      *(v0 + 200) = v12;
      v25 = *(v0 + 160);
      sub_26B923680(*(v0 + 152), v25, &qword_280426290, &qword_26B9B0988);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
      {
        v49 = (v0 + 40);
        v50 = *(v0 + 176);

        sub_26B9AB934();
        sub_26B90D7EC(v61);
        sub_26B9AB974();
        sub_26B9AB924();
        v51 = *(v0 + 40);
        if (v50)
        {

          v52 = sub_26B9AB984();
          v53 = (*(v52 - 8) + 56);
          (*v53)(v51, 1, 1, v52);
          v54 = v53 - 5;
          v49 = (v0 + 24);
        }

        else
        {
          v52 = sub_26B9AB984();
          v59 = (*(v52 - 8) + 56);
          (*v59)(v51, 0, 1, v52);
          v54 = v59 - 3;
        }

        (*v54)(*(v0 + 16), *v49, v52);

        v60 = *(v0 + 8);

        return v60();
      }

      v27 = *(v0 + 160);
      v29 = *(v0 + 128);
      v28 = *(v0 + 136);
      v30 = *(v0 + 120);
      v31 = *(v0 + 72);
      v33 = *(v0 + 48);
      v32 = *(v0 + 56);
      v34 = *v27;
      *(v0 + 208) = *v27;
      v35 = *(v27 + 1);
      *(v0 + 216) = v35;
      (*(v29 + 32))(v28, &v27[*(v26 + 48)], v30);
      sub_26B9AB934();
      v36 = sub_26B9AB8B4();
      result = (*(v32 + 8))(v31, v33);
      v37 = *(v36 + 16);
      if (v37)
      {
        break;
      }

LABEL_25:

      v42 = 1;
LABEL_28:
      v43 = *(v0 + 88);
      v44 = *(v0 + 96);
      v45 = *(v0 + 80);
      (*(v44 + 56))(v45, v42, 1, v43);
      if ((*(v44 + 48))(v45, 1, v43) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
        v55 = swift_task_alloc();
        *(v0 + 224) = v55;
        *v55 = v0;
        v55[1] = sub_26B91040C;
        v57 = *(v0 + 136);
        v56 = *(v0 + 144);
        v58 = *(v0 + 112);

        return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v56, v57, v58);
      }

      v46 = *(v0 + 80);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

      result = sub_26B8EACD8(v46, &qword_280426288, &qword_26B9B0980);
      v8 = v12;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v38 = 0;
    while (v38 < *(v36 + 16))
    {
      (*(*(v0 + 96) + 16))(*(v0 + 104), v36 + ((*(*(v0 + 96) + 80) + 32) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v38, *(v0 + 88));
      if (sub_26B9AC0B4() == v34 && v39 == v35)
      {

LABEL_27:

        (*(*(v0 + 96) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 88));
        v42 = 0;
        goto LABEL_28;
      }

      v41 = sub_26B9ACEB4();

      if (v41)
      {
        goto LABEL_27;
      }

      ++v38;
      result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v37 == v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = ((1 << *(v0 + 232)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 232)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v47 = *(v0 + 152);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
        (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
        v6 = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 168);
      v6 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v6)
      {
        v8 = v13;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B91040C()
{

  return MEMORY[0x2822009F8](sub_26B910508, 0, 0);
}

uint64_t sub_26B910508()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  v67 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26B9209DC(v4, v2, v1, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0, MEMORY[0x277D72A78]);

  (*(v8 + 8))(v7, v9);
  result = (*(v6 + 8))(v67, v5);
  v68 = v3;
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  *(v0 + 184) = v3;
  if (v13)
  {
    while (1)
    {
      v14 = *(v0 + 168);
LABEL_11:
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v24 = v23 | (v12 << 6);
      v25 = (*(v14 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      (*(v21 + 16))(v19, *(v14 + 56) + *(v21 + 72) * v24, v22);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      v29 = *(v28 + 48);
      *v20 = v26;
      *(v20 + 1) = v27;
      (*(v21 + 32))(&v20[v29], v19, v22);
      (*(*(v28 - 8) + 56))(v20, 0, 1, v28);

      v17 = v12;
LABEL_12:
      *(v0 + 192) = v13;
      *(v0 + 200) = v17;
      v30 = *(v0 + 160);
      sub_26B923680(*(v0 + 152), v30, &qword_280426290, &qword_26B9B0988);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        v55 = (v0 + 40);
        v56 = *(v0 + 176);

        sub_26B9AB934();
        sub_26B90D7EC(v68);
        sub_26B9AB974();
        sub_26B9AB924();
        v57 = *(v0 + 40);
        if (v56)
        {

          v58 = sub_26B9AB984();
          v59 = (*(v58 - 8) + 56);
          (*v59)(v57, 1, 1, v58);
          v60 = v59 - 5;
          v55 = (v0 + 24);
        }

        else
        {
          v58 = sub_26B9AB984();
          v65 = (*(v58 - 8) + 56);
          (*v65)(v57, 0, 1, v58);
          v60 = v65 - 3;
        }

        (*v60)(*(v0 + 16), *v55, v58);

        v66 = *(v0 + 8);

        return v66();
      }

      v32 = *(v0 + 160);
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);
      v35 = *(v0 + 120);
      v36 = *(v0 + 72);
      v38 = *(v0 + 48);
      v37 = *(v0 + 56);
      v39 = *v32;
      *(v0 + 208) = *v32;
      v40 = *(v32 + 1);
      *(v0 + 216) = v40;
      (*(v34 + 32))(v33, &v32[*(v31 + 48)], v35);
      sub_26B9AB934();
      v41 = sub_26B9AB8B4();
      result = (*(v37 + 8))(v36, v38);
      v42 = *(v41 + 16);
      if (v42)
      {
        break;
      }

LABEL_22:

      v47 = 1;
LABEL_25:
      v48 = *(v0 + 88);
      v49 = *(v0 + 96);
      v50 = *(v0 + 80);
      (*(v49 + 56))(v50, v47, 1, v48);
      v51 = (*(v49 + 48))(v50, 1, v48);
      v52 = *(v0 + 80);
      if (v51 != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
        v61 = swift_task_alloc();
        *(v0 + 224) = v61;
        *v61 = v0;
        v61[1] = sub_26B91040C;
        v63 = *(v0 + 136);
        v62 = *(v0 + 144);
        v64 = *(v0 + 112);

        return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v62, v63, v64);
      }

      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

      result = sub_26B8EACD8(v52, &qword_280426288, &qword_26B9B0980);
      v12 = v17;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

    v43 = 0;
    while (v43 < *(v41 + 16))
    {
      (*(*(v0 + 96) + 16))(*(v0 + 104), v41 + ((*(*(v0 + 96) + 80) + 32) & ~*(*(v0 + 96) + 80)) + *(*(v0 + 96) + 72) * v43, *(v0 + 88));
      if (sub_26B9AC0B4() == v39 && v44 == v40)
      {

LABEL_24:

        (*(*(v0 + 96) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 88));
        v47 = 0;
        goto LABEL_25;
      }

      v46 = sub_26B9ACEB4();

      if (v46)
      {
        goto LABEL_24;
      }

      ++v43;
      result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v42 == v43)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v15 = ((1 << *(v0 + 232)) + 63) >> 6;
    if (v15 <= (v12 + 1))
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = ((1 << *(v0 + 232)) + 63) >> 6;
    }

    v17 = v16 - 1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v53 = *(v0 + 152);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426298, &qword_26B9B0990);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v13 = 0;
        goto LABEL_12;
      }

      v14 = *(v0 + 168);
      v13 = *(v14 + 8 * v18 + 64);
      ++v12;
      if (v13)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_26B910C58(uint64_t a1)
{
  v2 = sub_26B9ABFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v9 = sub_26B9ABE84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v61 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426320, &qword_26B9B0CE8);
  v14 = MEMORY[0x28223BE20](v84);
  v66 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v61 - v18;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v67 = MEMORY[0x277D84F98];
  v88 = MEMORY[0x277D84F98];
  v21 = 1 << *(a1 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v76 = v3 + 88;
  v77 = v3 + 16;
  v75 = *MEMORY[0x277D72E38];
  v69 = *MEMORY[0x277D72E40];
  v74 = (v10 + 56);
  v70 = (v3 + 8);
  v83 = v3;
  v68 = (v3 + 96);
  v71 = (v10 + 32);
  v63 = v10;
  v73 = (v10 + 48);
  v85 = a1;

  v25 = 0;
  v72 = a1 + 64;
  v78 = v24;
  v81 = v8;
  v82 = v9;
  v80 = v5;
  while (1)
  {
    v26 = v25;
    if (!v23)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v25 = v26;
LABEL_10:
      v27 = __clz(__rbit64(v23)) | (v25 << 6);
      v28 = v84;
      v29 = *(v85 + 56);
      v30 = (*(v85 + 48) + 16 * v27);
      v31 = v30[1];
      v86 = *v30;
      v32 = v83;
      v33 = *(v83 + 16);
      v34 = v79;
      v33(&v79[*(v84 + 48)], v29 + *(v83 + 72) * v27, v2);
      *v34 = v86;
      v34[1] = v31;
      v86 = v31;
      v35 = v87;
      sub_26B923680(v34, v87, &qword_280426320, &qword_26B9B0CE8);
      v36 = v35 + *(v28 + 48);
      v37 = v80;
      v33(v80, v36, v2);
      v38 = (*(v32 + 88))(v37, v2);
      if (v38 == v75)
      {
        (*v68)(v37, v2);
        v39 = v81;
        v40 = v82;
        (*v71)(v81, v37, v82);
        (*v74)(v39, 0, 1, v40);
      }

      else
      {
        v39 = v81;
        if (v38 != v69)
        {
          goto LABEL_33;
        }

        v40 = v82;
        (*v74)(v81, 1, 1, v82);
        v41 = *v70;

        v41(v37, v2);
      }

      v24 = v78;
      v23 &= v23 - 1;
      if ((*v73)(v39, 1, v40) != 1)
      {
        break;
      }

      sub_26B8EACD8(v87, &qword_280426320, &qword_26B9B0CE8);
      sub_26B8EACD8(v39, &qword_2804260C8, &qword_26B9B0050);
      v26 = v25;
      v20 = v72;
      if (!v23)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v24)
          {

            return v67;
          }

          v23 = *(v20 + 8 * v25);
          ++v26;
          if (v23)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    v42 = *v71;
    (*v71)(v65, v39, v40);
    sub_26B923680(v87, v66, &qword_280426320, &qword_26B9B0CE8);
    v62 = v42;
    v42(v64, v65, v40);
    v43 = v67[2];
    if (v67[3] <= v43)
    {
      sub_26B9202D8(v43 + 1, 1, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    }

    v44 = v88;
    v45 = *v66;
    v86 = v66[1];
    sub_26B9ACFB4();
    v61 = v45;
    sub_26B9AC574();
    v46 = sub_26B9ACFF4();
    v47 = v44 + 64;
    v67 = v44;
    v48 = -1 << *(v44 + 32);
    v49 = v46 & ~v48;
    v50 = v49 >> 6;
    if (((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6))) == 0)
    {
      break;
    }

    v51 = __clz(__rbit64((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v56 = *(v84 + 48);
    *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
    v57 = v67;
    v58 = (v67[6] + 16 * v51);
    v59 = v86;
    *v58 = v61;
    v58[1] = v59;
    v62((v57[7] + *(v63 + 72) * v51), v64, v40);
    ++v57[2];
    (*v70)(v66 + v56, v2);
    v20 = v72;
  }

  v52 = 0;
  v53 = (63 - v48) >> 6;
  while (++v50 != v53 || (v52 & 1) == 0)
  {
    v54 = v50 == v53;
    if (v50 == v53)
    {
      v50 = 0;
    }

    v52 |= v54;
    v55 = *(v47 + 8 * v50);
    if (v55 != -1)
    {
      v51 = __clz(__rbit64(~v55)) + (v50 << 6);
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:

  result = sub_26B9ACEA4();
  __break(1u);
  return result;
}

uint64_t sub_26B911480(uint64_t a1)
{
  v2 = sub_26B9ABFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_26B9ABE84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426320, &qword_26B9B0CE8);
  v14 = MEMORY[0x28223BE20](v83);
  v66 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v78 = &v60 - v18;
  v67 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v75 = v3 + 88;
  v76 = v3 + 16;
  v74 = *MEMORY[0x277D72E38];
  v73 = (v10 + 56);
  v69 = (v3 + 8);
  v82 = v3;
  v68 = (v3 + 96);
  v70 = (v10 + 32);
  v63 = v10;
  v72 = (v10 + 48);
  v84 = a1;

  v25 = 0;
  v71 = a1 + 64;
  v77 = v23;
  v80 = v8;
  v81 = v9;
  v79 = v5;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v25 = v26;
LABEL_10:
      v27 = __clz(__rbit64(v22)) | (v25 << 6);
      v28 = v83;
      v29 = *(v84 + 56);
      v30 = (*(v84 + 48) + 16 * v27);
      v31 = v30[1];
      v85 = *v30;
      v32 = v82;
      v33 = *(v82 + 16);
      v34 = v78;
      v33(&v78[*(v83 + 48)], v29 + *(v82 + 72) * v27, v2);
      *v34 = v85;
      v34[1] = v31;
      v85 = v31;
      v35 = v86;
      sub_26B923680(v34, v86, &qword_280426320, &qword_26B9B0CE8);
      v36 = v35 + *(v28 + 48);
      v37 = v79;
      v33(v79, v36, v2);
      v38 = (*(v32 + 88))(v37, v2);
      if (v38 == v74)
      {
        (*v68)(v37, v2);
        v39 = v80;
        v40 = v81;
        (*v70)(v80, v37, v81);
        (*v73)(v39, 0, 1, v40);
      }

      else
      {
        v39 = v80;
        v40 = v81;
        (*v73)(v80, 1, 1, v81);
        v41 = *v69;

        v41(v37, v2);
      }

      v22 &= v22 - 1;
      v42 = (*v72)(v39, 1, v40);
      v23 = v77;
      if (v42 != 1)
      {
        break;
      }

      sub_26B8EACD8(v86, &qword_280426320, &qword_26B9B0CE8);
      result = sub_26B8EACD8(v39, &qword_2804260C8, &qword_26B9B0050);
      v26 = v25;
      v19 = v71;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return v67;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v43 = *v70;
    (*v70)(v65, v39, v40);
    sub_26B923680(v86, v66, &qword_280426320, &qword_26B9B0CE8);
    v62 = v43;
    v43(v64, v65, v40);
    v44 = v67[2];
    if (v67[3] <= v44)
    {
      sub_26B9202D8(v44 + 1, 1, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    }

    v45 = v87;
    v46 = *v66;
    v85 = v66[1];
    sub_26B9ACFB4();
    v61 = v46;
    sub_26B9AC574();
    result = sub_26B9ACFF4();
    v47 = v45 + 64;
    v67 = v45;
    v48 = -1 << *(v45 + 32);
    v49 = result & ~v48;
    v50 = v49 >> 6;
    if (((-1 << v49) & ~*(v45 + 64 + 8 * (v49 >> 6))) == 0)
    {
      break;
    }

    v51 = __clz(__rbit64((-1 << v49) & ~*(v45 + 64 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    v56 = *(v83 + 48);
    *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
    v57 = v67;
    v58 = (v67[6] + 16 * v51);
    v59 = v85;
    *v58 = v61;
    v58[1] = v59;
    v62((v57[7] + *(v63 + 72) * v51), v64, v40);
    ++v57[2];
    result = (*v69)(v66 + v56, v2);
    v19 = v71;
  }

  v52 = 0;
  v53 = (63 - v48) >> 6;
  while (++v50 != v53 || (v52 & 1) == 0)
  {
    v54 = v50 == v53;
    if (v50 == v53)
    {
      v50 = 0;
    }

    v52 |= v54;
    v55 = *(v47 + 8 * v50);
    if (v55 != -1)
    {
      v51 = __clz(__rbit64(~v55)) + (v50 << 6);
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26B9ABD04();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_26B9ABF24();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_26B9ABD44();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_26B9ABE84();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B911EC4, 0, 0);
}

uint64_t sub_26B911EC4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  v5 = *(v2 + 16);
  v0[21] = v5;
  v0[22] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277D72A38])
  {
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[14];
    (*(v0[19] + 96))(v7, v0[18]);
    v0[23] = *v7;
    v12 = swift_projectBox();
    (*(v10 + 16))(v8, v12, v9);
    sub_26B9ABE64();
    v13 = sub_26B9AC1D4();
    v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
    sub_26B8EACD8(v11, &qword_2804262A0, &unk_26B9B3640);
    if (v14 == 1)
    {
      sub_26B9ABCF4();
      v15 = sub_26B9ABCA4();
      v17 = v16;
      v0[24] = v16;
      v18 = swift_task_alloc();
      v0[25] = v18;
      *v18 = v0;
      v18[1] = sub_26B912318;
      v19 = v0[12];
LABEL_7:
      v31 = v0[10];
      v32 = v0[4];

      return sub_26B912B10(v19, v31, v15, v17, v32);
    }

    v34 = v0[17];
    v35 = v0[18];
    v36 = v0[15];
    v37 = v0[16];
LABEL_13:
    v39 = v0[2];
    v38 = v0[3];
    (*(v37 + 8))(v34, v36);
    v5(v39, v38, v35);

    goto LABEL_14;
  }

  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[18];
  if (v6 == *MEMORY[0x277D729F8])
  {
    v23 = v0[13];
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[5];
    (*(v21 + 96))(v20, v22);
    v0[26] = *v20;
    v27 = swift_projectBox();
    (*(v25 + 16))(v24, v27, v26);
    sub_26B9ABE64();
    v28 = sub_26B9AC1D4();
    LODWORD(v24) = (*(*(v28 - 8) + 48))(v23, 1, v28);
    sub_26B8EACD8(v23, &qword_2804262A0, &unk_26B9B3640);
    if (v24 == 1)
    {
      sub_26B9ABCF4();
      v15 = sub_26B9ABCA4();
      v17 = v29;
      v0[27] = v29;
      v30 = swift_task_alloc();
      v0[28] = v30;
      *v30 = v0;
      v30[1] = sub_26B912614;
      v19 = v0[11];
      goto LABEL_7;
    }

    v35 = v0[18];
    v37 = v0[6];
    v34 = v0[7];
    v36 = v0[5];
    goto LABEL_13;
  }

  v5(v0[2], v0[3], v0[18]);
  (*(v21 + 8))(v20, v22);
LABEL_14:

  v40 = v0[1];

  return v40();
}

uint64_t sub_26B912318()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_26B91248C, 0, 0);
}

uint64_t sub_26B91248C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 96);
    (*(v0 + 168))(*(v0 + 16), *(v0 + 24), v5);
    if (v4(v6, 1, v5) != 1)
    {
      sub_26B8EACD8(*(v0 + 96), &qword_2804260C8, &qword_26B9B0050);
    }
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 16), *(v0 + 96), *(v0 + 144));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26B912614()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_26B912788, 0, 0);
}

uint64_t sub_26B912788()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 88);
    (*(v0 + 168))(*(v0 + 16), *(v0 + 24), v5);
    if (v4(v6, 1, v5) != 1)
    {
      sub_26B8EACD8(*(v0 + 88), &qword_2804260C8, &qword_26B9B0050);
    }
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 16), *(v0 + 88), *(v0 + 144));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26B912910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_26B9ABFB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26B8EACD8(a1, &qword_280426328, &unk_26B9B0CF0);
    sub_26B92065C(a2, a3, v9);

    return sub_26B8EACD8(v9, &qword_280426328, &unk_26B9B0CF0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_26B9209DC(v13, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72E48], &qword_280426338, &unk_26B9B3500, MEMORY[0x277D72E48]);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_26B912B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v5[7] = v6;
  v5[8] = *(v6 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_26B9AC014();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_26B9ABF94();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v5[19] = swift_task_alloc();
  v9 = sub_26B9ABD04();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v5[22] = *(v10 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v11 = sub_26B9ABF24();
  v5[25] = v11;
  v5[26] = *(v11 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426350, &unk_26B9B0D20);
  v5[29] = swift_task_alloc();
  v12 = sub_26B9ABEB4();
  v5[30] = v12;
  v5[31] = *(v12 - 8);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B912F58, 0, 0);
}

uint64_t sub_26B912F58()
{
  v1 = v0[38];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[2];
  v6 = v0[3];
  v8 = sub_26B9ABE84();
  v0[39] = v8;
  v9 = *(v8 - 8);
  v0[40] = v9;
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = static ToolKitUtilities.entityDefinition(for:)(v6, v1);
  MEMORY[0x26D685FA0](v10);
  sub_26B97BCE4(v2);
  (*(v5 + 8))(v3, v4);
  v11 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v11 - 8) + 48))(v2, 1, v11) == 1)
  {
    sub_26B8EACD8(v0[33], &qword_2804260F0, &qword_26B9B0D10);
    v12 = 1;
  }

  else
  {
    v13 = v0[33];
    (*(v0[26] + 16))(v0[36], v13, v0[25]);
    sub_26B904420(v13);
    v12 = 0;
  }

  v14 = v0[35];
  v15 = v0[36];
  v16 = v0[29];
  v97 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v17[7];
  v19(v15, v12, 1, v18);
  v20 = sub_26B9ABF04();
  v21 = swift_allocBox();
  v94 = *MEMORY[0x277D72CC0];
  v96 = v20;
  v93 = *(*(v20 - 8) + 104);
  v93(v22);
  *v14 = v21;
  v92 = *MEMORY[0x277D72D50];
  v91 = v17[13];
  v91(v14);
  v19(v14, 0, 1, v18);
  v23 = *(v97 + 48);
  sub_26B9236E8(v15, v16, &qword_2804262C8, &qword_26B9B3CE0);
  sub_26B9236E8(v14, v16 + v23, &qword_2804262C8, &qword_26B9B3CE0);
  v24 = v17[6];
  if (v24(v16, 1, v18) == 1)
  {
    v25 = v0[36];
    v26 = v0[25];
    sub_26B8EACD8(v0[35], &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v25, &qword_2804262C8, &qword_26B9B3CE0);
    if (v24(v16 + v23, 1, v26) == 1)
    {
      sub_26B8EACD8(v0[29], &qword_2804262C8, &qword_26B9B3CE0);
      v27 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v28 = v0[25];
  sub_26B9236E8(v0[29], v0[34], &qword_2804262C8, &qword_26B9B3CE0);
  v29 = v24(v16 + v23, 1, v28);
  v31 = v0[35];
  v30 = v0[36];
  v32 = v0[34];
  if (v29 == 1)
  {
    v34 = v0[25];
    v33 = v0[26];
    sub_26B8EACD8(v0[35], &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v30, &qword_2804262C8, &qword_26B9B3CE0);
    (*(v33 + 8))(v32, v34);
LABEL_9:
    sub_26B8EACD8(v0[29], &qword_280426350, &unk_26B9B0D20);
    v27 = 0;
    goto LABEL_11;
  }

  v98 = v0[29];
  v35 = v0[26];
  v36 = v0[27];
  v37 = v0[25];
  (*(v35 + 32))(v36, v16 + v23, v37);
  sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
  v27 = sub_26B9AC494();
  v38 = *(v35 + 8);
  v38(v36, v37);
  sub_26B8EACD8(v31, &qword_2804262C8, &qword_26B9B3CE0);
  sub_26B8EACD8(v30, &qword_2804262C8, &qword_26B9B3CE0);
  v38(v32, v37);
  sub_26B8EACD8(v98, &qword_2804262C8, &qword_26B9B3CE0);
LABEL_11:
  v39 = v0[19];
  (*(v0[26] + 16))(v0[27], v0[3], v0[25]);
  v40 = sub_26B9AC1D4();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

  sub_26B9ABCE4();
  if (v27)
  {
    v41 = v0[37];
    v43 = v0[16];
    v42 = v0[17];
    sub_26B9236E8(v0[38], v41, &qword_280426358, &qword_26B9B39D0);
    if ((*(v42 + 48))(v41, 1, v43) == 1)
    {
      sub_26B8EACD8(v0[37], &qword_280426358, &qword_26B9B39D0);
    }

    else
    {
      v44 = v0[15];
      v46 = v0[13];
      v45 = v0[14];
      (*(v0[17] + 32))(v0[18], v0[37], v0[16]);
      (*(v45 + 104))(v44, *MEMORY[0x277D73008], v46);
      v47 = sub_26B9ABF84();
      (*(v45 + 8))(v44, v46);
      if (v47)
      {
        v48 = v0[30];
        v49 = v0[31];
        v50 = v0[25];
        v86 = v0[23];
        v87 = v0[24];
        v51 = v0[21];
        v85 = v0[20];
        v52 = v0[10];
        v90 = v0[22];
        v88 = v0[9];
        v89 = v0[7];
        v53 = swift_allocBox();
        v55 = v54;
        v56 = swift_allocBox();
        (v93)(v57, v94, v96);
        *v55 = v56;
        (v91)(v55, v92, v50);
        *v52 = v53;
        (*(v49 + 104))(v52, *MEMORY[0x277D72AD0], v48);
        (*(v49 + 56))(v52, 0, 1, v48);
        (*(v51 + 16))(v86, v87, v85);
        sub_26B9236E8(v52, v88, &qword_2804262A8, &qword_26B9B09B0);
        v58 = (*(v51 + 80) + 16) & ~*(v51 + 80);
        v59 = (v90 + *(v89 + 80) + v58) & ~*(v89 + 80);
        v60 = swift_allocObject();
        v0[41] = v60;
        (*(v51 + 32))(v60 + v58, v86, v85);
        sub_26B923680(v88, v60 + v59, &qword_2804262A8, &qword_26B9B09B0);
        v61 = swift_task_alloc();
        v0[42] = v61;
        *v61 = v0;
        v61[1] = sub_26B913B3C;
        v62 = v0[12];
        v63 = &unk_26B9B0D38;
        v64 = v60;
LABEL_19:

        return sub_26B91C22C(v62, 0xD000000000000029, 0x800000026B9B7D40, v63, v64);
      }

      (*(v0[17] + 8))(v0[18], v0[16]);
    }
  }

  v65 = v0[39];
  v66 = v0[40];
  v67 = v0[11];
  sub_26B9236E8(v0[2], v67, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v66 + 48))(v67, 1, v65) == 1)
  {
    v68 = v0[30];
    v69 = v0[31];
    v70 = v0[23];
    v71 = v0[24];
    v72 = v0[21];
    v95 = v0[22];
    v73 = v0[20];
    v74 = v0[10];
    v75 = v0[9];
    v76 = v0[7];
    sub_26B8EACD8(v0[11], &qword_2804260C8, &qword_26B9B0050);
    (*(v69 + 56))(v74, 1, 1, v68);
    (*(v72 + 16))(v70, v71, v73);
    sub_26B9236E8(v74, v75, &qword_2804262A8, &qword_26B9B09B0);
    v77 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v78 = (v95 + *(v76 + 80) + v77) & ~*(v76 + 80);
    v79 = swift_allocObject();
    v0[43] = v79;
    (*(v72 + 32))(v79 + v77, v70, v73);
    sub_26B923680(v75, v79 + v78, &qword_2804262A8, &qword_26B9B09B0);
    v80 = swift_task_alloc();
    v0[44] = v80;
    *v80 = v0;
    v80[1] = sub_26B914074;
    v62 = v0[12];
    v63 = &unk_26B9B0D30;
    v64 = v79;
    goto LABEL_19;
  }

  v82 = v0[38];
  v83 = v0[11];
  (*(v0[21] + 8))(v0[24], v0[20]);
  sub_26B8EACD8(v82, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v83, &qword_2804260C8, &qword_26B9B0050);

  v84 = v0[1];

  return v84();
}

uint64_t sub_26B913B3C()
{
  v1 = *(*v0 + 80);

  sub_26B8EACD8(v1, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B913C80, 0, 0);
}

uint64_t sub_26B913C80()
{
  v1 = v0[12];
  v2 = v0[2];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_26B8EACD8(v2, &qword_2804260C8, &qword_26B9B0050);
  sub_26B923680(v1, v2, &qword_2804260C8, &qword_26B9B0050);
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[11];
  sub_26B9236E8(v0[2], v5, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[20];
    v12 = v0[10];
    v13 = v0[9];
    v24 = v0[22];
    v14 = v0[7];
    sub_26B8EACD8(v0[11], &qword_2804260C8, &qword_26B9B0050);
    (*(v7 + 56))(v12, 1, 1, v6);
    (*(v10 + 16))(v8, v9, v11);
    sub_26B9236E8(v12, v13, &qword_2804262A8, &qword_26B9B09B0);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v24 + *(v14 + 80) + v15) & ~*(v14 + 80);
    v17 = swift_allocObject();
    v0[43] = v17;
    (*(v10 + 32))(v17 + v15, v8, v11);
    sub_26B923680(v13, v17 + v16, &qword_2804262A8, &qword_26B9B09B0);
    v18 = swift_task_alloc();
    v0[44] = v18;
    *v18 = v0;
    v18[1] = sub_26B914074;
    v19 = v0[12];

    return sub_26B91C22C(v19, 0xD000000000000029, 0x800000026B9B7D40, &unk_26B9B0D30, v17);
  }

  else
  {
    v21 = v0[38];
    v22 = v0[11];
    (*(v0[21] + 8))(v0[24], v0[20]);
    sub_26B8EACD8(v21, &qword_280426358, &qword_26B9B39D0);
    sub_26B8EACD8(v22, &qword_2804260C8, &qword_26B9B0050);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_26B914074()
{
  v1 = *(*v0 + 80);

  sub_26B8EACD8(v1, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B9141B8, 0, 0);
}

uint64_t sub_26B9141B8()
{
  v1 = v0[38];
  v2 = v0[12];
  v3 = v0[2];
  (*(v0[21] + 8))(v0[24], v0[20]);
  sub_26B8EACD8(v1, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
  sub_26B923680(v2, v3, &qword_2804260C8, &qword_26B9B0050);

  v4 = v0[1];

  return v4();
}

uint64_t static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = sub_26B9ABD04();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9144A0, 0, 0);
}

uint64_t sub_26B9144A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  (*(v4 + 16))(v1, v0[3], v3);
  sub_26B9236E8(v6, v5, &qword_2804262A8, &qword_26B9B09B0);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + *(v7 + 80) + v8) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  (*(v4 + 32))(v10 + v8, v1, v3);
  sub_26B923680(v5, v10 + v9, &qword_2804262A8, &qword_26B9B09B0);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_26B91465C;
  v12 = v0[2];

  return sub_26B91C22C(v12, 0xD000000000000029, 0x800000026B9B7D40, &unk_26B9B09C0, v10);
}

uint64_t sub_26B91465C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static ToolKitUtilities.needsToolConfiguration(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:fetchDefaultValues:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 209) = a4;
  *(v4 + 208) = a3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = sub_26B9AB584();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_26B9AB984();
  *(v4 + 104) = v6;
  v7 = *(v6 - 8);
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 + 64);
  *(v4 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B914910, 0, 0);
}

uint64_t sub_26B914910()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_26B914A70;

  return v6(v2, v3);
}

uint64_t sub_26B914A70(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[19] = a1;
  v5[20] = v2;

  if (v2)
  {
    v6 = sub_26B915040;
  }

  else
  {
    v5[21] = a2;
    v6 = sub_26B914B98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B914B98()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 209);
  v6 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(v1, v6, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  (*(v4 + 32))(v9 + v8, v1, v3);
  *(v9 + v8 + v2) = v5;
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = sub_26B9ABB24();
  *v10 = v0;
  v10[1] = sub_26B914D0C;
  v12 = *(v0 + 168);
  v13 = *(v0 + 136);

  return MEMORY[0x2821DAB50](v13, &unk_26B9B09E8, v9, v11, ObjectType, v12);
}

uint64_t sub_26B914D0C()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B91520C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 200) = v3;
    *v3 = v2;
    v3[1] = sub_26B914E8C;
    v4 = *(v2 + 136);
    v5 = *(v2 + 208);
    v6 = *(v2 + 72);
    v7 = *(v2 + 64);

    return static ToolKitUtilities.needsToolConfiguration(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(v7, v4, v6, v5);
  }
}

uint64_t sub_26B914E8C(char a1)
{
  *(*v1 + 210) = a1;

  return MEMORY[0x2822009F8](sub_26B914F8C, 0, 0);
}

uint64_t sub_26B914F8C()
{
  v1 = *(v0 + 136);
  swift_unknownObjectRelease();
  sub_26B8EACD8(v1, &qword_2804262B0, &qword_26B9B09D8);
  v2 = *(v0 + 210);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26B915040()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_26B91520C()
{
  swift_unknownObjectRelease();

  v1 = v0[24];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_26B9153E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 64) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26B91540C, 0, 0);
}

uint64_t sub_26B91540C()
{
  v1 = sub_26B9AB9A4();
  v3 = v2;
  *(v0 + 40) = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_26B9154D8;
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x2821DAA20](v8, v7, v6, ObjectType, v3);
}

uint64_t sub_26B9154D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26B915694;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_26B9155F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B9155F4()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9ABB24();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26B915694()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ToolKitUtilities.needsToolConfiguration(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = sub_26B9AC0E4();
  v4[2] = v9;
  v4[3] = *(v9 - 8);
  v4[4] = swift_task_alloc();
  v10 = sub_26B9AB584();
  v4[5] = v10;
  v4[6] = *(v10 - 8);
  v4[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_26B915864;

  return static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(a1, a2, a3, v5);
}

uint64_t sub_26B915864(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_26B915964, 0, 0);
}

uint64_t sub_26B915964()
{
  v40 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v39 = MEMORY[0x277D84F90];
    sub_26B921238(0, v2, 0);
    v4 = v39;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v35 = *(v3 + 56);
    v36 = v5;
    v38 = v0;
    v7 = (v3 - 8);
    v34 = v2;
    do
    {
      v8 = v0[4];
      v9 = v0[2];
      v36(v8, v6, v9);
      v10 = sub_26B9AC0B4();
      v12 = v11;
      (*v7)(v8, v9);
      v39 = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26B921238((v13 > 1), v14 + 1, 1);
        v4 = v39;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v35;
      --v2;
      v0 = v38;
    }

    while (v2);
    v16 = v38[6];
    v17 = v38[7];
    v18 = v38[5];

    v19 = sub_26B9A77DC();
    (*(v16 + 16))(v17, v19, v18);

    v20 = sub_26B9AB564();
    v21 = sub_26B9AC914();

    v22 = os_log_type_enabled(v20, v21);
    v24 = v38[6];
    v23 = v38[7];
    v25 = v38[5];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = MEMORY[0x26D6865D0](v4, MEMORY[0x277D837D0]);
      v37 = v25;
      v30 = v29;

      v31 = sub_26B91FC00(v28, v30, &v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26B8E8000, v20, v21, "Tool not ready: required parameters [%s] are not fulfilled!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D6879F0](v27, -1, -1);
      v0 = v38;
      MEMORY[0x26D6879F0](v26, -1, -1);

      (*(v24 + 8))(v23, v37);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v2 = v34;
  }

  else
  {
  }

  v32 = v0[1];

  return v32(v2 != 0);
}

uint64_t static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 208) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_26B9AC064();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_26B9AC0E4();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v7 = sub_26B9AB914();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_26B9AB584();
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8);
  *(v4 + 176) = swift_task_alloc();
  v9 = sub_26B9ABB24();
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B915F18, 0, 0);
}

uint64_t sub_26B915F18()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_26B9236E8(*(v0 + 24), v3, &qword_2804262B0, &qword_26B9B09D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(*(v0 + 176), &qword_2804262B0, &qword_26B9B09D8);
    v4 = MEMORY[0x277D84FA0];
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(v5 + 32))(v6, *(v0 + 176), v7);
    v8 = sub_26B9176A0();
    v4 = sub_26B9226D4(v8);

    (*(v5 + 8))(v6, v7);
  }

  v9 = *(v0 + 32);
  v79 = v4;
  if (!v9 || !*(v9 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_26B91F3B4(v9, v4);

  if (v10)
  {

LABEL_8:
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    sub_26B9AB934();
    v14 = sub_26B9AB8B4();
    (*(v11 + 8))(v12, v13);
    result = v14;
    v85 = *(v14 + 16);
    if (v85)
    {
      v16 = 0;
      v17 = *(v0 + 80);
      v18 = (*(v0 + 48) + 8);
      v80 = (v17 + 32);
      v81 = MEMORY[0x277D84F90];
      v83 = v14;
      while (v16 < *(result + 16))
      {
        v19 = *(v0 + 64);
        v20 = *(v0 + 56);
        v21 = *(v0 + 40);
        v89 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v87 = *(v17 + 72);
        (*(v17 + 16))(*(v0 + 96), result + v89 + v87 * v16, *(v0 + 72));
        sub_26B9AC0C4();
        sub_26B9AC044();
        sub_26B92349C(&qword_2804262B8, MEMORY[0x277D73128], MEMORY[0x277D73138]);
        v22 = sub_26B9ACAE4();
        v23 = *v18;
        (*v18)(v20, v21);
        v23(v19, v21);
        if (v22 & 1) != 0 || (v25 = *(v0 + 56), v24 = *(v0 + 64), v26 = *(v0 + 40), sub_26B9AC0C4(), sub_26B9AC054(), v27 = sub_26B9ACAE4(), v23(v25, v26), v23(v24, v26), (v27))
        {
          (*(v17 + 8))(*(v0 + 96), *(v0 + 72));
        }

        else
        {
          v28 = *v80;
          (*v80)(*(v0 + 88), *(v0 + 96), *(v0 + 72));
          v29 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B921218(0, *(v81 + 16) + 1, 1);
            v29 = v81;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_26B921218((v30 > 1), v31 + 1, 1);
            v29 = v81;
          }

          v32 = *(v0 + 88);
          v33 = *(v0 + 72);
          *(v29 + 16) = v31 + 1;
          v81 = v29;
          v28(v29 + v89 + v31 * v87, v32, v33);
        }

        ++v16;
        result = v83;
        if (v85 == v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v81 = MEMORY[0x277D84F90];
LABEL_21:
    v34 = *(v0 + 208);
    v35 = *(v0 + 16);

    v36 = swift_task_alloc();
    *(v36 + 16) = v35;
    *(v36 + 24) = v79;
    *(v36 + 32) = v34;
    v86 = sub_26B917ADC(sub_26B9226A0, v36, v81);

    goto LABEL_22;
  }

  v38 = *(v0 + 160);
  v39 = *(v0 + 168);
  v40 = *(v0 + 152);
  v41 = sub_26B9A77DC();
  (*(v38 + 16))(v39, v41, v40);
  v42 = sub_26B9AB564();
  v43 = sub_26B9AC924();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26B8E8000, v42, v43, "Tool not ready, previous parameters and current are different!", v44, 2u);
    MEMORY[0x26D6879F0](v44, -1, -1);
  }

  v45 = *(v0 + 160);
  v46 = *(v0 + 168);
  v48 = *(v0 + 144);
  v47 = *(v0 + 152);
  v49 = *(v0 + 120);
  v50 = *(v0 + 128);

  (*(v45 + 8))(v46, v47);
  sub_26B921030(v9);
  sub_26B9AB934();
  v51 = sub_26B9AB8B4();
  result = (*(v50 + 8))(v48, v49);
  v88 = *(v51 + 16);
  if (v88)
  {
    v52 = 0;
    v53 = *(v0 + 80);
    v54 = v79 + 56;
    v82 = (v53 + 32);
    v84 = v51;
    v86 = MEMORY[0x277D84F90];
    while (v52 < *(v51 + 16))
    {
      v90 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v57 = v51 + v90;
      v58 = *(v53 + 72);
      (*(v53 + 16))(*(v0 + 112), v57 + v58 * v52, *(v0 + 72));
      v59 = sub_26B9AC0B4();
      v61 = v60;
      if (*(v79 + 16) && (v62 = v59, sub_26B9ACFB4(), sub_26B9AC574(), v63 = sub_26B9ACFF4(), v64 = -1 << *(v79 + 32), v65 = v63 & ~v64, ((*(v54 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = (*(v79 + 48) + 16 * v65);
          v68 = *v67 == v62 && v67[1] == v61;
          if (v68 || (sub_26B9ACEB4() & 1) != 0)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v54 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v70 = *(v0 + 104);
        v69 = *(v0 + 112);
        v71 = *(v0 + 72);

        v72 = v71;
        v73 = *v82;
        (*v82)(v70, v69, v72);
        v74 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B921218(0, *(v86 + 16) + 1, 1);
          v74 = v86;
        }

        v76 = *(v74 + 16);
        v75 = *(v74 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_26B921218((v75 > 1), v76 + 1, 1);
          v74 = v86;
        }

        v77 = *(v0 + 104);
        v78 = *(v0 + 72);
        *(v74 + 16) = v76 + 1;
        v86 = v74;
        result = v73(v74 + v90 + v76 * v58, v77, v78);
      }

      else
      {
LABEL_29:
        v55 = *(v0 + 112);
        v56 = *(v0 + 72);

        result = (*(v53 + 8))(v55, v56);
      }

      ++v52;
      v51 = v84;
      if (v52 == v88)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_50;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_48:

LABEL_22:

  v37 = *(v0 + 8);

  return v37(v86);
}

uint64_t static ToolKitUtilities.resolveUnsatisfiedParameters(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 240) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = sub_26B9AB914();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = sub_26B9AB584();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  v6 = sub_26B9AB984();
  *(v3 + 128) = v6;
  v7 = *(v6 - 8);
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 + 64);
  *(v3 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262B0, &qword_26B9B09D8);
  *(v3 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91692C, 0, 0);
}

uint64_t sub_26B91692C()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_26B916A8C;

  return v6(v2, v3);
}

uint64_t sub_26B916A8C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[22] = a1;
  v5[23] = v2;

  if (v2)
  {
    v6 = sub_26B917064;
  }

  else
  {
    v5[24] = a2;
    v6 = sub_26B916BB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B916BB4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[25] = v7;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = sub_26B9ABB24();
  *v8 = v0;
  v8[1] = sub_26B916D1C;
  v10 = v0[24];
  v11 = v0[20];

  return MEMORY[0x2821DAB50](v11, &unk_26B9B0A10, v7, v9, ObjectType, v10);
}

uint64_t sub_26B916D1C()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B917278, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 224) = v3;
    *v3 = v2;
    v3[1] = sub_26B916E9C;
    v4 = *(v2 + 160);
    v5 = *(v2 + 240);
    v6 = *(v2 + 72);
    v7 = *(v2 + 64);

    return static ToolKitUtilities.resolveUnsatisfiedParameters(for:toolInvocationSummary:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:)(v7, v4, v6, v5);
  }
}

uint64_t sub_26B916E9C(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_26B916F9C, 0, 0);
}

uint64_t sub_26B916F9C()
{
  v1 = v0[20];
  swift_unknownObjectRelease();
  sub_26B8EACD8(v1, &qword_2804262B0, &qword_26B9B09D8);
  v2 = v0[29];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26B917064()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v18 = v0[11];

  (*(v14 + 8))(v13, v15);
  sub_26B9AB934();
  v19 = sub_26B9AB8B4();

  (*(v18 + 8))(v16, v17);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_26B917278()
{
  swift_unknownObjectRelease();

  v1 = v0[27];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed to fetch parameter summary, unable to determine needsToolConfiguration: %@", v9, 0xCu);
    sub_26B8EACD8(v10, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v18 = v0[11];

  (*(v14 + 8))(v13, v15);
  sub_26B9AB934();
  v19 = sub_26B9AB8B4();

  (*(v18 + 8))(v16, v17);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_26B917498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B9174BC, 0, 0);
}

uint64_t sub_26B9174BC()
{
  v1 = sub_26B9AB9A4();
  v3 = v2;
  v0[5] = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26B917584;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x2821DAA28](v7, v6, ObjectType, v3);
}

uint64_t sub_26B917584()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26B9237C0;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_26B9237B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B9176A0()
{
  v0 = sub_26B9ABB14();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  result = sub_26B9ABAF4();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v33 = v1 + 88;
    v32 = *MEMORY[0x277D72658];
    v11 = (v1 + 8);
    v29 = *MEMORY[0x277D72660];
    v31 = v9;
    v27 = v9 - 1;
    v28 = (v1 + 96);
    v30 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10;
      while (1)
      {
        if (v12 >= *(v8 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v13 = *(v1 + 16);
        v13(v6, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v0);
        v10 = v12 + 1;
        v13(v4, v6, v0);
        result = (*(v1 + 88))(v4, v0);
        if (result != v32)
        {
          break;
        }

        v14 = *v11;
        (*v11)(v6, v0);
        result = (v14)(v4, v0);
        v12 = v10;
        if (v31 == v10)
        {
          goto LABEL_16;
        }
      }

      if (result != v29)
      {
        goto LABEL_18;
      }

      (*v11)(v6, v0);
      (*v28)(v4, v0);
      v15 = *v4;
      v25 = *(v4 + 1);
      v26 = v15;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C0, &qword_26B9B0A18) + 48);
      v17 = sub_26B9ABB04();
      (*(*(v17 - 8) + 8))(&v4[v16], v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B91F91C(0, *(v30 + 2) + 1, 1, v30);
        v30 = result;
      }

      v19 = *(v30 + 2);
      v18 = *(v30 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v19 + 1;
        result = sub_26B91F91C((v18 > 1), v19 + 1, 1, v30);
        v20 = v24;
        v30 = result;
      }

      v21 = v30;
      *(v30 + 2) = v20;
      v22 = &v21[16 * v19];
      v23 = v25;
      *(v22 + 4) = v26;
      *(v22 + 5) = v23;
      if (v27 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_16:

  return v30;
}

uint64_t sub_26B9179E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26B9ACFB4();
  sub_26B9AC574();
  v6 = sub_26B9ACFF4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26B9ACEB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26B917ADC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26B9AC0E4();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B921218(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26B921218((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_26B917DAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v67 = a4;
  v68 = a3;
  v5 = sub_26B9ABE44();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABEB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  v20 = sub_26B9AB954();
  v21 = sub_26B9AC0B4();
  if (*(v20 + 16))
  {
    v66 = a1;
    v23 = sub_26B9201A8(v21, v22);
    v25 = v24;

    if (v25)
    {
      v26 = *(v20 + 56);
      v27 = sub_26B9ABFB4();
      v28 = *(v27 - 8);
      v62 = v7;
      v29 = v19;
      v30 = v28;
      (*(v28 + 16))(v29, v26 + *(v28 + 72) * v23, v27);

      v31 = (*(v30 + 56))(v29, 0, 1, v27);
      v19 = v29;
      v7 = v62;
    }

    else
    {

      v33 = sub_26B9ABFB4();
      v31 = (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    }
  }

  else
  {

    v32 = sub_26B9ABFB4();
    v31 = (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  }

  v34 = v68;
  MEMORY[0x26D685FA0](v31);
  sub_26B97BCE4(v14);
  (*(v9 + 8))(v11, v8);
  v35 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
  {
    sub_26B8EACD8(v14, &qword_2804260F0, &qword_26B9B0D10);
  }

  else
  {
    v36 = *(v35 + 28);
    v37 = v19;
    v38 = v14[v36];
    sub_26B904420(v14);
    v39 = v38 == 1;
    v19 = v37;
    if (v39)
    {
      v40 = sub_26B9AC0B4();
      v42 = sub_26B9179E4(v40, v41, v34);

      if ((v42 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  v43 = sub_26B9AC0B4();
  v45 = sub_26B9179E4(v43, v44, v34);

  if ((v45 & 1) == 0)
  {
LABEL_16:
    v50 = 0;
    goto LABEL_17;
  }

  v46 = sub_26B9ABFB4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v49 = v48(v19, 1, v46);
  v50 = v49 == 1;
  if (v49 != 1 && (v67 & 1) != 0)
  {
    v51 = v65;
    sub_26B9236E8(v19, v65, &qword_280426328, &unk_26B9B0CF0);
    if (v48(v51, 1, v46) == 1)
    {
      sub_26B8EACD8(v51, &qword_280426328, &unk_26B9B0CF0);
      goto LABEL_16;
    }

    if ((*(v47 + 88))(v51, v46) == *MEMORY[0x277D72E38] && ((*(v47 + 96))(v51, v46), v46 = sub_26B9ABE84(), v47 = *(v46 - 8), (*(v47 + 88))(v51, v46) == *MEMORY[0x277D72A58]))
    {
      v53 = v19;
      (*(v47 + 96))(v51, v46);
      v54 = swift_projectBox();
      v55 = v63;
      v56 = v7;
      v57 = v7;
      v58 = v64;
      (*(v63 + 16))(v56, v54, v64);
      v59 = (*(v55 + 88))(v57, v58);
      v60 = *MEMORY[0x277D729B8];
      (*(v55 + 8))(v57, v58);

      if (v59 == v60)
      {
        v50 = sub_26B9229C4() ^ 1;
      }

      else
      {
        v50 = 0;
      }

      v19 = v53;
    }

    else
    {
      (*(v47 + 8))(v51, v46);
      v50 = 0;
    }
  }

LABEL_17:
  sub_26B8EACD8(v19, &qword_280426328, &unk_26B9B0CF0);
  return v50 & 1;
}

uint64_t sub_26B9184D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26B9ACB14();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_26B921FB0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_26B9ABF24();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t static ToolKitUtilities.update(invocation:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v3[17] = swift_task_alloc();
  sub_26B9AB914();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v4 = sub_26B9ABE84();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = sub_26B9AB3A4();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_26B9AB984();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9187D8, 0, 0);
}

uint64_t sub_26B9187D8()
{
  v1 = *(v0 + 128);
  sub_26B91A830(*(v0 + 120), *(v0 + 256));
  v2 = sub_26B9AB954();
  v3 = sub_26B911480(v2);

  v4 = *(v1 + 16);
  *(v0 + 264) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 224);
    *(v0 + 472) = *(v6 + 80);
    *(v0 + 476) = *MEMORY[0x277D7D638];
    *(v0 + 480) = *MEMORY[0x277D7D630];
    *(v0 + 272) = *(v6 + 72);
    *(v0 + 280) = *(v6 + 16);
    while (1)
    {
      *(v0 + 296) = v5;
      *(v0 + 304) = v3;
      *(v0 + 288) = v3;
      v7 = *(v0 + 476);
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = *(v0 + 216);
      (*(v0 + 280))(v8, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v5, v10);
      v11 = (*(v9 + 88))(v8, v10);
      if (v11 == v7)
      {
        break;
      }

      if (v11 == *(v0 + 480))
      {
        v19 = *(v0 + 232);
        (*(*(v0 + 224) + 96))(v19, *(v0 + 216));
        sub_26B8ECB70(v19, v0 + 16);
        v20 = *(v0 + 40);
        v21 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
        v22 = swift_task_alloc();
        *(v0 + 392) = v22;
        *v22 = v0;
        v22[1] = sub_26B919938;
        v23 = *(v0 + 152);

        return MEMORY[0x2821E5150](v23, v20, v21);
      }

      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
      v5 = *(v0 + 296) + 1;
      if (v5 == *(v0 + 264))
      {
        goto LABEL_6;
      }
    }

    v14 = *(v0 + 232);
    (*(*(v0 + 224) + 96))(v14, *(v0 + 216));
    sub_26B8ECB70(v14, v0 + 56);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
    v17 = swift_task_alloc();
    *(v0 + 312) = v17;
    *v17 = v0;
    v17[1] = sub_26B918C48;
    v18 = *(v0 + 160);

    return MEMORY[0x2821E5078](v18, v15, v16);
  }

  else
  {
LABEL_6:
    sub_26B9AB934();
    sub_26B90D7EC(v3);

    sub_26B9AB974();
    sub_26B9AB924();
    (*(*(v0 + 248) + 8))();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_26B918C48()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_26B91A620;
  }

  else
  {
    v2 = sub_26B918D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B918D64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    v6 = *(v0 + 296) + 1;
    if (v6 == *(v0 + 264))
    {
LABEL_7:
      sub_26B9AB934();
      sub_26B90D7EC(v5);

      sub_26B9AB974();
      sub_26B9AB924();
      v13 = *(v0 + 248);
      if (v4)
      {
        (*(v13 + 8))(*(v0 + 256), *(v0 + 240));
      }

      else
      {
        (*(v13 + 8))();
      }

      v14 = *(v0 + 8);

      return v14();
    }

    else
    {
      v7 = *(v0 + 288);
      while (1)
      {
        *(v0 + 296) = v6;
        *(v0 + 304) = v5;
        *(v0 + 288) = v7;
        v8 = *(v0 + 476);
        v10 = *(v0 + 224);
        v9 = *(v0 + 232);
        v11 = *(v0 + 216);
        (*(v0 + 280))(v9, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v6, v11);
        v12 = (*(v10 + 88))(v9, v11);
        if (v12 == v8)
        {
          break;
        }

        if (v12 == *(v0 + 480))
        {
          v25 = *(v0 + 232);
          (*(*(v0 + 224) + 96))(v25, *(v0 + 216));
          sub_26B8ECB70(v25, v0 + 16);
          v26 = *(v0 + 40);
          v27 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
          v28 = swift_task_alloc();
          *(v0 + 392) = v28;
          *v28 = v0;
          v28[1] = sub_26B919938;
          v29 = *(v0 + 152);

          return MEMORY[0x2821E5150](v29, v26, v27);
        }

        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        v6 = *(v0 + 296) + 1;
        if (v6 == *(v0 + 264))
        {
          goto LABEL_7;
        }
      }

      v20 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v20, *(v0 + 216));
      sub_26B8ECB70(v20, v0 + 56);
      v21 = *(v0 + 80);
      v22 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
      v23 = swift_task_alloc();
      *(v0 + 312) = v23;
      *v23 = v0;
      v23[1] = sub_26B918C48;
      v24 = *(v0 + 160);

      return MEMORY[0x2821E5078](v24, v21, v22);
    }
  }

  else
  {
    v15 = *(v0 + 208);
    v16 = *(v2 + 32);
    *(v0 + 328) = v16;
    *(v0 + 336) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v15, v3, v1);
    v17 = *(v0 + 80);
    *(v0 + 344) = v17;
    *(v0 + 360) = __swift_project_boxed_opaque_existential_1((v0 + 56), v17);
    sub_26B9AC804();
    *(v0 + 368) = sub_26B9AC7F4();
    v19 = sub_26B9AC7C4();

    return MEMORY[0x2822009F8](sub_26B919288, v19, v18);
  }
}

uint64_t sub_26B919288()
{

  *(v0 + 376) = sub_26B9AB2D4();
  *(v0 + 384) = v1;

  return MEMORY[0x2822009F8](sub_26B91930C, 0, 0);
}

uint64_t sub_26B91930C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 288);
  (*(*(v0 + 176) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 104) = v3;
  v5 = sub_26B9201A8(v2, v1);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v6;
  if (*(*(v0 + 288) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = v5;
    sub_26B920C58(MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    v5 = v22;
    v15 = *(v0 + 384);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + 376);
  v11 = *(v0 + 384);
  sub_26B9202D8(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
  v5 = sub_26B9201A8(v12, v11);
  if ((v2 & 1) != (v13 & 1))
  {

    return sub_26B9ACF24();
  }

LABEL_8:
  v15 = *(v0 + 384);
  if (v2)
  {
LABEL_9:
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = v5;

    v21 = *(v0 + 104);
    (*(v19 + 40))(v21[7] + *(v19 + 72) * v20, v17, v18);
    (*(v19 + 8))(v16, v18);
    goto LABEL_14;
  }

LABEL_12:
  v23 = *(v0 + 376);
  v24 = *(v0 + 328);
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v21 = *(v0 + 104);
  v21[(v5 >> 6) + 8] |= 1 << v5;
  v29 = (v21[6] + 16 * v5);
  *v29 = v23;
  v29[1] = v15;
  v24(v21[7] + *(v28 + 72) * v5, v25, v27);
  v30 = (*(v28 + 8))(v26, v27);
  v33 = v21[2];
  v9 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v9)
  {
    __break(1u);
    return MEMORY[0x2821E5078](v30, v31, v32);
  }

  v21[2] = v34;
LABEL_14:
  v35 = (v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v36 = *(v0 + 320);
  while (1)
  {
    v37 = *(v0 + 296) + 1;
    if (v37 == *(v0 + 264))
    {
      break;
    }

    *(v0 + 296) = v37;
    *(v0 + 304) = v21;
    *(v0 + 288) = v21;
    v38 = *(v0 + 476);
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    (*(v0 + 280))(v39, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v37, v41);
    v42 = (*(v40 + 88))(v39, v41);
    if (v42 == v38)
    {
      v45 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v45, *(v0 + 216));
      sub_26B8ECB70(v45, v35);
      v46 = *(v0 + 80);
      v47 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1(v35, v46);
      v48 = swift_task_alloc();
      *(v0 + 312) = v48;
      *v48 = v0;
      v48[1] = sub_26B918C48;
      v30 = *(v0 + 160);
      v31 = v46;
      v32 = v47;

      return MEMORY[0x2821E5078](v30, v31, v32);
    }

    if (v42 == *(v0 + 480))
    {
      v49 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v49, *(v0 + 216));
      sub_26B8ECB70(v49, v0 + 16);
      v50 = *(v0 + 40);
      v51 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
      v52 = swift_task_alloc();
      *(v0 + 392) = v52;
      *v52 = v0;
      v52[1] = sub_26B919938;
      v53 = *(v0 + 152);

      return MEMORY[0x2821E5150](v53, v50, v51);
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  }

  sub_26B9AB934();
  sub_26B90D7EC(v21);

  sub_26B9AB974();
  sub_26B9AB924();
  v43 = *(v0 + 248);
  if (v36)
  {
    (*(v43 + 8))(*(v0 + 256), *(v0 + 240));
  }

  else
  {
    (*(v43 + 8))();
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_26B919938()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_26B91A728;
  }

  else
  {
    v2 = sub_26B919A54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B919A54()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(v3, &qword_2804260C8, &qword_26B9B0050);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 400);
    v5 = *(v0 + 304);
    v6 = *(v0 + 296) + 1;
    if (v6 == *(v0 + 264))
    {
LABEL_7:
      sub_26B9AB934();
      sub_26B90D7EC(v5);

      sub_26B9AB974();
      sub_26B9AB924();
      v14 = *(v0 + 248);
      if (v4)
      {
        (*(v14 + 8))(*(v0 + 256), *(v0 + 240));
      }

      else
      {
        (*(v14 + 8))();
      }

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      v7 = *(v0 + 288);
      while (1)
      {
        *(v0 + 296) = v6;
        *(v0 + 304) = v5;
        *(v0 + 288) = v7;
        v8 = *(v0 + 476);
        v10 = *(v0 + 224);
        v9 = *(v0 + 232);
        v11 = *(v0 + 216);
        (*(v0 + 280))(v9, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v6, v11);
        v12 = (*(v10 + 88))(v9, v11);
        if (v12 == v8)
        {
          break;
        }

        v13 = *(v0 + 224);
        if (v12 == *(v0 + 480))
        {
          v26 = *(v0 + 232);
          (*(v13 + 96))();
          sub_26B8ECB70(v26, v0 + 16);
          v27 = *(v0 + 40);
          v28 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
          v29 = swift_task_alloc();
          *(v0 + 392) = v29;
          *v29 = v0;
          v29[1] = sub_26B919938;
          v30 = *(v0 + 152);

          return MEMORY[0x2821E5150](v30, v27, v28);
        }

        (*(v13 + 8))(*(v0 + 232), *(v0 + 216));
        v6 = *(v0 + 296) + 1;
        if (v6 == *(v0 + 264))
        {
          goto LABEL_7;
        }
      }

      v21 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v21, *(v0 + 216));
      sub_26B8ECB70(v21, v0 + 56);
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v22);
      v24 = swift_task_alloc();
      *(v0 + 312) = v24;
      *v24 = v0;
      v24[1] = sub_26B918C48;
      v25 = *(v0 + 160);

      return MEMORY[0x2821E5078](v25, v22, v23);
    }
  }

  else
  {
    v16 = *(v0 + 192);
    v17 = *(v2 + 32);
    *(v0 + 408) = v17;
    *(v0 + 416) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v16, v3, v1);
    v18 = *(v0 + 40);
    *(v0 + 424) = v18;
    *(v0 + 440) = __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
    sub_26B9AC804();
    *(v0 + 448) = sub_26B9AC7F4();
    v20 = sub_26B9AC7C4();

    return MEMORY[0x2822009F8](sub_26B919F74, v20, v19);
  }
}

uint64_t sub_26B919F74()
{

  *(v0 + 456) = sub_26B9AB364();
  *(v0 + 464) = v1;

  return MEMORY[0x2822009F8](sub_26B919FF8, 0, 0);
}

uint64_t sub_26B919FF8()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 288);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v3;
  v5 = sub_26B9201A8(v2, v1);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v6;
  if (*(*(v0 + 288) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = v5;
    sub_26B920C58(MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
    v5 = v22;
    v15 = *(v0 + 464);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  sub_26B9202D8(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277D72A78], &qword_280426318, &qword_26B9B0CE0);
  v5 = sub_26B9201A8(v12, v11);
  if ((v2 & 1) != (v13 & 1))
  {

    return sub_26B9ACF24();
  }

LABEL_8:
  v15 = *(v0 + 464);
  if (v2)
  {
LABEL_9:
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = v5;

    v21 = *(v0 + 96);
    (*(v19 + 40))(v21[7] + *(v19 + 72) * v20, v17, v18);
    (*(v19 + 8))(v16, v18);
    goto LABEL_14;
  }

LABEL_12:
  v23 = *(v0 + 456);
  v24 = *(v0 + 408);
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v21 = *(v0 + 96);
  v21[(v5 >> 6) + 8] |= 1 << v5;
  v29 = (v21[6] + 16 * v5);
  *v29 = v23;
  v29[1] = v15;
  v24(v21[7] + *(v28 + 72) * v5, v25, v27);
  v30 = (*(v28 + 8))(v26, v27);
  v33 = v21[2];
  v9 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v9)
  {
    __break(1u);
    return MEMORY[0x2821E5078](v30, v31, v32);
  }

  v21[2] = v34;
LABEL_14:
  v35 = (v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v36 = *(v0 + 400);
  while (1)
  {
    v37 = *(v0 + 296) + 1;
    if (v37 == *(v0 + 264))
    {
      break;
    }

    *(v0 + 296) = v37;
    *(v0 + 304) = v21;
    *(v0 + 288) = v21;
    v38 = *(v0 + 476);
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    (*(v0 + 280))(v39, *(v0 + 128) + ((*(v0 + 472) + 32) & ~*(v0 + 472)) + *(v0 + 272) * v37, v41);
    v42 = (*(v40 + 88))(v39, v41);
    if (v42 == v38)
    {
      v46 = *(v0 + 232);
      (*(*(v0 + 224) + 96))(v46, *(v0 + 216));
      sub_26B8ECB70(v46, v0 + 56);
      v47 = *(v0 + 80);
      v48 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v47);
      v49 = swift_task_alloc();
      *(v0 + 312) = v49;
      *v49 = v0;
      v49[1] = sub_26B918C48;
      v30 = *(v0 + 160);
      v31 = v47;
      v32 = v48;

      return MEMORY[0x2821E5078](v30, v31, v32);
    }

    v43 = *(v0 + 224);
    if (v42 == *(v0 + 480))
    {
      v50 = *(v0 + 232);
      (*(v43 + 96))();
      sub_26B8ECB70(v50, v35);
      v51 = *(v0 + 40);
      v52 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1(v35, v51);
      v53 = swift_task_alloc();
      *(v0 + 392) = v53;
      *v53 = v0;
      v53[1] = sub_26B919938;
      v54 = *(v0 + 152);

      return MEMORY[0x2821E5150](v54, v51, v52);
    }

    (*(v43 + 8))(*(v0 + 232), *(v0 + 216));
  }

  sub_26B9AB934();
  sub_26B90D7EC(v21);

  sub_26B9AB974();
  sub_26B9AB924();
  v44 = *(v0 + 248);
  if (v36)
  {
    (*(v44 + 8))(*(v0 + 256), *(v0 + 240));
  }

  else
  {
    (*(v44 + 8))();
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_26B91A620()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26B91A728()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26B91A830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_26B9AC0E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = (&v45 - v8);
  v51 = sub_26B9ABBA4();
  v9 = *(v51 - 8);
  v10 = MEMORY[0x28223BE20](v51);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = sub_26B9AB914();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = sub_26B9AB984();
  (*(*(v21 - 8) + 16))(v52, a1, v21);
  v49 = a1;
  sub_26B9AB934();
  sub_26B9AB904();
  v22 = *(v16 + 8);
  v48 = v15;
  v46 = v22;
  v22(v20, v15);
  sub_26B9ABB94();
  sub_26B92349C(&qword_280426330, MEMORY[0x277D726D0], MEMORY[0x277D726D8]);
  v23 = v51;
  LOBYTE(a1) = sub_26B9ACAE4();
  v24 = *(v9 + 8);
  v24(v12, v23);
  v24(v14, v23);
  if (a1)
  {
    v25 = sub_26B9ABE44();
    v26 = swift_allocBox();
    v28 = v27;
    *v27 = 1;
LABEL_11:
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D72988], v25);
    v38 = v50;
    *v50 = v26;
    v39 = *MEMORY[0x277D72A58];
    v40 = sub_26B9ABE84();
    (*(*(v40 - 8) + 104))(v38, v39, v40);
    v41 = *MEMORY[0x277D72E38];
    v42 = sub_26B9ABFB4();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v38, v41, v42);
    (*(v43 + 56))(v38, 0, 1, v42);
    v44 = sub_26B9AB944();
    sub_26B912910(v38, 0x6E656857776F6853, 0xEB000000006E7552);
    return v44(v53, 0);
  }

  else
  {
    v29 = v47;
    sub_26B9AB934();
    v30 = sub_26B9AB8B4();
    result = v46(v29, v48);
    v32 = 0;
    v33 = *(v30 + 16);
    v34 = (v4 + 8);
    while (1)
    {
      if (v33 == v32)
      {
      }

      if (v32 >= *(v30 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v3);
      if (sub_26B9AC0B4() == 0x6E656857776F6853 && v36 == 0xEB000000006E7552)
      {

        (*v34)(v6, v3);
LABEL_10:

        v25 = sub_26B9ABE44();
        v26 = swift_allocBox();
        v28 = v37;
        *v37 = 0;
        goto LABEL_11;
      }

      ++v32;
      v35 = sub_26B9ACEB4();

      result = (*v34)(v6, v3);
      if (v35)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static ToolKitUtilities.perform(toolIdentifier:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426248, &qword_26B9B08E8);
  v4[6] = swift_task_alloc();
  v5 = sub_26B9AB984();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91AF50, 0, 0);
}

uint64_t sub_26B91AF50()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  static ToolKitUtilities.toolInvocation(for:parameters:)(v0[3], v0[4], v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    sub_26B8EACD8(v0[6], &qword_280426248, &qword_26B9B08E8);
    v5 = sub_26B9ABE84();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[7];
    v12 = *(v10 + 32);
    v12(v9, v0[6], v11);
    (*(v10 + 16))(v8, v9, v11);
    v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v14 = swift_allocObject();
    v0[12] = v14;
    v12(v14 + v13, v8, v11);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_26B91B1B4;
    v16 = v0[2];

    return sub_26B91C22C(v16, 0x2065747563657865, 0xEC0000006C6F6F74, &unk_26B9B0A38, v14);
  }
}

uint64_t sub_26B91B1B4()
{

  return MEMORY[0x2822009F8](sub_26B91B2CC, 0, 0);
}

uint64_t sub_26B91B2CC()
{
  (*(v0[8] + 8))(v0[11], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t static ToolKitUtilities.perform(invocation:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9AB984();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91B420, 0, 0);
}

uint64_t sub_26B91B420()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26B91B578;
  v7 = v0[2];

  return sub_26B91C22C(v7, 0x2065747563657865, 0xEC0000006C6F6F74, &unk_26B9B0A48, v5);
}

uint64_t sub_26B91B578()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26B91B6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v3[5] = swift_task_alloc();
  sub_26B9AC2B4();
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0);
  v3[7] = swift_task_alloc();
  v4 = sub_26B9AC274();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426310, &qword_26B9B0CD8);
  v3[11] = swift_task_alloc();
  v5 = sub_26B9ABE74();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_26B9AB984();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91B8F4, 0, 0);
}

uint64_t sub_26B91B8F4()
{
  sub_26B91A830(v0[4], v0[17]);
  v1 = sub_26B9AB9A4();
  v3 = v2;
  v0[18] = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_26B91B9C4;
  v6 = v0[17];
  v7 = v0[11];

  return MEMORY[0x2821DAAB0](v7, v6, ObjectType, v3);
}

uint64_t sub_26B91B9C4()
{
  *(*v1 + 160) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_26B91C04C;
  }

  else
  {
    v2 = sub_26B91BAF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B91BAF4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_26B8EACD8(v3, &qword_280426310, &qword_26B9B0CD8);
    v4 = v0[2];
    v5 = sub_26B9ABE84();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[7];
    v9 = v0[5];
    (*(v2 + 32))(v0[14], v3, v1);
    v10 = sub_26B9ABEB4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_26B9AC2A4();
    v11 = sub_26B9AB104();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_26B9AC264();
    v12 = sub_26B9AB9A4();
    v14 = v13;
    v0[21] = v12;
    ObjectType = swift_getObjectType();
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_26B91BDC4;
    v17 = v0[14];
    v18 = v0[10];
    v19 = v0[2];

    return MEMORY[0x2821DAA60](v19, v17, v18, ObjectType, v14);
  }
}

uint64_t sub_26B91BDC4()
{
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_26B91C120;
  }

  else
  {
    v2 = sub_26B91BEF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B91BEF4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[2];
  v8 = sub_26B9ABE84();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26B91C04C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26B91C120()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B91C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_26B9AB584();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91C2F4, 0, 0);
}

uint64_t sub_26B91C2F4()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[16] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_26B91C458;

  return v6(v2, v3);
}

uint64_t sub_26B91C458(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[18] = a1;
  v5[19] = v2;

  if (v2)
  {
    v6 = sub_26B91C768;
  }

  else
  {
    v5[20] = a2;
    v6 = sub_26B91C580;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B91C580()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  v0[21] = v2;
  v3 = sub_26B9ABE84();
  *v2 = v0;
  v2[1] = sub_26B91C654;
  v4 = v0[20];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[8];

  return MEMORY[0x2821DAB50](v7, v5, v6, v3, ObjectType, v4);
}

uint64_t sub_26B91C654()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26B91CA8C;
  }

  else
  {
    v2 = sub_26B91CA1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B91C768()
{
  v32 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  if (v10)
  {
    v29 = v0[13];
    v30 = v0[15];
    v15 = v0[9];
    v14 = v0[10];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v16 = 136315394;
    v18 = v14 == 0;
    if (v14)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xD000000000000011;
    }

    if (v18)
    {
      v20 = 0x800000026B9B7D70;
    }

    else
    {
      v20 = v5;
    }

    v21 = sub_26B91FC00(v19, v20, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Failed to %s with tool session: %@", v16, 0x16u);
    sub_26B8EACD8(v17, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D6879F0](v28, -1, -1);
    MEMORY[0x26D6879F0](v16, -1, -1);

    (*(v12 + 8))(v30, v29);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[8];
  v25 = sub_26B9ABE84();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_26B91CA1C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B91CA8C()
{
  v32 = v0;
  swift_unknownObjectRelease();

  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  if (v10)
  {
    v29 = v0[13];
    v30 = v0[15];
    v15 = v0[9];
    v14 = v0[10];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v16 = 136315394;
    v18 = v14 == 0;
    if (v14)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xD000000000000011;
    }

    if (v18)
    {
      v20 = 0x800000026B9B7D70;
    }

    else
    {
      v20 = v5;
    }

    v21 = sub_26B91FC00(v19, v20, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Failed to %s with tool session: %@", v16, 0x16u);
    sub_26B8EACD8(v17, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D6879F0](v28, -1, -1);
    MEMORY[0x26D6879F0](v16, -1, -1);

    (*(v12 + 8))(v30, v29);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[8];
  v25 = sub_26B9ABE84();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

  v26 = v0[1];

  return v26();
}

uint64_t static ToolKitUtilities.withSession<A>(reason:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_26B9AB584();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91CE08, 0, 0);
}

uint64_t sub_26B91CE08()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, v0 + 7);
  v0[17] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  Dependency.wrappedValue.getter((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_26B91CF6C;

  return v6(v2, v3);
}

uint64_t sub_26B91CF6C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[19] = a1;
  v5[20] = v2;

  if (v2)
  {
    v6 = sub_26B91D2DC;
  }

  else
  {
    v5[21] = a2;
    v6 = sub_26B91D094;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B91D094()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_26B91D158;
  v3 = v0[21];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];

  return MEMORY[0x2821DAB50](v7, v6, v4, v5, ObjectType, v3);
}

uint64_t sub_26B91D158()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_26B91D584;
  }

  else
  {
    v2 = sub_26B91D26C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B91D26C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B91D2DC()
{
  v30 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  if (v10)
  {
    v27 = v0[14];
    v28 = v0[16];
    v15 = v0[9];
    v14 = v0[10];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v16 = 136315394;
    v18 = v14 == 0;
    if (v14)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xD000000000000011;
    }

    if (v18)
    {
      v20 = 0x800000026B9B7D70;
    }

    else
    {
      v20 = v5;
    }

    v21 = sub_26B91FC00(v19, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Failed to %s with tool session: %@", v16, 0x16u);
    sub_26B8EACD8(v17, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D6879F0](v26, -1, -1);
    MEMORY[0x26D6879F0](v16, -1, -1);

    (*(v12 + 8))(v28, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  (*(*(v0[13] - 8) + 56))(v0[8], 1, 1);

  v24 = v0[1];

  return v24();
}

uint64_t sub_26B91D584()
{
  v30 = v0;
  swift_unknownObjectRelease();

  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = sub_26B9A75D0();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v1;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  if (v10)
  {
    v27 = v0[14];
    v28 = v0[16];
    v15 = v0[9];
    v14 = v0[10];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v16 = 136315394;
    v18 = v14 == 0;
    if (v14)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xD000000000000011;
    }

    if (v18)
    {
      v20 = 0x800000026B9B7D70;
    }

    else
    {
      v20 = v5;
    }

    v21 = sub_26B91FC00(v19, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Failed to %s with tool session: %@", v16, 0x16u);
    sub_26B8EACD8(v17, &qword_280426230, &unk_26B9B25F0);
    MEMORY[0x26D6879F0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D6879F0](v26, -1, -1);
    MEMORY[0x26D6879F0](v16, -1, -1);

    (*(v12 + 8))(v28, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  (*(*(v0[13] - 8) + 56))(v0[8], 1, 1);

  v24 = v0[1];

  return v24();
}

uint64_t sub_26B91D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v4[6] = swift_task_alloc();
  sub_26B9AC2B4();
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0);
  v4[8] = swift_task_alloc();
  v5 = sub_26B9AC274();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_26B9ABE84();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_26B9ABE74();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B91DA44, 0, 0);
}

uint64_t sub_26B91DA44(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[4];
  v6 = sub_26B9AB9A4();
  v8 = v7;
  v1[18] = v6;
  ObjectType = swift_getObjectType();
  v10 = sub_26B9ABD04();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 16))(v12, v5, v10);
  *v2 = v11;
  (*(v3 + 104))(v2, *MEMORY[0x277D729F8], v4);
  v13 = swift_task_alloc();
  v1[19] = v13;
  *v13 = v1;
  v13[1] = sub_26B91DB9C;
  v14 = v1[17];
  v15 = v1[14];

  return MEMORY[0x2821DAA50](v14, v15, ObjectType, v8);
}

uint64_t sub_26B91DB9C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_26B91E0CC;
  }

  else
  {
    v5 = sub_26B91DD30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B91DD30()
{
  v1 = v0[6];
  sub_26B9236E8(v0[5], v0[8], &qword_2804262A8, &qword_26B9B09B0);
  sub_26B9AC2A4();
  v2 = sub_26B9AB104();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_26B9AC264();
  v3 = sub_26B9AB9A4();
  v5 = v4;
  v0[21] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_26B91DE84;
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[2];

  return MEMORY[0x2821DAA60](v10, v8, v9, ObjectType, v5);
}

uint64_t sub_26B91DE84()
{
  *(*v1 + 184) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_26B91E178;
  }

  else
  {
    v2 = sub_26B91DFB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B91DFB4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 56))(v6, 0, 1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26B91E0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B91E178()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static ToolKitUtilities.entityParameterTypeInfo(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABEE4();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_26B9ABF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_26B9ABEB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D685FA0](v16);
  v19 = sub_26B9ABEA4();
  (*(v15 + 8))(v18, v14);
  sub_26B9184D4(v19, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_26B8EACD8(v6, &qword_2804262C8, &qword_26B9B3CE0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v21 = (*(v8 + 88))(v11, v7);
    if (v21 == *MEMORY[0x277D72D28])
    {
      (*(v8 + 8))(v13, v7);
      (*(v8 + 96))(v11, v7);
      v23 = *(*v11 + 16);
      v22 = *(*v11 + 24);
      v25 = *(*v11 + 32);
      v24 = *(*v11 + 40);

      *a1 = v23;
      *(a1 + 8) = v22;
      *(a1 + 16) = v25;
      *(a1 + 24) = v24;
    }

    else if (v21 == *MEMORY[0x277D72D18])
    {
      (*(v8 + 96))(v11, v7);
      v26 = swift_projectBox();
      v28 = v40;
      v27 = v41;
      v29 = v42;
      (*(v41 + 16))(v40, v26, v42);
      v30 = sub_26B9ABEF4();
      v38 = v31;
      v39 = v30;
      v32 = sub_26B9ABED4();
      v34 = v33;
      (*(v27 + 8))(v28, v29);
      (*(v8 + 8))(v13, v7);

      v35 = v38;
      *a1 = v39;
      *(a1 + 8) = v35;
      *(a1 + 16) = v32;
      *(a1 + 24) = v34;
    }

    else
    {
      v36 = *(v8 + 8);
      v36(v13, v7);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return (v36)(v11, v7);
    }
  }

  return result;
}

void *static ToolKitUtilities.unpackCollections(values:)(uint64_t a1)
{
  v2 = sub_26B9ABC94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9ABE84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v50 = *(v14 + 64);
  v58 = (v50 + 32) & ~v50;
  v16 = (a1 + v58);
  v17 = *(v14 + 56);
  v56 = (v14 + 72);
  v55 = *MEMORY[0x277D729E0];
  v53 = (v14 - 8);
  v48 = (v3 + 16);
  v49 = (v14 + 80);
  v43 = (v3 + 8);
  v18 = MEMORY[0x277D84F90];
  v47 = xmmword_26B9AF300;
  v54 = &v43 - v10;
  v57 = v15;
  v44 = v9;
  v45 = v14;
  v59 = v17;
  v46 = v2;
  v15(v11, v16, v5);
  while (1)
  {
    v13(v9, v11, v5);
    v21 = (*v56)(v9, v5);
    if (v21 == v55)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
    v38 = v58;
    v39 = swift_allocObject();
    *(v39 + 16) = v47;
    v13((v39 + v38), v11, v5);
    v40 = v18[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v41 = v18[3] >> 1, v41 <= v40))
    {
      result = sub_26B91FA28(result, v40 + 1, 1, v18);
      v18 = result;
      v41 = result[3] >> 1;
    }

    v34 = v59;
    if (v41 <= v18[2])
    {
      goto LABEL_28;
    }

    swift_arrayInitWithCopy();

    ++v18[2];
    v11 = v54;
    v42 = *v53;
    (*v53)(v54, v5);
    v42(v9, v5);
    v13 = v57;
    v2 = v46;
LABEL_5:
    v16 += v34;
    if (!--v12)
    {
      return v18;
    }

    v13(v11, v16, v5);
  }

  v22 = v9;
  v23 = v9;
  v24 = v5;
  (*v49)(v22, v5);
  v52 = *v23;
  v25 = swift_projectBox();
  v26 = v51;
  v27 = v2;
  (*v48)(v51, v25, v2);
  v28 = v26;
  result = sub_26B9ABC84();
  v29 = result[2];
  v30 = v18[2];
  v31 = v30 + v29;
  if (!__OFADD__(v30, v29))
  {
    v32 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > v18[3] >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      result = sub_26B91FA28(result, v33, 1, v18);
      v18 = result;
    }

    v13 = v57;
    v34 = v59;
    if (v32[2])
    {
      if ((v18[3] >> 1) - v18[2] < v29)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      v2 = v27;
      v20 = v28;
      v5 = v24;
      v13 = v57;
      v9 = v44;
      if (v29)
      {
        v35 = v18[2];
        v36 = __OFADD__(v35, v29);
        v37 = v35 + v29;
        if (v36)
        {
          goto LABEL_31;
        }

        v18[2] = v37;
      }
    }

    else
    {

      v2 = v27;
      v20 = v28;
      v5 = v24;
      v9 = v44;
      if (v29)
      {
        goto LABEL_29;
      }
    }

    (*v43)(v20, v2);
    v11 = v54;
    (*v53)(v54, v5);

    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B91EBC0(uint64_t a1)
{
  v2 = sub_26B9ABEE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9ABF24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D72D28])
  {
    (*(v7 + 96))(v9, v6);
    v11 = *(*v9 + 32);
  }

  else if (v10 == *MEMORY[0x277D72D18])
  {
    (*(v7 + 96))(v9, v6);
    v12 = swift_projectBox();
    (*(v3 + 16))(v5, v12, v2);
    v11 = sub_26B9ABED4();
    sub_26B9ABEF4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v11;
}

uint64_t static ToolKitUtilities.toolInvocationHasOutput(_:)()
{
  v0 = sub_26B9ABEB4();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_26B9AB914();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_26B9AB934();
  v13 = sub_26B9AB8E4();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v12, v6);
  if (v13 == 0xD00000000000001FLL && 0x800000026B9B7D90 == v15)
  {
  }

  else
  {
    v18 = sub_26B9ACEB4();

    if ((v18 & 1) == 0)
    {
      v19 = sub_26B9AB934();
      MEMORY[0x26D685770](v19);
      v16(v10, v6);
      v20 = sub_26B9ABEA4();
      (*(v34 + 8))(v2, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
      v21 = sub_26B9ABF24();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26B9AF300;
      v25 = sub_26B9ABF04();
      v26 = swift_allocBox();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D72CC8], v25);
      *(v24 + v23) = v26;
      (*(v22 + 104))(v24 + v23, *MEMORY[0x277D72D50], v21);
      v28 = sub_26B922FC8(v24);
      swift_setDeallocating();
      (*(v22 + 8))(v24 + v23, v21);
      swift_deallocClassInstance();
      LOBYTE(v21) = sub_26B91F56C(v20, v28);

      v29 = v21 ^ 1;
      return v29 & 1;
    }
  }

  sub_26B9AB974();
  v30 = sub_26B9ABAE4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v5, 1, v30) == 1)
  {
    sub_26B8EACD8(v5, &qword_280426218, &qword_26B9B0890);
    v29 = 1;
  }

  else
  {
    v32 = sub_26B9ABAD4();
    (*(v31 + 8))(v5, v30);
    v29 = (v32 == 2) | v32;
  }

  return v29 & 1;
}

void static ToolKitUtilities.addAutogeneratedAliasIfNeeded(result:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedStore];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 aliasForResult_];
    if (v3)
    {
      v4 = v3;

      v5 = v4;
    }

    else
    {
      [v6 addAutogeneratedAliasForResult_];
      v5 = v6;
    }
  }
}

uint64_t sub_26B91F3B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_26B9ACFB4();

    sub_26B9AC574();
    v16 = sub_26B9ACFF4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B91F56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_26B92349C(&qword_2804262F0, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
      v26 = sub_26B9AC454();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
        v31 = sub_26B9AC494();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_26B91F91C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
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

void *sub_26B91FA28(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v10 = *(sub_26B9ABE84() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9ABE84() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26B91FC00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B91FCCC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26B923750(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B91FCCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B91FDD8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26B9ACC54();
    a6 = v11;
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

void *sub_26B91FDD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B91FE24(a1, a2);
  sub_26B91FF54(&unk_287C5D800);
  return v3;
}

void *sub_26B91FE24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26B920040(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26B9ACC54();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26B9AC5B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B920040(v10, 0);
        result = sub_26B9ACBC4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B91FF54(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26B9200B4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B920040(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426370, &unk_26B9B0D50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B9200B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426370, &unk_26B9B0D50);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_26B9201A8(uint64_t a1, uint64_t a2)
{
  sub_26B9ACFB4();
  sub_26B9AC574();
  v4 = sub_26B9ACFF4();

  return sub_26B920220(a1, a2, v4);
}

unint64_t sub_26B920220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B9ACEB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26B9202D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_26B9ACD74();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_26B92065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26B9201A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26B920C58(MEMORY[0x277D72E48], &qword_280426338, &unk_26B9B3500);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_26B9ABFB4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_26B9207F0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_26B9ABFB4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_26B9207F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B9ACB24() + 1) & ~v5;
    while (1)
    {
      sub_26B9ACFB4();

      sub_26B9AC574();
      v9 = sub_26B9ACFF4();

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
      v15 = *(*(sub_26B9ABFB4() - 8) + 72);
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

uint64_t sub_26B9209DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_26B9201A8(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_26B920C58(a5, a6, a7);
      goto LABEL_7;
    }

    sub_26B9202D8(v21, a4 & 1, a5, a6, a7);
    v32 = sub_26B9201A8(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26B9ACF24();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_26B920BA4(v18, a2, a3, a1, v24, a5);
}

uint64_t sub_26B920BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void *sub_26B920C58(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_26B9ACD64();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_26B920EE0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26B9ACFB4();
  sub_26B9AC574();
  v8 = sub_26B9ACFF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26B921E30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26B921030(uint64_t result)
{
  v2 = 0;
  v21 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v21 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v20;
      sub_26B920EE0(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_26B9ACFB4();

    sub_26B9AC574();
    v14 = sub_26B9ACFF4();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_26B9ACEB4() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_26B92153C(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

void *sub_26B921218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B921258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B921238(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B921430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B921258(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426348, &qword_26B9B0D18);
  v10 = *(sub_26B9AC0E4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9AC0E4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B921430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
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

uint64_t sub_26B92153C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_26B9ACFB4();
  sub_26B9AC574();
  v6 = sub_26B9ACFF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26B9ACEB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B921678();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_26B921C6C(v8);
  *v2 = v16;
  return v12;
}

void *sub_26B921678()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  v2 = *v0;
  v3 = sub_26B9ACB84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B9217D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  result = sub_26B9ACB94();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26B9ACFB4();

      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26B921A0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
  result = sub_26B9ACB94();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26B921C6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_26B9AAAE4();
    v8 = sub_26B9ACB24();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26B9ACFB4();

        sub_26B9AC574();
        v10 = sub_26B9ACFF4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26B921E30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26B921A0C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26B921678();
      goto LABEL_16;
    }

    sub_26B9217D4(v8 + 1);
  }

  v10 = *v4;
  sub_26B9ACFB4();
  sub_26B9AC574();
  result = sub_26B9ACFF4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26B9ACEB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26B9ACF14();
  __break(1u);
  return result;
}

uint64_t sub_26B921FB0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26B9ABF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_26B922070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426368, &qword_26B9B0D48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426318, &qword_26B9B0CE0);
    v7 = sub_26B9ACD84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B9236E8(v9, v5, &qword_280426368, &qword_26B9B0D48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26B9201A8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26B9ABE84();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B92225C()
{
  result = qword_280426260;
  if (!qword_280426260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426260);
  }

  return result;
}

uint64_t sub_26B9222B0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AC114() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B90EADC(a1, a2, v2 + v7);
}

uint64_t sub_26B922394(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26B9223E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B92243C(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_26B9ABD04() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return sub_26B91D82C(a1, a2, v2 + v8, v2 + v11);
}

uint64_t sub_26B922594(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  v8 = *(v7 + *(v6 + 64));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26B8EB6C8;

  return sub_26B9153E4(a1, a2, v7, v8);
}

uint64_t sub_26B9226D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D686750](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26B920EE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26B92276C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B917498(a1, a2, v2 + v7);
}

uint64_t sub_26B922850(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B91B6A4(a1, a2, v2 + v7);
}

uint64_t objectdestroy_5Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26B9229C4()
{
  v0 = sub_26B9ABF04();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - v3;
  v5 = sub_26B9ABEB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  MEMORY[0x26D685FA0](v16);
  v19 = sub_26B9ABEA4();
  (*(v6 + 8))(v8, v5);
  sub_26B9184D4(v19, v18);

  sub_26B9236E8(v18, v15, &qword_2804262C8, &qword_26B9B3CE0);
  v20 = sub_26B9ABF24();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v15, 1, v20) == 1)
  {
    sub_26B8EACD8(v15, &qword_2804262C8, &qword_26B9B3CE0);
  }

  else
  {
    if ((*(v21 + 88))(v15, v20) == *MEMORY[0x277D72D50])
    {
      sub_26B8EACD8(v18, &qword_2804262C8, &qword_26B9B3CE0);
      (*(v21 + 96))(v15, v20);
      v23 = swift_projectBox();
      v25 = v35;
      v24 = v36;
      (*(v35 + 16))(v4, v23, v36);

      v26 = v34;
      (*(v25 + 32))(v34, v4, v24);
      v27 = (*(v25 + 88))(v26, v24);
      v28 = 1;
      if (v27 == *MEMORY[0x277D72CB0] || v27 == *MEMORY[0x277D72CA0] || v27 == *MEMORY[0x277D72CD0] || v27 == *MEMORY[0x277D72CE8] || v27 == *MEMORY[0x277D72CE0] || v27 == *MEMORY[0x277D72CB8] || v27 == *MEMORY[0x277D72C70] || v27 == *MEMORY[0x277D72CA8] || v27 == *MEMORY[0x277D72C88] || v27 == *MEMORY[0x277D72C58])
      {
        return v28 & 1;
      }

      (*(v25 + 8))(v26, v24);
LABEL_25:
      v28 = 0;
      return v28 & 1;
    }

    (*(v21 + 8))(v15, v20);
  }

  sub_26B9236E8(v18, v12, &qword_2804262C8, &qword_26B9B3CE0);
  if (v22(v12, 1, v20) == 1)
  {
    sub_26B8EACD8(v18, &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v12, &qword_2804262C8, &qword_26B9B3CE0);
    v28 = 0;
    return v28 & 1;
  }

  if ((*(v21 + 88))(v12, v20) != *MEMORY[0x277D72D28])
  {
    sub_26B8EACD8(v18, &qword_2804262C8, &qword_26B9B3CE0);
    (*(v21 + 8))(v12, v20);
    goto LABEL_25;
  }

  (*(v21 + 96))(v12, v20);
  v30 = *(*v12 + 32);
  v29 = *(*v12 + 40);

  if (v30 == 0xD000000000000027 && 0x800000026B9B7DB0 == v29)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_26B9ACEB4();
  }

  sub_26B8EACD8(v18, &qword_2804262C8, &qword_26B9B3CE0);
  return v28 & 1;
}

uint64_t sub_26B922FC8(uint64_t a1)
{
  v2 = sub_26B9ABF24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426300, &unk_26B9B3AA0);
    v9 = sub_26B9ACBA4();
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
      sub_26B92349C(&qword_2804262F0, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
      v16 = sub_26B9AC454();
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
          v23 = sub_26B9AC494();
          v24 = *v15;
          (*v15)(v6, v2);
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

unint64_t sub_26B9232EC()
{
  result = qword_2804262E0;
  if (!qword_2804262E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804262E0);
  }

  return result;
}

unint64_t sub_26B923344()
{
  result = qword_2804262E8;
  if (!qword_2804262E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804262E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B923400(uint64_t a1, int a2)
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

uint64_t sub_26B92344C(uint64_t result, int a2, int a3)
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

uint64_t sub_26B92349C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_16Tm()
{
  v1 = sub_26B9ABD04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_26B9ABEB4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_26B923680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B9236E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B923750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B9237C4()
{
  type metadata accessor for FeedbackActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28042ABC8 = v0;
  return result;
}

uint64_t sub_26B923800()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static FeedbackActor.shared.getter()
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t static FeedbackActor.shared.setter(uint64_t a1)
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042ABC8 = a1;
}

uint64_t (*static FeedbackActor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B9239B8@<X0>(void *a1@<X8>)
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_28042ABC8;
  return sub_26B9AAAE4();
}

uint64_t sub_26B923A38(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28042ABC0;
  sub_26B9AAAE4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042ABC8 = v1;
}

uint64_t FeedbackActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26B923B2C(uint64_t a1, uint64_t a2)
{
  result = qword_280426378;
  if (!qword_280426378)
  {
    type metadata accessor for FeedbackActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426378);
  }

  return result;
}

uint64_t sub_26B923BA4()
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t sub_26B923C1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FeedbackActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_26B923CBC()
{
  qword_28042ACF0 = &type metadata for BaseFeedbackHelper;
  unk_28042ACF8 = &off_287C5DC60;
  KeyPath = swift_getKeyPath();

  return Dependency.init(_:)(KeyPath, qword_28042ACD8);
}

uint64_t sub_26B923D14@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(qword_28042ACD8, a1);
}

uint64_t sub_26B923D94(uint64_t *a1)
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_28042ACD8, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B923E24(uint64_t a1))(uint64_t a1)
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B923EDC(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.feedbackHelper.setter(void *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.feedbackHelper.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return sub_26B924004;
}

void sub_26B924004(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_26B9AAAE4();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_26B9AAAE4();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BaseFeedbackHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BaseFeedbackHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t QueryHistoryEvent.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B92428C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    type metadata accessor for Debouncer();
    v2 = swift_allocObject();
    swift_weakInit();
    v1 = Debouncer.__allocating_init(delay:action:)(sub_26B925234, v2, 2.0);
    *(v0 + 64) = v1;
    sub_26B9AAAE4();
  }

  sub_26B9AAAE4();
  return v1;
}

uint64_t sub_26B924338()
{
  v0 = swift_allocObject();
  sub_26B924370();
  return v0;
}

uint64_t sub_26B924370()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_26B924438();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  v2 = [ObjCClassFromMetadata defaultCenter];
  sub_26B9AAAE4();
  v3 = sub_26B9AC4C4();
  [v2 addObserver:v0 selector:sel_resetHistory name:v3 object:0];

  return v0;
}

unint64_t sub_26B924438()
{
  result = qword_280426380;
  if (!qword_280426380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426380);
  }

  return result;
}

uint64_t BaseQueryHistoryManager.deinit()
{
  sub_26B924438();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  sub_26B8EACD8(v0 + 24, &qword_280426388, &qword_26B9B0EC0);

  return v0;
}

uint64_t BaseQueryHistoryManager.__deallocating_deinit()
{
  sub_26B924438();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  sub_26B8EACD8(v0 + 24, &qword_280426388, &qword_26B9B0EC0);

  return swift_deallocClassInstance();
}

uint64_t sub_26B92459C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_26B907F08(a1, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_26B8EACD8(&v18, &qword_280426388, &qword_26B9B0EC0);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    swift_beginAccess();
    sub_26B924860(&v24, v2 + 24);
    return swift_endAccess();
  }

  sub_26B8ECB70(&v18, &v24);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (!*(v4 + 16))
  {
    goto LABEL_7;
  }

  v5 = v2;
  sub_26B907F08(v4 + 32, &v21);
  v6 = *(&v22 + 1);
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(*(v7 + 8) + 16))(&v18, v6);
  v14 = v18;
  v8 = *(&v25 + 1);
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(*(v9 + 8) + 16))(v17, v8);
  v15 = v17[0];
  v16 = v17[1];
  LOBYTE(v8) = static QueryRepresentation.== infix(_:_:)(&v14, &v15);
  v10 = v16;

  v11 = *(&v14 + 1);

  if ((v8 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v2 = v5;
LABEL_7:
    if (v3)
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      swift_beginAccess();
      sub_26B924860(&v21, v2 + 24);
      swift_endAccess();
      sub_26B924A60(&v24);
    }

    else
    {
      sub_26B907F08(&v24, &v21);
      swift_beginAccess();
      sub_26B924860(&v21, v2 + 24);
      swift_endAccess();
      v13 = sub_26B92428C();
      (*(*v13 + 144))(v13);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_26B924860(&v18, v5 + 24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_26B924860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426388, &qword_26B9B0EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9248D0()
{
  swift_beginAccess();

  v1 = sub_26B924928(v0);

  return v1;
}

uint64_t sub_26B924928(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26B9250CC(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_26B907F08(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26B9250CC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_26B8ECB70(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26B924A60(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  sub_26B907F08(a1, v3);
  sub_26B92535C(0, 0, v3);
  return swift_endAccess();
}

uint64_t sub_26B924BB0()
{
  HistoryManager = type metadata accessor for BaseQueryHistoryManager();
  v1 = swift_allocObject();
  result = sub_26B924370();
  qword_28042AD30 = HistoryManager;
  unk_28042AD38 = &protocol witness table for BaseQueryHistoryManager;
  qword_28042AD18[0] = v1;
  return result;
}

uint64_t sub_26B924C00@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(qword_28042AD18, a1);
}

uint64_t sub_26B924C80(uint64_t *a1)
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_28042AD18, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B924D10(uint64_t a1))(uint64_t a1)
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B924DC8(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.queryHistory.setter(void *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.queryHistory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return sub_26B924EF0;
}

void sub_26B924EF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

unint64_t sub_26B924F9C()
{
  result = qword_2804263A0;
  if (!qword_2804263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804263A0);
  }

  return result;
}

void *sub_26B9250CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B9250EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B9250EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263A8, &qword_26B9B1018);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B925234()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_26B9252EC(v1 + 24, &v2);
    if (v3)
    {
      sub_26B8ECB70(&v2, v4);
      sub_26B924A60(v4);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {

      return sub_26B8EACD8(&v2, &qword_280426388, &qword_26B9B0EC0);
    }
  }

  return result;
}

uint64_t sub_26B9252EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426388, &qword_26B9B0EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B92535C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_26B92554C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_26B925430(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_26B925430(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_26B8EACD8(a4, &qword_2804263B0, &qword_26B9B1020);
  }

  result = sub_26B907F08(a4, v10);
  if (a3 == 1)
  {
    return sub_26B8EACD8(a4, &qword_2804263B0, &qword_26B9B1020);
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_26B92554C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263B8, &qword_26B9B1028);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}