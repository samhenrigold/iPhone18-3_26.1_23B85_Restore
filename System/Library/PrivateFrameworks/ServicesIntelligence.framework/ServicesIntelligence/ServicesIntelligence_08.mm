void sub_230DA84C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_230DB3F8C(0x6D69547472617473, 0xE900000000000065, *a1);
  if (v5)
  {
    goto LABEL_11;
  }

  v6 = v4;
  v7 = sub_230DB3F8C(0x656D6954646E65, 0xE700000000000000, v3);
  if (v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  v10 = sub_230DB403C(0x656C746974, 0xE500000000000000, v3);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v56 = v10;
  v13 = sub_230DB3F8C(0x6172754479616C70, 0xEC0000006E6F6974, v3);
  if (v14 & 1) != 0 || (v15 = v13, v16 = sub_230DB3F98(0x6E6F697461727564, 0xE800000000000000, v3), (v17) || (v18 = v16, v19 = sub_230DB403C(0x4449656C646E7562, 0xE800000000000000, v3), !v20))
  {

LABEL_11:

    v23 = sub_230E68D60();
    v24 = sub_230E69400();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v45 = v26;
      *v25 = 136315138;

      v27 = sub_230E68F60();
      v29 = v28;

      v30 = sub_230D7E620(v27, v29, &v45);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_230D02000, v23, v24, "[MediaProvider][getContents] Warning: Skipping media playback row with invalid data: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x23191EAE0](v26, -1, -1);
      MEMORY[0x23191EAE0](v25, -1, -1);
    }

    sub_230DA8B20(&v45);
    goto LABEL_14;
  }

  v21 = v19;
  v44 = v20;
  if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEF636973754D2E65)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v36 = v19;
  if (sub_230E698C0())
  {
    v22 = 0;
LABEL_17:
    v21 = v36;
    goto LABEL_21;
  }

  v21 = v36;
  if (v36 == 0xD000000000000012 && 0x8000000230E82CE0 == v44)
  {
    v22 = 1;
  }

  else
  {
    if (sub_230E698C0())
    {
      v22 = 1;
      goto LABEL_17;
    }

    v22 = 2;
    v21 = v36;
    if (v36 != 0x6C7070612E6D6F63 || v44 != 0xEC00000076742E65)
    {
      v43 = sub_230E698C0();
      v21 = v36;
      if (v43)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }
    }
  }

LABEL_21:
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v18))
  {
    *&v45 = v6;
    *(&v45 + 1) = v9;
    *&v46 = v56;
    *(&v46 + 1) = v12;
    LOBYTE(v47) = v22;
    *(&v47 + 1) = v15;
    LODWORD(v48) = v18;
    *(&v48 + 1) = v21;
    *&v49 = v44;
    *(&v49 + 1) = sub_230DB403C(0x747369747261, 0xE600000000000000, v3);
    *&v50 = v37;
    *(&v50 + 1) = sub_230DB403C(0x6D75626C61, 0xE500000000000000, v3);
    *&v51 = v38;
    *(&v51 + 1) = sub_230DB403C(0x65726E6567, 0xE500000000000000, v3);
    *&v52 = v39;
    *(&v52 + 1) = sub_230DB403C(0xD000000000000015, 0x8000000230E82A90, v3);
    *&v53 = v40;
    *(&v53 + 1) = sub_230DB403C(0xD000000000000016, 0x8000000230E82D00, v3);
    *&v54 = v41;
    *(&v54 + 1) = sub_230DB403C(0xD000000000000015, 0x8000000230E82D20, v3);
    v55 = v42;
    nullsub_1();
LABEL_14:
    v31 = v54;
    *(a2 + 128) = v53;
    *(a2 + 144) = v31;
    *(a2 + 160) = v55;
    v32 = v50;
    *(a2 + 64) = v49;
    *(a2 + 80) = v32;
    v33 = v52;
    *(a2 + 96) = v51;
    *(a2 + 112) = v33;
    v34 = v46;
    *a2 = v45;
    *(a2 + 16) = v34;
    v35 = v48;
    *(a2 + 32) = v47;
    *(a2 + 48) = v35;
    return;
  }

  __break(1u);
}

uint64_t sub_230DA89A8()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence13MediaProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaProvider(uint64_t a1)
{
  result = qword_27DB5C250;
  if (!qword_27DB5C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DA8AA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230DA8AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C260, &unk_230E752F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_230DA8B20(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for ContextProviderOptions(uint64_t a1)
{
  result = qword_27DB5C268;
  if (!qword_27DB5C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230DA8BB4(uint64_t a1)
{
  type metadata accessor for TimeFrame(319);
  if (v1 <= 0x3F)
  {
    sub_230DA8C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230DA8C38()
{
  if (!qword_27DB5C278)
  {
    v0 = sub_230E68FB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB5C278);
    }
  }
}

uint64_t sub_230DA8CE0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_230E689B0();
  v1 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230E689D0();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for TimeFrame(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_230E68910();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E68900();
  sub_230DA29A0(v39, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v20;
      sub_230E689A0();
      v28 = v37;
      result = (*(v1 + 104))(v4, *MEMORY[0x277CC9940], v37);
      if (!__OFSUB__(0, v27))
      {
        sub_230E68990();
        (*(v1 + 8))(v4, v28);
        (*(v35 + 8))(v8, v36);
        result = (*(v22 + 48))(v13, 1, v21);
        if (result != 1)
        {
          (*(v22 + 8))(v25, v21);
          return (*(v22 + 32))(v38, v13, v21);
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v32 = *(v22 + 8);
    v32(v25, v21);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0) + 48);
    (*(v22 + 32))(v38, v20, v21);
    return (v32)(v20 + v33, v21);
  }

  else
  {
    v30 = *v20;
    sub_230E689A0();
    v31 = v37;
    result = (*(v1 + 104))(v4, *MEMORY[0x277CC9968], v37);
    if (__OFSUB__(0, v30))
    {
      goto LABEL_13;
    }

    sub_230E68990();
    (*(v1 + 8))(v4, v31);
    (*(v35 + 8))(v8, v36);
    result = (*(v22 + 48))(v16, 1, v21);
    if (result == 1)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    (*(v22 + 8))(v25, v21);
    return (*(v22 + 32))(v38, v16, v21);
  }
}

uint64_t TimeContextFilter.init(timeRanges:daysOfWeek:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

ServicesIntelligence::DayTimeRange __swiftcall DayTimeRange.init(startHour:startMinute:endHour:endMinute:)(Swift::Int startHour, Swift::Int startMinute, Swift::Int endHour, Swift::Int endMinute)
{
  *v4 = startHour;
  v4[1] = startMinute;
  v4[2] = endHour;
  v4[3] = endMinute;
  result.endMinute = endMinute;
  result.endHour = endHour;
  result.startMinute = startMinute;
  result.startHour = startHour;
  return result;
}

double sub_230DA91EC()
{
  *&result = 5;
  xmmword_27DB5C280 = xmmword_230E75410;
  *algn_27DB5C290 = xmmword_230E75420;
  return result;
}

double sub_230DA9234()
{
  *&result = 12;
  xmmword_27DB5C2A0 = xmmword_230E75420;
  *algn_27DB5C2B0 = xmmword_230E75430;
  return result;
}

double sub_230DA927C()
{
  *&result = 17;
  xmmword_27DB5C2C0 = xmmword_230E75430;
  *algn_27DB5C2D0 = xmmword_230E75440;
  return result;
}

double sub_230DA92C4()
{
  *&result = 22;
  xmmword_27DB5C2E0 = xmmword_230E75440;
  *algn_27DB5C2F0 = xmmword_230E75410;
  return result;
}

__n128 sub_230DA930C@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a5@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a5;
    swift_once();
    a2 = v7;
    a5 = v9;
    a3 = v8;
  }

  result = *a2;
  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
  return result;
}

ServicesIntelligence::DayOfWeek_optional __swiftcall DayOfWeek.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_230DA93D0()
{
  result = qword_27DB5C300;
  if (!qword_27DB5C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C300);
  }

  return result;
}

uint64_t sub_230DA9424()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1 + 1);
  return sub_230E699D0();
}

uint64_t sub_230DA949C(uint64_t a1)
{
  v2 = *v1;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v2 + 1);
  return sub_230E699D0();
}

unint64_t sub_230DA94FC()
{
  result = qword_27DB5C308;
  if (!qword_27DB5C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C310, &qword_230E754F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C308);
  }

  return result;
}

uint64_t type metadata accessor for TimeFrame(uint64_t a1)
{
  result = qword_27DB5C318;
  if (!qword_27DB5C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230DA960C(uint64_t a1)
{
  sub_230DA9678(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_230DA9678(uint64_t a1)
{
  if (!qword_27DB5C328)
  {
    sub_230E68910();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DB5C328);
    }
  }
}

uint64_t sub_230DA96E0(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_230DA973C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_230DA979C(uint64_t a1, int a2)
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

uint64_t sub_230DA97BC(uint64_t result, int a2, int a3)
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

uint64_t sub_230DA9808(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = (a2 + 40);
    v7 = MEMORY[0x277D84F90];
    while (v4 < v2)
    {
      v19 = (v5 + 168 * v4);
      v20 = v19[9];
      v38 = v19[8];
      v39 = v20;
      v40 = *(v19 + 20);
      v21 = v19[5];
      v34 = v19[4];
      v35 = v21;
      v22 = v19[7];
      v36 = v19[6];
      v37 = v22;
      v23 = v19[1];
      v30 = *v19;
      v31 = v23;
      v24 = v19[3];
      v32 = v19[2];
      v33 = v24;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_23;
      }

      v26 = *(a2 + 16);
      if (v26)
      {
        v27 = v6;
        while (*(v27 - 1) > *&v30 || *&v30 > *v27)
        {
          v27 += 2;
          if (!--v26)
          {
            goto LABEL_6;
          }
        }

        sub_230D93514(&v30, v29);
        result = swift_isUniquelyReferenced_nonNull_native();
        v41 = v7;
        if ((result & 1) == 0)
        {
          result = sub_230D48F00(0, *(v7 + 16) + 1, 1);
          v7 = v41;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_230D48F00((v8 > 1), v9 + 1, 1);
          v7 = v41;
        }

        *(v7 + 16) = v9 + 1;
        v10 = v7 + 168 * v9;
        v11 = v30;
        v12 = v32;
        *(v10 + 48) = v31;
        *(v10 + 64) = v12;
        *(v10 + 32) = v11;
        v13 = v33;
        v14 = v34;
        v15 = v36;
        *(v10 + 112) = v35;
        *(v10 + 128) = v15;
        *(v10 + 80) = v13;
        *(v10 + 96) = v14;
        v16 = v37;
        v17 = v38;
        v18 = v39;
        *(v10 + 192) = v40;
        *(v10 + 160) = v17;
        *(v10 + 176) = v18;
        *(v10 + 144) = v16;
      }

LABEL_6:
      if (v4 == v2)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230DA99B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = (a2 + 40);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_25;
      }

      v9 = *(a2 + 16);
      if (v9)
      {
        break;
      }

LABEL_4:
      v8 = v4;
      if (v4 == v2)
      {
        return v7;
      }
    }

    v10 = v5 + 40 * v8;
    v11 = *v10;
    v12 = v6;
    while (*(v12 - 1) > v11 || v11 > *v12)
    {
      v12 += 2;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    v14 = *(v10 + 8);
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = *(v10 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D490D0(0, *(v7 + 16) + 1, 1);
    }

    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_230D490D0((v18 > 1), v19 + 1, 1);
    }

    *(v7 + 16) = v19 + 1;
    v20 = v7 + 40 * v19;
    *(v20 + 32) = v11;
    *(v20 + 40) = v14;
    *(v20 + 48) = v16;
    *(v20 + 56) = v15;
    *(v20 + 64) = v17;
  }

  while (v4 != v2);
  return v7;
}

uint64_t getEnumTagSinglePayload for TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_230DA9B84(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = type metadata accessor for TimeFrame(0);
  v3[26] = swift_task_alloc();
  v4 = sub_230E68910();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DA9C84, 0, 0);
}

void sub_230DA9C84()
{
  v57 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  sub_230DA8CE0(v1);
  sub_230E688D0();
  v6 = *(v3 + 8);
  v6(v1, v2);
  sub_230DA29A0(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 232);
  if (EnumCaseMultiPayload >= 2)
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
    (*(v10 + 32))(v8, v11 + *(v12 + 48), v9);
    v6(v11, v9);
  }

  else
  {
    sub_230E68900();
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 184);
  sub_230E688D0();
  v6(v13, v14);
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_230E69540();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000063, 0x8000000230E82D90);
  MEMORY[0x23191DA00](0x3232374253, 0xE500000000000000);
  MEMORY[0x23191DA00](0xD000000000000011, 0x8000000230E82E00);
  sub_230E69320();
  MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E20);
  sub_230E69320();
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v54 = v16;
  v18 = *(v15 + *(type metadata accessor for ContextProviderOptions(0) + 20));
  if (*(v18 + 16))
  {
    v19 = sub_230DA41A0(0x6F69746365726964, 0xE90000000000006ELL);
    if (v20)
    {
      sub_230D82664(*(v18 + 56) + 32 * v19, v0 + 16);
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 128);
        v22 = *(v0 + 136);
        sub_230E69540();

        v55 = 0xD000000000000012;
        v56 = 0x8000000230E82E40;
        MEMORY[0x23191DA00](v21, v22);

        MEMORY[0x23191DA00](10021, 0xE200000000000000);
        MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E40);

        v16 = v54;
      }
    }
  }

  v23 = sub_230DB38E4(v17, v16);

  v24 = sub_230E68D60();
  v25 = sub_230E693E0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v27;
    *v26 = 136315138;
    v28 = sub_230D7E620(v17, v16, &v55);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_230D02000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x23191EAE0](v27, -1, -1);
    MEMORY[0x23191EAE0](v26, -1, -1);
  }

  else
  {
  }

  v29 = sub_230E68D60();
  v30 = sub_230E693E0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v23 + 2);

    _os_log_impl(&dword_230D02000, v29, v30, "[CommuteProvider][getTimeRanges] Found %ld commute events", v31, 0xCu);
    MEMORY[0x23191EAE0](v31, -1, -1);
  }

  else
  {
  }

  v32 = *(v23 + 2);
  if (v32)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33 >= *(v23 + 2))
      {
        __break(1u);
        return;
      }

      v35 = *&v23[8 * v33 + 32];
      if (*(v35 + 16))
      {

        v36 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if (v37)
        {
          sub_230D82664(*(v35 + 56) + 32 * v36, v0 + 48);
        }

        else
        {
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 152) = 0;
      v38 = *(v0 + 144);
      if (*(v35 + 16) && (v39 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000), (v40 & 1) != 0))
      {
        sub_230D82664(*(v35 + 56) + 32 * v39, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 168) = 0;
      v41 = *(v0 + 160);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_230E4A3E8(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_230E4A3E8((v42 > 1), v43 + 1, 1, v34);
      }

      ++v33;
      *(v34 + 2) = v43 + 1;
      v44 = &v34[16 * v43];
      *(v44 + 4) = v38 + 978307200.0;
      *(v44 + 5) = v41 + 978307200.0;
      if (v32 == v33)
      {
        goto LABEL_38;
      }
    }

    v45 = sub_230E68D60();
    v46 = sub_230E69400();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_230D02000, v45, v46, "[CommuteProvider][getTimeRanges] Invalid output from IPSQLManager, timestamps not found", v47, 2u);
      MEMORY[0x23191EAE0](v47, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();

    v49 = *(v0 + 8);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_38:

    v50 = sub_230E68D60();
    v51 = sub_230E693E0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = *(v34 + 2);

      _os_log_impl(&dword_230D02000, v50, v51, "[CommuteProvider][getTimeRanges] Found %ld commute time ranges", v52, 0xCu);
      MEMORY[0x23191EAE0](v52, -1, -1);
    }

    else
    {
    }

    v53 = *(v0 + 176);
    v53[3] = &type metadata for CommuteContext;
    v53[4] = &off_2845ACCD0;
    *v53 = v34;

    v49 = *(v0 + 8);
  }

  v49();
}

uint64_t sub_230DAA534()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence15CommuteProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommuteProvider(uint64_t a1)
{
  result = qword_27DB5C340;
  if (!qword_27DB5C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAA62C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1BF00;

  return sub_230DA9B84(a1, a2);
}

unint64_t sub_230DAA6D8()
{
  result = qword_27DB5C350;
  if (!qword_27DB5C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C350);
  }

  return result;
}

uint64_t sub_230DAA72C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = type metadata accessor for TimeFrame(0);
  v3[26] = swift_task_alloc();
  v4 = sub_230E68910();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DAA82C, 0, 0);
}

uint64_t sub_230DAA82C()
{
  v52 = v0;
  v1 = *(v0 + 184);
  v2 = *(v1 + *(type metadata accessor for ContextProviderOptions(0) + 20));
  if (*(v2 + 16) && (v3 = sub_230DA41A0(0x6E6F697461636F6CLL, 0xEC00000065707954), (v4 & 1) != 0) && (sub_230D82664(*(v2 + 56) + 32 * v3, v0 + 16), (swift_dynamicCast() & 1) != 0))
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v49 = *(v0 + 120);
    v50 = *(v0 + 112);
    sub_230DA8CE0(v5);
    sub_230E688D0();
    v10 = *(v7 + 8);
    v10(v5, v6);
    sub_230DA29A0(v9, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 232);
    if (EnumCaseMultiPayload >= 2)
    {
      v19 = *(v0 + 216);
      v18 = *(v0 + 224);
      v20 = *(v0 + 208);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
      (*(v18 + 32))(v12, v20 + *(v21 + 48), v19);
      v10(v20, v19);
    }

    else
    {
      sub_230E68900();
    }

    v22 = *(v0 + 232);
    v23 = *(v0 + 216);
    sub_230E688D0();
    v10(v22, v23);
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_230E69540();
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD00000000000004DLL, 0x8000000230E82E90);
    v24 = v50;
    MEMORY[0x23191DA00](v50, v49);
    MEMORY[0x23191DA00](0xD000000000000014, 0x8000000230E82EE0);
    MEMORY[0x23191DA00](0x3436374253, 0xE500000000000000);
    MEMORY[0x23191DA00](0xD000000000000011, 0x8000000230E82E00);
    sub_230E69320();
    MEMORY[0x23191DA00](0xD000000000000012, 0x8000000230E82E20);
    sub_230E69320();
    v25 = sub_230DB38E4(*(v0 + 128), *(v0 + 136));

    v26 = *(v25 + 2);
    if (!v26)
    {
      v28 = MEMORY[0x277D84F90];
LABEL_38:

      v43 = sub_230E68D60();
      v44 = sub_230E693E0();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51[0] = v46;
        *v45 = 134218242;
        *(v45 + 4) = *(v28 + 16);

        *(v45 + 12) = 2080;
        v47 = sub_230D7E620(v24, v49, v51);

        *(v45 + 14) = v47;
        _os_log_impl(&dword_230D02000, v43, v44, "[LocationProvider][getTimeRanges] Found %ld time ranges for location type: %s", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x23191EAE0](v46, -1, -1);
        MEMORY[0x23191EAE0](v45, -1, -1);
      }

      else
      {
      }

      v48 = *(v0 + 176);
      v48[3] = &type metadata for LocationContext;
      v48[4] = &off_2845ACCE0;
      *v48 = v28;

      v16 = *(v0 + 8);
      goto LABEL_10;
    }

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 >= *(v25 + 2))
      {
        __break(1u);
        return result;
      }

      v29 = *&v25[8 * v27 + 32];
      if (*(v29 + 16))
      {

        v30 = sub_230DA41A0(0x6D69547472617473, 0xE900000000000065);
        if (v31)
        {
          sub_230D82664(*(v29 + 56) + 32 * v30, v0 + 48);
        }

        else
        {
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 152) = 0;
      v32 = *(v0 + 144);
      if (*(v29 + 16) && (v33 = sub_230DA41A0(0x656D6954646E65, 0xE700000000000000), (v34 & 1) != 0))
      {
        sub_230D82664(*(v29 + 56) + 32 * v33, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      if (!swift_dynamicCast())
      {
        break;
      }

      *(v0 + 168) = 0;
      v35 = *(v0 + 160);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E4A3E8(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_230E4A3E8((v36 > 1), v37 + 1, 1, v28);
        v28 = result;
      }

      ++v27;
      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v32 + 978307200.0;
      *(v38 + 40) = v35 + 978307200.0;
      v24 = v50;
      if (v26 == v27)
      {
        goto LABEL_38;
      }
    }

    v39 = sub_230E68D60();
    v40 = sub_230E69400();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_230D02000, v39, v40, "[LocationProvider][getTimeRanges] Invalid output from IPSQLManager, timestamps not found", v41, 2u);
      MEMORY[0x23191EAE0](v41, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230E68D60();
    v14 = sub_230E69400();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_230D02000, v13, v14, "[LocationProvider][getTimeRanges] No locationType specified in context filters", v15, 2u);
      MEMORY[0x23191EAE0](v15, -1, -1);
    }

    sub_230DAB1D8();
    swift_allocError();
    swift_willThrow();
  }

  v16 = *(v0 + 8);
LABEL_10:

  return v16();
}

uint64_t sub_230DAB034()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence16LocationProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationProvider(uint64_t a1)
{
  result = qword_27DB5C360;
  if (!qword_27DB5C360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAB12C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1BF00;

  return sub_230DAA72C(a1, a2);
}

unint64_t sub_230DAB1D8()
{
  result = qword_27DB5C370;
  if (!qword_27DB5C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C370);
  }

  return result;
}

unint64_t sub_230DAB240()
{
  result = qword_27DB5C378;
  if (!qword_27DB5C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C378);
  }

  return result;
}

uint64_t sub_230DAB294(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for TimeFrame(0);
  v3[12] = swift_task_alloc();
  v4 = sub_230E68910();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DAB394, 0, 0);
}

uint64_t sub_230DAB394()
{
  v28 = v0;
  v1 = v0[9];
  v2 = *(v1 + *(type metadata accessor for ContextProviderOptions(0) + 20));
  if (*(v2 + 16) && (v3 = sub_230DA41A0(0x746E6F43656D6974, 0xEB00000000747865), (v4 & 1) != 0) && (sub_230D82664(*(v2 + 56) + 32 * v3, (v0 + 2)), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v0[12];
    v6 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    sub_230DA8CE0(v0[16]);
    sub_230DA29A0(v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[15];
    if (EnumCaseMultiPayload >= 2)
    {
      v16 = v0[13];
      v17 = v0[14];
      v18 = v0[12];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C1D8, &qword_230E752A0);
      (*(v17 + 32))(v10, v18 + *(v19 + 48), v16);
      (*(v17 + 8))(v18, v16);
    }

    else
    {
      sub_230E68900();
    }

    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[8];
    v27[0] = v8;
    v27[1] = v7;
    v25 = sub_230DAB908(v20, v21, v27);

    v24[3] = &type metadata for TimeContext;
    v24[4] = &off_2845ACCF0;
    *v24 = v25;
    v26 = *(v23 + 8);
    v26(v21, v22);
    v26(v20, v22);

    v14 = v0[1];
  }

  else
  {
    v11 = sub_230E68D60();
    v12 = sub_230E69400();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_230D02000, v11, v12, "[TimeProvider][getTimeRanges] No timeContext specified in context filters", v13, 2u);
      MEMORY[0x23191EAE0](v13, -1, -1);
    }

    sub_230DAB8B4();
    swift_allocError();
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_230DAB688()
{
  v1 = OBJC_IVAR____TtC20ServicesIntelligence12TimeProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeProvider(uint64_t a1)
{
  result = qword_27DB5C388;
  if (!qword_27DB5C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAB778(uint64_t a1)
{
  result = sub_230E68D80();
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

uint64_t sub_230DAB808(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1BF00;

  return sub_230DAB294(a1, a2);
}

unint64_t sub_230DAB8B4()
{
  result = qword_27DB5C398;
  if (!qword_27DB5C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C398);
  }

  return result;
}

uint64_t sub_230DAB908(char *a1, char *a2, uint64_t *a3)
{
  v234 = sub_230E68790();
  v254 = *(v234 - 8);
  v7 = MEMORY[0x28223BE20](v234, v6);
  v221 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v256 = &v191 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v191 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v199 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v197 = &v191 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v216 = &v191 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v245 = &v191 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v222 = &v191 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v194 = &v191 - v32;
  v239 = sub_230E689B0();
  v229 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v33);
  v224 = &v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_230E68910();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v200 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v206 = &v191 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v205 = &v191 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v211 = &v191 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v202 = &v191 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v201 = &v191 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v204 = &v191 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v210 = &v191 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v218 = &v191 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v215 = &v191 - v66;
  MEMORY[0x28223BE20](v65, v67);
  v69 = &v191 - v68;
  v70 = sub_230E689D0();
  v193 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v71);
  v73 = *a3;
  v74 = a3[1];
  v255 = &v191 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230E689A0();
  v75 = *(v36 + 16);
  v212 = v36 + 16;
  v209 = v75;
  v75(v69, a1, v35);
  v217 = sub_230DACFC8();
  result = sub_230E69000();
  if (result)
  {
    v77 = MEMORY[0x277D84F90];
    (*(v36 + 8))(v69, v35);
LABEL_55:
    (*(v193 + 8))(v255, v70);
    return v77;
  }

  v192 = v70;
  v198 = *MEMORY[0x277CC99B8];
  v238 = v229 + 104;
  v223 = (v229 + 8);
  v195 = (v74 + 32);
  v252 = *MEMORY[0x277CC9968];
  v236 = v36 + 48;
  v230 = (v36 + 8);
  v219 = (v36 + 32);
  v251 = *MEMORY[0x277CC9988];
  v250 = *MEMORY[0x277CC9998];
  v233 = (v254 + 8);
  v220 = (v254 + 32);
  v228 = v73;
  v196 = (v73 + 56);
  v214 = MEMORY[0x277D84F90];
  v249 = xmmword_230E6C060;
  v78 = v211;
  v213 = a2;
  v226 = a1;
  v225 = v14;
  v235 = v35;
  v253 = v69;
  v203 = v74;
  while (1)
  {
    if (v74)
    {
      v85 = *v238;
      v86 = v224;
      v87 = v239;
      (*v238)(v224, v198, v239);
      v88 = sub_230E689C0();
      v89 = *v223;
      v90 = v86;
      v78 = v211;
      result = (*v223)(v90, v87);
      if ((v88 - 1) <= 6)
      {
        v91 = *(v203 + 16);
        v92 = v195;
        while (v91)
        {
          v93 = *v92++;
          --v91;
          if (v93 + 1 == v88)
          {
            goto LABEL_12;
          }
        }

        v188 = v224;
        v189 = v239;
        v85(v224, v252, v239);
        v190 = v194;
        v83 = v253;
        sub_230E68990();
        v89(v188, v189);
        result = (*v236)(v190, 1, v35);
        v82 = v190;
        if (result == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_6;
      }
    }

LABEL_12:
    v207 = v238 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v94 = v236;
    v208 = v236 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v95 = v228;
    if (v228)
    {
      v227 = *(v228 + 16);
      if (v227)
      {
        break;
      }
    }

    sub_230E68960();
    v161 = v94;
    v162 = v78;
    v163 = v224;
    v164 = v239;
    v237 = *v238;
    v237(v224, v252, v239);
    v165 = v197;
    sub_230E68990();
    (*v223)(v163, v164);
    v79 = *v161;
    result = (*v161)(v165, 1, v35);
    if (result == 1)
    {
      goto LABEL_59;
    }

    (*v219)(v205, v165, v35);
    v166 = sub_230E69010();
    v167 = v200;
    v168 = v209;
    if (v166)
    {
      v169 = v206;
      v170 = a1;
    }

    else
    {
      v169 = v206;
      v170 = v162;
    }

    v209(v169, v170, v35);
    v171 = v213;
    v172 = v205;
    if (sub_230E69000())
    {
      v173 = v167;
      v174 = v171;
    }

    else
    {
      v173 = v167;
      v174 = v172;
    }

    v168(v173, v174, v35);
    v175 = v168;
    v176 = v201;
    v175(v201, v206, v35);
    v177 = v202;
    v175(v202, v167, v35);
    sub_230E688D0();
    v179 = v178;
    sub_230E688D0();
    v181 = v180;
    v182 = *v230;
    (*v230)(v177, v35);
    v182(v176, v35);
    v183 = v214;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_230E4A3E8(0, *(v183 + 2) + 1, 1, v183);
    }

    v214 = v183;
    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v214 = sub_230E4A3E8((v184 > 1), v185 + 1, 1, v214);
    }

    v182(v200, v35);
    v182(v206, v35);
    v182(v205, v35);
    v182(v211, v35);
    v186 = v214;
    *(v214 + 2) = v185 + 1;
    v187 = &v186[16 * v185];
    *(v187 + 4) = v179;
    *(v187 + 5) = v181;
LABEL_5:
    v80 = v224;
    v81 = v239;
    v237(v224, v252, v239);
    v82 = v199;
    v83 = v253;
    sub_230E68990();
    (*v223)(v80, v81);
    result = v79(v82, 1, v35);
    if (result == 1)
    {
      goto LABEL_58;
    }

LABEL_6:
    v84 = *v230;
    (*v230)(v83, v35);
    (*v219)(v83, v82, v35);
    result = sub_230E69000();
    v78 = v211;
    v74 = v203;
    if (result)
    {
      v70 = v192;
      v77 = v214;
      v84(v83, v35);
      goto LABEL_55;
    }
  }

  v96 = 0;
  v97 = v196;
  v98 = v229;
  while (v96 < *(v95 + 16))
  {
    v240 = v97;
    v241 = v96;
    v102 = *(v97 - 2);
    v254 = *(v97 - 3);
    v246 = v102;
    v103 = *v97;
    v243 = *(v97 - 1);
    v244 = v103;
    v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3A8, &qword_230E75828);
    v104 = *(v98 + 72);
    v105 = *(v98 + 80);
    v106 = (v105 + 32) & ~v105;
    v247 = 3 * v104;
    v248 = 2 * v104;
    v107 = swift_allocObject();
    *(v107 + 16) = v249;
    v108 = *(v98 + 104);
    v109 = v239;
    v108((v107 + v106), v251, v239);
    v108((v107 + v106 + v104), v250, v109);
    v108((v107 + v106 + 2 * v104), v252, v109);
    sub_230E1D398(v107);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_230E68970();

    sub_230E68770();
    sub_230E68780();
    v231 = v105;
    v110 = swift_allocObject();
    *(v110 + 16) = v249;
    v108((v110 + v106), v251, v109);
    v232 = v104;
    v108((v110 + v106 + v104), v250, v109);
    v237 = v108;
    v108((v110 + v106 + v248), v252, v109);
    sub_230E1D398(v110);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v111 = v243;
    sub_230E68970();
    v112 = v244;

    sub_230E68770();
    sub_230E68780();
    if (v111 < v254 || v254 == v111 && v112 < v246)
    {
      v113 = swift_allocObject();
      *(v113 + 16) = v249;
      v114 = v239;
      v115 = v237;
      v237((v113 + v106), v251, v239);
      v115(v113 + v106 + v232, v250, v114);
      v116 = v252;
      v115(v113 + v106 + v248, v252, v114);
      sub_230E1D398(v113);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v117 = v224;
      v115(v224, v116, v114);
      v118 = v222;
      sub_230E68990();
      (*v223)(v117, v114);
      v119 = v235;
      result = (*v236)(v118, 1, v235);
      if (result == 1)
      {
        goto LABEL_57;
      }

      v120 = v221;
      sub_230E68970();

      v121 = v256;
      v122 = v234;
      (*v233)(v256, v234);
      (*v230)(v118, v119);
      (*v220)(v121, v120, v122);
      sub_230E68770();
      sub_230E68780();
    }

    v123 = v245;
    v124 = v225;
    sub_230E68980();
    v125 = *v236;
    v35 = v235;
    v126 = (*v236)(v123, 1, v235);
    v98 = v229;
    v254 = v125;
    if (v126 == 1)
    {
      v99 = *v233;
      v100 = v234;
      (*v233)(v256, v234);
      v99(v124, v100);
      result = sub_230DAD020(v245);
      v101 = v226;
    }

    else
    {
      v127 = *v219;
      v128 = v215;
      (*v219)(v215, v245, v35);
      v129 = v216;
      sub_230E68980();
      v130 = (v125)(v129, 1, v35);
      v101 = v226;
      if (v130 == 1)
      {
        (*v230)(v128, v35);
        v131 = *v233;
        v132 = v234;
        (*v233)(v256, v234);
        v131(v124, v132);
        result = sub_230DAD020(v129);
      }

      else
      {
        v127(v218, v129, v35);
        if (sub_230E69000() & 1) != 0 || (sub_230E69000())
        {
          v133 = *v230;
          (*v230)(v218, v35);
          v133(v128, v35);
          v134 = *v233;
          v135 = v234;
          (*v233)(v256, v234);
          result = (v134)(v124, v135);
        }

        else
        {
          if (sub_230E69010())
          {
            v136 = v210;
            v137 = v101;
          }

          else
          {
            v136 = v210;
            v137 = v128;
          }

          v209(v136, v137, v35);
          v138 = v218;
          v139 = v213;
          v140 = v101;
          if (sub_230E69000())
          {
            v141 = v204;
            v142 = v204;
            v143 = v139;
          }

          else
          {
            v141 = v204;
            v142 = v204;
            v143 = v138;
          }

          v144 = v209;
          v209(v142, v143, v35);
          v145 = v201;
          v144(v201, v210, v35);
          v146 = v144;
          v147 = v202;
          v146(v202, v141, v35);
          sub_230E688D0();
          v149 = v148;
          sub_230E688D0();
          v151 = v150;
          v152 = *v230;
          (*v230)(v147, v35);
          v152(v145, v35);
          v153 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_230E4A3E8(0, *(v153 + 2) + 1, 1, v153);
          }

          v214 = v153;
          v155 = *(v153 + 2);
          v154 = *(v153 + 3);
          if (v155 >= v154 >> 1)
          {
            v214 = sub_230E4A3E8((v154 > 1), v155 + 1, 1, v214);
          }

          v152(v204, v35);
          v152(v210, v35);
          v152(v218, v35);
          v152(v128, v35);
          v156 = *v233;
          v157 = v234;
          (*v233)(v256, v234);
          v158 = v157;
          v35 = v235;
          result = (v156)(v124, v158);
          v159 = v214;
          *(v214 + 2) = v155 + 1;
          v160 = &v159[16 * v155];
          *(v160 + 4) = v149;
          *(v160 + 5) = v151;
          v98 = v229;
          v101 = v140;
        }
      }
    }

    v96 = v241 + 1;
    v97 = v240 + 4;
    v95 = v228;
    if (v227 == v241 + 1)
    {
      a1 = v101;
      v79 = v254;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_230DACFC8()
{
  result = qword_27DB5C3A0;
  if (!qword_27DB5C3A0)
  {
    sub_230E68910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C3A0);
  }

  return result;
}

uint64_t sub_230DAD020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C330, &qword_230E75820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230DAD09C()
{
  result = qword_27DB5C3B0;
  if (!qword_27DB5C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C3B0);
  }

  return result;
}

uint64_t sub_230DAD0F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_230DAD180;

  return sub_230DAD680();
}

uint64_t sub_230DAD180(uint64_t a1)
{
  v3 = *v2;
  v3[5] = a1;
  v3[6] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_230DAD2B4, 0, 0);
  }
}

void sub_230DAD2B4()
{
  v13 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v10 = *(v1 + 32 + 8 * v3);

      sub_230DAD44C(&v10, &v11);

      if ((v12 & 1) == 0)
      {
        v9 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_230E4A3E8(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        if (v6 >= v5 >> 1)
        {
          v4 = sub_230E4A3E8((v5 > 1), v6 + 1, 1, v4);
        }

        *(v4 + 2) = v6 + 1;
        *&v4[16 * v6 + 32] = v9;
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v7 = v0[2];

    v7[3] = &type metadata for WorkoutContext;
    v7[4] = &off_2845ACD00;
    *v7 = v4;
    v8 = v0[1];

    v8();
  }
}

void sub_230DAD44C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_230DA41A0(0x7461447472617473, 0xE900000000000065), (v5 & 1) != 0) && (sub_230D82664(*(v3 + 56) + 32 * v4, v17), (swift_dynamicCast() & 1) != 0) && *(v3 + 16) && (v6 = v18, v7 = sub_230DA41A0(0x6E6F697461727564, 0xE800000000000000), (v8 & 1) != 0) && (sub_230D82664(*(v3 + 56) + 32 * v7, v17), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v6 + v18;
    *a2 = v6;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
  }

  else
  {

    v10 = sub_230E68D60();
    v11 = sub_230E69400();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136315138;
      v14 = sub_230E68F60();
      v16 = sub_230D7E620(v14, v15, v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_230D02000, v10, v11, "[WorkoutProvider][getTimeRanges] Warning: Invalid types for startDate or duration in workout data (workout: %s)", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23191EAE0](v13, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

uint64_t sub_230DAD680()
{
  v1[37] = v0;
  v2 = sub_230E68910();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = sub_230E68A60();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[44] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D0, &qword_230E75940);
  *v4 = v1;
  v4[1] = sub_230DAD82C;

  return MEMORY[0x2822008A0](v1 + 36, 0, 0, 0x726F576863746566, 0xEF29287374756F6BLL, sub_230DAE00C, 0, v5);
}

uint64_t sub_230DAD82C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_230DADF9C;
  }

  else
  {
    v2 = sub_230DAD940;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_230DAD940()
{
  v1 = *(v0 + 288);

  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_230D02000, v2, v3, "[WorkoutProvider][fetchWorkouts] Found %ld total workouts", v4, 0xCu);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  else
  {
  }

  v5 = v1 + 56;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 56);
  v9 = (63 - v7) >> 6;
  v62 = (*(v0 + 312) + 8);
  v63 = *(v0 + 336);
  v64 = v1;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      v65 = v12;
LABEL_12:
      v14 = *(v0 + 320);
      v15 = *(v0 + 304);
      (*(v63 + 16))(*(v0 + 344), *(v64 + 48) + *(v63 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), *(v0 + 328));
      *(v0 + 48) = 0x6E6F697461727564;
      *(v0 + 56) = 0xE800000000000000;
      sub_230E68A40();
      *(v0 + 64) = v16;
      v17 = MEMORY[0x277D839F8];
      *(v0 + 88) = MEMORY[0x277D839F8];
      *(v0 + 96) = 0x7461447472617473;
      *(v0 + 104) = 0xE900000000000065;
      sub_230E68A50();
      sub_230E688D0();
      v19 = v18;
      (*v62)(v14, v15);
      *(v0 + 112) = v19;
      *(v0 + 136) = v17;
      *(v0 + 144) = 0x696669746E656469;
      *(v0 + 152) = 0xEA00000000007265;
      *(v0 + 160) = sub_230E68A20();
      *(v0 + 168) = v20;
      *(v0 + 184) = MEMORY[0x277D837D0];
      *(v0 + 192) = 0xD000000000000013;
      *(v0 + 200) = 0x8000000230E82F70;
      v21 = sub_230E68A30();
      *(v0 + 232) = MEMORY[0x277D83E88];
      *(v0 + 208) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
      v22 = sub_230E69640();

      sub_230DA4438(v0 + 48, v0 + 240);
      v23 = *(v0 + 240);
      v24 = *(v0 + 248);
      result = sub_230DA41A0(v23, v24);
      if (v25)
      {
        break;
      }

      v26 = v22 + 8;
      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v27 = (v22[6] + 16 * result);
      *v27 = v23;
      v27[1] = v24;
      result = sub_230D0E394((v0 + 256), (v22[7] + 32 * result));
      v28 = v22[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v22[2] = v30;
      sub_230DA4438(v0 + 96, v0 + 240);
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      result = sub_230DA41A0(v31, v32);
      if (v33)
      {
        break;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v22[6] + 16 * result);
      *v34 = v31;
      v34[1] = v32;
      result = sub_230D0E394((v0 + 256), (v22[7] + 32 * result));
      v35 = v22[2];
      v29 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v22[2] = v36;
      sub_230DA4438(v0 + 144, v0 + 240);
      v37 = *(v0 + 240);
      v38 = *(v0 + 248);
      result = sub_230DA41A0(v37, v38);
      if (v39)
      {
        break;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v40 = (v22[6] + 16 * result);
      *v40 = v37;
      v40[1] = v38;
      result = sub_230D0E394((v0 + 256), (v22[7] + 32 * result));
      v41 = v22[2];
      v29 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v22[2] = v42;
      sub_230DA4438(v0 + 192, v0 + 240);
      v43 = *(v0 + 240);
      v44 = *(v0 + 248);
      result = sub_230DA41A0(v43, v44);
      if (v45)
      {
        break;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v46 = (v22[6] + 16 * result);
      *v46 = v43;
      v46[1] = v44;
      result = sub_230D0E394((v0 + 256), (v22[7] + 32 * result));
      v47 = v22[2];
      v29 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v49 = *(v0 + 344);
      v50 = *(v0 + 328);
      v22[2] = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A930, &unk_230E6B9D0);
      swift_arrayDestroy();
      (*(v63 + 8))(v49, v50);
      v12 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E4A5F8(0, v65[2] + 1, 1, v65, v51, v52, v53, v54, v61);
        v12 = result;
      }

      v56 = v12[2];
      v55 = v12[3];
      if (v56 >= v55 >> 1)
      {
        result = sub_230E4A5F8((v55 > 1), v56 + 1, 1, v12, v51, v52, v53, v54, v61);
        v12 = result;
      }

      v8 &= v8 - 1;
      v12[2] = v56 + 1;
      v12[v56 + 4] = v22;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_8:
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v65 = v12;
        v11 = v13;
        goto LABEL_12;
      }
    }

    v57 = sub_230E68D60();
    v58 = sub_230E693E0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v12[2];

      _os_log_impl(&dword_230D02000, v57, v58, "[WorkoutProvider][fetchWorkouts] Returning %ld workouts after filtering", v59, 0xCu);
      MEMORY[0x23191EAE0](v59, -1, -1);
    }

    else
    {
    }

    v60 = *(v0 + 8);

    return v60(v12);
  }

  return result;
}

uint64_t sub_230DADF9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DAE00C(uint64_t a1)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v2);
  v4 = &v20 - v3;
  v5 = sub_230E68BE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3E0, &unk_230E75950);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v10);
  v12 = &v20 - v11;
  sub_230E68BB0();
  sub_230DAE5B8();
  sub_230E69410();
  (*(v6 + 104))(v9, *MEMORY[0x277D4F368], v5);
  v25[3] = sub_230E68BD0();
  v25[4] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_0(v25);
  sub_230E68BC0();
  sub_230E68C00();
  swift_allocObject();
  sub_230E68BF0();
  sub_230E69410();
  sub_230E68BA0();
  sub_230E68B90();

  v13 = v22;
  (*(v1 + 16))(v4, v23, v22);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = swift_allocObject();
  (*(v1 + 32))(v15 + v14, v4, v13);
  v16 = v21;
  v17 = sub_230E68A70();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_230DAE604;
  *(v18 + 24) = v15;

  v17(sub_230DAE680, v18);

  return (*(v24 + 8))(v12, v16);
}

uint64_t sub_230DAE3A0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
    return sub_230E692E0();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);
    return sub_230E692F0();
  }
}

uint64_t sub_230DAE42C()
{
  v1 = OBJC_IVAR____TtC20ServicesIntelligence15WorkoutProvider_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutProvider(uint64_t a1)
{
  result = qword_27DB5C3C0;
  if (!qword_27DB5C3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DAE51C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_230D1BF00;

  return sub_230DAD0F0(a1);
}

unint64_t sub_230DAE5B8()
{
  result = qword_27DB5C3E8;
  if (!qword_27DB5C3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB5C3E8);
  }

  return result;
}

uint64_t sub_230DAE604(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C3D8, &qword_230E75948);

  return sub_230DAE3A0(a1);
}

uint64_t *sub_230DAE680(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_230DAE6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    sub_230D490B0(0, v1, 0);
    v2 = v33;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v30 = v4[8];
      v31 = v5;
      v32 = *(v4 + 20);
      v6 = v4[5];
      v26 = v4[4];
      v27 = v6;
      v7 = v4[7];
      v28 = v4[6];
      v29 = v7;
      v8 = v4[1];
      v22 = *v4;
      v23 = v8;
      v9 = v4[3];
      v24 = v4[2];
      v25 = v9;
      sub_230D93514(&v22, &v19);
      v33 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_230D490B0((v10 > 1), v11 + 1, 1);
        v2 = v33;
      }

      v20 = &type metadata for MediaPlayback;
      v21 = &off_2845ACB18;
      v12 = swift_allocObject();
      *&v19 = v12;
      v13 = v31;
      *(v12 + 144) = v30;
      *(v12 + 160) = v13;
      *(v12 + 176) = v32;
      v14 = v27;
      *(v12 + 80) = v26;
      *(v12 + 96) = v14;
      v15 = v29;
      *(v12 + 112) = v28;
      *(v12 + 128) = v15;
      v16 = v23;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      v17 = v25;
      *(v12 + 48) = v24;
      *(v12 + 64) = v17;
      *(v2 + 16) = v11 + 1;
      sub_230D1D080(&v19, v2 + 40 * v11 + 32);
      v4 = (v4 + 168);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_230DAE840(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v39 = MEMORY[0x277D84F90];
    sub_230D48F00(0, v1, 0);
    v2 = v39;
    v4 = a1 + 32;
    do
    {
      sub_230D1D01C(v4, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
      swift_dynamicCast();
      v32 = v21;
      v33 = v22;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v36 = v25;
      v37 = v26;
      v34 = v23;
      v35 = v24;
      v38 = v27;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v28 = v17;
      v39 = v2;
      if (v6 >= v5 >> 1)
      {
        sub_230D48F00((v5 > 1), v6 + 1, 1);
        v2 = v39;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 168 * v6;
      v8 = v28;
      v9 = v30;
      *(v7 + 48) = v29;
      *(v7 + 64) = v9;
      *(v7 + 32) = v8;
      v10 = v31;
      v11 = v32;
      v12 = v34;
      *(v7 + 112) = v33;
      *(v7 + 128) = v12;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      v13 = v35;
      v14 = v36;
      v15 = v37;
      *(v7 + 192) = v38;
      *(v7 + 160) = v14;
      *(v7 + 176) = v15;
      *(v7 + 144) = v13;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_230DAE9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_230D490D0(0, v1, 0);
    v2 = v19;
    v4 = a1 + 32;
    do
    {
      sub_230D1D01C(v4, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
      swift_dynamicCast();
      v5 = v15;
      v6 = v16;
      v7 = v17;
      v8 = v18;
      v19 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v15;
        sub_230D490D0((v9 > 1), v10 + 1, 1);
        v5 = v13;
        v2 = v19;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 40 * v10;
      *(v11 + 32) = v5;
      *(v11 + 48) = v6;
      *(v11 + 56) = v7;
      *(v11 + 64) = v8;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ContextualContentRetrieval.LocationFilter.locationType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextualContentRetrieval.CommuteFilter.direction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextualContentRetrieval.__allocating_init(useCase:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContextualContentRetrieval.init(useCase:)(a1, a2);
  return v4;
}

uint64_t ContextualContentRetrieval.init(useCase:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_230E68D70();
  type metadata accessor for IPSQLManager(0);
  v6 = swift_allocObject();
  v6[4] = 0;
  sub_230E68D70();
  v6[2] = a1;
  v6[3] = a2;
  *(v3 + 16) = v6;
  type metadata accessor for PersonalContextCoordinator(0);
  swift_allocObject();

  *(v3 + 24) = sub_230DBBAA8(v7);
  return v3;
}

uint64_t sub_230DAECF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 152) = a1;
  *(v5 + 176) = type metadata accessor for ContextProviderOptions(0);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = type metadata accessor for TimeFrame(0);
  *(v5 + 200) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 208) = v8;
  *(v5 + 216) = v9;
  *(v5 + 224) = *a3;
  *(v5 + 113) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_230DAEDE8, 0, 0);
}

uint64_t sub_230DAEDE8()
{
  v48 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 113);
  sub_230DA29A0(*(v0 + 160), *(v0 + 208));

  sub_230DB314C(v2, v1, v3);
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  sub_230DB31B0(v2, v1, v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v8 = *(v0 + 216);
    v42 = *(v0 + 200);
    v43 = *(v0 + 208);
    v9 = *(v0 + 113);
    v10 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v10 = 136315650;
    *(v0 + 144) = v8;

    v11 = sub_230E690C0();
    v13 = sub_230D7E620(v11, v12, v46);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v0 + 120) = v6;
    *(v0 + 128) = v7;
    *(v0 + 136) = v9;
    sub_230DB314C(v6, v7, v9);
    v14 = sub_230E690C0();
    v16 = sub_230D7E620(v14, v15, v46);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    sub_230DA29A0(v43, v42);
    v17 = sub_230E690C0();
    v19 = v18;
    sub_230DB3200(v43, type metadata accessor for TimeFrame);
    v20 = sub_230D7E620(v17, v19, v46);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_230D02000, v4, v5, "[ContextualContentRetrieval][retrieveUsageHistory] Discovering %s in %s for %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v45, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  else
  {
    v21 = *(v0 + 208);

    sub_230DB3200(v21, type metadata accessor for TimeFrame);
  }

  v22 = *(v0 + 113);
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);
  if (v22 == 3 && !v24 && v23 == 1)
  {
    v25 = swift_task_alloc();
    *(v0 + 240) = v25;
    *v25 = v0;
    v25[1] = sub_230DAF2E8;

    return sub_230DB06A8(v0 + 96);
  }

  else
  {
    sub_230DB314C(v23, v24, v22);
    v27 = *(v0 + 113);
    v28 = *(v0 + 232);
    v46[0] = *(v0 + 224);
    v29 = v46[0];
    v46[1] = v28;
    v47 = v27;
    v30 = sub_230DB03E4((v0 + 16), v46);
    *(v0 + 256) = v30;
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v35 = v30;
    sub_230DB31B0(v29, v28, v27);
    *(v0 + 264) = *(v34 + 24);
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
    sub_230DA29A0(v33, v31);
    *(v31 + *(v32 + 20)) = v35;
    v38 = *(v37 + 8);
    v39 = *(v38 + 8);

    v44 = (v39 + *v39);
    v40 = swift_task_alloc();
    *(v0 + 272) = v40;
    *v40 = v0;
    v40[1] = sub_230DAF62C;
    v41 = *(v0 + 184);

    return v44(v0 + 56, v41, v36, v38);
  }
}

uint64_t sub_230DAF2E8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_230DB0340;
  }

  else
  {
    v2 = sub_230DAF3FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DAF3FC()
{
  v22 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 248);
  v20[0] = v1;
  v20[1] = v2;
  v21 = v3;
  v5 = sub_230DB03E4((v0 + 16), v20);
  *(v0 + 256) = v5;
  if (v4)
  {
    sub_230DB31B0(v1, v2, v3);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = v5;
    sub_230DB31B0(v1, v2, v3);
    *(v0 + 264) = *(v11 + 24);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    sub_230DA29A0(v10, v8);
    *(v8 + *(v9 + 20)) = v12;
    v15 = *(v14 + 8);
    v16 = *(v15 + 8);

    v19 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_230DAF62C;
    v18 = *(v0 + 184);

    return v19(v0 + 56, v18, v13, v15);
  }
}

uint64_t sub_230DAF62C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  sub_230DB3200(*(v2 + 184), type metadata accessor for ContextProviderOptions);
  if (v0)
  {
    v3 = sub_230DAFA44;
  }

  else
  {
    v3 = sub_230DAF774;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DAF774()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v0[36] = v3;
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v3 + 16);
    _os_log_impl(&dword_230D02000, v4, v5, "[ContextManager][getContentForContext] Got %ld context time ranges", v6, 0xCu);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  if (*(v3 + 16))
  {
    v7 = v0[27];
    if (v7)
    {
      v8 = *(v7 + 16);
      v0[37] = sub_230DBB980();
      v9 = swift_task_alloc();
      v0[38] = v9;
      *v9 = v0;
      if (v8)
      {
        v10 = v0[27];
        v9[1] = sub_230DAFD2C;
        v11 = v0[20];
      }

      else
      {
        v9[1] = sub_230DAFC04;
        v11 = v0[20];
        v10 = MEMORY[0x277D84F90];
      }

      return sub_230DA7A8C(v10, v11);
    }

    else
    {
      v0[39] = sub_230DBB9A8();
      v16 = swift_task_alloc();
      v0[40] = v16;
      *v16 = v0;
      v16[1] = sub_230DAFAD4;
      v17 = v0[20];

      return sub_230DA6FB8(v17);
    }
  }

  else
  {
    v12 = v0[27];
    v13 = v0[19];

    *v13 = MEMORY[0x277D84F90];
    *(v0[19] + 8) = v12 == 0;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_230DAFA44()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DAFAD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_230DB0294;
  }

  else
  {

    *(v4 + 368) = a1;
    v5 = sub_230DB01A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230DAFC04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_230DAFF8C;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_230DAFE80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230DAFD2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {

    v5 = sub_230DB010C;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_230DB0034;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230DAFE80()
{
  v1 = sub_230DAE6C8(v0[44]);

  v2 = sub_230DAE840(v1);

  v3 = v0[19];
  v4 = sub_230DA9808(v2, v0[36]);

  *v3 = v4;
  *(v0[19] + 8) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_230DAFF8C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DB0034()
{
  v1 = v0[19];
  v2 = sub_230DA9808(v0[45], v0[36]);

  *v1 = v2;
  *(v0[19] + 8) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_230DB010C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DB01A4()
{
  v1 = v0[36];
  v2 = v0[19];
  v3 = sub_230DAE9D8(v0[46]);

  v4 = sub_230DA99B4(v3, v1);

  *v2 = v4;
  *(v0[19] + 8) = 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_230DB0294()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230DB0340()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_230DB03E4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (*(a2 + 16) <= 1u)
  {
    if (*(a2 + 16))
    {

      v2 = sub_230D0E264(MEMORY[0x277D84F90]);
      if (v4)
      {
        v19 = MEMORY[0x277D837D0];
        *&v18 = v5;
        *(&v18 + 1) = v4;
        sub_230D0E394(&v18, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v2;
        sub_230E1BE84(v17, 0x6F69746365726964, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native);
        v2 = v20;
      }

      v13 = sub_230DBB850();
      a1[3] = type metadata accessor for CommuteProvider(0);
      a1[4] = &off_2845ACF38;
      *a1 = v13;
      return v2;
    }

    v6 = sub_230DBB828();
    a1[3] = type metadata accessor for LocationProvider(0);
    a1[4] = &off_2845ACF58;
    *a1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C428, &unk_230E75B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230E6B3B0;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    v8 = inited + 32;
    v9 = 0xEC00000065707954;
    v10 = MEMORY[0x277D837D0];
    goto LABEL_6;
  }

  if (*(a2 + 16) == 2)
  {

    v11 = sub_230DBB8A0();
    a1[3] = type metadata accessor for TimeProvider(0);
    a1[4] = &off_2845AD008;
    *a1 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C428, &unk_230E75B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230E6B3B0;
    *(inited + 32) = 0x746E6F43656D6974;
    v8 = inited + 32;
    v9 = 0xEB00000000747865;
    v10 = &type metadata for TimeContextFilter;
LABEL_6:
    *(inited + 72) = v10;
    *(inited + 40) = v9;
    *(inited + 48) = v5;
    *(inited + 56) = v4;
    v2 = sub_230D0E264(inited);
    swift_setDeallocating();
    sub_230D2D9F8(v8, &qword_27DB5A930, &unk_230E6B9D0);
    return v2;
  }

  if (v5 | v4)
  {
    sub_230DB35C8();
    swift_allocError();
    *v14 = xmmword_230E6E730;
    swift_willThrow();
    return v2;
  }

  v16 = sub_230DBB878();
  a1[3] = type metadata accessor for WorkoutProvider(0);
  a1[4] = &off_2845AD0B8;
  *a1 = v16;
  return sub_230D0E264(MEMORY[0x277D84F90]);
}

uint64_t sub_230DB06A8(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_230DB06C8, 0, 0);
}

uint64_t sub_230DB06C8()
{
  sub_230E68D50();
  swift_allocObject();
  v0[10] = sub_230E68D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C420, &unk_230E75B50);
  v1 = sub_230E68CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = xmmword_230E6C070;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, *MEMORY[0x277D1EAB0], v1);
  v7(v6 + v3, *MEMORY[0x277D1EA60], v1);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_230DB0878;

  return MEMORY[0x2821761F0](v5);
}

uint64_t sub_230DB0878(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_230DB0C18, 0, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v4[15] = v6;
    *v6 = v5;
    v6[1] = sub_230DB0A08;

    return sub_230DB0ED8((v4 + 2), a1);
  }
}

uint64_t sub_230DB0A08()
{

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v1 = sub_230DB0C84;
  }

  else
  {

    v1 = sub_230DB0B28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_230DB0B28()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230DB0BA0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);
  *v1 = *(v0 + 40);
  *(v1 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230DB0C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DB0C84()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_230DB0D20;
  v2 = *(v0 + 104);

  return sub_230DB1BF8(v0 + 40, v2);
}

uint64_t sub_230DB0D20()
{

  if (v0)
  {
    MEMORY[0x23191E910](v0);

    v1 = sub_230DB0E68;
  }

  else
  {

    v1 = sub_230DB0BA0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_230DB0E68()
{
  sub_230DB2AA8(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DB0ED8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_230E68710();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_230E68EC0();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C408, &qword_230E75B48);
  v3[17] = swift_task_alloc();
  v6 = sub_230E68ED0();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_230E68CF0();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = sub_230E68D20();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DB115C, 0, 0);
}

uint64_t sub_230DB115C()
{
  v95 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_17:
    sub_230DB35C8();
    swift_allocError();
    *v32 = 0;
    v32[1] = 0;
    swift_willThrow();
LABEL_18:

    v33 = v93[1];
    goto LABEL_19;
  }

  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[15];
  v7 = *(v3 + 16);
  v3 += 16;
  v90 = v7;
  v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v89 = *MEMORY[0x277D1EAB0];
  v88 = (v4 + 104);
  v87 = (v4 + 8);
  v92 = (v3 - 8);
  v84 = (v5 + 48);
  v81 = (v5 + 16);
  v82 = (v5 + 32);
  v80 = (v5 + 88);
  v79 = *MEMORY[0x277D72A58];
  v83 = (v5 + 8);
  v77 = (v6 + 16);
  v78 = (v5 + 96);
  v76 = (v6 + 88);
  v75 = *MEMORY[0x277D729B8];
  v74 = (v6 + 8);
  v86 = *(v3 + 56);
  while (1)
  {
    v9 = v0[24];
    v10 = v0[22];
    v90(v0[28], v8, v0[26]);
    sub_230E68D10();
    (*v88)(v9, v89, v10);
    sub_230DB3570();
    sub_230E691A0();
    sub_230E691A0();
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[22];
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      break;
    }

    v85 = sub_230E698C0();
    v15 = *v87;
    (*v87)(v11, v13);
    v15(v12, v13);

    v0 = v93;
    if (v85)
    {
      goto LABEL_9;
    }

LABEL_4:
    (*v92)(v0[28], v0[26]);
    v8 += v86;
    if (!--v2)
    {
      goto LABEL_17;
    }
  }

  v14 = *v87;
  (*v87)(v0[24], v0[22]);
  v14(v12, v13);

  v0 = v93;
LABEL_9:
  v17 = v0[17];
  v16 = v0[18];
  sub_230E68D00();
  if ((*v84)(v17, 1, v16) == 1)
  {
    sub_230D2D9F8(v0[17], &qword_27DB5C408, &qword_230E75B48);
LABEL_15:
    v29 = sub_230E68D60();
    v30 = sub_230E693F0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_230D02000, v29, v30, "", v31, 2u);
      MEMORY[0x23191EAE0](v31, -1, -1);
    }

    goto LABEL_4;
  }

  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[18];
  (*v82)(v18, v0[17], v20);
  (*v81)(v19, v18, v20);
  if ((*v80)(v19, v20) != v79)
  {
    v26 = v0[20];
    v27 = v0[18];
    v28 = *v83;
    (*v83)(v0[21], v27);
    v28(v26, v27);
    v0 = v93;
    goto LABEL_15;
  }

  v21 = v0[16];
  v22 = v0[14];
  (*v78)(v0[20], v0[18]);
  v23 = swift_projectBox();
  (*v77)(v21, v23, v22);
  if ((*v76)(v21, v22) != v75)
  {
    v24 = v0[16];
    v25 = v0[14];
    (*v83)(v0[21], v0[18]);
    (*v74)(v24, v25);

    goto LABEL_15;
  }

  v35 = v0[16];
  (*(v0[15] + 96))(v35, v0[14]);
  v37 = *v35;
  v36 = v35[1];

  v38 = sub_230E68D60();
  v39 = sub_230E693F0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_230D02000, v38, v39, "---------- 1. Location check ----------", v40, 2u);
    MEMORY[0x23191EAE0](v40, -1, -1);
  }

  v41 = sub_230E68D60();
  v42 = sub_230E693F0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v94[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_230D7E620(v37, v36, v94);
    _os_log_impl(&dword_230D02000, v41, v42, "Semantic Location: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x23191EAE0](v44, -1, -1);
    MEMORY[0x23191EAE0](v43, -1, -1);
  }

  v45 = 1701670760;
  v47 = v93[12];
  v46 = v93[13];
  v48 = v93[11];
  v93[6] = v37;
  v93[7] = v36;
  sub_230E68700();
  sub_230D0D278();
  v49 = sub_230E69470();
  v51 = v50;
  (*(v47 + 8))(v46, v48);

  v53 = sub_230E690D0();
  v54 = v52;
  if (v53 == 1701670760 && v52 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v55 = sub_230E68D60();
    v56 = sub_230E693F0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = "location is home!";
      goto LABEL_31;
    }

    v59 = 1701670760;
LABEL_33:
    v91 = v59;
    goto LABEL_34;
  }

  v45 = 1802661751;
  if (v53 != 1802661751 || v54 != 0xE400000000000000)
  {
    v65 = sub_230E698C0();

    if (v65)
    {
      goto LABEL_39;
    }

    v66 = sub_230E68D60();
    v67 = sub_230E693F0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_230D02000, v66, v67, "no significant location found!", v68, 2u);
      MEMORY[0x23191EAE0](v68, -1, -1);
    }

    v69 = v93[28];
    v70 = v93[26];
    v71 = v93[21];
    v72 = v93[18];

    sub_230DB35C8();
    swift_allocError();
    *v73 = v49;
    v73[1] = v51;
    swift_willThrow();
    (*v83)(v71, v72);
    (*v92)(v69, v70);
    goto LABEL_18;
  }

LABEL_39:

  v55 = sub_230E68D60();
  v56 = sub_230E693F0();
  if (!os_log_type_enabled(v55, v56))
  {
    v59 = 1802661751;
    goto LABEL_33;
  }

  v57 = "location is work!";
LABEL_31:
  v91 = v45;
  v58 = swift_slowAlloc();
  *v58 = 0;
  _os_log_impl(&dword_230D02000, v55, v56, v57, v58, 2u);
  MEMORY[0x23191EAE0](v58, -1, -1);
LABEL_34:
  v60 = v93[28];
  v61 = v93[26];
  v62 = v93[21];
  v63 = v93[18];
  v64 = v93[8];

  (*v83)(v62, v63);
  (*v92)(v60, v61);
  *v64 = v91;
  *(v64 + 8) = 0xE400000000000000;
  *(v64 + 16) = 0;

  v33 = v93[1];
LABEL_19:

  return v33();
}

uint64_t sub_230DB1BF8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_230E68910();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_230E689B0();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_230E689D0();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_230E68710();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = sub_230E68EC0();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C408, &qword_230E75B48);
  v3[26] = swift_task_alloc();
  v9 = sub_230E68ED0();
  v3[27] = v9;
  v3[28] = *(v9 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v10 = sub_230E68CF0();
  v3[31] = v10;
  v3[32] = *(v10 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v11 = sub_230E68D20();
  v3[35] = v11;
  v3[36] = *(v11 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230DB1F90, 0, 0);
}

uint64_t sub_230DB1F90()
{
  v104 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_26:
    sub_230DB35C8();
    swift_allocError();
    *v59 = 0;
    v59[1] = 0;
    swift_willThrow();

    v60 = v0[1];
    goto LABEL_27;
  }

  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[28];
  v84 = v0[25];
  v6 = v0[24];
  v7 = *(v3 + 16);
  v3 += 16;
  v100 = v7;
  v8 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v99 = *MEMORY[0x277D1EA60];
  v98 = (v4 + 104);
  v97 = (v4 + 8);
  v96 = (v3 - 8);
  v94 = (v5 + 48);
  v91 = (v5 + 16);
  v92 = (v5 + 32);
  v90 = (v5 + 88);
  v89 = *MEMORY[0x277D72A58];
  v93 = (v5 + 8);
  v87 = (v6 + 16);
  v88 = (v5 + 96);
  v86 = (v6 + 88);
  v85 = *MEMORY[0x277D729B8];
  v82 = (v6 + 96);
  v83 = (v6 + 8);
  v81 = (v0[21] + 8);
  v95 = *(v3 + 56);
  while (1)
  {
    v101 = v2;
    v10 = v0[33];
    v11 = v0[31];
    v100(v0[37], v8, v0[35]);
    sub_230E68D10();
    (*v98)(v10, v99, v11);
    sub_230DB3570();
    sub_230E691A0();
    sub_230E691A0();
    v13 = v0[33];
    v12 = v0[34];
    v14 = v0[31];
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v15 = *v97;
      (*v97)(v0[33], v0[31]);
      v15(v12, v14);
    }

    else
    {
      v16 = sub_230E698C0();
      v17 = *v97;
      (*v97)(v13, v14);
      v17(v12, v14);

      if ((v16 & 1) == 0)
      {
        (*v96)(v0[37], v0[35]);
        goto LABEL_4;
      }
    }

    v19 = v0[26];
    v18 = v0[27];
    sub_230E68D00();
    if ((*v94)(v19, 1, v18) == 1)
    {
      v9 = v0[26];
      (*v96)(v0[37], v0[35]);
      sub_230D2D9F8(v9, &qword_27DB5C408, &qword_230E75B48);
      goto LABEL_4;
    }

    v20 = v0[29];
    v21 = v0[30];
    v22 = v0[27];
    (*v92)(v21, v0[26], v22);
    (*v91)(v20, v21, v22);
    if ((*v90)(v20, v22) != v89)
    {
      v50 = v0[37];
      v51 = v0[35];
      v52 = v0[29];
      v53 = v0[27];
      v54 = *v93;
      (*v93)(v0[30], v53);
      (*v96)(v50, v51);
      v54(v52, v53);
      goto LABEL_4;
    }

    v23 = v0[25];
    v24 = v0[23];
    (*v88)(v0[29], v0[27]);
    v25 = swift_projectBox();
    (*v87)(v23, v25, v24);
    if ((*v86)(v23, v24) != v85)
    {
      v55 = v0[37];
      v56 = v0[35];
      v57 = v0[25];
      v58 = v0[23];
      (*v93)(v0[30], v0[27]);
      (*v96)(v55, v56);
      (*v83)(v57, v58);

      goto LABEL_4;
    }

    v26 = v0[25];
    (*v82)(v26, v0[23]);
    v27 = *v26;
    v28 = *(v84 + 8);

    v29 = sub_230E68D60();
    v30 = sub_230E693F0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_230D02000, v29, v30, "---------- 2. Commute check ----------", v31, 2u);
      MEMORY[0x23191EAE0](v31, -1, -1);
    }

    v32 = sub_230E68D60();
    v33 = sub_230E693F0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v103[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_230D7E620(v27, v28, v103);
      _os_log_impl(&dword_230D02000, v32, v33, "Current Motion State: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23191EAE0](v35, -1, -1);
      MEMORY[0x23191EAE0](v34, -1, -1);
    }

    v36 = v0[22];
    v37 = v0[20];
    v0[6] = v27;
    v0[7] = v28;
    sub_230E68700();
    sub_230D0D278();
    sub_230E69470();
    (*v81)(v36, v37);

    v38 = sub_230E690D0();
    v40 = v39;

    if (v38 == 0x69746F6D6F747561 && v40 == 0xEA00000000006576)
    {
      break;
    }

    v41 = sub_230E698C0();

    if (v41)
    {
      goto LABEL_31;
    }

    v42 = sub_230E68D60();
    v43 = sub_230E693F0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[37];
    v46 = v0[35];
    v47 = v0[30];
    v48 = v0[27];
    if (v44)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_230D02000, v42, v43, "no commute context identified.\n", v49, 2u);
      MEMORY[0x23191EAE0](v49, -1, -1);
    }

    (*v93)(v47, v48);
    (*v96)(v45, v46);
LABEL_4:
    v8 += v95;
    v2 = v101 - 1;
    if (v101 == 1)
    {
      goto LABEL_26;
    }
  }

LABEL_31:
  v62 = sub_230E68D60();
  v63 = sub_230E693F0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_230D02000, v62, v63, "commute identified as current context.\n", v64, 2u);
    MEMORY[0x23191EAE0](v64, -1, -1);
  }

  v66 = v0[18];
  v65 = v0[19];
  v67 = v0[16];
  v102 = v0[17];
  v68 = v0[14];
  v69 = v0[15];
  v70 = v0[12];
  v71 = v0[13];
  v72 = v0[11];

  sub_230E689A0();
  (*(v69 + 104))(v67, *MEMORY[0x277CC9980], v68);
  sub_230E68900();
  v73 = sub_230E689C0();
  (*(v70 + 8))(v71, v72);
  (*(v69 + 8))(v67, v68);
  (*(v66 + 8))(v65, v102);
  v74 = v0[37];
  v75 = v0[35];
  v76 = v0[30];
  v77 = v0[27];
  v78 = *v93;
  if ((v73 - 11) >= 0xFFFFFFFFFFFFFFFALL)
  {
    v80 = v0[8];
    v78(v76, v77);
    (*v96)(v74, v75);
    *v80 = xmmword_230E75960;
  }

  else
  {
    v78(v76, v77);
    (*v96)(v74, v75);
    v79 = v0[8];
    if ((v73 - 21) >= 0xFFFFFFFFFFFFFFFALL)
    {
      *v79 = xmmword_230E75970;
    }

    else
    {
      *v79 = 0;
      *(v79 + 8) = 0;
    }
  }

  *(v0[8] + 16) = 1;

  v60 = v0[1];
LABEL_27:

  return v60();
}

uint64_t sub_230DB2AA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v51 = sub_230E689B0();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_230E689D0();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_230E68910();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v16 = sub_230E68D60();
  v17 = sub_230E693F0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_230D02000, v16, v17, "---------- 3. Time-based filtering ----------", v18, 2u);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  v45[1] = v15;
  v45[2] = v2;
  v19 = sub_230E68D60();
  v20 = sub_230E693F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_230D02000, v19, v20, "Leveraging the current time / day of week and using a 1 hr time radius", v21, 2u);
    MEMORY[0x23191EAE0](v21, -1, -1);
  }

  sub_230E68900();
  sub_230E689A0();
  v22 = *(v3 + 104);
  v23 = v51;
  v22(v6, *MEMORY[0x277CC9980], v51);
  v24 = sub_230E689C0();
  v25 = *(v3 + 8);
  v25(v6, v23);
  v22(v6, *MEMORY[0x277CC99A0], v23);
  v26 = v14;
  v27 = sub_230E689C0();
  result = (v25)(v6, v23);
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v24, 1))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v45[0] = (v24 - 1) & ~((v24 - 1) >> 63);
  if (v24 + 1 >= 23)
  {
    v29 = 23;
  }

  else
  {
    v29 = v24 + 1;
  }

  v30 = v51;
  v22(v6, *MEMORY[0x277CC99B8], v51);
  v31 = v27;
  v32 = sub_230E689C0();
  v25(v6, v30);
  if (v32 == 7 || v32 == 1)
  {
    v34 = &unk_2845A57C8;
  }

  else
  {
    v34 = &unk_2845A57F0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C400, &qword_230E75B40);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_230E6B3B0;
  *(v35 + 32) = v45[0];
  *(v35 + 40) = v31;
  *(v35 + 48) = v29;
  *(v35 + 56) = v31;

  v36 = sub_230E68D60();
  v37 = sub_230E693F0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v34;
    v54 = v39;
    *v38 = 136315138;
    v52 = v35;

    v40 = sub_230E690C0();
    v42 = v10;
    v43 = sub_230D7E620(v40, v41, &v54);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_230D02000, v36, v37, "Time range which will be used to filter content: %s\n", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x23191EAE0](v39, -1, -1);
    MEMORY[0x23191EAE0](v38, -1, -1);

    (*(v48 + 8))(v42, v49);
  }

  else
  {

    (*(v48 + 8))(v10, v49);
  }

  result = (*(v46 + 8))(v26, v47);
  v44 = v50;
  *v50 = v35;
  v44[1] = v34;
  *(v44 + 16) = 2;
  return result;
}

uint64_t ContextualContentRetrieval.deinit()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContextualContentRetrieval.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_230DB314C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 2u)
  {
  }

  if (a3 == 2)
  {
  }

  return v4;
}

uint64_t sub_230DB31B0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return v4;
    }
  }
}

uint64_t sub_230DB3200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ContextualContentRetrieval(uint64_t a1)
{
  result = qword_27DB5C3F0;
  if (!qword_27DB5C3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230DB32B4(uint64_t a1)
{
  result = sub_230E68D80();
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

uint64_t dispatch thunk of ContextualContentRetrieval.retrieveUsageHistory(content:context:timeFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_230D1BF00;

  return v12(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence26ContextualContentRetrievalC11ContextTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_230DB3528(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_230DB3570()
{
  result = qword_27DB5C410;
  if (!qword_27DB5C410)
  {
    sub_230E68CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C410);
  }

  return result;
}

unint64_t sub_230DB35C8()
{
  result = qword_27DB5C418;
  if (!qword_27DB5C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence26ContextualContentRetrievalC12ContextErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230DB3634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_230DB3688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_230DB36E4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

Swift::Double_optional __swiftcall ResultRow.double(for:)(Swift::String a1)
{
  v1 = sub_230DB3734(a1._countAndFlagsBits, a1._object, MEMORY[0x277D839F8]);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Int_optional __swiftcall ResultRow.int(for:)(Swift::String a1)
{
  v1 = sub_230DB3734(a1._countAndFlagsBits, a1._object, MEMORY[0x277D83B88]);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_230DB3734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (*(v4 + 16) && (v5 = sub_230DA41A0(a1, a2), (v6 & 1) != 0))
  {
    sub_230D82664(*(v4 + 56) + 32 * v5, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v7 = swift_dynamicCast();
  v8 = v11;
  if (!v7)
  {
    return 0;
  }

  return v8;
}

Swift::String_optional __swiftcall ResultRow.string(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_230DA41A0(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    sub_230D82664(*(v2 + 56) + 32 * v3, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

id sub_230DB3860()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_230D90038(0, &qword_27DB5C448, 0x277D21238);
    sub_230E69030();
    v3 = v0;
    v4 = sub_230E693D0();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

char *sub_230DB38E4(uint64_t a1, char *a2)
{
  v5 = sub_230DB3860();
  v6 = sub_230E693C0();
  if (v2)
  {
    MEMORY[0x23191E910](v2);

LABEL_3:

    v7 = sub_230E68D60();
    v8 = sub_230E69400();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_230D7E620(a1, a2, &v26);
      _os_log_impl(&dword_230D02000, v7, v8, "[IPSQLManager][executeQuery] Query execution failed: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23191EAE0](v10, -1, -1);
      MEMORY[0x23191EAE0](v9, -1, -1);
    }

    sub_230DAA6D8();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return a2;
  }

  v12 = v6;

  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [v12 next];
  a2 = MEMORY[0x277D84F90];
  if (v13)
  {
    do
    {
      v14 = [v12 row];
      if (v14)
      {
        v15 = v14;
        v16 = sub_230E68F50();

        v17 = sub_230DB3C24(v16);

        if (v17)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_230E4A4EC(0, *(a2 + 2) + 1, 1, a2);
          }

          v19 = *(a2 + 2);
          v18 = *(a2 + 3);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v21 = sub_230E4A4EC((v18 > 1), v19 + 1, 1, a2);
            v20 = v19 + 1;
            a2 = v21;
          }

          *(a2 + 2) = v20;
          *&a2[8 * v19 + 32] = v17;
        }
      }
    }

    while (([v12 next] & 1) != 0);
  }

  v22 = sub_230E68D60();
  v23 = sub_230E693E0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(a2 + 2);

    _os_log_impl(&dword_230D02000, v22, v23, "[IPSQLManager][executeQuery] Query returned %ld results", v24, 0xCu);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_230DB3C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
    v2 = sub_230E69640();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_230D8FF88(*(a1 + 48) + 40 * v12, v27);
        sub_230D82664(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_230D8FF88(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_230D82664(v25 + 8, v20);
        sub_230DBB758(v24);
        v21 = v18;
        sub_230D0E394(v20, v22);
        v13 = v21;
        sub_230D0E394(v22, v23);
        sub_230D0E394(v23, &v21);
        result = sub_230DA41A0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_230D0E394(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_230D0E394(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_230DBB758(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_230DB3EE0()
{

  v1 = OBJC_IVAR____TtC20ServicesIntelligence12IPSQLManager_logger;
  v2 = sub_230E68D80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_230DB3FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16) && (v5 = sub_230DA41A0(a1, a2), (v6 & 1) != 0))
  {
    sub_230D82664(*(a3 + 56) + 32 * v5, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v7 = swift_dynamicCast();
  v8 = v11;
  if (!v7)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_230DB403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_230DA41A0(a1, a2), (v5 & 1) != 0))
  {
    sub_230D82664(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t ResultRow.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if (*(v7 + 16) && (v8 = sub_230DA41A0(a1, a2), (v9 & 1) != 0))
  {
    sub_230D82664(*(v7 + 56) + 32 * v8, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  v10 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
}

Swift::Bool_optional __swiftcall ResultRow.BOOL(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_230DA41A0(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    sub_230D82664(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8D0, &qword_230E756A0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

void *ResultRow.stringDictionary()()
{
  v1 = *v0;
  v2 = sub_230D0EBD4(MEMORY[0x277D84F90]);
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v40 = v1;

  v8 = 0;
  v39 = v1 + 64;
  while (v6)
  {
    v11 = v8;
LABEL_15:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v40 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_230D82664(*(v40 + 56) + 32 * v15, v42);
    *&v43 = v18;
    *(&v43 + 1) = v17;
    sub_230D0E394(v42, &v44);

    v13 = v11;
LABEL_16:
    v46 = v43;
    v47[0] = v44;
    v47[1] = v45;
    v19 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {

      return v2;
    }

    v41 = v13;
    v20 = v46;
    sub_230D0E394(v47, &v43);
    *&v42[0] = v40;
    v21 = sub_230DB4500(&v43);
    v23 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v2;
    v25 = sub_230DA41A0(v20, v19);
    v27 = v2[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v2[3] < v30)
    {
      sub_230DB843C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_230DA41A0(v20, v19);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v37 = v25;
    sub_230DBAC80();
    v25 = v37;
    if (v31)
    {
LABEL_4:
      v9 = v25;

      v2 = *&v42[0];
      v10 = (*(*&v42[0] + 56) + 16 * v9);
      *v10 = v21;
      v10[1] = v23;

      __swift_destroy_boxed_opaque_existential_1(&v43);
      goto LABEL_5;
    }

LABEL_23:
    v2 = *&v42[0];
    *(*&v42[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v33 = (v2[6] + 16 * v25);
    *v33 = v20;
    v33[1] = v19;
    v34 = (v2[7] + 16 * v25);
    *v34 = v21;
    v34[1] = v23;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v35 = v2[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v2[2] = v36;
LABEL_5:
    v8 = v41;
    v3 = v39;
  }

  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230DB4500(uint64_t a1)
{
  v2 = sub_230E68910();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  sub_230D82664(a1, v36);
  if (swift_dynamicCast())
  {
    (*(v3 + 32))(v7, v10, v2);
    v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v11 setDateStyle_];
    [v11 setTimeStyle_];
    v12 = sub_230E688B0();
    v13 = [v11 stringFromDate_];

    v14 = sub_230E69060();
    (*(v3 + 8))(v7, v2);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v14;
  }

  sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v15 = v34;
    v16 = [v34 description];
    v14 = sub_230E69060();

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
LABEL_6:
    v14 = v34;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    if (v34)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    goto LABEL_28;
  }

  result = swift_dynamicCast();
  if (!result)
  {
    sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
    if (swift_dynamicCast())
    {
      v14 = 1280070990;
      v21 = v34;
      goto LABEL_17;
    }

LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD18, &qword_230E734C8);
    if (swift_dynamicCast())
    {
      v34 = 91;
      v35 = 0xE100000000000000;
      v25 = *(v31 + 16);

      v33 = v25;
      v26 = sub_230E69890();
      MEMORY[0x23191DA00](v26);

      MEMORY[0x23191DA00](0x5D736D65746920, 0xE700000000000000);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
    if (swift_dynamicCast())
    {
      v34 = 123;
      v35 = 0xE100000000000000;
      v28 = *(v31 + 16);

      v33 = v28;
      v29 = sub_230E69890();
      MEMORY[0x23191DA00](v29);

      MEMORY[0x23191DA00](0x7D7379656B20, 0xE600000000000000);
      goto LABEL_6;
    }

    sub_230D82664(a1, &v34);
    if (!swift_dynamicCast())
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_230E695F0();
      goto LABEL_6;
    }

    v14 = 1280070990;
    v21 = v31;
LABEL_17:

    goto LABEL_28;
  }

  a1 = v34;
  v18 = v35;
  v31 = 60;
  v32 = 0xE100000000000000;
  v19 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v23 = *(v34 + 16);
    v22 = *(v34 + 24);
    v24 = __OFSUB__(v22, v23);
    v20 = v22 - v23;
    if (!v24)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v19)
  {
    v20 = BYTE6(v35);
LABEL_27:
    v33 = v20;
    v27 = sub_230E69890();
    MEMORY[0x23191DA00](v27);

    MEMORY[0x23191DA00](0x3E736574796220, 0xE700000000000000);
    sub_230D0F4A8(a1, v18);
    v14 = v31;
    goto LABEL_28;
  }

  LODWORD(v20) = HIDWORD(v34) - v34;
  if (!__OFSUB__(HIDWORD(v34), v34))
  {
    v20 = v20;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_230DB4A68(uint64_t a1)
{
  v1 = a1;
  sub_230E699B0();
  sub_230E69100();

  v2 = sub_230E699D0();

  return sub_230DB4F18(v1, v2);
}

unint64_t sub_230DB4B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  sub_230E699B0();
  sub_230D55C8C(v10, v7);
  sub_230E69100();
  sub_230E69100();

  v8 = sub_230E699D0();

  return sub_230DB50D8(v7, a2, a3, v4, v8);
}

unint64_t sub_230DB4C38(uint64_t a1)
{
  v1 = a1;
  sub_230E699B0();
  sub_230E69100();

  v2 = sub_230E699D0();

  return sub_230DB551C(v1, v2);
}

unint64_t sub_230DB4D18(uint64_t a1)
{
  sub_230E69060();
  sub_230E699B0();
  sub_230E69100();
  v2 = sub_230E699D0();

  return sub_230DB56B8(a1, v2);
}

unint64_t sub_230DB4DAC(uint64_t a1)
{
  v1 = a1;
  sub_230E699B0();
  sub_230E69100();

  v2 = sub_230E699D0();

  return sub_230DB57BC(v1, v2);
}

unint64_t sub_230DB4E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_230E699B0();
  sub_230E69100();
  sub_230E69100();
  v8 = sub_230E699D0();

  return sub_230DB5954(a1, a2, a3, a4, v8);
}

unint64_t sub_230DB4F18(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD00000000000001FLL;
          v7 = 0x8000000230E802F0;
        }

        else
        {
          v6 = 0xD000000000000012;
          v7 = 0x8000000230E80310;
        }
      }

      else
      {
        v6 = 0x6F5F706D615F7078;
        v7 = 0xEE00676F6C5F7064;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD00000000000001FLL;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v9 = 0x8000000230E802F0;
        }

        else
        {
          v9 = 0x8000000230E80310;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xEE00676F6C5F7064;
        if (v6 != 0x6F5F706D615F7078)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_230E698C0();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB50D8(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v37 = ~v6;
    v8 = a1;
    do
    {
      v9 = (*(v39 + 48) + 32 * v7);
      v10 = *v9;
      if (v10 > 4)
      {
        if (*v9 <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x7374736163646F70;
          }

          else
          {
            v15 = 0x6F65646976;
          }

          if (v10 == 5)
          {
            v16 = 0xE800000000000000;
          }

          else
          {
            v16 = 0xE500000000000000;
          }
        }

        else if (v10 == 7)
        {
          v16 = 0xE600000000000000;
          v15 = 0x6E6F6D6D6F63;
        }

        else
        {
          v16 = 0xE800000000000000;
          if (v10 == 8)
          {
            v15 = 0x65676175676E616CLL;
          }

          else
          {
            v15 = 0x7974697275636573;
          }
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x7373656E746966;
        }

        else
        {
          v11 = 0x636973756DLL;
        }

        if (v10 == 3)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v11 = 0x736B6F6F62;
          v12 = 0xE500000000000000;
        }

        if (*v9)
        {
          v13 = 1936748641;
        }

        else
        {
          v13 = 0x6C616E7265746E69;
        }

        if (*v9)
        {
          v14 = 0xE400000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }

        if (*v9 <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*v9 <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v18 = *(v9 + 1);
      v17 = *(v9 + 2);
      v19 = v9[24];
      v20 = 0x7974697275636573;
      if (v8 == 8)
      {
        v20 = 0x65676175676E616CLL;
      }

      v21 = 0xE800000000000000;
      if (v8 == 7)
      {
        v20 = 0x6E6F6D6D6F63;
        v21 = 0xE600000000000000;
      }

      v22 = 0x7374736163646F70;
      if (v8 == 5)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v22 = 0x6F65646976;
        v23 = 0xE500000000000000;
      }

      if (v8 <= 6)
      {
        v20 = v22;
        v21 = v23;
      }

      if (v8 == 3)
      {
        v24 = 0x7373656E746966;
      }

      else
      {
        v24 = 0x636973756DLL;
      }

      if (v8 == 3)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v8 == 2)
      {
        v24 = 0x736B6F6F62;
        v25 = 0xE500000000000000;
      }

      if (v8)
      {
        v26 = 1936748641;
      }

      else
      {
        v26 = 0x6C616E7265746E69;
      }

      if (v8)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v8 <= 1)
      {
        v24 = v26;
        v25 = v27;
      }

      if (v8 <= 4)
      {
        v28 = v24;
      }

      else
      {
        v28 = v20;
      }

      if (v8 <= 4)
      {
        v29 = v25;
      }

      else
      {
        v29 = v21;
      }

      if (v15 == v28 && v16 == v29)
      {
      }

      else
      {
        v30 = sub_230E698C0();

        if ((v30 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v18 != a2 || v17 != a3) && (sub_230E698C0() & 1) == 0)
      {
LABEL_3:

        goto LABEL_4;
      }

      if (v19)
      {
        if (v19 == 1)
        {
          v31 = 0xE600000000000000;
          v32 = 0x524F54434556;
        }

        else
        {
          v31 = 0xE200000000000000;
          v32 = 22091;
        }
      }

      else
      {
        v31 = 0xE300000000000000;
        v32 = 5001555;
      }

      if (a4)
      {
        if (a4 == 1)
        {
          v33 = 0xE600000000000000;
          if (v32 == 0x524F54434556)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v33 = 0xE200000000000000;
          if (v32 == 22091)
          {
LABEL_88:
            if (v31 == v33)
            {

              return v7;
            }
          }
        }
      }

      else
      {
        v33 = 0xE300000000000000;
        if (v32 == 5001555)
        {
          goto LABEL_88;
        }
      }

      v34 = sub_230E698C0();

      if (v34)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v37;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_230DB551C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      v7 = 0xD00000000000001ALL;
      v8 = 0xD00000000000001ELL;
      v9 = v6 == 2 ? 0xD00000000000001ELL : 0xD000000000000012;
      v10 = v6 == 2 ? "com.apple.servicesintelligenced" : "com.apple.SIDInferenceProvider";
      v11 = *(*(v24 + 48) + v4) ? 0xD00000000000001FLL : 0xD00000000000001ALL;
      v12 = *(*(v24 + 48) + v4) ? "com.apple.internal.sidtool" : &unk_230E80070;
      v13 = *(*(v24 + 48) + v4) <= 1u ? v11 : v9;
      v14 = *(*(v24 + 48) + v4) <= 1u ? v12 : v10;
      v15 = v14 | 0x8000000000000000;
      if (v5 == 2)
      {
        v16 = "com.apple.servicesintelligenced";
      }

      else
      {
        v8 = 0xD000000000000012;
        v16 = "com.apple.SIDInferenceProvider";
      }

      if (v5)
      {
        v7 = 0xD00000000000001FLL;
        v17 = "com.apple.internal.sidtool";
      }

      else
      {
        v17 = &unk_230E80070;
      }

      v18 = v5 <= 1 ? v7 : v8;
      v19 = v5 <= 1 ? v17 : v16;
      if (v13 == v18 && v15 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_230E698C0();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB56B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_230E69060();
      v8 = v7;
      if (v6 == sub_230E69060() && v8 == v9)
      {
        break;
      }

      v11 = sub_230E698C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB57BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x7373656E746966;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x7374736163646F70;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v8 != 0x726F74735F707061)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x726F74735F707061;
        v7 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x7373656E746966;
      }

      else
      {
        v10 = 0x7374736163646F70;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_230E698C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230DB5954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_230E698C0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_230E698C0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_230DB5A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA38, &qword_230E75D30);
  v36 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *v25;
      v39 = *(v25 + 8);
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB5D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA28, &qword_230E6BAC8);
  v37 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB602C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
  v38 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_230D0DCD8(v25, v26, v27);
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB6320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = v6;
  result = sub_230E69630();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 32 * v23;
      v26 = *v25;
      v27 = *(v25 + 16);
      v41 = *(v25 + 8);
      v28 = *(v25 + 24);
      v29 = *(v24 + 8 * v23);
      if ((v40 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();

      sub_230E69100();
      sub_230E69100();

      result = sub_230E699D0();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v18 = v29;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v18 = v29;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v19 = *(v9 + 48) + 32 * v17;
      *v19 = v26;
      *(v19 + 8) = v41;
      *(v19 + 16) = v27;
      *(v19 + 24) = v28;
      *(*(v9 + 56) + 8 * v17) = v18;
      ++*(v9 + 16);
      v7 = v39;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_230DB674C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA20, &qword_230E6BAC0);
  v34 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB69F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
  v33 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_230D0DD0C(v34, *(&v34 + 1));
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
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
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB6CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A938, &qword_230E75CA0);
  v42 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + (v23 << 7);
      if (v42)
      {
        v48 = *(v27 + 48);
        v49 = *(v27 + 64);
        v50[0] = *(v27 + 80);
        *(v50 + 9) = *(v27 + 89);
        v45 = *v27;
        v46 = *(v27 + 16);
        v47 = *(v27 + 32);
        v43 = *(v27 + 112);
        v44 = *(v27 + 120);
      }

      else
      {
        v29 = *(v27 + 32);
        v28 = *(v27 + 48);
        v30 = *v27;
        v52 = *(v27 + 16);
        v53 = v29;
        v51 = v30;
        v32 = *(v27 + 80);
        v31 = *(v27 + 96);
        v33 = *(v27 + 64);
        *&v56[25] = *(v27 + 105);
        *v56 = v32;
        *&v56[16] = v31;
        v54 = v28;
        v55 = v33;
        v44 = v56[40];
        v43 = *&v56[32];

        sub_230D5827C(&v51, &v45);
        v49 = v55;
        v50[0] = *v56;
        *(v50 + 9) = *&v56[9];
        v45 = v51;
        v46 = v52;
        v47 = v53;
        v48 = v54;
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v55 = v49;
      *v56 = v50[0];
      *&v56[9] = *(v50 + 9);
      v51 = v45;
      v52 = v46;
      v16 = v48;
      v53 = v47;
      v54 = v48;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 16 * v15);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v7 + 56) + (v15 << 7);
      *(v18 + 32) = v53;
      *(v18 + 16) = v52;
      *v18 = v51;
      *(v18 + 96) = *&v56[16];
      *(v18 + 80) = *v56;
      v19 = v55;
      *(v18 + 48) = v16;
      *(v18 + 64) = v19;
      *(v18 + 112) = v43;
      *(v18 + 120) = v44;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB7074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
  v33 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_230D0E394(v24, v34);
      }

      else
      {
        sub_230D82664(v24, v34);
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_230D0E394(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB732C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9D0, &qword_230E6BA70);
  v38 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB763C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_230E69630();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v7 + 56) + 32 * v23);
      v28 = v27[1];
      v29 = v27[3];
      v40 = v27[2];
      v41 = *v27;
      if ((v39 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v9 + 56) + 32 * v17);
      *v19 = v41;
      v19[1] = v28;
      v19[2] = v40;
      v19[3] = v29;
      ++*(v9 + 16);
      v7 = v38;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_230DB7918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = v6;
  result = sub_230E69630();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = (*(v7 + 56) + 48 * v23);
      v43 = *v26;
      v44 = *v24;
      v27 = v26[1];
      v28 = v26[3];
      v29 = v26[5];
      v41 = v26[4];
      v42 = v26[2];
      if ((v40 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v44;
      v18[1] = v25;
      v19 = (*(v9 + 56) + 48 * v17);
      *v19 = v43;
      v19[1] = v27;
      v19[2] = v42;
      v19[3] = v28;
      v19[4] = v41;
      v19[5] = v29;
      ++*(v9 + 16);
      v7 = v39;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_230DB7C08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C0, &qword_230E6BA60);
  v36 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v37 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB7ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9C8, &qword_230E6BA68);
  v38 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB8198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9A8, &unk_230E75D00);
  v33 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
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
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB843C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B8, &unk_230E75CE0);
  v37 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB86FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C458, &unk_230E75CD0);
  v30 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();

      result = sub_230E699D0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB89E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9B0, &unk_230E6BA50);
  v36 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v38 = v22[2];
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_230E699B0();
      sub_230E69100();
      sub_230E69100();
      result = sub_230E699D0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v38;
      v16[3] = v25;
      *(*(v7 + 56) + v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB8CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A948, &unk_230E75CB0);
  v35 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB8F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A980, &qword_230E6BA20);
  v44 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v48 = *v24;
      v26 = *(v5 + 56) + 48 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v47 = *(v26 + 32);
      if ((v44 & 1) == 0)
      {
      }

      v46 = v29;
      v31 = v28;
      v32 = v27;
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v46;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v46;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v48;
      v18[1] = v25;
      v19 = *(v43 + 56) + 48 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      *(v19 + 32) = v47;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230DB928C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
  v39 = v4;
  result = sub_230E69630();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 104 * v21;
      if (v39)
      {
        v42 = *(v25 + 16);
        v45 = *(v25 + 24);
        v40 = *(v25 + 8);
        v41 = *(v25 + 32);
        v43 = *v25;
        v44 = *(v25 + 48);
        v46 = *(v25 + 64);
        v47 = *(v25 + 40);
        v48 = *(v25 + 72);
        v51 = *(v25 + 88);
        v49 = *(v25 + 56);
        v50 = *(v25 + 96);
      }

      else
      {
        v27 = *(v25 + 16);
        v26 = *(v25 + 32);
        v53 = *v25;
        v54 = v27;
        v55 = v26;
        v29 = *(v25 + 64);
        v28 = *(v25 + 80);
        v30 = *(v25 + 48);
        v58 = *(v25 + 96);
        *v57 = v29;
        *&v57[16] = v28;
        v56 = v30;
        v50 = v58;
        v51 = *(&v28 + 1);
        v48 = *&v57[8];
        v49 = *(&v30 + 1);
        v46 = v29;
        v47 = *(&v55 + 1);
        v44 = v30;
        v45 = *(&v54 + 1);
        v42 = v54;
        v40 = *(&v53 + 1);
        v43 = v53;
        v41 = v55;

        sub_230DBB6FC(&v53, v52);
      }

      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 104 * v15;
      *v17 = v43;
      *(v17 + 8) = v40;
      *(v17 + 16) = v42;
      *(v17 + 24) = v45;
      *(v17 + 32) = v41;
      *(v17 + 40) = v47;
      *(v17 + 48) = v44;
      *(v17 + 56) = v49;
      *(v17 + 64) = v46;
      *(v17 + 72) = v48;
      *(v17 + 88) = v51;
      *(v17 + 96) = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_230DB9644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA38, &qword_230E75D30);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_230DB97F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA28, &qword_230E6BAC8);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_230DB9990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_230D0DCD8(v23, v24, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_230DB9B3C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_230E69620();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 48) + 32 * v19;
        v21 = *v20;
        v23 = *(v20 + 8);
        v22 = *(v20 + 16);
        LOBYTE(v20) = *(v20 + 24);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = *(v6 + 48) + 32 * v19;
        *v25 = v21;
        *(v25 + 8) = v23;
        *(v25 + 16) = v22;
        *(v25 + 24) = v20;
        *(*(v6 + 56) + 8 * v19) = v24;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_230DB9CAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AA20, &qword_230E6BAC0);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_230DB9E1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_230D0DD0C(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_230DB9FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A938, &qword_230E75CA0);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_230D5827C(&v37, &v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 <<= 7;
      v23 = *(v18 + v16 + 80);
      v22 = *(v18 + v16 + 96);
      v24 = *(v18 + v16 + 64);
      *(v43 + 9) = *(v18 + v16 + 105);
      v42 = v23;
      v43[0] = v22;
      v41 = v24;
      v26 = *(v18 + v16);
      v25 = *(v18 + v16 + 16);
      v27 = *(v18 + v16 + 48);
      v39 = *(v18 + v16 + 32);
      v40 = v27;
      v37 = v26;
      v38 = v25;
      v28 = (*(v4 + 48) + v17);
      *v28 = v21;
      v28[1] = v20;
      v29 = (*(v4 + 56) + v16);
      v30 = v37;
      v31 = v38;
      v32 = v40;
      v29[2] = v39;
      v29[3] = v32;
      *v29 = v30;
      v29[1] = v31;
      v33 = v41;
      v34 = v42;
      v35 = v43[0];
      *(v29 + 105) = *(v43 + 9);
      v29[5] = v34;
      v29[6] = v35;
      v29[4] = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_230DBA17C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A928, &unk_230E75CC0);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_230D82664(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_230D0E394(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_230DBA320()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A9D0, &qword_230E6BA70);
  v2 = *v0;
  v3 = sub_230E69620();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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