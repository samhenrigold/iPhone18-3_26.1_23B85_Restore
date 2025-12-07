uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoHomeAnalytics.WidgetActionProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *ElectricityRatesIntent.__allocating_init(homeIdentifier:homeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B161414();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [objc_allocWithZone(v4) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v7 = v6;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v7;
}

uint64_t sub_25B15539C()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A8A0);
  __swift_project_value_buffer(v0, qword_27FA3A8A0);
  return sub_25B1613E4();
}

uint64_t (*static ElectricityRatesIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA3A8A0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B155504()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A8B8);
  __swift_project_value_buffer(v0, qword_27FA3A8B8);
  return sub_25B1611C4();
}

uint64_t (*static ElectricityRatesIntent.description.modify(uint64_t a1))(void)
{
  if (qword_27FA39BA0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA3A8B8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*ElectricityRatesIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*ElectricityRatesIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t ElectricityRatesIntent.home.getter()
{
  sub_25B161274();
  sub_25B161144();
}

double sub_25B15581C@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B155874(uint64_t *a1, void *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161154();
}

uint64_t ElectricityRatesIntent.home.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ElectricityRatesIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityRatesIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t static ElectricityRatesIntent.parameterSummary.getter()
{
  sub_25B156B3C(&qword_27FA3A8E8, &protocol conformance descriptor for ElectricityRatesIntent);

  return sub_25B161284();
}

uint64_t sub_25B155A30()
{
  swift_getKeyPath();
  sub_25B156B3C(&qword_27FA3A8E8, &protocol conformance descriptor for ElectricityRatesIntent);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for ElectricityRatesIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B155B30@<X0>(uint64_t *a2@<X8>)
{
  sub_25B161274();
  v3 = sub_25B161164();

  *a2 = v3;
  return result;
}

id ElectricityRatesIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElectricityRatesIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25B1613F4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B161B14();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25B161294();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_25B161414();
  v54 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v43 = OBJC_IVAR___NHOElectricityRatesIntent__homeID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v21 = *(v20 + 56);
  v52 = v20 + 56;
  v53 = v21;
  v21(v18, 1, 1, v19);
  v39 = sub_25B161AB4();
  v58 = 0;
  v59 = 0;
  v22 = *(v39 - 8);
  v38 = *(v22 + 56);
  v42 = (v22 + 56);
  v23 = v15;
  v38(v15, 1, 1, v39);
  v24 = sub_25B1610C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v50 = v25 + 56;
  v51 = v26;
  v26(v12, 1, 1, v24);
  v27 = *MEMORY[0x277CBA308];
  v28 = *(v5 + 104);
  v55 = v5 + 104;
  v28(v7, v27, v56);
  v29 = v12;
  v30 = v7;
  v31 = sub_25B161194();
  v32 = v40;
  *&v40[v43] = v31;
  v37 = OBJC_IVAR___NHOElectricityRatesIntent__homeName;
  sub_25B1613E4();
  v53(v18, 1, 1, v54);
  v58 = 0;
  v59 = 0;
  v38(v23, 1, 1, v39);
  v51(v29, 1, 1, v24);
  LODWORD(v39) = v27;
  v38 = v28;
  v28(v30, v27, v56);
  v42 = v18;
  v43 = v30;
  *&v32[v37] = sub_25B161194();
  v37 = OBJC_IVAR___NHOElectricityRatesIntent__home;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v33 = v47;
  v34 = __swift_project_value_buffer(v47, qword_27FA3E770);
  (*(v45 + 16))(v46, v34, v33);
  sub_25B161574();
  sub_25B161424();
  v53(v42, 1, 1, v54);
  v58 = 0;
  v59 = 0;
  v35 = v51;
  v51(v29, 1, 1, v24);
  v35(v44, 1, 1, v24);
  (v38)(v43, v39, v56);
  sub_25B120304();
  *&v32[v37] = sub_25B161184();
  v57.receiver = v32;
  v57.super_class = ObjectType;
  return objc_msgSendSuper2(&v57, sel_init);
}

char *ElectricityRatesIntent.__allocating_init(homeIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B161414();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [objc_allocWithZone(v2) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v5 = v4;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v5;
}

id ElectricityRatesIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B15654C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B98 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A8A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B156630(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_25B156B3C(&qword_27FA3A910, &protocol conformance descriptor for ElectricityRatesIntent);
  *v4 = v2;
  v4[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v5);
}

uint64_t sub_25B1566F8()
{
  v1 = sub_25B156B3C(&qword_27FA3A8E8, &protocol conformance descriptor for ElectricityRatesIntent);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t ElectricityRatesIntent.configuredHomeID.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t ElectricityRatesIntent.configuredHomeName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B156AD8()
{
  result = qword_27FA3A900;
  if (!qword_27FA3A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A908, &qword_25B166168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A900);
  }

  return result;
}

uint64_t sub_25B156B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectricityRatesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B156B80(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A928, &qword_25B1661C8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_25B156C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A928, &qword_25B1661C8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_25B156D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_25B156D28, 0, 0);
}

uint64_t sub_25B156D28()
{
  v64 = v0;
  v1 = v0[21];
  v2 = v0[20] == 0xD000000000000027 && 0x800000025B166560 == v1;
  if (v2 || (sub_25B161FA4() & 1) != 0)
  {
    if (qword_27FA39AD8 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  if ((v0[20] != 0xD000000000000026 || 0x800000025B166530 != v1) && (sub_25B161FA4() & 1) == 0)
  {
    goto LABEL_63;
  }

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v19 = sub_25B161A14();
  __swift_project_value_buffer(v19, qword_27FA3A010);
  sub_25B161264();
  v20 = sub_25B1619F4();
  v21 = sub_25B161D94();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_62;
  }

  v57 = v21;
  v22 = v0[19];
  v23 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v63 = v55;
  *v23 = 136315394;
  *(v23 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v63);
  *(v23 + 12) = 2080;
  if (v22 >> 62)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_25B161E54();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_60:
    loga = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_60;
  }

LABEL_35:
  v26 = 0;
  v27 = v22 & 0xC000000000000001;
  v28 = v0[19] + 32;
  loga = MEMORY[0x277D84F90];
  do
  {
    v29 = v26;
    while (1)
    {
      if (v27)
      {
        v30 = MEMORY[0x25F862410](v29, v0[19]);
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_54;
        }

        v30 = *(v28 + 8 * v29);
      }

      v31 = v30;
      v26 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
LABEL_7:
        v3 = sub_25B161A14();
        __swift_project_value_buffer(v3, qword_27FA3A010);
        sub_25B161264();
        v4 = sub_25B1619F4();
        v5 = sub_25B161D94();

        if (!os_log_type_enabled(v4, v5))
        {

          goto LABEL_63;
        }

        v56 = v5;
        log = v4;
        v6 = v0[19];
        v7 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62 = v54;
        *v7 = 136315394;
        *(v7 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v62);
        buf = v7;
        *(v7 + 12) = 2080;
        v63 = MEMORY[0x277D84F90];
        if (!(v6 >> 62))
        {
          v8 = v6 & 0xFFFFFFFFFFFFFF8;
          v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v61 = v0;
          if (v9)
          {
            goto LABEL_10;
          }

LABEL_57:
          v13 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        v8 = v6 & 0xFFFFFFFFFFFFFF8;
        v9 = sub_25B161E54();
        v61 = v0;
        if (!v9)
        {
          goto LABEL_57;
        }

LABEL_10:
        v10 = 0;
        v11 = v6 & 0xC000000000000001;
        v12 = v0[19] + 32;
        v13 = MEMORY[0x277D84F90];
        v0 = 0x277CD1000;
LABEL_11:
        v14 = v10;
        while (1)
        {
          if (v11)
          {
            v15 = MEMORY[0x25F862410](v14, v61[19]);
          }

          else
          {
            if (v14 >= *(v8 + 16))
            {
              goto LABEL_52;
            }

            v15 = *(v12 + 8 * v14);
          }

          v16 = v15;
          v10 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = [v17 characteristic];

            if (v18)
            {
              MEMORY[0x25F862190]();
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25B161C84();
              }

              sub_25B161CA4();
              v13 = v63;
              if (v10 == v9)
              {
LABEL_58:
                v40 = sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
                v41 = MEMORY[0x25F8621C0](v13, v40);
                v43 = v42;

                v44 = sub_25B108480(v41, v43, &v62);

                *(buf + 14) = v44;
                _os_log_impl(&dword_25B105000, log, v56, "%s: Writing characteristics: %s", buf, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x25F862BF0](v54, -1, -1);
                MEMORY[0x25F862BF0](buf, -1, -1);

                v0 = v61;
                goto LABEL_63;
              }

              goto LABEL_11;
            }
          }

          else
          {
          }

          ++v14;
          if (v10 == v9)
          {
            goto LABEL_58;
          }
        }
      }

      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        break;
      }

      ++v29;
      if (v26 == v25)
      {
        goto LABEL_61;
      }
    }

    v53 = v20;
    v33 = [v32 actionSet];
    v34 = [v33 name];

    v35 = sub_25B161B34();
    v52 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      loga = sub_25B115A38(0, *(loga + 2) + 1, 1, loga);
    }

    v38 = *(loga + 2);
    v37 = *(loga + 3);
    if (v38 >= v37 >> 1)
    {
      loga = sub_25B115A38((v37 > 1), v38 + 1, 1, loga);
    }

    *(loga + 2) = v38 + 1;
    v39 = &loga[16 * v38];
    v20 = v53;
    *(v39 + 4) = v35;
    *(v39 + 5) = v52;
  }

  while (v26 != v25);
LABEL_61:
  v45 = MEMORY[0x25F8621C0](loga, MEMORY[0x277D837D0]);
  v47 = v46;

  v48 = sub_25B108480(v45, v47, &v63);

  *(v23 + 14) = v48;
  _os_log_impl(&dword_25B105000, v20, v57, "%s: Executing actionSets: %s", v23, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F862BF0](v55, -1, -1);
  MEMORY[0x25F862BF0](v23, -1, -1);
LABEL_62:

LABEL_63:
  v49 = swift_task_alloc();
  v0[22] = v49;
  v50 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v49 = v0;
  v49[1] = sub_25B1574F0;

  return MEMORY[0x2822007B8](v0 + 18, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v50);
}

uint64_t sub_25B1574F0()
{

  return MEMORY[0x2822009F8](sub_25B1575EC, 0, 0);
}

uint64_t sub_25B1575EC()
{
  v1 = v0[18];
  v0[23] = v1;
  v2 = [v1 widgetManager];
  v0[24] = v2;
  sub_25B132284(0, &qword_27FA3A920, 0x277CD1D58);
  v3 = sub_25B161C54();
  v0[25] = v3;
  v4 = sub_25B161B24();
  v0[26] = v4;
  v0[2] = v0;
  v0[3] = sub_25B157774;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A918, &qword_25B1661B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25B156B80;
  v0[13] = &block_descriptor_9;
  v0[14] = v5;
  [v2 performRequests:v3 forKind:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25B157774()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_25B157A18;
  }

  else
  {
    v2 = sub_25B157884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B157884()
{
  v13 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A010);
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v12);
    _os_log_impl(&dword_25B105000, v4, v5, "%s: Write request completed.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B157A18()
{
  v19 = v0;
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v5 = sub_25B161A14();
  __swift_project_value_buffer(v5, qword_27FA3A010);
  v6 = v4;
  v7 = sub_25B1619F4();
  v8 = sub_25B161D84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_25B108480(0xD000000000000014, 0x800000025B167E60, &v18);
    *(v10 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_25B105000, v7, v8, "%s: Error on write: %@", v10, 0x16u);
    sub_25B11B208(v11, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x25F862BF0](v12, -1, -1);
    MEMORY[0x25F862BF0](v10, -1, -1);
  }

  v15 = v0[23];
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_25B157C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_25B161514();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B157D00, 0, 0);
}

uint64_t sub_25B157D00()
{
  v15 = v0;
  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161A14();
  v0[28] = __swift_project_value_buffer(v1, qword_27FA3A010);
  sub_25B161264();
  sub_25B161264();
  v2 = sub_25B1619F4();
  v3 = sub_25B161D94();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[22];
    v4 = v0[23];
    v7 = v0[20];
    v6 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_25B108480(v5, v4, &v14);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_25B108480(v7, v6, &v14);
    _os_log_impl(&dword_25B105000, v2, v3, "%s: actionSetID:%s in homeID:%s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  v10 = v0[21];
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_25B157F58;
  v12 = v0[20];

  return sub_25B135748(v12, v10, 0);
}

uint64_t sub_25B157F58(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_25B158058, 0, 0);
}

uint64_t sub_25B158058(uint64_t a1)
{
  v75 = v1;
  v2 = v1;
  v3 = v1[30];
  if (v3)
  {
    v4 = [v3 actionSets];
    v2[31] = sub_25B132284(0, &qword_27FA3A460, 0x277CD1800);
    v5 = sub_25B161C64();

    v74[0] = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v7 = 0;
      v72 = v5 & 0xFFFFFFFFFFFFFF8;
      v73 = v5 & 0xC000000000000001;
      v68 = v3;
      v69 = (v2[25] + 8);
      v70 = i;
      v71 = v5;
      while (1)
      {
        if (v73)
        {
          v8 = MEMORY[0x25F862410](v7, v5);
        }

        else
        {
          if (v7 >= *(v72 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v2[27];
        v12 = v2[23];
        v13 = v2[24];
        v3 = v2;
        v14 = v2[22];
        v15 = [v8 uniqueIdentifier];
        sub_25B161504();

        v16 = sub_25B1614F4();
        v18 = v17;
        (*v69)(v11, v13);
        if (v16 == v14 && v18 == v12)
        {

          v2 = v3;
        }

        else
        {
          v2 = v3;
          v19 = sub_25B161FA4();

          if ((v19 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_25B161EE4();
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
LABEL_7:
        v5 = v71;
        ++v7;
        if (v10 == v70)
        {
          v20 = v74[0];
          v3 = v68;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_25:

    if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
    {
      v26 = sub_25B161E54();
      if (v26)
      {
LABEL_28:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x25F862410](0, v20);
        }

        else
        {
          if (!*(v20 + 16))
          {
            __break(1u);
            return MEMORY[0x2822007B8](v26, v27, v28, v29, v30, v31, v32, v33);
          }

          v34 = *(v20 + 32);
        }

        v35 = v34;

        v2[32] = v35;
        v36 = v35;
        v37 = v3;
        v38 = sub_25B1619F4();
        v39 = sub_25B161D94();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v74[0] = v41;
          *v40 = 136315650;
          *(v40 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v74);
          *(v40 + 12) = 2080;
          v42 = [v36 name];
          v43 = sub_25B161B34();
          v45 = v44;

          v46 = sub_25B108480(v43, v45, v74);

          *(v40 + 14) = v46;
          *(v40 + 22) = 2080;
          v47 = [v37 name];
          v48 = sub_25B161B34();
          v50 = v49;

          v51 = sub_25B108480(v48, v50, v74);

          *(v40 + 24) = v51;
          _os_log_impl(&dword_25B105000, v38, v39, "%s: Toggle actionSet %s in home %s", v40, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v41, -1, -1);
          MEMORY[0x25F862BF0](v40, -1, -1);
        }

        v52 = swift_task_alloc();
        v2[33] = v52;
        v33 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
        *v52 = v2;
        v52[1] = sub_25B158890;
        v31 = sub_25B1314F0;
        v29 = 0x616E614D656D6F68;
        v30 = 0xEB00000000726567;
        v26 = (v2 + 18);
        v27 = 0;
        v28 = 0;
        v32 = 0;

        return MEMORY[0x2822007B8](v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    else if (*(v20 + 16))
    {
      goto LABEL_28;
    }

    sub_25B161264();
    v53 = v3;
    v54 = sub_25B1619F4();
    v55 = sub_25B161D94();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = v2[22];
      v56 = v2[23];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74[0] = v59;
      *v58 = 136315650;
      *(v58 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v74);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_25B108480(v57, v56, v74);
      *(v58 + 22) = 2080;
      v60 = [v53 name];
      v61 = sub_25B161B34();
      v63 = v62;

      v64 = sub_25B108480(v61, v63, v74);

      *(v58 + 24) = v64;
      _os_log_impl(&dword_25B105000, v54, v55, "%s: was not able to find matching actionSet with identifier %s in home %s.", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v59, -1, -1);
      MEMORY[0x25F862BF0](v58, -1, -1);
    }

    sub_25B1295F4();
    swift_allocError();
    *v65 = 0xD000000000000014;
    v65[1] = 0x800000025B167F50;
    swift_willThrow();
  }

  else
  {
    v21 = sub_25B1619F4();
    v22 = sub_25B161D94();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, v74);
      _os_log_impl(&dword_25B105000, v21, v22, "%s: was not able to find a home.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F862BF0](v24, -1, -1);
      MEMORY[0x25F862BF0](v23, -1, -1);
    }

    sub_25B1295F4();
    swift_allocError();
    strcpy(v25, "No Home found.");
    v25[15] = -18;
    swift_willThrow();
  }

  v66 = v2[1];

  return v66();
}

uint64_t sub_25B158890()
{

  return MEMORY[0x2822009F8](sub_25B15898C, 0, 0);
}

uint64_t sub_25B15898C()
{
  v1 = v0[32];
  v2 = v0[18];
  v3 = [v2 widgetManager];
  v0[34] = v3;

  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B163810;
  *(v4 + 32) = v1;
  v5 = v1;
  v6 = sub_25B161C54();
  v0[36] = v6;

  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_25B158B3C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A930, &unk_25B1661D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25B156C2C;
  v0[13] = &block_descriptor_16;
  v0[14] = v7;
  [v3 fetchStateForActionSets:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25B158B3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_25B159504;
  }

  else
  {
    v2 = sub_25B158C4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B158C4C()
{
  v45 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 152);
  *(v0 + 304) = v3;
  v4 = v3;

  v5 = [v4 isOnByActionSetUniqueIdentifier];
  sub_25B132284(0, &qword_27FA3A938, 0x277CCABB0);
  sub_25B15DD08(&qword_27FA39BD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v6 = sub_25B161A84();

  v7 = [v2 uniqueIdentifier];
  sub_25B161504();

  if (*(v6 + 16) && (v8 = sub_25B108BB4(*(v0 + 208)), (v9 & 1) != 0))
  {
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(*(v0 + 200) + 8);
    v13 = *(*(v6 + 56) + 8 * v8);
    v12(v10, v11);

    v14 = [v13 BOOLValue];
  }

  else
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);

    (*(v16 + 8))(v15, v17);
    v14 = 0;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v20 = v18;
  v21 = sub_25B1619F4();
  v22 = sub_25B161D94();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 256);
    v43 = *(v0 + 240);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315906;
    *(v24 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v44);
    *(v24 + 12) = 2080;
    if (v14)
    {
      v26 = 0x66666F206E727574;
    }

    else
    {
      v26 = 0x2065747563657865;
    }

    if (v14)
    {
      v27 = 0xE900000000000020;
    }

    else
    {
      v27 = 0xE800000000000000;
    }

    v28 = sub_25B108480(v26, v27, &v44);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2080;
    v29 = [v23 name];
    v30 = sub_25B161B34();
    v32 = v31;

    v33 = sub_25B108480(v30, v32, &v44);

    *(v24 + 24) = v33;
    *(v24 + 32) = 2080;
    v34 = [v43 name];
    v35 = sub_25B161B34();
    v37 = v36;

    v38 = sub_25B108480(v35, v37, &v44);

    *(v24 + 34) = v38;
    _os_log_impl(&dword_25B105000, v21, v22, "%s: Attempting to %s %s in home %s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v25, -1, -1);
    MEMORY[0x25F862BF0](v24, -1, -1);
  }

  v39 = *(v0 + 256);
  v40 = swift_allocObject();
  *(v0 + 312) = v40;
  *(v40 + 16) = xmmword_25B163810;
  *(v40 + 32) = [objc_opt_self() executeRequestWithActionSet_];
  v41 = swift_task_alloc();
  *(v0 + 320) = v41;
  *v41 = v0;
  v41[1] = sub_25B159108;

  return sub_25B156D04(v40, 0xD000000000000026, 0x800000025B166530);
}

uint64_t sub_25B159108()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_25B1592C8;
  }

  else
  {

    v2 = sub_25B159224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B159224()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25B1592C8()
{
  v20 = v0;
  v1 = v0[41];

  v2 = v1;
  v3 = sub_25B1619F4();
  v4 = sub_25B161D84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v19);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_25B105000, v3, v4, "%s: Write error %@", v6, 0x16u);
    sub_25B11B208(v7, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F862BF0](v8, -1, -1);
    MEMORY[0x25F862BF0](v6, -1, -1);
  }

  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[30];
  sub_25B1295F4();
  swift_allocError();
  *v16 = 0xD00000000000001CLL;
  v16[1] = 0x800000025B167F30;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_25B159504()
{
  v20 = v0;
  v2 = v0[36];
  v1 = v0[37];
  swift_willThrow();

  v3 = v1;
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_25B108480(0xD000000000000025, 0x800000025B167E80, &v19);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_25B105000, v4, v5, "%s: Action Set fetch state failed with error: %@", v7, 0x16u);
    sub_25B11B208(v8, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v7, -1, -1);
  }

  v12 = v0[37];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[30];
  sub_25B1295F4();
  swift_allocError();
  *v16 = 0xD000000000000022;
  v16[1] = 0x800000025B167F00;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_25B159730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[62] = a6;
  v7[63] = a7;
  v7[60] = a4;
  v7[61] = a5;
  v7[58] = a2;
  v7[59] = a3;
  v7[57] = a1;
  v8 = sub_25B161894();
  v7[64] = v8;
  v7[65] = *(v8 - 8);
  v7[66] = swift_task_alloc();
  v9 = sub_25B1616A4();
  v7[67] = v9;
  v7[68] = *(v9 - 8);
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1598C4, 0, 0);
}

uint64_t sub_25B1598C4()
{
  v30 = v0;
  v1 = v0[57];
  if (v1 >> 62)
  {
    v14 = sub_25B161E54();
    v0[79] = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[79] = v2;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25F862410](0, v0[57]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = *(v0[57] + 32);
  }

  v4 = v3;
  v5 = HMService.primaryStateCharacteristic.getter();
  v0[80] = v5;

  if (v5)
  {
    if (qword_27FA39AD8 != -1)
    {
      swift_once();
    }

    v6 = sub_25B161A14();
    v0[81] = __swift_project_value_buffer(v6, qword_27FA3A010);
    sub_25B161264();
    v7 = sub_25B1619F4();
    v8 = sub_25B161D94();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[58];
      v9 = v0[59];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v29);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_25B108480(v10, v9, v29);
      _os_log_impl(&dword_25B105000, v7, v8, "%s: reading value for %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v12, -1, -1);
      MEMORY[0x25F862BF0](v11, -1, -1);
    }

    v0[2] = v0;
    v0[3] = sub_25B159E80;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A918, &qword_25B1661B8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25B156B80;
    v0[13] = &block_descriptor;
    v0[14] = v13;
    [v5 readValueWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

LABEL_15:
  if (qword_27FA39AD8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v15 = sub_25B161A14();
  __swift_project_value_buffer(v15, qword_27FA3A010);
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v16 = sub_25B1619F4();
  v17 = sub_25B161D94();

  if (os_log_type_enabled(v16, v17))
  {
    v27 = v0[62];
    v28 = v0[63];
    v19 = v0[60];
    v18 = v0[61];
    v20 = v0[58];
    v21 = v0[59];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v29);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_25B108480(v20, v21, v29);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_25B108480(v19, v18, v29);
    *(v22 + 32) = 2080;
    *(v22 + 34) = sub_25B108480(v27, v28, v29);
    _os_log_impl(&dword_25B105000, v16, v17, "%s: was not able to find current state characteristic for %s with identifier %s in home %s.", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v23, -1, -1);
    MEMORY[0x25F862BF0](v22, -1, -1);
  }

  sub_25B1295F4();
  swift_allocError();
  *v24 = 0xD00000000000002DLL;
  v24[1] = 0x800000025B167D60;
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_25B159E80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 656) = v1;
  if (v1)
  {
    v2 = sub_25B15C200;
  }

  else
  {
    v2 = sub_25B159F90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B159F90()
{
  v217 = v0;
  v2 = 0;
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);
  v5 = MEMORY[0x277D84F90];
  v6 = *(v0 + 456);
  *(v0 + 440) = MEMORY[0x277D84F90];
  v193 = v6 + 32;
  v194 = v6 & 0xFFFFFFFFFFFFFF8;
  v195 = *MEMORY[0x277D15720];
  v201 = (v3 + 104);
  v202 = (v3 + 8);
  v192 = *MEMORY[0x277D15898];
  v188 = *MEMORY[0x277D15760];
  v184 = (v4 + 8);
  v185 = (v4 + 104);
  v187 = *MEMORY[0x277D156D8];
  v186 = *MEMORY[0x277D158D0];
  v183 = *MEMORY[0x277D160A8];
  while (1)
  {
    v205 = v5;
    if ((*(v0 + 456) & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x25F862410](v2);
    }

    else
    {
      if (v2 >= *(v194 + 16))
      {
        goto LABEL_109;
      }

      v15 = *(v193 + 8 * v2);
    }

    v1 = v15;
    v14 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:

      v173 = v0 + 208;
      goto LABEL_105;
    }

    v16 = HMService.primaryControlCharacteristic.getter();
    if (v16)
    {
      break;
    }

    sub_25B161264();
    sub_25B161264();
    sub_25B161264();
    v38 = sub_25B1619F4();
    v39 = sub_25B161D94();

    if (os_log_type_enabled(v38, v39))
    {
      v204 = *(v0 + 504);
      v196 = *(v0 + 496);
      v189 = *(v0 + 488);
      v211 = v2 + 1;
      v214 = v1;
      v7 = v2;
      v8 = *(v0 + 472);
      v9 = *(v0 + 480);
      v1 = *(v0 + 464);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v215 = v11;
      *v10 = 136315906;
      *(v10 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
      *(v10 + 12) = 2080;
      v12 = v8;
      v2 = v7;
      *(v10 + 14) = sub_25B108480(v1, v12, &v215);
      *(v10 + 22) = 2080;
      v13 = v9;
      v14 = v211;
      *(v10 + 24) = sub_25B108480(v13, v189, &v215);
      *(v10 + 32) = 2080;
      *(v10 + 34) = sub_25B108480(v196, v204, &v215);
      _os_log_impl(&dword_25B105000, v38, v39, "%s: was not able to find control characteristic for %s with identifier %s in home %s.", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v11, -1, -1);
      MEMORY[0x25F862BF0](v10, -1, -1);
    }

    else
    {
    }

LABEL_4:
    v5 = v205;
LABEL_5:
    *(v0 + 664) = v5;
    ++v2;
    if (v14 == *(v0 + 632))
    {
      v159 = swift_task_alloc();
      *(v0 + 672) = v159;
      *v159 = v0;
      v159[1] = sub_25B15BD44;

      return sub_25B156D04(v5, 0xD000000000000027, 0x800000025B166560);
    }
  }

  v17 = v16;
  v18 = *(v0 + 640);
  v19 = v17;
  v20 = sub_25B1619F4();
  v21 = sub_25B161D64();

  v212 = v2 + 1;
  v214 = v1;
  v204 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 640);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v215 = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
    *(v23 + 12) = 2080;
    v25 = [v22 localizedDescription];
    v26 = sub_25B161B34();
    v28 = v27;

    v29 = sub_25B108480(v26, v28, &v215);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = [v19 localizedDescription];
    v31 = sub_25B161B34();
    v33 = v32;

    v34 = sub_25B108480(v31, v33, &v215);

    *(v23 + 24) = v34;
    _os_log_impl(&dword_25B105000, v20, v21, "%s: stateCharacteristic is %s, controlCharacteristic is %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v24, -1, -1);
    MEMORY[0x25F862BF0](v23, -1, -1);
  }

  v35 = *(v0 + 616);
  v36 = *(v0 + 536);
  sub_25B161DD4();
  v197 = *v201;
  (*v201)(v35, v195, v36);
  sub_25B15DD08(&qword_27FA39E18, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
  sub_25B161C14();
  sub_25B161C14();
  v203 = v2;
  if (*(v0 + 240) == *(v0 + 256) && *(v0 + 248) == *(v0 + 264))
  {
    v37 = 1;
  }

  else
  {
    v37 = sub_25B161FA4();
  }

  v40 = *(v0 + 624);
  v41 = *(v0 + 536);
  v42 = *v202;
  (*v202)(*(v0 + 616), v41);
  v42(v40, v41);

  if (v37)
  {
    goto LABEL_25;
  }

  v43 = *(v0 + 600);
  v44 = *(v0 + 536);
  sub_25B161DD4();
  v197(v43, v192, v44);
  sub_25B161C14();
  sub_25B161C14();
  v45 = *(v0 + 608);
  v46 = *(v0 + 600);
  v47 = *(v0 + 536);
  if (*(v0 + 272) == *(v0 + 288) && *(v0 + 280) == *(v0 + 296))
  {
    v42(*(v0 + 600), *(v0 + 536));
    v42(v45, v47);

LABEL_25:
    v1 = v214;
    if ([*(v0 + 640) value])
    {
      sub_25B161E24();
      swift_unknownObjectRelease();
    }

    else
    {
      v215 = 0u;
      v216 = 0u;
    }

    v49 = v216;
    *(v0 + 176) = v215;
    *(v0 + 192) = v49;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast())
      {
        v50 = *(v0 + 448);
        if (v50 <= 0)
        {
          v51 = 100;
        }

        else
        {
          v51 = 0;
        }

        sub_25B161264();
        sub_25B161264();
        v52 = v214;
        v53 = sub_25B1619F4();
        v54 = sub_25B161D94();

        if (os_log_type_enabled(v53, v54))
        {
          v206 = *(v0 + 504);
          v198 = *(v0 + 496);
          v214 = v51;
          v55 = *(v0 + 464);
          v56 = *(v0 + 472);
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v215 = v58;
          *v57 = 136316418;
          *(v57 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_25B108480(v55, v56, &v215);
          *(v57 + 22) = 2048;
          *(v57 + 24) = v50;
          *(v57 + 32) = 2048;
          *(v57 + 34) = v214;
          *(v57 + 42) = 2080;
          *(v57 + 44) = sub_25B108480(v198, v206, &v215);
          *(v57 + 52) = 2080;
          v59 = [v52 name];
          v60 = sub_25B161B34();
          v1 = v61;

          v62 = sub_25B108480(v60, v1, &v215);

          *(v57 + 54) = v62;
          v51 = v214;
          _os_log_impl(&dword_25B105000, v53, v54, "%s: attempting to toggle accessory %s from %ld to %ld in home %s using primary service %s", v57, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v58, -1, -1);
          MEMORY[0x25F862BF0](v57, -1, -1);
        }

        v2 = v203;
        *(v0 + 400) = v51;
        v63 = v204;
        v64 = sub_25B161FB4();
        v65 = [objc_opt_self() writeRequestWithCharacteristic:v63 value:v64];

        swift_unknownObjectRelease();
        v66 = v65;
        MEMORY[0x25F862190]();
        if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25B161C84();
        }

        sub_25B161CA4();

        v5 = *(v0 + 440);
        v14 = v212;
        goto LABEL_5;
      }
    }

    else
    {

      sub_25B11B208(v0 + 176, &qword_27FA39BB0, &qword_25B162EC8);
    }

    sub_25B161264();
    sub_25B161264();
    v161 = sub_25B1619F4();
    v162 = sub_25B161D94();

    if (!os_log_type_enabled(v161, v162))
    {
      goto LABEL_100;
    }

    v164 = *(v0 + 496);
    v163 = *(v0 + 504);
    v166 = *(v0 + 464);
    v165 = *(v0 + 472);
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *&v215 = v168;
    *v167 = 136315650;
    *(v167 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
    *(v167 + 12) = 2080;
    v169 = v165;
    v1 = v214;
    *(v167 + 14) = sub_25B108480(v166, v169, &v215);
    *(v167 + 22) = 2080;
    *(v167 + 24) = sub_25B108480(v164, v163, &v215);
    _os_log_impl(&dword_25B105000, v161, v162, "%s: was not able to find current value for %s in home %s.", v167, 0x20u);
    goto LABEL_99;
  }

  v48 = sub_25B161FA4();
  v42(v46, v47);
  v42(v45, v47);

  if (v48)
  {
    goto LABEL_25;
  }

  v67 = *(v0 + 584);
  v68 = *(v0 + 536);
  sub_25B161DD4();
  v197(v67, v188, v68);
  sub_25B161C14();
  sub_25B161C14();
  v69 = *(v0 + 592);
  v70 = *(v0 + 584);
  v71 = *(v0 + 536);
  if (*(v0 + 304) == *(v0 + 320) && *(v0 + 312) == *(v0 + 328))
  {
    v42(*(v0 + 584), *(v0 + 536));
    v42(v69, v71);
    v14 = v212;
LABEL_41:

    v1 = v214;
    goto LABEL_43;
  }

  v72 = sub_25B161FA4();
  v42(v70, v71);
  v42(v69, v71);

  v14 = v212;
  v1 = v214;
  if ((v72 & 1) == 0)
  {
    v97 = *(v0 + 568);
    v98 = *(v0 + 536);
    sub_25B161DD4();
    v197(v97, v187, v98);
    sub_25B161C14();
    sub_25B161C14();
    v99 = *(v0 + 576);
    v100 = *(v0 + 568);
    v101 = *(v0 + 536);
    if (*(v0 + 336) == *(v0 + 352) && *(v0 + 344) == *(v0 + 360))
    {
      v42(*(v0 + 568), *(v0 + 536));
      v42(v99, v101);
      goto LABEL_41;
    }

    v107 = sub_25B161FA4();
    v42(v100, v101);
    v42(v99, v101);

    v1 = v214;
    if ((v107 & 1) == 0)
    {
      if ([*(v0 + 640) value])
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v215 = 0u;
        v216 = 0u;
      }

      v121 = v216;
      *(v0 + 208) = v215;
      *(v0 + 224) = v121;
      if (!*(v0 + 232))
      {
        goto LABEL_110;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_103:

        goto LABEL_106;
      }

      v122 = *(v0 + 552);
      v123 = *(v0 + 536);
      v209 = *(v0 + 689);
      sub_25B161DD4();
      v197(v122, v186, v123);
      sub_25B161C14();
      sub_25B161C14();
      v124 = *(v0 + 560);
      v125 = *(v0 + 552);
      v126 = *(v0 + 536);
      if (*(v0 + 368) == *(v0 + 384) && *(v0 + 376) == *(v0 + 392))
      {
        v42(*(v0 + 552), *(v0 + 536));
        v42(v124, v126);
      }

      else
      {
        v127 = sub_25B161FA4();
        v42(v125, v126);
        v42(v124, v126);

        if ((v127 & 1) == 0)
        {
LABEL_86:
          sub_25B161264();
          sub_25B161264();
          v142 = v1;
          v143 = sub_25B1619F4();
          v144 = sub_25B161D94();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = *(v0 + 496);
            v214 = *(v0 + 504);
            v147 = *(v0 + 464);
            v146 = *(v0 + 472);
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            *&v215 = v149;
            *v148 = 136316418;
            *(v148 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
            *(v148 + 12) = 2080;
            *(v148 + 14) = sub_25B108480(v147, v146, &v215);
            *(v148 + 22) = 1024;
            *(v148 + 24) = v209;
            *(v148 + 28) = 1024;
            v150 = v209 ^ 1;
            *(v148 + 30) = v209 ^ 1;
            *(v148 + 34) = 2080;
            *(v148 + 36) = sub_25B108480(v145, v214, &v215);
            *(v148 + 44) = 2080;
            v151 = [v142 name];
            v152 = sub_25B161B34();
            v1 = v153;

            v154 = sub_25B108480(v152, v1, &v215);

            *(v148 + 46) = v154;
            _os_log_impl(&dword_25B105000, v143, v144, "%s: attempting to toggle accessory %s from %{BOOL}d to %{BOOL}d in home %s using primary service %s", v148, 0x36u);
            swift_arrayDestroy();
            MEMORY[0x25F862BF0](v149, -1, -1);
            MEMORY[0x25F862BF0](v148, -1, -1);
          }

          else
          {

            v150 = v209 ^ 1;
          }

          v2 = v203;
          *(v0 + 688) = v150;
          v155 = v204;
          v156 = sub_25B161FB4();
          v157 = [objc_opt_self() writeRequestWithCharacteristic:v155 value:v156];

          swift_unknownObjectRelease();
          v158 = v157;
          MEMORY[0x25F862190]();
          if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25B161C84();
          }

          sub_25B161CA4();

          v5 = *(v0 + 440);
          v14 = v212;
          goto LABEL_5;
        }
      }

      if ((v209 & 1) == 0)
      {
        v128 = *(v0 + 528);
        v129 = *(v0 + 512);
        (*v185)(v128, v183, v129);
        v130 = sub_25B161DE4();
        (*v184)(v128, v129);
        if (v130)
        {
          sub_25B161264();
          v131 = sub_25B1619F4();
          v132 = sub_25B161D94();

          if (os_log_type_enabled(v131, v132))
          {
            v134 = *(v0 + 464);
            v133 = *(v0 + 472);
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v215 = v136;
            *v135 = 136315394;
            *(v135 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
            *(v135 + 12) = 2080;
            *(v135 + 14) = sub_25B108480(v134, v133, &v215);
            _os_log_impl(&dword_25B105000, v131, v132, "%s: will set brightness to 100%% for %s", v135, 0x16u);
            swift_arrayDestroy();
            v137 = v136;
            v1 = v214;
            MEMORY[0x25F862BF0](v137, -1, -1);
            MEMORY[0x25F862BF0](v135, -1, -1);
          }

          *(v0 + 408) = 100;
          v138 = v130;
          v139 = sub_25B161FB4();
          v140 = [objc_opt_self() writeRequestWithCharacteristic:v138 value:v139];

          swift_unknownObjectRelease();
          v141 = v140;
          MEMORY[0x25F862190]();
          if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25B161C84();
          }

          sub_25B161CA4();
        }
      }

      goto LABEL_86;
    }
  }

LABEL_43:
  if ([*(v0 + 640) value])
  {
    sub_25B161E24();
    swift_unknownObjectRelease();
  }

  else
  {
    v215 = 0u;
    v216 = 0u;
  }

  v2 = v203;
  v73 = v216;
  *(v0 + 144) = v215;
  *(v0 + 160) = v73;
  if (*(v0 + 168))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_103;
    }

    v74 = *(v0 + 416);
    v75 = [v204 characteristicType];
    v76 = sub_25B161B34();
    v78 = v77;

    if (v76 == sub_25B161B34() && v78 == v79)
    {

LABEL_52:
      v207 = v74 != 1;
      sub_25B161264();
      sub_25B161264();
      v1 = v1;
      v81 = sub_25B1619F4();
      v82 = sub_25B161D94();

      v214 = v1;
      if (os_log_type_enabled(v81, v82))
      {
        v190 = *(v0 + 504);
        v180 = *(v0 + 472);
        v181 = *(v0 + 496);
        v83 = v14;
        v84 = *(v0 + 464);
        v85 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&v215 = v199;
        *v85 = 136316418;
        *(v85 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
        *(v85 + 12) = 2080;
        v86 = v84;
        v14 = v83;
        *(v85 + 14) = sub_25B108480(v86, v180, &v215);
        *(v85 + 22) = 2048;
        *(v85 + 24) = v74;
        *(v85 + 32) = 2048;
        *(v85 + 34) = v207;
        *(v85 + 42) = 2080;
        *(v85 + 44) = sub_25B108480(v181, v190, &v215);
        *(v85 + 52) = 2080;
        v87 = [v1 name];
        v88 = sub_25B161B34();
        v1 = v89;

        v90 = sub_25B108480(v88, v1, &v215);

        *(v85 + 54) = v90;
        _os_log_impl(&dword_25B105000, v81, v82, "%s: attempting to toggle lock %s from %ld to %ld in home %s using primary service %s", v85, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v199, -1, -1);
        v91 = v85;
        v2 = v203;
        MEMORY[0x25F862BF0](v91, -1, -1);
      }

      *(v0 + 432) = v207;
      v92 = v204;
      v93 = sub_25B161FB4();
      v94 = [objc_opt_self() writeRequestWithCharacteristic:v92 value:v93];
      goto LABEL_55;
    }

    v80 = sub_25B161FA4();

    if (v80)
    {
      goto LABEL_52;
    }

    v102 = [v204 characteristicType];
    v103 = sub_25B161B34();
    v105 = v104;

    if (v103 == sub_25B161B34() && v105 == v106)
    {

LABEL_68:
      v208 = v74 != 1;
      sub_25B161264();
      sub_25B161264();
      v1 = v1;
      v109 = sub_25B1619F4();
      v110 = sub_25B161D94();

      v214 = v1;
      if (os_log_type_enabled(v109, v110))
      {
        v191 = *(v0 + 504);
        v180 = *(v0 + 472);
        v182 = *(v0 + 496);
        v111 = v14;
        v112 = *(v0 + 464);
        v113 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v215 = v200;
        *v113 = 136316418;
        *(v113 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
        *(v113 + 12) = 2080;
        v114 = v112;
        v14 = v111;
        *(v113 + 14) = sub_25B108480(v114, v180, &v215);
        *(v113 + 22) = 2048;
        *(v113 + 24) = v74;
        *(v113 + 32) = 2048;
        *(v113 + 34) = v208;
        *(v113 + 42) = 2080;
        *(v113 + 44) = sub_25B108480(v182, v191, &v215);
        *(v113 + 52) = 2080;
        v115 = [v1 name];
        v116 = sub_25B161B34();
        v1 = v117;

        v118 = sub_25B108480(v116, v1, &v215);

        *(v113 + 54) = v118;
        _os_log_impl(&dword_25B105000, v109, v110, "%s: attempting to toggle door %s from %ld to %ld in home %s using primary service %s", v113, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v200, -1, -1);
        v119 = v113;
        v2 = v203;
        MEMORY[0x25F862BF0](v119, -1, -1);
      }

      *(v0 + 424) = v208;
      v92 = v204;
      v120 = sub_25B161FB4();
      v94 = [objc_opt_self() writeRequestWithCharacteristic:v92 value:v120];
LABEL_55:
      v95 = v94;

      swift_unknownObjectRelease();
      v96 = v95;
      MEMORY[0x25F862190]();
      if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25B161C84();
      }

      sub_25B161CA4();

      v5 = *(v0 + 440);
      goto LABEL_5;
    }

    v108 = sub_25B161FA4();

    if (v108)
    {
      goto LABEL_68;
    }

    goto LABEL_4;
  }

  v173 = v0 + 144;
LABEL_105:
  sub_25B11B208(v173, &qword_27FA39BB0, &qword_25B162EC8);
LABEL_106:
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v161 = sub_25B1619F4();
  v174 = sub_25B161D94();

  if (os_log_type_enabled(v161, v174))
  {
    v210 = *(v0 + 496);
    v213 = *(v0 + 504);
    v176 = *(v0 + 480);
    v175 = *(v0 + 488);
    v178 = *(v0 + 464);
    v177 = *(v0 + 472);
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *&v215 = v168;
    *v167 = 136315906;
    *(v167 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v215);
    *(v167 + 12) = 2080;
    *(v167 + 14) = sub_25B108480(v178, v177, &v215);
    *(v167 + 22) = 2080;
    v179 = v175;
    v1 = v214;
    *(v167 + 24) = sub_25B108480(v176, v179, &v215);
    *(v167 + 32) = 2080;
    *(v167 + 34) = sub_25B108480(v210, v213, &v215);
    _os_log_impl(&dword_25B105000, v161, v174, "%s: was not able to find current value for %s with identifier %s in home %s.", v167, 0x2Au);
LABEL_99:
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v168, -1, -1);
    MEMORY[0x25F862BF0](v167, -1, -1);
  }

LABEL_100:

  v170 = *(v0 + 640);
  sub_25B1295F4();
  swift_allocError();
  *v171 = 0xD00000000000002ALL;
  v171[1] = 0x800000025B167E30;
  swift_willThrow();

  v172 = *(v0 + 8);

  return v172();
}

uint64_t sub_25B15BD44()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_25B15BF6C;
  }

  else
  {

    v2 = sub_25B15BE60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B15BE60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B15BF6C()
{
  v17 = v0;
  v1 = v0[85];

  v2 = v1;
  v3 = sub_25B1619F4();
  v4 = sub_25B161D84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[85];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, &v16);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_25B105000, v3, v4, "%s: Write error %@", v6, 0x16u);
    sub_25B11B208(v7, &qword_27FA3A4E0, &qword_25B165AF0);
    MEMORY[0x25F862BF0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F862BF0](v8, -1, -1);
    MEMORY[0x25F862BF0](v6, -1, -1);
  }

  v11 = v0[85];
  v12 = v0[80];
  sub_25B1295F4();
  swift_allocError();
  *v13 = 0xD000000000000039;
  v13[1] = 0x800000025B167DF0;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_25B15C200()
{
  v15 = v0;
  swift_willThrow();
  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  v1 = sub_25B1619F4();
  v2 = sub_25B161D94();

  if (os_log_type_enabled(v1, v2))
  {
    v12 = v0[62];
    v13 = v0[63];
    v4 = v0[60];
    v3 = v0[61];
    v5 = v0[58];
    v6 = v0[59];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_25B108480(0xD00000000000003CLL, 0x800000025B167D90, v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25B108480(v5, v6, v14);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_25B108480(v4, v3, v14);
    *(v7 + 32) = 2080;
    *(v7 + 34) = sub_25B108480(v12, v13, v14);
    _os_log_impl(&dword_25B105000, v1, v2, "%s: was not able to read current value for %s with identifier %s in home %s.", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v8, -1, -1);
    MEMORY[0x25F862BF0](v7, -1, -1);
  }

  v9 = v0[80];
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B15C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v7 = sub_25B161514();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[13] = v8;
  *v8 = v4;
  v8[1] = sub_25B15C5B0;

  return sub_25B135748(a1, a2, 0);
}

uint64_t sub_25B15C5B0(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_25B15C6B0, 0, 0);
}

uint64_t sub_25B15C6B0()
{
  v147 = v0;
  v1 = v0;
  v2 = *(v0 + 112);
  if (!v2)
  {
    if (qword_27FA39AD8 == -1)
    {
LABEL_20:
      v20 = sub_25B161A14();
      __swift_project_value_buffer(v20, qword_27FA3A010);
      v21 = sub_25B1619F4();
      v22 = sub_25B161D94();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v146[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v146);
        _os_log_impl(&dword_25B105000, v21, v22, "%s: was not able to find a home.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x25F862BF0](v24, -1, -1);
        MEMORY[0x25F862BF0](v23, -1, -1);
      }

      sub_25B1295F4();
      swift_allocError();
      strcpy(v25, "No Home found.");
      v25[15] = -18;
      swift_willThrow();
      goto LABEL_87;
    }

LABEL_63:
    swift_once();
    goto LABEL_20;
  }

  v3 = [*(v0 + 112) accessories];
  sub_25B132284(0, &qword_27FA3A468, 0x277CD1650);
  v4 = sub_25B161C64();

  v146[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v6 = MEMORY[0x277D84F90];
  v145 = v1;
  if (v5)
  {
    v7 = 0;
    v139 = v4 & 0xFFFFFFFFFFFFFF8;
    v142 = v4 & 0xC000000000000001;
    v132 = v2;
    v134 = (v1[10] + 8);
    v136 = v4;
    while (1)
    {
      if (v142)
      {
        v8 = MEMORY[0x25F862410](v7, v4);
      }

      else
      {
        if (v7 >= *(v139 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v5 = sub_25B161E54();
        goto LABEL_4;
      }

      v11 = v1[12];
      v2 = v1[8];
      v12 = v1[9];
      v13 = v1[7];
      v14 = [v8 uniqueIdentifier];
      sub_25B161504();

      v15 = sub_25B1614F4();
      v17 = v16;
      (*v134)(v11, v12);
      if (v15 == v13 && v17 == v2)
      {

        v1 = v145;
      }

      else
      {
        v1 = v145;
        v18 = sub_25B161FA4();

        if ((v18 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      sub_25B161EE4();
      sub_25B161F04();
      sub_25B161F14();
      sub_25B161EF4();
LABEL_8:
      v4 = v136;
      ++v7;
      if (v10 == v5)
      {
        v19 = v146[0];
        v2 = v132;
        v6 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_24:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (sub_25B161E54())
    {
      goto LABEL_27;
    }
  }

  else if (*(v19 + 16))
  {
LABEL_27:
    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if (*(v19 + 16))
    {
      v26 = *(v19 + 32);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_63;
  }

  v75 = [v2 serviceGroups];
  sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
  v76 = sub_25B161C64();

  v146[0] = v6;
  if (v76 >> 62)
  {
    v19 = sub_25B161E54();
    if (v19)
    {
      goto LABEL_45;
    }

LABEL_65:
    v90 = MEMORY[0x277D84F90];
LABEL_66:

    if (v90 < 0 || (v90 & 0x4000000000000000) != 0)
    {
      if (sub_25B161E54())
      {
        goto LABEL_69;
      }
    }

    else if (*(v90 + 16))
    {
LABEL_69:
      if ((v90 & 0xC000000000000001) != 0)
      {
        v91 = MEMORY[0x25F862410](0, v90);
LABEL_72:
        v92 = v91;

        v1[22] = v92;
        if (qword_27FA39AD8 != -1)
        {
          swift_once();
        }

        v93 = sub_25B161A14();
        __swift_project_value_buffer(v93, qword_27FA3A010);
        v94 = v2;
        v95 = v92;
        v96 = sub_25B1619F4();
        v97 = sub_25B161D94();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v146[0] = v99;
          *v98 = 136315650;
          *(v98 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v146);
          *(v98 + 12) = 2080;
          v100 = [v95 name];
          v101 = sub_25B161B34();
          v103 = v102;

          v104 = sub_25B108480(v101, v103, v146);

          *(v98 + 14) = v104;
          *(v98 + 22) = 2080;
          v105 = [v94 name];
          v106 = sub_25B161B34();
          v108 = v107;

          v109 = sub_25B108480(v106, v108, v146);
          v1 = v145;

          *(v98 + 24) = v109;
          _os_log_impl(&dword_25B105000, v96, v97, "%s: Toggle serviceGroup %s in home %s", v98, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v99, -1, -1);
          MEMORY[0x25F862BF0](v98, -1, -1);
        }

        v110 = [v95 services];
        sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        inited = sub_25B161C64();
        v1[23] = inited;

        v111 = [v95 name];
        v50 = sub_25B161B34();
        v52 = v112;

        v1[24] = v52;
        v113 = [v94 name];
        v54 = sub_25B161B34();
        v56 = v114;

        v1[25] = v56;
        v57 = swift_task_alloc();
        v1[26] = v57;
        *v57 = v1;
        v58 = sub_25B15DA64;
LABEL_77:
        v57[1] = v58;
        v115 = v1[7];
        v116 = v1[8];

        return sub_25B159730(inited, v50, v52, v115, v116, v54, v56);
      }

      if (*(v90 + 16))
      {
        v91 = *(v90 + 32);
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_92;
    }

    if (qword_27FA39AD8 == -1)
    {
LABEL_82:
      v118 = sub_25B161A14();
      __swift_project_value_buffer(v118, qword_27FA3A010);
      v60 = v2;
      sub_25B161264();
      v119 = sub_25B1619F4();
      v120 = sub_25B161D94();

      if (os_log_type_enabled(v119, v120))
      {
        v122 = v1[7];
        v121 = v1[8];
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v146[0] = v124;
        *v123 = 136315650;
        *(v123 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v146);
        *(v123 + 12) = 2080;
        *(v123 + 14) = sub_25B108480(v122, v121, v146);
        *(v123 + 22) = 2080;
        v125 = [v60 name];
        v126 = sub_25B161B34();
        v128 = v127;

        v129 = sub_25B108480(v126, v128, v146);

        *(v123 + 24) = v129;
        _os_log_impl(&dword_25B105000, v119, v120, "%s: was not able to find matching accessory or serviceGroup for ID %s in home %s.", v123, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v124, -1, -1);
        MEMORY[0x25F862BF0](v123, -1, -1);

        sub_25B1295F4();
        swift_allocError();
      }

      else
      {

        sub_25B1295F4();
        swift_allocError();
      }

      *v130 = 0xD000000000000014;
      v130[1] = 0x800000025B167D40;
      swift_willThrow();
      goto LABEL_86;
    }

LABEL_92:
    swift_once();
    goto LABEL_82;
  }

  v19 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_65;
  }

LABEL_45:
  v77 = 0;
  v141 = v76 & 0xFFFFFFFFFFFFFF8;
  v144 = v76 & 0xC000000000000001;
  v133 = v2;
  v135 = (v1[10] + 8);
  v138 = v19;
  while (1)
  {
    if (v144)
    {
      v78 = MEMORY[0x25F862410](v77, v76);
    }

    else
    {
      if (v77 >= *(v141 + 16))
      {
        goto LABEL_60;
      }

      v78 = *(v76 + 8 * v77 + 32);
    }

    v79 = v78;
    v2 = (v77 + 1);
    if (__OFADD__(v77, 1))
    {
      break;
    }

    v80 = v76;
    v81 = v1[11];
    v82 = v1[8];
    v83 = v1[9];
    v84 = v1[7];
    v85 = [v78 uniqueIdentifier];
    sub_25B161504();

    v86 = sub_25B1614F4();
    v88 = v87;
    (*v135)(v81, v83);
    if (v86 == v84 && v88 == v82)
    {

      v1 = v145;
LABEL_56:
      sub_25B161EE4();
      sub_25B161F04();
      sub_25B161F14();
      sub_25B161EF4();
      goto LABEL_47;
    }

    v1 = v145;
    v89 = sub_25B161FA4();

    if (v89)
    {
      goto LABEL_56;
    }

LABEL_47:
    v76 = v80;
    v19 = v138;
    ++v77;
    if (v2 == v138)
    {
      v90 = v146[0];
      v2 = v133;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v26 = MEMORY[0x25F862410](0, v19);
LABEL_30:
  v27 = v26;

  v1[15] = v27;
  if (qword_27FA39AD8 != -1)
  {
    swift_once();
  }

  v28 = sub_25B161A14();
  __swift_project_value_buffer(v28, qword_27FA3A010);
  v29 = v27;
  v30 = v2;
  v31 = sub_25B1619F4();
  v32 = sub_25B161D94();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v146[0] = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v146);
    *(v33 + 12) = 2080;
    v35 = [v29 name];
    v36 = sub_25B161B34();
    v38 = v37;

    v39 = sub_25B108480(v36, v38, v146);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    v40 = [v30 name];
    v41 = sub_25B161B34();
    v43 = v42;

    v44 = sub_25B108480(v41, v43, v146);
    v1 = v145;

    *(v33 + 24) = v44;
    _os_log_impl(&dword_25B105000, v31, v32, "%s: Toggle accessory %s in home %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v34, -1, -1);
    MEMORY[0x25F862BF0](v33, -1, -1);
  }

  v45 = HMAccessory.serviceWithPrimaryControlCharacteristic()();
  v1[16] = v45;
  if (v45)
  {
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    inited = swift_initStackObject();
    v1[17] = inited;
    *(inited + 16) = xmmword_25B163810;
    *(inited + 32) = v46;
    v48 = v46;
    v49 = [v29 name];
    v50 = sub_25B161B34();
    v52 = v51;

    v1[18] = v52;
    v53 = [v30 name];
    v54 = sub_25B161B34();
    v56 = v55;

    v1[19] = v56;
    v57 = swift_task_alloc();
    v1[20] = v57;
    *v57 = v1;
    v58 = sub_25B15D7D0;
    goto LABEL_77;
  }

  v59 = v29;
  v60 = v30;
  sub_25B161264();
  v61 = sub_25B1619F4();
  v62 = sub_25B161D94();

  if (os_log_type_enabled(v61, v62))
  {
    v137 = v1[7];
    v140 = v1[8];
    v63 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v146[0] = v143;
    *v63 = 136315906;
    *(v63 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167CE0, v146);
    *(v63 + 12) = 2080;
    v64 = [v59 name];
    v65 = sub_25B161B34();
    v67 = v66;

    v68 = sub_25B108480(v65, v67, v146);

    *(v63 + 14) = v68;
    *(v63 + 22) = 2080;
    *(v63 + 24) = sub_25B108480(v137, v140, v146);
    *(v63 + 32) = 2080;
    v69 = [v60 &selRef_conformsToProtocol_];
    v70 = sub_25B161B34();
    v72 = v71;

    v73 = sub_25B108480(v70, v72, v146);
    v1 = v145;

    *(v63 + 34) = v73;
    _os_log_impl(&dword_25B105000, v61, v62, "%s: was not able to find primary service for %s with identifier %s in home %s.", v63, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v143, -1, -1);
    MEMORY[0x25F862BF0](v63, -1, -1);
  }

  sub_25B1295F4();
  swift_allocError();
  *v74 = 0xD000000000000028;
  v74[1] = 0x800000025B167D10;
  swift_willThrow();

LABEL_86:
LABEL_87:

  v131 = v1[1];

  return v131();
}

uint64_t sub_25B15D7D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25B15D99C;
  }

  else
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    v2 = sub_25B15D918;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B15D918()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25B15D99C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  swift_setDeallocating();
  swift_arrayDestroy();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25B15DA64()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_25B15DC10;
  }

  else
  {

    v2 = sub_25B15DB94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B15DB94()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B15DC10()
{
  v1 = v0[22];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25B15DD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B15DDBC()
{
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25B1613F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25B161414();
  __swift_allocate_value_buffer(v6, qword_27FA3A940);
  __swift_project_value_buffer(v6, qword_27FA3A940);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27FA3E770);
  (*(v2 + 16))(v4, v7, v1);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ToggleAccessoryIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t (*ToggleAccessoryIntent.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleAccessoryIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B15E24C(uint64_t *a1, uint64_t *a2)
{
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ToggleAccessoryIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleAccessoryIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleAccessoryIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v1 = sub_25B161294();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x28223BE20](v1);
  v64 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_25B161584();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25B1613F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B161B14();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25B161414();
  v22 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v58 = "HOME_ACCESSORY_ENTITY_TITLE";
  v49 = __swift_project_value_buffer(v15, qword_27FA3E770);
  v61 = *(v16 + 16);
  v61(v18, v49, v15);
  sub_25B161574();
  sub_25B161424();
  v23 = *(v22 + 56);
  v48 = v22 + 56;
  v60 = v23;
  v23(v11, 1, 1, v62);
  LOBYTE(v68) = 2;
  v44 = sub_25B161CB4();
  v24 = *(v44 - 8);
  v43 = *(v24 + 56);
  v45 = v24 + 56;
  v43(v53, 1, 1, v44);
  v25 = sub_25B1610C4();
  v54 = v18;
  v52 = v16 + 16;
  v56 = v25;
  v26 = *(v25 - 8);
  v55 = *(v26 + 56);
  v57 = v26 + 56;
  v55(v63, 1, 1, v25);
  v59 = *MEMORY[0x277CBA308];
  v51 = v15;
  v50 = *(v66 + 104);
  v66 += 104;
  v50(v64);
  *v65 = sub_25B1611A4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v41 = v21;
  v27 = v49;
  v61(v54, v49, v15);
  v47 = v14;
  sub_25B161574();
  sub_25B161424();
  v28 = v62;
  v60(v11, 1, 1, v62);
  v68 = 0uLL;
  v29 = v63;
  v30 = v56;
  v31 = v55;
  v55(v63, 1, 1, v56);
  v32 = v46;
  v31(v46, 1, 1, v30);
  (v50)(v64, v59, v67);
  sub_25B120304();
  v33 = v29;
  v65[1] = sub_25B161184();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v61(v54, v27, v51);
  sub_25B161574();
  sub_25B161424();
  v60(v11, 1, 1, v28);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v35 = v55;
  v34 = v56;
  v55(v33, 1, 1, v56);
  v35(v32, 1, 1, v34);
  v36 = v64;
  v37 = v50;
  (v50)(v64, v59, v67);
  sub_25B11ADCC();
  v38 = sub_25B161184();
  v39 = v65;
  v65[2] = v38;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v61(v54, v49, v51);
  sub_25B161574();
  sub_25B161424();
  v60(v11, 1, 1, v62);
  LOBYTE(v68) = 2;
  v43(v53, 1, 1, v44);
  v55(v63, 1, 1, v56);
  (v37)(v36, v59, v67);
  result = sub_25B1611A4();
  v39[3] = result;
  return result;
}

uint64_t ToggleAccessoryIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v5 = sub_25B161294();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v93 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v75 - v14;
  v16 = sub_25B161584();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_25B1613F4();
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25B161B14();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_25B161414();
  v24 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[1];
  v83 = *a1;
  v82 = v27;
  v28 = a2[1];
  v81 = *a2;
  v86 = v28;
  v29 = a2[3];
  v87 = a2[2];
  v80 = v29;
  v79 = a2[4];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v30 = v106;
  v31 = __swift_project_value_buffer(v106, qword_27FA3E770);
  v32 = *(v109 + 16);
  v100 = v31;
  v101 = v32;
  v109 += 16;
  v99 = v20;
  v32(v20, v31, v30);
  sub_25B161574();
  v102 = "HOME_ACCESSORY_ENTITY_TITLE";
  sub_25B161424();
  v33 = *(v24 + 56);
  v103 = v24 + 56;
  v104 = v33;
  v33(v15, 1, 1, v105);
  LOBYTE(v111) = 2;
  v77 = sub_25B161CB4();
  v34 = *(v77 - 8);
  v76 = *(v34 + 56);
  v78 = v34 + 56;
  v76(v92, 1, 1, v77);
  v35 = sub_25B1610C4();
  v36 = *(v35 - 8);
  v97 = *(v36 + 56);
  v98 = v36 + 56;
  v37 = v94;
  v97(v94, 1, 1, v35);
  v91 = *MEMORY[0x277CBA308];
  v90 = *(v107 + 104);
  v107 += 104;
  v38 = v95;
  v90(v95);
  v84 = sub_25B1611A4();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v39 = v106;
  v88 = v23;
  v101(v99, v100, v106);
  v75[2] = v18;
  sub_25B161574();
  v75[1] = v26;
  sub_25B161424();
  v40 = v15;
  v41 = v105;
  v104(v15, 1, 1, v105);
  v111 = 0uLL;
  v89 = v35;
  v42 = v97;
  v97(v37, 1, 1, v35);
  v43 = v93;
  v42(v93, 1, 1, v35);
  v44 = v90;
  (v90)(v38, v91, v108);
  sub_25B120304();
  v96 = sub_25B161184();
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v101(v99, v100, v39);
  sub_25B161574();
  sub_25B161424();
  v104(v40, 1, 1, v41);
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v45 = v94;
  v46 = v89;
  v47 = v97;
  v97(v94, 1, 1, v89);
  v47(v43, 1, 1, v46);
  v48 = v95;
  v49 = v91;
  (v44)(v95, v91, v108);
  sub_25B11ADCC();
  v93 = sub_25B161184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v101(v99, v100, v106);
  sub_25B161574();
  sub_25B161424();
  v104(v40, 1, 1, v105);
  LOBYTE(v111) = 2;
  v76(v92, 1, 1, v77);
  v97(v45, 1, 1, v89);
  (v90)(v48, v49, v108);
  v109 = sub_25B1611A4();
  v50 = v83;
  v51 = v82;
  *&v111 = v83;
  *(&v111 + 1) = v82;
  sub_25B11B1C8(v83, v82);
  sub_25B161154();
  v52 = v81;
  v53 = v86;
  *&v111 = v81;
  *(&v111 + 1) = v86;
  v54 = v87;
  v55 = v80;
  *&v112 = v87;
  *(&v112 + 1) = v80;
  v56 = v79;
  v113 = v79;
  sub_25B145AA0(v81);
  sub_25B161154();
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v57 = sub_25B161A14();
  __swift_project_value_buffer(v57, qword_27FA3A0A0);
  sub_25B11B1C8(v50, v51);
  sub_25B145AA0(v52);
  v58 = sub_25B1619F4();
  v59 = sub_25B161D94();
  sub_25B120358(v50, v51);
  sub_25B11A98C(v52, v53, v54, v55, v56);
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v110 = v61;
    *v60 = 136315394;
    if (v50)
    {
      v62 = v51;
      v63 = v52;
      sub_25B1610F4();
      sub_25B120358(v50, v62);
      v65 = *(&v111 + 1);
      v64 = v111;
    }

    else
    {
      v63 = v52;
      v65 = 0xE300000000000000;
      v64 = 7104878;
    }

    v66 = sub_25B108480(v64, v65, &v110);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2080;
    if (v63)
    {
      v67 = v86;
      sub_25B1610F4();
      sub_25B11A98C(v63, v67, v87, v55, v56);
      v69 = *(&v111 + 1);
      v68 = v111;
    }

    else
    {
      v69 = 0xE300000000000000;
      v68 = 7104878;
    }

    v70 = sub_25B108480(v68, v69, &v110);

    *(v60 + 14) = v70;
    _os_log_impl(&dword_25B105000, v58, v59, "ToggleAccessoryIntent initialized with home %s, accessory %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v61, -1, -1);
    MEMORY[0x25F862BF0](v60, -1, -1);
  }

  else
  {

    sub_25B120358(v50, v51);
    sub_25B11A98C(v52, v53, v54, v55, v56);
  }

  LOBYTE(v111) = 0;
  v71 = v109;
  result = sub_25B161154();
  v73 = v85;
  v74 = v96;
  *v85 = v84;
  v73[1] = v74;
  v73[2] = v93;
  v73[3] = v71;
  return result;
}

uint64_t ToggleAccessoryIntent.perform()(uint64_t a1)
{
  *(v2 + 200) = a1;
  v3 = v1[1];
  *(v2 + 208) = *v1;
  *(v2 + 224) = v3;
  return MEMORY[0x2822009F8](sub_25B15FCC8, 0, 0);
}

uint64_t sub_25B15FCC8(uint64_t a1)
{
  v48 = v1;
  sub_25B161144();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  if (v2)
  {
    v45 = v2;
    sub_25B161144();
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    *(v1 + 256) = v4;
    *(v1 + 264) = v5;
    v6 = *(v1 + 40);
    v7 = *(v1 + 32);
    *(v1 + 272) = v7;
    *(v1 + 280) = v6;
    v8 = *(v1 + 48);
    *(v1 + 288) = v8;
    v46 = v4;
    if (v4)
    {
      v9 = v6;
      v10 = v8;
      v44 = v3;
      if (qword_27FA39B08 != -1)
      {
        swift_once();
      }

      v11 = sub_25B161A14();
      *(v1 + 296) = __swift_project_value_buffer(v11, qword_27FA3A0A0);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_25B11B1C8(v45, v3);
      sub_25B145AA0(v46);
      v12 = sub_25B1619F4();
      v13 = sub_25B161D94();
      sub_25B120358(v45, v3);
      sub_25B11A98C(v46, v5, v7, v9, v10);
      if (os_log_type_enabled(v12, v13))
      {
        log = v12;
        v14 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v14 = 136315906;
        *(v14 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v47);
        *(v14 + 12) = 2080;
        sub_25B1610F4();
        v15 = sub_25B108480(*(v1 + 168), *(v1 + 176), &v47);

        *(v14 + 14) = v15;
        *(v14 + 22) = 2080;
        sub_25B1610F4();
        v16 = sub_25B108480(*(v1 + 184), *(v1 + 192), &v47);

        *(v14 + 24) = v16;
        *(v14 + 32) = 1024;
        sub_25B161144();

        *(v14 + 34) = *(v1 + 336);

        v3 = v44;

        _os_log_impl(&dword_25B105000, log, v13, "%s Home: %s, Accessory: %s, activated: %{BOOL}d", v14, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v43, -1, -1);
        MEMORY[0x25F862BF0](v14, -1, -1);
      }

      else
      {
      }

      sub_25B11B1C8(v45, v3);
      sub_25B145AA0(v46);
      v31 = sub_25B1619F4();
      v32 = sub_25B161D94();
      sub_25B11A98C(v46, v5, v7, v9, v10);
      sub_25B120358(v45, v3);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v47);
        *(v33 + 12) = 2080;
        sub_25B1610F4();
        v35 = sub_25B108480(*(v1 + 136), *(v1 + 144), &v47);

        *(v33 + 14) = v35;
        *(v33 + 22) = 2080;
        sub_25B1610F4();
        v36 = sub_25B108480(*(v1 + 152), *(v1 + 160), &v47);

        *(v33 + 24) = v36;
        _os_log_impl(&dword_25B105000, v31, v32, "%s Running perform on accessory %s in home %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F862BF0](v34, -1, -1);
        MEMORY[0x25F862BF0](v33, -1, -1);
      }

      sub_25B1610F4();
      v37 = *(v1 + 72);
      v38 = *(v1 + 80);
      *(v1 + 304) = v38;
      sub_25B1610F4();
      v39 = *(v1 + 88);
      v40 = *(v1 + 96);
      *(v1 + 312) = v40;
      v41 = swift_task_alloc();
      *(v1 + 320) = v41;
      *v41 = v1;
      v41[1] = sub_25B160538;

      return sub_25B15C488(v37, v38, v39, v40);
    }

    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v22 = sub_25B161A14();
    __swift_project_value_buffer(v22, qword_27FA3A0A0);
    v23 = sub_25B1619F4();
    v24 = sub_25B161D94();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v47);
      _os_log_impl(&dword_25B105000, v23, v24, "%s accessory is not set, unable to run perform.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F862BF0](v27, -1, -1);
      v28 = v26;
      v3 = v25;
      MEMORY[0x25F862BF0](v28, -1, -1);
    }

    sub_25B1610D4();
    sub_25B120358(v45, v3);
  }

  else
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v17 = sub_25B161A14();
    __swift_project_value_buffer(v17, qword_27FA3A0A0);
    v18 = sub_25B1619F4();
    v19 = sub_25B161D94();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v47);
      _os_log_impl(&dword_25B105000, v18, v19, "%s home is not set, unable to run perform.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F862BF0](v21, -1, -1);
      MEMORY[0x25F862BF0](v20, -1, -1);
    }

    sub_25B1610D4();
  }

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_25B160538()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_25B16074C;
  }

  else
  {
    v2 = sub_25B16069C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B16069C()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  sub_25B1610D4();
  sub_25B11A98C(v5, v4, v3, v1, v2);
  sub_25B120358(v7, v6);
  v8 = v0[1];

  return v8();
}

uint64_t sub_25B16074C()
{
  v31 = v0;
  v1 = v0[41];
  v29 = v1;
  v2 = v0[36];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  sub_25B11B1C8(v7, v8);
  sub_25B145AA0(v6);
  v9 = v1;
  v10 = sub_25B1619F4();
  LOBYTE(v1) = sub_25B161D94();
  sub_25B11A98C(v6, v5, v4, v3, v2);
  sub_25B120358(v7, v8);

  v11 = v1;
  if (os_log_type_enabled(v10, v1))
  {
    v12 = v0[41];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v13 = 136315906;
    *(v13 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, v30);
    *(v13 + 12) = 2080;
    sub_25B1610F4();
    v16 = sub_25B108480(v0[13], v0[14], v30);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    sub_25B1610F4();
    v17 = sub_25B108480(v0[15], v0[16], v30);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2112;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v19;
    *v14 = v19;
    _os_log_impl(&dword_25B105000, v10, v11, "%s Failed to toggle accessory %s in home %s: %@", v13, 0x2Au);
    sub_25B13A1D8(v14);
    MEMORY[0x25F862BF0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v15, -1, -1);
    MEMORY[0x25F862BF0](v13, -1, -1);
  }

  v20 = v0[35];
  v21 = v0[36];
  v23 = v0[33];
  v22 = v0[34];
  v25 = v0[31];
  v24 = v0[32];
  v26 = v0[30];
  swift_willThrow();
  sub_25B11A98C(v24, v23, v22, v20, v21);
  sub_25B120358(v26, v25);
  v27 = v0[1];

  return v27();
}

uint64_t (*sub_25B160A08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t sub_25B160A7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B160B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return ToggleAccessoryIntent.perform()(a1);
}

uint64_t sub_25B160BC0(uint64_t a1)
{
  v2 = sub_25B160DA0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleAccessoryIntent.uniqueIdentifier.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D21540]) init];
  sub_25B161144();
  if (v4)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v4, v5, v6, v7, v8);
    sub_25B1610F4();
    sub_25B11A98C(v4, v5, v6, v7, v8);
    v1 = sub_25B161B24();
  }

  else
  {
    sub_25B11A98C(0, v5, v6, v7, v8);
  }

  [v0 finalize];
  v2 = sub_25B161F84();

  return v2;
}

unint64_t sub_25B160DA0()
{
  result = qword_27FA3A958;
  if (!qword_27FA3A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A958);
  }

  return result;
}

unint64_t sub_25B160DF8()
{
  result = qword_27FA3A960;
  if (!qword_27FA3A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A960);
  }

  return result;
}

unint64_t sub_25B160E50()
{
  result = qword_27FA3A968;
  if (!qword_27FA3A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A968);
  }

  return result;
}

void *sub_25B160F10@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

double sub_25B160F58@<D0>(uint64_t a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

void *sub_25B160FA0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}