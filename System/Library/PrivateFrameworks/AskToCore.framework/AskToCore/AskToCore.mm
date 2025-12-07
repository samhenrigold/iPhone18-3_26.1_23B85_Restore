uint64_t sub_24107FB34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _AskToExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_24107FB7C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24107FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2410DEF00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24107FC98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2410DEF00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2410800BC(id *a1)
{
  v2 = *a1;
  v1 = v2;
  ATQuestion.topicMetadata.setter(&v2);
}

uint64_t sub_2410800F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 80);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_241080234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 80);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2410803F0()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_241080440()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24108047C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2410804B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24108050C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t PrivledgedRecipientGroupInfo.__allocating_init(originalRecipientGroup:sendDestinations:)(__int16 a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PrivledgedRecipientGroupInfo.init(originalRecipientGroup:sendDestinations:)(__int16 a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_241080640()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1);
  return sub_2410DF9F0();
}

uint64_t sub_241080688(uint64_t a1)
{
  v2 = *v1;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v2);
  return sub_2410DF9F0();
}

unint64_t sub_2410806CC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_241080708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000016 && 0x80000002410E6DB0 == a2;
  if (v5 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002410E6DD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2410807F8(uint64_t a1)
{
  v2 = sub_241080B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241080834(uint64_t a1)
{
  v2 = sub_241080B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivledgedRecipientGroupInfo.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t PrivledgedRecipientGroupInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525500, &qword_2410E0E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241080B20();
  sub_2410DFA20();
  v13 = *(v3 + 16);
  v12 = 0;
  sub_241080B74();
  sub_2410DF830();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5262B0, &qword_2410E0E08);
    sub_241080F5C(&qword_27E525520, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_241080B20()
{
  result = qword_27E525508;
  if (!qword_27E525508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525508);
  }

  return result;
}

unint64_t sub_241080B74()
{
  result = qword_27E525510;
  if (!qword_27E525510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525510);
  }

  return result;
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

uint64_t PrivledgedRecipientGroupInfo.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PrivledgedRecipientGroupInfo.init(from:)(a1);
  return v2;
}

uint64_t *PrivledgedRecipientGroupInfo.init(from:)(void *a1)
{
  v10[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525528, &qword_2410E0E10);
  v4 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v6 = v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241080B20();
  sub_2410DFA10();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    v12 = 0;
    sub_241080F08();
    v8 = v10[0];
    sub_2410DF730();
    *(v1 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5262B0, &qword_2410E0E08);
    v11 = 1;
    sub_241080F5C(&qword_27E525538, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2410DF730();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
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

unint64_t sub_241080F08()
{
  result = qword_27E525530;
  if (!qword_27E525530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525530);
  }

  return result;
}

uint64_t sub_241080F5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5262B0, &qword_2410E0E08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_241080FC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PrivledgedRecipientGroupInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2410810CC(uint64_t a1, int a2)
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

uint64_t sub_2410810EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_241081134(uint64_t a1, int a2)
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

uint64_t sub_241081154(uint64_t result, int a2, int a3)
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

void sub_2410811BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrivledgedRecipientGroupInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivledgedRecipientGroupInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24108136C()
{
  result = qword_27E5255C0;
  if (!qword_27E5255C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5255C0);
  }

  return result;
}

uint64_t sub_241081464(uint64_t a1, uint64_t a2)
{
  sub_2410DF990();
  swift_getWitnessTable();
  sub_2410DEF20();
  return sub_2410DF9F0();
}

uint64_t sub_2410814CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2410DEF10();
}

uint64_t sub_2410815A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410815E8()
{
  result = qword_27E5255D8;
  if (!qword_27E5255D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5255D8);
  }

  return result;
}

unint64_t sub_241081640()
{
  result = qword_27E5255E0;
  if (!qword_27E5255E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5255E0);
  }

  return result;
}

uint64_t sub_2410816E4(uint64_t a1, uint64_t a2)
{
  sub_2410DF990();
  sub_2410DF070();
  return sub_2410DF9F0();
}

uint64_t sub_241081748(uint64_t a1, uint64_t a2)
{
  v4 = sub_241082A30();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_241081794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2410DF990();
  sub_2410DF070();
  return sub_2410DF9F0();
}

unint64_t sub_2410817F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2410823B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_241081834(uint64_t a1)
{
  v2 = sub_241082A30();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_241081870(uint64_t a1)
{
  v2 = sub_241082A30();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2410818B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241082A30();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t ATMessageComposeValidationError.errorDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_2410DED70();

    return v2;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

uint64_t ATMessageComposeValidationError.failureReason.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_2410DED70();

    return v2;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

uint64_t ATMessageComposeValidationError.recoverySuggestion.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_2410DED70();

    return v2;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t ATMessageComposeValidationError.errorUserInfo.getter(uint64_t a1)
{
  v2 = sub_2410823C4(MEMORY[0x277D84F90]);
  v3 = ATMessageComposeValidationError.errorDescription.getter(a1);
  v5 = MEMORY[0x277D837D0];
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = sub_2410DF0C0();
    v10 = v9;
    v31 = v5;
    *&v30 = v6;
    *(&v30 + 1) = v7;
    sub_2410824F4(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24108212C(v29, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  v12 = ATMessageComposeValidationError.failureReason.getter(a1);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_2410DF0C0();
    v18 = v17;
    v31 = v5;
    *&v30 = v14;
    *(&v30 + 1) = v15;
    sub_2410824F4(&v30, v29);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_24108212C(v29, v16, v18, v19);
  }

  v20 = ATMessageComposeValidationError.recoverySuggestion.getter(a1);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = sub_2410DF0C0();
    v26 = v25;
    v31 = v5;
    *&v30 = v22;
    *(&v30 + 1) = v23;
    sub_2410824F4(&v30, v29);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_24108212C(v29, v24, v26, v27);
  }

  return v2;
}

_OWORD *sub_24108212C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410D81D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2410A71D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2410A6884(v16, a4 & 1);
    v11 = sub_2410D81D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2410DF910();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2410824F4(a1, v22);
  }

  else
  {
    sub_2410A7120(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_24108227C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410D824C(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2410A7378();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2410A6B3C(v16, a4 & 1);
    v11 = sub_2410D824C(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2410DF910();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_2410A718C(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_2410823B4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2410823C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F8, &qword_2410E1380);
    v3 = sub_2410DF650();
    v4 = a1 + 32;

    while (1)
    {
      sub_241082EC4(v4, &v13, &qword_27E525800, &qword_2410E1388);
      v5 = v13;
      v6 = v14;
      result = sub_2410D81D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2410824F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

_OWORD *sub_2410824F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_241082508()
{
  result = qword_27E525770;
  if (!qword_27E525770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525770);
  }

  return result;
}

unint64_t sub_241082560()
{
  result = qword_27E525778;
  if (!qword_27E525778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525778);
  }

  return result;
}

unint64_t sub_2410825B8()
{
  result = qword_27E525780;
  if (!qword_27E525780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525780);
  }

  return result;
}

unint64_t sub_241082610()
{
  result = qword_27E525788;
  if (!qword_27E525788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525788);
  }

  return result;
}

unint64_t sub_241082668()
{
  result = qword_27E525790;
  if (!qword_27E525790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525790);
  }

  return result;
}

unint64_t sub_2410826BC()
{
  result = qword_27E525798;
  if (!qword_27E525798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525798);
  }

  return result;
}

unint64_t sub_241082720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F0, &qword_2410E1378);
    v3 = sub_2410DF650();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_2410D824C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257E8, &qword_2410E1370);
    v3 = sub_2410DF650();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2410D8354(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257A0, &qword_2410E1330);
    v3 = sub_2410DF650();
    v4 = a1 + 32;

    while (1)
    {
      sub_241082EC4(v4, v11, &qword_27E5257A8, &qword_2410E1338);
      v5 = v11[0];
      result = sub_2410D840C(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_2410824F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082A30()
{
  result = qword_27E5257B0;
  if (!qword_27E5257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5257B0);
  }

  return result;
}

unint64_t sub_241082A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257D8, &qword_2410E1360);
    v3 = sub_2410DF650();
    v4 = a1 + 32;

    while (1)
    {
      sub_241082EC4(v4, v10, &qword_27E5257E0, &qword_2410E1368);
      result = sub_2410D8530(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2410824F4(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257C8, &qword_2410E1350);
    v3 = sub_2410DF650();
    v4 = a1 + 32;

    while (1)
    {
      sub_241082EC4(v4, v10, &qword_27E5257D0, &qword_2410E1358);
      result = sub_2410D8630(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2410824F4(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257C0, &qword_2410E3840);
    v3 = sub_2410DF650();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2410D81D4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_241082DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257B8, &unk_2410E1340);
    v3 = sub_2410DF650();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2410D81D4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_241082EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_241082F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_24108227C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_2410D824C(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_2410A7378();
        v13 = v15;
      }

      result = sub_24108573C(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

unint64_t ATURL.Error.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525808, &qword_2410E13B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2410E13A0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  sub_241083100();
  v1 = sub_2410DED10();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
    sub_2410DF610();
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_2410823C4(inited);
  swift_setDeallocating();
  sub_241086184(inited + 32, &qword_27E525800, &qword_2410E1388);
  return v3;
}

unint64_t sub_241083100()
{
  result = qword_27E525810;
  if (!qword_27E525810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525810);
  }

  return result;
}

uint64_t ATURL.Error.hashValue.getter()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  return sub_2410DF9F0();
}

uint64_t sub_2410831D0()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  return sub_2410DF9F0();
}

uint64_t sub_241083214(uint64_t a1)
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  return sub_2410DF9F0();
}

uint64_t sub_24108327C(uint64_t a1)
{
  v2 = sub_241086750();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2410832B8(uint64_t a1)
{
  v2 = sub_241086750();

  return MEMORY[0x28211F4A8](a1, v2);
}

AskToCore::ATURL::Parameter_optional __swiftcall ATURL.Parameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2410DF660();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ATURL.Parameter.rawValue.getter()
{
  v1 = 0x7265566F546B7361;
  v2 = 0x69616E626D756874;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2410833F4()
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410834D4(uint64_t a1)
{
  sub_2410DF150();
}

uint64_t sub_2410835A0(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

void sub_241083688(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x7265566F546B7361;
  v4 = 0x80000002410E67F0;
  v5 = 0x69616E626D756874;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xED0000617461446CLL;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001BLL;
    v2 = 0x80000002410E67D0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_241083724()
{
  v1 = *v0;
  if (*(v0 + 32) > 1u)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    if (*(v0 + 32) == 2)
    {
      sub_2410DF570();
      MEMORY[0x245CD9620](0xD000000000000039, 0x80000002410E78D0);
    }

    else
    {
      sub_2410DF570();
      MEMORY[0x245CD9620](0xD00000000000003ALL, 0x80000002410E7890);
    }

    swift_getErrorValue();
    v5 = sub_2410DF940();
    MEMORY[0x245CD9620](v5);
  }

  else
  {
    v2 = v0[1];
    if (*(v0 + 32))
    {
      v4 = v0[2];
      v3 = v0[3];
      sub_2410DF570();

      v7 = 0xD00000000000001FLL;
      v8 = 0x80000002410E7910;
      MEMORY[0x245CD9620](v1, v2);
      MEMORY[0x245CD9620](0x797420726F662022, 0xEC00000022206570);
      MEMORY[0x245CD9620](v4, v3);
      MEMORY[0x245CD9620](11810, 0xE200000000000000);
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
      sub_2410DF570();
      MEMORY[0x245CD9620](0xD000000000000021, 0x80000002410E7930);
      MEMORY[0x245CD9620](v1, v2);
      MEMORY[0x245CD9620](0xD000000000000010, 0x80000002410E7960);
    }
  }

  MEMORY[0x245CD9620](v7, v8);

  return 0xD000000000000030;
}

unint64_t sub_24108396C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525808, &qword_2410E13B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2410E13A0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v1 = sub_241083724();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
    sub_2410DF610();
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_2410823C4(inited);
  swift_setDeallocating();
  sub_241086184(inited + 32, &qword_27E525800, &qword_2410E1388);
  return v3;
}

uint64_t sub_241083A6C(uint64_t a1)
{
  v2 = sub_2410866FC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241083AA8(uint64_t a1)
{
  v2 = sub_2410866FC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ATURL.Parser.parse<A>(_:from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v80 = a2;
  v73 = a6;
  v82[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2410DEC30();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525818, &qword_2410E13C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525820, &qword_2410E13C8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  v74 = a1;
  v75 = a4;
  sub_24108442C(a3, v82);
  v23 = LOBYTE(v82[0]);
  if (LOBYTE(v82[0]) == 4)
  {
    v82[0] = a3;
    swift_getMetatypeMetadata();
    v24 = sub_2410DF110();
    v26 = v25;
    sub_241086130();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    return swift_willThrow();
  }

  v71 = a3;
  sub_2410DEC80();
  v72 = v22;
  sub_241082EC4(v22, v20, &qword_27E525820, &qword_2410E13C8);
  v29 = sub_2410DECB0();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v20, 1, v29) == 1)
  {
    sub_241086184(v20, &qword_27E525820, &qword_2410E13C8);
    goto LABEL_25;
  }

  v31 = sub_2410DEC60();
  (*(v30 + 8))(v20, v29);
  if (!v31)
  {
LABEL_25:
    v33 = v81;
    (*(v81 + 56))(v16, 1, 1, v9);
    goto LABEL_27;
  }

  v32 = v31;
  v68 = v16;
  v33 = v81;
  v77 = *(v31 + 16);
  if (!v77)
  {
LABEL_24:

    v16 = v68;
    (*(v33 + 56))(v68, 1, 1, v9);
    goto LABEL_27;
  }

  v34 = 0;
  v80 = v31 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v78 = v81 + 16;
  v69 = 0x80000002410E67D0;
  v70 = 0x80000002410E67F0;
  v35 = (v81 + 8);
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
    }

    (*(v33 + 16))(v11, v80 + *(v33 + 72) * v34, v9);
    v36 = sub_2410DEC10();
    if (v23 <= 1)
    {
      break;
    }

    if (v23 == 2)
    {
      v40 = 0xD000000000000010;
    }

    else
    {
      v40 = 0x69616E626D756874;
    }

    if (v23 == 2)
    {
      v39 = v70;
    }

    else
    {
      v39 = 0xED0000617461446CLL;
    }

    if (v36 == v40)
    {
      goto LABEL_21;
    }

LABEL_22:
    v41 = sub_2410DF8D0();

    if (v41)
    {
      goto LABEL_43;
    }

    ++v34;
    (*v35)(v11, v9);
    v33 = v81;
    if (v77 == v34)
    {
      goto LABEL_24;
    }
  }

  v38 = 0x7265566F546B7361;
  v39 = 0xEC0000006E6F6973;
  if (v23)
  {
    v38 = 0xD00000000000001BLL;
    v39 = v69;
  }

  if (v36 != v38)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (v37 != v39)
  {
    goto LABEL_22;
  }

LABEL_43:

  v33 = v81;
  v16 = v68;
  (*(v81 + 32))(v68, v11, v9);
  (*(v33 + 56))(v16, 0, 1, v9);
LABEL_27:
  v42 = v16;
  v43 = v79;
  sub_241082EC4(v16, v79, &qword_27E525818, &qword_2410E13C0);
  if ((*(v33 + 48))(v43, 1, v9) == 1)
  {
    sub_241086184(v43, &qword_27E525818, &qword_2410E13C0);
LABEL_31:
    if (v23 > 1)
    {
      v49 = v71;
      if (v23 == 2)
      {
        v51 = 0xD000000000000010;
        v50 = 0x80000002410E67F0;
      }

      else
      {
        v50 = 0xED0000617461446CLL;
        v51 = 0x69616E626D756874;
      }
    }

    else
    {
      v49 = v71;
      v50 = 0xEC0000006E6F6973;
      v51 = 0x7265566F546B7361;
      if (v23)
      {
        v50 = 0x80000002410E67D0;
        v51 = 0xD00000000000001BLL;
      }
    }

    v82[0] = v49;
    swift_getMetatypeMetadata();
    v52 = sub_2410DF110();
    v54 = v53;
    sub_241086130();
    swift_allocError();
    *v55 = v51;
    *(v55 + 8) = v50;
    *(v55 + 16) = v52;
    *(v55 + 24) = v54;
    *(v55 + 32) = 1;
    swift_willThrow();
LABEL_38:
    sub_241086184(v42, &qword_27E525818, &qword_2410E13C0);
    return sub_241086184(v72, &qword_27E525820, &qword_2410E13C8);
  }

  else
  {
    sub_2410DEC20();
    v45 = v44;
    (*(v33 + 8))(v43, v9);
    if (!v45)
    {
      goto LABEL_31;
    }

    v46 = sub_2410DEE10();
    v48 = v47;

    if (v48 >> 60 == 15)
    {
      goto LABEL_31;
    }

    v56 = sub_2410DEE20();
    v82[0] = 0;
    v57 = [v56 decompressedDataUsingAlgorithm:3 error:v82];

    v58 = v82[0];
    if (!v57)
    {
      v65 = v58;
      v66 = sub_2410DEDC0();

      swift_willThrow();
      sub_241086130();
      swift_allocError();
      *v67 = v66;
      *(v67 + 8) = 0;
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      *(v67 + 32) = 3;
      swift_willThrow();
      sub_2410861E4(v46, v48);
      goto LABEL_38;
    }

    v59 = sub_2410DEE40();
    v61 = v60;

    sub_2410DEB90();
    swift_allocObject();
    sub_2410DEB80();
    v62 = v76;
    sub_2410DEB70();
    if (!v62)
    {
      sub_2410861E4(v46, v48);

      sub_2410861F8(v59, v61);
      goto LABEL_38;
    }

    sub_241086130();
    swift_allocError();
    *v63 = v62;
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 2;
    swift_willThrow();
    v64 = v62;
    sub_2410861E4(v46, v48);
    sub_2410861F8(v59, v61);

    sub_241086184(v42, &qword_27E525818, &qword_2410E13C0);
    return sub_241086184(v72, &qword_27E525820, &qword_2410E13C8);
  }
}

void sub_24108442C(uint64_t a2@<X1>, char *a3@<X8>)
{
  if (type metadata accessor for ATPayload() == a2)
  {
    v12 = 2;
  }

  else
  {
    if (qword_27E525468 != -1)
    {
      swift_once();
    }

    v4 = sub_2410DEFE0();
    __swift_project_value_buffer(v4, qword_27E530358);
    v5 = sub_2410DEFC0();
    v6 = sub_2410DF3F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_getMetatypeMetadata();
      v9 = sub_2410DF110();
      v11 = sub_241085208(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24107E000, v5, v6, "Unknown ATURL.Parameter for type %s.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245CDA690](v8, -1, -1);
      MEMORY[0x245CDA690](v7, -1, -1);
    }

    v12 = 4;
  }

  *a3 = v12;
}

void *sub_2410845AC(uint64_t a1)
{
  v2 = sub_2410DEC30();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = v23 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = 0x80000002410E67D0;
  v26 = 0x80000002410E67F0;
  v23[1] = v6 + 8;
  v24 = (v6 + 16);
  v29 = v6;
  v30 = a1;
  v23[0] = v6 + 32;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v27 = v5;
  v28 = v2;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v15;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      do
      {
LABEL_8:
        v11 &= v11 - 1;

        v17 = v31;
        sub_2410DEC00();

        v19 = v27;
        v18 = v28;
        (*v24)(v27, v17, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2410D1F78(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_2410D1F78((v20 > 1), v21 + 1, 1, v15);
        }

        v22 = v29;
        (*(v29 + 8))(v31, v18);
        v15[2] = v21 + 1;
        result = (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v19, v18);
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2410848F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  if (a2)
  {

    return sub_241082F38(a1, a2, v4);
  }

  else
  {
    v6 = v3;
    result = sub_2410D824C(v4);
    if (v7)
    {
      v8 = result;
      v9 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v12 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2410A7378();
        v9 = v6;
        v11 = v12;
      }

      result = sub_24108573C(v8, v11);
      *v9 = v11;
    }
  }

  return result;
}

uint64_t static ATURL.create(using:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2410DECB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2410DF100();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEBF0();
  swift_allocObject();
  v12 = sub_2410DEBE0();
  v88[0] = a1;
  type metadata accessor for ATPayload();
  sub_241086804(&qword_27E525830, &protocol conformance descriptor for ATPayload);
  v86 = v12;
  v13 = sub_2410DEBD0();
  if (!v2)
  {
    v15 = v14;
    v83 = v8;
    v84 = v11;
    v16 = v13;
    v80[1] = 0;
    v81 = v6;
    v82 = v5;
    if (qword_27E525468 != -1)
    {
      swift_once();
    }

    v17 = sub_2410DEFE0();
    __swift_project_value_buffer(v17, qword_27E530358);
    v18 = v16;
    sub_241086284(v16, v15);
    v19 = sub_2410DEFC0();
    v20 = sub_2410DF400();
    sub_2410861F8(v16, v15);
    v21 = os_log_type_enabled(v19, v20);
    v80[2] = a2;
    v85 = v15;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88[0] = v23;
      *v22 = 136315138;
      sub_241086284(v16, v85);
      v24 = sub_2410DEE00();
      v26 = v25;
      sub_2410861F8(v16, v85);
      v27 = sub_241085208(v24, v26, v88);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_24107E000, v19, v20, "Encoded payload data: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v28 = v23;
      v18 = v16;
      MEMORY[0x245CDA690](v28, -1, -1);
      v29 = v22;
      v15 = v85;
      MEMORY[0x245CDA690](v29, -1, -1);
    }

    sub_241086284(v18, v15);
    v30 = sub_2410DEFC0();
    v31 = sub_2410DF400();
    sub_2410861F8(v18, v15);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88[0] = v33;
      *v32 = 136315138;
      sub_2410DF0F0();
      v34 = sub_2410DF0D0();
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v34 = 7104878;
        v36 = 0xE300000000000000;
      }

      v37 = sub_241085208(v34, v36, v88);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_24107E000, v30, v31, "Encoded payload JSON: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x245CDA690](v33, -1, -1);
      MEMORY[0x245CDA690](v32, -1, -1);
    }

    v38 = sub_2410DEE20();
    v88[0] = 0;
    v39 = [v38 compressedDataUsingAlgorithm:3 error:v88];

    v40 = v88[0];
    if (v39)
    {
      v41 = sub_2410DEE40();
      v43 = v42;

      v80[0] = v41;
      v84 = v43;
      v44 = sub_2410DEE30();
      v46 = v45;

      v47 = sub_2410DEFC0();
      v48 = sub_2410DF400();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v88[0] = v50;
        *v49 = 136315138;
        v51 = v44;
        *(v49 + 4) = sub_241085208(v44, v46, v88);
        _os_log_impl(&dword_24107E000, v47, v48, "Zipped and encoded payload data to base64: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x245CDA690](v50, -1, -1);
        MEMORY[0x245CDA690](v49, -1, -1);
      }

      else
      {
        v51 = v44;
      }

      v54 = sub_241082720(MEMORY[0x277D84F90]);
      v88[0] = v54;
      LOWORD(v87) = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_version];
      v55 = sub_2410DF8A0();
      v57 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v54;
      sub_24108227C(v55, v57, 0, isUniquelyReferenced_nonNull_native);
      v59 = v87;
      v88[0] = v87;
      v60 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8];
      if (v60)
      {
        v61 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
        LOBYTE(v87) = 1;

        sub_2410848F8(v61, v60, &v87);
        v59 = v88[0];
      }

      v62 = v83;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v59;
      sub_24108227C(v51, v46, 2, v63);
      v64 = v87;
      v88[0] = v87;
      v65 = &a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
      v66 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8];
      if (v66 >> 60 == 15)
      {
        goto LABEL_21;
      }

      v67 = *v65;
      sub_241086284(*v65, *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8]);
      v68 = sub_2410DEE20();
      v87 = 0;
      v69 = [v68 compressedDataUsingAlgorithm:3 error:&v87];

      v70 = v87;
      if (v69)
      {
        v71 = sub_2410DEE40();
        v73 = v72;

        v74 = sub_2410DEE30();
        v76 = v75;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v64;
        sub_24108227C(v74, v76, 3, v77);
        sub_2410861E4(v67, v66);
        sub_2410861F8(v71, v73);
        v64 = v87;
        v62 = v83;
LABEL_21:
        sub_2410DECA0();
        sub_2410845AC(v64);

        sub_2410DEC70();
        sub_2410DEC90();
        sub_2410861F8(v80[0], v84);

        sub_2410861F8(v18, v85);
        return (*(v81 + 8))(v62, v82);
      }

      v79 = v70;

      v53 = sub_2410DEDC0();

      swift_willThrow();
      sub_2410861E4(v67, v66);
      sub_2410861F8(v80[0], v84);
    }

    else
    {
      v52 = v40;
      v53 = sub_2410DEDC0();

      swift_willThrow();
    }

    sub_2410862D8();
    swift_allocError();
    swift_willThrow();

    sub_2410861F8(v18, v85);
  }
}

unint64_t sub_241085208(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2410852D4(v11, 0, 0, 1, a1, a2);
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
    sub_2410867A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2410852D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2410853E0(a5, a6);
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
    result = sub_2410DF5B0();
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

void *sub_2410853E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_24108542C(a1, a2);
  sub_24108555C(&unk_2852E3498);
  return v3;
}

void *sub_24108542C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2410AB818(v5, 0);
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

  result = sub_2410DF5B0();
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
        v10 = sub_2410DF1A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2410AB818(v10, 0);
        result = sub_2410DF560();
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

uint64_t sub_24108555C(uint64_t result)
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

  result = sub_241085648(result, v11, 1, v3);
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

char *sub_241085648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525860, &qword_2410E1750);
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

uint64_t sub_24108573C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2410DF510() + 1) & ~v5;
    do
    {
      sub_2410DF990();
      sub_2410DF150();

      result = sub_2410DF9F0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

id sub_241085978(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v54 = sub_2410DEC30();
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v3 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525818, &qword_2410E13C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525820, &qword_2410E13C8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v48 - v13;
  v15 = type metadata accessor for ATPayload();
  sub_2410DEC80();
  v50 = v14;
  sub_241082EC4(v14, v12, &qword_27E525820, &qword_2410E13C8);
  v16 = sub_2410DECB0();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v12, 1, v16);
  v49 = v15;
  if (v18 == 1)
  {
    sub_241086184(v12, &qword_27E525820, &qword_2410E13C8);
LABEL_12:
    v24 = v51;
    v20 = v54;
    (*(v1 + 56))(v51, 1, 1, v54);
    goto LABEL_17;
  }

  v19 = sub_2410DEC60();
  (*(v17 + 8))(v12, v16);
  if (!v19)
  {
    goto LABEL_12;
  }

  v48[0] = v7;
  v20 = v54;
  v52 = *(v19 + 16);
  if (v52)
  {
    v21 = 0;
    v53 = v19 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
      }

      (*(v1 + 16))(v3, v53 + *(v1 + 72) * v21, v20);
      if (sub_2410DEC10() == 0xD000000000000010 && 0x80000002410E67F0 == v22)
      {

        goto LABEL_15;
      }

      v23 = sub_2410DF8D0();

      if (v23)
      {
        break;
      }

      ++v21;
      v20 = v54;
      (*(v1 + 8))(v3, v54);
      if (v52 == v21)
      {
        goto LABEL_11;
      }
    }

    v20 = v54;
LABEL_15:
    v24 = v51;
    (*(v1 + 32))(v51, v3, v20);
    (*(v1 + 56))(v24, 0, 1, v20);
  }

  else
  {
LABEL_11:

    v24 = v51;
    (*(v1 + 56))(v51, 1, 1, v20);
  }

  v7 = v48[0];
LABEL_17:
  sub_241082EC4(v24, v7, &qword_27E525818, &qword_2410E13C0);
  if ((*(v1 + 48))(v7, 1, v20) == 1)
  {
    sub_241086184(v7, &qword_27E525818, &qword_2410E13C0);
LABEL_21:
    v55[0] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CB0, &qword_2410E1758);
    v30 = sub_2410DF110();
    v32 = v31;
    sub_241086130();
    swift_allocError();
    *v33 = 0xD000000000000010;
    *(v33 + 8) = 0x80000002410E67F0;
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    *(v33 + 32) = 1;
    swift_willThrow();
LABEL_22:
    v34 = v50;
    sub_241086184(v24, &qword_27E525818, &qword_2410E13C0);
    return sub_241086184(v34, &qword_27E525820, &qword_2410E13C8);
  }

  sub_2410DEC20();
  v26 = v25;
  (*(v1 + 8))(v7, v20);
  if (!v26)
  {
    goto LABEL_21;
  }

  v27 = sub_2410DEE10();
  v29 = v28;

  if (v29 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v36 = sub_2410DEE20();
  v55[0] = 0;
  v37 = [v36 decompressedDataUsingAlgorithm:3 error:v55];

  v38 = v55[0];
  if (!v37)
  {
    v45 = v38;
    v46 = sub_2410DEDC0();

    swift_willThrow();
    sub_241086130();
    swift_allocError();
    *v47 = v46;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 3;
    swift_willThrow();
    sub_2410861E4(v27, v29);
    goto LABEL_22;
  }

  v39 = sub_2410DEE40();
  v41 = v40;

  sub_2410DEB90();
  swift_allocObject();
  sub_2410DEB80();
  sub_241086804(&unk_27E525C50, &protocol conformance descriptor for ATPayload);
  v42 = v48[1];
  sub_2410DEB70();
  if (v42)
  {

    sub_241086130();
    swift_allocError();
    *v43 = v42;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    *(v43 + 32) = 2;
    swift_willThrow();
    v44 = v42;
    sub_2410861E4(v27, v29);
    sub_2410861F8(v39, v41);

    v24 = v51;
    goto LABEL_22;
  }

  sub_2410861E4(v27, v29);

  sub_2410861F8(v39, v41);
  sub_241086184(v51, &qword_27E525818, &qword_2410E13C0);
  sub_241086184(v50, &qword_27E525820, &qword_2410E13C8);
  return v55[0];
}

unint64_t sub_241086130()
{
  result = qword_27E525828;
  if (!qword_27E525828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525828);
  }

  return result;
}

uint64_t sub_241086184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2410861E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2410861F8(result, a2);
  }

  return result;
}

uint64_t sub_2410861F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
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

void sub_241086284(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_2410862D8()
{
  result = qword_27E525838;
  if (!qword_27E525838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525838);
  }

  return result;
}

unint64_t sub_241086330()
{
  result = qword_27E525840;
  if (!qword_27E525840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525840);
  }

  return result;
}

unint64_t sub_241086388()
{
  result = qword_27E525848;
  if (!qword_27E525848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ATURL.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ATURL.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PNGEncoder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PNGEncoder(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241086654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24108669C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_2410866FC()
{
  result = qword_27E525850;
  if (!qword_27E525850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525850);
  }

  return result;
}

unint64_t sub_241086750()
{
  result = qword_27E525858;
  if (!qword_27E525858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525858);
  }

  return result;
}

uint64_t sub_2410867A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241086804(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ATPayload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void JPEGEncoder.init(compressionQuality:)(double *a1@<X8>, double a2@<D0>)
{
  v2 = fmin(a2, 1.0);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  *a1 = v2;
}

uint64_t JPEGEncoder.encode(_:compressionQuality:)(CGImage *a1, double a2)
{
  v4 = sub_2410DEFA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_2410DEF90();
  sub_2410DEF70();
  (*(v5 + 8))(v7, v4);
  v9 = sub_2410DF0A0();

  v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525868, &qword_2410E1760);
    inited = swift_initStackObject();
    v12 = MEMORY[0x277CD2D48];
    *(inited + 16) = xmmword_2410E13A0;
    v13 = *v12;
    *(inited + 32) = v13;
    *(inited + 40) = a2;
    v14 = v13;
    sub_241082818(inited);
    swift_setDeallocating();
    sub_241086C7C(inited + 32);
    type metadata accessor for CFString(0);
    sub_241086CE4();
    v15 = sub_2410DF040();

    CGImageDestinationAddImage(v10, a1, v15);

    if (CGImageDestinationFinalize(v10))
    {
      v16 = v8;
      v17 = sub_2410DEE40();

      return v17;
    }

    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v23 = sub_2410DEFE0();
    __swift_project_value_buffer(v23, qword_27E530418);
    v24 = sub_2410DEFC0();
    v25 = sub_2410DF3F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24107E000, v24, v25, "Failed to finalize CGImageDestination for JPEG encoding", v26, 2u);
      MEMORY[0x245CDA690](v26, -1, -1);
    }
  }

  else
  {
    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v19 = sub_2410DEFE0();
    __swift_project_value_buffer(v19, qword_27E530418);
    v20 = sub_2410DEFC0();
    v21 = sub_2410DF3F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24107E000, v20, v21, "Failed to create CGImageDestination for JPEG encoding", v22, 2u);
      MEMORY[0x245CDA690](v22, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_241086C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525870, &qword_2410E1768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241086CE4()
{
  result = qword_27E5255C8;
  if (!qword_27E5255C8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5255C8);
  }

  return result;
}

uint64_t _s9AskToCore10PNGEncoderV6encode_18compressionQuality10Foundation4DataVSgSo10CGImageRefa_0C8Graphics7CGFloatVtF_0(CGImage *a1)
{
  v2 = sub_2410DEFA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_2410DEF80();
  sub_2410DEF70();
  (*(v3 + 8))(v5, v2);
  v7 = sub_2410DF0A0();

  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, a1, 0);
    if (CGImageDestinationFinalize(v8))
    {
      v9 = v6;
      v10 = sub_2410DEE40();

      return v10;
    }

    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v16 = sub_2410DEFE0();
    __swift_project_value_buffer(v16, qword_27E530418);
    v17 = sub_2410DEFC0();
    v18 = sub_2410DF3F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24107E000, v17, v18, "Failed to finalize CGImageDestination for PNG encoding", v19, 2u);
      MEMORY[0x245CDA690](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530418);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Failed to create CGImageDestination for PNG encoding", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for JPEGEncoder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JPEGEncoder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2410870F4()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E530340);
  __swift_project_value_buffer(v0, qword_27E530340);
  return sub_2410DEFD0();
}

uint64_t sub_2410871A0()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E530370);
  __swift_project_value_buffer(v0, qword_27E530370);
  return sub_2410DEFD0();
}

uint64_t sub_24108729C()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E5303D0);
  __swift_project_value_buffer(v0, qword_27E5303D0);
  return sub_2410DEFD0();
}

uint64_t sub_241087324()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E5303E8);
  __swift_project_value_buffer(v0, qword_27E5303E8);
  return sub_2410DEFD0();
}

uint64_t sub_241087400(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2410DEFD0();
}

uint64_t sub_241087484()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E530430);
  __swift_project_value_buffer(v0, qword_27E530430);
  return sub_2410DEFD0();
}

uint64_t sub_24108750C()
{
  v0 = sub_2410DEFE0();
  __swift_allocate_value_buffer(v0, qword_27E530448);
  __swift_project_value_buffer(v0, qword_27E530448);
  return sub_2410DEFD0();
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

uint64_t sub_2410875F8(uint64_t a1, unint64_t a2)
{
  if (qword_27E5254B8 != -1)
  {
    swift_once();
  }

  v5 = sub_2410DEFE0();
  __swift_project_value_buffer(v5, qword_27E530448);

  v6 = v2;
  v7 = sub_2410DEFC0();
  v8 = sub_2410DF400();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v17[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_241085208(a1, a2, v17);
    *(v9 + 12) = 1024;
    *(v9 + 14) = [v6 processIdentifier];

    _os_log_impl(&dword_24107E000, v7, v8, "Checking entitlement %s for connection with PID %d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDA690](v10, -1, -1);
    MEMORY[0x245CDA690](v9, -1, -1);
  }

  else
  {
  }

  v11 = sub_2410DF0A0();
  v12 = [v6 valueForEntitlement_];

  if (v12)
  {
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v14;
    }
  }

  else
  {
    sub_241087824(v17);
    return 0;
  }

  return result;
}

uint64_t sub_241087824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CA0, "P?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2410878DC()
{
  v1 = [objc_opt_self() identifierWithPid_];
  if (v1)
  {
    v2 = v1;
    sub_241087DAC();
    v3 = v2;
    v4 = sub_241087DF8(v3);

    v39 = v3;
    [v0 auditToken];
    v9 = atoken.val[0];
    v10 = atoken.val[1];
    LODWORD(v3) = atoken.val[2];
    v11 = atoken.val[3];
    v34 = atoken.val[3];
    v35 = atoken.val[2];
    LODWORD(v2) = atoken.val[4];
    v12 = atoken.val[5];
    v32 = atoken.val[5];
    v33 = atoken.val[4];
    v13 = atoken.val[6];
    v14 = atoken.val[7];
    v31 = atoken.val[6];
    v38 = v4;
    [v4 auditToken];
    LODWORD(v4) = atoken.val[0];
    v15 = atoken.val[1];
    v29 = atoken.val[2];
    v30 = atoken.val[0];
    v27 = atoken.val[4];
    v28 = atoken.val[3];
    v25 = atoken.val[6];
    v26 = atoken.val[5];
    v24 = atoken.val[7];
    atoken.val[0] = v9;
    atoken.val[1] = v10;
    atoken.val[2] = v3;
    atoken.val[3] = v11;
    atoken.val[4] = v2;
    atoken.val[5] = v12;
    atoken.val[6] = v13;
    atoken.val[7] = v14;
    v37 = audit_token_to_pid(&atoken);
    atoken.val[0] = v4;
    atoken.val[1] = v15;
    atoken.val[2] = v29;
    atoken.val[3] = v28;
    atoken.val[4] = v27;
    atoken.val[5] = v26;
    atoken.val[6] = v25;
    atoken.val[7] = v24;
    v36 = audit_token_to_pid(&atoken);
    atoken.val[0] = v9;
    atoken.val[1] = v10;
    atoken.val[2] = v35;
    atoken.val[3] = v34;
    atoken.val[4] = v33;
    atoken.val[5] = v32;
    atoken.val[6] = v31;
    atoken.val[7] = v14;
    v16 = audit_token_to_pidversion(&atoken);
    atoken.val[0] = v30;
    atoken.val[1] = v15;
    atoken.val[2] = v29;
    atoken.val[3] = v28;
    atoken.val[4] = v27;
    atoken.val[5] = v26;
    atoken.val[6] = v25;
    atoken.val[7] = v24;
    v17 = audit_token_to_pidversion(&atoken);
    if (v37 == v36 && v16 == v17)
    {

      v18 = [v38 identity];
      return v18;
    }

    v6 = v39;
    if (qword_27E5254B8 != -1)
    {
      swift_once();
    }

    v20 = sub_2410DEFE0();
    __swift_project_value_buffer(v20, qword_27E530448);
    v21 = sub_2410DEFC0();
    v22 = sub_2410DF3F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24107E000, v21, v22, "The audit token of the xpc connection does not match the audit token of the created process handle.", v23, 2u);
      MEMORY[0x245CDA690](v23, -1, -1);
    }
  }

  else
  {
    if (qword_27E5254B8 != -1)
    {
      swift_once();
    }

    v5 = sub_2410DEFE0();
    __swift_project_value_buffer(v5, qword_27E530448);
    v6 = sub_2410DEFC0();
    v7 = sub_2410DF3F0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24107E000, v6, v7, "Unable to obtain RunningBoard process identity because the RunningBoard process identifier was nil.", v8, 2u);
      MEMORY[0x245CDA690](v8, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_241087DAC()
{
  result = qword_27E525878;
  if (!qword_27E525878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E525878);
  }

  return result;
}

id sub_241087DF8(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2410DEDC0();

    swift_willThrow();
  }

  return v1;
}

id AskToExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_2410DA8B8(v4, a1, a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_241087F54(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x63696E756D6D6F63;
    v6 = 1952540771;
    if (a1 != 8)
    {
      v6 = 0x7463656E6E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C61436F65646976;
    if (a1 != 5)
    {
      v7 = 0x6C61436F69647561;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x646E65697266;
    v2 = 0x776F6C6C6F466562;
    v3 = 1819042147;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x776F6C6C6F66;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_241088098(uint64_t a1)
{
  v2 = sub_2410890B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410880D4(uint64_t a1)
{
  v2 = sub_2410890B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088110(uint64_t a1)
{
  v2 = sub_241089208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24108814C(uint64_t a1)
{
  v2 = sub_241089208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088188(uint64_t a1)
{
  v2 = sub_2410891B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410881C4(uint64_t a1)
{
  v2 = sub_2410891B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088200(uint64_t a1)
{
  v2 = sub_241089010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24108823C(uint64_t a1)
{
  v2 = sub_241089010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24108DEA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410882B4(uint64_t a1)
{
  v2 = sub_241088F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410882F0(uint64_t a1)
{
  v2 = sub_241088F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24108832C(uint64_t a1)
{
  v2 = sub_241089064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241088368(uint64_t a1)
{
  v2 = sub_241089064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410883A4(uint64_t a1)
{
  v2 = sub_241088FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410883E0(uint64_t a1)
{
  v2 = sub_241088FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24108841C(uint64_t a1)
{
  v2 = sub_24108925C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241088458(uint64_t a1)
{
  v2 = sub_24108925C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088494(uint64_t a1)
{
  v2 = sub_2410892B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410884D0(uint64_t a1)
{
  v2 = sub_2410892B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24108850C(uint64_t a1)
{
  v2 = sub_241089160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241088548(uint64_t a1)
{
  v2 = sub_241089160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241088584(uint64_t a1)
{
  v2 = sub_24108910C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410885C0(uint64_t a1)
{
  v2 = sub_24108910C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATCommunicationMetadata.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525880, &qword_2410E1840);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525888, &qword_2410E1848);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525890, &qword_2410E1850);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525898, &qword_2410E1858);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258A0, &qword_2410E1860);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258A8, &qword_2410E1868);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258B0, &qword_2410E1870);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258B8, &qword_2410E1878);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258C0, &qword_2410E1880);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258C8, &qword_2410E1888);
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5258D0, &qword_2410E1890);
  v22 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241088F68();
  v64 = v24;
  sub_2410DFA20();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_24108910C();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_2410DF790();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_2410890B8();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_2410DF790();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_241089064();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_2410DF790();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_241089010();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_2410DF790();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_241088FBC();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_2410DF790();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_241089208();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_2410DF790();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_2410891B4();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_2410DF790();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_241089160();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_2410DF790();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_24108925C();
    v34 = v64;
    v35 = v65;
    sub_2410DF790();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_2410892B0();
  v28 = v64;
  v29 = v65;
  sub_2410DF790();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}

unint64_t sub_241088F68()
{
  result = qword_27E5258D8;
  if (!qword_27E5258D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5258D8);
  }

  return result;
}

unint64_t sub_241088FBC()
{
  result = qword_27E5258E0;
  if (!qword_27E5258E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5258E0);
  }

  return result;
}

unint64_t sub_241089010()
{
  result = qword_27E5258E8;
  if (!qword_27E5258E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5258E8);
  }

  return result;
}

unint64_t sub_241089064()
{
  result = qword_27E5258F0;
  if (!qword_27E5258F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5258F0);
  }

  return result;
}

unint64_t sub_2410890B8()
{
  result = qword_27E5258F8;
  if (!qword_27E5258F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5258F8);
  }

  return result;
}

unint64_t sub_24108910C()
{
  result = qword_27E525900;
  if (!qword_27E525900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525900);
  }

  return result;
}

unint64_t sub_241089160()
{
  result = qword_27E525908;
  if (!qword_27E525908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525908);
  }

  return result;
}

unint64_t sub_2410891B4()
{
  result = qword_27E525910;
  if (!qword_27E525910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525910);
  }

  return result;
}

unint64_t sub_241089208()
{
  result = qword_27E525918;
  if (!qword_27E525918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525918);
  }

  return result;
}

unint64_t sub_24108925C()
{
  result = qword_27E525920;
  if (!qword_27E525920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525920);
  }

  return result;
}

unint64_t sub_2410892B0()
{
  result = qword_27E525928;
  if (!qword_27E525928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525928);
  }

  return result;
}

uint64_t ATCommunicationMetadata.Action.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1);
  return sub_2410DF9F0();
}

uint64_t ATCommunicationMetadata.Action.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525930, &qword_2410E1898);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v52[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525938, &qword_2410E18A0);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = &v52[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525940, &qword_2410E18A8);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v52[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525948, &qword_2410E18B0);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v52[-v10];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525950, &qword_2410E18B8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v77 = &v52[-v11];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525958, &qword_2410E18C0);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v83 = &v52[-v12];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525960, &qword_2410E18C8);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v76 = &v52[-v13];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525968, &qword_2410E18D0);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v82 = &v52[-v14];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525970, &qword_2410E18D8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v52[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525978, &qword_2410E18E0);
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525980, &qword_2410E18E8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52[-v22];
  v24 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_241088F68();
  v25 = v85;
  sub_2410DFA10();
  if (!v25)
  {
    v55 = v19;
    v54 = v17;
    v26 = v82;
    v27 = v83;
    v28 = v84;
    v85 = v21;
    v56 = 0;
    v29 = sub_2410DF780();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 10))
    {
      v34 = sub_2410DF5A0();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0);
      *v36 = &type metadata for ATCommunicationMetadata.Action;
      sub_2410DF680();
      sub_2410DF590();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v85 + 8))(v23, v20);
      goto LABEL_11;
    }

    v53 = *(v29 + 32);
    if (v30 <= 4)
    {
      if (v30 <= 1)
      {
        if (v30)
        {
          v88 = 1;
          sub_24108925C();
          v50 = v56;
          sub_2410DF670();
          if (!v50)
          {
            (*(v58 + 8))(v16, v59);
            (*(v85 + 8))(v23, v20);
            goto LABEL_45;
          }
        }

        else
        {
          v87 = 0;
          sub_2410892B0();
          v41 = v55;
          v42 = v56;
          sub_2410DF670();
          if (!v42)
          {
            (*(v57 + 8))(v41, v54);
            (*(v85 + 8))(v23, v20);
            goto LABEL_45;
          }
        }

        (*(v85 + 8))(v23, v20);
      }

      else
      {
        v31 = v85;
        if (v30 == 2)
        {
          v89 = 2;
          sub_241089208();
          v46 = v56;
          sub_2410DF670();
          if (!v46)
          {
            (*(v61 + 8))(v26, v60);
            (*(v31 + 8))(v23, v20);
LABEL_45:
            swift_unknownObjectRelease();
            *v81 = v53;
            return __swift_destroy_boxed_opaque_existential_1(v86);
          }
        }

        else
        {
          v84 = v29;
          v32 = v56;
          if (v30 == 3)
          {
            v90 = 3;
            sub_2410891B4();
            v33 = v76;
            sub_2410DF670();
            if (!v32)
            {
              (*(v63 + 8))(v33, v62);
LABEL_38:
              (*(v31 + 8))(v23, v20);
              goto LABEL_45;
            }
          }

          else
          {
            v91 = 4;
            sub_241089160();
            sub_2410DF670();
            if (!v32)
            {
              (*(v65 + 8))(v27, v64);
              goto LABEL_38;
            }
          }
        }

        (*(v31 + 8))(v23, v20);
      }

      goto LABEL_11;
    }

    if (v30 > 6)
    {
      v38 = v85;
      if (v30 == 7)
      {
        v94 = 7;
        sub_241089064();
        v47 = v78;
        v48 = v56;
        sub_2410DF670();
        if (!v48)
        {
          (*(v70 + 8))(v47, v71);
          goto LABEL_40;
        }
      }

      else
      {
        v39 = v56;
        if (v30 == 8)
        {
          v95 = 8;
          sub_241089010();
          v40 = v79;
          sub_2410DF670();
          if (!v39)
          {
            (*(v72 + 8))(v40, v73);
LABEL_40:
            (*(v38 + 8))(v23, v20);
            goto LABEL_45;
          }
        }

        else
        {
          v96 = 9;
          sub_241088FBC();
          v49 = v80;
          sub_2410DF670();
          if (!v39)
          {
            (*(v74 + 8))(v49, v75);
            goto LABEL_40;
          }
        }
      }

      (*(v38 + 8))(v23, v20);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v86);
    }

    v43 = v85;
    if (v30 == 5)
    {
      v92 = 5;
      sub_24108910C();
      v44 = v77;
      v45 = v56;
      sub_2410DF670();
      if (!v45)
      {
        (*(v66 + 8))(v44, v67);
LABEL_44:
        (*(v43 + 8))(v23, v20);
        goto LABEL_45;
      }
    }

    else
    {
      v93 = 6;
      sub_2410890B8();
      v51 = v56;
      sub_2410DF670();
      if (!v51)
      {
        (*(v68 + 8))(v28, v69);
        goto LABEL_44;
      }
    }

    (*(v43 + 8))(v23, v20);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

BOOL sub_24108A0B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24108A0DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24108A140()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  v4 = 0x706D6F43656D616ELL;
  if (v1 != 4)
  {
    v4 = 0x6D49726174617661;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24108A200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24108E1E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24108A234(uint64_t a1)
{
  v2 = sub_24108BC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24108A270(uint64_t a1)
{
  v2 = sub_24108BC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATCommunicationMetadata.PersonInformation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2410DEF00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ATCommunicationMetadata.PersonInformation.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ATCommunicationMetadata.PersonInformation(uint64_t a1)
{
  result = qword_27E525AB0;
  if (!qword_27E525AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ATCommunicationMetadata.PersonInformation.handle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t ATCommunicationMetadata.PersonInformation.contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 24));

  return v1;
}

uint64_t ATCommunicationMetadata.PersonInformation.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28));

  return v1;
}

uint64_t ATCommunicationMetadata.PersonInformation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.nameComponents.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28) + 8))
  {

    sub_2410DEDA0();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_2410DED90();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_24108A688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28) + 8))
  {

    sub_2410DEDA0();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_2410DED90();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_24108A758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_24108AA98(a1, &v17 - v8);
  sub_24108AA98(v9, v7);
  v10 = sub_2410DED90();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_241086184(v9, &unk_27E525990, &qword_2410E18F8);
    sub_241086184(v7, &unk_27E525990, &qword_2410E18F8);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_2410DED80();
    v13 = v14;
    sub_241086184(v9, &unk_27E525990, &qword_2410E18F8);
    (*(v11 + 8))(v7, v10);
  }

  v15 = (a2 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28));

  *v15 = v12;
  v15[1] = v13;
  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.nameComponents.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_24108AA98(a1, &v14 - v5);
  v7 = sub_2410DED90();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_241086184(a1, &unk_27E525990, &qword_2410E18F8);
    sub_241086184(v6, &unk_27E525990, &qword_2410E18F8);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_2410DED80();
    v10 = v11;
    sub_241086184(a1, &unk_27E525990, &qword_2410E18F8);
    (*(v8 + 8))(v6, v7);
  }

  v12 = (v2 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28));

  *v12 = v9;
  v12[1] = v10;
  return result;
}

uint64_t sub_24108AA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*ATCommunicationMetadata.PersonInformation.nameComponents.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 28);
  *(v5 + 12) = v9;
  v10 = *(v1 + v9 + 8);
  v5[5] = v10;
  if (v10)
  {

    sub_2410DEDA0();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_2410DED90();
  (*(*(v12 - 8) + 56))(v8, v11, 1, v12);
  return sub_24108ACBC;
}

void sub_24108ACBC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v4 = v2[2];
    sub_24108AA98(v3, v4);
    sub_24108AA98(v4, v5);
    v6 = sub_2410DED90();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v2[1];
    v10 = v2[2];
    if (v8 == 1)
    {
      sub_241086184(v2[2], &unk_27E525990, &qword_2410E18F8);
      sub_241086184(v9, &unk_27E525990, &qword_2410E18F8);

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = sub_2410DED80();
      v12 = v21;
      sub_241086184(v10, &unk_27E525990, &qword_2410E18F8);
      (*(v7 + 8))(v9, v6);
    }

    v23 = v2[3];
    v22 = v2[4];
    v25 = v2[1];
    v24 = v2[2];
    v26 = (*v2 + *(v2 + 12));
    *v26 = v11;
    v26[1] = v12;
    sub_241086184(v22, &unk_27E525990, &qword_2410E18F8);
  }

  else
  {
    v13 = v2[3];
    sub_24108AA98(v3, v13);
    v14 = sub_2410DED90();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = v2[4];
    v18 = v2[3];
    if (v16 == 1)
    {
      sub_241086184(v2[4], &unk_27E525990, &qword_2410E18F8);
      sub_241086184(v18, &unk_27E525990, &qword_2410E18F8);

      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = sub_2410DED80();
      v20 = v27;
      sub_241086184(v17, &unk_27E525990, &qword_2410E18F8);
      (*(v15 + 8))(v18, v14);
    }

    v23 = v2[3];
    v22 = v2[4];
    v25 = v2[1];
    v24 = v2[2];
    v28 = (*v2 + *(v2 + 12));
    *v28 = v19;
    v28[1] = v20;
  }

  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t ATCommunicationMetadata.PersonInformation.avatarImageData.getter()
{
  v1 = v0 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 32);
  v2 = *v1;
  sub_24108AFBC(*v1, *(v1 + 8));
  return v2;
}

void sub_24108AFBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_241086284(a1, a2);
  }
}

uint64_t ATCommunicationMetadata.PersonInformation.avatarImageData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) + 32);
  result = sub_2410861E4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

CGImageRef ATCommunicationMetadata.PersonInformation.avatarImage.getter()
{
  v1 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  result = 0;
  v3 = v0 + *(v1 + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_241086284(*v3, *(v3 + 8));
    v6 = sub_2410DEE20();
    v7 = CGImageSourceCreateWithData(v6, 0);

    if (v7)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      sub_2410861E4(v5, v4);

      return ImageAtIndex;
    }

    else
    {
      sub_2410861E4(v5, v4);
      return 0;
    }
  }

  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.init(handle:contactIdentifier:nameComponents:avatarImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v17 = (a7 + v16[6]);
  v18 = a7 + v16[8];
  *v18 = xmmword_2410E1830;
  sub_2410DEEF0();
  *(a7 + v16[5]) = a1;
  *v17 = a2;
  v17[1] = a3;
  sub_24108AA98(a4, v15);
  v19 = sub_2410DED90();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_241086184(a4, &unk_27E525990, &qword_2410E18F8);
    sub_241086184(v15, &unk_27E525990, &qword_2410E18F8);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = sub_2410DED80();
    v22 = v23;
    sub_241086184(a4, &unk_27E525990, &qword_2410E18F8);
    (*(v20 + 8))(v15, v19);
  }

  v24 = (a7 + v16[7]);
  *v24 = v21;
  v24[1] = v22;
  result = sub_2410861E4(*v18, *(v18 + 8));
  v26 = v28;
  *v18 = a5;
  *(v18 + 8) = v26;
  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.init(id:handle:contactIdentifier:name:avatarImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v16 = (a9 + v15[6]);
  v17 = (a9 + v15[7]);
  v18 = a9 + v15[8];
  *v18 = xmmword_2410E1830;
  v19 = sub_2410DEF00();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v15[5]) = a2;
  *v16 = a3;
  v16[1] = a4;
  *v17 = a5;
  v17[1] = a6;
  result = sub_2410861E4(*v18, *(v18 + 8));
  *v18 = a7;
  *(v18 + 8) = a8;
  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v45 - v4;
  v52 = sub_2410DED90();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v45 - v7;
  v8 = sub_2410DEF00();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5259A0, &qword_2410E1908);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v17[*(v15 + 28)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v60 = &v17[*(v15 + 32)];
  *v60 = xmmword_2410E1830;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24108BC24();
  v19 = v59;
  sub_2410DFA10();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2410861E4(*v60, *(v60 + 1));
  }

  v48 = v18;
  v20 = v54;
  v59 = a1;
  LOBYTE(v61) = 0;
  sub_24108E574(&unk_27E5259B0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v21 = v55;
  sub_2410DF6C0();
  v23 = *(v20 + 48);
  if (v23(v58, 1, v21) == 1)
  {
    sub_2410DEEF0();
    if (v23(v58, 1, v21) != 1)
    {
      sub_241086184(v58, &qword_27E525FE0, &qword_2410E1900);
    }
  }

  else
  {
    (*(v20 + 32))(v10, v58, v21);
  }

  (*(v20 + 32))(v17, v10, v21);
  type metadata accessor for _CommunicationHandle();
  v63 = 1;
  sub_24108E574(&qword_27E5269E0, 255, type metadata accessor for _CommunicationHandle, &protocol conformance descriptor for _CommunicationHandle);
  v24 = v57;
  sub_2410DF730();
  *&v17[*(v14 + 20)] = v61;
  LOBYTE(v61) = 2;
  v58 = 0;
  v25 = sub_2410DF690();
  v26 = v24;
  v27 = &v17[*(v14 + 24)];
  *v27 = v25;
  v27[1] = v28;
  v47 = v28;
  LOBYTE(v61) = 3;
  v29 = sub_2410DF690();
  v31 = v30;
  v46 = v13;
  if (v30)
  {
    v32 = v48;
    *v48 = v29;
  }

  else
  {
    LOBYTE(v61) = 4;
    sub_24108E574(&unk_27E5259C0, 255, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
    v33 = v51;
    v34 = v52;
    sub_2410DF6C0();
    v35 = v50;
    if ((*(v50 + 48))(v33, 1, v34) == 1)
    {
      sub_241086184(v33, &unk_27E525990, &qword_2410E18F8);
      goto LABEL_13;
    }

    v41 = v49;
    (*(v35 + 32))(v49, v33, v34);
    v42 = v35;
    v43 = sub_2410DED80();
    v31 = v44;
    (*(v42 + 8))(v41, v52);
    v32 = v48;
    *v48 = v43;
    v26 = v57;
  }

  v32[1] = v31;
LABEL_13:
  v36 = v53;
  v63 = 5;
  sub_24108BC78();
  v37 = v46;
  sub_2410DF6C0();
  (*(v56 + 8))(v37, v26);
  v38 = v61;
  v39 = v62;
  v40 = v60;
  sub_2410861E4(*v60, *(v60 + 1));
  *v40 = v38;
  *(v40 + 1) = v39;
  sub_24108BCCC(v17, v36);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_24108BD30(v17);
}

unint64_t sub_24108BC24()
{
  result = qword_27E5259A8;
  if (!qword_27E5259A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5259A8);
  }

  return result;
}

unint64_t sub_24108BC78()
{
  result = qword_27E525D00;
  if (!qword_27E525D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525D00);
  }

  return result;
}

uint64_t sub_24108BCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24108BD30(uint64_t a1)
{
  v2 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ATCommunicationMetadata.PersonInformation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525990, &qword_2410E18F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - v7;
  v8 = sub_2410DED90();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5259D0, &qword_2410E1910);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24108BC24();
  sub_2410DFA20();
  LOBYTE(v39) = 0;
  sub_2410DEF00();
  sub_24108E574(&qword_27E5264F0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v15 = v2;
  v16 = v38;
  sub_2410DF830();
  if (v16)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v33 = v10;
  v18 = v12;
  v19 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v20 = v15;
  v39 = *(v15 + v19[5]);
  v41 = 1;
  type metadata accessor for _CommunicationHandle();
  sub_24108E574(&unk_27E5259E0, 255, type metadata accessor for _CommunicationHandle, &protocol conformance descriptor for _CommunicationHandle);
  sub_2410DF830();
  LOBYTE(v39) = 2;
  sub_2410DF7A0();
  v21 = (v15 + v19[7]);
  v23 = *v21;
  v22 = v21[1];
  LOBYTE(v39) = 3;
  sub_2410DF7A0();
  v24 = (v20 + v19[8]);
  v25 = *v24;
  v26 = v24[1];
  v38 = v23;
  v39 = v25;
  v40 = v26;
  v41 = 5;
  sub_24108AFBC(v25, v26);
  sub_24108C350();
  sub_2410DF7D0();
  sub_2410861E4(v39, v40);
  if (v22)
  {

    v27 = v37;
    sub_2410DEDA0();
    v29 = v35;
    v28 = v36;
    v30 = *(v35 + 56);
    v38 = 0;
    v30(v27, 0, 1, v36);
    v31 = v33;
    (*(v29 + 32))(v33, v27, v28);
    v32 = v34;
    (*(v29 + 16))(v34, v31, v28);
    v30(v32, 0, 1, v28);
    LOBYTE(v39) = 4;
    sub_24108E574(&unk_27E5259F0, 255, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_2410DF7D0();
    sub_241086184(v32, &unk_27E525990, &qword_2410E18F8);
    (*(v29 + 8))(v33, v28);
  }

  return (*(v18 + 8))(v14, v11);
}

unint64_t sub_24108C350()
{
  result = qword_27E525C70;
  if (!qword_27E525C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525C70);
  }

  return result;
}

uint64_t ATCommunicationMetadata.PersonInformation.hash(into:)(uint64_t a1)
{
  sub_2410DEF00();
  sub_24108E574(&qword_27E526080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2410DF070();
  v2 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  sub_2410DF470();
  if (*(v1 + v2[6] + 8))
  {
    sub_2410DF9B0();
    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  if (*(v1 + v2[7] + 8))
  {
    sub_2410DF9B0();
    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  if (*(v1 + v2[8] + 8) >> 60 == 15)
  {
    return sub_2410DF9B0();
  }

  sub_2410DF9B0();

  return sub_2410DEE50();
}

uint64_t ATCommunicationMetadata.PersonInformation.hashValue.getter()
{
  sub_2410DF990();
  ATCommunicationMetadata.PersonInformation.hash(into:)(v1);
  return sub_2410DF9F0();
}

uint64_t sub_24108C5A0()
{
  sub_2410DF990();
  ATCommunicationMetadata.PersonInformation.hash(into:)(v1);
  return sub_2410DF9F0();
}

uint64_t sub_24108C5E4(uint64_t a1)
{
  sub_2410DF990();
  ATCommunicationMetadata.PersonInformation.hash(into:)(v2);
  return sub_2410DF9F0();
}

uint64_t sub_24108C6FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id ATCommunicationMetadata.__allocating_init(personInformation:actions:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = a1;
  *&v5[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ATCommunicationMetadata.init(personInformation:actions:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = a1;
  *&v2[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ATCommunicationMetadata.__allocating_init(personInformation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = a1;
  *&v3[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = MEMORY[0x277D84FA0];
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ATCommunicationMetadata.init(personInformation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = a1;
  *&v1[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = MEMORY[0x277D84FA0];
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ATCommunicationMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24108C9DC()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24108CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002410E7AE0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2410DF8D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24108CB04(uint64_t a1)
{
  v2 = sub_24108DC90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24108CB40(uint64_t a1)
{
  v2 = sub_24108DC90();

  return MEMORY[0x2821FE720](a1, v2);
}

id ATCommunicationMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ATCommunicationMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A10, &qword_2410E1918);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24108DC90();
  sub_2410DFA20();
  v9 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v14 = *(v3 + v9);
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A20, &qword_2410E1920);
  sub_24108DDB0(&qword_27E525A28, &qword_27E525A30, &protocol conformance descriptor for ATCommunicationMetadata.PersonInformation, MEMORY[0x277D83948]);
  sub_2410DF830();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions;
    swift_beginAccess();
    v13 = *(v3 + v10);
    v12[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A38, &qword_2410E1928);
    sub_24108DCE4(&qword_27E525A40, sub_24108DD5C, MEMORY[0x277D83B50]);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v8, v5);
}

char *ATCommunicationMetadata.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A50, &unk_2410E1930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24108DC90();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A20, &qword_2410E1920);
    v12 = 0;
    sub_24108DDB0(&qword_27E525A58, &qword_27E525A60, &protocol conformance descriptor for ATCommunicationMetadata.PersonInformation, MEMORY[0x277D83978]);
    sub_2410DF730();
    *(v1 + OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525A38, &qword_2410E1928);
    v12 = 1;
    sub_24108DCE4(&qword_27E525A68, sub_24108DE50, MEMORY[0x277D83B70]);
    sub_2410DF730();
    *(v1 + OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions) = v13;
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

char *sub_24108D18C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATCommunicationMetadata.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ATCommunicationMetadata.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ATCommunicationMetadata.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v17 = sub_24108E3EC(v5, v7);
    sub_2410861F8(v5, v7);
    sub_24108E574(&qword_27E525A88, v18, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
    sub_2410DF420();
    v19 = v33[0];
    if (v33[0])
    {
      v20 = objc_allocWithZone(ObjectType);
      v21 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
      swift_beginAccess();
      *&v20[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = *(v33[0] + v21);
      v22 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions;
      swift_beginAccess();
      *&v20[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = *&v19[v22];
      v32.receiver = v20;
      v32.super_class = ObjectType;

      v23 = objc_msgSendSuper2(&v32, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v24 = v23;
      [v17 finishDecoding];

      return v24;
    }

    v25 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v26 = sub_2410DF480();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33[0] = v28;
      *v27 = 136315138;
      v29 = sub_24108DA08(ObjectType);
      v31 = sub_241085208(v29, v30, v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24107E000, v26, v25, "Not initializing %s (unarchiver had nil value for key value)", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245CDA690](v28, -1, -1);
      MEMORY[0x245CDA690](v27, -1, -1);
    }

    [v17 finishDecoding];
  }

  else
  {
    v9 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315138;
      v13 = sub_24108DA08(ObjectType);
      v15 = sub_241085208(v13, v14, v33);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24107E000, v10, v9, "Not initializing %s (coder had nil value for key data)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDA690](v12, -1, -1);
      MEMORY[0x245CDA690](v11, -1, -1);
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATCommunicationMetadata.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v8 = v1;
  sub_24108E574(&unk_27E525A90, v4, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
  sub_2410DF410();
  [v3 finishEncoding];
  v5 = [v3 encodedData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24108DA08(uint64_t a1)
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  return sub_2410DF110();
}

BOOL _s9AskToCore23ATCommunicationMetadataC17PersonInformationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2410DEED0() & 1) == 0)
  {
    return 0;
  }

  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  if ((sub_2410DF460() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_2410DF8D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (!v13)
  {
    if (!v15)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *v12 == *v14 && v13 == v15;
  if (!v16 && (sub_2410DF8D0() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v17 = v4[8];
  v18 = a1 + v17;
  v20 = *(a1 + v17);
  v19 = *(v18 + 8);
  v21 = (a2 + v17);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      sub_24108AFBC(v20, *(v18 + 8));
      sub_24108AFBC(v23, v22);
      sub_2410861E4(v20, v19);
      return 1;
    }

    goto LABEL_25;
  }

  if (v22 >> 60 == 15)
  {
LABEL_25:
    sub_24108AFBC(v20, *(v18 + 8));
    sub_24108AFBC(v23, v22);
    sub_2410861E4(v20, v19);
    sub_2410861E4(v23, v22);
    return 0;
  }

  sub_24108AFBC(v20, *(v18 + 8));
  sub_24108AFBC(v23, v22);
  v25 = sub_2410958F8(v20, v19, v23, v22);
  sub_2410861E4(v23, v22);
  sub_2410861E4(v20, v19);
  return v25;
}

unint64_t sub_24108DC90()
{
  result = qword_27E525A18;
  if (!qword_27E525A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525A18);
  }

  return result;
}

uint64_t sub_24108DCE4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E525A38, &qword_2410E1928);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24108DD5C()
{
  result = qword_27E525A48;
  if (!qword_27E525A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525A48);
  }

  return result;
}

uint64_t sub_24108DDB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E525A20, &qword_2410E1920);
    sub_24108E574(a2, 255, type metadata accessor for ATCommunicationMetadata.PersonInformation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24108DE50()
{
  result = qword_27E525A70;
  if (!qword_27E525A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525A70);
  }

  return result;
}

uint64_t sub_24108DEA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F66 && a2 == 0xE600000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6F466562 && a2 == 0xEA00000000006465 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61436F65646976 && a2 == 0xE90000000000006CLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61436F69647561 && a2 == 0xE90000000000006CLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63696E756D6D6F63 && a2 == 0xEB00000000657461 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1952540771 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24108E1E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002410E7B20 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 5;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_24108E3EC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2410DEE20();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2410DEDC0();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_24108E4D4()
{
  result = qword_27E525AA0;
  if (!qword_27E525AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AA0);
  }

  return result;
}

uint64_t sub_24108E574(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24108E65C(uint64_t a1)
{
  sub_2410DEF00();
  if (v1 <= 0x3F)
  {
    type metadata accessor for _CommunicationHandle();
    if (v2 <= 0x3F)
    {
      sub_24108E730(319, &qword_27E525AC0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24108E730(319, &unk_27E525AC8, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24108E730(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2410DF490();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ATCommunicationMetadata.PersonInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATCommunicationMetadata.PersonInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24108E8DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24108E96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24108EAD0()
{
  result = qword_27E525AD8;
  if (!qword_27E525AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AD8);
  }

  return result;
}

unint64_t sub_24108EB28()
{
  result = qword_27E525AE0;
  if (!qword_27E525AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AE0);
  }

  return result;
}

unint64_t sub_24108EB80()
{
  result = qword_27E525AE8;
  if (!qword_27E525AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AE8);
  }

  return result;
}

unint64_t sub_24108EBD8()
{
  result = qword_27E525AF0;
  if (!qword_27E525AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AF0);
  }

  return result;
}

unint64_t sub_24108EC30()
{
  result = qword_27E525AF8;
  if (!qword_27E525AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525AF8);
  }

  return result;
}

unint64_t sub_24108EC88()
{
  result = qword_27E525B00;
  if (!qword_27E525B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B00);
  }

  return result;
}

unint64_t sub_24108ECE0()
{
  result = qword_27E525B08;
  if (!qword_27E525B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B08);
  }

  return result;
}

unint64_t sub_24108ED38()
{
  result = qword_27E525B10;
  if (!qword_27E525B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B10);
  }

  return result;
}

unint64_t sub_24108ED90()
{
  result = qword_27E525B18;
  if (!qword_27E525B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B18);
  }

  return result;
}

unint64_t sub_24108EDE8()
{
  result = qword_27E525B20;
  if (!qword_27E525B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B20);
  }

  return result;
}

unint64_t sub_24108EE40()
{
  result = qword_27E525B28;
  if (!qword_27E525B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B28);
  }

  return result;
}

unint64_t sub_24108EE98()
{
  result = qword_27E525B30;
  if (!qword_27E525B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B30);
  }

  return result;
}

unint64_t sub_24108EEF0()
{
  result = qword_27E525B38;
  if (!qword_27E525B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B38);
  }

  return result;
}

unint64_t sub_24108EF48()
{
  result = qword_27E525B40;
  if (!qword_27E525B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B40);
  }

  return result;
}

unint64_t sub_24108EFA0()
{
  result = qword_27E525B48;
  if (!qword_27E525B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B48);
  }

  return result;
}

unint64_t sub_24108EFF8()
{
  result = qword_27E525B50;
  if (!qword_27E525B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B50);
  }

  return result;
}

unint64_t sub_24108F050()
{
  result = qword_27E525B58;
  if (!qword_27E525B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B58);
  }

  return result;
}

unint64_t sub_24108F0A8()
{
  result = qword_27E525B60;
  if (!qword_27E525B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B60);
  }

  return result;
}

unint64_t sub_24108F100()
{
  result = qword_27E525B68;
  if (!qword_27E525B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B68);
  }

  return result;
}

unint64_t sub_24108F158()
{
  result = qword_27E525B70;
  if (!qword_27E525B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B70);
  }

  return result;
}

unint64_t sub_24108F1B0()
{
  result = qword_27E525B78;
  if (!qword_27E525B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B78);
  }

  return result;
}

unint64_t sub_24108F208()
{
  result = qword_27E525B80;
  if (!qword_27E525B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B80);
  }

  return result;
}

unint64_t sub_24108F260()
{
  result = qword_27E525B88;
  if (!qword_27E525B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B88);
  }

  return result;
}

unint64_t sub_24108F2B8()
{
  result = qword_27E525B90;
  if (!qword_27E525B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B90);
  }

  return result;
}

unint64_t sub_24108F310()
{
  result = qword_27E525B98;
  if (!qword_27E525B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525B98);
  }

  return result;
}

unint64_t sub_24108F368()
{
  result = qword_27E525BA0;
  if (!qword_27E525BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BA0);
  }

  return result;
}

unint64_t sub_24108F3C0()
{
  result = qword_27E525BA8;
  if (!qword_27E525BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BA8);
  }

  return result;
}

unint64_t sub_24108F418()
{
  result = qword_27E525BB0;
  if (!qword_27E525BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BB0);
  }

  return result;
}

unint64_t sub_24108F470()
{
  result = qword_27E525BB8;
  if (!qword_27E525BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BB8);
  }

  return result;
}

uint64_t sub_24108F4C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ATRecipientGroup.debugDescription.getter(__int16 a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_24108F5C4()
{
  result = qword_27E525BD0;
  if (!qword_27E525BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BD0);
  }

  return result;
}

uint64_t sub_24108F618()
{
  sub_2410DF990();
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t sub_24108F68C(uint64_t a1)
{
  sub_2410DF990();
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

_WORD *sub_24108F6D0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 2) = v2;
  return result;
}

uint64_t sub_24108F7A4(uint64_t a1)
{
  if (!*v1)
  {
    return 0xD000000000000019;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_24108F80C()
{
  result = qword_27E525BD8;
  if (!qword_27E525BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525BD8);
  }

  return result;
}

uint64_t ATPayload.clientBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier);

  return v1;
}

id sub_24108F914(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2410DF0A0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ATPayload.clientDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName);

  return v1;
}

uint64_t ATPayload.clientIconData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData);
  sub_24108AFBC(v1, *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8));
  return v1;
}

id sub_24108FA14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_241086284(*v3, *(v3 + 8));
    v7 = sub_2410DEE20();
    sub_2410861E4(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t ATPayload.associatedContentIconData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData);
  sub_24108AFBC(v1, *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8));
  return v1;
}

void *ATPayload.response.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_response);
  v2 = v1;
  return v1;
}

id ATPayload.__allocating_init(requesterDSID:clientBundleIdentifier:clientAdamIdentifier:clientDisplayName:clientIconData:associatedContentIconData:rawRecipientGroup:question:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14)
{
  v22 = objc_allocWithZone(v14);
  *&v22[OBJC_IVAR____TtC9AskToCore9ATPayload_version] = 8;
  v23 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
  *v23 = a1;
  v23[8] = a2 & 1;
  v24 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
  *v25 = a5;
  v25[8] = a6 & 1;
  v26 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
  *v27 = a9;
  *(v27 + 1) = a10;
  v28 = &v22[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
  *v28 = a11;
  *(v28 + 1) = a12;
  *&v22[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup] = a13;
  *&v22[OBJC_IVAR____TtC9AskToCore9ATPayload_question] = a14;
  *&v22[OBJC_IVAR____TtC9AskToCore9ATPayload_response] = 0;
  *&v22[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses] = 0;
  v31.receiver = v22;
  v31.super_class = v14;
  return objc_msgSendSuper2(&v31, sel_init);
}

_BYTE *ATPayload.init(originalPayload:newResponse:)(_BYTE *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D84F90];
  if (*&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses])
  {
    v5 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses];
  }

  v37 = v5;

  v6 = a2;
  MEMORY[0x245CD9740]();
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2410DF2E0();
  }

  sub_2410DF300();
  v35 = v37;
  v32 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
  v33 = v6;
  v31 = a1[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8];
  v7 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8];
  v29 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
  v30 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  v28 = a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8];
  v8 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8];
  v27 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
  v9 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
  v10 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8];
  v11 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
  v12 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8];
  v13 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup];
  v14 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_question];
  v34 = ObjectType;
  v15 = objc_allocWithZone(ObjectType);
  *&v15[OBJC_IVAR____TtC9AskToCore9ATPayload_version] = 8;
  v16 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
  *v16 = v32;
  v16[8] = v31;
  v17 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  *v17 = v30;
  *(v17 + 1) = v7;
  v18 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
  *v18 = v29;
  v18[8] = v28;
  v19 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
  *v19 = v27;
  *(v19 + 1) = v8;
  v20 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
  *v20 = v9;
  v20[1] = v10;
  v21 = &v15[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
  *v21 = v11;
  v21[1] = v12;
  *&v15[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup] = v13;
  *&v15[OBJC_IVAR____TtC9AskToCore9ATPayload_question] = v14;
  *&v15[OBJC_IVAR____TtC9AskToCore9ATPayload_response] = v33;
  *&v15[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses] = v35;
  sub_24108AFBC(v9, v10);
  sub_24108AFBC(v11, v12);
  v22 = v14;
  v23 = v33;
  sub_24108AFBC(v9, v10);
  sub_24108AFBC(v11, v12);
  v36.receiver = v15;
  v36.super_class = v34;
  v24 = v22;

  v25 = objc_msgSendSuper2(&v36, sel_init);

  sub_2410861E4(v11, v12);
  sub_2410861E4(v9, v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

id ATPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_241090248(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v32 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_version];
  v31 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
  v30 = a1[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8];
  v3 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8];
  v33 = ObjectType;
  v28 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
  v29 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  v27 = a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8];
  v25 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8];
  v26 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
  v4 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
  v5 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8];
  v6 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
  v7 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8];
  v24 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup];
  v8 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_question];
  v9 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_response];
  v10 = *&a1[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses];
  v11 = objc_allocWithZone(ObjectType);
  *&v11[OBJC_IVAR____TtC9AskToCore9ATPayload_version] = v32;
  v12 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
  *v12 = v31;
  v12[8] = v30;
  v13 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  *v13 = v29;
  *(v13 + 1) = v3;
  v14 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
  *v14 = v28;
  v14[8] = v27;
  v15 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
  *v15 = v26;
  *(v15 + 1) = v25;
  v16 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
  *v16 = v4;
  v16[1] = v5;
  v17 = &v11[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
  *v17 = v6;
  v17[1] = v7;
  *&v11[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup] = v24;
  *&v11[OBJC_IVAR____TtC9AskToCore9ATPayload_question] = v8;
  *&v11[OBJC_IVAR____TtC9AskToCore9ATPayload_response] = v9;
  *&v11[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses] = v10;
  sub_24108AFBC(v4, v5);
  sub_24108AFBC(v6, v7);
  v18 = v9;
  v19 = v8;
  sub_24108AFBC(v4, v5);
  sub_24108AFBC(v6, v7);
  v34.receiver = v11;
  v34.super_class = v33;
  v20 = v19;
  v21 = v18;

  v22 = objc_msgSendSuper2(&v34, sel_init);

  sub_2410861E4(v6, v7);
  sub_2410861E4(v4, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

id ATPayload.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  result = [objc_allocWithZone(ObjectType) initWithCopying_];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

unint64_t sub_2410907CC()
{
  swift_getObjectType();
  v16 = v0;
  v2 = sub_2410823C4(MEMORY[0x277D84F90]);
  v3 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_version);
  v15 = MEMORY[0x277D84958];
  LOWORD(v14) = v3;
  sub_2410824F4(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24108212C(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  sub_2410DEBF0();
  swift_allocObject();
  sub_2410DEBE0();
  sub_2410967EC(&qword_27E525830, v5, type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  v6 = sub_2410DEBD0();
  if (v1)
  {

    sub_2410968D4();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v15 = MEMORY[0x277CC9318];
    *&v14 = v6;
    *(&v14 + 1) = v7;
    v10 = v6;
    v11 = v7;
    sub_2410824F4(&v14, v13);
    sub_241086284(v10, v11);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_24108212C(v13, 1635017060, 0xE400000000000000, v12);

    sub_2410861F8(v10, v11);
    return v2;
  }
}

id ATPayload.__allocating_init(dictionaryRepresentation:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(v1);
  v3 = sub_2410DF040();

  v8[0] = 0;
  v4 = [v2 initWithDictionaryRepresentation:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2410DEDC0();

    swift_willThrow();
  }

  return v4;
}

char *ATPayload.init(dictionaryRepresentation:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_241090B1C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

char *sub_241090B1C(uint64_t a1)
{
  if (!*(a1 + 16) || (v3 = v1, v5 = sub_2410D81D4(0x6E6F6973726576, 0xE700000000000000), (v6 & 1) == 0) || (sub_2410867A4(*(a1 + 56) + 32 * v5, v50), !swift_dynamicCast()))
  {
    if (qword_27E525470 != -1)
    {
      swift_once();
    }

    v22 = sub_2410DEFE0();
    __swift_project_value_buffer(v22, qword_27E530370);

    v23 = sub_2410DEFC0();
    v24 = sub_2410DF3F0();

    if (os_log_type_enabled(v23, v24))
    {
      v3 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50[0] = v25;
      *v3 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CB0, &qword_2410E1758);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525D30, &qword_2410E2A18);
      v26 = sub_2410DF110();
      v28 = sub_241085208(v26, v27, v50);

      *(v3 + 4) = v28;
      *(v3 + 6) = 2080;
      *(v3 + 14) = sub_241085208(0x6E6F6973726576, 0xE700000000000000, v50);
      *(v3 + 11) = 2080;
      v29 = sub_2410DF060();
      v31 = v30;

      v32 = sub_241085208(v29, v31, v50);

      *(v3 + 3) = v32;
      _os_log_impl(&dword_24107E000, v23, v24, "Failed %s init. Could not find required value for key %s in dictionary: %s", v3, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDA690](v25, -1, -1);
      MEMORY[0x245CDA690](v3, -1, -1);
    }

    else
    {
    }

    sub_2410968D4();
    swift_allocError();
    v34 = xmmword_2410E27E0;
    goto LABEL_19;
  }

  if (qword_27E525470 != -1)
  {
    swift_once();
  }

  v7 = sub_2410DEFE0();
  __swift_project_value_buffer(v7, qword_27E530370);

  v8 = sub_2410DEFC0();
  v9 = sub_2410DF400();

  if (os_log_type_enabled(v8, v9))
  {
    v47 = v48;
    v10 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v50[0] = v51;
    *v10 = 136315650;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CB0, &qword_2410E1758);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525D30, &qword_2410E2A18);
    v11 = sub_2410DF110();
    v13 = sub_241085208(v11, v12, v50);

    *(v10 + 4) = v13;
    *(v10 + 12) = 512;
    *(v10 + 14) = v47;
    *(v10 + 16) = 2080;
    v14 = sub_2410DF060();
    v16 = sub_241085208(v14, v15, v50);

    *(v10 + 18) = v16;
    _os_log_impl(&dword_24107E000, v8, v9, "Creating %s with dictionary. Had version %hd. dictionary: %s", v10, 0x1Au);
    v17 = v51;
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v17, -1, -1);
    MEMORY[0x245CDA690](v10, -1, -1);
  }

  if (!*(a1 + 16) || (v18 = sub_2410D81D4(1635017060, 0xE400000000000000), (v19 & 1) == 0) || (sub_2410867A4(*(a1 + 56) + 32 * v18, v50), !swift_dynamicCast()))
  {

    v36 = sub_2410DEFC0();
    v37 = sub_2410DF3F0();

    if (os_log_type_enabled(v36, v37))
    {
      v3 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50[0] = v38;
      *v3 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CB0, &qword_2410E1758);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525D30, &qword_2410E2A18);
      v39 = sub_2410DF110();
      v41 = sub_241085208(v39, v40, v50);

      *(v3 + 4) = v41;
      *(v3 + 6) = 2080;
      *(v3 + 14) = sub_241085208(1635017060, 0xE400000000000000, v50);
      *(v3 + 11) = 2080;
      v42 = sub_2410DF060();
      v44 = v43;

      v45 = sub_241085208(v42, v44, v50);

      *(v3 + 3) = v45;
      _os_log_impl(&dword_24107E000, v36, v37, "Failed %s init. Could not find required value for key %s in dictionary: %s", v3, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDA690](v38, -1, -1);
      MEMORY[0x245CDA690](v3, -1, -1);
    }

    else
    {
    }

    sub_2410968D4();
    swift_allocError();
    v34 = xmmword_2410E27D0;
LABEL_19:
    *v33 = v34;
    *(v33 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  sub_2410DEB90();
  swift_allocObject();
  sub_2410DEB80();
  sub_2410967EC(&unk_27E525C50, v20, type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_2410DEB70();
  if (v2)
  {
    sub_2410968D4();
    swift_allocError();
    *v21 = v2;
    *(v21 + 8) = 0;
    *(v21 + 16) = 2;
    swift_willThrow();

    sub_2410861F8(v48, v49);
  }

  else
  {
    v46 = v50[0];
    v3 = [objc_allocWithZone(v3) initWithCopying_];

    sub_2410861F8(v48, v49);
  }

  return v3;
}

id ATPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ATPayload.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v9 = sub_24108E3EC(v5, v7);
    sub_2410861F8(v5, v7);
    sub_2410967EC(&unk_27E525C50, v12, type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
    sub_2410DF420();
    if (v15)
    {
      v13 = [v1 initWithCopying_];

      [v9 finishDecoding];
      return v13;
    }

    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v14 = sub_2410DF480();
    sub_2410DEFB0();

    [v9 finishDecoding];
  }

  else
  {
    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    sub_2410DEFB0();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATPayload.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410967EC(&qword_27E525830, v3, type metadata accessor for ATPayload, &protocol conformance descriptor for ATPayload);
  sub_2410DF410();
  [v2 finishEncoding];
  v4 = [v2 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24109199C(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x6574736575716572;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6349746E65696C63;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6E6F697473657571;
      break;
    case 10:
      result = 0x65736E6F70736572;
      break;
    case 11:
      result = 0x6F707365526C6C61;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x476567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_241091B60(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24109199C(*a1);
  v5 = v4;
  if (v3 == sub_24109199C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2410DF8D0();
  }

  return v8 & 1;
}

uint64_t sub_241091BE8()
{
  v1 = *v0;
  sub_2410DF990();
  sub_24109199C(v1);
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_241091C4C(uint64_t a1)
{
  sub_24109199C(*v1);
  sub_2410DF150();
}

uint64_t sub_241091CA0(uint64_t a1)
{
  v2 = *v1;
  sub_2410DF990();
  sub_24109199C(v2);
  sub_2410DF150();

  return sub_2410DF9F0();
}

unint64_t sub_241091D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241095A84(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_241091D30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24109199C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_241091D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_241095A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241091DAC(uint64_t a1)
{
  v2 = sub_2410961E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241091DE8(uint64_t a1)
{
  v2 = sub_2410961E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525C60, &qword_2410E27F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410961E0();
  sub_2410DFA20();
  LOBYTE(v14) = 0;
  sub_2410DF840();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_2410DF7C0();
    LOBYTE(v14) = 3;
    sub_2410DF7A0();
    LOBYTE(v14) = 4;
    sub_2410DF7F0();
    LOBYTE(v14) = 5;
    sub_2410DF7A0();
    v9 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8);
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData);
    v15 = v9;
    v13 = 6;
    sub_24108AFBC(v14, v9);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v14, v15);
    v10 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8);
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData);
    v15 = v10;
    v13 = 7;
    sub_24108AFBC(v14, v10);
    sub_2410DF7D0();
    sub_2410861E4(v14, v15);
    LOBYTE(v14) = 8;
    sub_2410DF840();
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_question);
    v13 = 9;
    type metadata accessor for ATQuestion(0);
    sub_2410967EC(&qword_27E526540, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    sub_2410DF830();
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_response);
    v13 = 10;
    type metadata accessor for ATResponse();
    sub_2410967EC(&qword_27E525C80, 255, type metadata accessor for ATResponse, &protocol conformance descriptor for ATResponse);
    sub_2410DF7D0();
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses);
    v13 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525C88, &qword_2410E27F8);
    sub_241096834(&unk_27E525C90, &qword_27E525C80, &protocol conformance descriptor for ATResponse, MEMORY[0x277D83948]);
    sub_2410DF7D0();
    LOWORD(v14) = 0;
    v13 = 12;
    sub_241080B74();
    sub_2410DF830();
    LOBYTE(v14) = 13;
    sub_2410DF800();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_24109234C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_241095AD0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ATPayload.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_241096234(a1, v27);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_version) != *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_version])
      {
        goto LABEL_31;
      }

      if (*(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8))
      {
        if ((v26[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8] & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((v26[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8] & 1) != 0 || *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID) != *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID])
      {
        goto LABEL_31;
      }

      v4 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8);
      v5 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8];
      if (v4)
      {
        if (!v5)
        {
          goto LABEL_31;
        }

        v6 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier) == *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier] && v4 == v5;
        if (!v6 && (sub_2410DF8D0() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v5)
      {
        goto LABEL_31;
      }

      if (*(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8))
      {
        if ((v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8] & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8] & 1) != 0 || *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier) != *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier])
      {
        goto LABEL_31;
      }

      v7 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8);
      v8 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8];
      if (v7)
      {
        if (!v8 || (*(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName) != *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName] || v7 != v8) && (sub_2410DF8D0() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v8)
      {
        goto LABEL_31;
      }

      v12 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData);
      v11 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8);
      v14 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
      v13 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8];
      if (v11 >> 60 == 15)
      {
        if (v13 >> 60 != 15)
        {
          goto LABEL_43;
        }

        sub_24108AFBC(*&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData], *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8]);
        sub_24108AFBC(v12, v11);
        sub_2410861E4(v12, v11);
      }

      else
      {
        if (v13 >> 60 == 15)
        {
          goto LABEL_43;
        }

        sub_24108AFBC(*&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData], *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8]);
        sub_24108AFBC(v14, v13);
        sub_24108AFBC(v12, v11);
        v15 = sub_2410958F8(v12, v11, v14, v13);
        sub_2410861E4(v14, v13);
        sub_2410861E4(v14, v13);
        sub_2410861E4(v12, v11);
        if (!v15)
        {
          goto LABEL_31;
        }
      }

      v12 = *(v2 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData);
      v11 = *(v2 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8);
      v14 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
      v13 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8];
      if (v11 >> 60 == 15)
      {
        if (v13 >> 60 == 15)
        {
          sub_24108AFBC(*&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData], *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8]);
          sub_24108AFBC(v12, v11);
          sub_2410861E4(v12, v11);
LABEL_45:
          if (*(v2 + OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup) != *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup])
          {
            goto LABEL_31;
          }

          sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
          v17 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_question];
          v18 = sub_2410DF460();

          if ((v18 & 1) == 0)
          {
            goto LABEL_31;
          }

          v19 = *(v2 + OBJC_IVAR____TtC9AskToCore9ATPayload_response);
          v20 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_response];
          if (v19)
          {
            if (!v20)
            {
              goto LABEL_31;
            }

            type metadata accessor for ATResponse();
            v21 = v20;
            v22 = v19;
            v23 = sub_2410DF460();

            if ((v23 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_52:
            v24 = *(v2 + OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses);
            v25 = *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses];
            if (!v24)
            {

              if (!v25)
              {
                v9 = 1;
                return v9 & 1;
              }

              goto LABEL_32;
            }

            if (v25)
            {

              v9 = sub_24109375C(v24, v25, type metadata accessor for ATResponse);

              return v9 & 1;
            }

            goto LABEL_31;
          }

          if (!v20)
          {
            goto LABEL_52;
          }

LABEL_31:

          goto LABEL_32;
        }
      }

      else if (v13 >> 60 != 15)
      {
        sub_24108AFBC(*&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData], *&v26[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8]);
        sub_24108AFBC(v14, v13);
        sub_24108AFBC(v12, v11);
        v16 = sub_2410958F8(v12, v11, v14, v13);
        sub_2410861E4(v14, v13);
        sub_2410861E4(v14, v13);
        sub_2410861E4(v12, v11);
        if (!v16)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_43:
      sub_24108AFBC(v14, v13);
      sub_24108AFBC(v12, v11);

      sub_2410861E4(v12, v11);
      sub_2410861E4(v14, v13);
    }
  }

  else
  {
    sub_241086184(v27, &unk_27E525CA0, "P?");
  }

LABEL_32:
  v9 = 0;
  return v9 & 1;
}

uint64_t ATPayload.hash.getter()
{
  v1 = v0;
  sub_2410DFA00();
  sub_2410DF9C0();
  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID + 8) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID);
    sub_2410DF9B0();
    MEMORY[0x245CD9E40](v2);
  }

  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8))
  {
    sub_2410DF9B0();
    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier + 8) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier);
    sub_2410DF9B0();
    MEMORY[0x245CD9E70](v3);
  }

  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8))
  {
    sub_2410DF9B0();
    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8) >> 60 == 15)
  {
    sub_2410DF9B0();
  }

  else
  {
    sub_2410DF9B0();
    sub_2410DEE50();
  }

  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8) >> 60 == 15)
  {
    sub_2410DF9B0();
  }

  else
  {
    sub_2410DF9B0();
    sub_2410DEE50();
  }

  sub_2410DF9C0();
  sub_2410DF470();
  v4 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_response);
  sub_2410DF9B0();
  if (v4)
  {
    v5 = v4;
    sub_2410DF470();
  }

  v6 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses);
  sub_2410DF9B0();
  if (v6)
  {
    sub_241094098(v8, v6);
  }

  return sub_2410DF9E0();
}

uint64_t ATPayload.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_2410DF570();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CB0, &qword_2410E1758);
  v3 = sub_2410DF110();
  MEMORY[0x245CD9620](v3);

  MEMORY[0x245CD9620](0x737265760A7B203ALL, 0xED0000203A6E6F69);
  v4 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v4);

  MEMORY[0x245CD9620](0xD000000000000010, 0x80000002410E7C50);
  v5 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v5);

  MEMORY[0x245CD9620](0xD000000000000019, 0x80000002410E7C70);
  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier);
    v7 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8);
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x245CD9620](v6, v7);

  MEMORY[0x245CD9620](0xD000000000000017, 0x80000002410E7C90);
  v8 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v8);

  MEMORY[0x245CD9620](0xD000000000000014, 0x80000002410E7CB0);
  if (*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8))
  {
    v9 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName);
    v10 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName + 8);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x245CD9620](v9, v10);

  result = MEMORY[0x245CD9620](0xD000000000000011, 0x80000002410E7CD0);
  v12 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData + 8);
  if (v12 >> 60 == 15)
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
    goto LABEL_18;
  }

  v15 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData);
  v16 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_17;
    }

    v17 = v15 + 16;
    v15 = *(v15 + 16);
    if (!__OFSUB__(*(v17 + 8), v15))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_17;
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  v18 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v18);

  v14 = 0;
  v13 = 0xE000000000000000;
LABEL_18:
  MEMORY[0x245CD9620](v14, v13);

  result = MEMORY[0x245CD9620](0xD00000000000001CLL, 0x80000002410E7CF0);
  v19 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData + 8);
  if (v19 >> 60 != 15)
  {
    v22 = *(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData);
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_28;
      }

      v24 = v22 + 16;
      v22 = *(v22 + 16);
      if (!__OFSUB__(*(v24 + 8), v22))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v23)
    {
      goto LABEL_28;
    }

    if (!__OFSUB__(HIDWORD(v22), v22))
    {
LABEL_28:
      v25 = sub_2410DF8A0();
      MEMORY[0x245CD9620](v25);

      v21 = 0;
      v20 = 0xE000000000000000;
      goto LABEL_29;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  v20 = 0xE300000000000000;
  v21 = 7104878;
LABEL_29:
  MEMORY[0x245CD9620](v21, v20);

  MEMORY[0x245CD9620](0xD000000000000014, 0x80000002410E7D10);
  v26 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v26);

  MEMORY[0x245CD9620](0x6F6974736575710ALL, 0xEB00000000203A6ELL);
  v27 = [*(v0 + OBJC_IVAR____TtC9AskToCore9ATPayload_question) description];
  v28 = sub_2410DF0C0();
  v30 = v29;

  MEMORY[0x245CD9620](v28, v30);

  MEMORY[0x245CD9620](0x736E6F707365720ALL, 0xEB00000000203A65);
  if (*(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_response))
  {
    v2 = ATResponse.description.getter();
    v32 = v31;
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  MEMORY[0x245CD9620](v2, v32);

  MEMORY[0x245CD9620](0x707365526C6C610ALL, 0xEF203A7365736E6FLL);
  v33 = *(v1 + OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v35 = type metadata accessor for ATResponse();

  v36 = MEMORY[0x245CD9770](v34, v35);
  v38 = v37;

  MEMORY[0x245CD9620](v36, v38);

  MEMORY[0x245CD9620](32010, 0xE200000000000000);
  return 0;
}

id ATCommunicationMetadata.resizedForMessageSend()()
{
  ObjectType = swift_getObjectType();
  v61 = sub_2410DEF00();
  v2 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v46 = v0;
  v12 = *(v0 + v11);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v45 = ObjectType;
    v63[0] = MEMORY[0x277D84F90];

    sub_241093D70(0, v13, 0);
    v14 = v63[0];
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v44[1] = v12;
    v53 = v15;
    v16 = v12 + v15;
    v52 = *(v5 + 72);
    v51 = (v2 + 16);
    v50 = (v2 + 32);
    v49 = xmmword_2410E1830;
    v48 = vdupq_n_s64(0x4059000000000000uLL);
    v47 = vdupq_n_s64(0x4049000000000000uLL);
    while (1)
    {
      sub_24108BCCC(v16, v8);
      (*v51)(v60, v8, v61);
      v17 = *&v8[v4[5]];
      v18 = &v8[v4[6]];
      v19 = *(v18 + 1);
      v57 = *v18;
      v20 = v4[8];
      v21 = &v8[v4[7]];
      v22 = *(v21 + 1);
      v55 = *v21;
      v24 = *&v8[v20];
      v23 = *&v8[v20 + 8];
      v56 = v22;

      v54 = v17;
      v58 = v19;

      v59 = v14;
      if (v23 >> 60 == 15)
      {
        goto LABEL_8;
      }

      sub_24108AFBC(v24, v23);
      v25 = sub_2410DEE20();
      v26 = CGImageSourceCreateWithData(v25, 0);

      if (!v26)
      {
        break;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v26, 0, 0);
      sub_2410861E4(v24, v23);

      if (!ImageAtIndex)
      {
        goto LABEL_8;
      }

      v64[0] = v48;
      v64[1] = v47;
      v65 = 20480;
      v28 = sub_241094188(ImageAtIndex, v64, 0.8);
      v30 = v29;

LABEL_9:
      sub_24108BD30(v8);
      v31 = &v10[v4[6]];
      v32 = &v10[v4[7]];
      v33 = &v10[v4[8]];
      *v33 = v49;
      (*v50)(v10, v60, v61);
      *&v10[v4[5]] = v54;
      v34 = v58;
      *v31 = v57;
      *(v31 + 1) = v34;
      v35 = v56;
      *v32 = v55;
      *(v32 + 1) = v35;
      sub_2410861E4(*v33, *(v33 + 1));
      *v33 = v28;
      *(v33 + 1) = v30;
      v14 = v59;
      v63[0] = v59;
      v37 = *(v59 + 16);
      v36 = *(v59 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_241093D70((v36 > 1), v37 + 1, 1);
        v14 = v63[0];
      }

      *(v14 + 16) = v37 + 1;
      v38 = v52;
      sub_2410962A4(v10, v14 + v53 + v37 * v52);
      v16 += v38;
      if (!--v13)
      {

        ObjectType = v45;
        goto LABEL_13;
      }
    }

    sub_2410861E4(v24, v23);
LABEL_8:
    v28 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_9;
  }

LABEL_13:
  v39 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions;
  v40 = v46;
  swift_beginAccess();
  v41 = *(v40 + v39);
  v42 = objc_allocWithZone(ObjectType);
  *&v42[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation] = v14;
  *&v42[OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions] = v41;
  v62.receiver = v42;
  v62.super_class = ObjectType;

  return objc_msgSendSuper2(&v62, sel_init);
}

uint64_t sub_24109375C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x245CD9A20](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x245CD9A20](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_2410DF460();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_2410DF460();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_2410DF620();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_2410DF620();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_2410939B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2410DECC0();
    if (v10)
    {
      v11 = sub_2410DECE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2410DECD0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2410DECC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2410DECE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2410DECD0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_241093BE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_241095840(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2410861F8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2410939B0(v13, a3, a4, &v12);
  v10 = v4;
  sub_2410861F8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_241093D70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241093DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241093D90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241093F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_241093DB0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CF0, &qword_2410E2A08);
  v10 = *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) - 8);
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
  v15 = *(type metadata accessor for ATCommunicationMetadata.PersonInformation(0) - 8);
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

char *sub_241093F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
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

void sub_241094098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2410DF620();
    MEMORY[0x245CD9E40](v8);
    v3 = sub_2410DF620();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x245CD9E40](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x245CD9A20](i, a2);
      sub_2410DF470();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_2410DF470();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_241094188(CGImage *a1, uint64_t a2, double a3)
{
  if (qword_27E5254A8 != -1)
  {
    swift_once();
  }

  v6 = sub_2410DEFE0();
  __swift_project_value_buffer(v6, qword_27E530418);
  v7 = sub_2410DEFC0();
  v8 = sub_2410DF3D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = *(a2 + 32);
    *(v9 + 4) = v10;
    _os_log_impl(&dword_24107E000, v7, v8, "Processing single image with budget %ld bytes", v9, 0xCu);
    MEMORY[0x245CDA690](v9, -1, -1);
  }

  else
  {

    v10 = *(a2 + 32);
  }

  v11 = sub_24109444C(a1, v10, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a3);
  v13 = v11;
  v14 = v12;
  if (v12 >> 60 == 15)
  {
    v15 = sub_2410DEFC0();
    v16 = sub_2410DF3F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24107E000, v15, v16, "Failed to process single image, returning nil", v17, 2u);
      MEMORY[0x245CDA690](v17, -1, -1);

      sub_2410861E4(v13, v14);
    }

    else
    {
    }

    return 0;
  }

  sub_241086284(v11, v12);
  v18 = sub_2410DEFC0();
  v19 = sub_2410DF3D0();
  if (!os_log_type_enabled(v18, v19))
  {
    sub_2410861E4(v13, v14);
LABEL_24:

    return v13;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v21 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_23;
    }

    v24 = *(v13 + 16);
    v23 = *(v13 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(v14);
LABEL_23:
    *(result + 4) = v22;
    v26 = result;
    sub_2410861E4(v13, v14);
    _os_log_impl(&dword_24107E000, v18, v19, "Successfully processed single image (%ld bytes)", v26, 0xCu);
    MEMORY[0x245CDA690](v26, -1, -1);
    goto LABEL_24;
  }

  LODWORD(v22) = HIDWORD(v13) - v13;
  if (!__OFSUB__(HIDWORD(v13), v13))
  {
    v22 = v22;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_24109444C(CGImage *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (qword_27E5254A8 != -1)
  {
LABEL_119:
    swift_once();
  }

  v14 = sub_2410DEFE0();
  __swift_project_value_buffer(v14, qword_27E530418);
  v15 = sub_2410DEFC0();
  v16 = sub_2410DF3E0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = Width;
    result = swift_slowAlloc();
    *result = 134219008;
    if (Width <= -9.22337204e18)
    {
LABEL_121:
      __break(1u);
    }

    else if (v17 < 9.22337204e18)
    {
      v19 = Height;
      *(result + 4) = v17;
      *(result + 12) = 2048;
      if (Height > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          *(result + 14) = v19;
          *(result + 22) = 2048;
          if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (a3 > -9.22337204e18)
            {
              if (a3 < 9.22337204e18)
              {
                *(result + 24) = a3;
                *(result + 32) = 2048;
                if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (a4 > -9.22337204e18)
                  {
                    if (a4 < 9.22337204e18)
                    {
                      *(result + 34) = a4;
                      *(result + 42) = 2048;
                      *(result + 44) = a2;
                      v20 = v16;
                      v21 = result;
                      _os_log_impl(&dword_24107E000, v15, v20, "Processing image: %ld×%ld → target: %ld×%ld, budget: %ld bytes", result, 0x34u);
                      MEMORY[0x245CDA690](v21, -1, -1);
                      goto LABEL_14;
                    }

LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_123;
  }

LABEL_14:

  v22 = sub_241094FF4(a2, a1, a3, a4, a7);
  if (v23 >> 60 != 15)
  {
    Height = v22;
    v27 = v23;
    sub_241086284(v22, v23);
    v50 = sub_2410DEFC0();
    v51 = sub_2410DF3E0();
    if (!os_log_type_enabled(v50, v51))
    {
      sub_2410861E4(Height, v27);
LABEL_85:

      return Height;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v53 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v53 == 2)
      {
        v74 = *(Height + 16);
        v73 = *(Height + 24);
        v48 = __OFSUB__(v73, v74);
        v54 = v73 - v74;
        if (v48)
        {
          __break(1u);
          goto LABEL_76;
        }
      }

      else
      {
        v54 = 0;
      }

      goto LABEL_84;
    }

    if (!v53)
    {
      v54 = BYTE6(v27);
LABEL_84:
      *(result + 4) = v54;
      v77 = result;
      sub_2410861E4(Height, v27);
      _os_log_impl(&dword_24107E000, v50, v51, "Image processed successfully at ideal size (%ld bytes)", v77, 0xCu);
      MEMORY[0x245CDA690](v77, -1, -1);
      goto LABEL_85;
    }

    LODWORD(v54) = HIDWORD(Height) - Height;
    if (!__OFSUB__(HIDWORD(Height), Height))
    {
      v54 = v54;
      goto LABEL_84;
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v24 = sub_2410DEFC0();
  v25 = sub_2410DF3E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24107E000, v24, v25, "Ideal size exceeded budget, using binary search", v26, 2u);
    MEMORY[0x245CDA690](v26, -1, -1);
  }

  Height = 0;
  v27 = 0xF000000000000000;
  v28 = 1.0;
  v83 = 0.0;
  v29 = 1;
  Width = 2048;
  v30 = 0.5;
  do
  {
    v34 = v27;
    v35 = Height;
    v33 = (v28 + v30) * 0.5;
    v36 = a3;
    if (v33 * a3 < a5)
    {
      v37 = a5;
    }

    else
    {
      v37 = v33 * a3;
    }

    a3 = a4;
    if (v33 * a4 < a6)
    {
      a4 = a6;
    }

    else
    {
      a4 = v33 * a4;
    }

    v38 = sub_241094FF4(a2, a1, v37, a4, a7);
    if (v39 >> 60 == 15)
    {
      v40 = sub_2410DEFC0();
      v41 = sub_2410DF3E0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134218496;
        *(v42 + 4) = v29;
        *(v42 + 12) = 2048;
        if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
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
          goto LABEL_119;
        }

        if (v37 <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (v37 >= 9.22337204e18)
        {
          goto LABEL_111;
        }

        *(v42 + 14) = v37;
        *(v42 + 22) = 2048;
        if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_114;
        }

        if (a4 <= -9.22337204e18)
        {
          goto LABEL_116;
        }

        if (a4 >= 9.22337204e18)
        {
          goto LABEL_117;
        }

        *(v42 + 24) = a4;
        v31 = v41;
        v32 = v42;
        _os_log_impl(&dword_24107E000, v40, v31, "Binary search iteration %ld: size %ld×%ld failed", v42, 0x20u);
        MEMORY[0x245CDA690](v32, -1, -1);
      }

      v28 = (v28 + v30) * 0.5;
      v33 = v30;
      v27 = v34;
      goto LABEL_20;
    }

    Height = v38;
    v27 = v39;
    sub_2410861E4(v35, v34);
    sub_241086284(Height, v27);
    v40 = sub_2410DEFC0();
    v43 = sub_2410DF3E0();
    if (!os_log_type_enabled(v40, v43))
    {
      sub_2410861E4(Height, v27);
      v83 = (v28 + v30) * 0.5;
LABEL_20:
      a4 = a3;
      a3 = v36;
      goto LABEL_21;
    }

    result = swift_slowAlloc();
    *result = 134218752;
    *(result + 4) = v29;
    *(result + 12) = 2048;
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_108;
    }

    if (v37 <= -9.22337204e18)
    {
      goto LABEL_110;
    }

    if (v37 >= 9.22337204e18)
    {
      goto LABEL_112;
    }

    *(result + 14) = v37;
    *(result + 22) = 2048;
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_113;
    }

    if (a4 <= -9.22337204e18)
    {
      goto LABEL_115;
    }

    if (a4 >= 9.22337204e18)
    {
      goto LABEL_118;
    }

    *(result + 24) = a4;
    *(result + 32) = 2048;
    v44 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      a4 = a3;
      if (v44 == 2)
      {
        v47 = *(Height + 16);
        v46 = *(Height + 24);
        v48 = __OFSUB__(v46, v47);
        v45 = v46 - v47;
        if (v48)
        {
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      a4 = a3;
      if (v44)
      {
        LODWORD(v45) = HIDWORD(Height) - Height;
        if (__OFSUB__(HIDWORD(Height), Height))
        {
          goto LABEL_120;
        }

        a3 = v36;
        v45 = v45;
        goto LABEL_56;
      }

      v45 = BYTE6(v27);
    }

    a3 = v36;
LABEL_56:
    *(result + 34) = v45;
    v49 = result;
    sub_2410861E4(Height, v27);
    _os_log_impl(&dword_24107E000, v40, v43, "Binary search iteration %ld: size %ld×%ld succeeded (%ld bytes)", v49, 0x2Au);
    MEMORY[0x245CDA690](v49, -1, -1);
    v83 = (v28 + v30) * 0.5;
LABEL_21:

    ++v29;
    v30 = v33;
  }

  while (v29 != 6);
  if (v27 >> 60 != 15)
  {
    sub_24108AFBC(Height, v27);
    sub_241086284(Height, v27);
    v61 = sub_2410DEFC0();
    v62 = sub_2410DF3E0();
    if (!os_log_type_enabled(v61, v62))
    {
      sub_2410861E4(Height, v27);
      sub_2410861E4(Height, v27);

      return Height;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v86 = v64;
    *v63 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v65 = swift_allocObject();
    v66 = MEMORY[0x277D839F8];
    *(v65 + 16) = xmmword_2410E13A0;
    v67 = MEMORY[0x277D83A80];
    *(v65 + 56) = v66;
    *(v65 + 64) = v67;
    *(v65 + 32) = v83 * 100.0;
    v68 = sub_2410DF0E0();
    v70 = sub_241085208(v68, v69, &v86);

    *(v63 + 4) = v70;
    *(v63 + 12) = 2048;
    v71 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v71 != 2)
      {
        goto LABEL_100;
      }

      v79 = *(Height + 16);
      v78 = *(Height + 24);
      sub_2410861E4(Height, v27);
      v72 = v78 - v79;
      if (__OFSUB__(v78, v79))
      {
        __break(1u);
        goto LABEL_93;
      }

      goto LABEL_101;
    }

    if (!v71)
    {
      sub_2410861E4(Height, v27);
      v72 = BYTE6(v27);
      goto LABEL_101;
    }

    result = sub_2410861E4(Height, v27);
    LODWORD(v72) = HIDWORD(Height) - Height;
    if (!__OFSUB__(HIDWORD(Height), Height))
    {
      v72 = v72;
      goto LABEL_101;
    }

    goto LABEL_132;
  }

  v55 = sub_2410DEFC0();
  v56 = sub_2410DF3F0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_24107E000, v55, v56, "Binary search failed, trying minimum size fallback", v57, 2u);
    MEMORY[0x245CDA690](v57, -1, -1);
  }

  result = sub_241094FF4(a2, a1, a5, a6, a7);
  if (v52 >> 60 == 15)
  {
    v58 = sub_2410DEFC0();
    v59 = sub_2410DF3F0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_24107E000, v58, v59, "All processing approaches failed", v60, 2u);
      MEMORY[0x245CDA690](v60, -1, -1);

      sub_2410861E4(Height, v27);
    }

    else
    {
      sub_2410861E4(Height, v27);
    }

    return 0;
  }

LABEL_76:
  v63 = result;
  v62 = v52;
  sub_241086284(result, v52);
  v61 = sub_2410DEFC0();
  v64 = sub_2410DF3E0();
  if (!os_log_type_enabled(v61, v64))
  {
LABEL_93:
    sub_2410861E4(Height, v27);
    sub_2410861E4(v63, v62);

    return v63;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v75 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v75 == 2)
    {
      v81 = *(v63 + 16);
      v80 = *(v63 + 24);
      v48 = __OFSUB__(v80, v81);
      v76 = v80 - v81;
      if (v48)
      {
        __break(1u);
LABEL_100:
        sub_2410861E4(Height, v27);
        v72 = 0;
LABEL_101:
        *(v63 + 14) = v72;
        sub_2410861E4(Height, v27);
        _os_log_impl(&dword_24107E000, v61, v62, "Binary search completed: using %s%% of ideal size (%ld bytes)", v63, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x245CDA690](v64, -1, -1);
        MEMORY[0x245CDA690](v63, -1, -1);

        return Height;
      }
    }

    else
    {
      v76 = 0;
    }

LABEL_105:
    *(result + 4) = v76;
    v82 = result;
    sub_2410861E4(v63, v62);
    _os_log_impl(&dword_24107E000, v61, v64, "Minimum size fallback succeeded (%ld bytes)", v82, 0xCu);
    MEMORY[0x245CDA690](v82, -1, -1);

    sub_2410861E4(Height, v27);
    return v63;
  }

  if (!v75)
  {
    v76 = BYTE6(v62);
    goto LABEL_105;
  }

  LODWORD(v76) = HIDWORD(v63) - v63;
  if (!__OFSUB__(HIDWORD(v63), v63))
  {
    v76 = v76;
    goto LABEL_105;
  }

LABEL_133:
  __break(1u);
  return result;
}