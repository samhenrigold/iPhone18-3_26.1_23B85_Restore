uint64_t sub_265781760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for AssertionAcquisitionRequest(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2657817D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for AssertionAcquisitionRequest(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_265781860()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657818A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265781910()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781948()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781990()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2657819D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265781A08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_265781A64(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_265781AC8()
{
  MEMORY[0x26675F480](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781B08@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_265781B58()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265781BF8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781C3C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265781CDC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781D1C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265781D6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_265781DC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265781E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26579E364();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AssertionAttribute(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_265781F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26579E364();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AssertionAttribute(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2657826A4()
{
  sub_26579E9A4();
  MEMORY[0x26675EE80](0);
  return sub_26579E9E4();
}

uint64_t sub_2657826E8(uint64_t a1)
{
  sub_26579E9A4();
  MEMORY[0x26675EE80](0);
  return sub_26579E9E4();
}

uint64_t sub_265782744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002657A1C80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26579E924();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2657827E4(uint64_t a1)
{
  v2 = sub_265782A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265782820(uint64_t a1)
{
  v2 = sub_265782A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FakeForegroundInvalidationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020CA0, &qword_26579F5E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265782A80();

  sub_26579EA04();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020CB0, &qword_26579F5E8);
  sub_265782D0C(&qword_280020CB8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26579E8E4();

  return (*(v4 + 8))(v6, v3);
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

unint64_t sub_265782A80()
{
  result = qword_280020CA8;
  if (!qword_280020CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020CA8);
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

uint64_t FakeForegroundInvalidationState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020CC0, &qword_26579F5F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265782A80();
  sub_26579E9F4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020CB0, &qword_26579F5E8);
    sub_265782D0C(&qword_280020CC8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26579E854();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_265782D0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280020CB0, &qword_26579F5E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265782DB4(uint64_t *a1, int a2)
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

uint64_t sub_265782DFC(uint64_t result, int a2, int a3)
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

uint64_t sub_265782E58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265782E78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280F95610)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280F95610);
    }
  }
}

uint64_t getEnumTagSinglePayload for FakeForegroundInvalidationState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FakeForegroundInvalidationState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_265782FE0()
{
  result = qword_280020D30;
  if (!qword_280020D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D30);
  }

  return result;
}

unint64_t sub_265783038()
{
  result = qword_280020D38;
  if (!qword_280020D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D38);
  }

  return result;
}

unint64_t sub_265783090()
{
  result = qword_280020D40;
  if (!qword_280020D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D40);
  }

  return result;
}

double AssertionReconnectProperties.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

uint64_t AssertionReconnectProperties.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssertionReconnectProperties(0) + 20);

  return sub_265783188(v3, a1);
}

uint64_t type metadata accessor for AssertionReconnectProperties(uint64_t a1)
{
  result = qword_280F95788;
  if (!qword_280F95788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265783188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionAcquisitionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssertionReconnectProperties.init(identifier:request:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  v6 = type metadata accessor for AssertionReconnectProperties(0);
  return sub_265783A84(a2, a3 + *(v6 + 20), type metadata accessor for AssertionAcquisitionRequest);
}

uint64_t sub_265783264()
{
  v1 = *v0;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v1);
  return sub_26579E9E4();
}

uint64_t sub_2657832D8(uint64_t a1)
{
  v2 = *v1;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v2);
  return sub_26579E9E4();
}

uint64_t sub_26578331C()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26578335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_26579E924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26579E924();

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

uint64_t sub_26578344C(uint64_t a1)
{
  v2 = sub_26578369C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265783488(uint64_t a1)
{
  v2 = sub_26578369C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionReconnectProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D48, &qword_26579F800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26578369C();
  sub_26579EA04();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_2657836F0();
  sub_26579E8E4();
  if (!v2)
  {
    type metadata accessor for AssertionReconnectProperties(0);
    LOBYTE(v12) = 1;
    type metadata accessor for AssertionAcquisitionRequest(0);
    sub_2657840A4(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
    sub_26579E8E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26578369C()
{
  result = qword_280020D50;
  if (!qword_280020D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D50);
  }

  return result;
}

unint64_t sub_2657836F0()
{
  result = qword_280F95B90;
  if (!qword_280F95B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B90);
  }

  return result;
}

uint64_t AssertionReconnectProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for AssertionAcquisitionRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D58, &qword_26579F808);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AssertionReconnectProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26578369C();
  sub_26579E9F4();
  if (!v2)
  {
    v14 = v12;
    v15 = v20;
    v25 = 0;
    sub_265783A30();
    v16 = v21;
    sub_26579E854();
    v17 = v24;
    *v14 = v23;
    v14[1] = v17;
    LOBYTE(v23) = 1;
    sub_2657840A4(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
    sub_26579E854();
    (*(v15 + 8))(v9, v16);
    sub_265783A84(v6, v14 + *(v10 + 20), type metadata accessor for AssertionAcquisitionRequest);
    sub_265783A84(v14, v19, type metadata accessor for AssertionReconnectProperties);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_265783A30()
{
  result = qword_280F95E10;
  if (!qword_280F95E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E10);
  }

  return result;
}

uint64_t sub_265783A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_265783B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69747265737361 && a2 == 0xEA0000000000736ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26579E924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_265783BD8(uint64_t a1)
{
  v2 = sub_265783DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265783C14(uint64_t a1)
{
  v2 = sub_265783DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionReconnectRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D60, &qword_26579F810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265783DFC();

  sub_26579EA04();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D68, &qword_26579F818);
  sub_265784008(&qword_280F95528, &qword_280F95580, &protocol conformance descriptor for AssertionReconnectProperties, MEMORY[0x277D83948]);
  sub_26579E8E4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_265783DFC()
{
  result = qword_280F95808[0];
  if (!qword_280F95808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F95808);
  }

  return result;
}

uint64_t AssertionReconnectRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D70, &qword_26579F820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265783DFC();
  sub_26579E9F4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020D68, &qword_26579F818);
    sub_265784008(&qword_280F95520, &qword_280F95578, &protocol conformance descriptor for AssertionReconnectProperties, MEMORY[0x277D83978]);
    sub_26579E854();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_265784008(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280020D68, &qword_26579F818);
    sub_2657840A4(a2, type metadata accessor for AssertionReconnectProperties, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657840A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSData __swiftcall AssertionReconnectRequest._bridgeToObjectiveC()()
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_2657841D8();
  v0 = sub_26579E284();
  v2 = v1;
  v3 = sub_26579E334();
  sub_26578422C(v0, v2);

  return v3;
}

unint64_t sub_2657841D8()
{
  result = qword_280F955B0;
  if (!qword_280F955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F955B0);
  }

  return result;
}

uint64_t sub_26578422C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static AssertionReconnectRequest._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v3 = sub_26579E344();
    v5 = v4;
    sub_2657846D8();
    sub_26579E254();
    sub_26578422C(v3, v5);

    *a2 = v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_265784364(uint64_t a1)
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_2657841D8();
  v1 = sub_26579E284();
  v3 = v2;
  v4 = sub_26579E334();
  sub_26578422C(v1, v3);

  return v4;
}

uint64_t sub_265784428@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v4 = sub_26579E344();
    v6 = v5;
    sub_2657846D8();
    sub_26579E254();
    sub_26578422C(v4, v6);

    *a3 = v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s16SessionAssertion0B16ReconnectRequestV26_forceBridgeFromObjectiveC_6resultySo6NSDataC_ACSgztFZ_0(uint64_t a1, void *a2)
{
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_2657846D8();
  sub_26579E254();

  sub_26578422C(v3, v5);

  *a2 = v7;
  return result;
}

BOOL _s16SessionAssertion0B16ReconnectRequestV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, void *a2)
{

  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_2657846D8();
  sub_26579E254();

  sub_26578422C(v3, v5);
  *a2 = v7;
  return v7 != 0;
}

unint64_t sub_2657846D8()
{
  result = qword_280F955A0;
  if (!qword_280F955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F955A0);
  }

  return result;
}

uint64_t sub_265784754(uint64_t a1)
{
  result = type metadata accessor for AssertionAcquisitionRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssertionReconnectProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssertionReconnectProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265784964()
{
  result = qword_280020D78;
  if (!qword_280020D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D78);
  }

  return result;
}

unint64_t sub_2657849BC()
{
  result = qword_280020D80;
  if (!qword_280020D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D80);
  }

  return result;
}

unint64_t sub_265784A14()
{
  result = qword_280F957F8;
  if (!qword_280F957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F957F8);
  }

  return result;
}

unint64_t sub_265784A6C()
{
  result = qword_280F95800;
  if (!qword_280F95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95800);
  }

  return result;
}

unint64_t sub_265784AC4()
{
  result = qword_280020D88;
  if (!qword_280020D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D88);
  }

  return result;
}

unint64_t sub_265784B1C()
{
  result = qword_280020D90;
  if (!qword_280020D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020D90);
  }

  return result;
}

uint64_t sub_265784B70()
{
  v0 = sub_26579E3E4();
  __swift_allocate_value_buffer(v0, qword_280F95DF8);
  __swift_project_value_buffer(v0, qword_280F95DF8);
  return sub_26579E3D4();
}

uint64_t static AssertionServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F95DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_26579E3E4();
  v3 = __swift_project_value_buffer(v2, qword_280F95DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265784CB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F95DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_26579E3E4();
  v3 = __swift_project_value_buffer(v2, qword_280F95DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t sub_265784E58()
{
  v1 = v0;
  sub_26579E734();
  MEMORY[0x26675E9B0](0xD000000000000014, 0x80000002657A1D00);
  v2 = (v0 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_activityIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x26675E9B0](v3, v4);

  MEMORY[0x26675E9B0](0x69746E656469203BLL, 0xEE00203A72656966);
  v5 = OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v6 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v6);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  v7 = (v1 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_explanation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x26675E9B0](v8, v9);

  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v10 = *(v1 + v5);
  if (v10)
  {
    v11 = *(*(v10 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v11);
    os_unfair_lock_unlock(v11);
  }

  v12 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v12);

  return 0;
}

uint64_t sub_265785160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26579E4A4();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2657851D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_265785234(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_265785300@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion);
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
    v6 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

char *DisableAPIThrottlingAssertion.init(explanation:activityIdentifier:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for AssertionAttribute(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  *&v6[OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion] = 0;
  v19 = &v6[OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_invalidationHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v6[OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_activityIdentifier];
  v39 = a3;
  v40 = a1;
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v6[OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_explanation];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = type metadata accessor for DisableAPIThrottlingAssertion();
  v44.receiver = v6;
  v44.super_class = v22;

  v41 = a2;

  v23 = objc_msgSendSuper2(&v44, sel_init);
  swift_storeEnumTagMultiPayload();
  sub_265785D84(v18, v16);
  v24 = swift_allocObject();
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  *(v24 + 4) = v23;
  type metadata accessor for AttributeAssertion(0);
  v25 = swift_allocObject();
  v26 = v23;
  v42 = a5;
  v43 = a6;
  sub_265785DF4(a5, a6);
  sub_26579E354();
  v27 = v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = (v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v25 + v29) = v30;
  v32 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v25 + v32) = qword_280F958F0;
  *(v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v25 + 16) = v39;
  *(v25 + 24) = a4;
  *(v25 + 32) = 1;
  sub_265785D84(v16, v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  v33 = v41;
  *(v25 + 40) = v40;
  *(v25 + 48) = v33;
  *(v25 + 56) = 0x403E000000000000;
  *(v25 + 64) = 0;
  v34 = (v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v35 = *(v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v36 = *(v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v34 = sub_265785DE8;
  v34[1] = v24;

  sub_2657818A8(v35, v36);
  v37 = v25 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_265797F98();

  sub_2657818A8(v42, v43);
  sub_265785E04(v16);
  sub_265785E04(v18);
  *&v26[OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion] = v25;

  return v26;
}

void sub_265785784(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    a3(a5, a2);

    sub_2657818A8(a3, a4);
  }
}

void sub_2657858A8()
{
  if (*(v0 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion))
  {

    sub_2657981C8();
  }
}

uint64_t sub_2657859A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4)
  {
    return 0;
  }

  if (v3 < 8)
  {
    return qword_26579FCC8[v3];
  }

  result = sub_26579E934();
  __break(1u);
  return result;
}

uint64_t sub_265785AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion29DisableAPIThrottlingAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4 == 1)
  {
    return v3 != 0;
  }

  else
  {
    return 2;
  }
}

id sub_265785B48(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_26579E494();

  return v3;
}

uint64_t sub_265785BCC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

id DisableAPIThrottlingAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisableAPIThrottlingAssertion.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DisableAPIThrottlingAssertion();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_265785D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionAttribute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265785DF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265785E04(uint64_t a1)
{
  v2 = type metadata accessor for AssertionAttribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_26578611C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_26579E314();
  (*(v4 + 16))(v4, a1, v5);
}

uint64_t sub_265786194()
{
  MEMORY[0x26675F400](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AssertionError.hashValue.getter()
{
  v1 = *v0;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v1);
  return sub_26579E9E4();
}

unint64_t sub_265786298()
{
  result = qword_280020DC0;
  if (!qword_280020DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020DC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssertionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssertionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  sub_26579E304();
  swift_allocObject();
  sub_26579E2F4();
  v2 = sub_26579E2E4();
  v4 = v3;
  v5 = sub_26579E334();
  sub_26578422C(v2, v4);

  return v5;
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26579E694();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_26579E2D4();
  swift_allocObject();
  sub_26579E2C4();
  v10 = sub_26579E344();
  v12 = v11;
  sub_26579E2B4();
  (*(v7 + 8))(a2, v6);
  sub_26578422C(v10, v12);

  (*(*(a3 - 8) + 56))(v9, 0, 1, a3);
  return (*(v7 + 32))(a2, v9, v6);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26579E694();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v21 = *(v7 + 8);
  v22 = a2;
  v21(a2, v6);
  sub_26579E2D4();
  swift_allocObject();
  sub_26579E2C4();
  v13 = sub_26579E344();
  v15 = v14;
  sub_26579E2B4();

  sub_26578422C(v13, v15);
  v16 = *(a3 - 8);
  (*(v16 + 56))(v12, 0, 1, a3);
  v17 = v22;
  (*(v7 + 32))(v22, v12, v6);
  (*(v7 + 16))(v10, v17, v6);
  v18 = (*(v16 + 48))(v10, 1, a3) != 1;
  v21(v10, v6);
  return v18;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_26579E694();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *(a2 - 8);
  result = (*(v14 + 56))(&v16 - v12, 1, 1, a2);
  if (a1)
  {
    sub_26579E7E4();
    (*(v8 + 16))(v11, v13, v7);
    result = (*(v14 + 48))(v11, 1, a2);
    if (result != 1)
    {
      (*(v8 + 8))(v13, v7);
      return (*(v14 + 32))(a4, v11, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265786B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7364973 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26579E924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_265786BA4(uint64_t a1)
{
  v2 = sub_265786DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265786BE0(uint64_t a1)
{
  v2 = sub_265786DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionReconnectResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DC8, &qword_26579FE60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265786DC0();

  sub_26579EA04();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DD0, &qword_26579FE68);
  sub_265786FC4(&qword_280F95538, sub_2657836F0, MEMORY[0x277D83508]);
  sub_26579E8E4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_265786DC0()
{
  result = qword_280F957F0;
  if (!qword_280F957F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F957F0);
  }

  return result;
}

uint64_t AssertionReconnectResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DD8, &qword_26579FE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265786DC0();
  sub_26579E9F4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DD0, &qword_26579FE68);
    sub_265786FC4(&qword_280F95530, sub_265783A30, MEMORY[0x277D83528]);
    sub_26579E854();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_265786FC4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280020DD0, &qword_26579FE68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSData __swiftcall AssertionReconnectResponse._bridgeToObjectiveC()()
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_265787128();
  v0 = sub_26579E284();
  v2 = v1;
  v3 = sub_26579E334();
  sub_26578422C(v0, v2);

  return v3;
}

unint64_t sub_265787128()
{
  result = qword_280F95598;
  if (!qword_280F95598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95598);
  }

  return result;
}

uint64_t static AssertionReconnectResponse._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v3 = sub_26579E344();
    v5 = v4;
    sub_2657875D4();
    sub_26579E254();
    sub_26578422C(v3, v5);

    *a2 = v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_265787260(uint64_t a1)
{
  sub_26579E2A4();
  swift_allocObject();
  sub_26579E294();
  sub_265787128();
  v1 = sub_26579E284();
  v3 = v2;
  v4 = sub_26579E334();
  sub_26578422C(v1, v3);

  return v4;
}

uint64_t sub_265787324@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (a1)
  {
    sub_26579E274();
    swift_allocObject();
    sub_26579E264();
    v4 = sub_26579E344();
    v6 = v5;
    sub_2657875D4();
    sub_26579E254();
    sub_26578422C(v4, v6);

    *a3 = v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s16SessionAssertion0B17ReconnectResponseV26_forceBridgeFromObjectiveC_6resultySo6NSDataC_ACSgztFZ_0(uint64_t a1, void *a2)
{
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_2657875D4();
  sub_26579E254();

  sub_26578422C(v3, v5);

  *a2 = v7;
  return result;
}

BOOL _s16SessionAssertion0B17ReconnectResponseV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, void *a2)
{

  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_2657875D4();
  sub_26579E254();

  sub_26578422C(v3, v5);
  *a2 = v7;
  return v7 != 0;
}

unint64_t sub_2657875D4()
{
  result = qword_280F95590;
  if (!qword_280F95590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95590);
  }

  return result;
}

unint64_t sub_26578764C()
{
  result = qword_280020DE0;
  if (!qword_280020DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020DE0);
  }

  return result;
}

unint64_t sub_2657876A4()
{
  result = qword_280F957E0;
  if (!qword_280F957E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F957E0);
  }

  return result;
}

unint64_t sub_2657876FC()
{
  result = qword_280F957E8;
  if (!qword_280F957E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F957E8);
  }

  return result;
}

uint64_t sub_2657877A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26578780C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2657878AC;
}

void sub_2657878AC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id AssertionClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AssertionClient.init()()
{
  v29 = sub_26579E644();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26579E634();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26579E454();
  MEMORY[0x28223BE20](v5 - 8);
  v28 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection;
  *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_serverStartupToken] = -1;
  v27 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue;
  v6 = sub_26578AFC8(0, &qword_280F95680, 0x277D85C78);
  v25 = "ectResponse.swift";
  v26 = v6;
  sub_26579E444();
  aBlock[0] = MEMORY[0x277D84F90];
  v24 = sub_26578B1CC(&qword_280F95688, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280020E10, &qword_2657A00A0);
  sub_26578A7C8(&qword_280F956A8, &unk_280020E10, &qword_2657A00A0);
  sub_26579E6D4();
  v7 = *MEMORY[0x277D85268];
  v8 = v1 + 104;
  v9 = *(v1 + 104);
  v21 = v3;
  v22 = v8;
  v9(v3, v7, v29);
  *&v0[v27] = sub_26579E674();
  v27 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_calloutQueue;
  sub_26579E444();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26579E6D4();
  v9(v21, v7, v29);
  *&v0[v27] = sub_26579E674();
  *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = *&v0[v28];
  *&v0[v28] = 0;

  v11 = type metadata accessor for AssertionClient();
  v31.receiver = v0;
  v31.super_class = v11;
  v12 = objc_msgSendSuper2(&v31, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_265787E54;
  *(v15 + 24) = v14;
  aBlock[4] = sub_265787E78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265787EA0;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_265787F04()
{
  v1 = sub_26579E464();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_26579E474();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection;
  if (!*&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection])
  {
    sub_26578AFC8(0, &unk_280F95670, 0x277CF3280);
    sub_26578B010();
    v8 = v0;
    v9 = sub_26579E684();
    if (v9)
    {
      v10 = *&v0[v7];
      *&v8[v7] = v9;
      v11 = v9;

      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_26578B064;
      *(v13 + 24) = v12;
      aBlock[4] = sub_26578B06C;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_265788624;
      aBlock[3] = &block_descriptor_37;
      v14 = _Block_copy(aBlock);
      v8;

      [v11 configureConnection_];
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if ((v14 & 1) == 0)
      {
        sub_265788678();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_2657881B0(void *a1, uint64_t a2)
{
  v4 = sub_26579E494();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_2657884A8;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2657884B4;
  v16 = &block_descriptor_40;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_26578851C;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2657884B4;
  v16 = &block_descriptor_43;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_265788528;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2657884B4;
  v16 = &block_descriptor_46;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_2657884B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_265788534(uint64_t a1, const char *a2)
{
  if (qword_280F956C8 != -1)
  {
    swift_once();
  }

  v3 = sub_26579E414();
  __swift_project_value_buffer(v3, qword_280F956D0);
  oslog = sub_26579E404();
  v4 = sub_26579E5F4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_265780000, oslog, v4, a2, v5, 2u);
    MEMORY[0x26675F400](v5, -1, -1);
  }
}

uint64_t sub_265788624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_265788678()
{
  sub_26579E3C4();
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_26578AFC0;
  v10[5] = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2657888C4;
  v10[3] = &block_descriptor_28;
  v3 = _Block_copy(v10);

  v4 = sub_26579E4C4();

  v5 = OBJC_IVAR____TtC16SessionAssertion15AssertionClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v6 = sub_26579E414();
    __swift_project_value_buffer(v6, qword_280F956D0);
    v7 = sub_26579E404();
    v8 = sub_26579E604();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_265780000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x26675F400](v9, -1, -1);
    }
  }
}

void sub_265788870(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_265788918();
  }
}

uint64_t sub_2657888C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_265788918()
{
  v1 = sub_26579E464();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_26579E474();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_265787F04();
    v7 = *&v0[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection];
    if (v7)
    {
      v8 = v7;
      if ([v8 remoteTarget])
      {
        sub_26579E6C4();
        swift_unknownObjectRelease();

        sub_26578AF58(v9);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        sub_26578AF58(v9);
        [v8 activate];
        [v0 didConnect];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265788AB8()
{
  v1 = sub_26579E464();
  isa = v1[-1].isa;
  MEMORY[0x28223BE20](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_26579E474();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_265788918();
  v7 = *(v0 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_connection);
  if (!v7)
  {
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v8 = sub_26579E414();
    __swift_project_value_buffer(v8, qword_280F956D0);
    v1 = sub_26579E404();
    v9 = sub_26579E614();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265780000, v1, v9, "AssertionClient: Failed to establish a connection", v10, 2u);
      MEMORY[0x26675F400](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_26579E6C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020E98, &unk_2657A0118);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_26578AF58(v19);
  }

  if (qword_280F956C8 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_26579E414();
  __swift_project_value_buffer(v12, qword_280F956D0);
  v13 = sub_26579E404();
  v14 = sub_26579E614();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_265780000, v13, v14, "AssertionClient: Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x26675F400](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

id AssertionClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssertionClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_265788EE8(uint64_t a1@<X1>, void *a2@<X8>)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AssertionAcquisitionRequest(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = sub_265788AB8();
  if (v11)
  {
    v12 = v11;
    sub_26579E2A4();
    swift_allocObject();
    sub_26579E294();
    sub_26578B1CC(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest, &protocol conformance descriptor for AssertionAcquisitionRequest);
    v13 = sub_26579E284();
    if (v2)
    {
      v33 = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = sub_26579E334();
      sub_26578422C(v15, v16);

      v18 = sub_26579E344();
      v20 = v19;

      v21 = sub_26579E334();
      v53[0] = 0;
      v22 = [v12 acquire:v21 error:v53];

      v23 = v53[0];
      if (!v22)
      {
        v47 = v23;
        sub_26579E324();

        swift_willThrow();
        sub_26578422C(v18, v20);
        swift_unknownObjectRelease();
        return;
      }

      v51 = v20;
      v52 = a2;
      v24 = sub_26579E344();
      v50 = 0;
      v25 = v24;
      v27 = v26;

      v28 = sub_26579E334();
      sub_26579E2D4();
      swift_allocObject();
      sub_26579E2C4();
      v29 = sub_26579E344();
      v31 = v30;
      sub_265783A30();
      v32 = v50;
      sub_26579E2B4();
      v33 = v29;
      v34 = v31;
      if (!v32)
      {
        sub_26578422C(v29, v31);

        v35 = v53[0];
        v36 = v53[1];
        sub_26578422C(v18, v51);
        sub_26578422C(v25, v27);
        swift_unknownObjectRelease();

        v37 = v52;
        *v52 = v35;
        v37[1] = v36;
        return;
      }
    }

    sub_26578422C(v33, v34);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v38 = sub_26579E414();
    __swift_project_value_buffer(v38, qword_280F956D0);
    sub_265783188(a1, v10);
    v39 = sub_26579E404();
    v40 = sub_26579E614();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53[0] = v42;
      *v41 = 136446210;
      sub_265783188(v10, v8);
      v43 = sub_26579E4B4();
      v45 = v44;
      sub_26578B170(v10);
      v46 = sub_26578A8EC(v43, v45, v53);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_265780000, v39, v40, "AssertionClient: Could not acquire assertion because remote target is bad: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26675F400](v42, -1, -1);
      MEMORY[0x26675F400](v41, -1, -1);
    }

    else
    {

      sub_26578B170(v10);
    }

    sub_26578B11C();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
  }
}

uint64_t sub_26578942C(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(a1);
  v32 = a1;
  v33 = a2;
  sub_26579E304();
  swift_allocObject();
  sub_26579E2F4();
  sub_2657836F0();
  v6 = sub_26579E2E4();
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_26579E334();
    sub_26578422C(v8, v9);

    v11 = sub_26579E344();
    v13 = v12;

    v14 = sub_265788AB8();
    if (v14)
    {
      v15 = v14;
      v16 = sub_26579E334();
      v32 = 0;
      v17 = [v15 invalidate:v16 error:&v32];

      if (v17)
      {
        v18 = v32;
      }

      else
      {
        v30 = v32;
        sub_26579E324();

        swift_willThrow();
      }

      sub_26578422C(v11, v13);
      return swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280F956C8 != -1)
      {
        swift_once();
      }

      v19 = sub_26579E414();
      __swift_project_value_buffer(v19, qword_280F956D0);
      v20 = sub_26579E404();
      v21 = sub_26579E604();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = v13;
        v23 = swift_slowAlloc();
        v33 = a2;
        v34[0] = v23;
        *v22 = 136446210;
        v32 = __PAIR64__(v5, v4);
        v24 = AssertionIdentifier.description.getter();
        v26 = sub_26578A8EC(v24, v25, v34);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_265780000, v20, v21, "Could not invalidate assertion because remote target is bad: %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v27 = v23;
        v13 = v31;
        MEMORY[0x26675F400](v27, -1, -1);
        MEMORY[0x26675F400](v22, -1, -1);
      }

      sub_26578B11C();
      swift_allocError();
      *v28 = 3;
      swift_willThrow();
      return sub_26578422C(v11, v13);
    }
  }

  return result;
}

void sub_2657897B8(void *a1@<X1>, id *a2@<X8>)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = sub_265788AB8();
  if (v5)
  {
    v6 = v5;
    sub_26579E2A4();
    swift_allocObject();
    sub_26579E294();
    v39[0] = a1;
    sub_2657841D8();
    v7 = sub_26579E284();
    if (v2)
    {
      v35 = swift_unexpectedError();
      __break(1u);
      sub_26578422C(v35, v36);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v9 = v7;
      v10 = v8;
      v11 = sub_26579E334();
      sub_26578422C(v9, v10);

      v12 = sub_26579E344();
      v14 = v13;

      v15 = sub_26579E334();
      v39[0] = 0;
      v16 = [v6 reconnect:v15 error:v39];

      v17 = v39[0];
      if (v16)
      {
        v37 = v14;
        v38 = a2;
        v18 = sub_26579E344();
        v20 = v19;

        v21 = sub_26579E334();
        sub_26579E274();
        swift_allocObject();
        sub_26579E264();
        v22 = sub_26579E344();
        v24 = v23;
        sub_2657875D4();
        sub_26579E254();
        sub_26578422C(v22, v24);

        sub_26578422C(v12, v37);
        sub_26578422C(v18, v20);
        swift_unknownObjectRelease();

        *v38 = v39[0];
      }

      else
      {
        v34 = v17;
        sub_26579E324();

        swift_willThrow();
        sub_26578422C(v12, v14);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v25 = sub_26579E414();
    __swift_project_value_buffer(v25, qword_280F956D0);

    v26 = sub_26579E404();
    v27 = sub_26579E604();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136446210;

      v30 = sub_26579E4B4();
      v32 = sub_26578A8EC(v30, v31, v39);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_265780000, v26, v27, "Could not reconnect assertion because remote target is bad: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26675F400](v29, -1, -1);
      MEMORY[0x26675F400](v28, -1, -1);
    }

    sub_26578B11C();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
  }
}

uint64_t AssertionClient.didInvalidate(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26579E334();
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v3 = sub_26579E344();
  v5 = v4;
  sub_26578A710();
  sub_26579E254();
  sub_26578422C(v3, v5);

  AssertionClient.didInvalidate(invalidationMessage:)(&v7);
}

uint64_t AssertionClient.didInvalidate(invalidationMessage:)(unsigned int *a1)
{
  v3 = sub_26579E424();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26579E454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v45 = a1[1];
  v11 = *(a1 + 1);
  v43 = *(a1 + 2);
  v44 = v11;
  v12 = *(a1 + 3);
  v13 = v1 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v38 = v1;
    v39 = v7;
    v37 = *(v13 + 8);
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v40 = v6;
    v41 = v4;
    v42 = v3;
    v16 = sub_26579E414();
    __swift_project_value_buffer(v16, qword_280F956D0);

    v17 = sub_26579E404();
    v18 = sub_26579E624();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47 = v20;
      *v19 = 136446210;
      v36 = v9;
      v21 = v45;
      aBlock = __PAIR64__(v45, v10);
      v35 = v15;
      v22 = v44;
      v49 = v44;
      v23 = AssertionIdentifier.description.getter();
      v25 = sub_26578A8EC(v23, v24, &v47);
      v26 = v22;
      v15 = v35;

      *(v19 + 4) = v25;
      v27 = v21;
      v9 = v36;
      _os_log_impl(&dword_265780000, v17, v18, "Server invalidated assertion: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26675F400](v20, -1, -1);
      MEMORY[0x26675F400](v19, -1, -1);
    }

    else
    {

      v27 = v45;
      v26 = v44;
    }

    v28 = swift_allocObject();
    v29 = v37;
    *(v28 + 16) = v15;
    *(v28 + 24) = v29;
    *(v28 + 32) = v10;
    *(v28 + 36) = v27;
    v30 = v43;
    *(v28 + 40) = v26;
    *(v28 + 48) = v30;
    *(v28 + 56) = v12;
    v52 = sub_26578A764;
    v53 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_26578A2C8;
    v51 = &block_descriptor_9;
    v31 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    sub_26579E434();
    v47 = MEMORY[0x277D84F90];
    sub_26578B1CC(&qword_280F956C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020E28, qword_2657A00A8);
    sub_26578A7C8(&unk_280F956B0, &qword_280020E28, qword_2657A00A8);
    v32 = v46;
    v33 = v42;
    sub_26579E6D4();
    MEMORY[0x26675EB30](0, v9, v32, v31);
    _Block_release(v31);
    swift_unknownObjectRelease();
    (*(v41 + 8))(v32, v33);
    (*(v39 + 8))(v9, v40);
  }

  return result;
}

uint64_t sub_26578A2C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall AssertionClient.didConnect()()
{
  v1 = sub_26579E424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26579E454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v21 = v5;
    v22 = v2;
    v12 = *(v9 + 8);
    if (qword_280F956C8 != -1)
    {
      swift_once();
    }

    v20 = v6;
    v13 = sub_26579E414();
    __swift_project_value_buffer(v13, qword_280F956D0);
    v14 = sub_26579E404();
    v15 = sub_26579E624();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_265780000, v14, v15, "Server connected", v16, 2u);
      MEMORY[0x26675F400](v16, -1, -1);
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v12;
    aBlock[4] = sub_26578AE30;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26578A2C8;
    aBlock[3] = &block_descriptor_15;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    sub_26579E434();
    v23 = MEMORY[0x277D84F90];
    sub_26578B1CC(&qword_280F956C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020E28, qword_2657A00A8);
    sub_26578A7C8(&unk_280F956B0, &qword_280020E28, qword_2657A00A8);
    sub_26579E6D4();
    MEMORY[0x26675EB30](0, v8, v4, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();
    (*(v22 + 8))(v4, v1);
    (*(v20 + 8))(v8, v21);
  }
}

unint64_t sub_26578A710()
{
  result = qword_280F95B78;
  if (!qword_280F95B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B78);
  }

  return result;
}

uint64_t sub_26578A764()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v2;
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(v5, ObjectType, v1);
}

uint64_t sub_26578A7C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26578A81C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26578A890(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26578A8EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26578A8EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26578A9B8(v11, 0, 0, 1, a1, a2);
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
    sub_26578B0BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26578A9B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26578AAC4(a5, a6);
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
    result = sub_26579E774();
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

void *sub_26578AAC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26578AB10(a1, a2);
  sub_26578AC40(&unk_287715868);
  return v3;
}

void *sub_26578AB10(uint64_t a1, unint64_t a2)
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

  v6 = sub_26579A00C(v5, 0);
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

  result = sub_26579E774();
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
        v10 = sub_26579E4F4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26579A00C(v10, 0);
        result = sub_26579E724();
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

uint64_t sub_26578AC40(uint64_t result)
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

  result = sub_26578AD2C(result, v11, 1, v3);
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

char *sub_26578AD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280020F00, &qword_2657A0128);
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

_BYTE **sub_26578AE20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26578AE30()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_26578AF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020E90, &unk_2657A0108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26578AFC8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_26578B010()
{
  result = qword_280F957D8;
  if (!qword_280F957D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F957D8);
  }

  return result;
}

uint64_t sub_26578B0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26578B11C()
{
  result = qword_280F95728[0];
  if (!qword_280F95728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F95728);
  }

  return result;
}

uint64_t sub_26578B170(uint64_t a1)
{
  v2 = type metadata accessor for AssertionAcquisitionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26578B1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26578B24C()
{
  v1 = *v0;
  v2 = 7565169;
  v3 = 0x65726F46656B6166;
  v4 = 0x61746E6573657270;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26578B2F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26578E020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26578B32C(uint64_t a1)
{
  v2 = sub_26578BE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B368(uint64_t a1)
{
  v2 = sub_26578BE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578B3B0(uint64_t a1)
{
  v2 = sub_26578BE98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B3EC(uint64_t a1)
{
  v2 = sub_26578BE98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578B444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000002657A21F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26579E924();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26578B4D8(uint64_t a1)
{
  v2 = sub_26578BF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B514(uint64_t a1)
{
  v2 = sub_26578BF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578B55C(uint64_t a1)
{
  v2 = sub_26578BEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B598(uint64_t a1)
{
  v2 = sub_26578BEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578B5D4(uint64_t a1)
{
  v2 = sub_26578BF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B610(uint64_t a1)
{
  v2 = sub_26578BF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578B64C(uint64_t a1)
{
  v2 = sub_26578BFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578B688(uint64_t a1)
{
  v2 = sub_26578BFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionAttribute.encode(to:)(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F70, &qword_2657A0130);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F78, &qword_2657A0138);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v32 - v4;
  v44 = sub_26579E394();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F80, &qword_2657A0140);
  v35 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F88, &qword_2657A0148);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F90, &qword_2657A0150);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AssertionAttribute(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020F98, &qword_2657A0158);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26578BE44();
  sub_26579EA04();
  sub_265785D84(v48, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v47;
    if (EnumCaseMultiPayload)
    {
      v54 = 2;
      sub_26578BF40();
      v24 = v50;
      sub_26579E894();
      sub_26579E8D4();
      (*(v35 + 8))(v7, v22);
    }

    else
    {
      v23 = *v15;
      v52 = 0;
      sub_26578BFE8();
      v24 = v50;
      sub_26579E894();
      v51 = v23;
      sub_26578C03C();
      sub_26579E8E4();
      (*(v34 + 8))(v12, v10);
    }

    return (*(v49 + 8))(v18, v24);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = v42;
    v26 = v39;
    v27 = v44;
    (*(v42 + 32))(v39, v15, v44);
    v55 = 3;
    sub_26578BEEC();
    v28 = v40;
    v24 = v50;
    sub_26579E894();
    sub_26578CB90(&unk_280F95638, MEMORY[0x277CB9450]);
    v29 = v46;
    sub_26579E8E4();
    (*(v45 + 8))(v28, v29);
    (*(v25 + 8))(v26, v27);
    return (*(v49 + 8))(v18, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v53 = 1;
    sub_26578BF94();
    v20 = v33;
    v21 = v50;
    sub_26579E894();
    (*(v36 + 8))(v20, v37);
  }

  else
  {
    v56 = 4;
    sub_26578BE98();
    v30 = v38;
    v21 = v50;
    sub_26579E894();
    (*(v41 + 8))(v30, v43);
  }

  return (*(v49 + 8))(v18, v21);
}

uint64_t type metadata accessor for AssertionAttribute(uint64_t a1)
{
  result = qword_280F95CE8;
  if (!qword_280F95CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26578BE44()
{
  result = qword_280F95D48;
  if (!qword_280F95D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D48);
  }

  return result;
}

unint64_t sub_26578BE98()
{
  result = qword_280020FA0;
  if (!qword_280020FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020FA0);
  }

  return result;
}

unint64_t sub_26578BEEC()
{
  result = qword_280F95618;
  if (!qword_280F95618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95618);
  }

  return result;
}

unint64_t sub_26578BF40()
{
  result = qword_280020FA8;
  if (!qword_280020FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020FA8);
  }

  return result;
}

unint64_t sub_26578BF94()
{
  result = qword_280F95720;
  if (!qword_280F95720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95720);
  }

  return result;
}

unint64_t sub_26578BFE8()
{
  result = qword_280020FB0;
  if (!qword_280020FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020FB0);
  }

  return result;
}

unint64_t sub_26578C03C()
{
  result = qword_280020FB8;
  if (!qword_280020FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020FB8);
  }

  return result;
}

uint64_t AssertionAttribute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FC0, &qword_2657A0160);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FC8, &qword_2657A0168);
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  MEMORY[0x28223BE20](v5);
  v73 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FD0, &qword_2657A0170);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v58 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FD8, &qword_2657A0178);
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v72 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FE0, &qword_2657A0180);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v58 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FE8, &qword_2657A0188);
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = &v58 - v13;
  v15 = type metadata accessor for AssertionAttribute(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_26578BE44();
  v28 = v80;
  sub_26579E9F4();
  if (!v28)
  {
    v58 = v21;
    v59 = v24;
    v60 = v18;
    v29 = v74;
    v30 = v76;
    v31 = v77;
    v80 = v26;
    v61 = v15;
    v32 = v78;
    v33 = v75;
    v34 = sub_26579E884();
    v35 = v34;
    if (*(v34 + 16) == 1)
    {
      v36 = *(v34 + 32);
      if (v36 != 5)
      {
        if (*(v34 + 32) <= 1u)
        {
          v77 = v34;
          v44 = v79;
          if (v36)
          {
            v84 = 1;
            sub_26578BF94();
            v51 = v72;
            sub_26579E7F4();
            v45 = v32;
            (*(v65 + 8))(v51, v62);
            (*(v44 + 8))(v14, v33);
            swift_unknownObjectRelease();
            v49 = v80;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v83 = 0;
            sub_26578BFE8();
            sub_26579E7F4();
            v45 = v32;
            sub_26578CBD4();
            v46 = v64;
            sub_26579E854();
            (*(v63 + 8))(v29, v46);
            (*(v44 + 8))(v14, v33);
            swift_unknownObjectRelease();
            v47 = v59;
            *v59 = v82;
            swift_storeEnumTagMultiPayload();
            v48 = v47;
            v49 = v80;
            sub_26578CB2C(v48, v80);
          }

          goto LABEL_17;
        }

        if (v36 == 2)
        {
          v85 = 2;
          sub_26578BF40();
          v50 = v30;
          sub_26579E7F4();
          v52 = v67;
          v53 = sub_26579E844();
          v54 = v50;
          v55 = v79;
          (*(v66 + 8))(v54, v52);
          (*(v55 + 8))(v14, v33);
          swift_unknownObjectRelease();
          v56 = v58;
          *v58 = v53 & 1;
          swift_storeEnumTagMultiPayload();
          v57 = v56;
        }

        else
        {
          if (v36 != 3)
          {
            v87 = 4;
            sub_26578BE98();
            sub_26579E7F4();
            (*(v68 + 8))(v31, v69);
            (*(v79 + 8))(v14, v33);
            swift_unknownObjectRelease();
            v49 = v80;
            swift_storeEnumTagMultiPayload();
LABEL_16:
            v45 = v32;
LABEL_17:
            sub_26578CB2C(v49, v45);
            return __swift_destroy_boxed_opaque_existential_1(v81);
          }

          v86 = 3;
          sub_26578BEEC();
          v37 = v73;
          sub_26579E7F4();
          v77 = v35;
          sub_26579E394();
          sub_26578CB90(&qword_280F955D8, MEMORY[0x277CB9458]);
          v38 = v60;
          v39 = v70;
          sub_26579E854();
          (*(v71 + 8))(v37, v39);
          (*(v79 + 8))(v14, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v38;
        }

        v49 = v80;
        sub_26578CB2C(v57, v80);
        goto LABEL_16;
      }
    }

    v40 = sub_26579E764();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FF0, &qword_2657A0190);
    *v42 = v61;
    sub_26579E804();
    sub_26579E754();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v79 + 8))(v14, v33);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_26578CB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26578CB90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26579E394();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26578CBD4()
{
  result = qword_280020FF8;
  if (!qword_280020FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020FF8);
  }

  return result;
}

uint64_t sub_26578CC28()
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

uint64_t sub_26578CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65726F46656B6166 && a2 == 0xEE00646E756F7267)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26579E924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26578CD40(uint64_t a1)
{
  v2 = sub_26578D0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578CD7C(uint64_t a1)
{
  v2 = sub_26578D0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26578CDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26579E924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26578CE38(uint64_t a1)
{
  v2 = sub_26578D114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26578CE74(uint64_t a1)
{
  v2 = sub_26578D114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionInvalidationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021000, &qword_2657A0198);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021008, &qword_2657A01A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26578D0C0();
  sub_26579EA04();
  sub_26578D114();
  sub_26579E894();
  v17 = v11;
  sub_26578D168();
  v12 = v15;
  sub_26579E8E4();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_26578D0C0()
{
  result = qword_280021010;
  if (!qword_280021010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021010);
  }

  return result;
}

unint64_t sub_26578D114()
{
  result = qword_280021018;
  if (!qword_280021018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021018);
  }

  return result;
}

unint64_t sub_26578D168()
{
  result = qword_280021020;
  if (!qword_280021020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021020);
  }

  return result;
}

uint64_t AssertionInvalidationState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021028, &qword_2657A01A8);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021030, &qword_2657A01B0);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26578D0C0();
  sub_26579E9F4();
  if (v2)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = v7;
  v10 = v23;
  if (*(sub_26579E884() + 16) != 1)
  {
    v12 = sub_26579E764();
    swift_allocError();
    v13 = v10;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FF0, &qword_2657A0190);
    *v15 = &type metadata for AssertionInvalidationState;
    sub_26579E804();
    sub_26579E754();
    (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    (*(v20 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_5:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_26578D114();
  sub_26579E7F4();
  v11 = v20;
  sub_26578D53C();
  sub_26579E854();
  (*(v22 + 8))(v6, v4);
  (*(v11 + 8))(v9, v10);
  swift_unknownObjectRelease();
  *v21 = v24;
  v17 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_26578D53C()
{
  result = qword_280021038;
  if (!qword_280021038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021038);
  }

  return result;
}

uint64_t sub_26578D610(uint64_t a1)
{
  result = sub_26578D690();
  if (v2 <= 0x3F)
  {
    result = sub_26579E394();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26578D690()
{
  result = qword_280F95698;
  if (!qword_280F95698)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_280F95698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssertionAttribute.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssertionAttribute.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26578D894()
{
  result = qword_280021040;
  if (!qword_280021040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021040);
  }

  return result;
}

unint64_t sub_26578D8EC()
{
  result = qword_280021048;
  if (!qword_280021048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021048);
  }

  return result;
}

unint64_t sub_26578D944()
{
  result = qword_280021050;
  if (!qword_280021050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021050);
  }

  return result;
}

unint64_t sub_26578D99C()
{
  result = qword_280021058;
  if (!qword_280021058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021058);
  }

  return result;
}

unint64_t sub_26578D9F4()
{
  result = qword_280021060;
  if (!qword_280021060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021060);
  }

  return result;
}

unint64_t sub_26578DA4C()
{
  result = qword_280021068;
  if (!qword_280021068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021068);
  }

  return result;
}

unint64_t sub_26578DAA4()
{
  result = qword_280021070;
  if (!qword_280021070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021070);
  }

  return result;
}

unint64_t sub_26578DAFC()
{
  result = qword_280021078;
  if (!qword_280021078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021078);
  }

  return result;
}

unint64_t sub_26578DB54()
{
  result = qword_280021080;
  if (!qword_280021080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021080);
  }

  return result;
}

unint64_t sub_26578DBAC()
{
  result = qword_280021088;
  if (!qword_280021088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021088);
  }

  return result;
}

unint64_t sub_26578DC04()
{
  result = qword_280F95D28;
  if (!qword_280F95D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D28);
  }

  return result;
}

unint64_t sub_26578DC5C()
{
  result = qword_280F95D30;
  if (!qword_280F95D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D30);
  }

  return result;
}

unint64_t sub_26578DCB4()
{
  result = qword_280F95CF8;
  if (!qword_280F95CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95CF8);
  }

  return result;
}

unint64_t sub_26578DD0C()
{
  result = qword_280F95D00;
  if (!qword_280F95D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D00);
  }

  return result;
}

unint64_t sub_26578DD64()
{
  result = qword_280F95D08;
  if (!qword_280F95D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D08);
  }

  return result;
}

unint64_t sub_26578DDBC()
{
  result = qword_280F95D10;
  if (!qword_280F95D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D10);
  }

  return result;
}

unint64_t sub_26578DE14()
{
  result = qword_280F95D18;
  if (!qword_280F95D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D18);
  }

  return result;
}

unint64_t sub_26578DE6C()
{
  result = qword_280F95D20;
  if (!qword_280F95D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D20);
  }

  return result;
}

unint64_t sub_26578DEC4()
{
  result = qword_280F95B68;
  if (!qword_280F95B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B68);
  }

  return result;
}

unint64_t sub_26578DF1C()
{
  result = qword_280F95B70;
  if (!qword_280F95B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B70);
  }

  return result;
}

unint64_t sub_26578DF74()
{
  result = qword_280F95D38;
  if (!qword_280F95D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D38);
  }

  return result;
}

unint64_t sub_26578DFCC()
{
  result = qword_280F95D40;
  if (!qword_280F95D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D40);
  }

  return result;
}

uint64_t sub_26578E020(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7565169 && a2 == 0xE300000000000000;
  if (v3 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002657A21B0 == a2 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F46656B6166 && a2 == 0xEE00646E756F7267 || (sub_26579E924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974 || (sub_26579E924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002657A21D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_26579E924();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26578E20C()
{
  v0 = sub_26579E3B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26579E414();
  __swift_allocate_value_buffer(v4, qword_280F956D0);
  __swift_project_value_buffer(v4, qword_280F956D0);
  (*(v1 + 104))(v3, *MEMORY[0x277CB9770], v0);
  return sub_26579E3F4();
}

uint64_t static Logger.assertion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F956C8 != -1)
  {
    swift_once();
  }

  v2 = sub_26579E414();
  v3 = __swift_project_value_buffer(v2, qword_280F956D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26578E420()
{
  v1 = v0;
  sub_26579E734();
  MEMORY[0x26675E9B0](0xD000000000000014, 0x80000002657A1D00);
  v2 = (v0 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_activityIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x26675E9B0](v3, v4);

  MEMORY[0x26675E9B0](0x69746E656469203BLL, 0xEE00203A72656966);
  v5 = OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v6 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v6);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  v7 = (v1 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_explanation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x26675E9B0](v8, v9);

  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v10 = *(v1 + v5);
  if (v10)
  {
    v11 = *(*(v10 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v11);
    os_unfair_lock_unlock(v11);
  }

  v12 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v12);

  return 0;
}

uint64_t sub_26578E794@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion);
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
    v6 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

char *PresentationAssertion.init(explanation:activityIdentifier:presentationState:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v63 = a6;
  v61 = type metadata accessor for AssertionAttribute(0);
  v13 = MEMORY[0x28223BE20](v61);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = sub_26579E394();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion] = 0;
  v21 = &v7[OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_invalidationHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v7[OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_activityIdentifier];
  v64 = a3;
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v7[OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_explanation];
  v66 = a1;
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = type metadata accessor for PresentationAssertion();
  v69.receiver = v7;
  v69.super_class = v24;
  v65 = a4;

  v67 = a2;

  v25 = objc_msgSendSuper2(&v69, sel_init);
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v29 = *MEMORY[0x277CB9430];
      v30 = sub_26579E384();
      v31 = *(v30 - 8);
      v59 = v18;
      v32 = v31;
      (*(v31 + 104))(v20, v29, v30);
      (*(v32 + 56))(v20, 0, 1, v30);
      v18 = v59;
    }

    else
    {
      if (a5 != 5)
      {
        v59 = v18;
        if (a5 == 6)
        {
          v35 = *MEMORY[0x277CB9438];
          v36 = sub_26579E384();
          v37 = *(v36 - 8);
          (*(v37 + 104))(v20, v35, v36);
          (*(v37 + 56))(v20, 0, 1, v36);
          v26 = MEMORY[0x277CB9418];
          v18 = v59;
          goto LABEL_16;
        }

        goto LABEL_19;
      }

      v27 = sub_26579E384();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
    }

    v26 = MEMORY[0x277CB9418];
    goto LABEL_16;
  }

  if (a5 > 2)
  {
    v28 = MEMORY[0x277CB9420];
LABEL_13:
    v33 = *v28;
    v34 = sub_26579E374();
    (*(*(v34 - 8) + 104))(v20, v33, v34);
    v26 = MEMORY[0x277CB9440];
    goto LABEL_16;
  }

  if (a5 != 1)
  {
    if (a5 == 2)
    {
      v28 = MEMORY[0x277CB9428];
      goto LABEL_13;
    }

LABEL_19:
    result = sub_26579E794();
    __break(1u);
    return result;
  }

  v26 = MEMORY[0x277CB9410];
LABEL_16:
  v60 = v20;
  (*(v18 + 104))(v20, *v26, v17);
  (*(v18 + 16))(v16, v20, v17);
  swift_storeEnumTagMultiPayload();
  v38 = v62;
  sub_265785D84(v16, v62);
  v39 = swift_allocObject();
  v40 = v63;
  v41 = v68;
  *(v39 + 2) = v63;
  *(v39 + 3) = v41;
  *(v39 + 4) = v25;
  type metadata accessor for AttributeAssertion(0);
  v42 = swift_allocObject();
  v43 = v25;
  sub_265785DF4(v40, v41);
  sub_26579E354();
  v44 = v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v44 = 0;
  *(v44 + 8) = 0;
  v61 = v16;
  *(v44 + 16) = 1;
  v45 = v18;
  v46 = (v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v46 = 0;
  v46[1] = 0;
  v59 = v17;
  v47 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v48 = swift_allocObject();
  v49 = swift_slowAlloc();
  *(v48 + 16) = v49;
  *v49 = 0;
  *(v42 + v47) = v48;
  v50 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v42 + v50) = qword_280F958F0;
  *(v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  v51 = v65;
  *(v42 + 16) = v64;
  *(v42 + 24) = v51;
  *(v42 + 32) = 1;
  sub_265785D84(v38, v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  v52 = v67;
  *(v42 + 40) = v66;
  *(v42 + 48) = v52;
  *(v42 + 56) = 0;
  *(v42 + 64) = 1;
  v53 = (v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v54 = *(v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v55 = *(v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v53 = sub_265785DE8;
  v53[1] = v39;

  sub_2657818A8(v54, v55);
  v56 = v42 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v56 = 0;
  *(v56 + 8) = 1;
  sub_265797F98();

  sub_2657818A8(v40, v68);
  sub_265785E04(v38);
  sub_265785E04(v61);
  (*(v45 + 8))(v60, v59);
  *&v43[OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion] = v42;

  return v43;
}

void sub_26578F090()
{
  if (*(v0 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion))
  {

    sub_2657981C8();
  }
}

uint64_t sub_26578F190()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4)
  {
    return 0;
  }

  if (v3 < 8)
  {
    return qword_2657A0B60[v3];
  }

  result = sub_26579E934();
  __break(1u);
  return result;
}

uint64_t sub_26578F290()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion21PresentationAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4 == 1)
  {
    return v3 != 0;
  }

  else
  {
    return 2;
  }
}

id PresentationAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresentationAssertion.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PresentationAssertion();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26578F77C()
{
  v1 = v0;
  sub_26579E734();
  MEMORY[0x26675E9B0](0xD000000000000014, 0x80000002657A1D00);
  v2 = (v0 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_activityIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x26675E9B0](v3, v4);

  MEMORY[0x26675E9B0](0x69746E656469203BLL, 0xEE00203A72656966);
  v5 = OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v6 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v6);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  v7 = (v1 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_explanation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x26675E9B0](v8, v9);

  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v10 = *(v1 + v5);
  if (v10)
  {
    v11 = *(*(v10 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v11);
    os_unfair_lock_unlock(v11);
  }

  v12 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v12);

  return 0;
}

uint64_t sub_26578FAF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion);
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
    v6 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

char *ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = type metadata accessor for AssertionAttribute(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  *&v7[OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion] = 0;
  v21 = &v7[OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_invalidationHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v7[OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_activityIdentifier];
  v42 = a3;
  v43 = a1;
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v7[OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_explanation];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = type metadata accessor for ProminentPresentationAssertion();
  v47.receiver = v7;
  v47.super_class = v24;

  v44 = a2;

  v25 = objc_msgSendSuper2(&v47, sel_init);
  swift_storeEnumTagMultiPayload();
  sub_265785D84(v20, v18);
  v26 = swift_allocObject();
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  *(v26 + 4) = v25;
  type metadata accessor for AttributeAssertion(0);
  v27 = swift_allocObject();
  v28 = v25;
  v45 = a5;
  v46 = a6;
  sub_265785DF4(a5, a6);
  sub_26579E354();
  v29 = v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = (v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v32 = swift_allocObject();
  v33 = swift_slowAlloc();
  *(v32 + 16) = v33;
  *v33 = 0;
  *(v27 + v31) = v32;
  v34 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  if (a7 > 0.0)
  {
    v35 = a7;
  }

  else
  {
    v35 = 0.0;
  }

  swift_beginAccess();
  *(v27 + v34) = qword_280F958F0;
  *(v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v27 + 16) = v42;
  *(v27 + 24) = a4;
  *(v27 + 32) = 1;
  sub_265785D84(v18, v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  v36 = v44;
  *(v27 + 40) = v43;
  *(v27 + 48) = v36;
  *(v27 + 56) = v35;
  *(v27 + 64) = a7 <= 0.0;
  v37 = (v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v38 = *(v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v39 = *(v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v37 = sub_265785DE8;
  v37[1] = v26;

  sub_2657818A8(v38, v39);
  v40 = v27 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_265797F98();

  sub_2657818A8(v45, v46);
  sub_265785E04(v18);
  sub_265785E04(v20);
  *&v28[OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion] = v27;

  return v28;
}

void sub_265790070()
{
  if (*(v0 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion))
  {

    sub_2657981C8();
  }
}

uint64_t sub_265790170()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4)
  {
    return 0;
  }

  if (v3 < 8)
  {
    return qword_2657A0C08[v3];
  }

  result = sub_26579E934();
  __break(1u);
  return result;
}

uint64_t sub_265790270()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion30ProminentPresentationAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4 == 1)
  {
    return v3 != 0;
  }

  else
  {
    return 2;
  }
}

id ProminentPresentationAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProminentPresentationAssertion.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProminentPresentationAssertion();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2657906F4()
{
  type metadata accessor for AttributeAssertionManager();
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[2] = v1;
  v0[4] = MEMORY[0x277D84F98];
  v3 = [objc_allocWithZone(type metadata accessor for AssertionClient()) init];
  v0[3] = v3;
  v4 = &v3[OBJC_IVAR____TtC16SessionAssertion15AssertionClient_delegate];
  swift_beginAccess();
  *(v4 + 1) = &protocol witness table for AttributeAssertionManager;
  result = swift_unknownObjectWeakAssign();
  qword_280F958F0 = v0;
  return result;
}

uint64_t static AttributeAssertionManager.shared.getter()
{
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AttributeAssertionManager.shared.setter(uint64_t a1)
{
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280F958F0 = a1;
}

uint64_t (*static AttributeAssertionManager.shared.modify(uint64_t a1))()
{
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_265790948@<X0>(void *a1@<X8>)
{
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280F958F0;
}

uint64_t sub_2657909C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280F958E8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280F958F0 = v1;
}

uint64_t sub_265790A50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_265790A88(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for AssertionAcquisitionRequest(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265785D84(a1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute, &v9[v7[7]]);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_acquisitionDate;
  v13 = sub_26579E364();
  (*(*(v13 - 8) + 16))(v9, a1 + v12, v13);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = &v9[v7[8]];
  *v19 = v11;
  v19[1] = v10;
  v20 = &v9[v7[10]];
  *v20 = v17;
  v20[8] = v18;
  v21 = &v9[v7[9]];
  *v21 = v14;
  *(v21 + 1) = v15;
  v21[16] = v16;
  v30 = v4[3];
  v31 = v9;

  sub_265790CE4(v14, v15);
  sub_26579E654();
  if (!v3)
  {
    v23 = v32;
    v22 = v33;
    v24 = a1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
    *v24 = v32;
    *(v24 + 8) = v22;
    *(v24 + 16) = 0;
    v25 = *(v4[2] + 16);
    os_unfair_lock_lock(v25);
    type metadata accessor for AttributeAssertionManager.WeakAttributeAssertion();
    v26 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v4[4];
    v4[4] = 0x8000000000000000;
    sub_26579300C(v26, v23, v22, isUniquelyReferenced_nonNull_native);
    v4[4] = v34;
    swift_endAccess();
    os_unfair_lock_unlock(v25);
  }

  return sub_26578B170(v9);
}

uint64_t sub_265790D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_26579300C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_265792AF8(a2, a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_265793200();
        v13 = v15;
      }

      result = sub_265792E54(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

void sub_265790DE4(unsigned int *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v6);
  sub_265790EFC(v1, v3 | (v4 << 32), v5, &v8);
  if (v2)
  {

    os_unfair_lock_unlock(v6);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v6);
    if (v8)
    {
      MEMORY[0x28223BE20](v7);
      sub_26579E654();
    }
  }
}

uint64_t sub_265790EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (*(v8 + 16) && (v9 = sub_265792AF8(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  sub_265790D10(0, a2, a3);
  result = swift_endAccess();
  if (v11)
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a4 = Strong;
  return result;
}

uint64_t AttributeAssertionManager.deinit()
{

  return v0;
}

uint64_t AttributeAssertionManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

Swift::Void __swiftcall AttributeAssertionManager.didConnect()()
{
  v1 = v0;
  v138 = sub_26579E3A4();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v3 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for AssertionReconnectProperties(0);
  v146 = *(v147 - 8);
  v4 = MEMORY[0x28223BE20](v147);
  v145 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v135 - v6;
  if (qword_280F956C8 != -1)
  {
    goto LABEL_122;
  }

LABEL_2:
  v137 = v3;
  v8 = sub_26579E414();
  v141 = __swift_project_value_buffer(v8, qword_280F956D0);
  v3 = sub_26579E404();
  v9 = sub_26579E604();
  if (os_log_type_enabled(v3, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_265780000, v3, v9, "Reconnecting assertions", v10, 2u);
    MEMORY[0x26675F400](v10, -1, -1);
  }

  v142 = *(v1 + 16);
  v11 = *(v142 + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = *(v1 + 32);
  v148 = MEMORY[0x277D84F90];
  v161[0] = MEMORY[0x277D84F90];
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (!v15)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v15 &= v15 - 1;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_9;
      }
    }

    v3 = Strong;
    MEMORY[0x26675EA50]();
    if (*((v161[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v144 = v7;
      sub_26579E5B4();
      v7 = v144;
    }

    sub_26579E5C4();
    v148 = v161[0];
  }

  while (v15);
  while (1)
  {
LABEL_9:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  os_unfair_lock_unlock(v11);
  v20 = v148;
  v156 = v148 & 0xFFFFFFFFFFFFFF8;
  if (v148 >> 62)
  {
    v158 = sub_26579E7A4();
  }

  else
  {
    v158 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v140 = 0;
  v157 = v20 & 0xC000000000000001;
  v22 = MEMORY[0x277D84F90];
  while (v158 != v21)
  {
    if (v157)
    {
      v23 = MEMORY[0x26675EC10](v21, v20);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v21 >= *(v156 + 16))
      {
        goto LABEL_118;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_117;
      }
    }

    v26 = *(v23 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
    v25 = *(v23 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 8);
    v3 = *(v23 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16);

    ++v21;
    if ((v3 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2657929F4(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      v3 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v22 = sub_2657929F4((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v3;
      v29 = &v22[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v21 = v24;
    }
  }

  v143 = v1;
  v139 = sub_265794A4C(v22);

  if (v158)
  {
    v1 = 0;
    v30 = MEMORY[0x277D84F90];
    v144 = v7;
    while (1)
    {
      if (v157)
      {
        v31 = MEMORY[0x26675EC10](v1, v20);
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v1 >= *(v156 + 16))
        {
          goto LABEL_120;
        }

        v31 = *(v20 + 8 * v1 + 32);

        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_119;
        }
      }

      if (*(v31 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
      {
      }

      else
      {
        v32 = *(v31 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
        v153 = *(v31 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 8);
        v154 = v3;
        v151 = v32;
        v152 = HIDWORD(v32);
        v33 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute;
        v34 = *(v147 + 20);
        v155 = v30;
        v35 = v145;
        v36 = &v145[v34];
        v37 = type metadata accessor for AssertionAcquisitionRequest(0);
        sub_265785D84(v31 + v33, &v36[v37[5]]);
        v38 = *(v31 + 48);
        v150 = *(v31 + 40);
        v39 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_acquisitionDate;
        v40 = sub_26579E364();
        (*(*(v40 - 8) + 16))(v36, v31 + v39, v40);
        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        LOBYTE(v39) = *(v31 + 32);
        v149 = *(v31 + 56);
        v43 = *(v31 + 64);

        sub_265790CE4(v42, v41);

        v44 = &v36[v37[6]];
        v45 = v149;
        *v44 = v150;
        *(v44 + 1) = v38;
        v46 = &v36[v37[8]];
        *v46 = v45;
        v46[8] = v43;
        v47 = &v36[v37[7]];
        *v47 = v42;
        *(v47 + 1) = v41;
        v7 = v144;
        v47[16] = v39;
        LODWORD(v47) = v152;
        *v35 = v151;
        *(v35 + 1) = v47;
        *(v35 + 1) = v153;
        v48 = v35;
        v30 = v155;
        sub_265794AC4(v48, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_26579281C(0, *&v30[4]._os_unfair_lock_opaque + 1, 1, v30);
        }

        v50 = *&v30[4]._os_unfair_lock_opaque;
        v49 = *&v30[6]._os_unfair_lock_opaque;
        v20 = v148;
        if (v50 >= v49 >> 1)
        {
          v30 = sub_26579281C((v49 > 1), v50 + 1, 1, v30);
        }

        *&v30[4]._os_unfair_lock_opaque = v50 + 1;
        sub_265794AC4(v7, v30 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v50);
        v3 = v154;
      }

      ++v1;
      if (v3 == v158)
      {
        goto LABEL_50;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_50:

  v52 = v143;
  MEMORY[0x28223BE20](v51);
  *(&v135 - 2) = v53;
  *(&v135 - 1) = v30;
  v54 = v140;
  sub_26579E654();
  v55 = v54;
  if (!v54)
  {

    v60 = v161[0];

LABEL_57:

    v61 = sub_26579E404();
    v62 = sub_26579E604();

    v63 = os_log_type_enabled(v61, v62);
    v152 = 0;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v161[0] = v65;
      *v64 = 136446210;
      sub_265794C38();
      v66 = sub_26579E484();
      v68 = sub_26578A8EC(v66, v67, v161);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_265780000, v61, v62, "Map: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x26675F400](v65, -1, -1);
      MEMORY[0x26675F400](v64, -1, -1);
    }

    v69 = *(v142 + 16);
    os_unfair_lock_lock(v69);
    sub_265792364(v60, v52);

    os_unfair_lock_unlock(v69);
    v70 = sub_265792264(v60);
    v3 = v70;
    if (v70[2] <= v139[2] >> 3)
    {
      v161[0] = v139;
      sub_2657934A8(v70);

      v71 = v161[0];
    }

    else
    {
      v71 = sub_2657935B4(v70, v139);
    }

    v80 = sub_26579E404();
    v81 = sub_26579E604();

    v82 = os_log_type_enabled(v80, v81);
    v158 = v71;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v161[0] = v3;
      *v83 = 136446210;
      sub_265794C38();
      v84 = sub_26579E5D4();
      v86 = sub_26578A8EC(v84, v85, v161);

      *(v83 + 4) = v86;
      v71 = v158;
      _os_log_impl(&dword_265780000, v80, v81, "Failed identifiers: %{public}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v3);
      MEMORY[0x26675F400](v3, -1, -1);
      MEMORY[0x26675F400](v83, -1, -1);
    }

    v87 = 0;
    v7 = v71 + 56;
    v88 = 1 << v71[32];
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v90 = v89 & *(v71 + 7);
    v1 = (v88 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        if (!v90)
        {
          while (1)
          {
            v91 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              break;
            }

            if (v91 >= v1)
            {

              return;
            }

            v90 = *&v7[8 * v91];
            ++v87;
            if (v90)
            {
              v87 = v91;
              goto LABEL_77;
            }
          }

LABEL_121:
          __break(1u);
LABEL_122:
          swift_once();
          goto LABEL_2;
        }

LABEL_77:
        v92 = (*(v71 + 6) + ((v87 << 10) | (16 * __clz(__rbit64(v90)))));
        v93 = *(v142 + 16);
        v94 = *v92;
        v3 = v92[1];
        os_unfair_lock_lock(v93);
        v95 = *(v143 + 32);
        if (*(v95 + 16) && (v96 = sub_265792AF8(v94, v3), (v97 & 1) != 0))
        {
          v98 = *(*(v95 + 56) + 8 * v96);
        }

        else
        {
          v98 = 0;
        }

        swift_beginAccess();
        v99 = sub_265792AF8(v94, v3);
        if (v100)
        {
          v3 = v99;
          v101 = v143;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *(v101 + 32);
          v159 = v103;
          *(v101 + 32) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_265793200();
            v103 = v159;
          }

          sub_265792E54(v3, v103);
          *(v101 + 32) = v103;
        }

        v90 &= v90 - 1;
        swift_endAccess();
        if (v98)
        {
          break;
        }

        os_unfair_lock_unlock(v93);
LABEL_93:

        v71 = v158;
      }

      v104 = swift_weakLoadStrong();

      os_unfair_lock_unlock(v93);
      if (!v104)
      {
        goto LABEL_93;
      }

      v3 = *(*(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
      os_unfair_lock_lock(v3);
      v105 = v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
      if ((*(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) & 1) == 0)
      {
        os_unfair_lock_unlock(v3);
        goto LABEL_108;
      }

      *v105 = 7;
      *(v105 + 8) = 0;
      *(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;

      v106 = (v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
      if (*(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
      {
        __break(1u);
        return;
      }

      v107 = *(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager);
      v109 = *v106;
      v108 = v106[1];
      v154 = (v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
      v110 = *(*(v107 + 16) + 16);

      v153 = v110;
      os_unfair_lock_lock(v110);
      swift_beginAccess();
      v111 = *(v107 + 32);
      v112 = *(v111 + 16);
      v155 = v3;
      v156 = v109;
      v157 = v108;
      if (v112 && (v113 = sub_265792AF8(v109, v108), (v114 & 1) != 0))
      {
        v115 = *(*(v111 + 56) + 8 * v113);
      }

      else
      {
        v115 = 0;
      }

      v116 = v154;
      swift_beginAccess();
      v117 = sub_265792AF8(v156, v157);
      if (v118)
      {
        v119 = v117;
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *(v107 + 32);
        v159 = v121;
        *(v107 + 32) = 0x8000000000000000;
        if (!v120)
        {
          sub_265793200();
          v121 = v159;
        }

        sub_265792E54(v119, v121);
        *(v107 + 32) = v121;
      }

      swift_endAccess();
      if (v115)
      {
        v122 = swift_weakLoadStrong();

        os_unfair_lock_unlock(v153);
        if (v122)
        {
          v154 = &v135;
          MEMORY[0x28223BE20](v123);
          *(&v135 - 8) = v125;
          *(&v135 - 7) = v124;
          *(&v135 - 3) = v157;
          *(&v135 - 2) = v126;
          v127 = v152;
          sub_26579E654();
          if (v127)
          {

            v152 = 0;
          }

          else
          {
            v152 = 0;
          }

          goto LABEL_106;
        }
      }

      else
      {
        os_unfair_lock_unlock(v153);
      }

LABEL_106:
      v128 = (v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v3 = *(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v129 = *(v104 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
      *v128 = 0;
      v128[1] = 0;
      *v116 = 0;
      v116[1] = 0;
      *(v116 + 16) = 1;
      os_unfair_lock_unlock(v155);
      if (v3)
      {
        sub_26578B11C();
        v130 = swift_allocError();
        *v131 = 0;
        (v3)(v104, v130);

        sub_265786184(v3, v129);
        v71 = v158;
      }

      else
      {
LABEL_108:

        v71 = v158;
      }
    }
  }

  v161[0] = v54;
  v56 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210D0, &qword_2657A0C50);
  if (swift_dynamicCast() && v160 == 3)
  {

    v57 = sub_26579E404();
    v58 = sub_26579E604();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_265780000, v57, v58, "Could not reconnect assertions because server is missing", v59, 2u);
      MEMORY[0x26675F400](v59, -1, -1);
    }

    return;
  }

  v161[0] = v54;
  v72 = v54;
  v73 = v137;
  v74 = v138;
  if (swift_dynamicCast())
  {
    v75 = v136;
    if ((*(v136 + 88))(v73, v74) == *MEMORY[0x277CB95C8])
    {

      v76 = sub_26579E404();
      v77 = sub_26579E604();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_265780000, v76, v77, "Could not reconnect assertions because client is not entitled", v78, 2u);
        MEMORY[0x26675F400](v78, -1, -1);
      }

      v60 = sub_265794B28(MEMORY[0x277D84F90]);
      v79 = v161[0];

      goto LABEL_57;
    }

    (*(v75 + 8))(v73, v74);
  }

  else
  {
  }

  v132 = sub_26579E404();
  v133 = sub_26579E604();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_265780000, v132, v133, "Could not reconnect assertions for unexpected error", v134, 2u);
    MEMORY[0x26675F400](v134, -1, -1);
  }
}

uint64_t sub_265792264(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_265794C38();
  result = MEMORY[0x26675EAB0](v2, &type metadata for AssertionIdentifier, v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_265793370(v13, *v12, *(v12 + 8)))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 48) + ((v10 << 10) | (16 * v11));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265792364(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    v12 = *(a2 + 32);
    if (*(v12 + 16))
    {
      v13 = (v8 << 10) | (16 * __clz(__rbit64(v10)));
      v14 = (*(v3 + 48) + v13);
      v15 = (*(v3 + 56) + v13);
      v49 = *v15;
      v48 = v15[1];
      v50 = *(v15 + 1);
      v16 = *v14;
      v17 = v14[1];
      v18 = sub_265792AF8(*v14, v17);
      if (v19)
      {
        v20 = *(*(v12 + 56) + 8 * v18);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v45 = v3;
          v46 = v16;
          v22 = v17;
          v23 = v49 | (v48 << 32);
          v24 = Strong + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
          *v24 = v23;
          *(v24 + 8) = v50;
          *(v24 + 16) = 0;
          swift_beginAccess();
          v47 = v20;
          swift_retain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *(a2 + 32);
          *(a2 + 32) = 0x8000000000000000;
          v27 = sub_265792AF8(v23, v50);
          v29 = v26[2];
          v30 = (v28 & 1) == 0;
          v31 = __OFADD__(v29, v30);
          v32 = v29 + v30;
          if (v31)
          {
            goto LABEL_30;
          }

          v33 = v28;
          if (v26[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v43 = v27;
              sub_265793200();
              v27 = v43;
            }
          }

          else
          {
            sub_265792B90(v32, isUniquelyReferenced_nonNull_native);
            v27 = sub_265792AF8(v23, v50);
            if ((v33 & 1) != (v34 & 1))
            {
              goto LABEL_32;
            }
          }

          if (v33)
          {
            *(v26[7] + 8 * v27) = v47;
          }

          else
          {
            v26[(v27 >> 6) + 8] |= 1 << v27;
            v35 = v26[6] + 16 * v27;
            *v35 = v49;
            *(v35 + 4) = v48;
            *(v35 + 8) = v50;
            *(v26[7] + 8 * v27) = v47;
            v36 = v26[2];
            v31 = __OFADD__(v36, 1);
            v37 = v36 + 1;
            if (v31)
            {
              goto LABEL_31;
            }

            v26[2] = v37;
          }

          *(a2 + 32) = v26;
          swift_endAccess();
          swift_beginAccess();
          v38 = sub_265792AF8(v46, v22);
          if (v39)
          {
            v40 = v38;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v42 = *(a2 + 32);
            *(a2 + 32) = 0x8000000000000000;
            if (!v41)
            {
              sub_265793200();
            }

            sub_265792E54(v40, v42);
            *(a2 + 32) = v42;
          }

          swift_endAccess();

          v3 = v45;
        }
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v10 = *(v4 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_26579E954();
  __break(1u);
  return result;
}

void AttributeAssertionManager.didInvalidate(invalidationMessage:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v7);
  sub_265790EFC(v2, v3, v4, &v14);
  os_unfair_lock_unlock(v7);
  v8 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    v9 = *(*(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v9);
    sub_265798AFC(v8, v6, v5, &v14);
    os_unfair_lock_unlock(v9);
    v10 = v14;
    if (v14)
    {
      v11 = v15;
      sub_26578B11C();
      v12 = swift_allocError();
      *v13 = 0;

      v10(v8, v12);

      sub_265786184(v10, v11);
      sub_265786184(v10, v11);
    }
  }
}

void *sub_26579281C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210F0, &qword_2657A0D10);
  v10 = *(type metadata accessor for AssertionReconnectProperties(0) - 8);
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
  v15 = *(type metadata accessor for AssertionReconnectProperties(0) - 8);
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

char *sub_2657929F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210F8, &unk_2657A0D18);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_265792AF8(uint64_t a1, uint64_t a2)
{
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](a2);
  v4 = sub_26579E9E4();

  return sub_26579317C(a1, a2, v4);
}

uint64_t sub_265792B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210E0, &qword_2657A0D00);
  v34 = v4;
  result = sub_26579E7C4();
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
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 4);
      v35 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26579E9A4();
      sub_26579E9C4();
      sub_26579E9C4();
      MEMORY[0x26675EEA0](v23);
      result = sub_26579E9E4();
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
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v35;
      *(v16 + 4) = v22;
      *(v16 + 8) = v23;
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

uint64_t sub_265792E54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26579E6E4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_26579E9A4();
      sub_26579E9C4();
      sub_26579E9C4();
      MEMORY[0x26675EEA0](v9);
      result = sub_26579E9E4();
      v10 = result & v7;
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

unint64_t sub_26579300C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_265792AF8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265792B90(v16, a4 & 1);
      result = sub_265792AF8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26579E954();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_265793200();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_26579317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v8 + 8);
      if (v9 == a1 && v10 == HIDWORD(a1) && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_265793200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210E0, &qword_2657A0D00);
  v2 = *v0;
  v3 = sub_26579E7B4();
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

uint64_t sub_265793370(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = HIDWORD(a2);
  v8 = *v3;
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](a3);
  v9 = sub_26579E9E4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 4);
      v16 = *(v13 + 8);
      v17 = v14 == a2 && v15 == v7;
      if (v17 && v16 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_2657948C0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 4) = v7;
  *(a1 + 8) = a3;
  return result;
}

void *sub_2657934A8(void *result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 7;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & result[7];
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v2[6] + ((v9 << 10) | (16 * v10));
        result = sub_265793B00(*v11, *(v11 + 8), v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v3[v9];
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2657935B4(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v70 = 0;
    v62 = 0;
    v68 = a2;
    v69 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v67 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    while (1)
    {
      do
      {
        if (!v9)
        {
          v13 = v70;
          v12 = v68;
          while (1)
          {
            v14 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v14 >= v10)
            {

              goto LABEL_60;
            }

            v9 = *(v6 + 8 * v14);
            ++v13;
            if (v9)
            {
              v70 = v14;
              goto LABEL_13;
            }
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v12 = v68;
LABEL_13:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v16 = (*(v69 + 48) + ((v70 << 10) | (16 * v15)));
        v3 = *v16;
        v17 = v16[1];
        v18 = *(v16 + 1);
        sub_26579E9A4();
        sub_26579E9C4();
        sub_26579E9C4();
        MEMORY[0x26675EEA0](v18);
        v19 = sub_26579E9E4();
        v20 = -1 << *(v12 + 32);
        v2 = v19 & ~v20;
        v12 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v11[v2 >> 6]) == 0);
      v21 = *(v68 + 48);
      v22 = (v21 + 16 * v2);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v22 + 1);
      v26 = v23 == v3 && v24 == v17;
      if (v26 && v25 == v18)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v12 = v2 >> 6;
        v4 = 1 << v2;
        if ((v11[v2 >> 6] & (1 << v2)) == 0)
        {
          break;
        }

        v28 = v21 + 16 * v2;
        if (*v28 == v3 && *(v28 + 4) == v17 && *(v28 + 8) == v18)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_25:
    v73 = v67;
    v74 = v70;
    v75 = v9;
    v72[0] = v69;
    v72[1] = v6;
    v29 = (63 - v20) >> 6;
    v3 = 8 * v29;

    v63 = v29;
    if (v29 <= 0x80)
    {
      goto LABEL_26;
    }

LABEL_64:
    v59 = v68;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_26:
      v64 = &v62;
      MEMORY[0x28223BE20](v30);
      v2 = &v62 - v31;
      memcpy(&v62 - v31, v11, v3);
      v32 = *(v2 + 8 * v12) & ~v4;
      v33 = v68;
      v34 = *(v68 + 16);
      v66 = v2;
      *(v2 + 8 * v12) = v32;
      v12 = v33;
      v35 = v34 - 1;
LABEL_27:
      v65 = v35;
      while (v9)
      {
LABEL_35:
        v39 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v40 = (*(v69 + 48) + ((v70 << 10) | (16 * v39)));
        v3 = *v40;
        v41 = v40[1];
        v4 = *(v40 + 1);
        sub_26579E9A4();
        v2 = v71;
        sub_26579E9C4();
        sub_26579E9C4();
        MEMORY[0x26675EEA0](v4);
        v42 = sub_26579E9E4();
        v43 = -1 << *(v12 + 32);
        v44 = v42 & ~v43;
        v45 = v44 >> 6;
        v46 = 1 << v44;
        if (((1 << v44) & v11[v44 >> 6]) != 0)
        {
          v47 = *(v12 + 48);
          v48 = (v47 + 16 * v44);
          v49 = *v48;
          v50 = v48[1];
          v51 = *(v48 + 1);
          if (v49 == v3 && v50 == v41 && v51 == v4)
          {
LABEL_28:
            v36 = v66[v45];
            v66[v45] = v36 & ~v46;
            if ((v36 & v46) != 0)
            {
              v35 = v65 - 1;
              if (__OFSUB__(v65, 1))
              {
                __break(1u);
              }

              if (v65 == 1)
              {

                v12 = MEMORY[0x277D84FA0];
                goto LABEL_57;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v54 = ~v43;
            while (1)
            {
              v44 = (v44 + 1) & v54;
              v45 = v44 >> 6;
              v46 = 1 << v44;
              if ((v11[v44 >> 6] & (1 << v44)) == 0)
              {
                break;
              }

              v55 = v47 + 16 * v44;
              if (*v55 == v3 && *(v55 + 4) == v41 && *(v55 + 8) == v4)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      v37 = v70;
      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_63;
        }

        if (v38 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v38);
        ++v37;
        if (v9)
        {
          v70 = v38;
          goto LABEL_35;
        }
      }

      if (v10 <= v70 + 1)
      {
        v56 = v70 + 1;
      }

      else
      {
        v56 = v10;
      }

      v70 = v56 - 1;
      v12 = sub_265794104(v66, v63, v65, v12);
LABEL_57:
      v57 = v69;
LABEL_60:
      sub_265794D38(v57);
      return v12;
    }

    v60 = swift_slowAlloc();
    memcpy(v60, v11, v3);
    v61 = v62;
    v12 = sub_265793ED8(v60, v63, v59, v2, v72);

    if (!v61)
    {

      MEMORY[0x26675F400](v60, -1, -1);
      v57 = v72[0];
      v67 = v73;
      v70 = v74;
      goto LABEL_60;
    }

    result = MEMORY[0x26675F400](v60, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_265793B00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = HIDWORD(a1);
  v8 = *v3;
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](a2);
  result = sub_26579E9E4();
  v10 = -1 << *(v8 + 32);
  v11 = result & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 4);
      v16 = *(v13 + 8);
      v17 = v14 == v5 && v15 == v7;
      if (v17 && v16 == a2)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    v23 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26579434C();
      v20 = v23;
    }

    v21 = (*(v20 + 48) + 16 * v11);
    v22 = v21[1];
    *a3 = *v21;
    *(a3 + 8) = v22;
    result = sub_2657946F0(v11);
    *v3 = v23;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_265793C58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210D8, "r!");
  result = sub_26579E704();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      v21 = *(v18 + 8);
      sub_26579E9A4();
      sub_26579E9C4();
      sub_26579E9C4();
      MEMORY[0x26675EEA0](v21);
      result = sub_26579E9E4();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      *(v14 + 8) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_265793ED8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v36 = v9;
    do
    {
      while (1)
      {
        do
        {
          v12 = a5[3];
          v13 = a5[4];
          if (!v13)
          {
            v15 = (a5[2] + 64) >> 6;
            v16 = a5[3];
            while (1)
            {
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_32;
              }

              if (v14 >= v15)
              {
                break;
              }

              v13 = *(a5[1] + 8 * v14);
              ++v16;
              if (v13)
              {
                goto LABEL_10;
              }
            }

            if (v15 <= v12 + 1)
            {
              v34 = v12 + 1;
            }

            else
            {
              v34 = (a5[2] + 64) >> 6;
            }

            a5[3] = v34 - 1;
            a5[4] = 0;

            return sub_265794104(v7, a2, v36, a3);
          }

          v14 = a5[3];
LABEL_10:
          v17 = *(*a5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13))));
          v18 = *v17;
          v19 = *(v17 + 4);
          v20 = *(v17 + 8);
          a5[3] = v14;
          a5[4] = (v13 - 1) & v13;
          sub_26579E9A4();
          sub_26579E9C4();
          sub_26579E9C4();
          MEMORY[0x26675EEA0](v20);
          result = sub_26579E9E4();
          v21 = -1 << *(a3 + 32);
          v22 = result & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
        }

        while (((1 << v22) & *(v10 + 8 * (v22 >> 6))) == 0);
        v25 = *(a3 + 48);
        v26 = (v25 + 16 * v22);
        v27 = *v26;
        v28 = v26[1];
        v29 = *(v26 + 1);
        v30 = v27 == v18 && v28 == v19;
        if (v30 && v29 == v20)
        {
          break;
        }

        v32 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v32;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            break;
          }

          v33 = v25 + 16 * v22;
          if (*v33 == v18 && *(v33 + 4) == v19 && *(v33 + 8) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v11 = v7[v23];
      v7[v23] = v11 & ~v24;
    }

    while ((v11 & v24) == 0);
    v9 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      if (v36 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_265794104(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210D8, "r!");
  result = sub_26579E714();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 4);
    v19 = *(v16 + 8);
    sub_26579E9A4();
    sub_26579E9C4();
    sub_26579E9C4();
    MEMORY[0x26675EEA0](v19);
    result = sub_26579E9E4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 16 * v23;
    *v28 = v18;
    *(v28 + 4) = v17;
    *(v28 + 8) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_26579434C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210D8, "r!");
  v2 = *v0;
  v3 = sub_26579E6F4();
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
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = v18[1];
      v20 = (*(v4 + 48) + v17);
      *v20 = *v18;
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

uint64_t sub_2657944A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210D8, "r!");
  result = sub_26579E704();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      v21 = *(v18 + 8);
      sub_26579E9A4();
      sub_26579E9C4();
      sub_26579E9C4();
      MEMORY[0x26675EEA0](v21);
      result = sub_26579E9E4();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      *(v14 + 8) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

unint64_t sub_2657946F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26579E6E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_26579E9A4();
        sub_26579E9C4();
        sub_26579E9C4();
        MEMORY[0x26675EEA0](v10);
        v11 = sub_26579E9E4() & v7;
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

unint64_t sub_2657948C0(unint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = HIDWORD(result);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    sub_265793C58(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a3;
      result = sub_26579434C();
      a3 = v10;
      goto LABEL_18;
    }

    sub_2657944A0(v8 + 1);
  }

  v11 = *v4;
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](a2);
  result = sub_26579E9E4();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 4);
      v17 = *(v14 + 8);
      v18 = v15 == v6 && v16 == v7;
      if (v18 && v17 == a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_18:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = v6;
  *(v21 + 4) = v7;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_26579E944();
  __break(1u);
  return result;
}

uint64_t sub_265794A4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_265794C38();
  result = MEMORY[0x26675EAB0](v2, &type metadata for AssertionIdentifier, v3);
  v7 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      sub_265793370(v6, *(v5 - 1), *v5);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_265794AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionReconnectProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265794B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800210E8, &qword_2657A0D08);
    v3 = sub_26579E7D4();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_265792AF8(v5 | (v6 << 32), v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 4) = v6;
      *(v12 + 8) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_265794C38()
{
  result = qword_280F955B8;
  if (!qword_280F955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F955B8);
  }

  return result;
}

id AssertionOptions.__allocating_init(invalidateOnSessionRequest:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC16SessionAssertion16AssertionOptions_invalidateOnSessionRequest] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssertionOptions.init(invalidateOnSessionRequest:)(char a1)
{
  v1[OBJC_IVAR____TtC16SessionAssertion16AssertionOptions_invalidateOnSessionRequest] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AssertionOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AssertionOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_265794F7C()
{
  v1 = v0;
  sub_26579E734();
  MEMORY[0x26675E9B0](0x203A746567726174, 0xE800000000000000);
  swift_beginAccess();
  sub_26579E784();
  MEMORY[0x26675E9B0](0x69746E656469203BLL, 0xEE00203A72656966);
  v2 = OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v3 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v3);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  v4 = (v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];

  MEMORY[0x26675E9B0](v5, v6);

  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v7 = *(v1 + v2);
  if (v7)
  {
    v8 = *(*(v7 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v8);
    os_unfair_lock_unlock(v8);
  }

  v9 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v9);

  MEMORY[0x26675E9B0](0xD000000000000016, 0x80000002657A24A0);
  v10 = sub_2657957E4();
  v14 = MEMORY[0x26675EA70](v10, MEMORY[0x277D837D0], v11, v12, v13);
  v16 = v15;

  MEMORY[0x26675E9B0](v14, v16);

  return 0;
}

uint64_t sub_265795254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_265790CE4(v4, v5);
}

uint64_t sub_2657952B4(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  sub_265790CE4(v2, v3);
  return sub_265796744(v6, v7);
}

uint64_t sub_26579534C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return sub_265790CE4(v4, v5);
}

uint64_t sub_2657953A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return sub_265796744(v6, v7);
}

uint64_t sub_2657954F4()
{
  v1 = (v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2657955B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_265795618(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2657956E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion);
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
    v6 = *(v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_2657957E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

    os_unfair_lock_lock(v3);
    v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState);

    os_unfair_lock_unlock(v3);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        sub_26579674C(0, v5, 0);
        v6 = (v4 + 40);
        do
        {
          v8 = *(v6 - 1);
          v7 = *v6;
          v9 = *(v2 + 16);
          v10 = *(v2 + 24);

          if (v9 >= v10 >> 1)
          {
            sub_26579674C((v10 > 1), v9 + 1, 1);
          }

          *(v2 + 16) = v9 + 1;
          v11 = v2 + 16 * v9;
          *(v11 + 32) = v8;
          *(v11 + 40) = v7;
          v6 += 2;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
    }
  }

  return v2;
}

char *SessionRequestAssertion.__allocating_init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v13 = objc_allocWithZone(v6);
  return SessionRequestAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(a1, a2, a3, v9, a5, a6);
}

char *SessionRequestAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  LODWORD(v47) = a4;
  v11 = type metadata accessor for AssertionAttribute(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  *&v6[OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion] = 0;
  v17 = &v6[OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_invalidationHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  v46 = a3;
  v18 = [a3 bundleIdentifier];
  v19 = sub_26579E4A4();
  v21 = v20;

  v22 = &v6[OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target];
  v43 = v19;
  v44 = a1;
  *v22 = v19;
  *(v22 + 1) = v21;
  v22[16] = 0;
  v23 = &v6[OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_explanation];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = type metadata accessor for SessionRequestAssertion();
  v49.receiver = v6;
  v49.super_class = v24;

  v45 = a2;

  v25 = objc_msgSendSuper2(&v49, sel_init);
  *v16 = v47;
  swift_storeEnumTagMultiPayload();
  sub_265785D84(v16, v14);
  v26 = swift_allocObject();
  v27 = v48;
  *(v26 + 2) = a5;
  *(v26 + 3) = v27;
  *(v26 + 4) = v25;
  type metadata accessor for AttributeAssertion(0);
  v28 = swift_allocObject();
  v29 = v25;
  v47 = a5;
  sub_265785DF4(a5, v27);
  sub_26579E354();
  v30 = v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = (v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *(v33 + 16) = v34;
  *v34 = 0;
  *(v28 + v32) = v33;
  v35 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v28 + v35) = qword_280F958F0;
  *(v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v28 + 16) = v43;
  *(v28 + 24) = v21;
  *(v28 + 32) = 0;
  sub_265785D84(v14, v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  v36 = v45;
  *(v28 + 40) = v44;
  *(v28 + 48) = v36;
  *(v28 + 56) = 0x403E000000000000;
  *(v28 + 64) = 0;
  v37 = (v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v38 = *(v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v39 = *(v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v37 = sub_265785DE8;
  v37[1] = v26;

  sub_2657818A8(v38, v39);
  v40 = v28 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_265797F98();

  sub_2657818A8(v47, v48);
  sub_265785E04(v14);
  sub_265785E04(v16);
  *&v29[OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion] = v28;

  return v29;
}

id SessionRequestAssertion.__allocating_init(explanation:target:options:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(v7);
  v13 = sub_26579E494();

  v14 = a4[OBJC_IVAR____TtC16SessionAssertion16AssertionOptions_invalidateOnSessionRequest];
  if (a5)
  {
    v18[4] = a5;
    v18[5] = a6;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_265796098;
    v18[3] = &block_descriptor_0;
    v15 = _Block_copy(v18);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 initWithExplanation:v13 target:a3 invalidateOnSessionRequest:v14 invalidationHandler:v15];
  sub_2657818A8(a5, a6);

  _Block_release(v15);
  return v16;
}

id SessionRequestAssertion.init(explanation:target:options:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_26579E494();

  v13 = a4[OBJC_IVAR____TtC16SessionAssertion16AssertionOptions_invalidateOnSessionRequest];
  if (a5)
  {
    v17[4] = a5;
    v17[5] = a6;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_265796098;
    v17[3] = &block_descriptor_3;
    v14 = _Block_copy(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 initWithExplanation:v12 target:a3 invalidateOnSessionRequest:v13 invalidationHandler:v14];
  sub_2657818A8(a5, a6);

  _Block_release(v14);
  return v15;
}

void sub_265796098(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_2657961E0()
{
  if (*(v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion))
  {

    sub_2657981C8();
  }
}

uint64_t sub_2657962E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4)
  {
    return 0;
  }

  if (v3 < 8)
  {
    return qword_2657A0DB8[v3];
  }

  result = sub_26579E934();
  __break(1u);
  return result;
}

uint64_t sub_2657963E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_attributeAssertion);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v2);

  if (v4 == 1)
  {
    return v3 != 0;
  }

  else
  {
    return 2;
  }
}

id sub_26579655C()
{
  v1 = (v0 + OBJC_IVAR____TtC16SessionAssertion23SessionRequestAssertion_target);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = objc_allocWithZone(SNAAssertionTarget);
  sub_265790CE4(v2, v3);
  v5 = sub_26579E494();
  sub_265796744(v2, v3);
  v6 = [v4 initWithBundleIdentifier_];

  return v6;
}

id sub_265796690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_26579674C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265796A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_265796A7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021128, &unk_2657A0DA8);
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

uint64_t AttributeAssertion.__allocating_init(explanation:target:attribute:duration:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v15 = *a3;
  v14 = a3[1];
  v16 = *(a3 + 16);
  sub_26579E354();
  v17 = v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = (v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *(v20 + 16) = v21;
  *(v13 + v19) = v20;
  *v21 = 0;
  v22 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v13 + v22) = qword_280F958F0;
  *(v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v13 + 16) = v15;
  *(v13 + 24) = v14;
  *(v13 + 32) = v16;
  sub_265785D84(a4, v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6 & 1;
  v23 = (v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v24 = *(v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v25 = *(v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v23 = a7;
  v23[1] = a8;

  sub_265785DF4(a7, a8);
  sub_265786184(v24, v25);
  v26 = v13 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_265797F98();
  sub_265786184(a7, a8);
  sub_265785E04(a4);
  return v13;
}

uint64_t Target.identifier.getter()
{
  v1 = *v0;
  sub_265790CE4(*v0, v0[1]);
  return v1;
}

uint64_t sub_265796DC8(uint64_t a1)
{
  v2 = sub_265798004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265796E04(uint64_t a1)
{
  v2 = sub_265798004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265796E40(uint64_t a1)
{
  v2 = sub_265798058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265796E7C(uint64_t a1)
{
  v2 = sub_265798058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265796EB8()
{
  if (*v0)
  {
    return 0x7974697669746361;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_265796EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_26579E924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26579E924();

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

uint64_t sub_265796FC8(uint64_t a1)
{
  v2 = sub_265797FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265797004(uint64_t a1)
{
  v2 = sub_265797FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021130, &qword_2657A0E00);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021138, &qword_2657A0E08);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021140, &qword_2657A0E10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265797FB0();
  sub_26579EA04();
  if (v13)
  {
    v26 = 1;
    sub_265798004();
    v14 = v20;
    sub_26579E894();
    v15 = v22;
    sub_26579E8C4();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_265798058();
    sub_26579E894();
    v16 = v19;
    sub_26579E8C4();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Target.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021150, &qword_2657A0E18);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021158, &qword_2657A0E20);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021160, &qword_2657A0E28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_265797FB0();
  v13 = v34;
  sub_26579E9F4();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_26579E884();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_26578CC28();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_26579E764();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FF0, &qword_2657A0190);
      *v26 = &type metadata for Target;
      sub_26579E804();
      sub_26579E754();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_265798004();
        sub_26579E7F4();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_26579E834();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_265798058();
        v28 = v7;
        sub_26579E7F4();
        v19 = v33;
        v18 = v34;
        v21 = sub_26579E834();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_265797850()
{
  v1 = v0;
  v2 = type metadata accessor for AssertionAttribute(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_26579E734();
  v15 = v13;
  MEMORY[0x26675E9B0](0x696669746E656469, 0xEC000000203A7265);
  v5 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16);
  v13 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v6 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v6);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  MEMORY[0x26675E9B0](*(v1 + 40), *(v1 + 48));
  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v7 = *(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(*(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16));
  v8 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v9 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v7);
  *&v13 = v8;
  BYTE8(v13) = v9;
  v10 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v10);

  MEMORY[0x26675E9B0](0x626972747461203BLL, 0xED0000203A657475);
  sub_265785D84(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute, v4);
  v11 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v11);

  return v15;
}

uint64_t AttributeAssertion.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_265790CE4(v2, v3);
}

uint64_t AttributeAssertion.explanation.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_265797AB0(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  *(a1 + 8) = v4;

  os_unfair_lock_unlock(v3);
}

void sub_265797B20(void *a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  *a1 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState);

  os_unfair_lock_unlock(v3);
}

uint64_t AttributeAssertion.init(explanation:target:attribute:duration:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = *a3;
  v13 = a3[1];
  v15 = *(a3 + 16);
  sub_26579E354();
  v16 = v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = (v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *(v8 + v18) = v19;
  *v20 = 0;
  v21 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v8 + v21) = qword_280F958F0;
  *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v8 + 16) = v14;
  *(v8 + 24) = v13;
  *(v8 + 32) = v15;
  sub_265785D84(a4, v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6 & 1;
  v22 = (v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v23 = *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v24 = *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v22 = a7;
  v22[1] = a8;

  sub_265785DF4(a7, a8);
  sub_265786184(v23, v24);
  v25 = v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_265797F98();
  sub_265786184(a7, a8);
  sub_265785E04(a4);
  return v8;
}

uint64_t AttributeAssertion.deinit()
{
  v1 = type metadata accessor for AssertionAttribute(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute;
  sub_265785D84(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute, v3);
  if (swift_getEnumCaseMultiPayload() == 1 || ((sub_265785E04(v3), v5 = *(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16), os_unfair_lock_lock(v5), v6 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state), v7 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8), os_unfair_lock_unlock(v5), v7 == 1) ? (v8 = v6 == 0) : (v8 = 1), v8))
  {
    sub_265796744(*(v0 + 16), *(v0 + 24));

    v9 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_acquisitionDate;
    v10 = sub_26579E364();
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
    sub_265785E04(v0 + v4);
    sub_265786184(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler), *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8));

    return v0;
  }

  else
  {
    result = sub_26579E794();
    __break(1u);
  }

  return result;
}

uint64_t AttributeAssertion.__deallocating_deinit()
{
  AttributeAssertion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}