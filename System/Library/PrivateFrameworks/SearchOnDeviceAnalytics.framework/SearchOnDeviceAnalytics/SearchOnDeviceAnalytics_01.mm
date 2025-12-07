uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_21AF9CF60(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t SODAHostTask.__allocating_init(taskId:taskName:hostParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SODAHostTask.init(taskId:taskName:hostParams:)(a1, a2, a3, a4, a5);
  return v10;
}

void *SODAHostTask.init(taskId:taskName:hostParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  *v7 = 0;
  v7[1] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_21AF9F5B4(a5, v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams, &qword_27CD42EC8, &qword_21B114830);
  v8 = type metadata accessor for BlocksControllerFactory();
  v9 = swift_allocObject();
  *(v9 + 16) = 64;
  v10 = (v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory);
  v10[3] = v8;
  v10[4] = &off_282C92948;
  *v10 = v9;
  v11 = v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter;
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = [objc_opt_self() defaultManager];
  sub_21AF9F660(a5, &qword_27CD42EC8, &qword_21B114830);
  *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager) = v12;
  return v5;
}

sqlite3_int64 static SODAHostTask.setSQLiteHeapSoftLimitInMb(_:)(sqlite3_int64 result)
{
  if ((result - 0x20000000000000) >> 54 == 1023)
  {
    if (((result << 10) - 0x20000000000000) >> 54 == 1023)
    {
      return sqlite3_soft_heap_limit64(result << 20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *SODAHostTask.getEnvironment()()
{
  v3 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  }

  else
  {
    v4 = sub_21AF9D2BC(*(v0 + 32), *(v0 + 40), v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams);
    if (v1)
    {
      return v2;
    }

    v2 = v4;
    *v3 = v4;
    v3[1] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

char *sub_21AF9D2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42EC8, &qword_21B114830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v29 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if (sub_21AF9EB10() == a1 && v17 == a2)
  {

    goto LABEL_10;
  }

  v19 = sub_21B112D04();

  if (v19)
  {
LABEL_10:
    sub_21AF9F5B4(v32, v10, &qword_27CD42EC8, &qword_21B114830);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v23 = v29;
      (*(v29 + 32))(v16, v10, v11);
      v24 = (*(v23 + 16))(v14, v16, v11);
      (*(*v3 + 136))(v24);
      v25 = v30;
      sub_21B111E24();
      type metadata accessor for AdHocRecipeEnvironment(0);
      swift_allocObject();
      v10 = sub_21B0DAB08(v14, v25);
      (*(v23 + 8))(v16, v11);
      return v10;
    }

    sub_21AF9F660(v10, &qword_27CD42EC8, &qword_21B114830);
    v10 = 0x800000021B130B90;
    sub_21AF9F6BC();
    swift_allocError();
    *v22 = 0xD000000000000024;
    *(v22 + 8) = 0x800000021B130B90;
    *(v22 + 16) = 1;
LABEL_14:
    swift_willThrow();
    return v10;
  }

  if (__swift_getEnumTagSinglePayload(v32, 1, v11) != 1)
  {
    v10 = 0x800000021B130B60;
    sub_21AF9F6BC();
    swift_allocError();
    *v26 = 0xD000000000000022;
    *(v26 + 8) = 0x800000021B130B60;
    *(v26 + 16) = 2;
    goto LABEL_14;
  }

  v20 = v31;
  v21 = (*(*v3 + 216))(a1, a2);
  if (!v20)
  {
    return v21;
  }

  return v10;
}

uint64_t sub_21AF9D6A8(uint64_t a1, uint64_t a2)
{
  v38 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v33[0] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v33[4] = a1;
  v33[5] = a2;
  OUTLINED_FUNCTION_3_4();
  v34 = (*(v12 + 136))();
  v35 = v13;

  MEMORY[0x21CEE9770](46, 0xE100000000000000);

  v33[2] = v34;
  v33[3] = v35;
  sub_21AF9F500();
  sub_21B1126C4();

  MEMORY[0x21CEE9720](v34, v35, v36, v37);

  v14 = OUTLINED_FUNCTION_8_2();
  v15(v14);
  v16 = OUTLINED_FUNCTION_8_2();
  v18 = v17(v16);
  v19 = v33[1];
  v20 = (*(*v2 + 208))(a1, a2);
  if (v19)
  {
    (*(v6 + 8))(v11, v38);
  }

  else
  {
    v21 = v33[0];
    if (v20)
    {
      v22 = OUTLINED_FUNCTION_6_1();
      v23(v22);
      v24 = OUTLINED_FUNCTION_8_2();
      v18 = v25(v24);
      (*(v6 + 8))(v11, v38);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_6_1();
      v28 = v27;
      v29(v26);
      type metadata accessor for SODAUserHostEnvironment(0);
      swift_allocObject();
      v30 = OUTLINED_FUNCTION_8_2();
      v18 = SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(v30, v31, v21, v18);
      (*(v6 + 8))(v11, v28);
    }
  }

  return v18;
}

char *sub_21AF9D9DC()
{
  result = SODAHostTask.getEnvironment()();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

char *sub_21AF9DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  result = SODAHostTask.getEnvironment()();
  if (!v4)
  {
    v11 = result;
    v12 = v10;
    v21[6] = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory), *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory + 24));
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    v20 = (*(*v3 + 200))(v14);

    v15 = sub_21AF9F618(&qword_27CD42F48, type metadata accessor for SODAHostTask, &unk_21B114858);
    v16 = type metadata accessor for BlockFactory();
    v19 = a3;
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = v15;
    v17[4] = a1;
    v17[5] = a2;
    v21[3] = v16;
    v21[4] = sub_21AF9F618(&qword_27CD42F50, type metadata accessor for BlockFactory, &unk_21B113B9C);
    v21[0] = v17;
    v18 = *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);

    sub_21AF92188(a1, a2);
    sub_21AFA4C08(v11, v12, v20, v21, v18, v19);
    swift_unknownObjectRelease();

    return sub_21AF9F660(v21, &qword_27CD42F58, &qword_21B114B50);
  }

  return result;
}

void sub_21AF9DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v7 = sub_21B1112C4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[7] = SODAHostTask.getEnvironment()();
  if (v4)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
    }

    v19 = sub_21B1122D4();
    __swift_project_value_buffer(v19, qword_2811FAB28);

    v20 = sub_21B1122B4();
    v21 = sub_21B112714();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v72 = v23;
      *v22 = 136315138;
      v24 = sub_21AFCEC24(0xD000000000000010, 0x800000021B130B40, &v72);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_21AF80000, v20, v21, "SODA: Recipe %s execution was terminated due to initialization failure.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
    }

    swift_willThrow();
  }

  else
  {
    v25 = v18;
    v57 = a1;
    v58 = a2;
    v59 = v3;
    v60 = v12;
    v26 = v65;
    v61 = v9;
    v62 = v7;
    v56 = v17;
    v55 = v14;
    ObjectType = swift_getObjectType();
    v28 = *(v25 + 8);
    swift_unknownObjectRetain();
    v63 = v28(ObjectType, v25);
    v30 = v29;
    v31 = (*(v25 + 40))(ObjectType, v25);
    swift_unknownObjectRelease();
    if (v31)
    {
      v54 = ObjectType;
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
      }

      v32 = sub_21B1122D4();
      __swift_project_value_buffer(v32, qword_2811FAB28);

      v33 = sub_21B1122B4();
      v34 = sub_21B1126E4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v72 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_21AFCEC24(v63, v30, &v72);
        _os_log_impl(&dword_21AF80000, v33, v34, "Executing recipe: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
      }

      v37 = v62;
      v38 = v61;
      v39 = v26;
      sub_21AF9DA4C(v57, v58, &v72);
      v40 = v60;

      sub_21AF81D68(&v72, v74);
      sub_21AF9F554(v74, &v72);
      __swift_project_boxed_opaque_existential_0(&v72, v73);
      v49 = v56;
      (*(v25 + 16))(v54, v25);
      sub_21AF9F5B4(v39, &v69, &qword_27CD42ED0, &qword_21B114838);
      if (v70)
      {
        sub_21AF81D68(&v69, v71);
        v50 = v55;
      }

      else
      {
        (*(v25 + 24))(v54, v25);
        sub_21B1112B4();
        (*(v38 + 8))(v40, v37);
        v51 = v67;
        v52 = v68;
        __swift_project_boxed_opaque_existential_0(v66, v67);
        v71[3] = v51;
        v71[4] = *(v52 + 8);
        __swift_allocate_boxed_opaque_existential_1(v71);
        OUTLINED_FUNCTION_7_2();
        (*(v53 + 16))();
        __swift_destroy_boxed_opaque_existential_0(v66);
        v50 = v55;
        if (v70)
        {
          sub_21AF9F660(&v69, &qword_27CD42ED0, &qword_21B114838);
        }
      }

      sub_21B111234();
      (*(v50 + 8))(v49, v64);
      __swift_destroy_boxed_opaque_existential_0(v74);
      __swift_destroy_boxed_opaque_existential_0(v71);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v72);
    }

    else
    {
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
      }

      v41 = sub_21B1122D4();
      __swift_project_value_buffer(v41, qword_2811FAB28);

      v42 = sub_21B1122B4();
      v43 = sub_21B1126E4();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v63;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v72 = v47;
        *v46 = 136315138;
        v48 = sub_21AFCEC24(v45, v30, &v72);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_21AF80000, v42, v43, "SODA: Recipe %s not executed due to unmet scheduling conditions. Exiting.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SODAHostTask.perform()()
{
  OUTLINED_FUNCTION_5_2();
  sub_21AF9DC40(0, 0, v0);
  sub_21AF9F660(&v1, &qword_27CD42ED0, &qword_21B114838);
}

uint64_t SODAHostTask.conclude(with:)()
{
  OUTLINED_FUNCTION_5_2();
  sub_21AF9DC40(v0, v1, v2);
  return sub_21AF9F660(&v4, &qword_27CD42ED0, &qword_21B114838);
}

uint64_t sub_21AF9E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  result = sub_21AF9CF60(a1, a2);
  switch(result)
  {
    case 1:
      sub_21AF9F554(a3, &v14);
      result = sub_21AFC4100(&v14);
      if (!v4)
      {
        v11 = result;
        v12 = v10;
        *(a4 + 24) = &type metadata for UploadBlock.Config;
        result = sub_21AF9ED50();
        *(a4 + 32) = result;
        *a4 = v11 & 1;
        *(a4 + 8) = v12;
      }

      break;
    case 3:
      sub_21B112904();

      MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B130A80);
      sub_21AF9ECFC();
      swift_allocError();
      *v13 = a1;
      v13[1] = a2;
      result = swift_willThrow();
      break;
    default:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      break;
  }

  return result;
}

uint64_t sub_21AF9E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  switch(sub_21AF9CF60(a1, a2))
  {
    case 1u:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v26 = result;
        v27 = v25;
        sub_21B111484();
        sub_21AF9F5B4(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter, v29, &qword_27CD42EF0, qword_21B114840);
        v28 = type metadata accessor for UploadBlock();
        swift_allocObject();
        v15 = sub_21AFC4948(v26, v27, &v30, v29);
        a3[3] = v28;
        v16 = &unk_27CD42EF8;
        v17 = type metadata accessor for UploadBlock;
        v18 = &unk_21B116DC8;
        goto LABEL_9;
      }

      break;
    case 2u:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v20 = result;
        v21 = v19;
        v22 = *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);
        sub_21B111484();
        v23 = type metadata accessor for DataWarehouseBlock();
        swift_allocObject();
        v15 = sub_21B0B6CC4(v20, v21, v22, &v30);
        a3[3] = v23;
        v16 = &unk_27CD42EE8;
        v17 = type metadata accessor for DataWarehouseBlock;
        v18 = &unk_21B128A34;
        goto LABEL_9;
      }

      break;
    case 3u:
      sub_21B112904();

      MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B130A80);
      sub_21AF9ECFC();
      swift_allocError();
      *v24 = a1;
      v24[1] = a2;
      result = swift_willThrow();
      break;
    default:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v10 = result;
        v11 = v9;
        v12 = *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);
        v13 = sub_21B111304();
        v14 = type metadata accessor for ConstantsBlock(0);
        swift_allocObject();
        v15 = sub_21B0C0318(v10, v11, v12, v13);
        a3[3] = v14;
        v16 = &unk_27CD42F00;
        v17 = type metadata accessor for ConstantsBlock;
        v18 = &unk_21B129808;
LABEL_9:
        result = sub_21AF9F618(v16, v17, v18);
        a3[4] = result;
        *a3 = v15;
      }

      break;
  }

  return result;
}

uint64_t SODAHostTask.deinit()
{

  sub_21AF9F660(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams, &qword_27CD42EC8, &qword_21B114830);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory));
  sub_21AF9F660(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter, &qword_27CD42EF0, qword_21B114840);
  return v0;
}

uint64_t SODAHostTask.__deallocating_deinit()
{
  SODAHostTask.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF9EB10()
{
  v2 = (*(*v0 + 136))();

  MEMORY[0x21CEE9770](46, 0xE100000000000000);

  MEMORY[0x21CEE9770](1802723700, 0xE400000000000000);

  return v2;
}

uint64_t sub_21AF9EBB0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  result = sub_21B1128D4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    sub_21B112EC4();
    MEMORY[0x21CEEA150](v7);
    result = sub_21B112F14();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_21AF9ECFC()
{
  result = qword_27CD42ED8;
  if (!qword_27CD42ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42ED8);
  }

  return result;
}

unint64_t sub_21AF9ED50()
{
  result = qword_27CD42EE0;
  if (!qword_27CD42EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42EE0);
  }

  return result;
}

uint64_t sub_21AF9EDA4(uint64_t a1)
{
  result = sub_21AF9F618(&qword_27CD42F08, type metadata accessor for SODAHostTask, &protocol conformance descriptor for SODAHostTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SODAHostTask(uint64_t a1)
{
  result = qword_2811FA9A8;
  if (!qword_2811FA9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF9EE98(uint64_t a1)
{
  sub_21AF9F0EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21AF9F0EC(uint64_t a1)
{
  if (!qword_27CD42F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD42F20, &qword_21B114920);
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD42F18);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AF9F15C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_21AF9F19C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21AF9F1E8(uint64_t a1)
{
  v2 = sub_21B111064();
  OUTLINED_FUNCTION_1();
  v36 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v31 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F28, &unk_21B1149E0);
  result = sub_21B1128D4();
  v10 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v39 = result + 56;
  v12 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v12 + 32) & ~v12);
  v38 = v36 + 16;
  v13 = (v36 + 8);
  v32 = (v36 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v36 + 72);
    v37 = v11 + 1;
    v15 = *(v36 + 16);
    v15(v40, v34 + v14 * v11, v2);
    OUTLINED_FUNCTION_2_4();
    sub_21AF9F618(&qword_27CD42F30, v16, MEMORY[0x277CC99D8]);
    v17 = sub_21B112364();
    v18 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v39 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v7, *(v10 + 48) + v19 * v14, v2);
      OUTLINED_FUNCTION_2_4();
      sub_21AF9F618(&qword_27CD42F38, v24, MEMORY[0x277CC99E0]);
      v25 = sub_21B1123C4();
      v26 = *v13;
      (*v13)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v27 = v40;
    *(v39 + 8 * v20) = v22 | v21;
    result = (*v32)(*(v10 + 48) + v19 * v14, v27, v2);
    v28 = *(v10 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v30;
LABEL_12:
    v11 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_21AF9F500()
{
  result = qword_27CD42F40;
  if (!qword_27CD42F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42F40);
  }

  return result;
}

uint64_t sub_21AF9F554(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_2();
  (*v3)(a2);
  return a2;
}

uint64_t sub_21AF9F5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21AF9F618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AF9F660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21AF9F6BC()
{
  result = qword_27CD42F68;
  if (!qword_27CD42F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42F68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x21CEEA9A0);
}

uint64_t sub_21AF9F7AC(uint64_t a1, uint64_t *a2)
{
  v51 = a1;
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v52 = v6 - v5;
  v7 = OUTLINED_FUNCTION_33_0();
  v50 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  v13 = OUTLINED_FUNCTION_25(v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v26 = (v25 - v24);
  v54 = v2;
  if (*(*v2 + 16))
  {
    v27 = a2;
    sub_21B0B5BC0(a2);
    if (v28)
    {
      OUTLINED_FUNCTION_1_3();
      sub_21AFA4124(v29, v21);
      v30 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = a2;
  }

  v30 = 1;
LABEL_6:
  v31 = v52;
  v32 = v50;
  __swift_storeEnumTagSinglePayload(v21, v30, 1, v22);
  sub_21AFA41DC(v21, v19, &qword_27CD42FB0, &qword_21B114A20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v22) == 1)
  {
    *v26 = MEMORY[0x277D84F90];
    sub_21B111EB4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
    sub_21AF99BE0(v19, &qword_27CD42FB0, &qword_21B114A20);
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_21AFA4180(v19, v26);
  }

  OUTLINED_FUNCTION_0_5();
  sub_21AFA4124(v27, v11);
  v36 = *(v22 + 24);
  sub_21AF99BE0(v26 + v36, &qword_27CD42FB8, &qword_21B114A28);
  sub_21AFA4180(v11, v26 + v36);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v32);
  sub_21AFA4124(v51, v31);
  v40 = *v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D4CC8();
    v40 = v47;
  }

  v41 = *(v40 + 16);
  if (v41 >= *(v40 + 24) >> 1)
  {
    sub_21B0D4CC8();
    v40 = v48;
  }

  *(v40 + 16) = v41 + 1;
  sub_21AFA4180(v31, v40 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41);
  *v26 = v40;
  OUTLINED_FUNCTION_0_5();
  sub_21AFA4124(v27, v11);
  OUTLINED_FUNCTION_1_3();
  sub_21AFA4124(v26, v16);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v22);
  sub_21B0D09A8(v16, v11);
  OUTLINED_FUNCTION_28_0();
  return sub_21AFA4074(v26, v45);
}

uint64_t sub_21AF9FBE0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  sub_21B111EB4();
  v7 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  if (qword_27CD424D8 != -1)
  {
    OUTLINED_FUNCTION_23_0();
    swift_once();
  }

  *(a3 + v7) = qword_27CD43168;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21AFB1408(v10);
    OUTLINED_FUNCTION_46(v11);
  }

  OUTLINED_FUNCTION_20_0();
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = 1;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a3 + v7);
  if ((v12 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_16_1();
    v15 = sub_21AFB1408(v14);
    OUTLINED_FUNCTION_46(v15);
  }

  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a3 + v7);
  if ((v16 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_16_1();
    v19 = sub_21AFB1408(v18);
    v16 = OUTLINED_FUNCTION_46(v19);
  }

  *(v17 + 41) = 0;
  v20 = a2(v16);
  if (v3)
  {
    return sub_21AFA4074(a3, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
  }

  v22 = v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a3 + v7);
  if ((v23 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v25 = OUTLINED_FUNCTION_16_1();
    v26 = sub_21AFB1408(v25);
    OUTLINED_FUNCTION_46(v26);
  }

  OUTLINED_FUNCTION_20_0();
  result = swift_beginAccess();
  *(v24 + 128) = v22;
  return result;
}

uint64_t *sub_21AF9FD9C(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v4 = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v4);
  v190 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24();
  v188 = v9;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F78, &qword_21B114A00);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v193 = (v182 - v11);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F80, &qword_21B114A08);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v197 = (v182 - v13);
  v14 = OUTLINED_FUNCTION_33_0();
  v201 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v14);
  OUTLINED_FUNCTION_1();
  v182[3] = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v200 = v18 - v17;
  v19 = OUTLINED_FUNCTION_33_0();
  v182[2] = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v19);
  OUTLINED_FUNCTION_1();
  v194 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24();
  v208 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F88, &qword_21B116AE0);
  v26 = OUTLINED_FUNCTION_25(v25);
  MEMORY[0x28223BE20](v26);
  v28 = v182 - v27;
  v209 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24();
  v210 = v31;
  OUTLINED_FUNCTION_33_0();
  v32 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24();
  v207 = v39;
  v220 = MEMORY[0x277D84F98];
  v196 = sub_21AFA0DDC();
  v40 = sub_21B1114B4();
  v43 = *(v40 + 16);
  v44 = v43 - v41;
  v186 = v3;
  v185 = v2;
  if (v43 == v41)
  {
LABEL_30:

    v105 = v196;
    v106 = v196 + 8;
    OUTLINED_FUNCTION_29_0();
    v109 = v108 & v107;
    v111 = (v110 + 63) >> 6;

    v112 = 0;
    v113 = &qword_21B114A08;
    v114 = v194;
    if (!v109)
    {
      goto LABEL_32;
    }

    do
    {
      v115 = v112;
LABEL_36:
      v116 = __clz(__rbit64(v109));
      v109 &= v109 - 1;
      v117 = v116 | (v115 << 6);
      OUTLINED_FUNCTION_0_5();
      v118 = v197;
      sub_21AFA4124(v119, v197);
      v120 = *(v105[7] + 8 * v117);
      *(v118 + *(v198 + 48)) = v120;

      sub_21AFA28B4(v118, v120);
      sub_21AF99BE0(v118, &qword_27CD42F80, &qword_21B114A08);
    }

    while (v109);
    while (1)
    {
LABEL_32:
      v115 = (v112 + 1);
      if (__OFADD__(v112, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v115 >= v111)
      {
        break;
      }

      v109 = v106[v115];
      v112 = (v112 + 1);
      if (v109)
      {
        v112 = v115;
        goto LABEL_36;
      }
    }

    v121 = v186;
    v122 = sub_21AFA2C40();
    v123 = v121;
    if (v121)
    {

      return v113;
    }

    v213 = 0;
    v124 = v122 + 64;
    OUTLINED_FUNCTION_29_0();
    v127 = v126 & v125;
    v129 = (v128 + 63) >> 6;

    OUTLINED_FUNCTION_49();
    v215 = v129;
    v196 = v105;
    v216 = v130;
    if (!v127)
    {
      goto LABEL_41;
    }

    do
    {
LABEL_45:
      v217 = *(v114 + 72);
      OUTLINED_FUNCTION_0_5();
      sub_21AFA4124(v132, v112);
      v133 = *(v190 + 72);
      v134 = *(v189 + 48);
      OUTLINED_FUNCTION_1_3();
      sub_21AFA4124(v135, v112 + v134);
      v136 = v220;
      if (*(v220 + 16) && (sub_21B0B5BC0(v112), (v137 & 1) != 0))
      {
        v214 = v133;
        OUTLINED_FUNCTION_1_3();
        v138 = v183;
        sub_21AFA4124(v139, v183);
        OUTLINED_FUNCTION_7_3();
        v140 = v138;
        v141 = v188;
        sub_21AFA4180(v140, v188);
        v142 = *(v112 + v134);
        v143 = *(v142 + 16);
        v144 = *v141;
        v145 = *(v144 + 16);
        v146 = v145 + v143;
        if (__OFADD__(v145, v143))
        {
          goto LABEL_88;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v146 > *(v144 + 24) >> 1)
        {
          sub_21B0D4CC8();
          v144 = v147;
        }

        OUTLINED_FUNCTION_49();
        if (*(v142 + 16))
        {
          if ((*(v144 + 24) >> 1) - *(v144 + 16) < v143)
          {
            goto LABEL_91;
          }

          swift_arrayInitWithCopy();

          if (v143)
          {
            v148 = *(v144 + 16);
            v149 = __OFADD__(v148, v143);
            v150 = v148 + v143;
            if (v149)
            {
              goto LABEL_93;
            }

            *(v144 + 16) = v150;
          }
        }

        else
        {

          if (v143)
          {
            goto LABEL_89;
          }
        }

        v164 = v188;
        *v188 = v144;
        OUTLINED_FUNCTION_0_5();
        v165 = v146;
        v112 = v187;
        sub_21AFA4124(v165, v187);
        OUTLINED_FUNCTION_1_3();
        sub_21AFA4124(v164, v184);
        v166 = v220;
        swift_isUniquelyReferenced_nonNull_native();
        v218 = v166;
        sub_21B0B5BC0(v112);
        OUTLINED_FUNCTION_47();
        if (v149)
        {
          goto LABEL_90;
        }

        v114 = v167;
        v169 = v168;
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
        if (OUTLINED_FUNCTION_50(v170))
        {
          v171 = sub_21B0B5BC0(v187);
          v112 = v193;
          if ((v169 & 1) != (v172 & 1))
          {
            goto LABEL_94;
          }

          v114 = v171;
        }

        else
        {
          OUTLINED_FUNCTION_49();
        }

        v173 = v218;
        if (v169)
        {
          sub_21AFA4010(v184, v218[7] + v114 * v214);
        }

        else
        {
          v218[(v114 >> 6) + 8] |= 1 << v114;
          OUTLINED_FUNCTION_0_5();
          sub_21AFA4124(v187, v174);
          OUTLINED_FUNCTION_7_3();
          sub_21AFA4180(v184, v175);
          v176 = *(v173 + 16);
          v149 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v149)
          {
            goto LABEL_92;
          }

          *(v173 + 16) = v177;
        }

        OUTLINED_FUNCTION_43();
        v220 = v173;
        OUTLINED_FUNCTION_2_5();
        sub_21AFA4074(v187, v178);
        OUTLINED_FUNCTION_28_0();
        sub_21AFA4074(v188, v179);
      }

      else
      {
        OUTLINED_FUNCTION_0_5();
        v151 = v195;
        sub_21AFA4124(v112, v195);
        OUTLINED_FUNCTION_1_3();
        sub_21AFA4124(v112 + v134, v192);
        swift_isUniquelyReferenced_nonNull_native();
        v218 = v136;
        sub_21B0B5BC0(v151);
        OUTLINED_FUNCTION_47();
        if (v149)
        {
          goto LABEL_83;
        }

        v114 = v152;
        v154 = v153;
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
        if (OUTLINED_FUNCTION_50(v155))
        {
          v156 = sub_21B0B5BC0(v195);
          v112 = v193;
          if ((v154 & 1) != (v157 & 1))
          {
            goto LABEL_94;
          }

          v114 = v156;
        }

        else
        {
          OUTLINED_FUNCTION_49();
        }

        v158 = v218;
        if (v154)
        {
          sub_21AFA4010(v192, v218[7] + v114 * v133);
        }

        else
        {
          v218[(v114 >> 6) + 8] |= 1 << v114;
          OUTLINED_FUNCTION_0_5();
          sub_21AFA4124(v195, v159);
          OUTLINED_FUNCTION_7_3();
          sub_21AFA4180(v192, v160);
          v161 = *(v158 + 16);
          v149 = __OFADD__(v161, 1);
          v162 = v161 + 1;
          if (v149)
          {
            goto LABEL_84;
          }

          *(v158 + 16) = v162;
        }

        v220 = v158;
        OUTLINED_FUNCTION_2_5();
        sub_21AFA4074(v195, v163);
        OUTLINED_FUNCTION_43();
      }

      v127 &= v127 - 1;
      sub_21AF99BE0(v112, &qword_27CD42F78, &qword_21B114A00);
      v129 = v215;
    }

    while (v127);
LABEL_41:
    while (1)
    {
      v131 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v131 >= v129)
      {

        v113 = sub_21B0D0B24(v180);

        return v113;
      }

      v127 = *(v124 + 8 * v131);
      ++v123;
      if (v127)
      {
        v123 = v131;
        goto LABEL_45;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v43 <= v41)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    if (!v43)
    {
      goto LABEL_87;
    }

    v202 = v38;
    v47 = *(v34 + 16);
    v46 = v34 + 16;
    v45 = v47;
    v48 = (*(v46 + 64) + 32) & ~*(v46 + 64);
    v212 = v46 - 8;
    v213 = v46;
    v211 = *(v46 + 56);
    v182[1] = v40;
    v49 = v40 + v48 + v41 * v211;
    *&v42 = 136315138;
    v191 = v42;
    v204 = v47;
    v205 = v32;
    v50 = v207;
    v51 = v44;
    v203 = v28;
    do
    {
      v217 = v49;
      v45(v50, v49, v32);
      v52 = sub_21B111264();
      v54 = v53;
      v214 = v52;
      sub_21AFB4EF8(v52, v53, &v218);
      v55 = v218;
      v56 = v219;
      if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
      {
        v215 = v54;
        v216 = v51;
        v57 = v202;
        v45(v202, v50, v32);
        v58 = v206;

        v59 = v203;
        sub_21AFA1360(v57, v58, v203);
        if (__swift_getEnumTagSinglePayload(v59, 1, v209) == 1)
        {
          sub_21AF99BE0(v59, &qword_27CD42F88, &qword_21B116AE0);
          v60 = v217;
          if (qword_27CD424A0 != -1)
          {
            OUTLINED_FUNCTION_24_0();
            swift_once();
          }

          v61 = sub_21B1122D4();
          __swift_project_value_buffer(v61, qword_27CD6E718);
          v62 = v215;

          v63 = sub_21B1122B4();
          v64 = sub_21B112704();

          v65 = os_log_type_enabled(v63, v64);
          v50 = v207;
          if (v65)
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v218 = v67;
            *v66 = v191;
            v68 = sub_21AFCEC24(v214, v62, &v218);

            *(v66 + 4) = v68;
            _os_log_impl(&dword_21AF80000, v63, v64, "Unable to serialize dataitem %s to protobuf.", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v67);
            OUTLINED_FUNCTION_44();
            MEMORY[0x21CEEA9A0]();
            OUTLINED_FUNCTION_44();
            MEMORY[0x21CEEA9A0]();
          }

          else
          {
          }

          v87 = OUTLINED_FUNCTION_36();
          v32 = v205;
          v88(v87, v205);
        }

        else
        {

          OUTLINED_FUNCTION_3_5();
          sub_21AFA4180(v59, v210);
          v45(v57, v50, v32);

          sub_21AFA65F0(v57, v58, v208);
          v218 = v55;
          v219 = v56;
          if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter() == 1)
          {
            v71 = *(v209 + 20);
            v72 = *(v210 + v71);
            v50 = v207;
            v60 = v217;
            if (*(v72 + 40) <= -3 && (*(v72 + 32) & 1) != 0)
            {
              if ((v73 = *(v72 + 41), v73 > -3) && v73 < 0 || (v73 & 1) == 0)
              {
                v74 = sub_21B0DF248(v208, v196);
                if (v74)
                {
                  v75 = v74;
                  v76 = v210;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v78 = v76;
                  v79 = *(v76 + v71);
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v80 = v78;
                    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
                    OUTLINED_FUNCTION_18_0();
                    swift_allocObject();
                    v81 = OUTLINED_FUNCTION_16_1();
                    v79 = sub_21AFB1408(v81);
                    *(v80 + v71) = v79;
                  }

                  OUTLINED_FUNCTION_20_0();
                  swift_beginAccess();
                  *(v79 + 120) = v75;

                  v82 = v196;
                  sub_21B0B5BC0(v208);
                  if (v83)
                  {
                    swift_isUniquelyReferenced_nonNull_native();
                    v218 = v82;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F98, &qword_21B114A10);
                    sub_21B112994();
                    v84 = v218;
                    OUTLINED_FUNCTION_2_5();
                    sub_21AFA4074(v85, v86);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FA0, &qword_21B114A18);
                    sub_21AFA40CC();
                    v196 = v84;
                    sub_21B1129B4();
                  }
                }
              }
            }
          }

          else
          {
            v50 = v207;
            v60 = v217;
          }

          v89 = v210;
          v90 = v199;
          sub_21AFA4124(v210, v199);
          v91 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
          v92 = v200;
          OUTLINED_FUNCTION_34_0();
          __swift_storeEnumTagSinglePayload(v93, v94, v95, v91);
          sub_21B111EB4();
          sub_21AF99BE0(v92, &qword_27CD42F90, &unk_21B115FC0);
          OUTLINED_FUNCTION_3_5();
          sub_21AFA4180(v90, v92);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_31_0();
          __swift_storeEnumTagSinglePayload(v96, v97, v98, v91);
          v99 = v208;
          sub_21AF9F7AC(v92, v208);
          OUTLINED_FUNCTION_2_5();
          sub_21AFA4074(v99, v100);
          v101 = OUTLINED_FUNCTION_36();
          v32 = v205;
          v102(v101, v205);
          OUTLINED_FUNCTION_12_1();
          sub_21AFA4074(v92, v103);
          OUTLINED_FUNCTION_25_0();
          sub_21AFA4074(v89, v104);
        }

        v51 = v216;
        v45 = v204;
      }

      else
      {
        v69 = OUTLINED_FUNCTION_36();
        v70(v69, v32);

        v60 = v217;
      }

      v49 = v60 + v211;
      --v51;
    }

    while (v51);
    goto LABEL_30;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_21B112E54();
  __break(1u);
  return result;
}

void *sub_21AFA0DDC()
{
  v0 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v51 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v48 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v50 = &v43 - v3;
  v4 = sub_21B1112A4();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B111514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B111534();
  v12 = sub_21B1114C4();
  (*(v9 + 8))(v11, v8);
  v13 = 0;
  v55 = MEMORY[0x277D84F98];
  v14 = *(v12 + 16);
  v15 = (v5 + 8);
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_26;
    }

    (*(v5 + 16))(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
    sub_21AFA3168(&v55, v7);
    ++v13;
    (*v15)(v7, v4);
  }

  v16 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC8, &qword_21B114A38);
  v17 = sub_21B1129F4();
  v4 = v17;
  v18 = 0;
  v19 = *(v16 + 64);
  v44 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v49 = v17 + 64;
  v15 = v48;
  v46 = v17;
  v47 = v16;
  v45 = v23;
  if (!v22)
  {
LABEL_9:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        return v4;
      }

      v26 = *(v44 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v52 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v22));
    v52 = (v22 - 1) & v22;
LABEL_14:
    v27 = v24 | (v18 << 6);
    v28 = *(v16 + 48);
    v29 = v50;
    v53 = *(v51 + 72) * v27;
    sub_21AFA4124(v28 + v53, v50);
    v30 = *(v16 + 56);
    v54 = v27;
    v31 = *(v30 + 8 * v27);
    sub_21AFA4180(v29, v15);
    v55 = v31;
    swift_bridgeObjectRetain_n();
    sub_21AFA3694(&v55);
    v32 = v55;
    v33 = *(v55 + 16);
    if (v33)
    {
      v55 = MEMORY[0x277D84F90];
      sub_21AFCC55C(0, v33, 0);
      v34 = v55;
      v35 = *(v55 + 16);
      v36 = 40;
      do
      {
        v37 = *(v32 + v36);
        v55 = v34;
        v38 = *(v34 + 24);
        if (v35 >= v38 >> 1)
        {
          sub_21AFCC55C((v38 > 1), v35 + 1, 1);
          v34 = v55;
        }

        *(v34 + 16) = v35 + 1;
        *(v34 + 4 * v35 + 32) = v37;
        v36 += 16;
        ++v35;
        --v33;
      }

      while (v33);

      v16 = v47;
      v15 = v48;
      v23 = v45;
      v4 = v46;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v7 = v54;
    *(v49 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    sub_21AFA4180(v15, v4[6] + v53);
    *(v4[7] + 8 * v7) = v34;
    v39 = v4[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      break;
    }

    v4[2] = v41;
    v22 = v52;
    if (!v52)
    {
      goto LABEL_9;
    }
  }

LABEL_27:
  __break(1u);

  (*v15)(v7, v4);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21AFA1360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v242 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v236 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v245 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24();
  v234 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v243 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24();
  v240 = v13;
  v14 = OUTLINED_FUNCTION_33_0();
  v15 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  sub_21B111EB4();
  v20 = *(v15 + 20);
  if (qword_27CD424D8 != -1)
  {
    goto LABEL_224;
  }

  while (1)
  {
    *(v20 + v19) = qword_27CD43168;

    v21 = sub_21B111264();
    v23 = v22;
    sub_21AFB4EF8(v21, v22, &v247);
    v24 = v247;
    v25 = v248;
    v232 = v19;
    if (!Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
    {
      break;
    }

    v231 = v20;
    v227 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
      OUTLINED_FUNCTION_18_0();
      swift_allocObject();
      v26 = OUTLINED_FUNCTION_19_0();
      *(v20 + v19) = sub_21AFB1408(v26);
    }

    OUTLINED_FUNCTION_20_0();
    v28 = v27;
    swift_beginAccess();
    *(v28 + 16) = v24;
    v233 = v28;
    *(v28 + 24) = v25;
    v228 = a1;
    v19 = a1;
    v15 = 0;
    v235 = sub_21B111294();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_32_0();
    v239 = v29;
    OUTLINED_FUNCTION_32_0();
    v230 = v30;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v225 = v31;
    v226 = v32;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v223 = v33;
    v224 = v34;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v221 = v35;
    v222 = v36;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v219 = v37;
    v220 = v38;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v217 = v42;
    v218 = v43;
    v20 = &qword_21B114240;
    a1 = v242;
    v44 = v243;
    v237 = v39;
    v238 = v40;
    while (v41)
    {
      v45 = v15;
LABEL_12:
      v244 = (v41 - 1) & v41;
      v46 = __clz(__rbit64(v41)) | (v45 << 6);
      v47 = (*(v235 + 48) + 16 * v46);
      v48 = *v47;
      v19 = v47[1];
      (*(v236 + 16))(v234, *(v235 + 56) + *(v236 + 72) * v46, a1);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v50 = *(v49 + 48);
      v44 = v243;
      *v243 = v48;
      *(v243 + 1) = v19;
      v51 = a1;
      (*(v236 + 32))(&v243[v50], v234);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v49);

LABEL_13:
      sub_21AFA41DC(v44, v240, &qword_27CD42FC0, &qword_21B114A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v55 = OUTLINED_FUNCTION_19_0();
      if (__swift_getEnumTagSinglePayload(v55, 1, v19) == 1)
      {
        sub_21B1112A4();
        OUTLINED_FUNCTION_4_1();
        (*(v202 + 8))(v228);

        OUTLINED_FUNCTION_3_5();
        sub_21AFA4180(v232, a3);
        OUTLINED_FUNCTION_31_0();
        v206 = v227;
        return __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
      }

      v56 = *v240;
      v57 = v240[1];
      (*(v236 + 32))(v245, v240 + *(v19 + 48), v51);
      if (*(a2 + 16))
      {
        v58 = sub_21AF98B58(v56, v57);
        if (v59)
        {
          v60 = (*(a2 + 56) + 16 * v58);
          v56 = *v60;
          v61 = v60[1];

          v57 = v61;
        }
      }

      sub_21B111314();
      a1 = swift_dynamicCast();
      sub_21B111314();
      v19 = swift_dynamicCast();
      OUTLINED_FUNCTION_21_0();
      v63 = v62 + 4;
      v64 = v56 == v62 + 4 && v239 == v57;
      if (v64 || (OUTLINED_FUNCTION_17_0(v62 + 4) & 1) != 0)
      {

        if (v19)
        {
          v81 = v246;
        }

        else
        {
          v81 = 0;
        }

        v19 = v232;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = OUTLINED_FUNCTION_6_2();
          v83(v82);
          v19 = *(v231 + v232);
        }

        else
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          sub_21AFB1408(v93);
          v94 = OUTLINED_FUNCTION_5_3();
          a1 = v242;
          v95(v94, v242);

          *(v231 + v232) = v232;
        }

        v44 = v243;
        v20 = &qword_21B114240;
        OUTLINED_FUNCTION_20_0();
        swift_beginAccess();
        v233 = v19;
        *(v19 + 44) = v81;
        goto LABEL_75;
      }

      a1 = (a1 & v246);
      OUTLINED_FUNCTION_21_0();
      v66 = v56 == v65 - 10 && 0x800000021B12FF10 == v57;
      if (v66 || (OUTLINED_FUNCTION_17_0(v65 - 10) & 1) != 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v231 + v232);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          v86 = OUTLINED_FUNCTION_16_1();
          v85 = sub_21AFB1408(v86);
          *(v231 + v232) = v85;
        }

        v20 = &qword_21B114240;
        *(v85 + 41) = a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v87 = OUTLINED_FUNCTION_4_5();
          v88(v87);
          v19 = *(v231 + v232);
        }

        else
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          v19 = sub_21AFB1408(v96);
          v97 = OUTLINED_FUNCTION_4_5();
          v98(v97);

          *(v231 + v232) = v19;
        }

        v44 = v243;
        v233 = v19;
        *(v19 + 41) = a1;
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_21_0();
      v68 = v56 == v67 + 1 && 0x800000021B130C00 == v57;
      v44 = v243;
      if (v68 || (OUTLINED_FUNCTION_17_0(v67 + 1) & 1) != 0)
      {

        if (!a1)
        {
          goto LABEL_33;
        }

        v19 = v232;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v99 = OUTLINED_FUNCTION_6_2();
          v100(v99);
          v19 = *(v231 + v232);
        }

        else
        {
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          sub_21AFB1408(v101);
          v102 = OUTLINED_FUNCTION_5_3();
          a1 = v242;
          v103(v102, v242);

          OUTLINED_FUNCTION_37();
        }

        v20 = &qword_21B114240;
        v233 = v19;
        *(v19 + 41) = -127;
LABEL_75:
        v39 = v237;
        v40 = v238;
        v41 = v244;
      }

      else
      {
        v71 = v56 == 0x697461636F766E69 && v57 == 0xEF657079745F6E6FLL;
        if (v71 || (OUTLINED_FUNCTION_17_0(0x697461636F766E69) & 1) != 0)
        {

          if (*(v233 + 40) > -3 || (*(v233 + 32) & 1) == 0)
          {
            v72 = v19 ? v246 : 0;
            Apple_Parsec_Feedback_V2_ViewAppearEvent.init(rawValue:)(&v247, v72);
            if ((v249 & 1) == 0)
            {
              v73 = v247;
              a1 = v242;
              v20 = &qword_21B114240;
              if (!v247)
              {
                v104 = OUTLINED_FUNCTION_8_3();
                v105(v104, v242);
                goto LABEL_75;
              }

              v74 = v248;
              v19 = v232;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v75 = OUTLINED_FUNCTION_8_3();
                v76(v75, v242);
                v19 = *(v231 + v232);
              }

              else
              {
                type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v106);
                v107 = OUTLINED_FUNCTION_5_3();
                v108(v107, v242);

                *(v231 + v232) = v232;
                v44 = v243;
              }

              v109 = v74 & 1;
              *(v19 + 32) = v73;
              goto LABEL_90;
            }
          }

          goto LABEL_33;
        }

        OUTLINED_FUNCTION_21_0();
        v90 = v56 == v89 && v230 == v57;
        if (v90 || (OUTLINED_FUNCTION_17_0(0xD00000000000001ALL) & 1) != 0)
        {

          if (a1)
          {
            v19 = v232;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v91 = OUTLINED_FUNCTION_6_2();
              v92(v91);
              v19 = *(v231 + v232);
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v112);
              v113 = OUTLINED_FUNCTION_5_3();
              a1 = v242;
              v114(v113, v242);

              OUTLINED_FUNCTION_37();
            }

            v20 = &qword_21B114240;
            *(v19 + 32) = 1;
            v109 = 0x80;
LABEL_90:
            v233 = v19;
            *(v19 + 40) = v109;
            goto LABEL_75;
          }

LABEL_33:
          v69 = OUTLINED_FUNCTION_6_2();
          v70(v69);
          v39 = v237;
          v40 = v238;
          v20 = &qword_21B114240;
          v41 = v244;
        }

        else
        {
          if (v19)
          {
            v110 = v246;
          }

          else
          {
            v110 = 0;
          }

          v216 = v110;
          if (v56 == 0x775F666F5F796164 && v57 == 0xEB000000006B6565)
          {

            v19 = v232;
            v20 = &qword_21B114240;
            goto LABEL_92;
          }

          v19 = v232;
          v20 = &qword_21B114240;
          if (OUTLINED_FUNCTION_17_0(0x775F666F5F796164))
          {

LABEL_92:
            a1 = v242;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v115 = OUTLINED_FUNCTION_8_3();
              v116(v115, v242);
              v19 = *(v231 + v19);
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v117);
              v118 = OUTLINED_FUNCTION_5_3();
              v119(v118, v242);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v233 = v19;
            *(v19 + 52) = v216;
            goto LABEL_75;
          }

          v120 = v56 == v63 && v226 == v57;
          if (v120 || (OUTLINED_FUNCTION_21_0(), (OUTLINED_FUNCTION_17_0(v121 + 4) & 1) != 0))
          {

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v122 = OUTLINED_FUNCTION_4_5();
              v123(v122);
              v19 = *(v231 + v232);
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              v19 = sub_21AFB1408(v124);
              v125 = OUTLINED_FUNCTION_4_5();
              v126(v125);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v233 = v19;
            *(v19 + 56) = a1;
LABEL_70:
            a1 = v242;
            goto LABEL_75;
          }

          OUTLINED_FUNCTION_21_0();
          v128 = v127 + 9;
          v129 = v56 == v127 + 9 && v225 == v57;
          if (v129 || (OUTLINED_FUNCTION_17_0(v128) & 1) != 0)
          {

            v19 = v232;
            a1 = v242;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v130 = OUTLINED_FUNCTION_8_3();
              v131(v130, v242);
              v19 = *(v231 + v232);
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v132);
              v133 = OUTLINED_FUNCTION_5_3();
              v134(v133, v242);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v233 = v19;
            *(v19 + 60) = v216;
            goto LABEL_75;
          }

          OUTLINED_FUNCTION_21_0();
          v136 = v56 == v135 + 14 && v224 == v57;
          a1 = v242;
          if (v136 || (OUTLINED_FUNCTION_17_0(v135 + 14) & 1) != 0)
          {

            v19 = v232;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v137 = OUTLINED_FUNCTION_8_3();
              v138(v137, v242);
              v19 = *(v231 + v232);
            }

            else
            {
              type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v139);
              v140 = OUTLINED_FUNCTION_5_3();
              v141(v140, v242);

              *(v231 + v232) = v232;
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v233 = v19;
            *(v19 + 64) = v216;
          }

          else
          {
            OUTLINED_FUNCTION_21_0();
            v143 = v56 == v142 + 10 && v223 == v57;
            if (v143 || (OUTLINED_FUNCTION_17_0(v142 + 10) & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v144 = OUTLINED_FUNCTION_4_5();
                v145(v144);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v146);
                v147 = OUTLINED_FUNCTION_4_5();
                v148(v147);

                OUTLINED_FUNCTION_48();
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 68) = v216;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v150 = v56 == v149 - 2 && v222 == v57;
            if (v150 || (OUTLINED_FUNCTION_17_0(v149 - 2) & 1) != 0)
            {

              if (v216 > 5)
              {
                v151 = 0;
              }

              else
              {
                v151 = 1;
                switch(v216)
                {
                  case 1:
                    v152 = 1;
                    goto LABEL_155;
                  case 2:
                    v152 = 2;
                    goto LABEL_155;
                  case 3:
                    v152 = 3;
                    goto LABEL_155;
                  case 4:
                    v152 = 4;
                    goto LABEL_155;
                  case 5:
                    v152 = 5;
LABEL_155:
                    v216 = v152;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v157 = OUTLINED_FUNCTION_4_5();
                v158(v157);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v160 = sub_21AFB1408(v159);
                v161 = OUTLINED_FUNCTION_4_5();
                v162(v161);

                v233 = v160;
                *(v246 + v57) = v160;
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 72) = v216;
              *(v233 + 80) = v151;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v154 = v56 == v153 && v221 == v57;
            if (v154 || (OUTLINED_FUNCTION_17_0(0xD00000000000001ALL) & 1) != 0)
            {

              if (v216 > 5)
              {
                v155 = 0;
              }

              else
              {
                v155 = 1;
                switch(v216)
                {
                  case 1:
                    v156 = 1;
                    goto LABEL_173;
                  case 2:
                    v156 = 2;
                    goto LABEL_173;
                  case 3:
                    v156 = 3;
                    goto LABEL_173;
                  case 4:
                    v156 = 4;
                    goto LABEL_173;
                  case 5:
                    v156 = 5;
LABEL_173:
                    v216 = v156;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v167 = OUTLINED_FUNCTION_4_5();
                v168(v167);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v170 = sub_21AFB1408(v169);
                v171 = OUTLINED_FUNCTION_4_5();
                v172(v171);

                v233 = v170;
                *(v246 + v57) = v170;
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 88) = v216;
              *(v233 + 96) = v155;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v164 = v56 == v163 - 7 && v220 == v57;
            if (v164 || (OUTLINED_FUNCTION_17_0(v163 - 7) & 1) != 0)
            {

              if (v216 > 3)
              {
                v165 = 0;
              }

              else
              {
                v165 = 1;
                switch(v216)
                {
                  case 1:
                    v166 = 1;
                    goto LABEL_188;
                  case 2:
                    v166 = 2;
                    goto LABEL_188;
                  case 3:
                    v166 = 3;
LABEL_188:
                    v216 = v166;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v177 = OUTLINED_FUNCTION_4_5();
                v178(v177);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v180 = sub_21AFB1408(v179);
                v181 = OUTLINED_FUNCTION_4_5();
                v182(v181);

                v233 = v180;
                *(v246 + v57) = v180;
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 104) = v216;
              *(v233 + 112) = v165;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v174 = v56 == v173 + 6 && v219 == v57;
            if (v174 || (OUTLINED_FUNCTION_17_0(v173 + 6) & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v175 = OUTLINED_FUNCTION_4_5();
                v176(v175);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v183);
                v184 = OUTLINED_FUNCTION_4_5();
                v185(v184);

                OUTLINED_FUNCTION_48();
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 132) = v216;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v187 = v56 == v186 + 8 && v218 == v57;
            if (v187 || (OUTLINED_FUNCTION_17_0(v186 + 8) & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v188 = OUTLINED_FUNCTION_4_5();
                v189(v188);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v190);
                v191 = OUTLINED_FUNCTION_4_5();
                v192(v191);

                OUTLINED_FUNCTION_48();
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 136) = v216;
              goto LABEL_132;
            }

            if (v56 == v128 && v217 == v57)
            {

LABEL_211:
              if (OUTLINED_FUNCTION_40())
              {
                v197 = OUTLINED_FUNCTION_4_5();
                v198(v197);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v199);
                v200 = OUTLINED_FUNCTION_4_5();
                v201(v200);

                OUTLINED_FUNCTION_48();
              }

              v19 = v233;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v233 + 140) = v216;
LABEL_132:
              a1 = v242;
              goto LABEL_133;
            }

            OUTLINED_FUNCTION_21_0();
            v19 = OUTLINED_FUNCTION_17_0(v194 + 9);

            if (v19)
            {
              goto LABEL_211;
            }

            v195 = OUTLINED_FUNCTION_6_2();
            v196(v195);
          }

LABEL_133:
          v44 = v243;
          v41 = v244;
          v39 = v237;
          v40 = v238;
        }
      }
    }

    while (1)
    {
      v45 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v45 >= v39)
      {
        v51 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
        v244 = 0;
        goto LABEL_13;
      }

      v41 = *(v40 + 8 * v45);
      ++v15;
      if (v41)
      {
        v15 = v45;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_224:
    OUTLINED_FUNCTION_23_0();
    swift_once();
  }

  if (qword_27CD424A0 != -1)
  {
    OUTLINED_FUNCTION_24_0();
    swift_once();
  }

  v207 = sub_21B1122D4();
  __swift_project_value_buffer(v207, qword_27CD6E718);
  OUTLINED_FUNCTION_19_0();

  v208 = sub_21B1122B4();
  v209 = sub_21B112704();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v247 = v211;
    *v210 = 136315138;
    v212 = sub_21AFCEC24(v21, v23, &v247);

    *(v210 + 4) = v212;
    _os_log_impl(&dword_21AF80000, v208, v209, "Can't create a feature report from data item named %s", v210, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v211);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {
  }

  sub_21B1112A4();
  OUTLINED_FUNCTION_4_1();
  (*(v213 + 8))(a1);
  OUTLINED_FUNCTION_25_0();
  sub_21AFA4074(v232, v214);
  OUTLINED_FUNCTION_34_0();
  v206 = v15;
  return __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
}

uint64_t sub_21AFA28B4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-v12];
  sub_21B111EB4();
  v14 = *(v8 + 28);
  if (qword_27CD424D8 != -1)
  {
    swift_once();
  }

  *&v13[v14] = qword_27CD43168;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *&v13[v14];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v16 = sub_21AFB1408(v16);
    *&v13[v14] = v16;
  }

  swift_beginAccess();
  *(v16 + 16) = 1;
  *(v16 + 24) = 1;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *&v13[v14];
  if ((v17 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v18 = sub_21AFB1408(v18);
    *&v13[v14] = v18;
  }

  *(v18 + 32) = 1;
  *(v18 + 40) = 0x80;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *&v13[v14];
  if ((v19 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v20 = sub_21AFB1408(v20);
    *&v13[v14] = v20;
  }

  *(v20 + 41) = 0;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *&v13[v14];
  if ((v21 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v22 = sub_21AFB1408(v22);
    *&v13[v14] = v22;
  }

  swift_beginAccess();
  *(v22 + 120) = a2;

  sub_21AFA4124(v13, v11);
  v23 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
  sub_21B111EB4();
  sub_21AF99BE0(v6, &qword_27CD42F90, &unk_21B115FC0);
  sub_21AFA4180(v11, v6);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
  sub_21AF9F7AC(v6, a1);
  sub_21AFA4074(v6, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);
  return sub_21AFA4074(v13, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
}

uint64_t sub_21AFA2C40()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(v2);
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v74 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24();
  v80 = v7;
  v8 = OUTLINED_FUNCTION_33_0();
  v73 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v71 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24();
  v72 = v12;
  v13 = OUTLINED_FUNCTION_33_0();
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v13);
  v15 = OUTLINED_FUNCTION_25(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = (v17 - v16);
  v19 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v78 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  v27 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  sub_21B111534();
  v34 = sub_21B1114C4();
  v35 = v33;
  v36 = v26;
  result = (*(v29 + 8))(v35, v27);
  v38 = 0;
  v84 = MEMORY[0x277D84F98];
  v81 = *(v34 + 16);
  v79 = v21;
  v75 = v21 + 16;
  v76 = (v21 + 8);
  for (i = v34; ; v34 = i)
  {
    if (v81 == v38)
    {

      return v84;
    }

    if (v38 >= *(v34 + 16))
    {
      break;
    }

    v39 = v34 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v40 = *(v79 + 72);
    v82 = v38;
    v41 = *(v79 + 16);
    v41(v36, v39 + v40 * v38, v19);
    v42 = v78;
    v41(v78, v36, v19);
    v43 = sub_21B112334();
    sub_21AFA65F0(v42, v43, v18);
    OUTLINED_FUNCTION_27_0();
    v44 = v80;
    sub_21AF9FBE0(48, v45, v80);
    if (v1)
    {
      goto LABEL_9;
    }

    v46 = v36;
    v47 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
    v83 = 0;
    v48 = v72;
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
    sub_21B111EB4();
    sub_21AF99BE0(v48, &qword_27CD42F90, &unk_21B115FC0);
    OUTLINED_FUNCTION_3_5();
    sub_21AFA4180(v44, v48);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v47);
    sub_21AF9F7AC(v48, v18);
    OUTLINED_FUNCTION_12_1();
    sub_21AFA4074(v48, v55);
    OUTLINED_FUNCTION_26_0();
    v56 = v74;
    v57 = v83;
    sub_21AF9FBE0(49, v58, v74);
    if (v57)
    {
      v36 = v46;
LABEL_9:

      OUTLINED_FUNCTION_2_5();
      sub_21AFA4074(v18, v69);
      (*v76)(v36, v19);
    }

    v83 = 0;
    v59 = v71;
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v47);
    sub_21B111EB4();
    sub_21AF99BE0(v59, &qword_27CD42F90, &unk_21B115FC0);
    OUTLINED_FUNCTION_3_5();
    sub_21AFA4180(v56, v59);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v47);
    sub_21AF9F7AC(v59, v18);
    OUTLINED_FUNCTION_2_5();
    sub_21AFA4074(v18, v66);
    (*v76)(v46, v19);
    OUTLINED_FUNCTION_12_1();
    v67 = v59;
    v1 = v83;
    result = sub_21AFA4074(v67, v68);
    v38 = v82 + 1;
    v36 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA3168(uint64_t *a1, uint64_t a2)
{
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-v8];
  v10 = sub_21B1112A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v15 = MEMORY[0x28223BE20](v14);
  v44 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v40[-v17];
  (*(v11 + 16))(v13, a2, v10);
  v19 = sub_21B112334();
  sub_21AFA65F0(v13, v19, v18);
  v20 = sub_21B111294();
  sub_21B0DF074(0x775F666F5F646E65, 0xEB000000006B6565, v20, v9);

  v21 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) == 1)
  {
    sub_21AFA4074(v18, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    return sub_21AF99BE0(v9, &qword_27CD42C48, &qword_21B1141C0);
  }

  v43 = v2;
  sub_21B111314();
  v23 = *(*(v21 - 8) + 8);
  v23(v9, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_21AFA4074(v18, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  }

  v42 = v47;
  v24 = sub_21B111294();
  sub_21B0DF074(0xD000000000000018, 0x800000021B130E00, v24, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v21) == 1)
  {
    sub_21AFA4074(v18, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    return sub_21AF99BE0(v7, &qword_27CD42C48, &qword_21B1141C0);
  }

  sub_21B111314();
  v23(v7, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_21AFA4074(v18, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  }

  v41 = v47;
  v25 = v45;
  swift_isUniquelyReferenced_nonNull_native();
  v46 = *v25;
  v26 = v46;
  v27 = sub_21B0B5BC0(v18);
  if (__OFADD__(*(v26 + 16), (v28 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = v27;
  v30 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD0, &qword_21B114A40);
  v31 = sub_21B112994();
  v32 = v46;
  if (v31)
  {
    v33 = sub_21B0B5BC0(v18);
    if ((v30 & 1) == (v34 & 1))
    {
      v29 = v33;
      goto LABEL_11;
    }

LABEL_16:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

LABEL_11:
  *v25 = v32;
  if ((v30 & 1) == 0)
  {
    v35 = v44;
    sub_21AFA4124(v18, v44);
    sub_21B0ECFC4(v29, v35, MEMORY[0x277D84F90], v32);
  }

  v36 = *(v32 + 56) + 8 * v29;
  sub_21B0C63AC();
  v37 = *(*v36 + 16);
  sub_21B0C6438(v37);
  result = sub_21AFA4074(v18, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  v38 = *v36;
  *(v38 + 16) = v37 + 1;
  v39 = v38 + 16 * v37;
  *(v39 + 32) = v42;
  *(v39 + 40) = v41;
  return result;
}

uint64_t sub_21AFA3694(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D6304(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_21AFA3700(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_21AFA3700(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AFA3868(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AFA37F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFA37F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 16);
        if (*v8 >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v9;
        *(v8 + 8) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AFA3868(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v13 < v10) ^ (*(v14 - 2) >= *v14);
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = v11 != v19 || v23 >= v24 + 16;
                if (v27)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9 - 16;
            v30 = v7 - v9;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = *(v32 + 16);
                if (*v32 >= v33)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_117;
                }

                v34 = *(v32 + 24);
                *(v32 + 16) = *v32;
                *v32 = v33;
                *(v32 + 8) = v34;
                v32 -= 16;
                v27 = __CFADD__(v31++, 1);
              }

              while (!v27);
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4B14(0, v8[2] + 1, 1, v8);
        v8 = v79;
      }

      v36 = v8[2];
      v35 = v8[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_21B0D4B14(v35 > 1, v36 + 1, 1, v8);
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *result;
      if (!*result)
      {
        goto LABEL_120;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_62:
            if (v46)
            {
              goto LABEL_102;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_105;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v37 < 2)
          {
            goto LABEL_104;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_77:
          if (v61)
          {
            goto LABEL_107;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v68 < v60)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_21AFA3E8C((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v75 < v73)
          {
            goto LABEL_97;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_98;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_99;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_91;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_100;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_101;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_103;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_106;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_111;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_121;
  }

  sub_21AFA3D60(&v86, *result, a3);
LABEL_95:
}

uint64_t sub_21AFA3D60(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21B0D61A8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AFA3E8C((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AFA3E8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21AFCC250(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_21AFCC250(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_21AFA4010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA4074(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21AFA40CC()
{
  result = qword_27CD42FA8;
  if (!qword_27CD42FA8)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42FA8);
  }

  return result;
}

uint64_t sub_21AFA4124(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v5(v4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21AFA4180(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v5(v4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_21AFA41DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11WeeklyCountVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WeeklyCountVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return sub_21B112994();
}

uint64_t sub_21AFA45FC()
{
  MEMORY[0x21CEEA9A0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_21AFA4660(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_21AFA4704(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21B1122D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21B1122C4();
}

uint64_t sub_21AFA477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (sub_21AFA6328(a1, a2, a3))
  {
    result = sub_21B0CE870(a5);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    sub_21B1118C4();
  }

  OUTLINED_FUNCTION_2_6();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v20 = 0;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    v22 = *(*(a1 + 48) + (__clz(__rbit64(v17)) | (v20 << 6)));
    sub_21B110D94();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    if (v22 >= 2)
    {
      sub_21B0CF044(a5, v29, v13);
      if (v5)
      {

        sub_21AF99BE0(v13, &qword_27CD43750, &qword_21B117A30);
        sub_21B111924();
        OUTLINED_FUNCTION_4_1();
        return (*(v27 + 8))(a5);
      }
    }

    v17 &= v17 - 1;
    result = sub_21AF99BE0(v13, &qword_27CD43750, &qword_21B117A30);
  }

  while (v17);
LABEL_6:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
    }

    v17 = *(a1 + 56 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA4974()
{
  v1 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_21B1110F4();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_21B112904();

  v15 = 0xD000000000000012;
  v16 = 0x800000021B130ED0;
  v17 = 0;
  v11 = sub_21B112B84();
  MEMORY[0x21CEE9770](v11);

  sub_21B1116F4();

  if (!v0)
  {
    sub_21B111794();
    v13 = *(v3 + 8);
    v13(v10, v1);
    sub_21B1110F4();
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_21B112904();

    v15 = 0xD000000000000017;
    v16 = 0x800000021B130EF0;
    v17 = 0;
    v14 = sub_21B112B84();
    MEMORY[0x21CEE9770](v14);

    sub_21B1116F4();

    sub_21B111794();
    return (v13)(v7, v1);
  }

  return result;
}

uint64_t sub_21AFA4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v204 = a5;
  v179 = a4;
  v206 = a3;
  v180 = a2;
  v176 = a6;
  v177 = *v6;
  v203 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v182 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v187 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  v15 = OUTLINED_FUNCTION_25(v14);
  MEMORY[0x28223BE20](v15);
  v196 = v158 - v16;
  OUTLINED_FUNCTION_33_0();
  v199 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v201 = v21 - v20;
  OUTLINED_FUNCTION_33_0();
  v178 = sub_21B111B24();
  OUTLINED_FUNCTION_1();
  v192 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FE0, &qword_21B114B48);
  v28 = OUTLINED_FUNCTION_25(v27);
  MEMORY[0x28223BE20](v28);
  v198 = v158 - v29;
  OUTLINED_FUNCTION_33_0();
  v200 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v193 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_1();
  v195 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v36);
  v191 = v158 - v37;
  OUTLINED_FUNCTION_33_0();
  v185 = sub_21B1113A4();
  OUTLINED_FUNCTION_1();
  v194 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v40);
  v183 = v158 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v43 = OUTLINED_FUNCTION_25(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  v197 = v44 - v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_1();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = v158 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = v158 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = v158 - v54;
  ObjectType = swift_getObjectType();
  v58 = dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for SODAHostEnvironment);
  v181 = a1;
  v188 = v26;
  if (v58)
  {
    v202 = v57;
    swift_unknownObjectRetain();
  }

  else
  {
    v202 = 0;
  }

  v205 = v55;
  OUTLINED_FUNCTION_34_0();
  v59 = v203;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v203);
  v208 = v206;
  if (!v58)
  {

    v53 = MEMORY[0x277D84FA0];
    v67 = v59;
    v68 = v202;
    goto LABEL_8;
  }

  v175 = v8;
  OUTLINED_FUNCTION_16_2();
  v63 = swift_getObjectType();

  swift_unknownObjectRetain();
  v64 = v58;
  v65 = v202;
  OUTLINED_FUNCTION_12_2();
  sub_21B0C6850(v66);
  if (v7)
  {
    swift_unknownObjectRelease_n();
    sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);
  }

  OUTLINED_FUNCTION_12_2();
  v174 = v75(v63, v65);
  v207 = v64;
  sub_21AF94164(v53);
  v81 = v205;
  sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);
  sub_21AFA6428(v53, v81);
  sub_21AF99A84(v81, v50, &qword_27CD43750, &qword_21B117A30);
  v67 = v59;
  if (__swift_getEnumTagSinglePayload(v50, 1, v59) != 1)
  {
    swift_unknownObjectRelease();
    sub_21AF99BE0(v50, &qword_27CD43750, &qword_21B117A30);
    v18 = v173;
    OUTLINED_FUNCTION_8_4();
    v68 = v202;
    v58 = v64;
LABEL_8:
    v69 = v201;
    OUTLINED_FUNCTION_12_2();
    sub_21AFA477C(v70, v71, v72, v73, v74);
    if (v7)
    {
      sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);

      swift_unknownObjectRelease();
    }

    v174 = v53;
    v77 = v208;
    v78 = *(v208 + 16);
    v206 = v58;
    if (v78)
    {
      sub_21B111364();
      v79 = v196;
      v80 = v199;
      (*(v18 + 16))(v196, v69, v199);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
      v115 = sub_21B111354();
      sub_21AF99BE0(v79, &qword_27CD42FD8, &qword_21B114B40);

      v116 = v205;
      v67 = v203;
      OUTLINED_FUNCTION_8_4();
    }

    else
    {

      sub_21B111124();
      v115 = sub_21B1110E4();
      OUTLINED_FUNCTION_8_4();
      if (sub_21AFA6328(v77, v58, v68))
      {
        OUTLINED_FUNCTION_12_2();
        sub_21B111114();
        v117 = v195;
        v116 = v205;
        goto LABEL_37;
      }

      v116 = v205;
    }

    v117 = v195;
LABEL_37:
    sub_21AFA4974();
    v118 = v116;
    v119 = v186;
    sub_21AF99A84(v118, v186, &qword_27CD43750, &qword_21B117A30);
    if (__swift_getEnumTagSinglePayload(v119, 1, v67) == 1)
    {
      OUTLINED_FUNCTION_16_2();
      sub_21AF99BE0(v119, &qword_27CD43750, &qword_21B117A30);
    }

    else
    {
      v202 = v115;
      v120 = v119;
      v121 = v182;
      (*(v182 + 32))(v187, v120, v67);
      if (v206)
      {
        v122 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_21B0C68B0(v122, v68, v117);
        v77 = sub_21AFA5F64(v187, v117);
        v148 = OUTLINED_FUNCTION_15_2();
        v149(v148);
        v115 = v202;
        OUTLINED_FUNCTION_12_2();
        sub_21B111104();
        OUTLINED_FUNCTION_16_2();
        v150 = OUTLINED_FUNCTION_3_6();
        v151(v150);
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_8_4();
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        (*(v121 + 8))(v187, v67);
        v115 = v202;
      }
    }

    v123 = v77 + 56;
    OUTLINED_FUNCTION_2_6();
    v126 = v125 & v124;
    v128 = (v127 + 63) >> 6;

    v129 = 0;
    v130 = v181;
    while (v126)
    {
      v131 = v130;
      v132 = v197;
LABEL_49:
      OUTLINED_FUNCTION_19_1();
      v136 = *(v135 + v134);
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v203);
      if (v136 >= 2)
      {
        sub_21B0CF5F8(v115, v204, v132);
      }

      v126 &= v126 - 1;
      sub_21AF99BE0(v197, &qword_27CD43750, &qword_21B117A30);
      v130 = v131;
      OUTLINED_FUNCTION_8_4();
    }

    v132 = v197;
    while (1)
    {
      v133 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v133 >= v128)
      {

        v140 = sub_21B111244();
        sub_21AF99A84(v179, &v207, &qword_27CD42F58, &qword_21B114B50);
        v141 = swift_getObjectType();
        v142 = v180;
        v143 = *(v180 + 32);

        v143(v141, v142);
        v144 = sub_21B111254();
        v145 = v176;
        v176[3] = v140;
        v145[4] = &off_282C92930;

        swift_unknownObjectRelease();
        *v145 = v144;
        v146 = OUTLINED_FUNCTION_11_1();
        v147(v146);
        return sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);
      }

      v126 = *(v123 + 8 * v133);
      ++v129;
      if (v126)
      {
        v131 = v130;
        v129 = v133;
        goto LABEL_49;
      }
    }

    __break(1u);
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_14_2();

    v154 = OUTLINED_FUNCTION_1_4();
    v155(v154);
    v156 = OUTLINED_FUNCTION_4_6();
    v157(v156);
    sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);
  }

  sub_21AF99BE0(v50, &qword_27CD43750, &qword_21B117A30);
  v82 = OUTLINED_FUNCTION_13_1() + 56;
  OUTLINED_FUNCTION_2_6();
  v53 = v84 & v83;
  v7 = (v85 + 63) >> 6;
  v172 = *MEMORY[0x277D39DD0];
  v168 = v193 + 104;
  v167 = *MEMORY[0x277D39DD8];
  v166 = v193 + 32;
  v171 = v193 + 16;
  v164 = v193 + 88;
  v169 = v193 + 8;
  v165 = v192 + 8;
  v170 = (v194 + 32);

  v86 = 0;
  v192 = MEMORY[0x277D84F90];
  v68 = v202;
  v58 = v64;
  while (1)
  {
    v87 = v86;
    if (!v53)
    {
      break;
    }

LABEL_20:
    v53 &= v53 - 1;
    OUTLINED_FUNCTION_19_1();
    if (*(v89 + v88) == 2)
    {
      v111 = v198;
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v200);
      sub_21AF99BE0(v111, &qword_27CD42FE0, &qword_21B114B48);
    }

    else
    {
      v162 = v7;
      OUTLINED_FUNCTION_5_4();
      v90 = v200;
      v91(v198);
      __swift_storeEnumTagSinglePayload(v198, 0, 1, v90);
      OUTLINED_FUNCTION_5_4();
      v92(v191, v198, v90);
      OUTLINED_FUNCTION_5_4();
      v163 = v93;
      v93(v189, v191, v90);
      v94 = v204;
      sub_21B111B14();
      v159 = sub_21B111B04();
      v160 = sub_21B111AF4();
      v95 = v191;
      v158[1] = sub_21B111CA4();
      v161 = v96;
      v97 = v95;
      v98 = v200;
      v163(v190, v97, v200);
      OUTLINED_FUNCTION_5_4();
      v100 = v99(v190, v98);
      if (v100 == v172)
      {
        type metadata accessor for SessionSchemaProvider(0);
        swift_allocObject();
        sub_21AFA71D0();
      }

      else
      {
        type metadata accessor for FeedbackSchemaProvider(0);
        swift_allocObject();
        sub_21AFD20D0();
        OUTLINED_FUNCTION_5_4();
        v101(v190, v200);
      }

      sub_21B111394();
      v102 = OUTLINED_FUNCTION_1_4();
      v103(v102);
      v104 = OUTLINED_FUNCTION_4_6();
      v105(v104);
      v163 = *v170;
      v163(v184, v183, v185);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4E58();
        v192 = v109;
      }

      v106 = *(v192 + 16);
      v107 = v106 + 1;
      if (v106 >= *(v192 + 24) >> 1)
      {
        v161 = v106 + 1;
        sub_21B0D4E58();
        v107 = v161;
        v192 = v110;
      }

      v108 = v192;
      *(v192 + 16) = v107;
      v163(v108 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v106, v184, v185);
      v7 = v162;
    }
  }

  while (1)
  {
    v86 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v86 >= v7)
    {
      OUTLINED_FUNCTION_8_4();

      sub_21B0D0C9C(v192);
      swift_unknownObjectRelease();
      v18 = v173;
      goto LABEL_8;
    }

    v53 = *(v82 + 8 * v86);
    ++v87;
    if (v53)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_14_2();
  v152 = OUTLINED_FUNCTION_4_6();
  v153(v152);
  sub_21AF99BE0(v205, &qword_27CD43750, &qword_21B117A30);
}

uint64_t sub_21AFA5F64(uint64_t a1, uint64_t a2)
{
  v29[25] = a2;
  v4 = sub_21B111CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B110D94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileArray();
  (*(v9 + 16))(v11, a1, v8);
  v13 = v12;
  v14 = sub_21AFA8CF0(v11);
  if (!v2)
  {
    v15 = v14;
    v16 = sub_21B111C94();
    v18 = v17;
    v19 = type metadata accessor for SessionSchemaTableProvider();
    swift_allocObject();
    v20 = sub_21B0B0170(v15, v16, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FE8, &qword_21B114B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B113DB0;
    (*(v5 + 104))(v7, *MEMORY[0x277D39DD0], v4);
    v22 = sub_21B111CA4();
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    *(inited + 32) = v22;
    *(inited + 40) = v24;
    *(inited + 72) = v19;
    *(inited + 80) = sub_21AFA6498(&qword_27CD42FF0, type metadata accessor for SessionSchemaTableProvider, &unk_21B12848C);
    *(inited + 48) = v20;

    *(inited + 88) = sub_21B111CA4();
    *(inited + 96) = v25;
    v29[3] = v19;
    v29[4] = &off_282C95790;
    v29[0] = v20;
    v26 = type metadata accessor for FeedbackSchemaTableProvider();
    swift_allocObject();

    v28 = sub_21AFCA92C(v29);
    *(inited + 128) = v26;
    *(inited + 136) = sub_21AFA6498(&qword_27CD43000, type metadata accessor for FeedbackSchemaTableProvider, &unk_21B1176AC);
    *(inited + 104) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43008, &qword_21B114B68);
    v13 = sub_21B112334();
  }

  return v13;
}

uint64_t sub_21AFA6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v6 = *(a3 + 32);
    swift_unknownObjectRetain();
    LOBYTE(a3) = v6(ObjectType, a3);
    swift_unknownObjectRelease();
    return a3 & 1;
  }

  else
  {

    return sub_21B0CEBD0(a1);
  }
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFA6428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA6498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_14_2()
{
}

uint64_t sub_21AFA65F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v47 = sub_21B111334();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v40 - v8;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v40 = a3;
  sub_21B111EB4();
  v42 = a1;
  v9 = sub_21B111294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43010, &qword_21B114B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  strcpy((inited + 32), "system_build");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = swift_getKeyPath();
  strcpy((inited + 56), "country_code");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0x656C61636F6CLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43018, &qword_21B114BD8);
  result = sub_21B112334();
  v12 = result;
  v13 = 0;
  v14 = result + 64;
  v15 = 1 << *(result + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(result + 64);
  v18 = (v15 + 63) >> 6;
  v43 = v5 + 16;
  v45 = v5;
  v46 = (v5 + 8);
  for (i = v9; v17; result = )
  {
    v19 = v49;
LABEL_10:
    v21 = (*(v12 + 48) + 16 * (__clz(__rbit64(v17)) | (v13 << 6)));
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v19 + 16);

    if (v24)
    {
      v25 = sub_21AF98B58(v22, v23);
      if (v26)
      {
        v27 = (*(v19 + 56) + 16 * v25);
        v22 = *v27;
        v28 = v27[1];

        v23 = v28;
      }
    }

    v9 = i;
    v17 &= v17 - 1;
    if (*(i + 16))
    {
      v29 = sub_21AF98B58(v22, v23);
      v31 = v30;

      if (v31)
      {
        v32 = v45;
        v33 = *(v9 + 56) + *(v45 + 72) * v29;
        v34 = v44;
        v35 = v47;
        (*(v45 + 16))(v44, v33, v47);
        sub_21B111314();
        (*(v32 + 8))(v34, v35);
        if (swift_dynamicCast())
        {
          v52 = v50;
          v53 = v51;
          swift_setAtWritableKeyPath();
        }
      }
    }

    else
    {
    }
  }

  v19 = v49;
  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v13;
    if (v17)
    {
      v13 = v20;
      goto LABEL_10;
    }
  }

  v36 = v41;
  sub_21B0DF074(0x6C62616E655F7564, 0xEA00000000006465, v9, v41);

  v37 = v47;
  if (__swift_getEnumTagSinglePayload(v36, 1, v47) == 1)
  {
    sub_21B1112A4();
    OUTLINED_FUNCTION_0_1();
    (*(v38 + 8))(v42);
    return sub_21AF94B38(v36);
  }

  else
  {
    sub_21B111314();
    sub_21B1112A4();
    OUTLINED_FUNCTION_0_1();
    (*(v39 + 8))(v42);
    (*v46)(v36, v37);
    result = swift_dynamicCast();
    if (result)
    {
      *(v40 + 32) = v50;
    }
  }

  return result;
}

uint64_t type metadata accessor for SessionSchemaProvider(uint64_t a1)
{
  result = qword_27CD43020;
  if (!qword_27CD43020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFA6BAC(uint64_t a1)
{
  sub_21AFA861C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_21AFA6C44(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21AFA6C94()
{
  v0 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277D39DD0], v0);
  v7 = sub_21B111C64();
  v9 = v8;
  result = (*(v2 + 8))(v6, v0);
  qword_27CD6E730 = v7;
  *algn_27CD6E738 = v9;
  return result;
}

uint64_t sub_21AFA6D80()
{
  v0 = sub_21B111844();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B111924();
  __swift_allocate_value_buffer(v4, qword_27CD6E740);
  v17[2] = __swift_project_value_buffer(v4, qword_27CD6E740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D58, &qword_21B114298);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D60, &qword_21B1142A0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D90;
  v8 = (v7 + v6);
  v17[0] = v5[14];
  v17[1] = v7;
  *v8 = 0x72657070617257;
  v8[1] = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43050, &qword_21B114C18);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21B113DB0;
  v13 = (v12 + v11);
  *v13 = 0x746E65696C63;
  v13[1] = 0xE600000000000000;
  v14 = *(v1 + 104);
  v14(v3, *MEMORY[0x277D3E530], v0);
  v19 = 1;
  sub_21B111854();
  v15 = (v13 + v10);
  *v15 = 0x64616F6C796170;
  v15[1] = 0xE700000000000000;
  v14(v3, *MEMORY[0x277D3E558], v0);
  if (qword_27CD424A8 != -1)
  {
    swift_once();
  }

  v18 = 1;
  sub_21B111854();
  sub_21B111874();
  sub_21B112334();
  sub_21B111934();
  sub_21B111954();
  sub_21B112334();
  sub_21B111834();
  sub_21B112334();
  return sub_21B1118D4();
}

unint64_t sub_21AFA7184(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21AFA71D0()
{
  v46 = sub_21B1110C4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v35 - v6;
  v43 = sub_21B1111C4();
  OUTLINED_FUNCTION_1();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_21B111894();
  OUTLINED_FUNCTION_16_3(v16);
  if (qword_27CD424B0 != -1)
  {
    swift_once();
  }

  v17 = sub_21B111924();
  v18 = __swift_project_value_buffer(v17, qword_27CD6E740);
  (*(*(v17 - 8) + 16))(v15, v18, v17);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  v22 = sub_21B111184();
  v23 = v22;
  if (!v0)
  {
    v35 = 0;
    v48 = MEMORY[0x277D84F90];
    v36 = v22;

    OUTLINED_FUNCTION_17_2();
    v24 = 0;
    v25 = v48;
    v38 = *MEMORY[0x277D3E5C8];
    v41 = *(v2 + 104);
    v37 = *MEMORY[0x277D3E5C0];
    v42 = v2 + 104;
    v26 = (v2 + 32);
    v40 = v47 + 32;
    v39 = *MEMORY[0x277D3E5E8];
    do
    {
      v27 = 0x6D6954746E657665;
      v28 = 0xEE00706D61747365;
      v29 = v39;
      switch(byte_282C8D998[v24 + 32])
      {
        case 1:
          v28 = 0xE600000000000000;
          v29 = v38;
          v27 = 0x746E65696C63;
          break;
        case 2:
          v28 = 0xE900000000000064;
          OUTLINED_FUNCTION_11_2();
          break;
        case 3:
          v28 = 0xEA00000000006465;
          OUTLINED_FUNCTION_10_1();
          break;
        case 4:
          OUTLINED_FUNCTION_3_7();
          break;
        case 5:
          v28 = 0xE600000000000000;
          v29 = v38;
          v27 = 0x656C61636F6CLL;
          break;
        case 6:
          OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      v30 = v45;
      v31 = v46;
      v41(v45, v29, v46);
      (*v26)(v44, v30, v31);
      sub_21B1111B4();
      OUTLINED_FUNCTION_14_3();
      if (v33)
      {
        OUTLINED_FUNCTION_8_5(v32);
        v25 = v48;
      }

      ++v24;
      *(v25 + 16) = v27;
      (*(v47 + 32))(v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28, v11, v43);
    }

    while (v24 != 7);
    v23 = v36;
    sub_21B111174();
  }

  return v23;
}

uint64_t sub_21AFA7620(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = sub_21B1110C4();
  OUTLINED_FUNCTION_1();
  v45 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  v10 = sub_21B1111C4();
  OUTLINED_FUNCTION_1();
  v49 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v16);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v17);
  v19 = v38 - v18;
  v20 = sub_21B111894();
  OUTLINED_FUNCTION_16_3(v20);
  v21 = sub_21B111924();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v21);
  v22 = v48;
  v23 = sub_21B111184();
  v24 = v23;
  if (!v22)
  {
    v38[1] = 0;
    v46 = v15;
    v47 = v10;
    v48 = v2;
    v50 = MEMORY[0x277D84F90];
    v39 = v23;

    OUTLINED_FUNCTION_17_2();
    v25 = 0;
    v26 = v50;
    v41 = *MEMORY[0x277D3E5C8];
    v27 = v45 + 104;
    v45 = *(v45 + 104);
    v40 = *MEMORY[0x277D3E5C0];
    v43 = v49 + 32;
    v44 = (v27 - 72);
    v42 = *MEMORY[0x277D3E5E8];
    do
    {
      v28 = 0x6D6954746E657665;
      v29 = 0xEE00706D61747365;
      v30 = v42;
      switch(byte_282C8D998[v25 + 32])
      {
        case 1:
          v29 = 0xE600000000000000;
          v30 = v41;
          v28 = 0x746E65696C63;
          break;
        case 2:
          v29 = 0xE900000000000064;
          OUTLINED_FUNCTION_11_2();
          break;
        case 3:
          v29 = 0xEA00000000006465;
          OUTLINED_FUNCTION_10_1();
          break;
        case 4:
          OUTLINED_FUNCTION_3_7();
          break;
        case 5:
          v29 = 0xE600000000000000;
          v30 = v41;
          v28 = 0x656C61636F6CLL;
          break;
        case 6:
          OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      v31 = v48;
      v32 = v27;
      (v45)(v7, v30, v48);
      v33 = v7;
      (*v44)(v9, v7, v31);
      v34 = v46;
      sub_21B1111B4();
      OUTLINED_FUNCTION_14_3();
      if (v36)
      {
        OUTLINED_FUNCTION_8_5(v35);
        v26 = v50;
      }

      ++v25;
      *(v26 + 16) = v28;
      (*(v49 + 32))(v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v29, v34, v47);
      v27 = v32;
      v7 = v33;
    }

    while (v25 != 7);
    v24 = v39;
    sub_21B111174();
  }

  return v24;
}

uint64_t sub_21AFA7A10()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  sub_21B111194();
  sub_21B111814();
  if (v1)
  {
  }

  sub_21B111894();
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA867C(v5, v0 + v11);
  return swift_endAccess();
}

uint64_t sub_21AFA7B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v7 = sub_21AFA7184(a1, a2);
  if (v7)
  {
    if (v7 == 7)
    {
      result = OUTLINED_FUNCTION_5_5("Fatal error", v8, v9, v10, v11, "SearchOnDeviceAnalytics/SessionSchemaProvider.swift", v12, v13, 112, 0);
      __break(1u);
    }

    else
    {
      v21 = v7;
      v22 = sub_21B111134();
      v24 = v23;
      (*(*v3 + qword_27CD6E760 + 48))(v21, v22, v23);
      return sub_21AF99728(v22, v24);
    }
  }

  else
  {
    sub_21B111154();
    Double.fromReferenceToUnixTime.getter(v14);
    *a3 = v15;
    v16 = sub_21B1119B4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  }

  return result;
}

uint64_t sub_21AFA7C64@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v51 = a4;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v53 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = sub_21B111894();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA88A8(v4 + v20, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_21AFA8918(v12, &qword_27CD43038, &qword_21B114C10);
    result = OUTLINED_FUNCTION_5_5("Fatal error", v44, v45, v46, v47, "SearchOnDeviceAnalytics/SessionSchemaProvider.swift", v48, v49, 130, 0);
LABEL_17:
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    sub_21B111884();
    if (!v5)
    {
      v30 = v53;
      switch(v52)
      {
        case 1:
          sub_21B111974();
          goto LABEL_10;
        case 2:
        case 3:
        case 4:
          goto LABEL_9;
        case 5:
          OUTLINED_FUNCTION_12_3();
LABEL_9:
          sub_21B111984();
LABEL_10:
          v32 = OUTLINED_FUNCTION_2_7();
          v33(v32);

        case 6:
          OUTLINED_FUNCTION_12_3();
          sub_21B111984();
          v31 = sub_21B1119B4();
          if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
          {
            sub_21AFA8918(v30, &qword_27CD43048, &unk_21B117C90);
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              v35 = sub_21AFA80BC(*v30, *(v30 + 8));
              v37 = v36;
              v38 = OUTLINED_FUNCTION_2_7();
              v39(v38);

              v40 = v51;
              *v51 = v35;
              v40[1] = v37;
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_31_0();
              return __swift_storeEnumTagSinglePayload(v41, v42, v43, v31);
            }

            sub_21AFA8978(v30);
          }

          sub_21AFA86EC();
          swift_allocError();
          *v34 = 0;
          swift_willThrow();

          break;
        default:
          result = OUTLINED_FUNCTION_5_5("Fatal error", v21, v22, v23, v24, "SearchOnDeviceAnalytics/SessionSchemaProvider.swift", v25, v26, 135, 0);
          goto LABEL_17;
      }
    }

    v27 = OUTLINED_FUNCTION_2_7();
    return v28(v27);
  }

  return result;
}

unint64_t sub_21AFA80BC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_21AFA82BC(40, 0xE100000000000000, a1, a2);
  if (v4)
  {
    goto LABEL_6;
  }

  v5 = sub_21B1124E4();
  v2 = sub_21AFA8490(v5, a1, v2);
  OUTLINED_FUNCTION_15_3();
  result = sub_21AFA83A4(v6, v7, v8, v9, v10, v11);
  if (v13)
  {
LABEL_5:

LABEL_6:
    sub_21AFA86EC();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    return v2;
  }

  if (result >> 14 < v2 >> 14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    sub_21B1127C4();
    v15 = v14;
    v2 = v16;

    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_13_2();
    sub_21AFA8784(v18, v19, v20, v21, v22, v23);
    if (v24)
    {
      goto LABEL_5;
    }

    result = sub_21B112784();
    if (v15 >> 14 >= result >> 14)
    {
      OUTLINED_FUNCTION_13_2();
      v26 = sub_21B1127C4();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v2 = MEMORY[0x21CEE9720](v26, v28, v30, v32);

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21AFA82BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_21B1124E4())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_21B112574() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_21B112D04();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_21AFA83A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    if (sub_21B1127B4() == a1 && v10 == a2)
    {
      break;
    }

    v12 = sub_21B112D04();

    if (v12)
    {
      return a3;
    }

    a3 = sub_21B112784();
  }

  return a3;
}

unint64_t sub_21AFA8490(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_21B112594();

    return v4;
  }

  return result;
}

uint64_t sub_21AFA8598()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E758, &qword_27CD43038, &qword_21B114C10);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21AFA861C(uint64_t a1)
{
  if (!qword_27CD43030)
  {
    sub_21B111894();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD43030);
    }
  }
}

uint64_t sub_21AFA867C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFA86EC()
{
  result = qword_27CD43040;
  if (!qword_27CD43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43040);
  }

  return result;
}

uint64_t sub_21AFA8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21B112D04() & 1;
  }
}

uint64_t sub_21AFA8784(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a6;
  while (1)
  {
    if ((a4 ^ a3) < 0x4000)
    {
      return 0;
    }

    a4 = sub_21B112794();
    v14[0] = sub_21B1127B4();
    v14[1] = v9;
    v10 = a1(v14);
    if (v6)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return a4;
    }
  }

  return a4;
}

uint64_t sub_21AFA88A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA8918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21AFA8978(uint64_t a1)
{
  v2 = sub_21B1119B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for UploadEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionSchemaProvider.InternalError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AFA8B3C()
{
  result = qword_27CD43060;
  if (!qword_27CD43060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43060);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_21B1129C4(a1, 11, 2, 0, 0xE000000000000000, a6, 51, 2, a9);
}

void OUTLINED_FUNCTION_8_5(unint64_t a1@<X8>)
{

  sub_21AFCC59C(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_17_2()
{

  sub_21AFCC59C(0, 7, 0);
}

void *sub_21AFA8CF0(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43088, &qword_21B114D28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v43 - v3;
  v53 = type metadata accessor for FileArray.Container(0);
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v51 = v8 - v7;
  v9 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_21B110CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43090, &unk_21B114D30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21B113D90;
  v19 = *MEMORY[0x277CBE8A8];
  *(v18 + 32) = *MEMORY[0x277CBE8A8];
  v54[0] = 0;
  v20 = v19;
  v21 = sub_21AFAB37C(v17, v18, 7, v54, v16);

  v22 = v54[0];
  if (!v21)
  {
    v41 = v54[0];
    sub_21B110C84();

    swift_willThrow();
    (*(v11 + 8))(a1, v9);
    return v41;
  }

  v52 = v16;
  v23 = sub_21B1125F4();
  v24 = v22;

  v54[0] = v23;

  v25 = v50;
  sub_21AFA9BD0(v54);
  if (!v25)
  {

    v26 = *(v54[0] + 2);
    if (v26)
    {
      v43[1] = 0;
      v44 = v11;
      v28 = *(v11 + 16);
      v27 = v11 + 16;
      v29 = *(v27 + 64);
      v43[0] = v54[0];
      v30 = v54[0] + ((v29 + 32) & ~v29);
      v48 = *(v27 + 56);
      v49 = v28;
      v45 = a1;
      v46 = (v27 + 16);
      v50 = v27;
      v31 = (v27 - 8);
      v32 = MEMORY[0x277D84F90];
      do
      {
        v33 = v9;
        v49(v15, v30, v9);
        LOBYTE(v54[0]) = 0;
        sub_21B110D44();
        v34 = sub_21B1123D4();

        v35 = [v52 fileExistsAtPath:v34 isDirectory:{v54, v43[0]}];

        if (v35 && (v54[0] & 1) == 0)
        {
          v9 = v33;
          (*v46)(v4, v15, v33);
          swift_storeEnumTagMultiPayload();
          v36 = 0;
        }

        else
        {
          v9 = v33;
          (*v31)(v15, v33);
          v36 = 1;
        }

        v37 = v53;
        __swift_storeEnumTagSinglePayload(v4, v36, 1, v53);
        if (__swift_getEnumTagSinglePayload(v4, 1, v37) == 1)
        {
          sub_21AFAB410(v4);
        }

        else
        {
          sub_21AFAB478(v4, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B0D4D90();
            v32 = v39;
          }

          v38 = *(v32 + 16);
          if (v38 >= *(v32 + 24) >> 1)
          {
            sub_21B0D4D90();
            v32 = v40;
          }

          *(v32 + 16) = v38 + 1;
          sub_21AFAB478(v51, v32 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v38);
          v9 = v33;
        }

        v30 += v48;
        --v26;
      }

      while (v26);

      v11 = v44;
      a1 = v45;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    type metadata accessor for FileArray();
    v41 = swift_allocObject();
    v41[4] = MEMORY[0x277D84F90];
    v41[5] = 0;
    v41[2] = *(v32 + 16);
    v41[3] = v32;

    (*(v11 + 8))(a1, v9);
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA921C()
{
  v0 = sub_21B110CD4();
  v2 = v1;
  if (v0 == sub_21B110CD4() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B112D04();
  }

  return v5 & 1;
}

void sub_21AFA92B4(unint64_t a1)
{
  v3 = v1;
  v40 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = (v9 - v8);
  v11 = type metadata accessor for FileArray.Container(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v3[3];
  if (*(v20 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = *(v13 + 72) * a1;
  sub_21AFA9C78(v20 + v39 + v21, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20) + 48)];
LABEL_11:
    (*(v6 + 8))(v10, v40);
    return;
  }

  v37 = v21;
  v22 = v19;
  v23 = v40;
  (*(v6 + 32))(v10, v22, v40);
  v38 = sub_21B110DC4();
  if (v2)
  {
    (*(v6 + 8))(v10, v23);
    return;
  }

  v25 = v24;
  v36 = 0;
  sub_21B0C63C4();
  v26 = *(v3[4] + 16);
  sub_21B0C6450(v26);
  v27 = v3[4];
  *(v27 + 16) = v26 + 1;
  *(v27 + 8 * v26 + 32) = a1;
  v3[4] = v27;
  v28 = v38;
  v29 = MEMORY[0x21CEE80F0](v38, v25);
  v30 = v3[5];
  v31 = __OFADD__(v30, v29);
  v32 = v30 + v29;
  if (!v31)
  {
    v3[5] = v32;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20) + 48);
    *v17 = v28;
    v17[1] = v25;
    (*(v6 + 16))(v17 + v33, v10, v40);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v11 = v3[3];
    sub_21AF99818(v28, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[3] = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  sub_21AFAB2F0(v11);
  v11 = v35;
  v3[3] = v35;
LABEL_9:
  if (*(v11 + 16) > a1)
  {
    sub_21AFAB304(v17, v11 + v39 + v37);
    v3[3] = v11;
    swift_endAccess();
    sub_21AFA9640();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_21AFA9640()
{
  v40 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  type metadata accessor for FileArray.Container(0);
  OUTLINED_FUNCTION_1();
  v38 = v8;
  v39 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v35 - v12);
  result = swift_beginAccess();
  v36 = (v2 + 16);
  v37 = (v2 + 32);
  v35 = (v2 + 8);
  while (v0[5] > 0x800000)
  {
    v15 = v0[4];
    v16 = v15[2];
    if (!v16)
    {
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
LABEL_27:
      __break(1u);
LABEL_28:
      result = sub_21B1129C4("Fatal error", 11, 2, 0xD000000000000022, 0x800000021B1310D0, "SearchOnDeviceAnalytics/FileArray.swift", 39, 2, 75);
      __break(1u);
      return result;
    }

    v17 = v15[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[4] = v15;
    if (!isUniquelyReferenced_nonNull_native || (v16 - 1) > v15[3] >> 1)
    {
      sub_21B0D5020();
      v15 = v19;
      v0[4] = v19;
    }

    v20 = v15[2];
    memmove(v15 + 4, v15 + 5, 8 * v20 - 8);
    v15[2] = v20 - 1;
    v0[4] = v15;
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    v21 = v0[3];
    if (v17 >= *(v21 + 16))
    {
      goto LABEL_23;
    }

    v22 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v23 = *(v38 + 72) * v17;
    sub_21AFA9C78(v21 + v22 + v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_28;
    }

    v24 = *v13;
    v25 = v13[1];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20);
    (*v37)(v6, v13 + *(v26 + 48), v40);
    v27 = 0;
    switch(v25 >> 62)
    {
      case 1uLL:
        LODWORD(v27) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_27;
        }

        v27 = v27;
        break;
      case 2uLL:
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_26;
        }

        break;
      case 3uLL:
        break;
      default:
        v27 = BYTE6(v25);
        break;
    }

    v31 = v0[5];
    v30 = __OFSUB__(v31, v27);
    v32 = v31 - v27;
    if (v30)
    {
      goto LABEL_24;
    }

    v0[5] = v32;
    (*v36)(v11, v6, v40);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v21;
    if ((v33 & 1) == 0)
    {
      sub_21AFAB2F0(v21);
      v21 = v34;
      v0[3] = v34;
    }

    if (v17 >= *(v21 + 16))
    {
      goto LABEL_25;
    }

    sub_21AFAB304(v11, v21 + v22 + v23);
    v0[3] = v21;
    swift_endAccess();
    sub_21AF99728(v24, v25);
    result = (*v35)(v6, v40);
  }

  return result;
}

uint64_t sub_21AFA9A28()
{

  return v0;
}

uint64_t sub_21AFA9A50()
{
  sub_21AFA9A28();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for FileArray.Container(uint64_t a1)
{
  result = qword_27CD43068;
  if (!qword_27CD43068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFA9AF4(uint64_t a1)
{
  sub_21B110D94();
  if (v1 <= 0x3F)
  {
    sub_21AFA9B68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21AFA9B68(uint64_t a1)
{
  if (!qword_27CD43078)
  {
    sub_21B110D94();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CD43078);
    }
  }
}

uint64_t sub_21AFA9BD0(uint64_t *a1)
{
  v2 = *(sub_21B110D94() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D631C(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_21AFA9CDC(v10);
  *a1 = v3;
  return result;
}

uint64_t sub_21AFA9C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA9CDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B110D94();
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B110D94() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21AFAA12C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AFA9E0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFA9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B110D94();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_21B110CD4();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_21B110CD4() && v31 == v32)
        {
          break;
        }

        v34 = sub_21B112D04();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AFAA12C(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_21B110D94();
  v9 = MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v165 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v143 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v161 = &v143 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v160 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v29 = &v143 - v25;
  v158 = v26;
  v159 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v27;
  v143 = a4;
  v31 = 0;
  v170 = v26 + 16;
  v168 = (v26 + 32);
  v169 = (v26 + 8);
  v32 = MEMORY[0x277D84F90];
  v162 = v8;
  v154 = v15;
  v144 = v28;
  v146 = &v143 - v25;
  while (1)
  {
    v33 = v31;
    v34 = v31 + 1;
    v149 = v31;
    if (v31 + 1 < v30)
    {
      v164 = v30;
      v145 = v32;
      v35 = v29;
      v36 = *v159;
      v37 = *(v26 + 72);
      v38 = v28;
      v157 = v31 + 1;
      v39 = v31;
      v40 = &v36[v37 * (v31 + 1)];
      v41 = *(v26 + 16);
      v41(v35, v40, v8);
      v42 = &v36[v37 * v39];
      v43 = v146;
      v156 = v41;
      v41(v38, v42, v8);
      LODWORD(v163) = sub_21AFA921C();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v38, v8);
        (v142)(v43, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v32 = v169;
      v44 = *v169;
      (*v169)(v38, v8);
      v155 = v44;
      (v44)(v43, v8);
      v45 = v149 + 2;
      v46 = &v36[v37 * (v149 + 2)];
      v34 = v157;
      v47 = v37;
      v167 = v37;
      v48 = v164;
      while (1)
      {
        v49 = v45;
        if (v34 + 1 >= v48)
        {
          break;
        }

        v50 = v34;
        v51 = v162;
        v5 = v156;
        (v156)(v160, v46, v162);
        v5(v161, v40, v51);
        v52 = sub_21B110CD4();
        v54 = v53;
        if (v52 == sub_21B110CD4() && v54 == v55)
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_21B112D04();
        }

        v58 = v162;
        v32 = v155;
        (v155)(v161, v162);
        (v32)(v160, v58);
        v47 = v167;
        v46 += v167;
        v40 += v167;
        v34 = v50 + 1;
        v45 = v49 + 1;
        v48 = v164;
        if ((v163 ^ v57))
        {
          goto LABEL_16;
        }
      }

      v34 = v48;
LABEL_16:
      if (v163)
      {
        v33 = v149;
        if (v34 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v34)
        {
          v26 = v158;
          v32 = v145;
          v8 = v162;
          v15 = v154;
          goto LABEL_39;
        }

        if (v48 >= v49)
        {
          v59 = v49;
        }

        else
        {
          v59 = v48;
        }

        v60 = v47 * (v59 - 1);
        v61 = v47 * v59;
        v62 = v149;
        v63 = v149 * v47;
        v64 = v34;
        do
        {
          if (v62 != --v64)
          {
            v65 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v66 = v162;
            v164 = *v168;
            v164(v152, &v65[v63], v162);
            v67 = v63 < v60 || &v65[v63] >= &v65[v61];
            if (v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v65[v60], v152, v66);
            v5 = v148;
            v47 = v167;
          }

          ++v62;
          v60 -= v47;
          v61 -= v47;
          v63 += v47;
        }

        while (v62 < v64);
      }

      else
      {
        v5 = v148;
      }

      v26 = v158;
      v32 = v145;
      v8 = v162;
      v15 = v154;
      v33 = v149;
    }

LABEL_39:
    v68 = v159[1];
    if (v34 < v68)
    {
      if (__OFSUB__(v34, v33))
      {
        goto LABEL_146;
      }

      if (v34 - v33 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v34 < v33)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21B0D4B14(0, *(v32 + 2) + 1, 1, v32);
      v32 = v134;
    }

    v91 = *(v32 + 2);
    v90 = *(v32 + 3);
    v92 = v91 + 1;
    v157 = v34;
    if (v91 >= v90 >> 1)
    {
      sub_21B0D4B14(v90 > 1, v91 + 1, 1, v32);
      v32 = v135;
    }

    *(v32 + 2) = v92;
    v93 = v32 + 32;
    v94 = &v32[16 * v91 + 32];
    v95 = v157;
    *v94 = v149;
    *(v94 + 1) = v95;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v91)
    {
      while (1)
      {
        v96 = v92 - 1;
        v97 = &v93[16 * v92 - 16];
        v98 = &v32[16 * v92];
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v32 + 4);
          v100 = *(v32 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_82:
          if (v102)
          {
            goto LABEL_132;
          }

          v114 = *v98;
          v113 = *(v98 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_135;
          }

          v118 = *(v97 + 1);
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_140;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v92 < 2)
        {
          goto LABEL_134;
        }

        v121 = *v98;
        v120 = *(v98 + 1);
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_97:
        if (v117)
        {
          goto LABEL_137;
        }

        v123 = *v97;
        v122 = *(v97 + 1);
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_139;
        }

        if (v124 < v116)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v96 - 1 >= v92)
        {
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v128 = v32;
        v129 = &v93[16 * v96 - 16];
        v32 = *v129;
        v130 = &v93[16 * v96];
        v131 = *(v130 + 1);
        sub_21AFAACE8(&(*v159)[*(v158 + 72) * *v129], &(*v159)[*(v158 + 72) * *v130], &(*v159)[*(v158 + 72) * v131], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v131 < v32)
        {
          goto LABEL_127;
        }

        v132 = *(v128 + 2);
        if (v96 > v132)
        {
          goto LABEL_128;
        }

        *v129 = v32;
        *(v129 + 1) = v131;
        if (v96 >= v132)
        {
          goto LABEL_129;
        }

        v92 = v132 - 1;
        sub_21B0D61C0(v130 + 16, v132 - 1 - v96, &v93[16 * v96]);
        v32 = v128;
        *(v128 + 2) = v132 - 1;
        v133 = v132 > 2;
        v15 = v154;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v103 = &v93[16 * v92];
      v104 = *(v103 - 8);
      v105 = *(v103 - 7);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_130;
      }

      v108 = *(v103 - 6);
      v107 = *(v103 - 5);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_131;
      }

      v110 = *(v98 + 1);
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_133;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_136;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = *(v97 + 1);
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_144;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v26 = v158;
    v30 = v159[1];
    v31 = v157;
    v8 = v162;
    v28 = v144;
    v29 = v146;
    if (v157 >= v30)
    {
      goto LABEL_114;
    }
  }

  v69 = (v33 + v143);
  if (__OFADD__(v33, v143))
  {
    goto LABEL_147;
  }

  if (v69 >= v68)
  {
    v69 = v159[1];
  }

  if (v69 < v33)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v32 = sub_21B0D61A8(v32, v22, v23, v24);
LABEL_116:
    v136 = v32 + 16;
    v137 = *(v32 + 2);
    while (v137 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v138 = v32;
      v32 += 16 * v137;
      v139 = *v32;
      v140 = &v136[2 * v137];
      v141 = *(v140 + 1);
      sub_21AFAACE8(&(*v159)[*(v158 + 72) * *v32], &(*v159)[*(v158 + 72) * *v140], &(*v159)[*(v158 + 72) * v141], v170);
      if (v5)
      {
        break;
      }

      if (v141 < v139)
      {
        goto LABEL_141;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_142;
      }

      *v32 = v139;
      *(v32 + 1) = v141;
      v22 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_143;
      }

      v137 = *v136 - 1;
      sub_21B0D61C0(v140 + 16, v22, v140);
      *v136 = v137;
      v32 = v138;
    }

    goto LABEL_124;
  }

  if (v34 == v69)
  {
    goto LABEL_62;
  }

  v145 = v32;
  v148 = v5;
  v70 = *v159;
  v71 = *(v26 + 72);
  v167 = *(v26 + 16);
  v72 = &v70[v71 * (v34 - 1)];
  v163 = -v71;
  v164 = v70;
  v73 = (v33 - v34);
  v150 = v71;
  v151 = v69;
  v74 = &v70[v34 * v71];
  v75 = v166;
LABEL_48:
  v156 = v72;
  v157 = v34;
  v153 = v74;
  v155 = v73;
  while (1)
  {
    v76 = v167;
    (v167)(v75, v74, v8);
    v76(v15, v72, v8);
    v77 = v15;
    v78 = sub_21B110CD4();
    v79 = v8;
    v81 = v80;
    if (v78 == sub_21B110CD4() && v81 == v82)
    {

      v89 = *v169;
      (*v169)(v77, v79);
      (v89)(v75, v79);
      v8 = v79;
      v15 = v77;
      goto LABEL_60;
    }

    v84 = v75;
    v85 = sub_21B112D04();

    v86 = *v169;
    (*v169)(v77, v79);
    (v86)(v84, v79);
    v8 = v79;
    v15 = v77;
    if ((v85 & 1) == 0)
    {
      v75 = v166;
LABEL_60:
      v34 = v157 + 1;
      v72 = &v156[v150];
      v73 = v155 - 1;
      v74 = &v153[v150];
      if ((v157 + 1) == v151)
      {
        v34 = v151;
        v5 = v148;
        v32 = v145;
        v33 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v87 = *v168;
    v88 = v165;
    (*v168)(v165, v74, v79);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v88, v79);
    v72 += v163;
    v74 += v163;
    v67 = __CFADD__(v73++, 1);
    v75 = v166;
    if (v67)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_21AFAACE8(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = sub_21B110D94();
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_21AFCC2B8(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_21B110CD4();
      v36 = v35;
      if (v34 == sub_21B110CD4() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_21B112D04();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_21AFCC2B8(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_21B110CD4();
    v54 = v53;
    if (v52 == sub_21B110CD4() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_21B112D04();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_21AFD1AA8(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_21AFAB304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21AFAB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_21B1125E4();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_21AFAB410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43088, &qword_21B114D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AFAB478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFAB52C(uint64_t a1, uint64_t a2)
{
  sub_21AFABF70();

  return sub_21B111F34();
}

uint64_t sub_21AFAB5D4(uint64_t a1, uint64_t a2)
{
  sub_21AFABF1C();

  return sub_21B111F34();
}

uint64_t sub_21AFAB648()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43098);
  __swift_project_value_buffer(v0, qword_27CD43098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RETENTION_TYPE_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RETENTION_TYPE_NEW";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RETENTION_TYPE_DORMANT";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RETENTION_TYPE_CHURNED";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RETENTION_TYPE_RETURNED";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETENTION_TYPE_RETAINED";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21AFAB928()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD430B0);
  __swift_project_value_buffer(v0, qword_27CD430B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USE_COHORT_FREQUENCY_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "USE_COHORT_FREQUENCY_CASUAL_USER";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USE_COHORT_FREQUENCY_MEDIUM_USER";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "USE_COHORT_FREQUENCY_POWER_USER";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21AFABB88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21B112254();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_21AFABC24()
{
  result = qword_27CD430C8;
  if (!qword_27CD430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430C8);
  }

  return result;
}

unint64_t sub_21AFABC7C()
{
  result = qword_27CD430D0;
  if (!qword_27CD430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430D0);
  }

  return result;
}

unint64_t sub_21AFABCD4()
{
  result = qword_27CD430D8;
  if (!qword_27CD430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430D8);
  }

  return result;
}

unint64_t sub_21AFABD5C()
{
  result = qword_27CD430F0;
  if (!qword_27CD430F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430F0);
  }

  return result;
}

unint64_t sub_21AFABDB4()
{
  result = qword_27CD430F8;
  if (!qword_27CD430F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430F8);
  }

  return result;
}

unint64_t sub_21AFABE0C()
{
  result = qword_27CD43100;
  if (!qword_27CD43100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43100);
  }

  return result;
}

uint64_t sub_21AFABE90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_21AFABF1C()
{
  result = qword_27CD43118;
  if (!qword_27CD43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43118);
  }

  return result;
}

unint64_t sub_21AFABF70()
{
  result = qword_27CD43120;
  if (!qword_27CD43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43120);
  }

  return result;
}

uint64_t sub_21AFAC000(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112404();
  v4 = v3;
  if (v2 == sub_21B112404() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_27_1(v2);
  }

  return v7 & 1;
}

uint64_t sub_21AFAC078(unsigned __int8 a1, char a2)
{
  v2 = 7630441;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7630441;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x3436746E69;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393013;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x3436746E6975;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x74616F6C66;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x676E69727473;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x616D65686373;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 10:
      v6 = 0xE600000000000000;
      v2 = 0x616D65686373;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v5);
  }

  return v8 & 1;
}

BOOL sub_21AFAC2C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_21AFAC2F0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_21AFAC30C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1801807223;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1801807223;
  }

  else
  {
    v5 = 7954788;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_21AFAC3E0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x736D756E65;
  }

  else
  {
    v3 = 0x73616D65686373;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x736D756E65;
  }

  else
  {
    v5 = 0x73616D65686373;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_21AFAC470(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6867696C746F7073;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000021B12FFA0;
  }

  else
  {
    v4 = 0xEE00797272614374;
  }

  if (a2)
  {
    v5 = 0x6867696C746F7073;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = 0xEE00797272614374;
  }

  else
  {
    v6 = 0x800000021B12FFA0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_21AFAC514(unsigned __int8 a1, char a2)
{
  v2 = 0x746E65696C63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746E65696C63;
  switch(v4)
  {
    case 1:
      v5 = 0x6D5F656369766564;
      v3 = 0xEC0000006C65646FLL;
      break;
    case 2:
      v3 = 0x800000021B12FFD0;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6D726F6674616C70;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x800000021B12FFF0;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E7265746E69;
      break;
    case 7:
      v5 = 0x765F657069636572;
      v3 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D5F656369766564;
      v6 = 0xEC0000006C65646FLL;
      break;
    case 2:
      v6 = 0x800000021B12FFD0;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6D726F6674616C70;
      break;
    case 4:
      v2 = 0xD000000000000011;
      v6 = 0x800000021B12FFF0;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1684366707;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E7265746E69;
      break;
    case 7:
      v2 = 0x765F657069636572;
      v6 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_21AFAC730(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x746E6174736E6F63;
  v4 = a1;
  v5 = 0x746E6174736E6F63;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0x800000021B12FE70;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x800000021B12FEB0;
      break;
    case 3:
      v5 = 0x7461676572676761;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v5 = 0x6974636172747865;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1852403562;
      break;
    case 6:
      v5 = 0x6572615761746164;
      v6 = 0xED00006573756F68;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v5 = 0x6574616C706D6574;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v5 = 0x64616F6C7075;
      break;
    case 9:
      v6 = 0xE800000000000000;
      v5 = 0x6C656E69746E6573;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000021B12FE70;
      v3 = 0xD000000000000011;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x800000021B12FEB0;
      break;
    case 3:
      v3 = 0x7461676572676761;
      v2 = 0xEB000000006E6F69;
      break;
    case 4:
      v3 = 0x6974636172747865;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1852403562;
      break;
    case 6:
      v3 = 0x6572615761746164;
      v2 = 0xED00006573756F68;
      break;
    case 7:
      v2 = 0xE800000000000000;
      v3 = 0x6574616C706D6574;
      break;
    case 8:
      v2 = 0xE600000000000000;
      v3 = 0x64616F6C7075;
      break;
    case 9:
      v2 = 0xE800000000000000;
      v3 = 0x6C656E69746E6573;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

BOOL sub_21AFAC9C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_21B115E78[a1];
  }

  if (a4)
  {
    a3 = qword_21B115E78[a3];
  }

  return a1 == a3;
}

uint64_t sub_21AFACB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_21AFB33AC(a4, a5, a6);
  sub_21B1125B4();
  sub_21B1125B4();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21B112D04();
  }

  return v10 & 1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.init()@<X0>(uint64_t a2@<X8>)
{
  sub_21B111EB4();
  v3 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  if (qword_27CD424D8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27CD43168;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.setter()
{
  v4 = OUTLINED_FUNCTION_7_4();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4(v6 + 16, v5);
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.setter()
{
  result = OUTLINED_FUNCTION_7_4();
  v5 = *(v0 + v3);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    result = OUTLINED_FUNCTION_34_1(v7);
  }

  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.setter()
{
  result = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    result = OUTLINED_FUNCTION_20_1(v6);
  }

  *(v4 + 41) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  if (*(v2 + 40) <= -3)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.getter()
{
  OUTLINED_FUNCTION_5_6();
  LODWORD(v1) = *(*(v0 + v1) + 41);
  return (v1 < -2) & v1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.getter()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_48_0();
  if (v0 <= 0xFD)
  {
    return ((v0 & 0x80u) == 0) & v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_6();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_20_1(v8);
  }

  OUTLINED_FUNCTION_14_4(v6 + 120, v5);
  *(v6 + 120) = a1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.setter(char a1)
{
  result = OUTLINED_FUNCTION_8_6();
  v5 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    result = OUTLINED_FUNCTION_20_1(v7);
  }

  *(v5 + 32) = a1 & 1;
  *(v5 + 40) = 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 44, v4);
  *(v5 + 44) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.setter()
{
  result = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    result = OUTLINED_FUNCTION_20_1(v6);
  }

  *(v4 + 41) = v0 & 1 | 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 52, v4);
  *(v5 + 52) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 60, v4);
  *(v5 + 60) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 64, v4);
  *(v5 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 68, v4);
  *(v5 + 68) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weekOverWeekRetention.setter()
{
  v4 = OUTLINED_FUNCTION_7_4();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4(v6 + 72, v5);
  *(v6 + 72) = v1;
  *(v6 + 80) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.monthOverMonthRetention.setter()
{
  v4 = OUTLINED_FUNCTION_7_4();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4(v6 + 88, v5);
  *(v6 + 88) = v1;
  *(v6 + 96) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyUsageCohort.setter()
{
  v4 = OUTLINED_FUNCTION_7_4();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4(v6 + 104, v5);
  *(v6 + 104) = v1;
  *(v6 + 112) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 132, v4);
  *(v5 + 132) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 140, v4);
  *(v5 + 140) = v0;
  return result;
}

unint64_t Apple_Parsec_Ondeviceanalytics_SpotlightMetric.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x5E;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21AFAD4D4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFAD508(uint64_t a1, uint64_t a2)
{
  sub_21AFB3BE0();

  return sub_21B111F34();
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 16, v3);
  OUTLINED_FUNCTION_38_0(*(v2 + 16));
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_18_1(v2) + 88) = v0;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_12_4(v0 + 16);
  OUTLINED_FUNCTION_49_0(*(v0 + 16));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAD670()
{
  OUTLINED_FUNCTION_6_4();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = *(v4 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;

  free(v0);
}

void sub_21AFAD728(uint64_t a1@<X8>)
{
  Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.setter()
{
  result = OUTLINED_FUNCTION_7_4();
  v5 = *(v0 + v3);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    result = OUTLINED_FUNCTION_34_1(v7);
  }

  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_37_0(v3);
  return sub_21AFAD854;
}

uint64_t sub_21AFAD854(uint64_t a1)
{
  result = OUTLINED_FUNCTION_40_0(a1);
  v6 = *(v4 + v3);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    result = OUTLINED_FUNCTION_43_0();
    v6 = result;
    *(v4 + v3) = result;
  }

  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  result = OUTLINED_FUNCTION_5_6();
  v5 = *(v1 + v4);
  v6 = *(v5 + 40);
  if (v6 < 0)
  {
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = *(v5 + 32);
  }

  *a1 = v7;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  v5 = *(v4 + 40);
  if (v5 < 0)
  {
    v6 = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *a1 = v6;
  *(a1 + 8) = v5 & 1;
  return sub_21AFAD854;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.modify(uint64_t a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 40) <= -3)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *(a1 + 12) = v5 & 1;
  return sub_21AFAD9D8;
}

uint64_t sub_21AFAD9D8()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 12);
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v0);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v6);
  }

  *(v5 + 32) = v3;
  *(v5 + 40) = 0x80;
  return result;
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_48_0();
  *a1 = v2;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.setter(char *a1)
{
  v3 = v1;
  v4 = *a1;
  result = OUTLINED_FUNCTION_8_6();
  v6 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    result = sub_21AFB1408(v7);
    v6 = result;
    *(v3 + v2) = result;
  }

  *(v6 + 41) = v4;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.modify(uint64_t a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  OUTLINED_FUNCTION_48_0();
  *(a1 + 12) = v4;
  return sub_21AFADB8C;
}

uint64_t sub_21AFADB8C()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 12);
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v0);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v6);
  }

  *(v5 + 41) = v3;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.modify(uint64_t a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  OUTLINED_FUNCTION_48_0();
  if (v4 <= 0xFD)
  {
    v5 = ((v4 & 0x80u) == 0) & v4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 12) = v5;
  return sub_21AFADC5C;
}

uint64_t sub_21AFADC5C()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 12);
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v0);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v6);
  }

  *(v5 + 41) = v3;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.modify(uint64_t a1))()
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  v4 = *(v1 + v3);
  *(a1 + 8) = v3;
  *(a1 + 12) = (*(v4 + 41) < -2) & *(v4 + 41);
  return sub_21AFADD1C;
}

uint64_t sub_21AFADD1C()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 12);
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v0);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v6);
  }

  *(v5 + 41) = v3 | 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 44, v3);
  return *(v2 + 44);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFADE14(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 44) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 48, v4);
  *(v5 + 48) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_18_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_6();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_12_4(v5 + 48);
  *(v1 + 84) = *(v5 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFADF9C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 52, v3);
  return *(v2 + 52);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE0BC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 52) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_18_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_6();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_12_4(v5 + 56);
  *(v1 + 84) = *(v5 + 56);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE1E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 60, v3);
  return *(v2 + 60);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 60);
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE300(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 60) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE414(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 64) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 68, v3);
  return *(v2 + 68);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE528(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 68) = v3;

  free(v1);
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weekOverWeekRetention.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 72, v3);
  OUTLINED_FUNCTION_38_0(*(v2 + 72));
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weekOverWeekRetention.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_18_1(v2) + 88) = v0;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_12_4(v0 + 72);
  OUTLINED_FUNCTION_49_0(*(v0 + 72));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE654()
{
  OUTLINED_FUNCTION_6_4();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = *(v4 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 72) = v2;
  *(v6 + 80) = v3;

  free(v0);
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.monthOverMonthRetention.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 88, v3);
  OUTLINED_FUNCTION_38_0(*(v2 + 88));
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.monthOverMonthRetention.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_18_1(v2) + 88) = v0;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_12_4(v0 + 88);
  OUTLINED_FUNCTION_49_0(*(v0 + 88));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE790()
{
  OUTLINED_FUNCTION_6_4();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = *(v4 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 88) = v2;
  *(v6 + 96) = v3;

  free(v0);
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyUsageCohort.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 104, v3);
  OUTLINED_FUNCTION_38_0(*(v2 + 104));
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyUsageCohort.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_18_1(v2) + 88) = v0;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_12_4(v0 + 104);
  OUTLINED_FUNCTION_49_0(*(v0 + 104));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE8CC()
{
  OUTLINED_FUNCTION_6_4();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = *(v4 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 104) = v2;
  *(v6 + 112) = v3;

  free(v0);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.getter()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_3(*(v0 + v1) + 120, v2);
}

void (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_18_1(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_6();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_12_4(v4 + 120);
  *(v1 + 48) = *(v4 + 120);

  return sub_21AFAEA40;
}

void sub_21AFAEA40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.setter(v4);
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 64);
      v10 = *(v2 + 56);
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
      OUTLINED_FUNCTION_18_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_16_1();
      v8 = sub_21AFB1408(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_31_1(v8 + 120, v2 + 24);
    *(v8 + 120) = v3;
  }

  free(v2);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 128, v3);
  return *(v2 + 128);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 128);
  *(v1 + 80) = *(v0 + 128);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAEB94(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 128) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 132, v3);
  return *(v2 + 132);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 132);
  *(v1 + 80) = *(v0 + 132);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAECA8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 132) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 136);
  *(v1 + 80) = *(v0 + 136);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAEDBC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 140, v3);
  return *(v2 + 140);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4(v0 + 140);
  *(v1 + 80) = *(v0 + 140);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAEED0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 140) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.unknownFields.setter()
{
  OUTLINED_FUNCTION_36_0();
  sub_21B111EC4();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.metric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
}