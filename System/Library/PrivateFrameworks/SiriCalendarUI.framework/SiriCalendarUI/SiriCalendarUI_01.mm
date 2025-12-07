uint64_t sub_2666CDFFC()
{
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v0 = qword_2800978F0;
  v1 = sub_2666D87DC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5 & 1;
  *(v9 + 40) = v7;
  return sub_2666D8B5C();
}

uint64_t sub_2666CE134(uint64_t *a1)
{
  v2 = type metadata accessor for DisambiguateEventsSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800963A0, &qword_2666DA798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v19 = *a1;
  sub_2666CEDF0(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateEventsSnippet);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_2666CF1B4(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DisambiguateEventsSnippet);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800963B0, &unk_2666DA7B0);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0, MEMORY[0x277D83980]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095F40, &unk_2666DA7A0);
  v12 = type metadata accessor for EventCellView(255);
  v13 = sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView, &unk_2666D9648);
  v17 = v12;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v11;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2666CEDA8(&qword_280095DB8, type metadata accessor for RenderableEvent, &unk_2666D95F0);
  sub_2666D8A4C();
  sub_2666CEB04();
  sub_2666D883C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2666CE488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v32 = a1;
  v42 = a3;
  v4 = type metadata accessor for RenderableEvent(0);
  v40 = *(v4 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DisambiguateEventsSnippet(0);
  v38 = *(v6 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for EventCellView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F40, &unk_2666DA7A0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  sub_2666CEDF0(a1, v13, type metadata accessor for RenderableEvent);
  v18 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  v19 = v11[5];
  __swift_storeEnumTagSinglePayload(&v13[v19], 1, 1, v18);
  v20 = &v13[v11[7]];
  KeyPath = swift_getKeyPath();
  v48 = 0;
  v46 = 1;
  *v20 = KeyPath;
  v20[8] = 0;
  *(v20 + 9) = *v47;
  *(v20 + 3) = *&v47[3];
  *(v20 + 2) = 0x4030000000000000;
  *(v20 + 3) = 0;
  v20[32] = 1;
  *(v20 + 33) = *v45;
  *(v20 + 9) = *&v45[3];
  *(v20 + 5) = 1;
  *(v20 + 6) = sub_2666BD078;
  *(v20 + 7) = 0;
  v22 = &v13[v11[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_2666BC038(v10, &v13[v19]);
  v13[v11[6]] = 1;
  v23 = v34;
  v24 = sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView, &unk_2666D9648);
  sub_2666D884C();
  sub_2666CEE54(v13);
  v25 = v33;
  sub_2666CEDF0(v23, v33, type metadata accessor for DisambiguateEventsSnippet);
  v26 = v39;
  sub_2666CEDF0(v32, v39, type metadata accessor for RenderableEvent);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = (v37 + *(v40 + 80) + v27) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_2666CF1B4(v25, v29 + v27, type metadata accessor for DisambiguateEventsSnippet);
  sub_2666CF1B4(v26, v29 + v28, type metadata accessor for RenderableEvent);
  v43 = v11;
  v44 = v24;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_2666D88BC();

  return (*(v36 + 8))(v17, v30);
}

uint64_t sub_2666CE968(uint64_t *a1)
{
  v1 = sub_2666D8C7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_2666D816C();
  v7 = v6;
  type metadata accessor for DisambiguateEventsSnippet(0);
  sub_2666D8B7C();
  sub_2666CF384(v5, v7, v4);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2666CEA98()
{
  v1 = type metadata accessor for DisambiguateEventsSnippet(0);
  OUTLINED_FUNCTION_10_0(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_2666CE134(v3);
}

unint64_t sub_2666CEB04()
{
  result = qword_2800963A8;
  if (!qword_2800963A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800963A0, &qword_2666DA798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095F40, &unk_2666DA7A0);
    type metadata accessor for EventCellView(255);
    sub_2666CEDA8(&qword_280095DA8, type metadata accessor for EventCellView, &unk_2666D9648);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963A8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for DisambiguateEventsSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 8))(v0 + v3 + v5);
  sub_2666B4670(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CED2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DisambiguateEventsSnippet(0);
  OUTLINED_FUNCTION_10_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2666CE488(a1, v7, a2);
}

uint64_t sub_2666CEDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666CEDF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CEE54(uint64_t a1)
{
  v2 = type metadata accessor for EventCellView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666CEEB0()
{
  v1 = (type metadata accessor for DisambiguateEventsSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for RenderableEvent(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;
  v9 = v0 + v3;

  v10 = v1[7];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4();
  (*(v11 + 8))(v9 + v10);
  sub_2666B4670(*(v9 + v1[8]), *(v9 + v1[8] + 8));

  v12 = v0 + v8;

  v13 = sub_2666D825C();
  v14 = v13[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v15 + 8))(v0 + v8 + v14);

  v16 = v0 + v8 + v13[12];
  v17 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v16, 1, v17))
  {
    v18 = *(v17 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v19 + 8))(v16 + v18);
    }
  }

  v20 = v13[14];
  v21 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v12 + v20, 1, v21))
  {
    (*(*(v21 - 8) + 8))(v12 + v20, v21);
  }

  v22 = *(v5 + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v23 + 8))(v12 + v22);

  return MEMORY[0x2821FE8E8](v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_2666CF1B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2666CF210()
{
  v1 = *(type metadata accessor for DisambiguateEventsSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_10_0(v4);
  return sub_2666CE968((v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80))));
}

uint64_t sub_2666CF2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D558B8];
  v10[3] = MEMORY[0x277D558B8];
  v10[4] = sub_2666CF4D4(a1, a2, a3);
  v10[0] = a1;
  v10[1] = a2;
  __swift_project_boxed_opaque_existential_1(v10, v5);

  v6 = sub_2666D81AC();
  v7 = sub_2666D819C();

  v8 = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 & 1;
}

uint64_t sub_2666CF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D558A8];
  v10[3] = MEMORY[0x277D558A8];
  v10[4] = sub_2666CF43C(a1, a2, a3);
  v10[0] = a1;
  v10[1] = a2;
  __swift_project_boxed_opaque_existential_1(v10, v5);

  v6 = sub_2666D81AC();
  v7 = sub_2666D819C();

  v8 = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 & 1;
}

unint64_t sub_2666CF43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800963B8;
  if (!qword_2800963B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963B8);
  }

  return result;
}

uint64_t sub_2666CF490()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666CF4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800963C0;
  if (!qword_2800963C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800963C0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommonConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_2666CF5E0(uint64_t a1@<X8>)
{
  *a1 = 0x4030000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_2666CF5F4(uint64_t a1@<X8>)
{
  *a1 = 0x4024000000000000;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
}

void sub_2666CF604(uint64_t a1@<X8>)
{
  *a1 = 0x4024000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_2666CF62C(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_2666D8A7C();
    v5 = OUTLINED_FUNCTION_4_4();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

uint64_t sub_2666CF6C4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2666D8A7C();
    v4 = OUTLINED_FUNCTION_4_4();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

void sub_2666CF760(uint64_t a1)
{
  sub_2666D8A7C();
  if (v1 <= 0x3F)
  {
    sub_2666D0970(319, &qword_2800963E8, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

uint64_t sub_2666CF840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2666CF87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2666CF8C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2666CF908@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2666D85EC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *(a2 + 56) = MEMORY[0x277D558C8];
  *(a2 + 64) = sub_2666B7E38(v4, v5, v7);
  *(a2 + 32) = a1;
  *(a2 + 72) = 1;
  v11 = type metadata accessor for CalendarButtonView.Model(0);
  v12 = v11[6];
  v13 = *MEMORY[0x277D63A88];
  sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  result = (*(v14 + 104))(a2 + v12, v13);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + v11[7]) = 0;
  *(a2 + v11[8]) = 0;
  return result;
}

uint64_t sub_2666CF9F8@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v50 = v3;
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v49 = v5 - v4;
  v6 = sub_2666D8A7C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for CalendarButtonView(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AF0, &qword_2666DA9A0);
  OUTLINED_FUNCTION_3();
  v55 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096408, &qword_2666DA9A8);
  OUTLINED_FUNCTION_3();
  v56 = v22;
  v57 = v21;
  MEMORY[0x28223BE20](v21);
  v54 = &v48 - v23;
  sub_2666D063C(v1, &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_2666D0B58(&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v62 = v1;
  v53 = v20;
  sub_2666D8A2C();
  v26 = *(type metadata accessor for CalendarButtonView.Model(0) + 24);
  v59 = v8;
  v60 = v6;
  (*(v8 + 16))(v12, v1 + v26, v6);
  v27 = *(v14 + 28);
  v52 = v1;
  v28 = v1 + v27;
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v30 != 1)
  {

    sub_2666D8D9C();
    v34 = sub_2666D86DC();
    OUTLINED_FUNCTION_5_1(v34, &dword_2666B0000, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v36, v37, MEMORY[0x277D84F90]);

    v33 = v49;
    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v29, 0);
    v32 = v50;
    v31 = v51;
    (*(v50 + 8))(v33, v51);
    if ((v63 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v32 = v50;
  v31 = v51;
  v33 = v49;
  if (v29)
  {
LABEL_5:
    sub_2666D014C();
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_8:

    sub_2666D8D9C();
    v38 = sub_2666D86DC();
    OUTLINED_FUNCTION_5_1(v38, &dword_2666B0000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v40, v41, MEMORY[0x277D84F90]);

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v29, 0);
    (*(v32 + 8))(v33, v31);
    if (v63 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  if (v29)
  {
LABEL_7:
    sub_2666D0378();
  }

LABEL_9:
  v42 = sub_2666D0C24();
  v43 = v53;
  v44 = v54;
  v45 = v58;
  sub_2666D880C();

  (*(v59 + 8))(v12, v60);
  (*(v55 + 8))(v43, v45);
  v63 = v45;
  v64 = v42;
  OUTLINED_FUNCTION_3_4();
  swift_getOpaqueTypeConformance2();
  v46 = v57;
  sub_2666D88FC();
  return (*(v56 + 8))(v44, v46);
}

uint64_t sub_2666CFF3C(uint64_t a1)
{
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2666D0C88(a1 + 32, v15);
  if (v16)
  {
    sub_2666D0CC0(v15, v12);
    type metadata accessor for CalendarButtonView(0);
    sub_2666D8B7C();
    v7 = v13;
    v8 = v14;
    v9 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_2666B4890(v9, v5, v7, v8);
    (*(v3 + 8))(v5, v2);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    (*&v15[0])(v6);
  }
}

uint64_t sub_2666D007C@<X0>(uint64_t a2@<X8>)
{
  v3 = qword_280095990;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_2800978F0;
  result = sub_2666D87DC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2666D014C()
{
  sub_2666D83DC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  v2 = sub_2666D8A7C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for CalendarButtonView.Model(0);
  v10 = *(v0 + *(v9 + 32));
  if (!v10)
  {
    if (!*(v0 + *(v9 + 28)))
    {
      v15 = *(v4 + 104);
      v15(v8, *MEMORY[0x277D63A90], v2);
      v11 = sub_2666D8A6C();
      v14 = *(v4 + 8);
      v14(v8, v2);
      if ((v11 & 1) == 0)
      {
        v15(v8, *MEMORY[0x277D63A78], v2);
        v12 = sub_2666D8A6C();
        v14(v8, v2);
        if ((v12 & 1) == 0)
        {
          v10 = 0;
          goto LABEL_7;
        }
      }

      sub_2666D83CC();
      sub_2666D836C();
    }

    sub_2666D898C();
    v10 = sub_2666D836C();
  }

LABEL_7:

  return v10;
}

uint64_t sub_2666D0378()
{
  sub_2666D83DC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  v2 = sub_2666D8A7C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = *(v0 + *(type metadata accessor for CalendarButtonView.Model(0) + 28));
  if (!v9)
  {
    v14 = *(v4 + 104);
    v14(v8, *MEMORY[0x277D63A90], v2);
    v10 = sub_2666D8A6C();
    v11 = *(v4 + 8);
    v11(v8, v2);
    if (v10 & 1) != 0 || (v14(v8, *MEMORY[0x277D63A78], v2), v12 = sub_2666D8A6C(), v11(v8, v2), (v12))
    {
      sub_2666D83CC();
      v9 = sub_2666D836C();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t sub_2666D055C()
{
  type metadata accessor for CalendarButtonView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  sub_2666D063C(v0, v3 - v2);
  sub_2666D06A0();
  return sub_2666D8A3C();
}

uint64_t sub_2666D0604(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D063C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666D06A0()
{
  result = qword_280095C38;
  if (!qword_280095C38)
  {
    type metadata accessor for CalendarButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C38);
  }

  return result;
}

uint64_t sub_2666D070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_2666D8B9C();
    v8 = OUTLINED_FUNCTION_4_4();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666D07E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CalendarButtonView.Model(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    sub_2666D8B9C();
    v10 = OUTLINED_FUNCTION_4_4();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2666D08B0(uint64_t a1)
{
  type metadata accessor for CalendarButtonView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_2666D0970(319, &qword_280096400, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2666D8B9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2666D0970(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2666D09DC()
{
  v1 = type metadata accessor for CalendarButtonView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 32));
  }

  else
  {
  }

  v6 = *(type metadata accessor for CalendarButtonView.Model(0) + 24);
  sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  (*(v7 + 8))(v5 + v6);

  sub_2666B4670(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v8 = *(v1 + 24);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v5 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D0B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D0BBC()
{
  v1 = *(type metadata accessor for CalendarButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666CFF3C(v2);
}

unint64_t sub_2666D0C24()
{
  result = qword_280095AF8;
  if (!qword_280095AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AF0, &qword_2666DA9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AF8);
  }

  return result;
}

uint64_t sub_2666D0CC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2666D0CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096408, &qword_2666DA9A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AF0, &qword_2666DA9A0);
  sub_2666D0C24();
  OUTLINED_FUNCTION_3_4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_2666D827C();
}

uint64_t sub_2666D0DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D7F2C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666D0E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D7F2C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2666D0EFC(uint64_t a1)
{
  sub_2666CDDB0(319);
  if (v1 <= 0x3F)
  {
    sub_2666D7F2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2666D0F90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096430, &qword_2666DAA60);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  *v3 = sub_2666D863C();
  *(v3 + 1) = 0x4014000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096438, &qword_2666DAA68);
  sub_2666D1084(v0, &v3[*(v4 + 44)]);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v5, &qword_280096430, &qword_2666DAA60, v6);
  sub_2666D883C();
  return sub_2666D1CF0(v3);
}

uint64_t sub_2666D1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v2 = type metadata accessor for DayEventGroupView(0);
  v59 = *(v2 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096448, &qword_2666DAA70);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v49 - v7;
  v56 = sub_2666D7EDC();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2666D7EBC();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2666D7EFC();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2666D7F1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = type metadata accessor for DateHeaderView(0);
  v26 = (v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v49 - v29;
  v31 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  v32 = sub_2666D7F2C();
  (*(*(v32 - 8) + 16))(v30, v65 + v31, v32);
  *&v30[v26[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v30[v26[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  sub_2666D8B8C();
  v33 = &v30[v26[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *(v33 + 2) = 0;
  v33[24] = 1;
  *(v33 + 4) = 1;
  *(v33 + 5) = sub_2666C1B98;
  *(v33 + 6) = 0;
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v49 + 8))(v14, v50);
  v34 = *(v16 + 8);
  v34(v19, v15);
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v51 + 8))(v11, v52);
  v34(v22, v15);
  v35 = v53;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v54 + 8))(v35, v56);
  v34(v24, v15);
  *&v30[v26[12]] = &unk_287810A08;
  v66 = *(v65 + 16);
  v36 = v57;
  sub_2666D1FC8(v65, v57, type metadata accessor for DayEventGroupView);
  v37 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v38 = swift_allocObject();
  sub_2666D1E9C(v36, v38 + v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0, MEMORY[0x277D83980]);
  sub_2666BBF04();
  sub_2666D1F80(&qword_280095DB8, type metadata accessor for RenderableEvent, &unk_2666D95F0);
  v39 = v60;
  sub_2666D8A4C();
  v40 = v55;
  sub_2666D1FC8(v30, v55, type metadata accessor for DateHeaderView);
  v42 = v61;
  v41 = v62;
  v43 = *(v62 + 16);
  v44 = v63;
  v43(v61, v39, v63);
  v45 = v64;
  sub_2666D1FC8(v40, v64, type metadata accessor for DateHeaderView);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096450, &qword_2666DAB28);
  v43((v45 + *(v46 + 48)), v42, v44);
  v47 = *(v41 + 8);
  v47(v39, v44);
  sub_2666D2028(v30);
  v47(v42, v44);
  return sub_2666D2028(v40);
}

uint64_t sub_2666D1898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7 - 7];
  sub_2666D1FC8(a1, a3, type metadata accessor for RenderableEvent);
  v9 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  v10 = sub_2666D7F2C();
  (*(*(v10 - 8) + 16))(v8, a2 + v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  v11 = type metadata accessor for EventCellView(0);
  v12 = v11[5];
  __swift_storeEnumTagSinglePayload(a3 + v12, 1, 1, v10);
  v13 = a3 + v11[7];
  KeyPath = swift_getKeyPath();
  v22 = 0;
  v20 = 1;
  *v13 = KeyPath;
  *(v13 + 8) = 0;
  *(v13 + 9) = *v21;
  *(v13 + 12) = *&v21[3];
  *(v13 + 16) = 0x4030000000000000;
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  *(v13 + 33) = *v19;
  *(v13 + 36) = *&v19[3];
  *(v13 + 40) = 1;
  *(v13 + 48) = sub_2666BD078;
  *(v13 + 56) = 0;
  v15 = a3 + v11[8];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_2666BC038(v8, a3 + v12);
  *(a3 + v11[6]) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666D1FC8(a1, a3 + *(v16 + 36), type metadata accessor for RenderableEvent);
  type metadata accessor for PunchoutToEventDetailsModifier(0);
  return sub_2666D8B8C();
}

uint64_t sub_2666D1ABC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2666D1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DayEventGroupView.DayEventGroup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666D1B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DayEventGroupView.DayEventGroup(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2666D1C50(uint64_t a1)
{
  result = type metadata accessor for DayEventGroupView.DayEventGroup(319);
  if (v2 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666D1CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096430, &qword_2666DAA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D1D70()
{
  v1 = (type metadata accessor for DayEventGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(type metadata accessor for DayEventGroupView.DayEventGroup(0) + 24);
  sub_2666D7F2C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v1[7];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v0 + v3 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D1E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayEventGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DayEventGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2666D1898(a1, v6, a2);
}

uint64_t sub_2666D1F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666D1FC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666D2028(uint64_t a1)
{
  v2 = type metadata accessor for DateHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D2084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096430, &qword_2666DAA60);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v0, &qword_280096430, &qword_2666DAA60, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666D210C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2666D82AC();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  v13 = sub_2666D825C();
  v14 = OUTLINED_FUNCTION_10_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  v19 = OUTLINED_FUNCTION_10_0(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_2666B3738(v3, v17);
  sub_2666D2460(a1, v17, v21);
  v22 = sub_2666D815C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    return (*(*(v22 - 8) + 32))(a2, v21, v22);
  }

  sub_2666B380C(v21);
  v23 = sub_2666D828C();
  (*(v8 + 16))(v12, v23, v6);
  v24 = sub_2666D829C();
  v25 = sub_2666D8D9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2666B0000, v24, v25, "[Snippet.Event] Could not create event cell model", v26, 2u);
    MEMORY[0x26678ACD0](v26, -1, -1);
  }

  v27 = (*(v8 + 8))(v12, v6);
  sub_2666D28EC(v27, v28, v29);
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2666D23BC()
{
  sub_2666D8ECC();
  MEMORY[0x26678A880](0);
  return sub_2666D8EEC();
}

uint64_t sub_2666D2410()
{
  sub_2666D8ECC();
  MEMORY[0x26678A880](0);
  return sub_2666D8EEC();
}

uint64_t sub_2666D2460@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a3;
  v4 = sub_2666D7F2C();
  v5 = OUTLINED_FUNCTION_10_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  v8 = OUTLINED_FUNCTION_10_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_4();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_2666D82AC();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_4();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  sub_2666D815C();
  OUTLINED_FUNCTION_3();
  v45 = v26;
  v46 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_1();
  v44 = (v28 - v27);
  if (a2[1])
  {

    v29 = sub_2666D828C();
    (*(v17 + 16))(v21, v29, v15);
    v30 = sub_2666D829C();
    v31 = sub_2666D8DAC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2666B0000, v30, v31, "[Snippet.Event] Initializing EventListCellViewModel with concrete event", v32, 2u);
      MEMORY[0x26678ACD0](v32, -1, -1);
    }

    (*(v17 + 8))(v21, v15);
    sub_2666D813C();
  }

  else
  {
    v14 = v11;
    v33 = sub_2666D828C();
    (*(v17 + 16))(v24, v33, v15);
    v34 = sub_2666D829C();
    v35 = sub_2666D8DAC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2666B0000, v34, v35, "[Snippet.Event] Initializing EventListCellViewModel with draft event", v36, 2u);
      MEMORY[0x26678ACD0](v36, -1, -1);
    }

    (*(v17 + 8))(v24, v15);
    v43 = a2[12];
    sub_2666D825C();

    sub_2666D7DCC();
    sub_2666D7DBC();

    sub_2666D814C();
  }

  sub_2666B3874(a2);
  v37 = v46;
  if (__swift_getEnumTagSinglePayload(v14, 1, v46))
  {
    sub_2666B380C(v14);
    v38 = 1;
    v39 = v48;
  }

  else
  {
    v40 = v44;
    v41 = *(v45 + 32);
    v41(v44, v14, v37);
    v39 = v48;
    v41(v48, v40, v37);
    v38 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v39, v38, 1, v37);
}

unint64_t sub_2666D28EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280096458;
  if (!qword_280096458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventListCellViewModelError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for EventListCellViewModelError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2666D2A30);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2666D2A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280096460;
  if (!qword_280096460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096460);
  }

  return result;
}

void sub_2666D2AD8()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v3 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_1(*(v11 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2666D7FFC();
    OUTLINED_FUNCTION_2();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    sub_2666D8D9C();
    v13 = sub_2666D86DC();
    OUTLINED_FUNCTION_9_3(v13, &dword_2666B0000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v15, v16, MEMORY[0x277D84F90]);

    sub_2666D856C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_16();
}

void sub_2666D2C7C()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v3 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_1(*(v11 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2666D802C();
    OUTLINED_FUNCTION_2();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    sub_2666D8D9C();
    v13 = sub_2666D86DC();
    OUTLINED_FUNCTION_9_3(v13, &dword_2666B0000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v15, v16, MEMORY[0x277D84F90]);

    sub_2666D856C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_16();
}

void sub_2666D2E20()
{
  OUTLINED_FUNCTION_17_0();
  v1 = v0;
  v2 = sub_2666D7FFC();
  OUTLINED_FUNCTION_3();
  v38[0] = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964D8, &qword_2666DAD68);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v16 = sub_2666D802C();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v22 = v21 - v20;
  sub_2666D2C7C();
  v23 = sub_2666D800C();
  (*(v18 + 8))(v22, v16);
  v24 = *(v1 + *(type metadata accessor for DateHeaderView(0) + 40));
  v25 = (v38[0] + 8);
  if ((v23 & 1) == 0)
  {
    sub_2666D2AD8();
    sub_2666D7FAC();
    (*v25)(v7, v2);
    v29 = sub_2666D7F9C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
    {
      v30 = sub_2666B2A70(v13, &qword_2800964D8, &qword_2666DAD68);
      v2 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v31 = v13;
      sub_2666D7F8C();
      OUTLINED_FUNCTION_5_2();
      v30 = (*(v35 + 8))(v13, v29);
    }

    v39 = v2;
    v40 = v31;
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_4_5();
    v37 = sub_2666D3EEC(sub_2666D4544, v36, v24);

    if (v37)
    {
      sub_2666D89BC();
      goto LABEL_13;
    }

LABEL_12:
    sub_2666D89AC();
    goto LABEL_13;
  }

  sub_2666D2AD8();
  sub_2666D7FAC();
  (*v25)(v9, v2);
  v26 = sub_2666D7F9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v26) == 1)
  {
    v27 = sub_2666B2A70(v15, &qword_2800964D8, &qword_2666DAD68);
    v2 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v28 = v15;
    sub_2666D7F8C();
    OUTLINED_FUNCTION_5_2();
    v27 = (*(v32 + 8))(v15, v26);
  }

  v39 = v2;
  v40 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_5();
  v34 = sub_2666D3EEC(sub_2666D45C8, v33, v24);

  if (v34)
  {
    goto LABEL_12;
  }

  sub_2666D895C();
LABEL_13:
  OUTLINED_FUNCTION_16();
}

void sub_2666D3210()
{
  OUTLINED_FUNCTION_17_0();
  v46 = v1;
  v2 = type metadata accessor for DateHeaderView(0);
  v3 = v2 - 8;
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = v4;
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2666D7F1C();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  (*(v15 + 16))(v14 - v13, v0);
  (*(v7 + 16))(v11, v0 + *(v3 + 44), v5);
  sub_2666D3E60(&qword_280096090, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_2666D3E60(&qword_280096098, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v16 = sub_2666D87CC();
  v18 = v17;
  LOBYTE(v5) = v19;
  v20 = sub_2666D87AC();
  v22 = v21;
  v24 = v23;
  sub_2666B2B2C(v16, v18, v5 & 1);

  sub_2666D2E20();
  v48[0] = v25;
  v42 = sub_2666D878C();
  v27 = v26;
  v29 = v28;
  v41 = v30;
  sub_2666B2B2C(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v32 = sub_2666D86EC();
  v33 = *(v0 + *(v3 + 40) + 24);
  v34 = 0uLL;
  v35 = 0uLL;
  if ((v33 & 1) == 0)
  {
    sub_2666D82BC();
    *(&v34 + 1) = v36;
    *(&v35 + 1) = v37;
  }

  v51 = v29 & 1;
  v50 = 0;
  v49 = v33;
  *v47 = v42;
  *&v47[8] = v27;
  v47[16] = v29 & 1;
  *&v47[24] = v41;
  *&v47[32] = KeyPath;
  *&v47[40] = 1;
  v47[48] = 0;
  v47[56] = v32;
  *&v47[64] = v34;
  *&v47[80] = v35;
  v47[96] = v33;
  v38 = v45;
  sub_2666D4038(v0, v45);
  v39 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v40 = swift_allocObject();
  sub_2666D42DC(v38, v40 + v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964A8, &qword_2666DAD50);
  sub_2666D439C();
  sub_2666D88BC();

  memcpy(v48, v47, 0x61uLL);
  sub_2666B2A70(v48, &qword_2800964A8, &qword_2666DAD50);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666D368C()
{
  v0 = sub_2666D8C7C();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v6 = v5 - v4;
  v7 = sub_2666D7E4C();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_1();
  sub_2666C9B88();
  sub_2666D80AC();
  v8 = sub_2666D8DBC();
  type metadata accessor for DateHeaderView(0);
  sub_2666D8B7C();
  v9 = v8;
  sub_2666D8C5C();

  return (*(v2 + 8))(v6, v0);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DateHeaderView.StyleConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DateHeaderView.StyleConstants(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2666D3864(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2666D7F2C();
  OUTLINED_FUNCTION_2_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096468, "^4");
  OUTLINED_FUNCTION_2_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_14:
    v9 = a1 + v12;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096470, &qword_2666DAC48);
  OUTLINED_FUNCTION_2_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_14;
  }

  sub_2666D8B9C();
  OUTLINED_FUNCTION_2_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_14;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_2666D7F1C();
    v12 = a3[9];
    goto LABEL_14;
  }

  v17 = *(a1 + a3[8] + 40);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_2666D3A20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2666D7F2C();
  OUTLINED_FUNCTION_2_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096468, "^4");
    OUTLINED_FUNCTION_2_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096470, &qword_2666DAC48);
      OUTLINED_FUNCTION_2_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_2666D8B9C();
        OUTLINED_FUNCTION_2_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(a1 + a4[8] + 40) = (a2 - 1);
            return;
          }

          v10 = sub_2666D7F1C();
          v14 = a4[9];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for DateHeaderView(uint64_t a1)
{
  result = qword_280096478;
  if (!qword_280096478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666D3C10(uint64_t a1)
{
  sub_2666D7F2C();
  if (v1 <= 0x3F)
  {
    sub_2666D3D8C(319, &qword_280096488, MEMORY[0x277CC9788]);
    if (v2 <= 0x3F)
    {
      sub_2666D3D8C(319, &qword_280096490, MEMORY[0x277CC99E8]);
      if (v3 <= 0x3F)
      {
        sub_2666D8B9C();
        if (v4 <= 0x3F)
        {
          sub_2666D3DE0(319, &qword_280096498, &type metadata for DateHeaderView.StyleConstants, type metadata accessor for IdiomConstant);
          if (v5 <= 0x3F)
          {
            sub_2666D7F1C();
            if (v6 <= 0x3F)
            {
              sub_2666D3DE0(319, &qword_2800964A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
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

void sub_2666D3D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2666D830C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2666D3DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2666D3E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666D3EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2666D8E7C() & 1;
  }
}

BOOL sub_2666D3EEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2666D3F9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666D852C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2666D3FD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2666D852C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2666D4038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D409C()
{
  v1 = type metadata accessor for DateHeaderView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2666D7F2C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2666D7FFC();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2666D802C();
    OUTLINED_FUNCTION_2();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = v1[7];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v12 + 8))(v5 + v11);
  sub_2666B4670(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v13 = v1[9];
  sub_2666D7F1C();
  OUTLINED_FUNCTION_2();
  (*(v14 + 8))(v5 + v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D42DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666D439C()
{
  result = qword_2800964B0;
  if (!qword_2800964B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964A8, &qword_2666DAD50);
    sub_2666D4428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964B0);
  }

  return result;
}

unint64_t sub_2666D4428()
{
  result = qword_2800964B8;
  if (!qword_2800964B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964C0, &qword_2666DAD58);
    sub_2666D44B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964B8);
  }

  return result;
}

unint64_t sub_2666D44B4()
{
  result = qword_2800964C8;
  if (!qword_2800964C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964D0, &qword_2666DAD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800964C8);
  }

  return result;
}

uint64_t sub_2666D4564()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964A8, &qword_2666DAD50);
  sub_2666D439C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(uint64_t a1@<X8>)
{

  return sub_2666BF308(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_2666D827C();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for DateHeaderView(0);
}

uint64_t sub_2666D4688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2666D81DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2666D4758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2666D81DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ParticipantLabelView(uint64_t a1)
{
  result = qword_2800964E0;
  if (!qword_2800964E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D484C(uint64_t a1)
{
  result = sub_2666D81DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666D48E4()
{
  v1 = sub_2666D85DC();
  MEMORY[0x28223BE20](v1 - 8);
  result = *(v0 + 17);
  switch(*(v0 + 17))
  {
    case 1:
    case 2:
    case 3:
      sub_2666D85CC();
      sub_2666D85BC();
      sub_2666D85AC();
      sub_2666D85BC();
      result = sub_2666D85FC();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2666D4A6C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2666D858C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F0, &qword_2666DADD8);
  return sub_2666D4AC0(v2, a2 + *(v4 + 44));
}

uint64_t sub_2666D4AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_2666D83BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F8, &qword_2666DADE0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096500, &qword_2666DADE8);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (*(a1 + *(type metadata accessor for ParticipantLabelView(0) + 24)))
  {
    v19 = 1;
  }

  else
  {
    v20 = *(a1 + 16);
    v44 = v4;
    v45 = v3;
    v42 = v20;
    v46 = a1;
    switch(v20)
    {
      case 1:
        v41 = sub_2666D89CC();
        v21 = sub_2666D897C();
        break;
      case 2:
        v41 = sub_2666D89CC();
        v21 = sub_2666D895C();
        break;
      case 3:
        v41 = sub_2666D89CC();
        v21 = sub_2666D899C();
        break;
      default:
        v41 = sub_2666D89CC();
        v21 = sub_2666D896C();
        break;
    }

    v22 = v21;
    v43 = v7;
    v23 = (v9 + *(v7 + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096510, &qword_2666DADF8) + 28);
    v25 = *MEMORY[0x277CE1050];
    v26 = sub_2666D89DC();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    v27 = v42;
    *v9 = v41;
    v9[1] = v22;
    if (MEMORY[0x266789BB0](v27, 0))
    {
      sub_2666D83AC();
    }

    else
    {
      sub_2666D839C();
    }

    v28 = v45;
    v29 = v44;
    sub_2666D51E4();
    sub_2666D88CC();
    (*(v29 + 8))(v6, v28);
    sub_2666D5354(v9);
    (*(v47 + 32))(v18, v12, v10);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v19, 1, v10);
  sub_2666D4FB8(v49);
  v30 = v49[0];
  v31 = v49[1];
  v32 = v49[2];
  v33 = v49[3];
  v34 = v50;
  KeyPath = swift_getKeyPath();
  LOBYTE(v49[0]) = v34;
  v51 = 0;
  sub_2666D53C4(v18, v16);
  v36 = v51;
  v37 = v49[0];
  v38 = v48;
  sub_2666D53C4(v16, v48);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096548, &qword_2666DAE70) + 48);
  *v39 = v30;
  *(v39 + 8) = v31;
  *(v39 + 16) = v32;
  *(v39 + 24) = v33;
  *(v39 + 32) = v37;
  *(v39 + 40) = KeyPath;
  *(v39 + 48) = 1;
  *(v39 + 56) = v36;
  sub_2666D5434(v30, v31, v32, v33);

  sub_2666D5470(v18);
  sub_2666D54D8(v30, v31, v32, v33);

  return sub_2666D5470(v16);
}

double sub_2666D4FB8@<D0>(uint64_t a1@<X8>)
{
  if ((*(v1 + *(type metadata accessor for ParticipantLabelView(0) + 20)) & 1) != 0 || (sub_2666D48E4(), !v3))
  {
  }

  else
  {
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v4 = qword_2800978F0;
    sub_2666D87DC();
  }

  sub_2666D868C();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2666D5118(uint64_t a1)
{
  v2 = sub_2666D89DC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2666D847C();
}

unint64_t sub_2666D51E4()
{
  result = qword_280096518;
  if (!qword_280096518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800964F8, &qword_2666DADE0);
    sub_2666D529C();
    sub_2666B2B90(&qword_280096540, &qword_280096510, &qword_2666DADF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096518);
  }

  return result;
}

unint64_t sub_2666D529C()
{
  result = qword_280096520;
  if (!qword_280096520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096528, &qword_2666DAE30);
    sub_2666B2B90(&qword_280096530, &qword_280096538, &qword_2666DAE38, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096520);
  }

  return result;
}

uint64_t sub_2666D5354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800964F8, &qword_2666DADE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D53C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D5434(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2666B2BD8(a1, a2, a3 & 1);
}

uint64_t sub_2666D5470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096508, &qword_2666DADF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666D54D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2666B2B2C(a1, a2, a3 & 1);
}

uint64_t sub_2666D556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_2666D8BAC();
  OUTLINED_FUNCTION_2_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2666D5670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2666D8BAC();
    OUTLINED_FUNCTION_2_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for EventStatusSnippet(uint64_t a1)
{
  result = qword_280096560;
  if (!qword_280096560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666D57A8(uint64_t a1)
{
  result = type metadata accessor for RenderableEvent(319);
  if (v2 <= 0x3F)
  {
    result = sub_2666D8BAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666D5858()
{
  v1 = type metadata accessor for EventStatusSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666D635C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EventStatusSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666D61E4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096570, &qword_2666DAEE8);
  sub_2666B2B90(&qword_280096578, &qword_280096570, &qword_2666DAEE8, MEMORY[0x277CE14C0]);
  return sub_2666D8AAC();
}

uint64_t sub_2666D59BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = sub_2666D8BAC();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2666D8BCC();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096580, &qword_2666DAEF0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - v9;
  v10 = type metadata accessor for SingleEventView(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for EventStatusSnippet(0);
  v17 = *(a1 + *(v16 + 20));
  sub_2666D635C(a1, v15, type metadata accessor for RenderableEvent);
  v15[v11[7]] = v17;
  sub_2666D8B8C();
  v18 = &v15[v11[9]];
  KeyPath = swift_getKeyPath();
  v56 = 0;
  v55 = 1;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = 0x4030000000000000;
  *(v18 + 3) = 0;
  v18[32] = 1;
  *(v18 + 5) = 1;
  *(v18 + 6) = sub_2666BD078;
  *(v18 + 7) = 0;
  v20 = &v15[v11[10]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *(v20 + 1) = xmmword_2666D9980;
  *(v20 + 4) = 1;
  *(v20 + 5) = sub_2666BD0AC;
  *(v20 + 6) = 0;
  v21 = &v15[v11[11]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = qword_280095990;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2800978F0;
  v24 = sub_2666D87DC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v53 = MEMORY[0x277CE0BD8];
  v54 = MEMORY[0x277D638E8];
  v31 = swift_allocObject();
  v52 = v31;
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28 & 1;
  *(v31 + 40) = v30;
  (*(v46 + 16))(v44, a1 + *(v16 + 24), v48);
  v32 = v42;
  sub_2666D8BBC();
  sub_2666D6304();
  v33 = v45;
  v34 = v49;
  sub_2666D886C();
  (*(v47 + 8))(v32, v34);
  v35 = v43;
  sub_2666D635C(v15, v43, type metadata accessor for SingleEventView);
  v36 = *(v6 + 16);
  v37 = v50;
  v36(v50, v33, v5);
  v38 = v51;
  sub_2666D635C(v35, v51, type metadata accessor for SingleEventView);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096590, &qword_2666DAF28);
  v36((v38 + *(v39 + 48)), v37, v5);
  v40 = *(v6 + 8);
  v40(v33, v5);
  sub_2666D63C4(v15);
  v40(v37, v5);
  return sub_2666D63C4(v35);
}

uint64_t sub_2666D5F44()
{
  v1 = type metadata accessor for EventStatusSnippet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = sub_2666D825C();
  v7 = v6[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = v0 + v3 + v6[12];
  v10 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = *(v10 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v12 + 8))(v9 + v11);
    }
  }

  v13 = v6[14];
  v14 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 8))(v5 + v15);

  v17 = *(v1 + 24);
  sub_2666D8BAC();
  OUTLINED_FUNCTION_1_4();
  (*(v18 + 8))(v5 + v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666D61E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStatusSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666D6248@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventStatusSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666D59BC(v4, a1);
}

uint64_t sub_2666D62C0()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666D6304()
{
  result = qword_280096588;
  if (!qword_280096588)
  {
    sub_2666D8BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096588);
  }

  return result;
}

uint64_t sub_2666D635C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2666D63C4(uint64_t a1)
{
  v2 = type metadata accessor for SingleEventView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2666D6464()
{
  OUTLINED_FUNCTION_17_0();
  v45 = v1;
  v2 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = sub_2666D85EC();
  v11 = v10;
  v42 = v12;
  v14 = v13;
  *(v8 + 56) = MEMORY[0x277D558C8];
  v15 = sub_2666B7E38(v9, v10, v12);
  OUTLINED_FUNCTION_22_1(v15);
  v16 = v4[6];
  v17 = *MEMORY[0x277D63A88];
  v44 = *MEMORY[0x277D63A88];
  v18 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v43 = *(v19 + 104);
  v43(v8 + v16, v17, v18);
  *v8 = v9;
  *(v8 + 8) = v11;
  *(v8 + 16) = v42 & 1;
  *(v8 + 24) = v14;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v45, v0, v20);
  OUTLINED_FUNCTION_0_5();
  sub_2666D66D0(v8, v0 + v21, v22);
  v23 = OUTLINED_FUNCTION_30_0();
  v25 = v24;
  LOBYTE(v9) = v26;
  v28 = v27;
  v29 = v0 + v2[6];
  *(v29 + 56) = MEMORY[0x277D558C8];
  *(v29 + 64) = v46;
  *(v29 + 32) = 1;
  *(v29 + 72) = 1;
  v43(v29 + v4[6], v44, v18);
  *v29 = v23;
  *(v29 + 8) = v25;
  *(v29 + 16) = v9 & 1;
  *(v29 + 24) = v28;
  *(v29 + v4[7]) = 0;
  *(v29 + v4[8]) = 0;
  OUTLINED_FUNCTION_12_1();
  sub_2666D81FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  *(v0 + v2[8]) = 1;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v34) = 0;
  OUTLINED_FUNCTION_27(v35);
  v36 = v0 + v2[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_1(KeyPath);
  *(v36 + 32) = v38;
  OUTLINED_FUNCTION_8_2();
  *(v36 + 40) = v39;
  *(v36 + 48) = v40;
  *(v36 + 56) = 0;
  v41 = sub_2666D7178();
  OUTLINED_FUNCTION_28_0(v41);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666D66D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_2666D6738()
{
  OUTLINED_FUNCTION_17_0();
  v51 = v2;
  v4 = v3;
  v5 = type metadata accessor for CalendarButtonView.Model(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for RenderableEvent(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1_1();
  v12 = v11 - v10;
  v49 = v11 - v10;
  v13 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_1_7();
  v50 = v15;
  sub_2666D66D0(v4, v12, v16);
  v17 = sub_2666D85EC();
  v45 = v18;
  v46 = v17;
  v44 = v19;
  v47 = v20;
  *(v8 + 7) = MEMORY[0x277D558C8];
  v48 = sub_2666B7E38(v17, v18, v19);
  *(v8 + 8) = v48;
  v8[32] = 0;
  v8[72] = 1;
  v21 = v5;
  v22 = *(v5 + 24);
  v23 = *MEMORY[0x277D63A90];
  v24 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v42 = *(v25 + 104);
  v43 = v25 + 104;
  v42(&v8[v22], v23, v24);
  v26 = v45;
  *v8 = v46;
  *(v8 + 1) = v26;
  v8[16] = v44 & 1;
  *(v8 + 3) = v47;
  *&v8[v21[7]] = 0;
  *&v8[v21[8]] = 0;
  sub_2666D85EC();
  OUTLINED_FUNCTION_21_1();
  v28 = v27;
  v29 = v48;
  *(v1 + 56) = MEMORY[0x277D558C8];
  *(v1 + 64) = v29;
  *(v1 + 32) = 1;
  *(v1 + 72) = 1;
  v42((v1 + v21[6]), *MEMORY[0x277D63A88], v24);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v28;
  OUTLINED_FUNCTION_13_1();
  v30 = sub_2666D81FC();
  v31 = v51;
  LOBYTE(v24) = 2 * (__swift_getEnumTagSinglePayload(v51, 1, v30) == 1);
  sub_2666C7B3C(v31, v0 + v13[11]);
  OUTLINED_FUNCTION_12_1();
  sub_2666D7228(v49, v0, v50);
  OUTLINED_FUNCTION_0_5();
  v33 = v32;
  sub_2666D7228(v8, v0 + v34, v32);
  v35 = OUTLINED_FUNCTION_20_1();
  v37 = sub_2666D7228(v35, v36, v33);
  *(v0 + v13[8]) = 0;
  *(v0 + v13[9]) = 1;
  *(v0 + v13[10]) = v24;
  OUTLINED_FUNCTION_27(v37);
  v38 = v0 + v13[13];
  KeyPath = swift_getKeyPath();
  v55 = 0;
  v53 = 1;
  *v38 = KeyPath;
  *(v38 + 8) = 0;
  *(v38 + 9) = *v54;
  *(v38 + 12) = *&v54[3];
  *(v38 + 16) = 0x4030000000000000;
  *(v38 + 24) = 0;
  *(v38 + 32) = 1;
  *(v38 + 33) = *(&v52 + 1);
  *(v38 + 36) = HIDWORD(v52);
  *(v38 + 40) = 1;
  *(v38 + 48) = sub_2666BD078;
  *(v38 + 56) = 0;
  v40 = sub_2666D7178();
  OUTLINED_FUNCTION_28_0(v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6AA0()
{
  OUTLINED_FUNCTION_17_0();
  v44 = v3;
  v4 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = OUTLINED_FUNCTION_31_0();
  v41 = v12;
  v42 = v11;
  v40 = v13;
  v43 = v14;
  *(v10 + 7) = MEMORY[0x277D558D8];
  v15 = sub_2666D7288(v11, v12, v13);
  OUTLINED_FUNCTION_18_2(v15);
  v16 = *MEMORY[0x277D63A90];
  v17 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v38 = *(v18 + 104);
  v39 = v18 + 104;
  v38(&v10[v2], v16, v17);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_21_1();
  v20 = v19;
  OUTLINED_FUNCTION_16_0();
  v38((v1 + v21), *MEMORY[0x277D63A88], v17);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v20;
  *(v1 + *(v6 + 28)) = 0;
  *(v1 + *(v6 + 32)) = 0;
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v44, v0, v22);
  OUTLINED_FUNCTION_0_5();
  v24 = v23;
  sub_2666D66D0(v10, v0 + v25, v23);
  v26 = OUTLINED_FUNCTION_20_1();
  sub_2666D66D0(v26, v27, v24);
  sub_2666CF900(v0 + *(v4 + 28));
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *(v0 + *(v4 + 32)) = 0;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v32) = 2;
  OUTLINED_FUNCTION_27(v33);
  KeyPath = swift_getKeyPath();
  v35 = OUTLINED_FUNCTION_7_2(KeyPath);
  OUTLINED_FUNCTION_28_0(v35);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_3();
  sub_2666D71D0(v1, v36);
  sub_2666D71D0(v10, v0);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6CD8()
{
  OUTLINED_FUNCTION_17_0();
  v43 = v1;
  v2 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v4 = type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = sub_2666D85EC();
  v11 = v10;
  v41 = v12;
  v14 = v13;
  *(v8 + 56) = MEMORY[0x277D558C8];
  v15 = sub_2666B7E38(v9, v10, v12);
  OUTLINED_FUNCTION_22_1(v15);
  v16 = v4[6];
  v17 = *MEMORY[0x277D63A90];
  v18 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v42 = *(v19 + 104);
  v42(v8 + v16, v17, v18);
  *v8 = v9;
  *(v8 + 8) = v11;
  *(v8 + 16) = v41 & 1;
  *(v8 + 24) = v14;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v43, v0, v20);
  OUTLINED_FUNCTION_0_5();
  sub_2666D66D0(v8, v0 + v21, v22);
  v23 = OUTLINED_FUNCTION_30_0();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  v29 = v0 + v2[6];
  *(v29 + 56) = MEMORY[0x277D558C8];
  *(v29 + 64) = v44;
  *(v29 + 32) = 2;
  *(v29 + 72) = 1;
  v42(v29 + v4[6], *MEMORY[0x277D63A88], v18);
  *v29 = v23;
  *(v29 + 8) = v25;
  *(v29 + 16) = v14 & 1;
  *(v29 + 24) = v28;
  *(v29 + v4[7]) = 0;
  *(v29 + v4[8]) = 0;
  OUTLINED_FUNCTION_12_1();
  sub_2666D81FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  *(v0 + v2[8]) = 1;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v34) = v35;
  OUTLINED_FUNCTION_27(v36);
  v37 = v0 + v2[13];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_1(KeyPath);
  *(v37 + 32) = 1;
  OUTLINED_FUNCTION_8_2();
  *(v37 + 40) = 1;
  *(v37 + 48) = v39;
  *(v37 + 56) = 0;
  v40 = sub_2666D7178();
  OUTLINED_FUNCTION_28_0(v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

void sub_2666D6F40()
{
  OUTLINED_FUNCTION_17_0();
  v44 = v3;
  v4 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = OUTLINED_FUNCTION_31_0();
  v41 = v12;
  v42 = v11;
  v40 = v13;
  v43 = v14;
  *(v10 + 7) = MEMORY[0x277D558D8];
  v15 = sub_2666D7288(v11, v12, v13);
  OUTLINED_FUNCTION_18_2(v15);
  v16 = *MEMORY[0x277D63A90];
  v17 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v38 = *(v18 + 104);
  v39 = v18 + 104;
  v38(&v10[v2], v16, v17);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_21_1();
  v20 = v19;
  OUTLINED_FUNCTION_16_0();
  v38((v1 + v21), *MEMORY[0x277D63A88], v17);
  OUTLINED_FUNCTION_19_1();
  *(v1 + 24) = v20;
  *(v1 + *(v6 + 28)) = 0;
  *(v1 + *(v6 + 32)) = 0;
  OUTLINED_FUNCTION_1_7();
  sub_2666D66D0(v44, v0, v22);
  OUTLINED_FUNCTION_0_5();
  v24 = v23;
  sub_2666D66D0(v10, v0 + v25, v23);
  v26 = OUTLINED_FUNCTION_20_1();
  sub_2666D66D0(v26, v27, v24);
  sub_2666CF900(v0 + *(v4 + 28));
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *(v0 + *(v4 + 32)) = 0;
  OUTLINED_FUNCTION_14_2();
  *(v0 + v32) = 1;
  OUTLINED_FUNCTION_27(v33);
  KeyPath = swift_getKeyPath();
  v35 = OUTLINED_FUNCTION_7_2(KeyPath);
  OUTLINED_FUNCTION_28_0(v35);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_3();
  sub_2666D71D0(v1, v36);
  sub_2666D71D0(v10, v0);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_2666D7178()
{
  result = qword_2800965A8;
  if (!qword_2800965A8)
  {
    type metadata accessor for SingleEventWithButtonsSnippet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800965A8);
  }

  return result;
}

uint64_t sub_2666D71D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666D7228(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666D7288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800965B0[0];
  if (!qword_2800965B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800965B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2666D71D0(v0, type metadata accessor for SingleEventWithButtonsSnippet);
}

unint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{
  *(v2 - 88) = 0;
  *(v2 - 96) = 1;
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 9) = *(v2 - 95);
  *(v1 + 12) = *(v2 - 92);
  *(v1 + 16) = 0x4030000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 33) = *(v2 - 103);
  *(v1 + 36) = *(v2 - 100);
  *(v1 + 40) = 1;
  *(v1 + 48) = sub_2666BD078;
  *(v1 + 56) = 0;

  return sub_2666D7178();
}

void OUTLINED_FUNCTION_9_4()
{
  v3 = *(v2 - 144);
  *v0 = *(v2 - 136);
  *(v0 + 8) = v3;
  *(v0 + 16) = *(v2 - 148) & 1;
  *(v0 + 24) = *(v2 - 128);
  *(v0 + *(v1 + 28)) = 0;
  *(v0 + *(v1 + 32)) = 0;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_2666D71D0(v0, type metadata accessor for CalendarButtonView.Model);
}

uint64_t OUTLINED_FUNCTION_12_1()
{
  v4 = v1 + *(v0 + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 9) = *(v2 - 95);
  *(v1 + 12) = *(v2 - 92);
  *(v1 + 16) = 0x4030000000000000;
  *(v1 + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_16_0()
{
  v3 = *(v2 - 120);
  *(v1 + 56) = v0;
  *(v1 + 64) = v3;
  *(v1 + 32) = 2;
  *(v1 + 72) = 1;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t result)
{
  *(v2 - 120) = result;
  *(v1 + 64) = result;
  *(v1 + 32) = 1;
  *(v1 + 72) = 1;
  return result;
}

void OUTLINED_FUNCTION_19_1()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3 & 1;
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t result)
{
  *(v2 - 112) = result;
  *(v1 + 64) = result;
  *(v1 + 32) = 0;
  *(v1 + 72) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_2666D85EC();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{

  return sub_2666D8B8C();
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1)
{

  return sub_2666D87FC();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v1);

  return sub_2666D81FC();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_2666D85EC();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return sub_2666D85EC();
}

void sub_2666D764C(uint64_t a1)
{
  sub_2666BF898(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VRXIdiom();
      if (v3 <= 0x3F)
      {
        sub_2666D7AC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2666D7704(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((((v9 + ((v7 + 9) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2666D786CLL);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        return v8 + (v12 | v18) + 1;
      default:
        break;
    }
  }

  v19 = (a1 + v7 + 9) & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((((v9 + v19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_2666D7880(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        return;
      case 2:
        *&a1[v12] = v17;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x2666D7A80);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = &a1[v10 + 9] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((((v11 + v19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

unint64_t sub_2666D7AC0()
{
  result = qword_280096638;
  if (!qword_280096638)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280096638);
  }

  return result;
}

uint64_t sub_2666D7B08()
{
  v1 = sub_2666D857C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v6 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_2666D7C4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2666D7B08();
  v8 = *(a1 + 32);
  if (result != *(v1 + v8))
  {
    v9 = *(v1 + *(a1 + 36));
    v10 = sub_2666D7B08();
    v9(v10);
    (*(v4 + 40))(v1 + *(a1 + 28), v6, v3);
    result = sub_2666D7B08();
    *(v1 + v8) = result;
  }

  return result;
}