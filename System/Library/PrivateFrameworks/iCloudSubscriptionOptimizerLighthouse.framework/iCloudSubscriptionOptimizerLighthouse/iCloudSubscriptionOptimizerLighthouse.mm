uint64_t EvaluationDataSearch.notificationsFromNotifStream.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t EvaluationDataSearch.notificationsFromSubStream.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *EvaluationDataSearch.__allocating_init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:offsetTimeInterval:withBiomeManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[2] = MEMORY[0x277D84F90];
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  v12[8] = a5;
  sub_275B954F8(a6, (v12 + 9));
  return v12;
}

void *EvaluationDataSearch.init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:offsetTimeInterval:withBiomeManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = MEMORY[0x277D84F90];
  v6[2] = MEMORY[0x277D84F90];
  v6[3] = v7;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  sub_275B954F8(a6, (v6 + 9));
  return v6;
}

uint64_t sub_275B954F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Bool __swiftcall EvaluationDataSearch.hasiCloudNotifsFromNotifStream()()
{
  v1 = v0;
  sub_275B99974();
  v2 = sub_275B99964();
  swift_beginAccess();
  *(v1 + 16) = v2;

  return *(*(v1 + 16) + 16) != 0;
}

Swift::Bool __swiftcall EvaluationDataSearch.hasiCloudNotifsFromSubStream()()
{
  v1 = v0;
  sub_275B99974();
  v2 = sub_275B99954();
  swift_beginAccess();
  *(v1 + 24) = v2;

  return *(*(v1 + 24) + 16) != 0;
}

uint64_t EvaluationDataSearch.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  return v0;
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

uint64_t EvaluationDataSearch.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_275B9573C()
{
  sub_275B99AD4();
  MEMORY[0x277C8A200](0);
  return sub_275B99AF4();
}

uint64_t sub_275B957A8(uint64_t a1)
{
  sub_275B99AD4();
  MEMORY[0x277C8A200](0);
  return sub_275B99AF4();
}

uint64_t sub_275B957F8()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35C18);
  __swift_project_value_buffer(v0, qword_280A35C18);
  type metadata accessor for RecipeParser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C60, &qword_275B99FD8);
  return sub_275B998C4();
}

void *RecipeParser.__allocating_init(recipePath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;
  RecipeParser.parsing()();
  if (v5)
  {
  }

  return v4;
}

void *RecipeParser.init(recipePath:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  RecipeParser.parsing()();
  if (v3)
  {
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RecipeParser.parsing()()
{
  v33[4] = *MEMORY[0x277D85DE8];
  v30 = sub_275B99804();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C30, "D\t");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_275B99844();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v29 = v0;
  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v30);

  sub_275B99824();
  v13 = v31;
  v14 = sub_275B99854();
  if (v13)
  {
    (*(v8 + 8))(v10, v7);
    v16 = v13;
LABEL_3:
    if (qword_280A35C00 != -1)
    {
      swift_once();
    }

    v17 = sub_275B998B4();
    __swift_project_value_buffer(v17, qword_280A35C18);
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_275B99A54();
    MEMORY[0x277C8A120](0xD00000000000001BLL, 0x8000000275B9A200);
    MEMORY[0x277C8A120](v11, v12);
    MEMORY[0x277C8A120](0x7265206874697720, 0xED0000203A726F72);
    v32 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C38, &qword_275B9A040);
    sub_275B99A64();
    MEMORY[0x277C8A120](46, 0xE100000000000000);
    sub_275B998A4();

    sub_275B95E54();
    swift_allocError();
    swift_willThrow();
    MEMORY[0x277C8A3D0](v16);
    return;
  }

  v18 = v14;
  v19 = v15;
  v20 = v29;
  (*(v8 + 8))(v10, v7);
  v21 = objc_opt_self();
  v22 = sub_275B99864();
  v33[0] = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:v33];

  if (!v23)
  {
    v27 = v33[0];
    v16 = sub_275B997E4();

    swift_willThrow();
    sub_275B96C4C(v18, v19);
    goto LABEL_3;
  }

  v24 = v33[0];
  sub_275B99A44();
  sub_275B96C4C(v18, v19);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C48, "D\t");
  v25 = swift_dynamicCast();
  v26 = v32;
  if (!v25)
  {
    v26 = 0;
  }

  *(v20 + 32) = v26;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_275B95E54()
{
  result = qword_280A35C40;
  if (!qword_280A35C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C40);
  }

  return result;
}

uint64_t sub_275B95EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    sub_275B96E0C(a1, a2);
    if (v8)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v14;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v9 = sub_275B998B4();
        __swift_project_value_buffer(v9, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        v10 = sub_275B99A74();
        MEMORY[0x277C8A120](v10);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v11 = sub_275B998B4();
  __swift_project_value_buffer(v11, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  v12 = sub_275B99A74();
  MEMORY[0x277C8A120](v12);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();
LABEL_13:

  return a3;
}

unint64_t sub_275B9617C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 32);
  if (v9 && *(v9 + 16))
  {

    sub_275B96E0C(a1, a2);
    if (v10)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v14;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v11 = sub_275B998B4();
        __swift_project_value_buffer(v11, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        MEMORY[0x277C8A120]();
        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();

        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v12 = sub_275B998B4();
  __swift_project_value_buffer(v12, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  MEMORY[0x277C8A120](a3, a4);
  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();

  return a3;
}

uint64_t sub_275B96430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    sub_275B96E0C(a1, a2);
    if (v8)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C58, &qword_275B99FD0);
      if (swift_dynamicCast())
      {
        a3 = v14;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v9 = sub_275B998B4();
        __swift_project_value_buffer(v9, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        v10 = MEMORY[0x277C8A140](v14, MEMORY[0x277D83B88]);
        MEMORY[0x277C8A120](v10);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();

        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v11 = sub_275B998B4();
  __swift_project_value_buffer(v11, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  v12 = MEMORY[0x277C8A140](a3, MEMORY[0x277D83B88]);
  MEMORY[0x277C8A120](v12);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();

  return a3;
}

uint64_t sub_275B9670C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    sub_275B96E0C(a1, a2);
    if (v8)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v16;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v9 = sub_275B998B4();
        __swift_project_value_buffer(v9, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        if (v16)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v16)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        MEMORY[0x277C8A120](v10, v11);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v12 = sub_275B998B4();
  __swift_project_value_buffer(v12, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  if (a3)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a3)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x277C8A120](v13, v14);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();
LABEL_25:

  return a3 & 1;
}

Swift::Int64 __swiftcall RecipeParser.getOffsetTimeInterval()()
{
  sub_275B99904();
  v0 = sub_275B998E4();

  return sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v0);
}

Swift::String __swiftcall RecipeParser.getLabelingSource()()
{
  v0 = sub_275B999A4();
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v1, v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t RecipeParser.getPercentileToChooseOffset()()
{
  v0 = *sub_275B99984();

  v1 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v0);

  return v1;
}

uint64_t RecipeParser.deinit()
{

  return v0;
}

uint64_t RecipeParser.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_275B96C4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for PluginAssetError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PluginAssetError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_275B96DB8()
{
  result = qword_280A35C50;
  if (!qword_280A35C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C50);
  }

  return result;
}

unint64_t sub_275B96E0C(uint64_t a1, uint64_t a2)
{
  sub_275B99AD4();
  sub_275B999F4();
  v4 = sub_275B99AF4();

  return sub_275B96E84(a1, a2, v4);
}

unint64_t sub_275B96E84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_275B99A84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275B96FBC(uint64_t *a1, int a2)
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

uint64_t sub_275B97004(uint64_t result, int a2, int a3)
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

uint64_t sub_275B97050()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35C68);
  __swift_project_value_buffer(v0, qword_280A35C68);
  type metadata accessor for ShadowModelProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C98, &qword_275B9A080);
  return sub_275B998C4();
}

uint64_t ShadowModelProvider.modelPaths.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *ShadowModelProvider.__allocating_init(modelPaths:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ShadowModelProvider.init(modelPaths:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ShadowModelProvider.getModels()()
{
  v70[2] = *MEMORY[0x277D85DE8];
  v1 = sub_275B99924();
  v63 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v66 = &v49 - v5;
  v62 = sub_275B99804();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_275B99844();
  v8 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v16 = v0[2];
  v15 = v0[3];
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v58 = v4;
  sub_275B99814();
  if (qword_280A35C08 != -1)
  {
    swift_once();
  }

  v18 = sub_275B998B4();
  v19 = __swift_project_value_buffer(v18, qword_280A35C68);
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  sub_275B99A54();

  v70[0] = 0xD000000000000010;
  v70[1] = 0x8000000275B9A2A0;
  v64 = v14;
  v20 = sub_275B997F4();
  MEMORY[0x277C8A120](v20);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();

  v21 = v0[4];
  v22 = sub_275B999E4();
  v70[0] = 0;
  v23 = [v21 contentsOfDirectoryAtPath:v22 error:v70];

  v24 = v70[0];
  if (v23)
  {
    v25 = v6;
    v59 = v19;
    v26 = sub_275B99A14();
    v27 = v24;

    v28 = *(v26 + 16);
    v51 = v8;
    v50 = v26;
    if (v28)
    {
      v57 = *MEMORY[0x277CC91D8];
      v55 = (v25 + 8);
      v56 = (v25 + 104);
      v53 = (v8 + 8);
      v54 = (v8 + 16);
      v29 = sub_275B979B4();
      v30 = (v26 + 40);
      v31 = MEMORY[0x277D84F90];
      v52 = v29;
      do
      {
        v33 = *(v30 - 1);
        v32 = *v30;
        v70[0] = v33;
        v70[1] = v32;
        v68 = 0x6C65646F6D6C6D2ELL;
        v69 = 0xE900000000000063;

        if (sub_275B99A34())
        {
          v70[0] = v33;
          v70[1] = v32;
          v35 = v61;
          v34 = v62;
          (*v56)(v61, v57, v62);
          v36 = v31;
          v37 = v65;
          sub_275B99834();
          (*v55)(v35, v34);
          (*v54)(v60, v37, v67);
          v38 = v66;
          sub_275B99914();
          v70[0] = 0;
          v70[1] = 0xE000000000000000;

          sub_275B99A54();

          strcpy(v70, "Load model ");
          HIDWORD(v70[1]) = -352321536;
          MEMORY[0x277C8A120](v33, v32);

          MEMORY[0x277C8A120](8250, 0xE200000000000000);
          sub_275B97A08();
          v31 = v36;
          v39 = sub_275B99A74();
          MEMORY[0x277C8A120](v39);

          MEMORY[0x277C8A120](46, 0xE100000000000000);
          sub_275B99894();

          v40 = v58;
          sub_275B97A60(v38, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_275B97B2C(0, v36[2] + 1, 1, v36);
          }

          v42 = v31[2];
          v41 = v31[3];
          if (v42 >= v41 >> 1)
          {
            v31 = sub_275B97B2C((v41 > 1), v42 + 1, 1, v31);
          }

          sub_275B97D04(v66);
          (*v53)(v65, v67);
          v31[2] = v42 + 1;
          sub_275B97D60(v40, v31 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v42);
        }

        else
        {
        }

        v30 += 2;
        --v28;
      }

      while (v28);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_275B99A54();

    strcpy(v70, "Found files: ");
    HIWORD(v70[1]) = -4864;
    v45 = MEMORY[0x277C8A140](v50, MEMORY[0x277D837D0]);
    v47 = v46;

    MEMORY[0x277C8A120](v45, v47);

    MEMORY[0x277C8A120](46, 0xE100000000000000);
    sub_275B99894();

    v8 = v51;
  }

  else
  {
    v43 = v70[0];
    v44 = sub_275B997E4();

    swift_willThrow();
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_275B99A54();
    MEMORY[0x277C8A120](0xD00000000000001BLL, 0x8000000275B9A2C0);
    MEMORY[0x277C8A120](v16, v15);
    MEMORY[0x277C8A120](0x7265206874697720, 0xED0000203A726F72);
    v68 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C38, &qword_275B9A040);
    sub_275B99A64();
    sub_275B998A4();

    MEMORY[0x277C8A3D0](v44);
    v31 = MEMORY[0x277D84F90];
  }

  (*(v8 + 8))(v64, v67);
  return v31;
}

unint64_t sub_275B979B4()
{
  result = qword_280A35C80;
  if (!qword_280A35C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C80);
  }

  return result;
}

unint64_t sub_275B97A08()
{
  result = qword_280A35C88;
  if (!qword_280A35C88)
  {
    sub_275B99844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C88);
  }

  return result;
}

uint64_t sub_275B97A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B99924();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModelProvider.deinit()
{

  return v0;
}

uint64_t ShadowModelProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_275B97B2C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C90, &qword_275B9A078);
  v10 = *(sub_275B99924() - 8);
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
  v15 = *(sub_275B99924() - 8);
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

uint64_t sub_275B97D04(uint64_t a1)
{
  v2 = sub_275B99924();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B97D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B99924();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModeMain.recipePath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);

  return v1;
}

uint64_t ShadowModeMain.modelPaths.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);

  return v1;
}

uint64_t sub_275B97EA0()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35CA0);
  __swift_project_value_buffer(v0, qword_280A35CA0);
  type metadata accessor for ShadowModeMain(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35D28, &unk_275B9A0F0);
  return sub_275B998C4();
}

uint64_t ShadowModeMain.__allocating_init(recipePath:modelPaths:trialSet:withBiomeManager:withFileManager:withSkipPublishMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, char a8)
{
  v43 = a6;
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);
  *v15 = a1;
  v15[1] = a2;
  v16 = (v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  *v16 = a3;
  v16[1] = a4;
  v17 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet;
  v41 = a5;
  sub_275B994A4(a5, v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v18 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager;
  *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager) = a7;
  *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_skipPublishMetrics) = a8;
  type metadata accessor for RecipeParser();
  inited = swift_initStackObject();
  inited[3] = a2;
  inited[4] = 0;
  inited[2] = a1;

  v20 = a7;
  RecipeParser.parsing()();
  if (v21)
  {

    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_1(v43);
    v22 = MEMORY[0x277D7F888];
    sub_275B9950C(v41, MEMORY[0x277D7F888]);
    sub_275B9950C(v14 + v17, v22);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v20;
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets) = sub_275B95EA8(0x657366664F6D756ELL, 0xEA00000000007374, 23);
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow) = sub_275B95EA8(0xD000000000000016, 0x8000000275B9A180, 10);
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow) = sub_275B95EA8(0xD000000000000014, 0x8000000275B9A1A0, 3);
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays) = sub_275B95EA8(0xD000000000000013, 0x8000000275B9A1C0, 3);
    sub_275B99904();
    v24 = sub_275B998E4();
    sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v24);
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval) = sub_275B998F4();
    v25 = *sub_275B99984();

    v26 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v25);

    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles) = v26;
    v27 = sub_275B999A4();
    v28 = *v27;
    v29 = v27[1];

    v30 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v28, v29);
    v32 = v31;

    v33 = (v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
    *v33 = v30;
    v33[1] = v32;
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_minsUntilOpen) = sub_275B95EA8(0x69746E55736E696DLL, 0xED00006E65704F6CLL, 4320);
    v34 = sub_275B9670C(0x746144796D6D7564, 0xE900000000000061, 0);
    *(v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_dummyData) = v34 & 1;
    if (v34)
    {
      v35 = sub_275B99944();
      v36 = swift_allocObject();
      v42[3] = v35;
      v42[4] = MEMORY[0x277D7F8B0];

      swift_setDeallocating();

      v42[0] = v36;
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_275B9950C(v41, MEMORY[0x277D7F888]);
      v37 = v42;
      v38 = v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
    }

    else
    {
      sub_275B9950C(v41, MEMORY[0x277D7F888]);

      swift_setDeallocating();

      v38 = v14 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
      v37 = v43;
    }

    sub_275B954F8(v37, v38);
  }

  return v14;
}

uint64_t ShadowModeMain.init(recipePath:modelPaths:trialSet:withBiomeManager:withFileManager:withSkipPublishMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, char a8)
{
  v9 = v8;
  v40 = a6;
  v15 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);
  *v15 = a1;
  v15[1] = a2;
  v16 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  *v16 = a3;
  v16[1] = a4;
  v17 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet;
  sub_275B994A4(a5, v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v38 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager;
  *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager) = a7;
  *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_skipPublishMetrics) = a8;
  type metadata accessor for RecipeParser();
  inited = swift_initStackObject();
  inited[3] = a2;
  inited[4] = 0;
  inited[2] = a1;

  v19 = a7;
  RecipeParser.parsing()();
  if (v20)
  {

    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_1(v40);
    v21 = MEMORY[0x277D7F888];
    sub_275B9950C(a5, MEMORY[0x277D7F888]);
    sub_275B9950C(v9 + v17, v21);

    type metadata accessor for ShadowModeMain(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets) = sub_275B95EA8(0x657366664F6D756ELL, 0xEA00000000007374, 23);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow) = sub_275B95EA8(0xD000000000000016, 0x8000000275B9A180, 10);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow) = sub_275B95EA8(0xD000000000000014, 0x8000000275B9A1A0, 3);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays) = sub_275B95EA8(0xD000000000000013, 0x8000000275B9A1C0, 3);
    sub_275B99904();
    v22 = sub_275B998E4();
    sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v22);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval) = sub_275B998F4();
    v23 = *sub_275B99984();

    v24 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v23);

    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles) = v24;
    v25 = sub_275B999A4();
    v26 = *v25;
    v27 = v25[1];

    v28 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v26, v27);
    v30 = v29;

    v31 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
    *v31 = v28;
    v31[1] = v30;
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_minsUntilOpen) = sub_275B95EA8(0x69746E55736E696DLL, 0xED00006E65704F6CLL, 4320);
    v32 = sub_275B9670C(0x746144796D6D7564, 0xE900000000000061, 0);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_dummyData) = v32 & 1;
    if (v32)
    {
      v33 = sub_275B99944();
      v34 = swift_allocObject();
      v39[3] = v33;
      v39[4] = MEMORY[0x277D7F8B0];

      swift_setDeallocating();

      v39[0] = v34;
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_275B9950C(a5, MEMORY[0x277D7F888]);
      v35 = v39;
      v36 = v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
    }

    else
    {
      sub_275B9950C(a5, MEMORY[0x277D7F888]);

      swift_setDeallocating();

      v36 = v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
      v35 = v40;
    }

    sub_275B954F8(v35, v36);
  }

  return v9;
}

uint64_t type metadata accessor for ShadowModeMain(uint64_t a1)
{
  result = qword_280A35D18;
  if (!qword_280A35D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_275B988D8()
{
  v1 = v0;
  if (qword_280A35C10 != -1)
  {
    swift_once();
  }

  v2 = sub_275B998B4();
  __swift_project_value_buffer(v2, qword_280A35CA0);
  sub_275B99894();
  v3 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets);
  v4 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow);
  v5 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow);
  v6 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays);
  v7 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval);
  sub_275B99440(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager, v11);
  type metadata accessor for EvaluationDataSearch();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  v8[2] = MEMORY[0x277D84F90];
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  sub_275B954F8(v11, (v8 + 9));
  return v8;
}

char *ShadowModeMain.run()()
{
  v1 = v0;
  v59 = sub_275B99884();
  v2 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_275B99874();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275B998D4();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277C8A0E0](v9);
  v13 = MEMORY[0x277C8A050]();
  if ((v12 & 1) != 0 && (v13 & 1) == 0)
  {
    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v14 = sub_275B998B4();
    __swift_project_value_buffer(v14, qword_280A35CA0);
    sub_275B99894();
    return 0;
  }

  v15 = sub_275B988D8();
  v16 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
  v17 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource + 8);
  v18 = sub_275B999A4();
  v19 = v16 == *v18 && v17 == v18[1];
  v56 = v2;
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_275B99A84();
  }

  sub_275B99974();
  v21 = sub_275B99964();
  swift_beginAccess();
  v15[2] = v21;

  v22 = *(v15[2] + 16);
  v23 = sub_275B99954();
  swift_beginAccess();
  v15[3] = v23;

  v24 = v15[3];
  if (v20)
  {
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v36 = sub_275B998B4();
    __swift_project_value_buffer(v36, qword_280A35CA0);
    sub_275B99894();
    goto LABEL_28;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_22;
  }

LABEL_14:
  LODWORD(v54) = v20;
  v55 = v11;
  v50 = v5;
  v25 = v15[2];
  v26 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  v27 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths + 8);
  v28 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager);
  type metadata accessor for ShadowModelProvider();
  inited = swift_initStackObject();
  inited[2] = v26;
  inited[3] = v27;
  inited[4] = v28;

  v57 = v27;

  v30 = v28;
  v51 = inited;
  if (!ShadowModelProvider.getModels()()[2])
  {

    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v37 = sub_275B998B4();
    __swift_project_value_buffer(v37, qword_280A35CA0);
    sub_275B99894();

LABEL_28:

    return 0;
  }

  v49 = v30;
  v31 = (v54 & 1) == 0;
  v32 = MEMORY[0x277D84F90];
  if (v54)
  {
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = v24;
  }

  v54 = v33;
  if (!v31)
  {
    v32 = v25;
  }

  v53 = v32;

  sub_275B99440(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager, &v60);
  v52 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets);
  sub_275B994A4(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, v55, MEMORY[0x277D7F888]);
  sub_275B999D4();
  swift_allocObject();
  sub_275B999B4();
  swift_allocObject();

  v34 = sub_275B99994();
  v35 = (*(*v34 + 336))(v34);
  v39 = *(*v34 + 376);
  v57 = v34;
  v40 = v39(v35);
  v55 = v40;
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = &v55[(*(v50 + 80) + 32) & ~*(v50 + 80)];
    v43 = *(v50 + 72);
    do
    {
      sub_275B994A4(v42, v7, MEMORY[0x277D7F7A0]);
      if (qword_280A35C10 != -1)
      {
        swift_once();
      }

      v44 = sub_275B998B4();
      __swift_project_value_buffer(v44, qword_280A35CA0);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_275B99A54();
      MEMORY[0x277C8A120](0xD000000000000020, 0x8000000275B9A370);
      sub_275B99A64();
      sub_275B9950C(v7, MEMORY[0x277D7F7A0]);
      MEMORY[0x277C8A120](46, 0xE100000000000000);
      sub_275B99894();

      v42 += v43;
      --v41;
    }

    while (v41);
  }

  v58 = (*(*v57 + 368))(v40);
  v45 = *(v58 + 16);
  if (v45)
  {
    v46 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v47 = *(v56 + 72);
    do
    {
      sub_275B994A4(v46, v4, MEMORY[0x277D7F7C0]);
      if (qword_280A35C10 != -1)
      {
        swift_once();
      }

      v48 = sub_275B998B4();
      __swift_project_value_buffer(v48, qword_280A35CA0);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_275B99A54();
      MEMORY[0x277C8A120](0xD000000000000020, 0x8000000275B9A3A0);
      sub_275B99A64();
      sub_275B9950C(v4, MEMORY[0x277D7F7C0]);
      MEMORY[0x277C8A120](46, 0xE100000000000000);
      sub_275B99894();

      v46 += v47;
      --v45;
    }

    while (v45);
  }

  return v55;
}

uint64_t sub_275B99440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_275B994A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B9950C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ShadowModeMain.deinit()
{
  sub_275B9950C(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager));

  return v0;
}

uint64_t ShadowModeMain.__deallocating_deinit()
{
  sub_275B9950C(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_275B99700(uint64_t a1)
{
  result = sub_275B998D4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}