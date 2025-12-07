uint64_t sub_2707C62D0()
{
  v1 = [v0 allPresses];
  sub_2707C6434(0, &qword_280837600, 0x277D758B8);
  sub_2707C63F0(&qword_280837630, &qword_280837600, 0x277D758B8, MEMORY[0x277D85378]);
  v2 = sub_2707CF228();

  return v2;
}

uint64_t sub_2707C639C(uint64_t a1)
{
  result = sub_2707C63F0(&qword_280837608, &qword_280837610, 0x277D758C0, &protocol conformance descriptor for UIEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2707C63F0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2707C6434(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2707C6434(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2707C64B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2707C64D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_2707C6534(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_2707C6584()
{
  result = qword_280837628;
  if (!qword_280837628)
  {
    type metadata accessor for TouchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837628);
  }

  return result;
}

uint64_t sub_2707C65DC(uint64_t a1)
{
  v2 = [v1 pressesForGestureRecognizer_];
  sub_2707C6434(0, &qword_280837600, 0x277D758B8);
  sub_2707C63F0(&qword_280837630, &qword_280837600, 0x277D758B8, MEMORY[0x277D85378]);
  v3 = sub_2707CF228();

  return v3;
}

uint64_t sub_2707C66AC(uint64_t a1)
{
  sub_2707CF408();
  MEMORY[0x2743A9510](a1);
  return sub_2707CF428();
}

uint64_t sub_2707C672C(uint64_t a1, uint64_t a2)
{
  sub_2707CF408();
  MEMORY[0x2743A9510](a2);
  return sub_2707CF428();
}

void sub_2707C677C(uint64_t a2@<X8>)
{
  sub_2707C67B0();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t UIEventProtocol.asPressesEvent.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v9 ^ 1u, 1, AssociatedTypeWitness);
}

id UIEvent.senderID.getter()
{
  result = [v0 _hidEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_2707CF298();

    v4 = [v3 senderID];
    return v4;
  }

  return result;
}

uint64_t UIEvent.asPressesEvent.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v0;
  }

  return v1;
}

uint64_t sub_2707C6B30(uint64_t a1)
{
  v2 = [v1 touchesForGestureRecognizer_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_2707C6434(0, &qword_280837648, 0x277D75C68);
  sub_2707C63F0(&qword_280837650, &qword_280837648, 0x277D75C68, MEMORY[0x277D85378]);
  v4 = sub_2707CF228();

  return v4;
}

uint64_t sub_2707C6C70(void *a1)
{
  v1 = [a1 allTouches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2707C6434(0, &qword_280837648, 0x277D75C68);
  sub_2707C63F0(&qword_280837650, &qword_280837648, 0x277D75C68, MEMORY[0x277D85378]);
  v3 = sub_2707CF228();

  return v3;
}

unint64_t sub_2707C6D64()
{
  result = qword_280837658;
  if (!qword_280837658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280837658);
  }

  return result;
}

uint64_t sub_2707C6DC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2707C6E00(uint64_t result, int a2, int a3)
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

uint64_t sub_2707C6F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_2707C6F60()
{
  result = qword_280837660;
  if (!qword_280837660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837660);
  }

  return result;
}

unint64_t sub_2707C6FB8()
{
  result = qword_280837668;
  if (!qword_280837668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837668);
  }

  return result;
}

unint64_t sub_2707C701C()
{
  result = qword_280837670;
  if (!qword_280837670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837670);
  }

  return result;
}

unint64_t sub_2707C7074()
{
  result = qword_280837678;
  if (!qword_280837678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837678);
  }

  return result;
}

uint64_t sub_2707C70C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707C6E3C();
  *a1 = result;
  return result;
}

uint64_t sub_2707C70F0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7120(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707C7128@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7158(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707C7160@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7190(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_2707C71A0(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2707C71D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7204(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2707C7204(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_2707C7234@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7268(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2707C7268(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_2707C72D8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C7308(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707C73D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707C6F00(a1);
  *a2 = result;
  return result;
}

void *sub_2707C7408(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_2707CE704(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = v2[3];
  if (v2[2] >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_0(v3);
  }

  OUTLINED_FUNCTION_2();
  *(v5 + 32) = v4 | 0x390000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_1();
    }

    OUTLINED_FUNCTION_3();
    if (v7)
    {
      v2 = OUTLINED_FUNCTION_0(v6);
    }

    OUTLINED_FUNCTION_2();
    *(v9 + 32) = v8 | 0xE10000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_1();
    }

    OUTLINED_FUNCTION_3();
    if (v7)
    {
      v2 = OUTLINED_FUNCTION_0(v10);
    }

    OUTLINED_FUNCTION_2();
    *(v12 + 32) = v11 | 0xE00000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_3();
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_0(v13);
  }

  OUTLINED_FUNCTION_2();
  *(v15 + 32) = v14 | 0xE20000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_3();
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_0(v16);
  }

  OUTLINED_FUNCTION_2();
  *(v18 + 32) = v17 | 0xE30000;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x80) == 0)
    {
      return v2;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_3();
  if (v7)
  {
    v2 = OUTLINED_FUNCTION_0(v19);
  }

  OUTLINED_FUNCTION_2();
  *(v21 + 32) = v20 | 0x750000;
  if (a1 < 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_1();
    }

    v23 = v2[2];
    v22 = v2[3];
    if (v23 >= v22 >> 1)
    {
      v2 = OUTLINED_FUNCTION_0(v22);
    }

    v2[2] = v23 + 1;
    *(v2 + v23 + 8) = 196863;
  }

  return v2;
}

void *OUTLINED_FUNCTION_0@<X0>(unint64_t a1@<X8>)
{

  return sub_2707CE704((a1 > 1), v2, 1, v1);
}

void *OUTLINED_FUNCTION_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_2707CE704(0, v2, 1, v0);
}

id sub_2707C76C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2707C77DC();
  *a1 = result;
  return result;
}

unint64_t sub_2707C76F0(uint64_t a1)
{
  result = sub_2707C7718();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2707C7718()
{
  result = qword_280837630;
  if (!qword_280837630)
  {
    sub_2707C7770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837630);
  }

  return result;
}

unint64_t sub_2707C7770()
{
  result = qword_280837600;
  if (!qword_280837600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280837600);
  }

  return result;
}

id sub_2707C77DC()
{
  v1 = [v0 key];

  return v1;
}

uint64_t EventObserver<A>.init(eventMask:)(uint64_t a1)
{
  v2 = sub_2707CF178();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837680, &qword_2707CFD98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707CFD40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837688, &qword_2707CFDA0);
  swift_allocObject();
  v5 = sub_2707C7EA8();
  v6 = sub_2707C8C88(&qword_280837690, &qword_280837688, &qword_2707CFDA0, &protocol conformance descriptor for DigitizerEventTranslator<A>);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837698, &qword_2707CFDA8);
  swift_allocObject();
  v7 = sub_2707C7F3C();
  v8 = sub_2707C8C88(&qword_2808376A0, &qword_280837698, &qword_2707CFDA8, &protocol conformance descriptor for KeyboardEventTranslator<A>);
  v9 = 0;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v49 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = v9 + 2; i != 4; ++i)
  {
    v50 = *(inited + 16 * i);
    ObjectType = swift_getObjectType();
    v12 = *(&v50 + 1);
    v13 = *(*(&v50 + 1) + 16);
    swift_unknownObjectRetain();
    if ((v13(ObjectType, v12) & a1) != 0)
    {
      v14 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v52 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2707C86A8(0, *(v14 + 16) + 1, 1);
        v14 = v52;
      }

      v16 = v50;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2707C86A8((v17 > 1), v18 + 1, 1);
        v16 = v50;
        v14 = v52;
      }

      v9 = i - 1;
      *(v14 + 16) = v18 + 1;
      v49 = v14;
      *(v14 + 16 * v18 + 32) = v16;
      goto LABEL_2;
    }

    swift_unknownObjectRelease();
  }

  swift_setDeallocating();
  sub_2707C85F0(&qword_280837700, &qword_2707CFDF0);
  type metadata accessor for NullService();
  swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376A8, &qword_2707CFDB0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2707CFD50;
  v20 = sub_2707CF0A8();
  v21 = sub_2707C86C8();

  v22 = sub_2707CF098();
  v23 = MEMORY[0x277D77AA0];
  *(v19 + 56) = v20;
  *(v19 + 64) = v23;
  *(v19 + 32) = v22;
  sub_2707CF128();
  OUTLINED_FUNCTION_1_0();

  v24 = sub_2707CF118();
  v25 = MEMORY[0x277D77AE0];
  *(v19 + 96) = v20;
  *(v19 + 104) = v25;
  *(v19 + 72) = v24;
  sub_2707CF108();
  OUTLINED_FUNCTION_1_0();

  *&v50 = v21;
  v26 = sub_2707CF0F8();
  v27 = MEMORY[0x277D77AC0];
  *(v19 + 136) = v20;
  *(v19 + 144) = v27;
  *(v19 + 112) = v26;
  if (qword_2808375F0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v2, qword_2808381A0);
  v29 = v48;
  v47 = *(v47 + 16);
  (v47)(v48, v28, v2);
  v30 = sub_2707CF088();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();

  v31 = sub_2707CF078();
  v32 = MEMORY[0x277D77A98];
  *(v19 + 176) = v30;
  *(v19 + 184) = v32;
  *(v19 + 152) = v31;
  (v47)(v29, v28, v2);
  v33 = sub_2707CF068();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();

  v34 = sub_2707CF058();
  v35 = MEMORY[0x277D77A80];
  *(v19 + 216) = v33;
  *(v19 + 224) = v35;
  *(v19 + 192) = v34;
  sub_2707CF018();
  OUTLINED_FUNCTION_1_0();

  v36 = sub_2707CF008();
  v37 = MEMORY[0x277D77A68];
  *(v19 + 256) = v20;
  *(v19 + 264) = v37;
  *(v19 + 232) = v36;
  v38 = MEMORY[0x277D84F90];
  for (j = 32; j != 272; j += 40)
  {
    sub_2707C8758(v19 + j, &v52);
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    if ((sub_2707CF0E8() & a1) != 0)
    {
      sub_2707C8800(&v52, v51);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v38;
      if ((v40 & 1) == 0)
      {
        sub_2707C8688(0, *(v38 + 16) + 1, 1);
        v38 = v54;
      }

      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2707C8688((v41 > 1), v42 + 1, 1);
        v38 = v54;
      }

      *(v38 + 16) = v42 + 1;
      sub_2707C8800(v51, v38 + 40 * v42 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }
  }

  swift_setDeallocating();
  sub_2707C85F0(&qword_280837720, &qword_2707CFE10);
  v43 = *(v38 + 16);
  if (v43)
  {
    v44 = v38 + 32;
    do
    {
      sub_2707C8758(v44, &v52);
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      sub_2707CF0D8();

      __swift_destroy_boxed_opaque_existential_1(&v52);
      v44 += 40;
      --v43;
    }

    while (v43);
  }

  v45 = swift_allocObject();
  sub_2707C7F8C(v49, v38);
  OUTLINED_FUNCTION_1_0();

  return v45;
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

void *sub_2707C7EA8()
{
  v0[2] = 0x3FF0000000000000;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0x3FF0000000000000;
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = 0;
  sub_2707CEFE8();
  sub_2707CEFF8();
  v0[9] = sub_2707CEFF8();
  return v0;
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

uint64_t sub_2707C7F3C()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  sub_2707CEFD8();
  sub_2707CEFF8();
  *(v0 + 40) = sub_2707CEFF8();
  return v0;
}

uint64_t sub_2707C7F8C(uint64_t a1, uint64_t a2)
{
  v12 = 0x3FF0000000000000uLL;
  *&v13 = 0;
  *(&v13 + 1) = 0x3FF0000000000000;
  v14 = 0uLL;
  v5 = v13;
  *(v2 + 96) = 0x3FF0000000000000uLL;
  *(v2 + 112) = v5;
  *(v2 + 128) = v14;
  *(v2 + 144) = -1;
  *(v2 + 160) = 0;
  *(v2 + 152) = 0;
  *(v2 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376D8, &qword_2707CFDD8);
  v6 = MEMORY[0x277D83970];
  *(v2 + 48) = sub_2707C8C88(&qword_2808376E0, &qword_2808376D8, &qword_2707CFDD8, MEMORY[0x277D83970]);
  *(v2 + 16) = a1;
  *(v2 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376E8, &qword_2707CFDE0);
  *(v2 + 88) = sub_2707C8C88(&qword_2808376F0, &qword_2808376E8, &qword_2707CFDE0, v6);
  *(v2 + 56) = a2;
  sub_2707C8128(&v12);
  swift_beginAccess();
  sub_2707C8234(*(v2 + 144));
  swift_beginAccess();
  v7 = *(v2 + 152);
  v8 = v7;
  sub_2707C8340(v7);

  swift_beginAccess();
  v9 = *(v2 + 160);
  v10 = v9;
  sub_2707C8450(v9);

  return v2;
}

uint64_t sub_2707C8128(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837718, &qword_2707CFE08);
  v3 = sub_2707CF1B8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v8(a1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_2707C8234(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837710, &qword_2707CFE00);
  v3 = sub_2707CF1B8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v8(a1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_2707C8340(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837708, &qword_2707CFDF8);
  v3 = sub_2707CF1B8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v9 = a1;
      v8(a1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_2707C8450(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376F8, &qword_2707CFDE8);
  v3 = sub_2707CF1B8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v9 = a1;
      v8(a1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_2707C8560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837700, &qword_2707CFDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2707C85F0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

char *sub_2707C8640(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_2707C8660(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

void *sub_2707C8688(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2707C88E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2707C86A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2707C8A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2707C86C8()
{
  result = qword_2808376B0;
  if (!qword_2808376B0)
  {
    type metadata accessor for NullService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808376B0);
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

uint64_t sub_2707C8758(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2707C8800(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

void *sub_2707C8864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2707C8B50(a1, a2, a3, *v3, &qword_2808376B8, &qword_2707CFDB8, &qword_2808376C0, &qword_2707CFDC0);
  *v3 = result;
  return result;
}

void *sub_2707C88A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2707C8B50(a1, a2, a3, *v3, &qword_2808376C8, &qword_2707CFDC8, &qword_2808376D0, &qword_2707CFDD0);
  *v3 = result;
  return result;
}

void *sub_2707C88E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376A8, &qword_2707CFDB0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837720, &qword_2707CFE10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2707C8A1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837680, &qword_2707CFD98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280837700, &qword_2707CFDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2707C8B50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || &a4[3 * v14 + 4] <= v16 + 4)
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_2707C8C88(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2707C8D20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_2707C8560(*a1, a1[1], a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t DigitizerEventTranslator.__allocating_init()()
{
  v0 = swift_allocObject();
  DigitizerEventTranslator.init()();
  return v0;
}

void *DigitizerEventTranslator.init()()
{
  v0[2] = 0x3FF0000000000000;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0x3FF0000000000000;
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = 0;
  sub_2707CEFE8();
  sub_2707CEFF8();
  v0[9] = sub_2707CEFF8();
  return v0;
}

double sub_2707C8E4C@<D0>(_OWORD *a1@<X8>)
{
  sub_2707C8E90(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2707C8E90@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_2707C8EDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2707C8FAC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2707C9020(v1);
}

void *sub_2707C8FDC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_2707C9020(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

double sub_2707C90C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  if ((*(v4 + 40))(v5, v4))
  {
    return result;
  }

  v7 = sub_2707C8FDC();
  v56[0] = a1;
  if (v7)
  {
    v8 = v7;
    v9 = (*(v4 + 64))(v7, v5, v4);
    if (v9)
    {
LABEL_6:
      v13 = v9;

      goto LABEL_14;
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = sub_2707CF1E8();
    if (sub_2707CF208())
    {
      OUTLINED_FUNCTION_3_0();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v9 = sub_2707CA3D4(v11, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v15 = OUTLINED_FUNCTION_2_0();
  v14 = v16(v15);
  if (v14)
  {
LABEL_10:
    v13 = v14;
    goto LABEL_14;
  }

  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_2707CF1E8();
  if (sub_2707CF208())
  {
    OUTLINED_FUNCTION_3_0();
    v19 = swift_getAssociatedConformanceWitness();
    v14 = sub_2707CA3D4(v18, v17, *(v19 + 8));
    goto LABEL_10;
  }

LABEL_13:
  v13 = MEMORY[0x277D84FA0];
LABEL_14:
  v57 = v13;
  MEMORY[0x28223BE20](v14);
  v55 = v4;
  KeyPath = swift_getKeyPath();
  v56[1] = v56;
  v53[2] = v5;
  v53[3] = v4;
  v54 = MEMORY[0x28223BE20](KeyPath);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  swift_getAssociatedConformanceWitness();
  v21 = sub_2707CF248();
  type metadata accessor for TouchType(0);
  v23 = v22;
  WitnessTable = swift_getWitnessTable();
  v26 = sub_2707C96F8(sub_2707CA79C, v53, v21, v23, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);

  v27 = sub_2707C9BAC(v26);
  v28 = sub_2707CA288(&unk_2880812F0);
  v29 = sub_2707C9C4C(v27, v28);

  if (v29)
  {
    v57 = v13;
    v31 = sub_2707C96F8(sub_2707CA7C8, v2, v21, MEMORY[0x277D77A90], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v30);

    v32 = OUTLINED_FUNCTION_2_0();
    v33(v32);
    sub_2707CF138();
    v34 = sub_2707CF028();
    if (sub_2707CF038() == v34)
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4();
      DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
    }

    else
    {
      v54 = 0;
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4();
      DigitizerFingerEvent = IOHIDEventCreateDigitizerEvent();
    }

    v36 = DigitizerFingerEvent;
    v37 = sub_2707CF298();

    v38 = OUTLINED_FUNCTION_2_0();
    v39(v38);
    v57 = v37;
    v40 = OUTLINED_FUNCTION_3_0();
    v41 = MEMORY[0x2743A91B0](v40);
    IOHIDEventSetSenderID();

    v57 = v37;
    v42 = OUTLINED_FUNCTION_3_0();
    v43 = MEMORY[0x2743A91B0](v42);
    IOHIDEventSetIntegerValue();

    v44 = *(v31 + 16);
    if (v44)
    {
      v45 = (v31 + 32);
      v46 = MEMORY[0x277D77A90];
      v47 = MEMORY[0x277D77A88];
      do
      {
        v48 = *v45++;
        v57 = v37;
        v49 = v48;
        v50 = MEMORY[0x2743A91B0](v46, v47);
        v57 = v49;
        v51 = MEMORY[0x2743A91B0](v46, v47);
        IOHIDEventAppendEvent();

        --v44;
      }

      while (v44);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280837728, &qword_2707CFE70);
    v52 = swift_allocObject();
    *&result = 1;
    *(v52 + 16) = xmmword_2707CFE20;
    *(v52 + 32) = v37;
  }

  else
  {
  }

  return result;
}

uint64_t sub_2707C964C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_2707C96F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2707CF268();
  if (!v19)
  {
    return sub_2707CF1E8();
  }

  v41 = v19;
  v45 = sub_2707CF3C8();
  v32 = sub_2707CF3D8();
  sub_2707CF378();
  result = sub_2707CF258();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2707CF288();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2707CF3B8();
      result = sub_2707CF278();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2707C9B14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2707CAA18();
  v4 = MEMORY[0x2743A9330](v2, MEMORY[0x277D77AE8], v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_2707CAA6C(v9, *(a1 + v6));
      v6 += 4;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_2707C9BAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TouchType(0);
  v4 = v3;
  v5 = sub_2707CB8A8();
  v6 = MEMORY[0x2743A9330](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_2707CAB84(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_2707C9C4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    sub_2707CF408();
    MEMORY[0x2743A9510](v12);
    result = sub_2707CF428();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2707C9DA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  v8 = swift_checkMetadataState();
  v9 = v7(0, v8, AssociatedConformanceWitness);
  v11 = v10;
  sub_2707C8E90(&v17);
  v16 = v17;
  v18.x = v9;
  v18.y = v11;
  CGPointApplyAffineTransform(v18, &v16);
  sub_2707CA020(a1, v5, v4);
  (*(AssociatedConformanceWitness + 16))(v8, AssociatedConformanceWitness);
  sub_2707CF138();
  LODWORD(v5) = sub_2707CF038();
  (*(AssociatedConformanceWitness + 48))(v8, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(v8, AssociatedConformanceWitness);
  if (sub_2707CF038() == v5)
  {
    DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
  }

  else
  {
    DigitizerFingerEvent = IOHIDEventCreateDigitizerEvent();
  }

  v13 = DigitizerFingerEvent;
  v14 = sub_2707CF298();

  *a3 = v14;
}

uint64_t sub_2707CA020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  v6 = v4(v5, AssociatedConformanceWitness);
  return (v6 < 8) & (0xE7u >> v6);
}

uint64_t DigitizerEventTranslator.__deallocating_deinit()
{
  DigitizerEventTranslator.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double sub_2707CA138@<D0>(_OWORD *a1@<X8>)
{
  sub_2707C8E90(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t (*sub_2707CA17C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2707C8F28(v2);
  return sub_2707CBB50;
}

uint64_t (*sub_2707CA1E0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2707C9068(v2);
  return sub_2707CA23C;
}

void sub_2707CA240(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2707CA288(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377C0, &qword_2707CFF38);
  result = sub_2707CF318();
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
    v7 = *(a1 + 32 + 8 * v5++);
    sub_2707CF408();
    MEMORY[0x2743A9510](v7);
    result = sub_2707CF428();
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

      if (*(*(v3 + 48) + 8 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 8 * v9) = v7;
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

uint64_t sub_2707CA3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  if (sub_2707CF208())
  {
    sub_2707CF328();
    v14 = sub_2707CF318();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v36 = sub_2707CF208();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_2707CF1F8();
      sub_2707CF1D8();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_2707CF338();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_2707CF188();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_2707CF198();
        v28 = *(v6 + 8);
        v28(v9, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

__n128 sub_2707CA790(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_2707CA814@<X0>(void *a1@<X8>)
{
  result = sub_2707C8FDC();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of DigitizerEventTranslator.coordinateTransform.setter(_OWORD *a1)
{
  v2 = *(*v1 + 136);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

unint64_t sub_2707CAA18()
{
  result = qword_2808377B0;
  if (!qword_2808377B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808377B0);
  }

  return result;
}

BOOL sub_2707CAA6C(_WORD *a1, unint64_t a2)
{
  v5 = *v2;
  sub_2707CF408();
  sub_2707CF158();
  v6 = sub_2707CF428();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      LODWORD(v5) = WORD1(a2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      sub_2707CB120(a2, v8, isUniquelyReferenced_nonNull_native);
      *v2 = v13;
      goto LABEL_7;
    }

    if (sub_2707CF148())
    {
      break;
    }

    v6 = v8 + 1;
  }

  v11 = (*(v5 + 48) + 4 * v8);
  LOWORD(a2) = *v11;
  LOWORD(v5) = v11[1];
LABEL_7:
  result = v9 == 0;
  *a1 = a2;
  a1[1] = v5;
  return result;
}

BOOL sub_2707CAB84(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_2707CF408();
  MEMORY[0x2743A9510](a2);
  v6 = sub_2707CF428();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_2707CB25C(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2707CAC74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377B8, &qword_2707CFF30);
  result = sub_2707CF308();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2707CB394(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 4 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2707CF408();
    sub_2707CF158();
    result = sub_2707CF428();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 4 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2707CAED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377C0, &qword_2707CFF38);
  result = sub_2707CF308();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_2707CB394(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_2707CF408();
    MEMORY[0x2743A9510](v16);
    result = sub_2707CF428();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2707CB120(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2707CAC74(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2707CB678(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_2707CF408();
      sub_2707CF158();
      result = sub_2707CF428();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (sub_2707CF148())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2707CB3F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2707CF3F8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_2707CB25C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2707CAED4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2707CB900(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_2707CF408();
      MEMORY[0x2743A9510](v5);
      result = sub_2707CF428();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for TouchType(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2707CB538();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2707CF3F8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2707CB394(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2707CFE30;
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

void *sub_2707CB3F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377B8, &qword_2707CFF30);
  v2 = *v0;
  v3 = sub_2707CF2F8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2707CB538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377C0, &qword_2707CFF38);
  v2 = *v0;
  v3 = sub_2707CF2F8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2707CB678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377B8, &qword_2707CFF30);
  result = sub_2707CF308();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2707CF408();
        sub_2707CF158();
        result = sub_2707CF428();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 4 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2707CB8A8()
{
  result = qword_2808377C8;
  if (!qword_2808377C8)
  {
    type metadata accessor for TouchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808377C8);
  }

  return result;
}

uint64_t sub_2707CB900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808377C0, &qword_2707CFF38);
  result = sub_2707CF308();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_2707CF408();
        MEMORY[0x2743A9510](v15);
        result = sub_2707CF428();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t KeyboardEventTranslator.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyboardEventTranslator.init()();
  return v0;
}

uint64_t sub_2707CBC90(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2707CF388();
    for (i = (a3 + 36); ; i += 6)
    {
      v10 = *i;
      v11 = *(i - 1);
      v12 = v10;
      a1(&v13, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2707CF358();
      sub_2707CF398();
      sub_2707CF3A8();
      sub_2707CF368();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyboardEventTranslator.init()()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  sub_2707CEFD8();
  sub_2707CEFF8();
  *(v0 + 40) = sub_2707CEFF8();
  return v0;
}

uint64_t sub_2707CBDF0()
{
  swift_beginAccess();
  v1 = sub_2707C7408(~*(v0 + 24));
  v2 = sub_2707C9B14(v1);
  return sub_2707CBDE0(v2);
}

uint64_t sub_2707CBE68(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return sub_2707CBDF0();
}

uint64_t (*sub_2707CBEAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2707CBF00;
}

uint64_t sub_2707CBF00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2707CBDF0();
  }

  return result;
}

void sub_2707CBF34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2707CBFA8(v1);
}

void *sub_2707CBF64()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_2707CBFA8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_2707CC048(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2707CF2C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  if ((*(v3 + 40))(v4, v3) != 4)
  {
    return MEMORY[0x277D84F90];
  }

  UIEventProtocol.asPressesEvent.getter(v4, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return MEMORY[0x277D84F90];
  }

  (*(v23 + 32))(v12, v10, AssociatedTypeWitness);
  v14 = sub_2707CBF64();
  if (v14)
  {
    v15 = v14;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 40))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v18 = swift_getAssociatedConformanceWitness();
    v17 = (*(v18 + 32))(AssociatedTypeWitness, v18);
  }

  v24 = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2707CF248();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2808377D0, "<\a");
  swift_getWitnessTable();
  v19 = sub_2707CF1B8();

  MEMORY[0x28223BE20](v20);
  *(&v22 - 4) = v4;
  *(&v22 - 3) = v3;
  *(&v22 - 2) = a1;
  *(&v22 - 1) = v12;
  v13 = sub_2707CBC90(sub_2707CCAB8, (&v22 - 6), v19);

  (*(v23 + 8))(v12, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_2707CC474@<X0>(uint64_t *a1@<X1>, _DWORD *a2@<X8>)
{
  v28 = a2;
  v25 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_2707CF2C8();
  v4 = *(v27 - 8);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = &v25 - v6;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = *(AssociatedConformanceWitness + 40);
  v11 = swift_checkMetadataState();
  v10(v11, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v7, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v4 + 8))(v7, v27);
  }

  else
  {
    v13 = v26;
    (*(v26 + 32))(v9, v7, AssociatedTypeWitness);
    v14 = v9;
    v15 = 0x100000000;
    switch((*(AssociatedConformanceWitness + 32))(v11, AssociatedConformanceWitness))
    {
      case 0:
        break;
      case 3:
      case 4:
        v15 = 0;
        break;
      default:
        result = (*(v13 + 8))(v14, AssociatedTypeWitness);
        goto LABEL_10;
    }

    v16 = swift_getAssociatedConformanceWitness();
    v17 = *(v16 + 8);
    v18 = v17(AssociatedTypeWitness, v16);
    v19 = v17(AssociatedTypeWitness, v16);
    if (v18 == 3)
    {
      v20 = 255;
    }

    else
    {
      v20 = 7;
    }

    v21 = sub_2707CBDD8();
    v22 = sub_2707CC884(v20 | (v19 << 16), v21);

    result = (*(v13 + 8))(v14, AssociatedTypeWitness);
    if (!v22)
    {
      v23 = v15 | (v19 << 16) | v20;
      goto LABEL_11;
    }
  }

LABEL_10:
  v23 = 0x200000000;
LABEL_11:
  v24 = v28;
  *v28 = v23;
  *(v24 + 4) = BYTE4(v23);
  return result;
}

BOOL sub_2707CC884(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2707CF408();
  sub_2707CF158();
  v3 = sub_2707CF428();
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = sub_2707CF148();
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

void sub_2707CC950(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  (*(a3 + 48))(a2, a3);
  sub_2707CF138();
  sub_2707CF048();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v6 = sub_2707CF298();

  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 72);
  v9 = swift_checkMetadataState();
  v8(v9, v7);
  v10 = MEMORY[0x2743A91B0](MEMORY[0x277D77A78], MEMORY[0x277D77A70]);
  IOHIDEventSetSenderID();

  *a4 = v6;
}

uint64_t KeyboardEventTranslator.deinit()
{

  return v0;
}

uint64_t KeyboardEventTranslator.__deallocating_deinit()
{
  KeyboardEventTranslator.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t (*sub_2707CCB48(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2707CBEAC(v2);
  return sub_2707CA23C;
}

uint64_t (*sub_2707CCBAC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2707CBFF0(v2);
  return sub_2707CBB50;
}

uint64_t sub_2707CCC08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707CBE34();
  *a1 = result;
  return result;
}

__n128 sub_2707CCC60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_2707CCC6C@<X0>(void *a1@<X8>)
{
  result = sub_2707CBF64();
  *a1 = result;
  return result;
}

double sub_2707CCE88@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2707CCEE4()
{
  v0 = sub_2707CF178();
  __swift_allocate_value_buffer(v0, qword_2808381A0);
  __swift_project_value_buffer(v0, qword_2808381A0);
  return sub_2707CF168();
}

uint64_t EventObserver.__allocating_init<A, B>(translators:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  EventObserver.init<A, B>(translators:filters:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t EventObserver.init<A, B>(translators:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0x3FF0000000000000uLL;
  *&v27 = 0;
  *(&v27 + 1) = 0x3FF0000000000000;
  v28 = 0uLL;
  v12 = v27;
  *(v6 + 96) = 0x3FF0000000000000uLL;
  *(v6 + 112) = v12;
  v13 = v28;
  *(v6 + 144) = -1;
  *(v6 + 160) = 0;
  *(v6 + 128) = v13;
  *(v6 + 152) = 0;
  *(v6 + 40) = a3;
  *(v6 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  v15 = *(a3 - 8);
  (*(v15 + 16))(boxed_opaque_existential_1, a1, a3);
  *(v6 + 80) = a4;
  *(v6 + 88) = a6;
  v16 = __swift_allocate_boxed_opaque_existential_1((v6 + 56));
  v17 = *(a4 - 8);
  (*(v17 + 16))(v16, a2, a4);
  sub_2707CD214(&v26);
  OUTLINED_FUNCTION_6(v6 + 144, v25);
  sub_2707CD2C0(*(v6 + 144));
  OUTLINED_FUNCTION_6(v6 + 152, v24);
  v18 = *(v6 + 152);
  v19 = v18;
  sub_2707CD374(v18);

  OUTLINED_FUNCTION_6(v6 + 160, v23);
  v20 = *(v6 + 160);
  v21 = v20;
  sub_2707CD424(v20);

  (*(v17 + 8))(a2, a4);
  (*(v15 + 8))(a1, a3);
  return v6;
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

__n128 EventObserver.coordinateTransform.getter@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  OUTLINED_FUNCTION_5(v2 + 96, a2);
  v4 = *(v2 + 112);
  *a1 = *(v2 + 96);
  *(a1 + 16) = v4;
  result = *(v2 + 128);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_2707CD514@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = *(v3 + 96);
  *(a2 + 16) = v4;
  result = *(v3 + 128);
  *(a2 + 32) = result;
  return result;
}

uint64_t EventObserver.coordinateTransform.setter(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0((v2 + 6), a2);
  v4 = v2[7];
  v7[0] = v2[6];
  v7[1] = v4;
  v7[2] = v2[8];
  v5 = a1[1];
  v2[6] = *a1;
  v2[7] = v5;
  v2[8] = a1[2];
  return sub_2707CD5BC(v7);
}

uint64_t sub_2707CD5BC(uint64_t a1)
{
  swift_beginAccess();
  v2 = v1[7];
  v4[0] = v1[6];
  v4[1] = v2;
  v4[2] = v1[8];
  result = sub_2707CF2A8();
  if ((result & 1) == 0)
  {
    return sub_2707CD214(v4);
  }

  return result;
}

uint64_t (*EventObserver.coordinateTransform.modify())()
{
  v2 = __swift_coroFrameAllocStub(0xB0uLL);
  *(OUTLINED_FUNCTION_11(v2) + 168) = v0;
  OUTLINED_FUNCTION_6((v0 + 6), (v1 + 9));
  v3 = v0[7];
  v4 = v0[8];
  v1[6] = v0[6];
  v1[7] = v3;
  v1[8] = v4;
  return sub_2707CD694;
}

void sub_2707CD694(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 3;
  }

  v4 = v2[7];
  *v3 = v2[6];
  v3[1] = v4;
  v3[2] = v2[8];
  EventObserver.coordinateTransform.setter(v3, a2);

  free(v2);
}

uint64_t sub_2707CD714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t EventObserver.eventModifiersMask.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0(v2 + 144, a2);
  v4 = *(v2 + 144);
  *(v2 + 144) = a1;
  return sub_2707CD798(v4);
}

uint64_t sub_2707CD798(unsigned __int8 a1)
{
  swift_beginAccess();
  result = *(v1 + 144);
  if (result != a1)
  {
    return sub_2707CD2C0(result);
  }

  return result;
}

void (*EventObserver.eventModifiersMask.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11(v2) + 24) = v0;
  OUTLINED_FUNCTION_6(v0 + 144, v1);
  *(v1 + 32) = *(v0 + 144);
  return sub_2707CD850;
}

void sub_2707CD850(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  EventObserver.eventModifiersMask.setter(*(*a1 + 32), a2);

  free(v2);
}

void *EventObserver.pressesFilter.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5(v2 + 152, a2);
  v3 = *(v2 + 152);
  v4 = v3;
  return v3;
}

id sub_2707CD8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  *a2 = v4;

  return v4;
}

void sub_2707CD920(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  EventObserver.pressesFilter.setter(v1, v3);
}

void EventObserver.pressesFilter.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0(v2 + 152, a2);
  v4 = *(v2 + 152);
  *(v2 + 152) = a1;
  v5 = a1;
  sub_2707CD9A8(v4);
}

void sub_2707CD9A8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 152);
  if (v4)
  {
    if (a1)
    {
      sub_2707C6434(0, &qword_280837658, 0x277D82BB8);
      v5 = v4;
      if (sub_2707CF2B8())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
  }

  sub_2707CD374(v4);
LABEL_9:
}

void (*EventObserver.pressesFilter.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11(v2) + 32) = v0;
  OUTLINED_FUNCTION_6(v0 + 152, v1);
  v3 = *(v0 + 152);
  *(v1 + 24) = v3;
  v4 = v3;
  return sub_2707CDAD4;
}

void *EventObserver.touchesFilter.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5(v2 + 160, a2);
  v3 = *(v2 + 160);
  v4 = v3;
  return v3;
}

id sub_2707CDB24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = v4;

  return v4;
}

void sub_2707CDB7C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  EventObserver.touchesFilter.setter(v1, v3);
}

void EventObserver.touchesFilter.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0(v2 + 160, a2);
  v4 = *(v2 + 160);
  *(v2 + 160) = a1;
  v5 = a1;
  sub_2707CDC04(v4);
}

void sub_2707CDC04(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 160);
  if (v4)
  {
    if (a1)
    {
      sub_2707C6434(0, &qword_280837658, 0x277D82BB8);
      v5 = v4;
      if (sub_2707CF2B8())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
  }

  sub_2707CD424(v4);
LABEL_9:
}

void (*EventObserver.touchesFilter.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11(v2) + 32) = v0;
  OUTLINED_FUNCTION_6(v0 + 160, v1);
  v3 = *(v0 + 160);
  *(v1 + 24) = v3;
  v4 = v3;
  return sub_2707CDD30;
}

void sub_2707CDD48(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t EventObserver.processEvent(_:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280837858, qword_2707D00D0);
  sub_2707CF1C8();
  v2 = sub_2707CE374(v4);

  return v2;
}

void *sub_2707CDE8C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v43 = a4;
  v7 = a2[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(a3, ObjectType, v7);
  v41 = sub_2707CE914(v9);
  if (!v41)
  {
  }

  v10 = 0;
  v42 = v9 & 0xC000000000000001;
  v38 = v9 + 32;
  v40 = v4;
  v45 = a1;
  v39 = v9;
  while (2)
  {
    v11 = v42;
    sub_2707CE990(v10, v42 == 0, v9);
    if (v11)
    {
      result = MEMORY[0x2743A9440](v10, v9);
    }

    else
    {
      result = *(v38 + 8 * v10);
    }

    v54 = result;
    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      v44 = v14;
      v15 = [v54 senderID];
      v16 = __swift_project_boxed_opaque_existential_1(v43 + 7, v43[10]);
      MEMORY[0x28223BE20](v16);
      (*(v18 + 16))(&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v51);
      sub_2707CF1A8();
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v51, AssociatedTypeWitness);
        sub_2707CF2D8();
        if (!v50)
        {
          break;
        }

        sub_2707C8800(&v49, v48);
        __swift_project_boxed_opaque_existential_1(v48, v48[3]);
        v19 = sub_2707C6434(0, &qword_2808378E0, 0x277CD2858);
        v46[4] = MEMORY[0x277D77B00];
        v46[3] = v19;
        v46[0] = v54;
        v20 = v54;
        sub_2707CF0C8();
        v22 = v21;
        sub_2707CEA04(v47);
        __swift_destroy_boxed_opaque_existential_1(v46);
        v23 = *(v22 + 16);
        if (v23)
        {
          v47[0] = MEMORY[0x277D84F90];
          sub_2707C88A4(0, v23, 0);
          v24 = v47[0];
          v25 = (v22 + 40);
          do
          {
            v26 = *(v25 - 1);
            v27 = *v25;
            sub_2707CE938(v26, *v25);
            v47[0] = v24;
            v29 = *(v24 + 16);
            v28 = *(v24 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_2707C88A4((v28 > 1), v29 + 1, 1);
              v24 = v47[0];
            }

            v25 += 2;
            *(v24 + 16) = v29 + 1;
            v30 = (v24 + 24 * v29);
            v30[4] = v26;
            v30[5] = v27;
            v30[6] = v15;
            --v23;
          }

          while (v23);

          a1 = v45;
        }

        else
        {

          v24 = MEMORY[0x277D84F90];
        }

        v31 = *(v24 + 16);
        v32 = *a1;
        v33 = *(*a1 + 16);
        v34 = v33 + v31;
        if (__OFADD__(v33, v31))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v34 > v32[3] >> 1)
        {
          if (v33 <= v34)
          {
            v35 = v33 + v31;
          }

          else
          {
            v35 = v33;
          }

          result = sub_2707CE7FC(result, v35, 1, v32);
          v32 = result;
        }

        if (*(v24 + 16))
        {
          if ((v32[3] >> 1) - v32[2] < v31)
          {
            goto LABEL_34;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376D0, &qword_2707CFDD0);
          swift_arrayInitWithCopy();

          if (v31)
          {
            v36 = v32[2];
            v13 = __OFADD__(v36, v31);
            v37 = v36 + v31;
            if (v13)
            {
              goto LABEL_35;
            }

            v32[2] = v37;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_33;
          }
        }

        *a1 = v32;
        __swift_destroy_boxed_opaque_existential_1(v48);
      }

      __swift_destroy_boxed_opaque_existential_1(v51);
      v10 = v44;
      v9 = v39;
      if (v44 != v41)
      {
        continue;
      }
    }

    break;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2707CE374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2707C8864(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      sub_2707CE938(*(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376D0, &qword_2707CFDD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376C0, &qword_2707CFDC0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2707C8864((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2707CE4C0@<X0>(uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  swift_unknownObjectRetain();
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
  }

  return result;
}

uint64_t EventObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t EventObserver.__deallocating_deinit()
{
  EventObserver.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

void *sub_2707CE704(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808378F0, &unk_2707D01B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_2707C8640(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2707CE7FC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376C8, &qword_2707CFDC8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2707C8660((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808376D0, &qword_2707CFDD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2707CE914(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2707CE938(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2707CE990(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2707CEA04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808378E8, &qword_2707D01A8);
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

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2707CF1B8();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_getObjectType();
}

unint64_t sub_2707CEDC4(uint64_t a1)
{
  result = sub_2707CEDEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2707CEDEC()
{
  result = qword_280837650;
  if (!qword_280837650)
  {
    sub_2707CEE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280837650);
  }

  return result;
}

unint64_t sub_2707CEE44()
{
  result = qword_280837648;
  if (!qword_280837648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280837648);
  }

  return result;
}

uint64_t dispatch thunk of CoordinateTransformConfigurable.coordinateTransform.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6, a2);
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}