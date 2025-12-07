uint64_t sub_222B855D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_222B856A0()
{
  result = qword_280FE03C0;
  if (!qword_280FE03C0)
  {
    sub_222C93BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE03C0);
  }

  return result;
}

uint64_t ContactSuggestionProvidedClassification.turnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSuggestionProvidedClassification.contactSuggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactSuggestionProvidedClassification(0) + 20);

  return sub_222B85800(v3, a1);
}

uint64_t type metadata accessor for ContactSuggestionProvidedClassification(uint64_t a1)
{
  result = qword_280FDBF30;
  if (!qword_280FDBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B85800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactSuggestionProvidedClassification.userPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactSuggestionProvidedClassification(0) + 24);

  return sub_222B858A8(v3, a1);
}

uint64_t sub_222B858A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactSuggestionProvidedClassification.referencedTurns.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222C97C40;
  (*(v2 + 16))(v4 + v3, v0, v1);
  return v4;
}

uint64_t ContactSuggestionProvidedClassification.referencedEvents.getter()
{
  type metadata accessor for ContactSuggestionProvidedClassification(0);
}

uint64_t sub_222B85A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222C97C40;
  (*(v2 + 16))(v4 + v3, v0, v1);
  return v4;
}

void sub_222B85B40(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlusContactSuggestionRuntimeSummary(319);
    if (v2 <= 0x3F)
    {
      sub_222B85BF4(319);
      if (v3 <= 0x3F)
      {
        sub_222B85C4C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B85BF4(uint64_t a1)
{
  if (!qword_280FDE080)
  {
    type metadata accessor for EntityPromptClassification(255);
    v1 = sub_222C94B5C();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDE080);
    }
  }
}

void sub_222B85C4C()
{
  if (!qword_280FDB798)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB798);
    }
  }
}

uint64_t static EntityNodeComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222B85CF4()
{
  type metadata accessor for EntityNodeComparator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A70, &qword_222C9A048);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025A58 = 91;
  unk_27D025A60 = 0xE100000000000000;
  return result;
}

uint64_t EntityNodeComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a3;
  *(result + 24) = a2;
  return result;
}

uint64_t EntityNodeComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 32) = a1;
  *(v3 + 16) = a3;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_222B85DE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  result = sub_222B41D30(v1);
  if (result)
  {
    v3 = *(result + 16);

    if (v3)
    {
      result = sub_222B417F4(v1);
      if (result)
      {
        v4 = *(result + 16);

        return v4 != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222B85E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41648(*(a1 + *(v7 + 24)));
  if (result)
  {
    v9 = result;
    v10 = sub_222B41648(*(a2 + *(v7 + 24)));
    if (v10)
    {
      v11 = v10;
      v12 = *(v3 + 32);

      v13 = sub_222B72040(v9);

      v14 = sub_222B861C8(v13, v12, sub_222B89428, sub_222B89428);

      v15 = sub_222B72040(v11);

      v16 = sub_222B861C8(v15, v14, sub_222B89428, sub_222B89428);

      v17 = v16[2];

      if (v17 == 1)
      {
        result = sub_222B86568(a1, a2);
        if ((v18 & 1) == 0)
        {
          v19 = result;
          v20 = *(v3 + 16);
          v21 = *(v3 + 24);
          v22 = type metadata accessor for EntityNodeComparison();
          v23 = swift_allocObject();
          *(v23 + 16) = v19;
          *(v23 + 24) = v20;
          *(v23 + 32) = v21;
          *(a3 + 24) = v22;
          result = sub_222B867C0();
          *(a3 + 32) = result;
          *a3 = v23;
          return result;
        }
      }
    }

    else
    {
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t EntityNodeComparator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_222B86050(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_222B860E8(uint64_t a1, uint64_t a2)
{

  return sub_222B861C8(a1, a2, sub_222B89428, sub_222B89428);
}

void *sub_222B86158(uint64_t a1, uint64_t a2)
{

  return sub_222B861C8(a1, a2, sub_222B89804, sub_222B89804);
}

void *sub_222B861C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_222B86050(v15, v10, a2, a1, a4);

    MEMORY[0x223DCA8C0](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_222B863A4(unint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_222B8A1CC(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_222B89320(v11, v6, a2, a1);

    MEMORY[0x223DCA8C0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_222B86568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = sub_222B41D30(*(a1 + *(v4 + 24)));
  if (v5)
  {
    if (*(v5 + 16))
    {

      v6 = sub_222B41D30(*(a2 + *(v4 + 24)));
      if (v6)
      {
        if (v6[2])
        {
          v7 = v6[4];
          v8 = v6[5];

          v9._countAndFlagsBits = v7;
          v9._object = v8;
          v18 = String.scoreRatcliffObershelp(between:)(v9);
          v10 = *&v18.is_nil;

          return v10;
        }
      }
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v12 = sub_222C9431C();
  __swift_project_value_buffer(v12, qword_280FE2340);
  v13 = sub_222C942FC();
  v14 = sub_222C94A4C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136315138;
    if (qword_27D0246A0 != -1)
    {
      swift_once();
    }

    *(v15 + 4) = sub_222B437C0(qword_27D025A58, unk_27D025A60, &v17);
    _os_log_impl(&dword_222B39000, v13, v14, "%s No match for USOPerson found in turns", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223DCA8C0](v16, -1, -1);
    MEMORY[0x223DCA8C0](v15, -1, -1);
  }

  return 0;
}

unint64_t sub_222B867C0()
{
  result = qword_27D025A68;
  if (!qword_27D025A68)
  {
    type metadata accessor for EntityNodeComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A68);
  }

  return result;
}

uint64_t SELFPlusSuggestionIdMapper.__allocating_init(picsIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t SELFPlusSuggestionIdMapper.init(picsIds:)(uint64_t a1)
{
  v3 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_222B86928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - v10;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v35 = &v33 - v23;
  v24 = *(v12 + 16);
  v24(v20, v39, v11, v22);
  v39 = a2;
  (v24)(v17, a2, v11);
  (v24)(v14, v20, v11);
  sub_222C9360C();
  v36 = v14;
  sub_222C42B54(v14, v8);
  v25 = *(v12 + 8);
  v25(v17, v11);
  v34 = v25;
  v25(v20, v11);
  v26 = *(v12 + 48);
  if (v26(v8, 1, v11))
  {
    sub_222B86DA0(v8);
    v27 = 1;
  }

  else
  {
    (*(v12 + 32))(v40, v8, v11);
    v27 = 0;
  }

  v28 = v40;
  v33 = *(v12 + 56);
  v33(v40, v27, 1, v11);
  if (v26(v28, 1, v11) == 1)
  {
    return sub_222B86DA0(v40);
  }

  v30 = v35;
  (*(v12 + 32))(v35, v40, v11);
  v31 = v36;
  (v24)(v36, v30, v11);
  v32 = v37;
  (v24)(v37, v39, v11);
  v33(v32, 0, 1, v11);
  sub_222C4A900(v32, v31);
  return v34(v30, v11);
}

uint64_t SELFPlusSuggestionIdMapper.deinit()
{

  return v0;
}

uint64_t SELFPlusSuggestionIdMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222B86DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B86E08()
{
  type metadata accessor for PlusContactSuggestionGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB8, &qword_222C9A1F0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025A78 = 91;
  unk_27D025A80 = 0xE100000000000000;
  return result;
}

double PlusContactSuggestionGenerator.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PlusContactSuggestionGenerator();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_222C9A0B0;
  *(v1 + 16) = v0;
  return result;
}

double PlusContactSuggestionGenerator.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_222C9A0B0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t PlusContactSuggestionGenerator.init(store:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_222C9A0B0;
  *(v1 + 16) = a1;
  return v1;
}

void *sub_222B86F68(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v62 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v50 = type metadata accessor for PlusContactSuggestion(0);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v51 = v5;
  if (v7)
  {
    v8 = a1 + 32;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B43E3C(v8, v61);
      sub_222B405A0(v61, &v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
      if (swift_dynamicCast())
      {
        if (*(&v56 + 1))
        {
          sub_222B79B78(&v55, &v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_222B4AC80(0, v54[2] + 1, 1, v54);
          }

          v10 = v54[2];
          v9 = v54[3];
          if (v10 >= v9 >> 1)
          {
            v54 = sub_222B4AC80((v9 > 1), v10 + 1, 1, v54);
          }

          v11 = v54;
          v54[2] = v10 + 1;
          sub_222B79B78(&v58, &v11[6 * v10 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
      }

      sub_222B4FCD4(&v55, &qword_27D025A90, qword_222C9A0D8);
LABEL_5:
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_14:
  v12 = v54;
  v53 = v54[2];
  if (v53)
  {
    v13 = 0;
    v14 = v54 + 4;
    v15 = MEMORY[0x277D84F90];
    v16 = v52;
    while (v13 < v12[2])
    {
      sub_222B79B90(v14, &v58);
      if (!*(v16 + 16))
      {
        goto LABEL_23;
      }

      v17 = v59;
      v18 = v60;
      __swift_project_boxed_opaque_existential_1(&v58, v59);
      v19 = (*(v18 + 24))(v17, v18);
      v20 = *(v19 + 32);
      v21 = v20 & 0x3F;
      v22 = ((1 << v20) + 63) >> 6;
      v23 = 8 * v22;

      if (v21 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v47 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0), v23);
        v25 = sub_222B8A1CC(&v47 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0), v22, v19, v16);
      }

      else
      {
        v30 = swift_slowAlloc();

        v25 = sub_222B89320(v30, v22, v19, v16);

        MEMORY[0x223DCA8C0](v30, -1, -1);
        v16 = v52;
      }

      v12 = v54;
      v26 = *(v25 + 16);

      if (!v26)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v58);
      }

      else
      {
LABEL_23:
        sub_222B79B78(&v58, &v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C828(0, *(v15 + 16) + 1, 1);
          v15 = *&v61[0];
        }

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_222B4C828((v28 > 1), v29 + 1, 1);
          v15 = *&v61[0];
        }

        *(v15 + 16) = v29 + 1;
        sub_222B79B78(&v55, (v15 + 48 * v29 + 32));
      }

      v13 = (v13 + 1);
      v14 += 6;
      if (v53 == v13)
      {
        goto LABEL_31;
      }
    }

LABEL_48:
    __break(1u);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_31:

  v31 = sub_222B8AABC(v15);

  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31[8];
  v35 = (v32 + 63) >> 6;
  v54 = (v49 + 48);

  v36 = 0;
  v53 = MEMORY[0x277D84F90];
  while (v34)
  {
    v37 = v36;
LABEL_39:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = (v37 << 9) | (8 * v38);
    v40 = *(v31[6] + v39);
    v41 = *(v31[7] + v39);

    v42 = v51;
    sub_222B8774C(v40, v41, v52, v51);

    if ((*v54)(v42, 1, v50) == 1)
    {
      sub_222B4FCD4(v42, &qword_27D025A88, &unk_222C9A0C0);
      v36 = v37;
    }

    else
    {
      sub_222B8B3DC(v42, v48, type metadata accessor for PlusContactSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_222B4ACA4(0, v53[2] + 1, 1, v53);
      }

      v44 = v53[2];
      v43 = v53[3];
      if (v44 >= v43 >> 1)
      {
        v53 = sub_222B4ACA4((v43 > 1), v44 + 1, 1, v53);
      }

      v45 = v53;
      v53[2] = v44 + 1;
      sub_222B8B3DC(v48, v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44, type metadata accessor for PlusContactSuggestion);
      v36 = v37;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = v31[v37 + 8];
    ++v36;
    if (v34)
    {
      goto LABEL_39;
    }
  }

  return v53;
}

uint64_t sub_222B8774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v114 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v104 - v8;
  v119 = type metadata accessor for ThinContactGroundTruth(0);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_222C935EC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v104 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v104 - v20;
  v22 = UsoEntity_common_Person.convertUSOPersonToString()();
  if (!v22.value._object)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v29 = sub_222C9431C();
    __swift_project_value_buffer(v29, qword_280FE2340);
    v30 = sub_222C942FC();
    v31 = sub_222C94A4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v122 = v33;
      *v32 = 136315138;
      if (qword_27D0246A8 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
      _os_log_impl(&dword_222B39000, v30, v31, "%s Failed to convert contact query to string. Unable to generate PICS for non string convertible cases.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    goto LABEL_59;
  }

  v110 = v21;
  v105 = v18;
  v106 = v15;
  v107 = v13;
  v108 = v12;
  v109 = a1;
  v116 = a4;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v23 = sub_222C9431C();
  __swift_project_value_buffer(v23, qword_280FE2340);

  v24 = sub_222C942FC();
  v25 = sub_222C94A3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v122 = v27;
    *v26 = 136315650;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
    *(v26 + 12) = 2048;
    *(v26 + 14) = *(a2 + 16);

    *(v26 + 22) = 2080;
    v28 = sub_222B437C0(v22.value._countAndFlagsBits, v22.value._object, &v122);

    *(v26 + 24) = v28;
    _os_log_impl(&dword_222B39000, v24, v25, "%s Reviewing %ld Ground truth events related to query %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v27, -1, -1);
    MEMORY[0x223DCA8C0](v26, -1, -1);
  }

  else
  {
  }

  v34 = sub_222B8AE00(a2);
  v35 = sub_222C942FC();
  v36 = sub_222C94A3C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v122 = v38;
    *v37 = 136315650;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v37 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
    *(v37 + 12) = 2048;
    *(v37 + 14) = *(v34 + 16);
    *(v37 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB0, &qword_222C9A1E8);
    v39 = sub_222C9438C();
    v41 = sub_222B437C0(v39, v40, &v122);

    *(v37 + 24) = v41;
    _os_log_impl(&dword_222B39000, v35, v36, "%s Found %ld potential contact mappings based on supplied ground truth. Ground Truth Summary=%s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v38, -1, -1);
    MEMORY[0x223DCA8C0](v37, -1, -1);
  }

  v42 = sub_222B890BC(v34);

  v43 = sub_222C942FC();
  v44 = sub_222C94A3C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v122 = v46;
    *v45 = 136315394;
    if (qword_27D0246A8 != -1)
    {
      swift_once();
    }

    *(v45 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v42[2];

    _os_log_impl(&dword_222B39000, v43, v44, "%s Found %ld contact mapping with positive signals", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x223DCA8C0](v46, -1, -1);
    MEMORY[0x223DCA8C0](v45, -1, -1);
  }

  else
  {
  }

  v47 = sub_222BB76B4(v42);
  if (!v48)
  {

    goto LABEL_33;
  }

  v50 = v47;
  v51 = v48;
  v52 = v49;
  v53 = v42[2];

  if (v53 != 1)
  {

LABEL_33:
    v56 = sub_222C942FC();
    v57 = sub_222C94A3C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v122 = v59;
      *v58 = 136315138;
      a4 = v116;
      if (qword_27D0246A8 != -1)
      {
        swift_once();
      }

      *(v58 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
      v60 = "%s Skipping PICS generation as not all ground truth maps to the same contact";
      goto LABEL_37;
    }

    goto LABEL_58;
  }

  swift_bridgeObjectRetain_n();
  v54 = sub_222B88C5C();
  if (v55)
  {
    if (v50 == v54 && v51 == v55)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }

    v61 = sub_222C951FC();

    if (v61)
    {

LABEL_41:

      v56 = sub_222C942FC();
      v57 = sub_222C94A3C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v122 = v59;
        *v58 = 136315138;
        a4 = v116;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v58 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
        v60 = "%s Skipping PICS generation as resolved contact is meCard";
LABEL_37:
        _os_log_impl(&dword_222B39000, v56, v57, v60, v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x223DCA8C0](v59, -1, -1);
        MEMORY[0x223DCA8C0](v58, -1, -1);

LABEL_59:
        v68 = type metadata accessor for PlusContactSuggestion(0);
        v69 = *(*(v68 - 8) + 56);

        return v69(a4, 1, 1, v68);
      }

      goto LABEL_58;
    }
  }

  else
  {
  }

  v62 = *(v52 + 16);
  v63 = (v52 + 32);
  v64 = v62;
  v65 = (v52 + 32);
  while (v64)
  {
    v66 = *v65++;
    --v64;
    if (v66 == 6)
    {

      swift_bridgeObjectRelease_n();
      v56 = sub_222C942FC();
      v57 = sub_222C94A3C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v122 = v59;
        *v58 = 136315138;
        a4 = v116;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v58 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
        v60 = "%s Skipping PICS generation as negative signals exist for the only provided contact mapping.";
        goto LABEL_37;
      }

LABEL_58:

      a4 = v116;
      goto LABEL_59;
    }
  }

  do
  {
    if (!v62)
    {

      swift_bridgeObjectRelease_n();
      v56 = sub_222C942FC();
      v57 = sub_222C94A3C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v122 = v59;
        *v58 = 136315138;
        a4 = v116;
        if (qword_27D0246A8 != -1)
        {
          swift_once();
        }

        *(v58 + 4) = sub_222B437C0(qword_27D025A78, unk_27D025A80, &v122);
        v60 = "%s Skipping PICS generation as mapping has no strong positive signals.";
        goto LABEL_37;
      }

      goto LABEL_58;
    }

    v67 = *v63++;
    --v62;
  }

  while (v67 != 3);

  v71 = sub_222B8B210(v50, v51, a2);
  sub_222C9366C();
  v72 = *(a2 + 16);

  v115 = v71;
  if (v72)
  {
    v73 = a2 + 32;
    v74 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B79B90(v73, &v122);
      v75 = v123;
      v76 = v124;
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      if (*((*(v76 + 16))(v75, v76) + 16))
      {
        sub_222B8C9DC(v50, v51);
        v78 = v77;

        if (v78)
        {
          sub_222B79B78(&v122, v121);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C828(0, *(v74 + 16) + 1, 1);
            v74 = v120[0];
          }

          v81 = *(v74 + 16);
          v80 = *(v74 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_222B4C828((v80 > 1), v81 + 1, 1);
            v74 = v120[0];
          }

          *(v74 + 16) = v81 + 1;
          sub_222B79B78(v121, (v74 + 48 * v81 + 32));
          goto LABEL_66;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v122);
LABEL_66:
      v73 += 48;
      if (!--v72)
      {
        goto LABEL_75;
      }
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_75:

  v82 = sub_222C6724C(v74);

  v83 = v114;

  v115 = sub_222C6E8C0(v115, v83);
  v84 = v111;
  sub_222C935DC();
  sub_222C935BC();
  v86 = v85;
  (*(v112 + 8))(v84, v113);
  v87 = *(v82 + 16);
  if (v87)
  {
    v114 = v82;
    v88 = v82 + 32;
    v89 = (v117 + 48);
    v90 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v88, &v122);
      sub_222B43E3C(&v122, v121);
      v120[0] = v50;
      v120[1] = v51;
      v120[2] = 0;
      v120[3] = 0;

      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(v121, v120, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(&v122);
      if ((*v89)(v9, 1, v119) == 1)
      {
        sub_222B4FCD4(v9, &qword_27D025AA8, &qword_222C9A1E0);
      }

      else
      {
        sub_222B8B3DC(v9, v118, type metadata accessor for ThinContactGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_222B4A984(0, v90[2] + 1, 1, v90);
        }

        v92 = v90[2];
        v91 = v90[3];
        if (v92 >= v91 >> 1)
        {
          v90 = sub_222B4A984((v91 > 1), v92 + 1, 1, v90);
        }

        v90[2] = v92 + 1;
        sub_222B8B3DC(v118, v90 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v92, type metadata accessor for ThinContactGroundTruth);
      }

      v88 += 40;
      --v87;
    }

    while (v87);
  }

  else
  {

    v90 = MEMORY[0x277D84F90];
  }

  v93 = v107;
  v94 = *(v107 + 16);
  v95 = v105;
  v96 = v108;
  v94(v105, v110, v108);
  v97 = v106;
  v94(v106, v95, v96);
  v98 = v116;
  v94(v116, v97, v96);
  v99 = type metadata accessor for PlusContactSuggestion(0);
  *&v98[v99[5]] = v109;

  v100 = &v98[v99[6]];
  *v100 = v50;
  v100[1] = v51;
  v100[2] = 0;
  v100[3] = 0;
  sub_222C17488(50, v90);
  *&v98[v99[7]] = v101;
  *&v98[v99[8]] = v86;
  *&v98[v99[9]] = v115;
  *&v98[v99[10]] = 0;
  v102 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);
  v103 = *(v93 + 8);
  v103(v97, v96);
  v103(v95, v96);
  v103(v110, v96);
  *&v98[v99[11]] = v102;
  return (*(*(v99 - 1) + 56))(v98, 0, 1, v99);
}

Swift::String_optional __swiftcall UsoEntity_common_Person.convertUSOPersonToString()()
{
  v0 = sub_222C944DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_222C931FC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9378C();
  sub_222B8AD58(&qword_27D025A98, MEMORY[0x277D5E450]);
  v2 = sub_222C9321C();
  v4 = v3;
  sub_222C944CC();
  v5 = sub_222C944BC();
  v7 = v6;
  sub_222B803C0(v2, v4);

  v8 = v7;
  v9 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_222B88C5C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_222BB250C();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 identifier];

      v4 = sub_222C9449C();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *(v1 + 24);
    v11 = *(v1 + 32);
    *(v1 + 24) = v4;
    *(v1 + 32) = v9;

    sub_222B8AD10(v10, v11);
  }

  sub_222B8ADEC(v2, v3);
  return v4;
}

uint64_t PlusContactSuggestionGenerator.__deallocating_deinit()
{
  sub_222B8AD10(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t UsoEntity_common_Person.description.getter()
{
  v1 = UsoEntity_common_Person.convertUSOPersonToString()();
  result = v1.value._countAndFlagsBits;
  if (!v1.value._object)
  {
    return 0x6E776F6E6B6E553CLL;
  }

  return result;
}

uint64_t UsoEntity_common_Person.hash(into:)(uint64_t a1)
{
  if (!UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  sub_222C9452C();
}

uint64_t UsoEntity_common_Person.hashValue.getter()
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B88ED4()
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B88F5C(uint64_t a1)
{
  if (!UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  sub_222C9452C();
}

uint64_t sub_222B88FE4(uint64_t a1)
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return sub_222C9534C();
}

uint64_t sub_222B89068()
{
  v1 = UsoEntity_common_Person.convertUSOPersonToString()();
  result = v1.value._countAndFlagsBits;
  if (!v1.value._object)
  {
    return 0x6E776F6E6B6E553CLL;
  }

  return result;
}

unint64_t *sub_222B890BC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_222B8921C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_222B893B0(v8, v4, v2);
  result = MEMORY[0x223DCA8C0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_222B8921C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(a3 + 56) + 8 * v11);
    v15 = *(v14 + 16);
    v16 = (v14 + 32);
    while (v15)
    {
      v17 = *v16++;
      --v15;
      if ((v17 - 3) <= 1)
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v4++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_222B5B0E4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_222B5B0E4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_222B89320(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_222B8A1CC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_222B893B0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_222B8921C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_222B89428(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_222C952FC();

      sub_222C9452C();
      v26 = sub_222C9534C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_222C951FC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_222C1043C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_222C952FC();

      sub_222C9452C();
      v39 = sub_222C9534C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_222C951FC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B89804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v69 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v36 = a3 + 56;
    v37 = 1 << *(a3 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v71 = v38 & *(a3 + 56);
    v39 = (v37 + 63) >> 6;
    v75 = a4 + 56;
    while (1)
    {
      do
      {
LABEL_84:
        if (v71)
        {
          v40 = __clz(__rbit64(v71));
          v41 = (v71 - 1) & v71;
        }

        else
        {
          v42 = v7;
          do
          {
            v7 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_160;
            }

            if (v7 >= v39)
            {
LABEL_158:

              return sub_222C10660(v69, a2, v6, v5);
            }

            v43 = *(v36 + 8 * v7);
            ++v42;
          }

          while (!v43);
          v40 = __clz(__rbit64(v43));
          v41 = (v43 - 1) & v43;
        }

        v44 = v40 | (v7 << 6);
        v45 = *(*(v5 + 48) + v44);
        sub_222C952FC();
        v71 = v41;
        v68 = v44;
        sub_222C9452C();

        result = sub_222C9534C();
        v46 = -1 << *(v4 + 32);
        v47 = result & ~v46;
      }

      while (((*(v75 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0);
      v73 = v6;
      v48 = ~v46;
      while (1)
      {
        v49 = *(*(v4 + 48) + v47);
        if (v49 > 3)
        {
          if (*(*(v4 + 48) + v47) > 5u)
          {
            if (v49 == 6)
            {
              v54 = 0xD000000000000013;
              v55 = 0x8000000222CA93E0;
              if (v45 > 3)
              {
                goto LABEL_122;
              }
            }

            else
            {
              v54 = 0xD000000000000012;
              v55 = 0x8000000222CA9400;
              if (v45 > 3)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v49 == 4)
            {
              v54 = 0x7972617262696CLL;
            }

            else
            {
              v54 = 0xD000000000000011;
            }

            if (v49 == 4)
            {
              v55 = 0xE700000000000000;
            }

            else
            {
              v55 = 0x8000000222CA93C0;
            }

            if (v45 > 3)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v50 = 0x6974636572726F63;
          if (v49 == 2)
          {
            v50 = 0x6574616E696D6F6ELL;
          }

          v51 = 0xEA00000000006E6FLL;
          if (v49 == 2)
          {
            v51 = 0xE900000000000064;
          }

          v52 = 0x754D6E69616D6F64;
          if (*(*(v4 + 48) + v47))
          {
            v52 = 0x656D7269666E6F63;
          }

          v53 = 0xEB00000000636973;
          if (*(*(v4 + 48) + v47))
          {
            v53 = 0xE900000000000064;
          }

          if (*(*(v4 + 48) + v47) <= 1u)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          if (*(*(v4 + 48) + v47) <= 1u)
          {
            v55 = v53;
          }

          else
          {
            v55 = v51;
          }

          if (v45 > 3)
          {
LABEL_122:
            v58 = 0xD000000000000013;
            if (v45 != 6)
            {
              v58 = 0xD000000000000012;
            }

            v59 = 0x8000000222CA9400;
            if (v45 == 6)
            {
              v59 = 0x8000000222CA93E0;
            }

            v60 = 0x7972617262696CLL;
            if (v45 != 4)
            {
              v60 = 0xD000000000000011;
            }

            v61 = 0x8000000222CA93C0;
            if (v45 == 4)
            {
              v61 = 0xE700000000000000;
            }

            if (v45 <= 5)
            {
              v62 = v60;
            }

            else
            {
              v62 = v58;
            }

            if (v45 <= 5)
            {
              v57 = v61;
            }

            else
            {
              v57 = v59;
            }

            if (v54 != v62)
            {
              goto LABEL_146;
            }

            goto LABEL_145;
          }
        }

        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v63 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v63 = 0x6974636572726F63;
          }

          if (v45 == 2)
          {
            v57 = 0xE900000000000064;
          }

          else
          {
            v57 = 0xEA00000000006E6FLL;
          }

          if (v54 != v63)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v56 = 0x754D6E69616D6F64;
          v57 = 0xEB00000000636973;
          if (v45)
          {
            v56 = 0x656D7269666E6F63;
            v57 = 0xE900000000000064;
          }

          if (v54 != v56)
          {
            goto LABEL_146;
          }
        }

LABEL_145:
        if (v55 == v57)
        {
          break;
        }

LABEL_146:
        v64 = sub_222C951FC();

        if (v64)
        {
          goto LABEL_155;
        }

        v47 = (v47 + 1) & v48;
        v4 = a4;
        if (((*(v75 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          v5 = a3;
          v6 = v73;
          goto LABEL_84;
        }
      }

LABEL_155:
      *(v69 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
      v6 = v73 + 1;
      v4 = a4;
      v5 = a3;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_161;
      }
    }
  }

  v67 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v70 = v9 & *(a4 + 56);
  v65 = (v8 + 63) >> 6;
  v74 = a3 + 56;
LABEL_6:
  while (v70)
  {
    v10 = __clz(__rbit64(v70));
    v11 = (v70 - 1) & v70;
LABEL_13:
    v14 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    sub_222C952FC();
    v70 = v11;
    sub_222C9452C();

    result = sub_222C9534C();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v74 + 8 * (v16 >> 6))) == 0)
    {
      continue;
    }

    v72 = v6;
    v19 = ~v15;
    while (1)
    {
      v20 = *(*(v5 + 48) + v16);
      if (v20 <= 3)
      {
        break;
      }

      if (*(*(v5 + 48) + v16) > 5u)
      {
        if (v20 == 6)
        {
          v25 = 0xD000000000000013;
          v26 = 0x8000000222CA93E0;
          if (v14 > 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v25 = 0xD000000000000012;
          v26 = 0x8000000222CA9400;
          if (v14 > 3)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v20 == 4)
        {
          v25 = 0x7972617262696CLL;
        }

        else
        {
          v25 = 0xD000000000000011;
        }

        if (v20 == 4)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = 0x8000000222CA93C0;
        }

        if (v14 > 3)
        {
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v34 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v34 = 0x6974636572726F63;
        }

        if (v14 == 2)
        {
          v28 = 0xE900000000000064;
        }

        else
        {
          v28 = 0xEA00000000006E6FLL;
        }

        if (v25 == v34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v27 = 0x754D6E69616D6F64;
        v28 = 0xEB00000000636973;
        if (v14)
        {
          v27 = 0x656D7269666E6F63;
          v28 = 0xE900000000000064;
        }

        if (v25 == v27)
        {
          goto LABEL_67;
        }
      }

LABEL_68:
      v35 = sub_222C951FC();

      if (v35)
      {
        goto LABEL_77;
      }

      v16 = (v16 + 1) & v19;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      v5 = a3;
      if ((*(v74 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        v4 = a4;
        v6 = v72;
        goto LABEL_6;
      }
    }

    v21 = 0x6974636572726F63;
    if (v20 == 2)
    {
      v21 = 0x6574616E696D6F6ELL;
    }

    v22 = 0xEA00000000006E6FLL;
    if (v20 == 2)
    {
      v22 = 0xE900000000000064;
    }

    v23 = 0x754D6E69616D6F64;
    if (*(*(v5 + 48) + v16))
    {
      v23 = 0x656D7269666E6F63;
    }

    v24 = 0xEB00000000636973;
    if (*(*(v5 + 48) + v16))
    {
      v24 = 0xE900000000000064;
    }

    if (*(*(v5 + 48) + v16) <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (*(*(v5 + 48) + v16) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v14 <= 3)
    {
      goto LABEL_31;
    }

LABEL_44:
    v29 = 0xD000000000000013;
    if (v14 != 6)
    {
      v29 = 0xD000000000000012;
    }

    v30 = 0x8000000222CA9400;
    if (v14 == 6)
    {
      v30 = 0x8000000222CA93E0;
    }

    v31 = 0x7972617262696CLL;
    if (v14 != 4)
    {
      v31 = 0xD000000000000011;
    }

    v32 = 0x8000000222CA93C0;
    if (v14 == 4)
    {
      v32 = 0xE700000000000000;
    }

    if (v14 <= 5)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (v14 <= 5)
    {
      v28 = v32;
    }

    else
    {
      v28 = v30;
    }

    if (v25 != v33)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (v26 != v28)
    {
      goto LABEL_68;
    }

LABEL_77:
    v69[v17] |= v18;
    v6 = v72 + 1;
    v4 = a4;
    v5 = a3;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_162;
    }
  }

  v12 = v7;
  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= v65)
    {
      goto LABEL_158;
    }

    v13 = *(v67 + 8 * v7);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_222B8A1CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v60 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_51;
  }

  v58 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v56 = (v8 + 63) >> 6;
  v65 = a3 + 56;
  do
  {
LABEL_6:
    if (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
      v13 = a4;
    }

    else
    {
      v14 = v7;
      v13 = a4;
      do
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_102;
        }

        if (v7 >= v56)
        {
LABEL_100:

          return sub_222C10994(v60, a2, v6, v5);
        }

        v15 = *(v58 + 8 * v7);
        ++v14;
      }

      while (!v15);
      v10 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) | (v7 << 6);
    }

    v16 = *(*(v13 + 48) + v12);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v17 = -1 << *(v5 + 32);
    v4 = result & ~v17;
    v18 = v4 >> 6;
    v19 = 1 << v4;
  }

  while (((1 << v4) & *(v65 + 8 * (v4 >> 6))) == 0);
  v61 = v10;
  v63 = v6;
  v20 = ~v17;
  while (1)
  {
    v21 = *(*(v5 + 48) + v4);
    if (v21 <= 1)
    {
      v22 = v21 == 0;
      v23 = *(*(v5 + 48) + v4) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
      v24 = 0xEF6C6C6143656E6FLL;
      v25 = 0xEE00736567617373;
    }

    else
    {
      if (v21 == 2)
      {
        v23 = 0x656D7269666E6F63;
        v26 = 0xE900000000000064;
        if (v16 > 1)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }

      v22 = v21 == 3;
      v23 = v21 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
      v24 = 0xEA00000000006E6FLL;
      v25 = 0xE900000000000064;
    }

    if (v22)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    if (v16 > 1)
    {
LABEL_29:
      v27 = 0x6974636572726F63;
      if (v16 == 3)
      {
        v27 = 0x6574616E696D6F6ELL;
      }

      v28 = 0xEA00000000006E6FLL;
      if (v16 == 3)
      {
        v28 = 0xE900000000000064;
      }

      if (v16 == 2)
      {
        v29 = 0x656D7269666E6F63;
      }

      else
      {
        v29 = v27;
      }

      if (v16 == 2)
      {
        v30 = 0xE900000000000064;
      }

      else
      {
        v30 = v28;
      }

      goto LABEL_42;
    }

LABEL_40:
    v29 = 0x654D6E69616D6F64;
    v30 = 0xEE00736567617373;
    if (v16)
    {
      v29 = 0x68506E69616D6F64;
      v30 = 0xEF6C6C6143656E6FLL;
    }

LABEL_42:
    if (v23 == v29 && v26 == v30)
    {
      break;
    }

    v31 = sub_222C951FC();

    if (v31)
    {
      goto LABEL_48;
    }

    v4 = (v4 + 1) & v20;
    v18 = v4 >> 6;
    v5 = a3;
    v19 = 1 << v4;
    if ((*(v65 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      v10 = v61;
      v6 = v63;
      goto LABEL_6;
    }
  }

LABEL_48:
  v10 = v61;
  v60[v18] |= v19;
  v6 = v63 + 1;
  v5 = a3;
  if (!__OFADD__(v63, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_51:
  v32 = v5 + 56;
  v33 = 1 << *(v5 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v62 = v34 & *(v5 + 56);
  v35 = (v33 + 63) >> 6;
  v66 = v4 + 56;
LABEL_55:
  while (2)
  {
    if (v62)
    {
      v36 = __clz(__rbit64(v62));
      v37 = (v62 - 1) & v62;
LABEL_62:
      v40 = v36 | (v7 << 6);
      v41 = *(*(v5 + 48) + v40);
      sub_222C952FC();
      v62 = v37;
      v59 = v40;
      sub_222C9452C();

      result = sub_222C9534C();
      v42 = -1 << *(v4 + 32);
      v43 = result & ~v42;
      if (((*(v66 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        continue;
      }

      v64 = v6;
      v44 = ~v42;
      while (1)
      {
        v45 = *(*(a4 + 48) + v43);
        if (v45 <= 1)
        {
          v46 = v45 == 0;
          if (*(*(a4 + 48) + v43))
          {
            v47 = 0x68506E69616D6F64;
          }

          else
          {
            v47 = 0x654D6E69616D6F64;
          }

          v48 = 0xEF6C6C6143656E6FLL;
          v49 = 0xEE00736567617373;
        }

        else
        {
          if (v45 == 2)
          {
            v47 = 0x656D7269666E6F63;
            v50 = 0xE900000000000064;
            if (v41 > 1)
            {
              goto LABEL_78;
            }

            goto LABEL_89;
          }

          v46 = v45 == 3;
          if (v45 == 3)
          {
            v47 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v47 = 0x6974636572726F63;
          }

          v48 = 0xEA00000000006E6FLL;
          v49 = 0xE900000000000064;
        }

        if (v46)
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        if (v41 > 1)
        {
LABEL_78:
          v51 = 0x6974636572726F63;
          if (v41 == 3)
          {
            v51 = 0x6574616E696D6F6ELL;
          }

          v52 = 0xEA00000000006E6FLL;
          if (v41 == 3)
          {
            v52 = 0xE900000000000064;
          }

          if (v41 == 2)
          {
            v53 = 0x656D7269666E6F63;
          }

          else
          {
            v53 = v51;
          }

          if (v41 == 2)
          {
            v54 = 0xE900000000000064;
          }

          else
          {
            v54 = v52;
          }

          goto LABEL_91;
        }

LABEL_89:
        v53 = 0x654D6E69616D6F64;
        v54 = 0xEE00736567617373;
        if (v41)
        {
          v53 = 0x68506E69616D6F64;
          v54 = 0xEF6C6C6143656E6FLL;
        }

LABEL_91:
        if (v47 == v53 && v50 == v54)
        {

LABEL_97:
          *(v60 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
          v6 = v64 + 1;
          v5 = a3;
          v4 = a4;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
            goto LABEL_100;
          }

          goto LABEL_55;
        }

        v55 = sub_222C951FC();

        if (v55)
        {
          goto LABEL_97;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v66 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          v5 = a3;
          v6 = v64;
          v4 = a4;
          goto LABEL_55;
        }
      }
    }

    break;
  }

  v38 = v7;
  while (1)
  {
    v7 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v7 >= v35)
    {
      goto LABEL_100;
    }

    v39 = *(v32 + 8 * v7);
    ++v38;
    if (v39)
    {
      v36 = __clz(__rbit64(v39));
      v37 = (v39 - 1) & v39;
      goto LABEL_62;
    }
  }

LABEL_102:
  __break(1u);
  return result;
}

BOOL _s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0()
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v0 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  return v0 == sub_222C9534C();
}

void *sub_222B8AABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_222B79B90(v2, v27);
    v4 = v28;
    v5 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v6 = (*(v5 + 8))(v4, v5);
    sub_222B79B90(v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_222B8CCFC(v6);
    v10 = v3[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v3[3] >= v12)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_222B935D8();
        if (v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_222B8F27C(v12, isUniquelyReferenced_nonNull_native);
      v14 = sub_222B8CCFC(v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v9 = v14;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v3[(v9 >> 6) + 8] |= 1 << v9;
    *(v3[6] + 8 * v9) = v6;
    *(v3[7] + 8 * v9) = MEMORY[0x277D84F90];
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_23;
    }

    v3[2] = v18;

LABEL_12:
    v19 = v3[7];
    v20 = *(v19 + 8 * v9);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 8 * v9) = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_222B4AC80(0, v20[2] + 1, 1, v20);
      *(v19 + 8 * v9) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      *(v19 + 8 * v9) = sub_222B4AC80((v22 > 1), v23 + 1, 1, v20);
    }

    v24 = *(v19 + 8 * v9);
    *(v24 + 16) = v23 + 1;
    sub_222B79B78(v26, (v24 + 48 * v23 + 32));
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v2 += 48;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_222C9378C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B8AD10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_222B8AD58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222C9378C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B8ADEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_222B8AE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v55 = MEMORY[0x277D84F90];
    sub_222B4C848(0, v2, 0);
    v3 = v55;
    v4 = a1 + 32;
    do
    {
      sub_222B79B90(v4, v52);
      v5 = v53;
      v6 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v7 = (*(v6 + 16))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v55 = v3;
      v9 = v3[2];
      v8 = v3[3];
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        sub_222B4C848((v8 > 1), v9 + 1, 1);
        v3 = v55;
      }

      v3[2] = v10;
      v3[v9 + 4] = v7;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (!v10)
    {
LABEL_39:
      v12 = MEMORY[0x277D84F98];
LABEL_40:

      v52[0] = v12;
      sub_222B5A9AC(0xD000000000000013, 0x8000000222CAA190);

      return v52[0];
    }

    v3 = MEMORY[0x277D84F90];
  }

  v11 = 0;
  v47 = v3 + 4;
  v12 = MEMORY[0x277D84F98];
  v45 = v10;
  v46 = v3;
LABEL_11:
  if (v11 < v3[2])
  {
    v13 = v47[v11];
    v48 = v11 + 1;
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v50 = v13;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    v49 = v14;
    if (!v17)
    {
      goto LABEL_16;
    }

    while (1)
    {
LABEL_20:
      v21 = __clz(__rbit64(v17)) | (v19 << 6);
      v22 = (*(v50 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v51 = *(*(v50 + 56) + v21);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v12;
      v27 = sub_222B8C9DC(v24, v23);
      v28 = v12[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v31 = v26;
      if (v12[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v12 = v55;
          if ((v26 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_222B93740();
          v12 = v55;
          if ((v31 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_222B8F56C(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_222B8C9DC(v24, v23);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_44;
        }

        v27 = v32;
        v12 = v55;
        if ((v31 & 1) == 0)
        {
LABEL_27:
          v12[(v27 >> 6) + 8] |= 1 << v27;
          v34 = (v12[6] + 16 * v27);
          *v34 = v24;
          v34[1] = v23;
          *(v12[7] + 8 * v27) = MEMORY[0x277D84F90];
          v35 = v12[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_42;
          }

          v12[2] = v37;
        }
      }

      v38 = v12[7];
      v39 = *(v38 + 8 * v27);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 8 * v27) = v39;
      if ((v40 & 1) == 0)
      {
        v43 = *(v39 + 2);

        *(v38 + 8 * v27) = sub_222B4AE24(0, v43 + 1, 1, v39);

        v39 = *(v38 + 8 * v27);
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = sub_222B4AE24((v41 > 1), v42 + 1, 1, v39);
        *(v38 + 8 * v27) = v39;
      }

      v17 &= v17 - 1;
      *(v39 + 2) = v42 + 1;
      *(*(v38 + 8 * v27) + v42 + 32) = v51;

      v14 = v49;
      if (!v17)
      {
        while (1)
        {
LABEL_16:
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v20 >= v18)
          {
            break;
          }

          v17 = *(v14 + 8 * v20);
          ++v19;
          if (v17)
          {
            v19 = v20;
            goto LABEL_20;
          }
        }

        v3 = v46;
        v11 = v48;
        if (v48 == v45)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B8B210(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = a3 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      sub_222B79B90(v6, v20);
      v8 = v21;
      v9 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v10 = (*(v9 + 32))(v8, v9);
      if (*(v10 + 16) && (v11 = sub_222B8C9DC(v5, a2), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_222B4ACCC(0, v7[2] + 1, 1, v7);
          v7 = result;
        }

        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          result = sub_222B4ACCC((v14 > 1), v15 + 1, 1, v7);
          v7 = result;
        }

        v7[2] = v15 + 1;
        v7[v15 + 4] = v13;
      }

      else
      {

        result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
      }

      v6 += 48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v20[0] = MEMORY[0x277D84FA0];
  v16 = v7[2];
  if (v16)
  {
    v17 = 0;
    while (v17 < v7[2])
    {
      v18 = v17 + 1;

      result = sub_222C61E08(v19);
      v17 = v18;
      if (v16 == v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return sub_222C701CC(&unk_283607908, v20[0]);
  }

  return result;
}

uint64_t sub_222B8B3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222B8B444()
{
  v1 = type metadata accessor for MediaFeedbackGroundTruth(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_222C97C40;
      v4 = (v0 + *(v1 + 28));
      v23 = *(v4 + 24);
      v5 = v23;
      v6 = v4[2];
      v21 = v4[1];
      v22 = v6;
      v20 = *v4;
      v7 = v20;
      *(inited + 48) = v21;
      *(inited + 64) = v6;
      *(inited + 80) = v5;
      *(inited + 32) = v7;
      v8 = -32508;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_222C97C40;
      v13 = (v0 + *(v1 + 28));
      v23 = *(v13 + 24);
      v14 = v23;
      v15 = v13[2];
      v21 = v13[1];
      v22 = v15;
      v20 = *v13;
      v16 = v20;
      *(inited + 48) = v21;
      *(inited + 64) = v15;
      *(inited + 80) = v14;
      *(inited + 32) = v16;
      v8 = -32250;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AD0, &unk_222C9A230);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_222C97C40;
    v9 = (v0 + *(v1 + 28));
    v23 = *(v9 + 24);
    v10 = v23;
    v11 = v9[2];
    v21 = v9[1];
    v22 = v11;
    v20 = *v9;
    v12 = v20;
    *(inited + 48) = v21;
    *(inited + 64) = v11;
    *(inited + 80) = v10;
    *(inited + 32) = v12;
    v8 = -32761;
  }

  *(inited + 82) = v8;
  sub_222B554C0(&v20, v19);
  v17 = sub_222B62CD4(v3);
  swift_setDeallocating();
  sub_222B8B6C4(v3 + 32);
  return v17;
}

uint64_t sub_222B8B5D8(uint64_t a1)
{
  result = sub_222B8B678(&qword_27D025AC0, type metadata accessor for MediaFeedbackGroundTruth, &unk_222C9A214);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222B8B678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222B8B6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025430, &qword_222C98650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TurnSlotValue.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Bool __swiftcall TurnSlotValue.aboveSimilarityThreshold(_:threshold:ignoreCase:)(SiriPrivateLearningInference::TurnSlotValue _, Swift::Double threshold, Swift::Bool ignoreCase)
{
  if (!*(v3 + 8))
  {
    return 0;
  }

  v4 = *(_.stringValue.value._countAndFlagsBits + 8);
  if (!v4)
  {
    return 0;
  }

  v6 = *_.stringValue.value._countAndFlagsBits;
  if (_.stringValue.value._object)
  {
    sub_222C944FC();
    v6 = sub_222C944FC();
    v4 = v7;
  }

  else
  {
  }

  v8._countAndFlagsBits = v6;
  v8._object = v4;
  v13 = String.scoreRatcliffObershelp(between:)(v8);
  v9 = *&v13.is_nil;
  v11 = v10;

  return (v11 & 1) == 0 && v9 >= threshold;
}

Swift::Double_optional __swiftcall TurnSlotValue.similarityScore(_:)(SiriPrivateLearningInference::TurnSlotValue a1)
{
  a1.stringValue.value._object = *(a1.stringValue.value._countAndFlagsBits + 8);
  if (*(v1 + 8))
  {
    v2 = a1.stringValue.value._object == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    result.is_nil = 0;
  }

  else
  {
    a1.stringValue.value._countAndFlagsBits = *a1.stringValue.value._countAndFlagsBits;
    return String.scoreRatcliffObershelp(between:)(a1.stringValue.value);
  }

  return result;
}

uint64_t static TurnSlotValue.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC();
    }
  }

  return result;
}

uint64_t TurnSlotValue.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000019;
  }

  v2 = *v0;
  sub_222C94D1C();

  MEMORY[0x223DC9330](v2, v1);
  MEMORY[0x223DC9330](10530, 0xE200000000000000);
  return 0x746F6C536E727554;
}

uint64_t sub_222B8B980(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC();
    }
  }

  return result;
}

uint64_t sub_222B8B9D0()
{
  type metadata accessor for ReformulationSpecializationClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B78, &qword_222C9A4E8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025AD8 = 91;
  unk_27D025AE0 = 0xE100000000000000;
  return result;
}

void __swiftcall SlotsClassification.init(_:_:)(SiriPrivateLearningInference::SlotsClassification *__return_ptr retstr, Swift::OpaquePointer a2, Swift::OpaquePointer a3)
{
  if (qword_280FDFE78 != -1)
  {
LABEL_105:
    swift_once();
  }

  v6 = sub_222C9431C();
  __swift_project_value_buffer(v6, qword_280FE2340);

  v7 = sub_222C942FC();
  rawValue = a2._rawValue;
  v9 = sub_222C94A5C();
  v128 = a3._rawValue;

  v130 = rawValue;

  v122 = retstr;
  if (!os_log_type_enabled(v7, v9))
  {
    goto LABEL_7;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  p_isa = v11;
  *v10 = 136315650;
  if (qword_27D0246B0 != -1)
  {
LABEL_107:
    swift_once();
  }

  *(v10 + 4) = sub_222B437C0(qword_27D025AD8, unk_27D025AE0, &p_isa);
  *(v10 + 12) = 2080;
  v12 = v130;
  v13 = sub_222C9438C();
  v15 = sub_222B437C0(v13, v14, &p_isa);

  *(v10 + 14) = v15;
  *(v10 + 22) = 2080;
  v16 = sub_222C9438C();
  v18 = sub_222B437C0(v16, v17, &p_isa);

  *(v10 + 24) = v18;
  _os_log_impl(&dword_222B39000, v7, v9, "%s Comparing %s to %s", v10, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x223DCA8C0](v11, -1, -1);
  MEMORY[0x223DCA8C0](v10, -1, -1);

  v19 = v130[2];
  if (v19)
  {
    while (1)
    {
      v7 = sub_222B8C8D4(v19, 0);
      v20 = sub_222B94D58(&p_isa, &v7[4].isa, v19, v12);
      v21 = p_isa;

      sub_222B504E8(v21);
      if (v20 == v19)
      {
        break;
      }

      __break(1u);
LABEL_7:

      v12 = v130;
      v19 = v130[2];
      if (!v19)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = MEMORY[0x277D84F90];
  }

  p_isa = &v7->isa;
  retstr = v128;

  sub_222B49738(v22);
  v23 = p_isa;
  p_isa = MEMORY[0x277D84FA0];
  v24 = sub_222B95148(v23);

  v25 = MEMORY[0x277D84F90];
  v129 = sub_222B632F8(MEMORY[0x277D84F90]);
  v26 = sub_222B632F8(v25);
  v126 = sub_222B6340C(v25);
  v123 = sub_222B6340C(v25);
  v127 = sub_222B6340C(v25);
  v133 = *(v24 + 16);
  if (!v133)
  {
LABEL_96:

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v123;
    sub_222B952A8(v127, sub_222B95038, 0, isUniquelyReferenced_nonNull_native, &p_isa);

    v118 = p_isa;
    v119 = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v126;
    sub_222B952A8(v123, sub_222B95038, 0, v119, &p_isa);

    swift_bridgeObjectRelease_n();
    v120 = p_isa;
    v122->initialTurn._rawValue = v130;
    v122->followOnTurn._rawValue = retstr;
    v122->added._rawValue = v129;
    v122->removed._rawValue = v26;
    v122->identical._rawValue = v126;
    v122->similar._rawValue = v123;
    v122->dissimilar._rawValue = v127;
    v122->match._rawValue = v120;
    v122->changed._rawValue = v118;
    return;
  }

  a3._rawValue = 0;
  v27 = (v24 + 40);
  a2._rawValue = v130;
  v132 = v24;
  while (1)
  {
    if (a3._rawValue >= *(v24 + 16))
    {
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
      goto LABEL_105;
    }

    v31 = *(v27 - 1);
    v30 = *v27;
    v32 = *(a2._rawValue + 2);

    if (!v32)
    {
      break;
    }

    v33 = sub_222B8C9DC(v31, v30);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = (*(a2._rawValue + 7) + 16 * v33);
    v11 = v35[1];
    v134 = *v35;

    if (retstr->added._rawValue)
    {
      goto LABEL_21;
    }

LABEL_28:
    if (v11 == 1)
    {
      v47 = sub_222B8C9DC(v31, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        p_isa = v26;
        v24 = v132;
        if (!v50)
        {
          sub_222B93A70();
          v26 = p_isa;
        }

        sub_222B926E8(v47, v26);
        sub_222B8AD10(v134, 1);
        sub_222B8AD10(0, 1);
        goto LABEL_14;
      }

      v28 = v134;
      v29 = 1;
      goto LABEL_12;
    }

    a2._rawValue = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v26;
    v51 = sub_222B8C9DC(v31, v30);
    v53 = v26[2];
    v54 = (v52 & 1) == 0;
    v44 = __OFADD__(v53, v54);
    v55 = v53 + v54;
    if (v44)
    {
      goto LABEL_98;
    }

    v56 = v52;
    if (v26[3] >= v55)
    {
      if ((a2._rawValue & 1) == 0)
      {
        v99 = v51;
        sub_222B93A70();
        v51 = v99;
        a2._rawValue = v130;
        if ((v56 & 1) == 0)
        {
LABEL_81:
          v26 = p_isa;
          p_isa[(v51 >> 6) + 8] |= 1 << v51;
          v100 = (v26[6] + 16 * v51);
          *v100 = v31;
          v100[1] = v30;
          v101 = (v26[7] + 16 * v51);
          *v101 = v134;
          v101[1] = v11;
          sub_222B8AD10(v134, v11);
          sub_222B8AD10(0, 1);
          v102 = v26[2];
          v44 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v44)
          {
            goto LABEL_99;
          }

          v26[2] = v103;
          goto LABEL_13;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_222B8FB14(v55, a2._rawValue);
      v51 = sub_222B8C9DC(v31, v30);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_110;
      }
    }

    a2._rawValue = v130;
    if ((v56 & 1) == 0)
    {
      goto LABEL_81;
    }

LABEL_39:
    v58 = v51;

    v26 = p_isa;
    v59 = (p_isa[7] + 16 * v58);
    *v59 = v134;
    v59[1] = v11;

    v28 = v134;
    v29 = v11;
LABEL_12:
    sub_222B8AD10(v28, v29);
    sub_222B8AD10(0, 1);
LABEL_13:
    v24 = v132;
LABEL_14:
    ++a3._rawValue;
    v27 += 2;
    if (v133 == a3._rawValue)
    {
      goto LABEL_96;
    }
  }

  v134 = 0;
  v11 = 1;
  if (!retstr->added._rawValue)
  {
    goto LABEL_28;
  }

LABEL_21:
  v36 = sub_222B8C9DC(v31, v30);
  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = *(retstr->match._rawValue + v36);
  v131 = v38;
  v7 = *(retstr->match._rawValue + 2 * v36 + 1);
  if (!v11)
  {
    if (!*(&v38 + 1))
    {
      goto LABEL_48;
    }

    swift_bridgeObjectRetain_n();
    goto LABEL_60;
  }

  if (v11 == 1)
  {
    swift_bridgeObjectRetain_n();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v129;
    v40 = sub_222B8C9DC(v31, v30);
    v42 = *(v129 + 16);
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_101;
    }

    a2._rawValue = v41;
    if (*(v129 + 24) < v45)
    {
      sub_222B8FB14(v45, v39);
      v40 = sub_222B8C9DC(v31, v30);
      if ((a2._rawValue & 1) != (v46 & 1))
      {
        goto LABEL_110;
      }

LABEL_53:
      if (a2._rawValue)
      {
        goto LABEL_54;
      }

LABEL_87:
      v10 = p_isa;
      p_isa[(v40 >> 6) + 8] |= 1 << v40;
      v109 = (*(v10 + 48) + 16 * v40);
      *v109 = v31;
      v109[1] = v30;
      *(*(v10 + 56) + 16 * v40) = v131;
      sub_222B8AD10(v134, 1);
      sub_222B8AD10(v131, v7);
      v110 = *(v10 + 16);
      v44 = __OFADD__(v110, 1);
      v96 = v110 + 1;
      if (v44)
      {
        goto LABEL_104;
      }

      v129 = v10;
LABEL_92:
      *(v10 + 16) = v96;
LABEL_93:
      a2._rawValue = v130;
      goto LABEL_13;
    }

    if (v39)
    {
      goto LABEL_53;
    }

    v108 = v40;
    sub_222B93A70();
    v40 = v108;
    retstr = v128;
    if ((a2._rawValue & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_54:
    v67 = v40;

    v129 = p_isa;
    *(p_isa[7] + 16 * v67) = v131;

    v68 = v134;
    v69 = 1;
LABEL_58:
    sub_222B8AD10(v68, v69);
    v72 = v131;
LABEL_68:
    sub_222B8AD10(v72, v7);
    goto LABEL_93;
  }

  if (!*(&v38 + 1))
  {
    sub_222B8ADEC(v134, v11);
    goto LABEL_60;
  }

  a2._rawValue = v38;
  v60 = v134 == v38 && v11 == v7;
  if (v60 || (sub_222C951FC() & 1) != 0)
  {
LABEL_48:

    sub_222B8ADEC(v134, v11);

    retstr = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v126;
    v61 = sub_222B8C9DC(v31, v30);
    v63 = *(v126 + 16);
    v64 = (v62 & 1) == 0;
    v44 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (v44)
    {
      goto LABEL_102;
    }

    v9 = v62;
    if (*(v126 + 24) >= v65)
    {
      if (retstr)
      {
        goto LABEL_56;
      }

      v111 = v61;
      sub_222B938D0();
      v61 = v111;
      retstr = v128;
      if (v9)
      {
LABEL_57:
        v70 = v61;

        v126 = p_isa;
        v71 = p_isa[7] + 32 * v70;
        *v71 = v134;
        *(v71 + 8) = v11;
        *(v71 + 16) = v131;

        v68 = v134;
        v69 = v11;
        goto LABEL_58;
      }
    }

    else
    {
      sub_222B8F834(v65, retstr);
      v61 = sub_222B8C9DC(v31, v30);
      if ((v9 & 1) != (v66 & 1))
      {
        goto LABEL_110;
      }

LABEL_56:
      retstr = v128;
      if (v9)
      {
        goto LABEL_57;
      }
    }

    v10 = p_isa;
    p_isa[(v61 >> 6) + 8] |= 1 << v61;
    v112 = (*(v10 + 48) + 16 * v61);
    *v112 = v31;
    v112[1] = v30;
    v113 = *(v10 + 56) + 32 * v61;
    *v113 = v134;
    *(v113 + 8) = v11;
    *(v113 + 16) = v131;
    sub_222B8AD10(v134, v11);
    sub_222B8AD10(v131, v7);
    v114 = *(v10 + 16);
    v44 = __OFADD__(v114, 1);
    v96 = v114 + 1;
    if (v44)
    {
      __break(1u);
      goto LABEL_107;
    }

    v126 = v10;
    goto LABEL_92;
  }

  sub_222B8ADEC(v134, v11);

  sub_222B8ADEC(v134, v11);

  v82._countAndFlagsBits = v131;
  v82._object = v7;
  v136 = String.scoreRatcliffObershelp(between:)(v82);
  v121 = *&v136.is_nil;
  v84 = v83;
  sub_222B8AD10(v134, v11);
  if ((v84 & 1) != 0 || v121 < 0.75)
  {
LABEL_60:
    retstr = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v127;
    v73 = sub_222B8C9DC(v31, v30);
    v75 = *(v127 + 16);
    v76 = (v74 & 1) == 0;
    v44 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (v44)
    {
      goto LABEL_100;
    }

    a2._rawValue = v74;
    if (*(v127 + 24) >= v77)
    {
      if ((retstr & 1) == 0)
      {
        v104 = v73;
        sub_222B938D0();
        v73 = v104;
        retstr = v128;
        if (a2._rawValue)
        {
          goto LABEL_66;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_222B8F834(v77, retstr);
      v73 = sub_222B8C9DC(v31, v30);
      if ((a2._rawValue & 1) != (v78 & 1))
      {
        goto LABEL_110;
      }
    }

    retstr = v128;
    if (a2._rawValue)
    {
LABEL_66:
      v79 = v73;

      v127 = p_isa;
      v80 = p_isa[7] + 32 * v79;
      v81 = v134;
      *v80 = v134;
      *(v80 + 8) = v11;
      a2._rawValue = v131;
      *(v80 + 16) = v131;
      goto LABEL_67;
    }

LABEL_84:
    v10 = p_isa;
    p_isa[(v73 >> 6) + 8] |= 1 << v73;
    v105 = (*(v10 + 48) + 16 * v73);
    *v105 = v31;
    v105[1] = v30;
    v106 = *(v10 + 56) + 32 * v73;
    *v106 = v134;
    *(v106 + 8) = v11;
    *(v106 + 16) = v131;
    sub_222B8AD10(v134, v11);
    sub_222B8AD10(v131, v7);
    v107 = *(v10 + 16);
    v44 = __OFADD__(v107, 1);
    v96 = v107 + 1;
    if (v44)
    {
      goto LABEL_103;
    }

    v127 = v10;
    goto LABEL_92;
  }

  v85 = swift_isUniquelyReferenced_nonNull_native();
  p_isa = v123;
  v87 = sub_222B8C9DC(v31, v30);
  v88 = *(v123 + 16);
  v89 = (v86 & 1) == 0;
  v90 = v88 + v89;
  if (!__OFADD__(v88, v89))
  {
    if (*(v123 + 24) >= v90)
    {
      if (v85)
      {
        retstr = v128;
        if (v86)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v125 = v87;
        v115 = v86;
        sub_222B938D0();
        v116 = v115;
        v87 = v125;
        retstr = v128;
        if (v116)
        {
          goto LABEL_79;
        }
      }

LABEL_75:
      v10 = p_isa;
      p_isa[(v87 >> 6) + 8] |= 1 << v87;
      v93 = (*(v10 + 48) + 16 * v87);
      *v93 = v31;
      v93[1] = v30;
      v94 = *(v10 + 56) + 32 * v87;
      *v94 = v134;
      *(v94 + 8) = v11;
      *(v94 + 16) = v131;
      sub_222B8AD10(v134, v11);
      sub_222B8AD10(v131, v7);
      v95 = *(v10 + 16);
      v44 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v44)
      {
        goto LABEL_109;
      }

      v123 = v10;
      goto LABEL_92;
    }

    v124 = v86;
    sub_222B8F834(v90, v85);
    v91 = sub_222B8C9DC(v31, v30);
    if ((v124 & 1) != (v92 & 1))
    {
      goto LABEL_110;
    }

    v87 = v91;
    retstr = v128;
    if ((v124 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_79:
    v97 = v87;

    v123 = p_isa;
    v98 = p_isa[7] + 32 * v97;
    v81 = v134;
    *v98 = v134;
    *(v98 + 8) = v11;
    *(v98 + 16) = v131;
LABEL_67:

    sub_222B8AD10(v81, v11);
    v72 = a2._rawValue;
    goto LABEL_68;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  sub_222C9526C();
  __break(1u);

  __break(1u);

  __break(1u);
}

SiriPrivateLearningInference::SlotsClassification::TurnSlotValuePair __swiftcall SlotsClassification.TurnSlotValuePair.init(_:_:)(SiriPrivateLearningInference::TurnSlotValue a1, SiriPrivateLearningInference::TurnSlotValue a2)
{
  v3 = *a1.stringValue.value._object;
  *v2 = *a1.stringValue.value._countAndFlagsBits;
  v2[1] = v3;
  result.followOn = a2;
  result.initial = a1;
  return result;
}

uint64_t SlotsClassification.TurnSlotValuePair.initial.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SlotsClassification.TurnSlotValuePair.followOn.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *sub_222B8C8D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_222B8C958(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C00, &qword_222C9A400);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

unint64_t sub_222B8C9DC(uint64_t a1, uint64_t a2)
{
  sub_222C952FC();
  sub_222C9452C();
  v4 = sub_222C9534C();

  return sub_222B8D0C4(a1, a2, v4);
}

unint64_t sub_222B8CA54(uint64_t a1)
{
  sub_222C9367C();
  v2 = MEMORY[0x277CC95F0];
  sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_222C9440C();
  return sub_222B8DC60(a1, v3, MEMORY[0x277CC95F0], &qword_280FE02A0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_222B8CB28(uint64_t *a1)
{
  sub_222C952FC();
  sub_222C9452C();
  v2 = sub_222C9534C();

  return sub_222B8D17C(a1, v2);
}

unint64_t sub_222B8CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222C952FC();
  sub_222C9452C();
  v8 = sub_222C9534C();

  return sub_222B8D2A8(a1, a2, a3, a4, v8);
}

unint64_t sub_222B8CC2C(uint64_t a1)
{
  sub_222C952FC();
  sub_222C0A220(a1, v5);
  if (*(&v5[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v5[7] = v5[2];
    v5[8] = v5[3];
    v5[9] = v5[4];
    v5[5] = v5[0];
    v5[6] = v5[1];
    sub_222C9531C();
    sub_222BEEE64(v4);
    sub_222B4FCD4(v5, &qword_27D0256C8, &unk_222C98AB0);
  }

  v2 = sub_222C9534C();
  return sub_222B8D3B4(a1, v2);
}

unint64_t sub_222B8CCFC(uint64_t a1)
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v2 = sub_222C9534C();

  return sub_222B8DADC(a1, v2);
}

unint64_t sub_222B8CDAC(uint64_t a1)
{
  v1 = a1;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  v2 = sub_222C9534C();
  return sub_222B8E1BC(v1, v2);
}

unint64_t sub_222B8CE14(uint64_t a1)
{
  sub_222C942DC();
  v2 = MEMORY[0x277D5FD08];
  sub_222B959C0(&qword_280FE03B8, MEMORY[0x277D5FD08], MEMORY[0x277D5FD10]);
  v3 = sub_222C9440C();
  return sub_222B8DC60(a1, v3, MEMORY[0x277D5FD08], &qword_27D025B88, v2, MEMORY[0x277D5FD18]);
}

unint64_t sub_222B8CEE8(uint64_t a1)
{
  v1 = a1;
  sub_222C952FC();
  MEMORY[0x223DCA0B0]((v1 >> 7) & 1);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  v2 = sub_222C9534C();

  return sub_222B8DE00(v1, v2);
}

unint64_t sub_222B8CF60(uint64_t a1)
{
  v1 = a1;
  sub_222C952FC();
  sub_222C9532C();
  v2 = sub_222C9534C();

  return sub_222B8DE8C(v1, v2);
}

unint64_t sub_222B8CFCC(uint64_t a1, unint64_t a2)
{
  sub_222C952FC();
  switch(a2)
  {
    case 0uLL:
      v4 = 0;
      goto LABEL_7;
    case 1uLL:
      v4 = 1;
      goto LABEL_7;
    case 2uLL:
      v4 = 2;
LABEL_7:
      MEMORY[0x223DCA0B0](v4);
      goto LABEL_9;
  }

  MEMORY[0x223DCA0B0](3);
  sub_222C9452C();
LABEL_9:
  v5 = sub_222C9534C();

  return sub_222B8DEF8(a1, a2, v5);
}

unint64_t sub_222B8D080(uint64_t a1)
{
  v2 = sub_222C94C9C();

  return sub_222B8E0F4(a1, v2);
}

unint64_t sub_222B8D0C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_222C951FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8D17C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      v19[0] = *v7;
      v20 = v10;
      v19[1] = v9;
      v19[2] = v8;
      v11 = *(v7 + 16);
      v15 = *v7;
      v16 = v11;
      v17 = *(v7 + 32);
      v18 = *(v7 + 48);
      sub_222B554C0(v19, v14);
      v12 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v15, v23);
      v21[0] = v15;
      v21[1] = v16;
      v21[2] = v17;
      v22 = v18;
      sub_222B55A80(v21);
      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_222C951FC() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_222C951FC() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_222B8D3B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v54 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v53 = ~v3;
  while (1)
  {

    sub_222C0A220(v5, &v86);
    sub_222C0A220(a1, &v95);
    v6 = v87;
    v58 = v88;
    v59 = v86;
    v60 = v89;
    v57 = v90;
    v7 = v92;
    v56 = v91;
    v8 = v93;
    v9 = v94;
    v11 = v95;
    v10 = v96;
    v82 = v97;
    v83 = v98;
    v84 = v99;
    v85 = v100;
    if (v87 == 1)
    {

      if (v10 == 1)
      {
        v70 = v59;
        v71 = 1;
        *&v72 = v58;
        *(&v72 + 1) = v60;
        v73 = v57;
        *&v74 = v56;
        *(&v74 + 1) = v7;
        *&v75 = v8;
        *(&v75 + 1) = v9;
        sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
        return v4;
      }

      goto LABEL_12;
    }

    if (v96 == 1)
    {

LABEL_12:
      v70 = v59;
      v71 = v6;
      *&v72 = v58;
      *(&v72 + 1) = v60;
      v73 = v57;
      *&v74 = v56;
      *(&v74 + 1) = v7;
      *&v75 = v8;
      *(&v75 + 1) = v9;
      v76 = v11;
      v77 = v10;
      v78 = v82;
      v79 = v83;
      v80 = v84;
      v81 = v85;
      v12 = &v70;
      v13 = &qword_27D0256D0;
      v14 = &unk_222C9A490;
LABEL_13:
      sub_222B4FCD4(v12, v13, v14);
      goto LABEL_6;
    }

    v70 = v95;
    v71 = v96;
    v74 = v99;
    v75 = v100;
    v72 = v97;
    v73 = v98;
    v16 = *(&v97 + 1);
    v15 = v97;
    v17 = *(&v98 + 1);
    v18 = v98;
    v19 = *(&v99 + 1);
    v20 = v99;
    v22 = *(&v100 + 1);
    v21 = v100;
    if (v87)
    {
      break;
    }

    if (!v96)
    {
      goto LABEL_19;
    }

LABEL_4:
    sub_222B958F4(&v86, &v61);
    sub_222B958F4(&v95, &v61);

    sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v86, &qword_27D0256C8, &unk_222C98AB0);
    v61 = v59;
    v62 = v6;
    v63 = v58;
    v64 = v60;
    v65 = v57;
    v66 = v56;
    v67 = v7;
    v68 = v8;
    v69 = v9;
LABEL_5:
    sub_222B4FCD4(&v61, &qword_27D0256C8, &unk_222C98AB0);
LABEL_6:
    v4 = (v4 + 1) & v53;
    if (((*(v54 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if (!v96)
  {
    goto LABEL_4;
  }

  if (v86 != v95 || v87 != v96)
  {
    v47 = *(&v75 + 1);
    v49 = v75;
    v45 = *(&v74 + 1);
    v46 = *(&v98 + 1);
    v23 = v74;
    v24 = v98;
    v44 = v97;
    v25 = sub_222C951FC();
    v15 = v44;
    v19 = v45;
    v18 = v24;
    v17 = v46;
    v22 = v47;
    v20 = v23;
    v21 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_19:
  v52 = v9;
  if (!v60)
  {
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (!v16 || (v58 != v15 || v60 != v16) && (v48 = v22, v50 = v21, v26 = v19, v27 = v20, v28 = v17, v29 = v18, v30 = sub_222C951FC(), v18 = v29, v17 = v28, v20 = v27, v19 = v26, v22 = v48, v21 = v50, (v30 & 1) == 0))
  {
LABEL_30:
    sub_222B958F4(&v86, &v61);
    sub_222B958F4(&v95, &v61);

    sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v86, &qword_27D0256C8, &unk_222C98AB0);
    v61 = v59;
    v62 = v6;
    v63 = v58;
    v64 = v60;
    v65 = v57;
    v66 = v56;
    v67 = v7;
    v68 = v8;
    v69 = v52;
    goto LABEL_5;
  }

LABEL_24:
  v31 = v8;
  if (!*(&v57 + 1))
  {
    v32 = v7;
    if (!v17)
    {
      goto LABEL_33;
    }

    sub_222B958F4(&v86, &v61);
    sub_222B958F4(&v95, &v61);

    sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v86, &qword_27D0256C8, &unk_222C98AB0);
    v61 = v59;
    v62 = v6;
    v63 = v58;
    v64 = v60;
    v65 = v57;
LABEL_49:
    v66 = v56;
    v67 = v32;
    v68 = v31;
    v69 = v52;
    v12 = &v61;
    v13 = &qword_27D0256C8;
    v14 = &unk_222C98AB0;
    goto LABEL_13;
  }

  v32 = v7;
  if (!v17)
  {
    goto LABEL_46;
  }

  if (v57 != __PAIR128__(v17, v18))
  {
    v51 = v21;
    v33 = v22;
    v34 = v19;
    v35 = v20;
    v36 = sub_222C951FC();
    v20 = v35;
    v19 = v34;
    v31 = v8;
    v21 = v51;
    v22 = v33;
    if ((v36 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_33:
  if (v32)
  {
    if (!v19 || (v56 != v20 || v32 != v19) && (v37 = v21, v38 = v22, v39 = sub_222C951FC(), v21 = v37, v22 = v38, (v39 & 1) == 0))
    {
LABEL_46:
      sub_222B958F4(&v86, &v61);
      sub_222B958F4(&v95, &v61);

      sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
      v41 = &v86;
      goto LABEL_47;
    }
  }

  else if (v19)
  {
    goto LABEL_46;
  }

  if (!v52)
  {
    v42 = v22;

    v41 = &v70;
    if (!v42)
    {
      goto LABEL_54;
    }

LABEL_47:
    sub_222B4FCD4(v41, &qword_27D0256C8, &unk_222C98AB0);
LABEL_48:
    v61 = v59;
    v62 = v6;
    v63 = v58;
    v64 = v60;
    v65 = v57;
    goto LABEL_49;
  }

  if (!v22)
  {
    goto LABEL_46;
  }

  if (v31 != v21 || v52 != v22)
  {
    v40 = sub_222C951FC();
    sub_222B958F4(&v86, &v61);
    sub_222B958F4(&v95, &v61);

    sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v86, &qword_27D0256C8, &unk_222C98AB0);
    if (v40)
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  sub_222B958F4(&v86, &v61);
  sub_222B958F4(&v95, &v61);

  sub_222B4FCD4(&v70, &qword_27D0256C8, &unk_222C98AB0);
  sub_222B4FCD4(&v95, &qword_27D0256C8, &unk_222C98AB0);
  v41 = &v86;
LABEL_54:
  sub_222B4FCD4(v41, &qword_27D0256C8, &unk_222C98AB0);
LABEL_55:
  v61 = v59;
  v62 = v6;
  v63 = v58;
  v64 = v60;
  v65 = v57;
  v66 = v56;
  v67 = v32;
  v68 = v31;
  v69 = v52;
  sub_222B4FCD4(&v61, &qword_27D0256C8, &unk_222C98AB0);
  return v4;
}

unint64_t sub_222B8DADC(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v7 = sub_222C9534C();
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v8 = sub_222C9534C();

      if (v7 == v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222B8DC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_222B959C0(v24, v25, v26);
      v20 = sub_222C9447C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_222B8DE00(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (*(v7 + result) < 0)
      {
        if ((a1 & 0x80) != 0 && ((v8 ^ a1) & 0x7F) == 0)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222B8DE8C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222B8DEF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (!a2)
        {
          v15 = *v9;
          v16 = 0;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 0;
        goto LABEL_14;
      case 1uLL:
        if (a2 == 1)
        {
          v15 = *v9;
          v16 = 1;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 1;
        goto LABEL_14;
      case 2uLL:
        if (a2 == 2)
        {
          v15 = *v9;
          v16 = 2;
          goto LABEL_28;
        }

        sub_222B95830(a1, a2);
        v12 = 2;
        goto LABEL_14;
    }

    if (a2 < 3)
    {
      sub_222B95830(a1, a2);
      sub_222B95830(v10, v11);
      v12 = v11;
LABEL_14:
      sub_222B5B328(v10, v12);
      sub_222B5B328(a1, a2);
      goto LABEL_15;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = sub_222C951FC();
    sub_222B95830(a1, a2);
    sub_222B95830(v10, v11);
    sub_222B5B328(v10, v11);
    sub_222B5B328(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_15:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_222B95830(a1, a2);
  sub_222B95830(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_28:
  sub_222B5B328(v15, v16);
  sub_222B5B328(a1, a2);
  return v5;
}

unint64_t sub_222B8E0F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_222B95844(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DC9A50](v9, a1);
      sub_222B958A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_222B8E1BC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_222B8E22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  v34 = v4;
  result = sub_222C94F7C();
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

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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

uint64_t sub_222B8E524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
  v41 = v4;
  result = sub_222C94F7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      if (v41)
      {
        v24 = *v23;
        v25 = *(v23 + 8);
        v42 = *(v23 + 16);
        v43 = *(v23 + 32);
        v26 = *(v23 + 48);
        v27 = (v22 + 2 * v21);
        v46 = *v27;
        v44 = *(v23 + 49);
        v45 = v27[1];
      }

      else
      {
        v28 = *v23;
        v29 = *(v23 + 16);
        v30 = *(v23 + 32);
        v48 = *(v23 + 48);
        v47[1] = v29;
        v47[2] = v30;
        v47[0] = v28;
        v31 = (v22 + 2 * v21);
        v45 = v31[1];
        v46 = *v31;
        v44 = HIBYTE(v48);
        v26 = v48;
        v42 = v29;
        v43 = v30;
        v25 = *(&v28 + 1);
        v24 = v28;
        sub_222B554C0(v47, v49);
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v42;
      *(v16 + 32) = v43;
      *(v16 + 48) = v26;
      *(v16 + 49) = v44;
      v17 = (*(v7 + 56) + 2 * v15);
      *v17 = v46;
      v17[1] = v45;
      ++*(v7 + 16);
      v5 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_222B8E85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
  v37 = v4;
  result = sub_222C94F7C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v40 = v23[2];
      v27 = (v22 + 4 * v21);
      v41 = *v27;
      v38 = *(v27 + 1);
      v39 = v27[3];
      if ((v37 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v25;
      v16[2] = v40;
      v16[3] = v26;
      v17 = *(v7 + 56) + 4 * v15;
      *v17 = v41;
      *(v17 + 3) = (v38 | (v39 << 16)) >> 16;
      *(v17 + 1) = v38;
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

uint64_t sub_222B8EB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_222C94F7C();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_222C952FC();
      MEMORY[0x223DCA0B0](v22);
      result = sub_222C9534C();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_222B8EE30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B60, &qword_222C9A4D0);
  v45 = v4;
  result = sub_222C94F7C();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_222B8F290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_222C94F7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      result = sub_222C9534C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v18 = v25;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v18 = v25;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v24;
      *(*(v9 + 56) + 8 * v17) = v18;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero(v11, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v9;
  return result;
}

uint64_t sub_222B8F580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
  v34 = v4;
  result = sub_222C94F7C();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_222B8F834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
  v36 = v4;
  result = sub_222C94F7C();
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
      v37 = *v25;
      v38 = *(v25 + 8);
      v26 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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
      *v17 = v37;
      *(v17 + 8) = v38;
      *(v17 + 24) = v26;
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

uint64_t sub_222B8FB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
  v33 = v4;
  result = sub_222C94F7C();
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
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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

uint64_t sub_222B8FDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B08, &unk_222C9A430);
  v30 = v4;
  result = sub_222C94F7C();
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

      sub_222C952FC();
      MEMORY[0x223DCA0B0](v20 >> 7);
      MEMORY[0x223DCA0B0](v20 & 0x7F);
      result = sub_222C9534C();
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

uint64_t sub_222B9007C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_222C94F7C();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_222B9046C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B70, &qword_222C9A4E0);
  v43 = v4;
  result = sub_222C94F7C();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = (*(v9 + 56) + 2 * v25);
      v29 = v28[1];
      v45 = *v28;
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v26 * v19, v47, v5);
      v20 = (*(v11 + 56) + 2 * v19);
      *v20 = v45;
      v20[1] = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
      v16 = v46;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_222B90880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v46 - v12;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v10;
  v17 = v16;
  result = sub_222C94F7C();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_222B95A70(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_222B95A08(v37 + v36 * v32, v56, v57);
      }

      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_222B95A70(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

uint64_t sub_222B90CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
  v34 = v4;
  result = sub_222C94F7C();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_222B90FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_222C94F7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 4 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 4 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_222B91240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B30, &unk_222C9A458);
  result = sub_222C94F7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_222C952FC();
      sub_222C9532C();
      result = sub_222C9534C();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_222B914C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v37 = v4;
  result = sub_222C94F7C();
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
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v42 = *(v25 + 16);
        v43 = *(v25 + 32);
        v40 = *v25;
        v41 = *(v25 + 48);
        v38 = *(v25 + 8);
        v39 = *(v25 + 56);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        v45 = *(v25 + 32);
        v46 = v28;
        v44[0] = v26;
        v44[1] = v27;
        v42 = v27;
        v43 = v45;
        v40 = v26;
        v41 = v28;
        v38 = *(&v26 + 1);
        v39 = *(&v28 + 1);

        sub_222B95964(v44, v47);
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v42;
      *(v17 + 32) = v43;
      *(v17 + 48) = v41;
      *(v17 + 56) = v39;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_222B91808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
  result = sub_222C94F7C();
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_44;
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

        if ((v4 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_42;
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
        goto LABEL_41;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48);
      v22 = (*(v5 + 56) + 40 * v20);
      v23 = *(v21 + 16 * v20 + 8);
      v33 = *(v21 + 16 * v20);
      if (v4)
      {
        sub_222B405A0(v22, v34);
      }

      else
      {
        sub_222B43E3C(v22, v34);
        sub_222B95830(v33, v23);
      }

      sub_222C952FC();
      if (!v23)
      {
        v24 = 0;
        goto LABEL_24;
      }

      if (v23 == 1)
      {
        break;
      }

      if (v23 == 2)
      {
        v24 = 2;
LABEL_24:
        MEMORY[0x223DCA0B0](v24);
        goto LABEL_26;
      }

      MEMORY[0x223DCA0B0](3);
      sub_222C9452C();
LABEL_26:
      result = sub_222C9534C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v33;
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

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      result = sub_222B405A0(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v24 = 1;
    goto LABEL_24;
  }

LABEL_41:

LABEL_42:
  *v3 = v7;
  return result;
}

uint64_t sub_222B91B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_222C94F7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    while (1)
    {
      if (!v14)
      {
        v19 = v10;
        while (1)
        {
          v10 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v10 >= v15)
          {
            break;
          }

          v20 = v11[v10];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v41 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v39 & 1) == 0)
        {

          v5 = v4;
          goto LABEL_47;
        }

        v35 = 1 << *(v7 + 32);
        v5 = v4;
        if (v35 >= 64)
        {
          bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v35;
        }

        *(v7 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      sub_222C952FC();
      v40 = v22;
      sub_222C0A220(v22, &v42);
      v24 = v43;
      if (v43 == 1)
      {
        sub_222C9531C();
        v25 = v23;
        goto LABEL_31;
      }

      v26 = v44;
      v37 = v45;
      v38 = v46;
      v27 = v47;
      sub_222C9531C();
      sub_222C9531C();
      if (v24)
      {
        sub_222C9452C();
      }

      v25 = v23;
      sub_222C9531C();
      if (v26)
      {
        sub_222C9452C();
      }

      v7 = v36;
      if (v37)
      {
        sub_222C9531C();
        sub_222C9452C();
        if (!v38)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_222C9531C();
        if (!v38)
        {
LABEL_27:
          sub_222C9531C();
          goto LABEL_28;
        }
      }

      sub_222C9531C();
      sub_222C9452C();
LABEL_28:
      sub_222C9531C();
      if (v27)
      {
        sub_222C9452C();
      }

      sub_222B4FCD4(&v42, &qword_27D0256C8, &unk_222C98AB0);
LABEL_31:
      result = sub_222C9534C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v14 = v41;
      *(*(v9 + 48) + 8 * v17) = v40;
      *(*(v9 + 56) + 8 * v17) = v25;
      ++*(v9 + 16);
    }
  }

LABEL_47:
  *v5 = v9;
  return result;
}

uint64_t sub_222B91F98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_222C94F7C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_222B92238(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    do
    {
      sub_222C952FC();

      sub_222C9452C();
      v9 = sub_222C9534C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_222B923E8(int64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_222C94C3C();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v20 = sub_222C9440C();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

uint64_t sub_222B926E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    do
    {
      sub_222C952FC();

      sub_222C9452C();
      v9 = sub_222C9534C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_222B92898(int64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_222C94C3C();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_222B959C0(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_222C9440C();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_222B92BDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_222C94C3C() + 1) & ~v5;
    while (1)
    {
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_222C952FC();
      if (!v13)
      {
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = 2;
LABEL_11:
        MEMORY[0x223DCA0B0](v14);
        goto LABEL_13;
      }

      MEMORY[0x223DCA0B0](3);

      sub_222C9452C();
LABEL_13:
      v15 = sub_222C9534C();
      result = sub_222B5B328(v12, v13);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v16)
      {
LABEL_18:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v14 = 1;
    goto LABEL_11;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_222B92DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  v2 = *v0;
  v3 = sub_222C94F6C();
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

void *sub_222B92F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v18 = *(v2 + 56);
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 48);
        v21 = *(v19 + 32);
        v22 = *v19;
        v28[1] = *(v19 + 16);
        v28[2] = v21;
        v28[0] = v22;
        v29 = v20;
        LOWORD(v18) = *(v18 + 2 * v17);
        v23 = *(v4 + 48) + 56 * v17;
        v24 = *v19;
        v25 = *(v19 + 16);
        v26 = *(v19 + 32);
        *(v23 + 48) = *(v19 + 48);
        *(v23 + 16) = v25;
        *(v23 + 32) = v26;
        *v23 = v24;
        *(*(v4 + 56) + 2 * v17) = v18;
        result = sub_222B554C0(v28, v27);
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

void *sub_222B93140()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = *v19;
        v21 = v19[1];
        v23 = v19[2];
        v22 = v19[3];
        v17 *= 4;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 1);
        LOBYTE(v24) = *(v24 + 3);
        v27 = (*(v4 + 48) + v18);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v23;
        v27[3] = v22;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 3) = v24;
        *(v28 + 1) = v26;
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

char *sub_222B93310()
{
  v1 = v0;
  v34 = sub_222C9367C();
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B60, &qword_222C9A4D0);
  v5 = *v0;
  v6 = sub_222C94F6C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_222B935EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_222B93754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_222B938D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        *v25 = v20;
        v25[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v24;
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

void *sub_222B93A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        v22 = *(*(v2 + 56) + v17);
        *v21 = v19;
        v21[1] = v20;
        *(*(v4 + 56) + v17) = v22;
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

char *sub_222B93BE4()
{
  v1 = v0;
  v34 = sub_222C9367C();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B70, &qword_222C9A4E0);
  v3 = *v0;
  v4 = sub_222C94F6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 2;
        v24 = (*(v3 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        result = (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        v27 = (*(v15 + 56) + v19);
        *v27 = v25;
        v27[1] = v26;
        v3 = v32;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_222B93EAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_222C9367C();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_222C94F6C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_222B95A08(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_222B95A70(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}