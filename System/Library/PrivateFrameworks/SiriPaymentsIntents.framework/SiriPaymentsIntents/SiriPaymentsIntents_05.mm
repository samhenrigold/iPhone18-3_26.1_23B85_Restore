id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = type metadata accessor for PersonNameComponents();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a2, 1) == 1)
  {
    v18 = 0;
  }

  else
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(a2, v28);
    v18 = isa;
  }

  if (a4)
  {
    v15 = MEMORY[0x26D620690](a3);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v13 = MEMORY[0x26D620690](a6);

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a9)
  {
    v11 = MEMORY[0x26D620690](a8);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v26 initWithPersonHandle:a1 nameComponents:v18 displayName:v16 image:a5 contactIdentifier:v14 customIdentifier:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x28223BE20](0, a2);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22, &v17);
    v15 = v28;
    v16 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in serialize<A>(_:at:), &v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_2687818D0()
{
  v2 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  type metadata accessor for ParameterResolutionRecord();

  return implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v1 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26878242C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v2);
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with take of PersonNameComponents?(const void *a1, void *a2)
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of PersonNameComponents?(uint64_t a1)
{
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t outlined consume of PaymentsDirectInvocations?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 255)
  {
    return outlined consume of PaymentsDirectInvocations(result, a2, a3);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x277D849A8];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata completion function for ContactDisambiguationStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for PayeeDisambiguationStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PayeeDisambiguationStrategy;
  if (!type metadata singleton initialization cache for PayeeDisambiguationStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for PayeeDisambiguationStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for PayerDisambiguationStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PayerDisambiguationStrategy;
  if (!type metadata singleton initialization cache for PayerDisambiguationStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t instantiation function for generic protocol witness table for ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>()
{
  v2 = lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>;
  if (!lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsBaseCATs.buttonCancel(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.buttonCancel()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.buttonCancel(), 0);
}

uint64_t PaymentsBaseCATs.buttonCancel()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.buttonYes(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.buttonYes()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.buttonYes(), 0);
}

uint64_t PaymentsBaseCATs.buttonYes()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.confirmApp(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.confirmApp(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.confirmApp(app:), 0);
}

uint64_t PaymentsBaseCATs.confirmApp(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t PaymentsBaseCATs.confirmApp(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.disambiguateApp(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.disambiguateApp()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.disambiguateApp(), 0);
}

uint64_t PaymentsBaseCATs.disambiguateApp()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:completion:)(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v50, v39);
  v44 = v34 - v43;
  v45 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v52 = v34 - v45;
  v63 = v9;
  v62 = v10;
  v61 = v11;
  v59 = v12;
  v60 = v13;
  v58 = v5;
  v51 = 1;
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v48 = _allocateUninitializedArray<A>(_:)();
  v49 = v14;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v51 & 1);
  v16 = v50;
  v17 = v52;
  *v49 = v15;
  outlined init with copy of SpeakableString?(v16, v17);
  v53 = type metadata accessor for SpeakableString();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = *(v54 + 48);
  v57 = v54 + 48;
  if (v56(v52, v51) == 1)
  {
    outlined destroy of SpeakableString?(v52);
    v33 = v49;
    v49[1]._countAndFlagsBits = 0;
    v33[1]._object = 0;
    v33[2]._countAndFlagsBits = 0;
    v33[2]._object = 0;
  }

  else
  {
    v18 = v49;
    v49[2]._object = v53;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[1]._countAndFlagsBits);
    (*(v54 + 32))(boxed_opaque_existential_1, v52, v53);
  }

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v49[3] = v20;

  if (v39)
  {
    v38 = v39;
    v37 = v39;
    v21 = type metadata accessor for PaymentsDialogConcept(0);
    v22 = v49;
    v23 = v37;
    v49[5]._object = v21;
    v22[4]._countAndFlagsBits = v23;
  }

  else
  {
    v32 = v49;
    v49[4]._countAndFlagsBits = 0;
    v32[4]._object = 0;
    v32[5]._countAndFlagsBits = 0;
    v32[5]._object = 0;
  }

  v35 = v49 + 7;
  v36 = 1;
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  v25 = v40;
  v26 = v44;
  v49[6] = v24;
  outlined init with copy of SpeakableString?(v25, v26);
  if ((v56)(v44, v36, v53) == 1)
  {
    outlined destroy of SpeakableString?(v44);
    v31 = v49;
    v49[7]._countAndFlagsBits = 0;
    v31[7]._object = 0;
    v31[8]._countAndFlagsBits = 0;
    v31[8]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v35->_countAndFlagsBits;
    v49[8]._object = v53;
    v28 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v54 + 32))(v28, v44, v53);
  }

  _finalizeUninitializedArray<A>(_:)();
  v34[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v34[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:), 0);
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)()
{
  v19 = v0[13];
  v18 = v0[8];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v0[14] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v18, v19);
  v20 = type metadata accessor for SpeakableString();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1) == 1)
  {
    outlined destroy of SpeakableString?(v16[13]);
    v17[1]._countAndFlagsBits = 0;
    v17[1]._object = 0;
    v17[2]._countAndFlagsBits = 0;
    v17[2]._object = 0;
  }

  else
  {
    v15 = v16[13];
    v17[2]._object = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17[1]._countAndFlagsBits);
    (*(v21 + 32))(boxed_opaque_existential_1, v15, v20);
  }

  v14 = v16[9];
  v17[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v14)
  {
    v13 = v16[9];
    v17[5]._object = type metadata accessor for PaymentsDialogConcept(0);
    v17[4]._countAndFlagsBits = v13;
  }

  else
  {
    v17[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v12 = v16[12];
  v11 = v16[10];
  v17[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v11, v12);
  if ((v22)(v12, 1, v20) == 1)
  {
    outlined destroy of SpeakableString?(v16[12]);
    v17[7]._countAndFlagsBits = 0;
    v17[7]._object = 0;
    v17[8]._countAndFlagsBits = 0;
    v17[8]._object = 0;
  }

  else
  {
    v10 = v16[12];
    v17[8]._object = v20;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v17[7]._countAndFlagsBits);
    (*(v21 + 32))(v4, v10, v20);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v16[15] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  v16[16] = v5;
  *v5 = v16[2];
  v5[1] = PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:);
  v6 = v16[7];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v46 = a1;
  v37 = a2;
  v38 = a3;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v46, v37);
  v40 = v31 - v39;
  v41 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v48 = v31 - v41;
  v57 = v8;
  v56 = v9;
  v55 = v10;
  v54 = v4;
  v47 = 1;
  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  v45 = v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v47 & 1);
  v13 = v46;
  v14 = v48;
  *v45 = v12;
  outlined init with copy of SpeakableString?(v13, v14);
  v49 = type metadata accessor for SpeakableString();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = *(v50 + 48);
  v53 = v50 + 48;
  if (v52(v48, v47) == 1)
  {
    outlined destroy of SpeakableString?(v48);
    v30 = v45;
    v45[1]._countAndFlagsBits = 0;
    v30[1]._object = 0;
    v30[2]._countAndFlagsBits = 0;
    v30[2]._object = 0;
  }

  else
  {
    v15 = v45;
    v45[2]._object = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v50 + 32))(boxed_opaque_existential_1, v48, v49);
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v45[3] = v17;

  if (v37)
  {
    v35 = v37;
    v34 = v37;
    v18 = type metadata accessor for PaymentsDialogConcept(0);
    v19 = v45;
    v20 = v34;
    v45[5]._object = v18;
    v19[4]._countAndFlagsBits = v20;
  }

  else
  {
    v29 = v45;
    v45[4]._countAndFlagsBits = 0;
    v29[4]._object = 0;
    v29[5]._countAndFlagsBits = 0;
    v29[5]._object = 0;
  }

  v32 = v45 + 7;
  v33 = 1;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  v22 = v38;
  v23 = v40;
  v45[6] = v21;
  outlined init with copy of SpeakableString?(v22, v23);
  if ((v52)(v40, v33, v49) == 1)
  {
    outlined destroy of SpeakableString?(v40);
    v28 = v45;
    v45[7]._countAndFlagsBits = 0;
    v28[7]._object = 0;
    v28[8]._countAndFlagsBits = 0;
    v28[8]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v32->_countAndFlagsBits;
    v45[8]._object = v49;
    v25 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v50 + 32))(v25, v40, v49);
  }

  _finalizeUninitializedArray<A>(_:)();
  v31[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v31[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.knownIntentResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.knownIntentResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.knownIntentResponse(), 0);
}

uint64_t PaymentsBaseCATs.knownIntentResponse()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:completion:)(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v56, v43);
  v48 = v38 - v47;
  v49 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v50 = v38 - v49;
  v51 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v58 = v38 - v51;
  v69 = v12;
  v68 = v13;
  v67 = v14;
  v65 = v15;
  v66 = v16;
  v64 = v5;
  v57 = 1;
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  v55 = v17;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v57 & 1);
  v19 = v56;
  v20 = v58;
  *v55 = v18;
  outlined init with copy of SpeakableString?(v19, v20);
  v59 = type metadata accessor for SpeakableString();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = *(v60 + 48);
  v63 = v60 + 48;
  if (v62(v58, v57) == 1)
  {
    outlined destroy of SpeakableString?(v58);
    v37 = v55;
    v55[1]._countAndFlagsBits = 0;
    v37[1]._object = 0;
    v37[2]._countAndFlagsBits = 0;
    v37[2]._object = 0;
  }

  else
  {
    v21 = v55;
    v55[2]._object = v59;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21[1]._countAndFlagsBits);
    (*(v60 + 32))(boxed_opaque_existential_1, v58, v59);
  }

  v41 = v55 + 4;
  v42 = 1;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  v24 = v43;
  v25 = v50;
  v55[3] = v23;
  outlined init with copy of SpeakableString?(v24, v25);
  if ((v62)(v50, v42, v59) == 1)
  {
    outlined destroy of SpeakableString?(v50);
    v36 = v55;
    v55[4]._countAndFlagsBits = 0;
    v36[4]._object = 0;
    v36[5]._countAndFlagsBits = 0;
    v36[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v41->_countAndFlagsBits;
    v55[5]._object = v59;
    v27 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v60 + 32))(v27, v50, v59);
  }

  v39 = v55 + 7;
  v40 = 1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v29 = v44;
  v30 = v48;
  v55[6] = v28;
  outlined init with copy of SpeakableString?(v29, v30);
  if ((v62)(v48, v40, v59) == 1)
  {
    outlined destroy of SpeakableString?(v48);
    v35 = v55;
    v55[7]._countAndFlagsBits = 0;
    v35[7]._object = 0;
    v35[8]._countAndFlagsBits = 0;
    v35[8]._object = 0;
  }

  else
  {
    v31 = &v39->_countAndFlagsBits;
    v55[8]._object = v59;
    v32 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v60 + 32))(v32, v48, v59);
  }

  _finalizeUninitializedArray<A>(_:)();
  v38[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v38[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;

  return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:), 0);
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)()
{
  v21 = v0[14];
  v20 = v0[8];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v0[15] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v19 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v20, v21);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v21, 1) == 1)
  {
    outlined destroy of SpeakableString?(v18[14]);
    v19[1]._countAndFlagsBits = 0;
    v19[1]._object = 0;
    v19[2]._countAndFlagsBits = 0;
    v19[2]._object = 0;
  }

  else
  {
    v17 = v18[14];
    v19[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v17, v22);
  }

  v16 = v18[13];
  v15 = v18[9];
  v19[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v15, v16);
  if ((v24)(v16, 1, v22) == 1)
  {
    outlined destroy of SpeakableString?(v18[13]);
    v19[4]._countAndFlagsBits = 0;
    v19[4]._object = 0;
    v19[5]._countAndFlagsBits = 0;
    v19[5]._object = 0;
  }

  else
  {
    v14 = v18[13];
    v19[5]._object = v22;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v19[4]._countAndFlagsBits);
    (*(v23 + 32))(v4, v14, v22);
  }

  v13 = v18[12];
  v12 = v18[10];
  v19[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  if ((v24)(v13, 1, v22) == 1)
  {
    outlined destroy of SpeakableString?(v18[12]);
    v19[7]._countAndFlagsBits = 0;
    v19[7]._object = 0;
    v19[8]._countAndFlagsBits = 0;
    v19[8]._object = 0;
  }

  else
  {
    v11 = v18[12];
    v19[8]._object = v22;
    v5 = __swift_allocate_boxed_opaque_existential_1(&v19[7]._countAndFlagsBits);
    (*(v23 + 32))(v5, v11, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v18[16] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = swift_task_alloc();
  v18[17] = v6;
  *v6 = v18[2];
  v6[1] = PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:);
  v7 = v18[7];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v52 = a1;
  v41 = a2;
  v42 = a3;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v52, v41);
  v44 = v35 - v43;
  v45 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = v35 - v45;
  v47 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v54 = v35 - v47;
  v63 = v11;
  v62 = v12;
  v61 = v13;
  v60 = v4;
  v53 = 1;
  v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v50 = _allocateUninitializedArray<A>(_:)();
  v51 = v14;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v53 & 1);
  v16 = v52;
  v17 = v54;
  *v51 = v15;
  outlined init with copy of SpeakableString?(v16, v17);
  v55 = type metadata accessor for SpeakableString();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = *(v56 + 48);
  v59 = v56 + 48;
  if (v58(v54, v53) == 1)
  {
    outlined destroy of SpeakableString?(v54);
    v34 = v51;
    v51[1]._countAndFlagsBits = 0;
    v34[1]._object = 0;
    v34[2]._countAndFlagsBits = 0;
    v34[2]._object = 0;
  }

  else
  {
    v18 = v51;
    v51[2]._object = v55;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[1]._countAndFlagsBits);
    (*(v56 + 32))(boxed_opaque_existential_1, v54, v55);
  }

  v38 = v51 + 4;
  v39 = 1;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  v21 = v41;
  v22 = v46;
  v51[3] = v20;
  outlined init with copy of SpeakableString?(v21, v22);
  if ((v58)(v46, v39, v55) == 1)
  {
    outlined destroy of SpeakableString?(v46);
    v33 = v51;
    v51[4]._countAndFlagsBits = 0;
    v33[4]._object = 0;
    v33[5]._countAndFlagsBits = 0;
    v33[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v38->_countAndFlagsBits;
    v51[5]._object = v55;
    v24 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v56 + 32))(v24, v46, v55);
  }

  v36 = v51 + 7;
  v37 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v26 = v42;
  v27 = v44;
  v51[6] = v25;
  outlined init with copy of SpeakableString?(v26, v27);
  if ((v58)(v44, v37, v55) == 1)
  {
    outlined destroy of SpeakableString?(v44);
    v32 = v51;
    v51[7]._countAndFlagsBits = 0;
    v32[7]._object = 0;
    v32[8]._countAndFlagsBits = 0;
    v32[8]._object = 0;
  }

  else
  {
    v28 = &v36->_countAndFlagsBits;
    v51[8]._object = v55;
    v29 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v56 + 32))(v29, v44, v55);
  }

  _finalizeUninitializedArray<A>(_:)();
  v35[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v35[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.labelForPreferences(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.labelForPreferences()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForPreferences(), 0);
}

uint64_t PaymentsBaseCATs.labelForPreferences()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent(), 0);
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.noResultsResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.noResultsResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.noResultsResponse(), 0);
}

uint64_t PaymentsBaseCATs.noResultsResponse()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](PaymentsBaseCATs.slotDisplayValue(slotName:), 0);
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsBaseCATs.unsupportedOnWatch(), 0);
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsBaseCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsBaseCATs;
  if (!type metadata singleton initialization cache for PaymentsBaseCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsBaseCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsBaseCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t BaseStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v2;
}

uint64_t BaseStrategy.ttsEnabled.getter()
{
  v13 = 0;
  v2 = *v0;
  v13 = v0;
  v12 = v2[10];
  v11 = v2[11];
  v10 = v2[12];
  outlined init with copy of GlobalsProviding((v0 + 13), v7);
  v4 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 16))(v4);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v5 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5 & 1;
}

uint64_t BaseStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v44 = a1;
  v57 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v63 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v65 = partial apply for closure #1 in OSLogArguments.append(_:);
  v67 = partial apply for closure #1 in OSLogArguments.append(_:);
  v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v82 = 0;
  v81 = 0;
  v37 = 0;
  v54 = *v2;
  v38 = 0;
  v39 = type metadata accessor for Parse();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3);
  v43 = v27 - v42;
  v50 = type metadata accessor for Logger();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v45 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v44, v4);
  v6 = v27 - v45;
  v47 = v27 - v45;
  v82 = v5;
  v81 = v46;
  v51 = v54[10];
  v80[3] = v51;
  v52 = v54[11];
  v80[2] = v52;
  v53 = v54[12];
  v80[1] = v53;
  v7 = Logger.payments.unsafeMutableAddressor();
  (*(v48 + 16))(v6, v7, v50);
  v61 = 7;
  v8 = swift_allocObject();
  v9 = v52;
  v10 = v53;
  v11 = v54;
  v58 = v8;
  v8[2] = v51;
  v8[3] = v9;
  v8[4] = v10;
  v55 = v11[13];
  v8[5] = v55;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v56 = 17;
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v60 = 32;
  v12 = swift_allocObject();
  v13 = v58;
  v62 = v12;
  *(v12 + 16) = v57;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v62;
  v64 = v14;
  *(v14 + 16) = v59;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v64;
  v71 = v16;
  *(v16 + 16) = v63;
  *(v16 + 24) = v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v69 = _allocateUninitializedArray<A>(_:)();
  v72 = v18;

  v19 = v66;
  v20 = v72;
  *v72 = v65;
  v20[1] = v19;

  v21 = v68;
  v22 = v72;
  v72[2] = v67;
  v22[3] = v21;

  v23 = v71;
  v24 = v72;
  v72[4] = v70;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v74, v75))
  {
    v25 = v37;
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = createStorage<A>(capacity:type:)(0, v28, v28);
    v31 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = v80;
    v80[0] = v29;
    v33 = &v79;
    v79 = v30;
    v34 = &v78;
    v78 = v31;
    serialize(_:at:)(2, v80);
    serialize(_:at:)(1, v32);
    v76 = v65;
    v77 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v76, v32, v33, v34);
    v35 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v76 = v67;
      v77 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v76, v80, &v79, &v78);
      v27[1] = 0;
      v76 = v70;
      v77 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v76, v80, &v79, &v78);
      _os_log_impl(&dword_2686B1000, v74, v75, "#BaseStrategy<%s> actionForInput", v29, 0xCu);
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v31, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v29, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v74);
  (*(v48 + 8))(v47, v50);
  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v43, v51, v55, v36);
  return (*(v40 + 8))(v43, v39);
}

uint64_t BaseStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v9 = *v2;
  v3[6] = *v2;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = v9[10];
  v3[5] = v7;
  v3[11] = v9[11];
  v3[12] = v9[12];

  return MEMORY[0x2822009F8](BaseStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t BaseStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v35 = v0;
  v19 = v0[12];
  v18 = v0[11];
  v17 = v0[10];
  v1 = v0[9];
  v15 = v0[8];
  v16 = v0[7];
  v20 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v21 = swift_allocObject();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = *(v20 + 104);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = buf;
    v31 = v12;
    v32 = v13;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_2686B1000, v28, v29, "#BaseStrategy<%s> makeIntentExecutionBehavior", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v14[9];
  v7 = v14[7];
  v6 = v14[8];
  MEMORY[0x277D82BD8](v28);
  (*(v6 + 8))(v8, v7);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v9 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v14[2] + 8);

  return v4(v9);
}

uint64_t BaseStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](BaseStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t BaseStrategy.makeIntentHandledResponse(rchRecord:)()
{
  *(v0 + 16) = v0;
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v33 = a6;
  v10 = *v7;
  v32 = a1;
  v31 = a2;
  v30 = v10[12];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = v7;
  v25 = v10[10];
  v24 = v10[11];
  outlined init with copy of GlobalsProviding(a1, v23);
  outlined init with take of CommonLabelsProviding(v23, v7 + 13);

  v7[2] = a2;
  outlined init with copy of GlobalsProviding(a3, v22);
  outlined init with take of CommonLabelsProviding(v22, v7 + 3);
  outlined init with copy of GlobalsProviding(a4, v21);
  outlined init with take of CommonLabelsProviding(v21, v7 + 8);
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  v12 = *(a6 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a5);
  outlined init with take of CommonLabelsProviding(v20, v7 + 18);
  (*(v12 + 8))(a5, a6);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = v4;
  v4[6] = v4;
  v5 = swift_task_alloc();
  v12[7] = v5;
  v6 = a3[11];
  v7 = a3[12];
  v8 = a3[13];
  v12[2] = a3[10];
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = type metadata accessor for BaseStrategy(0, (v12 + 2));
  *v5 = v12[6];
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = v4;
  v4[6] = v4;
  v5 = swift_task_alloc();
  v12[7] = v5;
  v6 = a3[11];
  v7 = a3[12];
  v8 = a3[13];
  v12[2] = a3[10];
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = type metadata accessor for BaseStrategy(0, (v12 + 2));
  *v5 = v12[6];
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(**v2 + 208) + **(**v2 + 208));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(**v2 + 184) + **(**v2 + 184));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(**v2 + 192) + **(**v2 + 192));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = v4;
  v4[6] = v4;
  v5 = swift_task_alloc();
  v12[7] = v5;
  v6 = a3[11];
  v7 = a3[12];
  v8 = a3[13];
  v12[2] = a3[10];
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = type metadata accessor for BaseStrategy(0, (v12 + 2));
  *v5 = v12[6];
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(**v2 + 200) + **(**v2 + 200));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(**v2 + 176) + **(**v2 + 176));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return v8(a1, a2);
}

uint64_t type metadata completion function for BaseStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t instantiation function for generic protocol witness table for BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_noVerb_common_Payment();
  type metadata accessor for INSendPaymentIntent();
  return Transformer.init(transform:)();
}

{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_pay_common_Payment();
  type metadata accessor for INSendPaymentIntent();
  return Transformer.init(transform:)();
}

{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_requestMoney_common_Payment();
  type metadata accessor for INRequestPaymentIntent();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v569 = v4;
  v642 = v3;
  v641 = v5;
  v640 = v6;
  v570 = v2;
  v666 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v670 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v672 = partial apply for closure #1 in OSLogArguments.append(_:);
  v674 = partial apply for closure #1 in OSLogArguments.append(_:);
  v677 = partial apply for closure #1 in OSLogArguments.append(_:);
  v571 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v572 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v573 = partial apply for closure #1 in OSLogArguments.append(_:);
  v574 = partial apply for closure #1 in OSLogArguments.append(_:);
  v575 = partial apply for closure #1 in OSLogArguments.append(_:);
  v576 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v577 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v578 = partial apply for closure #1 in OSLogArguments.append(_:);
  v579 = partial apply for closure #1 in OSLogArguments.append(_:);
  v580 = partial apply for closure #1 in OSLogArguments.append(_:);
  v581 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v582 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v583 = partial apply for closure #1 in OSLogArguments.append(_:);
  v584 = partial apply for closure #1 in OSLogArguments.append(_:);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v586 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v587 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v588 = partial apply for closure #1 in OSLogArguments.append(_:);
  v589 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v591 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v592 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v593 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v594 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v595 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v596 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v597 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v598 = partial apply for closure #1 in OSLogArguments.append(_:);
  v599 = partial apply for closure #1 in OSLogArguments.append(_:);
  v600 = partial apply for closure #1 in OSLogArguments.append(_:);
  v601 = partial apply for closure #1 in OSLogArguments.append(_:);
  v602 = partial apply for closure #1 in OSLogArguments.append(_:);
  v603 = partial apply for closure #1 in OSLogArguments.append(_:);
  v604 = partial apply for closure #1 in OSLogArguments.append(_:);
  v605 = partial apply for closure #1 in OSLogArguments.append(_:);
  v606 = partial apply for closure #1 in OSLogArguments.append(_:);
  v607 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v608 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v609 = partial apply for closure #1 in OSLogArguments.append(_:);
  v610 = partial apply for closure #1 in OSLogArguments.append(_:);
  v611 = partial apply for closure #1 in OSLogArguments.append(_:);
  v612 = partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v613 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v614 = partial apply for closure #1 in OSLogArguments.append(_:);
  v615 = partial apply for closure #1 in OSLogArguments.append(_:);
  v616 = partial apply for closure #1 in OSLogArguments.append(_:);
  v759 = 0;
  v758 = 0;
  v757 = 0;
  v756 = 0;
  v755 = 0;
  v754 = 0;
  v748 = 0;
  v743 = 0;
  v731 = 0;
  v728 = 0;
  v729 = 0;
  v727 = 0;
  v725 = 0.0;
  v724._countAndFlagsBits = 0;
  v724._object = 0;
  v722 = 0;
  v723 = 0;
  v710 = 0;
  v694 = 0;
  v693 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v617 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v618 = &v207 - v617;
  v633 = 0;
  v619 = type metadata accessor for ContactResolverConfig();
  v620 = *(v619 - 8);
  v621 = v619 - 8;
  v622 = (*(v620 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v633, v9);
  v623 = &v207 - v622;
  v624 = type metadata accessor for ContactQuery();
  v626 = *(v624 - 8);
  v625 = v624 - 8;
  v627 = v626;
  v628 = *(v626 + 64);
  v629 = (v628 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v624, v10);
  v630 = &v207 - v629;
  v631 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v207 - v629, v12);
  v632 = &v207 - v631;
  v759 = &v207 - v631;
  v634 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v633, v13);
  v635 = &v207 - v634;
  v636 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14, &v207 - v634);
  v637 = &v207 - v636;
  v638 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, &v207 - v636);
  v639 = &v207 - v638;
  v758 = &v207 - v638;
  v662 = type metadata accessor for Logger();
  v660 = *(v662 - 8);
  v661 = v662 - 8;
  v643 = v660[8];
  v644 = (v643 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v642, v641);
  v645 = &v207 - v644;
  v646 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v647 = &v207 - v646;
  v648 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v649 = &v207 - v648;
  v650 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v651 = &v207 - v650;
  v652 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v653 = &v207 - v652;
  v654 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v655 = &v207 - v654;
  v656 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v657 = &v207 - v656;
  v658 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v40 = &v207 - v658;
  v659 = &v207 - v658;
  v667 = *v39;
  v757 = v667;
  v756 = v41;
  v755 = v42;
  v43 = Logger.payments.unsafeMutableAddressor();
  v663 = v660[2];
  v664 = v660 + 2;
  v663(v40, v43, v662);

  v681 = Logger.logObject.getter();
  v682 = static os_log_type_t.debug.getter();
  v665 = 17;
  v669 = 7;
  v673 = swift_allocObject();
  *(v673 + 16) = 32;
  v675 = swift_allocObject();
  *(v675 + 16) = 8;
  v668 = 32;
  v44 = swift_allocObject();
  v45 = v667;
  v671 = v44;
  *(v44 + 16) = v666;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v671;
  v678 = v46;
  *(v46 + 16) = v670;
  *(v46 + 24) = v47;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v676 = _allocateUninitializedArray<A>(_:)();
  v679 = v48;

  v49 = v673;
  v50 = v679;
  *v679 = v672;
  v50[1] = v49;

  v51 = v675;
  v52 = v679;
  v679[2] = v674;
  v52[3] = v51;

  v53 = v678;
  v54 = v679;
  v679[4] = v677;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v681, v682))
  {
    v562 = static UnsafeMutablePointer.allocate(capacity:)();
    v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v563 = createStorage<A>(capacity:type:)(0, v561, v561);
    v564 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v565 = &v687;
    v687 = v562;
    v566 = &v686;
    v686 = v563;
    v567 = &v685;
    v685 = v564;
    serialize(_:at:)(2, &v687);
    serialize(_:at:)(1, v565);
    v55 = v570;
    v683 = v672;
    v684 = v673;
    closure #1 in osLogInternal(_:log:type:)(&v683, v565, v566, v567);
    v568 = v55;
    if (v55)
    {

      __break(1u);
    }

    else
    {
      v683 = v674;
      v684 = v675;
      closure #1 in osLogInternal(_:log:type:)(&v683, &v687, &v686, &v685);
      v559 = 0;
      v683 = v677;
      v684 = v678;
      closure #1 in osLogInternal(_:log:type:)(&v683, &v687, &v686, &v685);
      v558 = 0;
      _os_log_impl(&dword_2686B1000, v681, v682, "#Transformer for noVerb_common_Payment task %s", v562, 0xCu);
      destroyStorage<A>(_:count:)(v563, 0, v561);
      destroyStorage<A>(_:count:)(v564, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v562, MEMORY[0x277D84B78]);

      v560 = v558;
    }
  }

  else
  {

    v560 = v570;
  }

  v56 = v657;
  v543 = v560;
  MEMORY[0x277D82BD8](v681);
  v544 = v660[1];
  v545 = v660 + 1;
  v544(v659, v662);
  v57 = Logger.payments.unsafeMutableAddressor();
  v663(v56, v57, v662);
  MEMORY[0x277D82BE0](v641);
  v548 = 7;
  v549 = swift_allocObject();
  *(v549 + 16) = v641;
  v556 = Logger.logObject.getter();
  v557 = static os_log_type_t.debug.getter();
  v546 = 17;
  v551 = swift_allocObject();
  *(v551 + 16) = 32;
  v552 = swift_allocObject();
  *(v552 + 16) = 8;
  v547 = 32;
  v58 = swift_allocObject();
  v59 = v549;
  v550 = v58;
  *(v58 + 16) = v571;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v550;
  v554 = v60;
  *(v60 + 16) = v572;
  *(v60 + 24) = v61;
  v553 = _allocateUninitializedArray<A>(_:)();
  v555 = v62;

  v63 = v551;
  v64 = v555;
  *v555 = v573;
  v64[1] = v63;

  v65 = v552;
  v66 = v555;
  v555[2] = v574;
  v66[3] = v65;

  v67 = v554;
  v68 = v555;
  v555[4] = v575;
  v68[5] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v556, v557))
  {
    v536 = static UnsafeMutablePointer.allocate(capacity:)();
    v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v537 = createStorage<A>(capacity:type:)(0, v535, v535);
    v538 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v539 = &v692;
    v692 = v536;
    v540 = &v691;
    v691 = v537;
    v541 = &v690;
    v690 = v538;
    serialize(_:at:)(2, &v692);
    serialize(_:at:)(1, v539);
    v69 = v543;
    v688 = v573;
    v689 = v551;
    closure #1 in osLogInternal(_:log:type:)(&v688, v539, v540, v541);
    v542 = v69;
    if (v69)
    {

      __break(1u);
    }

    else
    {
      v688 = v574;
      v689 = v552;
      closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
      v533 = 0;
      v688 = v575;
      v689 = v554;
      closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
      v532 = 0;
      _os_log_impl(&dword_2686B1000, v556, v557, "#Transformer for noVerb_common_Payment previous intent is %s", v536, 0xCu);
      destroyStorage<A>(_:count:)(v537, 0, v535);
      destroyStorage<A>(_:count:)(v538, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v536, MEMORY[0x277D84B78]);

      v534 = v532;
    }
  }

  else
  {

    v534 = v543;
  }

  v529 = v534;
  MEMORY[0x277D82BD8](v556);
  v544(v657, v662);
  v530 = swift_allocObject();
  v531 = v530 + 16;
  v754 = v530 + 16;
  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v528 = v641;
    v527 = v641;
    v70 = [v641 payee];
    v71 = v527;
    *(v530 + 16) = v70;
    MEMORY[0x277D82BD8](v71);
  }

  else
  {
    *(v530 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v526 = v641;
    v525 = v641;
    v753 = [v641 currencyAmount];
    MEMORY[0x277D82BD8](v525);
  }

  else
  {
    v753 = 0;
  }

  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v524 = v641;
    v522 = v641;
    v72 = [v641 note];
    v523 = v72;
    if (v72)
    {
      v521 = v523;
      v516 = v523;
      v517 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v518 = v73;
      MEMORY[0x277D82BD8](v516);
      v519 = v517;
      v520 = v518;
    }

    else
    {
      v519 = 0;
      v520 = 0;
    }

    v751 = v519;
    v752 = v520;
    MEMORY[0x277D82BD8](v522);
  }

  else
  {
    v751 = 0;
    v752 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v515 = v750;
  if (v750)
  {
    v514 = v515;
    v509 = v515;
    v731 = v515;

    v510 = *(v626 + 56);
    v511 = v626 + 56;
    v510(v639, 1, 1, v624);
    v74 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
    v512 = v74;
    if (v74 && (v508 = v512, v506 = v512, v507 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v507))
    {
      v505 = v507;
      v502 = v507;
      v503 = CodeGenBase.entity.getter();

      v504 = v503;
    }

    else
    {
      v504 = 0;
    }

    v500 = v504;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v501 = v730;
    if (v730)
    {
      v499 = v501;
      v496 = v501;
      v693 = v501;
      UsoEntity_common_Person.toContactQuery()();
      v510(v637, 0, 1, v624);
      outlined assign with take of ContactQuery?(v637, v639);
    }

    else
    {
      v498 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
      if (v498)
      {
        v497 = v498;
        v493 = v498;
        v494 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v495 = v494;
      }

      else
      {
        v495 = 0;
      }

      v492 = v495;
      if (v495)
      {
        v491 = v492;
        v490 = v492;
        v694 = v492;
        UsoEntity_common_Agent.toContactQuery()();
        v510(v637, 0, 1, v624);
        outlined assign with take of ContactQuery?(v637, v639);
      }
    }

    outlined init with copy of ContactQuery?(v639, v635);
    if ((*(v626 + 48))(v635, 1, v624) == 1)
    {
      outlined destroy of ContactQuery?(v635);
      v489 = v529;
    }

    else
    {
      v75 = v655;
      v473 = v627;
      v476 = *(v626 + 32);
      v475 = v626 + 32;
      v476(v632, v635, v624);
      v76 = Logger.payments.unsafeMutableAddressor();
      v663(v75, v76, v662);
      v471 = *(v626 + 16);
      v472 = v626 + 16;
      v471(v630, v632, v624);
      v474 = (*(v473 + 80) + 16) & ~*(v473 + 80);
      v479 = 7;
      v480 = swift_allocObject();
      v476((v480 + v474), v630, v624);
      v487 = Logger.logObject.getter();
      v488 = static os_log_type_t.debug.getter();
      v477 = 17;
      v482 = swift_allocObject();
      *(v482 + 16) = 32;
      v483 = swift_allocObject();
      *(v483 + 16) = 8;
      v478 = 32;
      v77 = swift_allocObject();
      v78 = v480;
      v481 = v77;
      *(v77 + 16) = v576;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v481;
      v485 = v79;
      *(v79 + 16) = v577;
      *(v79 + 24) = v80;
      v484 = _allocateUninitializedArray<A>(_:)();
      v486 = v81;

      v82 = v482;
      v83 = v486;
      *v486 = v578;
      v83[1] = v82;

      v84 = v483;
      v85 = v486;
      v486[2] = v579;
      v85[3] = v84;

      v86 = v485;
      v87 = v486;
      v486[4] = v580;
      v87[5] = v86;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v487, v488))
      {
        v464 = static UnsafeMutablePointer.allocate(capacity:)();
        v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v465 = createStorage<A>(capacity:type:)(0, v463, v463);
        v466 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v467 = &v699;
        v699 = v464;
        v468 = &v698;
        v698 = v465;
        v469 = &v697;
        v697 = v466;
        serialize(_:at:)(2, &v699);
        serialize(_:at:)(1, v467);
        v88 = v529;
        v695 = v578;
        v696 = v482;
        closure #1 in osLogInternal(_:log:type:)(&v695, v467, v468, v469);
        v470 = v88;
        if (v88)
        {

          __break(1u);
        }

        else
        {
          v695 = v579;
          v696 = v483;
          closure #1 in osLogInternal(_:log:type:)(&v695, &v699, &v698, &v697);
          v461 = 0;
          v695 = v580;
          v696 = v485;
          closure #1 in osLogInternal(_:log:type:)(&v695, &v699, &v698, &v697);
          v460 = 0;
          _os_log_impl(&dword_2686B1000, v487, v488, "#Transformer payee contact in USO parse as ContactQuery is: %s", v464, 0xCu);
          destroyStorage<A>(_:count:)(v465, 0, v463);
          destroyStorage<A>(_:count:)(v466, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v464, MEMORY[0x277D84B78]);

          v462 = v460;
        }
      }

      else
      {

        v462 = v529;
      }

      v454 = v462;
      MEMORY[0x277D82BD8](v487);
      v544(v655, v662);
      v455 = v640[3];
      v456 = v640[4];
      __swift_project_boxed_opaque_existential_1(v640, v455);
      v450 = _allocateUninitializedArray<A>(_:)();
      v471(v89, v632, v624);
      _finalizeUninitializedArray<A>(_:)();
      v453 = v90;
      v451 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v452 = &v711;
      swift_beginAccess();
      (*(v620 + 16))(v623, v451, v619);
      swift_endAccess();
      v91 = v454;
      v92 = (*(v456 + 16))(v453, v623, v455);
      v457 = v91;
      v458 = v92;
      v459 = v91;
      if (v91)
      {
        v208 = v459;
        v209 = 0;
        (*(v620 + 8))(v623, v619);

        v448 = 0;
        v449 = v209;
      }

      else
      {
        v447 = v458;
        (*(v620 + 8))(v623, v619);

        v448 = v447;
        v449 = v457;
      }

      v93 = v653;
      v433 = v449;
      v434 = v448;
      v710 = v448;
      v94 = Logger.payments.unsafeMutableAddressor();
      v663(v93, v94, v662);

      v437 = 7;
      v438 = swift_allocObject();
      *(v438 + 16) = v434;
      v445 = Logger.logObject.getter();
      v446 = static os_log_type_t.debug.getter();
      v435 = 17;
      v440 = swift_allocObject();
      *(v440 + 16) = 32;
      v441 = swift_allocObject();
      *(v441 + 16) = 8;
      v436 = 32;
      v95 = swift_allocObject();
      v96 = v438;
      v439 = v95;
      *(v95 + 16) = v581;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v439;
      v443 = v97;
      *(v97 + 16) = v582;
      *(v97 + 24) = v98;
      v442 = _allocateUninitializedArray<A>(_:)();
      v444 = v99;

      v100 = v440;
      v101 = v444;
      *v444 = v583;
      v101[1] = v100;

      v102 = v441;
      v103 = v444;
      v444[2] = v584;
      v103[3] = v102;

      v104 = v443;
      v105 = v444;
      v444[4] = v585;
      v105[5] = v104;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v445, v446))
      {
        v426 = static UnsafeMutablePointer.allocate(capacity:)();
        v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v427 = createStorage<A>(capacity:type:)(0, v425, v425);
        v428 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v429 = v704;
        v704[0] = v426;
        v430 = &v703;
        v703 = v427;
        v431 = &v702;
        v702 = v428;
        serialize(_:at:)(2, v704);
        serialize(_:at:)(1, v429);
        v106 = v433;
        v700 = v583;
        v701 = v440;
        closure #1 in osLogInternal(_:log:type:)(&v700, v429, v430, v431);
        v432 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v700 = v584;
          v701 = v441;
          closure #1 in osLogInternal(_:log:type:)(&v700, v704, &v703, &v702);
          v423 = 0;
          v700 = v585;
          v701 = v443;
          closure #1 in osLogInternal(_:log:type:)(&v700, v704, &v703, &v702);
          v422 = 0;
          _os_log_impl(&dword_2686B1000, v445, v446, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v426, 0xCu);
          destroyStorage<A>(_:count:)(v427, 0, v425);
          destroyStorage<A>(_:count:)(v428, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v426, MEMORY[0x277D84B78]);

          v424 = v422;
        }
      }

      else
      {

        v424 = v433;
      }

      v421 = v424;
      MEMORY[0x277D82BD8](v445);
      v544(v653, v662);

      if (v434)
      {
        v420 = v434;
        v417 = v434;
        v704[2] = v434;
        v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v418 = v704[1];

        v419 = v418;
      }

      else
      {
        v419 = 0;
      }

      v107 = v651;
      v108 = *(v530 + 16);
      *(v530 + 16) = v419;
      MEMORY[0x277D82BD8](v108);
      v109 = Logger.payments.unsafeMutableAddressor();
      v663(v107, v109, v662);

      v414 = Logger.logObject.getter();
      v415 = static os_log_type_t.debug.getter();
      v405 = 17;
      v407 = 7;
      v409 = swift_allocObject();
      *(v409 + 16) = 32;
      v410 = swift_allocObject();
      *(v410 + 16) = 8;
      v406 = 32;
      v110 = swift_allocObject();
      v111 = v530;
      v408 = v110;
      *(v110 + 16) = v586;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      v113 = v408;
      v412 = v112;
      *(v112 + 16) = v587;
      *(v112 + 24) = v113;
      v411 = _allocateUninitializedArray<A>(_:)();
      v413 = v114;

      v115 = v409;
      v116 = v413;
      *v413 = v588;
      v116[1] = v115;

      v117 = v410;
      v118 = v413;
      v413[2] = v589;
      v118[3] = v117;

      v119 = v412;
      v120 = v413;
      v413[4] = v590;
      v120[5] = v119;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v414, v415))
      {
        v398 = static UnsafeMutablePointer.allocate(capacity:)();
        v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v399 = createStorage<A>(capacity:type:)(0, v397, v397);
        v400 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v401 = &v709;
        v709 = v398;
        v402 = &v708;
        v708 = v399;
        v403 = &v707;
        v707 = v400;
        serialize(_:at:)(2, &v709);
        serialize(_:at:)(1, v401);
        v121 = v421;
        v705 = v588;
        v706 = v409;
        closure #1 in osLogInternal(_:log:type:)(&v705, v401, v402, v403);
        v404 = v121;
        if (v121)
        {

          __break(1u);
        }

        else
        {
          v705 = v589;
          v706 = v410;
          closure #1 in osLogInternal(_:log:type:)(&v705, &v709, &v708, &v707);
          v395 = 0;
          v705 = v590;
          v706 = v412;
          closure #1 in osLogInternal(_:log:type:)(&v705, &v709, &v708, &v707);
          v394 = 0;
          _os_log_impl(&dword_2686B1000, v414, v415, "#Transformer resolved payee from matches as %s", v398, 0xCu);
          destroyStorage<A>(_:count:)(v399, 0, v397);
          destroyStorage<A>(_:count:)(v400, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v398, MEMORY[0x277D84B78]);

          v396 = v394;
        }
      }

      else
      {

        v396 = v421;
      }

      v393 = v396;
      MEMORY[0x277D82BD8](v414);
      v544(v651, v662);

      (*(v626 + 8))(v632, v624);
      v489 = v393;
    }

    v391 = v489;
    v392 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v392)
    {
      v390 = v392;
      v387 = v392;
      v727 = v392;
      v122 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v388 = v122;
      if (v122)
      {
        v386 = v388;
        v383 = v388;
        v384 = CodeGenBase.entity.getter();

        v385 = v384;
      }

      else
      {
        v385 = 0;
      }

      v380 = v385;
      v123 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v379 = *&v123;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v377 = v124;
      v378 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v125 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v726 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v380, v379, v377, v378, v125);
      v381 = *&v726;
      v382 = BYTE4(v726);

      if ((v382 & 1) == 0)
      {
        v376 = v381;
        v374 = v381;
        v725 = v381;
        v724 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v126 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v375 = v126;
        if (v126)
        {
          v373 = v375;
          v370 = v375;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v371 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v371)
          {
            v368 = v371;
            v712 = v371;
            v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v127 = v391;
            result = Sequence.first(where:)();
            v367 = v127;
            if (v127)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v712);
            v363 = type metadata accessor for UsoIdentifier();
            v364 = *(v363 - 8);
            v365 = v363 - 8;
            if ((*(v364 + 48))(v618, 1) != 1)
            {
              v358 = UsoIdentifier.value.getter();
              v359 = v129;
              (*(v364 + 8))(v618, v363);
              v360 = v358;
              v361 = v359;
              v362 = v367;
LABEL_83:
              v355 = v362;
              v356 = v361;
              v357 = v360;
              v722 = v360;
              v723 = v361;
              v720._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v720._object = v130;
              if (v130)
              {
                v721 = v720;
              }

              else
              {
                v721 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v720._object)
                {
                  outlined destroy of String.UTF8View(&v720);
                }
              }

              v131 = v649;
              v330 = v721;

              v724 = v330;

              v132 = Logger.payments.unsafeMutableAddressor();
              v663(v131, v132, v662);
              v339 = 7;
              v331 = swift_allocObject();
              *(v331 + 16) = v374;

              v338 = 32;
              v133 = swift_allocObject();
              v134 = v330._object;
              v333 = v133;
              *(v133 + 16) = v330._countAndFlagsBits;
              *(v133 + 24) = v134;

              v135 = swift_allocObject();
              v136 = v356;
              v340 = v135;
              *(v135 + 16) = v357;
              *(v135 + 24) = v136;
              v353 = Logger.logObject.getter();
              v354 = static os_log_type_t.debug.getter();
              v336 = 17;
              v342 = swift_allocObject();
              v335 = 32;
              *(v342 + 16) = 32;
              v343 = swift_allocObject();
              v337 = 8;
              *(v343 + 16) = 8;
              v137 = swift_allocObject();
              v138 = v331;
              v332 = v137;
              *(v137 + 16) = v592;
              *(v137 + 24) = v138;
              v139 = swift_allocObject();
              v140 = v332;
              v344 = v139;
              *(v139 + 16) = v593;
              *(v139 + 24) = v140;
              v345 = swift_allocObject();
              *(v345 + 16) = v335;
              v346 = swift_allocObject();
              *(v346 + 16) = v337;
              v141 = swift_allocObject();
              v142 = v333;
              v334 = v141;
              *(v141 + 16) = v594;
              *(v141 + 24) = v142;
              v143 = swift_allocObject();
              v144 = v334;
              v347 = v143;
              *(v143 + 16) = v595;
              *(v143 + 24) = v144;
              v348 = swift_allocObject();
              *(v348 + 16) = v335;
              v349 = swift_allocObject();
              *(v349 + 16) = v337;
              v145 = swift_allocObject();
              v146 = v340;
              v341 = v145;
              *(v145 + 16) = v596;
              *(v145 + 24) = v146;
              v147 = swift_allocObject();
              v148 = v341;
              v351 = v147;
              *(v147 + 16) = v597;
              *(v147 + 24) = v148;
              v350 = _allocateUninitializedArray<A>(_:)();
              v352 = v149;

              v150 = v342;
              v151 = v352;
              *v352 = v598;
              v151[1] = v150;

              v152 = v343;
              v153 = v352;
              v352[2] = v599;
              v153[3] = v152;

              v154 = v344;
              v155 = v352;
              v352[4] = v600;
              v155[5] = v154;

              v156 = v345;
              v157 = v352;
              v352[6] = v601;
              v157[7] = v156;

              v158 = v346;
              v159 = v352;
              v352[8] = v602;
              v159[9] = v158;

              v160 = v347;
              v161 = v352;
              v352[10] = v603;
              v161[11] = v160;

              v162 = v348;
              v163 = v352;
              v352[12] = v604;
              v163[13] = v162;

              v164 = v349;
              v165 = v352;
              v352[14] = v605;
              v165[15] = v164;

              v166 = v351;
              v167 = v352;
              v352[16] = v606;
              v167[17] = v166;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v353, v354))
              {
                v323 = static UnsafeMutablePointer.allocate(capacity:)();
                v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v324 = createStorage<A>(capacity:type:)(0, v322, v322);
                v325 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v326 = &v717;
                v717 = v323;
                v327 = &v716;
                v716 = v324;
                v328 = &v715;
                v715 = v325;
                serialize(_:at:)(2, &v717);
                serialize(_:at:)(3, v326);
                v168 = v355;
                v713 = v598;
                v714 = v342;
                closure #1 in osLogInternal(_:log:type:)(&v713, v326, v327, v328);
                v329 = v168;
                if (v168)
                {

                  __break(1u);
                }

                else
                {
                  v713 = v599;
                  v714 = v343;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v320 = 0;
                  v713 = v600;
                  v714 = v344;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v319 = 0;
                  v713 = v601;
                  v714 = v345;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v318 = 0;
                  v713 = v602;
                  v714 = v346;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v317 = 0;
                  v713 = v603;
                  v714 = v347;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v316 = 0;
                  v713 = v604;
                  v714 = v348;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v315 = 0;
                  v713 = v605;
                  v714 = v349;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v314 = 0;
                  v713 = v606;
                  v714 = v351;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v313 = 0;
                  _os_log_impl(&dword_2686B1000, v353, v354, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v323, 0x20u);
                  destroyStorage<A>(_:count:)(v324, 0, v322);
                  destroyStorage<A>(_:count:)(v325, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v323, MEMORY[0x277D84B78]);

                  v321 = v313;
                }
              }

              else
              {

                v321 = v355;
              }

              v310 = v321;
              MEMORY[0x277D82BD8](v353);
              v544(v649, v662);
              v311 = &v719;
              swift_beginAccess();
              swift_endAccess();
              v312 = String.isEmpty.getter();

              if ((v312 & 1) == 0)
              {
                v305 = 0;
                v306 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v169, v374);
                v308 = v170;
                v307 = &v718;
                swift_beginAccess();
                v309 = v724;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v308, v309).super.isa;
                v172 = v753;
                v753 = isa;
                MEMORY[0x277D82BD8](v172);
              }

              outlined destroy of String.UTF8View(&v724);

              v389 = v310;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v618);
            v372 = v367;
          }

          else
          {
            v372 = v391;
          }
        }

        else
        {
          v372 = v391;
        }

        v360 = 0;
        v361 = 0;
        v362 = v372;
        goto LABEL_83;
      }

      v389 = v391;
    }

    else
    {
      v389 = v391;
    }

LABEL_96:
    v302 = v389;
    v303 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v304 = v173;
    if (v173)
    {
      v300 = v303;
      v301 = v304;
      v299 = v304;
      v298 = v303;
      v728 = v303;
      v729 = v304;

      v751 = v298;
      v752 = v299;
    }

    outlined destroy of ContactQuery?(v639);

    v513 = v302;
    goto LABEL_99;
  }

  v513 = v529;
LABEL_99:
  v279 = v513;
  type metadata accessor for INSendPaymentIntent();
  v280 = &v749;
  v287 = 32;
  swift_beginAccess();
  v281 = *(v530 + 16);
  MEMORY[0x277D82BE0](v281);
  swift_endAccess();
  v282 = v753;
  MEMORY[0x277D82BE0](v753);
  v283 = v751;
  v284 = v752;

  v760.value.super.isa = v281;
  v760.is_nil = v282;
  v761.value.super.isa = v283;
  v761.is_nil = v284;
  v175.super.super.isa = INSendPaymentIntent.__allocating_init(payee:currencyAmount:note:)(v760, v761, v174).super.super.isa;
  v176 = v647;
  v285 = v175.super.super.isa;
  v748 = v175.super.super.isa;
  v177 = Logger.payments.unsafeMutableAddressor();
  v663(v176, v177, v662);
  MEMORY[0x277D82BE0](v285);
  v288 = 7;
  v289 = swift_allocObject();
  *(v289 + 16) = v285;
  v296 = Logger.logObject.getter();
  v297 = static os_log_type_t.debug.getter();
  v286 = 17;
  v291 = swift_allocObject();
  *(v291 + 16) = 32;
  v292 = swift_allocObject();
  *(v292 + 16) = 8;
  v178 = swift_allocObject();
  v179 = v289;
  v290 = v178;
  *(v178 + 16) = v607;
  *(v178 + 24) = v179;
  v180 = swift_allocObject();
  v181 = v290;
  v294 = v180;
  *(v180 + 16) = v608;
  *(v180 + 24) = v181;
  v293 = _allocateUninitializedArray<A>(_:)();
  v295 = v182;

  v183 = v291;
  v184 = v295;
  *v295 = v609;
  v184[1] = v183;

  v185 = v292;
  v186 = v295;
  v295[2] = v610;
  v186[3] = v185;

  v187 = v294;
  v188 = v295;
  v295[4] = v611;
  v188[5] = v187;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v296, v297))
  {
    v272 = static UnsafeMutablePointer.allocate(capacity:)();
    v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v273 = createStorage<A>(capacity:type:)(0, v271, v271);
    v274 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v275 = &v736;
    v736 = v272;
    v276 = &v735;
    v735 = v273;
    v277 = &v734;
    v734 = v274;
    serialize(_:at:)(2, &v736);
    serialize(_:at:)(1, v275);
    v189 = v279;
    v732 = v609;
    v733 = v291;
    closure #1 in osLogInternal(_:log:type:)(&v732, v275, v276, v277);
    v278 = v189;
    if (v189)
    {

      __break(1u);
    }

    else
    {
      v732 = v610;
      v733 = v292;
      closure #1 in osLogInternal(_:log:type:)(&v732, &v736, &v735, &v734);
      v269 = 0;
      v732 = v611;
      v733 = v294;
      closure #1 in osLogInternal(_:log:type:)(&v732, &v736, &v735, &v734);
      v268 = 0;
      _os_log_impl(&dword_2686B1000, v296, v297, "#Transformer returning intent %s", v272, 0xCu);
      destroyStorage<A>(_:count:)(v273, 0, v271);
      destroyStorage<A>(_:count:)(v274, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v272, MEMORY[0x277D84B78]);

      v270 = v268;
    }
  }

  else
  {

    v270 = v279;
  }

  v266 = v270;
  MEMORY[0x277D82BD8](v296);
  v544(v647, v662);

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v267 = v746[1];

  if (v267)
  {
    v265 = v267;
    v262 = v267;
    v263 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v264 = v263;
  }

  else
  {
    v264 = 0;
  }

  v746[0] = v264;

  if (v746[0])
  {
    v747 = v746[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v261 = v745[1];

    if (v261 && (v260 = v261, v258 = v261, v259 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v259))
    {
      v257 = v259;
      v254 = v259;
      v255 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v256 = v255;
    }

    else
    {
      v256 = 0;
    }

    v745[0] = v256;

    if (v745[0])
    {
      v747 = v745[0];
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v253 = v744;

      if (v253 && (v252 = v253, v250 = v253, v251 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v251))
      {
        v249 = v251;
        v248 = v251;
        v747 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v747 = 0;
      }

      if (v745[0])
      {
        outlined destroy of ContiguousArray<A1>(v745);
      }
    }

    if (v746[0])
    {
      outlined destroy of ContiguousArray<A1>(v746);
    }
  }

  v247 = v747;
  if (v747)
  {
    v246 = v247;
    v241 = v247;
    v743 = v247;
    MEMORY[0x277D82BE0](v285);
    v242 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v190 = UsoEntity_common_App.appIdentifier.getter();
    v243 = v190;
    v244 = v191;
    if (v191)
    {
      v239 = v243;
      v240 = v244;
      v236 = v244;
      v237 = MEMORY[0x26D620690](v243);

      v238 = v237;
    }

    else
    {
      v238 = 0;
    }

    v192 = v645;
    v224 = v238;
    v223 = &v742;
    v226 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v285, v242, v224, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v193 = Logger.payments.unsafeMutableAddressor();
    v663(v192, v193, v662);

    v234 = Logger.logObject.getter();
    v235 = static os_log_type_t.debug.getter();
    v225 = 17;
    v227 = 7;
    v229 = swift_allocObject();
    *(v229 + 16) = 32;
    v230 = swift_allocObject();
    *(v230 + 16) = 8;
    v194 = swift_allocObject();
    v195 = v241;
    v228 = v194;
    *(v194 + 16) = v612;
    *(v194 + 24) = v195;
    v196 = swift_allocObject();
    v197 = v228;
    v232 = v196;
    *(v196 + 16) = v613;
    *(v196 + 24) = v197;
    v231 = _allocateUninitializedArray<A>(_:)();
    v233 = v198;

    v199 = v229;
    v200 = v233;
    *v233 = v614;
    v200[1] = v199;

    v201 = v230;
    v202 = v233;
    v233[2] = v615;
    v202[3] = v201;

    v203 = v232;
    v204 = v233;
    v233[4] = v616;
    v204[5] = v203;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v234, v235))
    {
      v216 = static UnsafeMutablePointer.allocate(capacity:)();
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v217 = createStorage<A>(capacity:type:)(0, v215, v215);
      v218 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v219 = &v741;
      v741 = v216;
      v220 = &v740;
      v740 = v217;
      v221 = &v739;
      v739 = v218;
      serialize(_:at:)(2, &v741);
      serialize(_:at:)(1, v219);
      v205 = v266;
      v737 = v614;
      v738 = v229;
      closure #1 in osLogInternal(_:log:type:)(&v737, v219, v220, v221);
      v222 = v205;
      if (v205)
      {

        __break(1u);
      }

      else
      {
        v737 = v615;
        v738 = v230;
        closure #1 in osLogInternal(_:log:type:)(&v737, &v741, &v740, &v739);
        v213 = 0;
        v737 = v616;
        v738 = v232;
        closure #1 in osLogInternal(_:log:type:)(&v737, &v741, &v740, &v739);
        v212 = 0;
        _os_log_impl(&dword_2686B1000, v234, v235, "#Transformer found app to use for intent as %s", v216, 0xCu);
        destroyStorage<A>(_:count:)(v217, 0, v215);
        destroyStorage<A>(_:count:)(v218, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v216, MEMORY[0x277D84B78]);

        v214 = v212;
      }
    }

    else
    {

      v214 = v266;
    }

    v211 = v214;
    MEMORY[0x277D82BD8](v234);
    v544(v645, v662);

    v245 = v211;
  }

  else
  {
    v245 = v266;
  }

  v210 = v245;
  MEMORY[0x277D82BE0](v285);
  v206 = v285;
  *v569 = v285;
  MEMORY[0x277D82BD8](v206);
  outlined destroy of String.UTF8View(&v751);
  outlined destroy of SFRichText?(&v753);
}

{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v575 = v4;
  v648 = v3;
  v647 = v5;
  v646 = v6;
  v576 = v2;
  v672 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v676 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v678 = partial apply for closure #1 in OSLogArguments.append(_:);
  v680 = partial apply for closure #1 in OSLogArguments.append(_:);
  v683 = partial apply for closure #1 in OSLogArguments.append(_:);
  v577 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v578 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v579 = partial apply for closure #1 in OSLogArguments.append(_:);
  v580 = partial apply for closure #1 in OSLogArguments.append(_:);
  v581 = partial apply for closure #1 in OSLogArguments.append(_:);
  v582 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v583 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v584 = partial apply for closure #1 in OSLogArguments.append(_:);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v586 = partial apply for closure #1 in OSLogArguments.append(_:);
  v587 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v588 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v589 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v591 = partial apply for closure #1 in OSLogArguments.append(_:);
  v592 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v593 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v594 = partial apply for closure #1 in OSLogArguments.append(_:);
  v595 = partial apply for closure #1 in OSLogArguments.append(_:);
  v596 = partial apply for closure #1 in OSLogArguments.append(_:);
  v597 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v598 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v599 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v600 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v601 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v602 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v603 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v604 = partial apply for closure #1 in OSLogArguments.append(_:);
  v605 = partial apply for closure #1 in OSLogArguments.append(_:);
  v606 = partial apply for closure #1 in OSLogArguments.append(_:);
  v607 = partial apply for closure #1 in OSLogArguments.append(_:);
  v608 = partial apply for closure #1 in OSLogArguments.append(_:);
  v609 = partial apply for closure #1 in OSLogArguments.append(_:);
  v610 = partial apply for closure #1 in OSLogArguments.append(_:);
  v611 = partial apply for closure #1 in OSLogArguments.append(_:);
  v612 = partial apply for closure #1 in OSLogArguments.append(_:);
  v613 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v614 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v615 = partial apply for closure #1 in OSLogArguments.append(_:);
  v616 = partial apply for closure #1 in OSLogArguments.append(_:);
  v617 = partial apply for closure #1 in OSLogArguments.append(_:);
  v618 = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v619 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v620 = partial apply for closure #1 in OSLogArguments.append(_:);
  v621 = partial apply for closure #1 in OSLogArguments.append(_:);
  v622 = partial apply for closure #1 in OSLogArguments.append(_:);
  v767 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v756 = 0;
  v749 = 0uLL;
  v737 = 0;
  v734 = 0;
  v735 = 0;
  v733 = 0;
  v731 = 0.0;
  v730._countAndFlagsBits = 0;
  v730._object = 0;
  v728 = 0;
  v729 = 0;
  v716 = 0;
  v700 = 0;
  v699 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v623 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v624 = &v210 - v623;
  v639 = 0;
  v625 = type metadata accessor for ContactResolverConfig();
  v626 = *(v625 - 8);
  v627 = v625 - 8;
  v628 = (*(v626 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v639, v9);
  v629 = &v210 - v628;
  v630 = type metadata accessor for ContactQuery();
  v632 = *(v630 - 8);
  v631 = v630 - 8;
  v633 = v632;
  v634 = *(v632 + 64);
  v635 = (v634 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v630, v10);
  v636 = &v210 - v635;
  v637 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v210 - v635, v12);
  v638 = &v210 - v637;
  v767 = &v210 - v637;
  v640 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v639, v13);
  v641 = &v210 - v640;
  v642 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14, &v210 - v640);
  v643 = &v210 - v642;
  v644 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, &v210 - v642);
  v645 = &v210 - v644;
  v766 = &v210 - v644;
  v668 = type metadata accessor for Logger();
  v666 = *(v668 - 8);
  v667 = v668 - 8;
  v649 = v666[8];
  v650 = (v649 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v648, v647);
  v651 = &v210 - v650;
  v652 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v653 = &v210 - v652;
  v654 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v655 = &v210 - v654;
  v656 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v657 = &v210 - v656;
  v658 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v659 = &v210 - v658;
  v660 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v661 = &v210 - v660;
  v662 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v663 = &v210 - v662;
  v664 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v40 = &v210 - v664;
  v665 = &v210 - v664;
  v673 = *v39;
  v765 = v673;
  v764 = v41;
  v763 = v42;
  v43 = Logger.payments.unsafeMutableAddressor();
  v669 = v666[2];
  v670 = v666 + 2;
  v669(v40, v43, v668);

  v687 = Logger.logObject.getter();
  v688 = static os_log_type_t.debug.getter();
  v671 = 17;
  v675 = 7;
  v679 = swift_allocObject();
  *(v679 + 16) = 32;
  v681 = swift_allocObject();
  *(v681 + 16) = 8;
  v674 = 32;
  v44 = swift_allocObject();
  v45 = v673;
  v677 = v44;
  *(v44 + 16) = v672;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v677;
  v684 = v46;
  *(v46 + 16) = v676;
  *(v46 + 24) = v47;
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v682 = _allocateUninitializedArray<A>(_:)();
  v685 = v48;

  v49 = v679;
  v50 = v685;
  *v685 = v678;
  v50[1] = v49;

  v51 = v681;
  v52 = v685;
  v685[2] = v680;
  v52[3] = v51;

  v53 = v684;
  v54 = v685;
  v685[4] = v683;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v687, v688))
  {
    v568 = static UnsafeMutablePointer.allocate(capacity:)();
    v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v569 = createStorage<A>(capacity:type:)(0, v567, v567);
    v570 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v571 = &v693;
    v693 = v568;
    v572 = &v692;
    v692 = v569;
    v573 = &v691;
    v691 = v570;
    serialize(_:at:)(2, &v693);
    serialize(_:at:)(1, v571);
    v55 = v576;
    v689 = v678;
    v690 = v679;
    closure #1 in osLogInternal(_:log:type:)(&v689, v571, v572, v573);
    v574 = v55;
    if (v55)
    {

      __break(1u);
    }

    else
    {
      v689 = v680;
      v690 = v681;
      closure #1 in osLogInternal(_:log:type:)(&v689, &v693, &v692, &v691);
      v565 = 0;
      v689 = v683;
      v690 = v684;
      closure #1 in osLogInternal(_:log:type:)(&v689, &v693, &v692, &v691);
      v564 = 0;
      _os_log_impl(&dword_2686B1000, v687, v688, "#Transformer for pay_common_Payment task %s", v568, 0xCu);
      destroyStorage<A>(_:count:)(v569, 0, v567);
      destroyStorage<A>(_:count:)(v570, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v568, MEMORY[0x277D84B78]);

      v566 = v564;
    }
  }

  else
  {

    v566 = v576;
  }

  v56 = v663;
  v549 = v566;
  MEMORY[0x277D82BD8](v687);
  v550 = v666[1];
  v551 = v666 + 1;
  v550(v665, v668);
  v57 = Logger.payments.unsafeMutableAddressor();
  v669(v56, v57, v668);
  MEMORY[0x277D82BE0](v647);
  v554 = 7;
  v555 = swift_allocObject();
  *(v555 + 16) = v647;
  v562 = Logger.logObject.getter();
  v563 = static os_log_type_t.debug.getter();
  v552 = 17;
  v557 = swift_allocObject();
  *(v557 + 16) = 32;
  v558 = swift_allocObject();
  *(v558 + 16) = 8;
  v553 = 32;
  v58 = swift_allocObject();
  v59 = v555;
  v556 = v58;
  *(v58 + 16) = v577;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v556;
  v560 = v60;
  *(v60 + 16) = v578;
  *(v60 + 24) = v61;
  v559 = _allocateUninitializedArray<A>(_:)();
  v561 = v62;

  v63 = v557;
  v64 = v561;
  *v561 = v579;
  v64[1] = v63;

  v65 = v558;
  v66 = v561;
  v561[2] = v580;
  v66[3] = v65;

  v67 = v560;
  v68 = v561;
  v561[4] = v581;
  v68[5] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v562, v563))
  {
    v542 = static UnsafeMutablePointer.allocate(capacity:)();
    v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v543 = createStorage<A>(capacity:type:)(0, v541, v541);
    v544 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v545 = &v698;
    v698 = v542;
    v546 = &v697;
    v697 = v543;
    v547 = &v696;
    v696 = v544;
    serialize(_:at:)(2, &v698);
    serialize(_:at:)(1, v545);
    v69 = v549;
    v694 = v579;
    v695 = v557;
    closure #1 in osLogInternal(_:log:type:)(&v694, v545, v546, v547);
    v548 = v69;
    if (v69)
    {

      __break(1u);
    }

    else
    {
      v694 = v580;
      v695 = v558;
      closure #1 in osLogInternal(_:log:type:)(&v694, &v698, &v697, &v696);
      v539 = 0;
      v694 = v581;
      v695 = v560;
      closure #1 in osLogInternal(_:log:type:)(&v694, &v698, &v697, &v696);
      v538 = 0;
      _os_log_impl(&dword_2686B1000, v562, v563, "#Transformer for pay_common_Payment previous intent is %s", v542, 0xCu);
      destroyStorage<A>(_:count:)(v543, 0, v541);
      destroyStorage<A>(_:count:)(v544, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v542, MEMORY[0x277D84B78]);

      v540 = v538;
    }
  }

  else
  {

    v540 = v549;
  }

  v535 = v540;
  MEMORY[0x277D82BD8](v562);
  v550(v663, v668);
  v536 = swift_allocObject();
  v537 = v536 + 16;
  v762 = v536 + 16;
  MEMORY[0x277D82BE0](v647);
  if (v647)
  {
    v534 = v647;
    v533 = v647;
    v70 = [v647 payee];
    v71 = v533;
    *(v536 + 16) = v70;
    MEMORY[0x277D82BD8](v71);
  }

  else
  {
    *(v536 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v647);
  if (v647)
  {
    v532 = v647;
    v531 = v647;
    v761 = [v647 currencyAmount];
    MEMORY[0x277D82BD8](v531);
  }

  else
  {
    v761 = 0;
  }

  MEMORY[0x277D82BE0](v647);
  if (v647)
  {
    v530 = v647;
    v528 = v647;
    v72 = [v647 note];
    v529 = v72;
    if (v72)
    {
      v527 = v529;
      v522 = v529;
      v523 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v524 = v73;
      MEMORY[0x277D82BD8](v522);
      v525 = v523;
      v526 = v524;
    }

    else
    {
      v525 = 0;
      v526 = 0;
    }

    v759 = v525;
    v760 = v526;
    MEMORY[0x277D82BD8](v528);
  }

  else
  {
    v759 = 0;
    v760 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v521 = v758;
  if (v758)
  {
    v520 = v521;
    v515 = v521;
    v737 = v521;

    v516 = *(v632 + 56);
    v517 = v632 + 56;
    v516(v645, 1, 1, v630);
    v74 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
    v518 = v74;
    if (v74 && (v514 = v518, v512 = v518, v513 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v513))
    {
      v511 = v513;
      v508 = v513;
      v509 = CodeGenBase.entity.getter();

      v510 = v509;
    }

    else
    {
      v510 = 0;
    }

    v506 = v510;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v507 = v736;
    if (v736)
    {
      v505 = v507;
      v502 = v507;
      v699 = v507;
      UsoEntity_common_Person.toContactQuery()();
      v516(v643, 0, 1, v630);
      outlined assign with take of ContactQuery?(v643, v645);
    }

    else
    {
      v504 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
      if (v504)
      {
        v503 = v504;
        v499 = v504;
        v500 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v501 = v500;
      }

      else
      {
        v501 = 0;
      }

      v498 = v501;
      if (v501)
      {
        v497 = v498;
        v496 = v498;
        v700 = v498;
        UsoEntity_common_Agent.toContactQuery()();
        v516(v643, 0, 1, v630);
        outlined assign with take of ContactQuery?(v643, v645);
      }
    }

    outlined init with copy of ContactQuery?(v645, v641);
    if ((*(v632 + 48))(v641, 1, v630) == 1)
    {
      outlined destroy of ContactQuery?(v641);
      v495 = v535;
    }

    else
    {
      v75 = v661;
      v479 = v633;
      v482 = *(v632 + 32);
      v481 = v632 + 32;
      v482(v638, v641, v630);
      v76 = Logger.payments.unsafeMutableAddressor();
      v669(v75, v76, v668);
      v477 = *(v632 + 16);
      v478 = v632 + 16;
      v477(v636, v638, v630);
      v480 = (*(v479 + 80) + 16) & ~*(v479 + 80);
      v485 = 7;
      v486 = swift_allocObject();
      v482((v486 + v480), v636, v630);
      v493 = Logger.logObject.getter();
      v494 = static os_log_type_t.debug.getter();
      v483 = 17;
      v488 = swift_allocObject();
      *(v488 + 16) = 32;
      v489 = swift_allocObject();
      *(v489 + 16) = 8;
      v484 = 32;
      v77 = swift_allocObject();
      v78 = v486;
      v487 = v77;
      *(v77 + 16) = v582;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v487;
      v491 = v79;
      *(v79 + 16) = v583;
      *(v79 + 24) = v80;
      v490 = _allocateUninitializedArray<A>(_:)();
      v492 = v81;

      v82 = v488;
      v83 = v492;
      *v492 = v584;
      v83[1] = v82;

      v84 = v489;
      v85 = v492;
      v492[2] = v585;
      v85[3] = v84;

      v86 = v491;
      v87 = v492;
      v492[4] = v586;
      v87[5] = v86;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v493, v494))
      {
        v470 = static UnsafeMutablePointer.allocate(capacity:)();
        v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v471 = createStorage<A>(capacity:type:)(0, v469, v469);
        v472 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v473 = &v705;
        v705 = v470;
        v474 = &v704;
        v704 = v471;
        v475 = &v703;
        v703 = v472;
        serialize(_:at:)(2, &v705);
        serialize(_:at:)(1, v473);
        v88 = v535;
        v701 = v584;
        v702 = v488;
        closure #1 in osLogInternal(_:log:type:)(&v701, v473, v474, v475);
        v476 = v88;
        if (v88)
        {

          __break(1u);
        }

        else
        {
          v701 = v585;
          v702 = v489;
          closure #1 in osLogInternal(_:log:type:)(&v701, &v705, &v704, &v703);
          v467 = 0;
          v701 = v586;
          v702 = v491;
          closure #1 in osLogInternal(_:log:type:)(&v701, &v705, &v704, &v703);
          v466 = 0;
          _os_log_impl(&dword_2686B1000, v493, v494, "#Transformer payee contact in USO parse as ContactQuery is: %s", v470, 0xCu);
          destroyStorage<A>(_:count:)(v471, 0, v469);
          destroyStorage<A>(_:count:)(v472, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v470, MEMORY[0x277D84B78]);

          v468 = v466;
        }
      }

      else
      {

        v468 = v535;
      }

      v460 = v468;
      MEMORY[0x277D82BD8](v493);
      v550(v661, v668);
      v461 = v646[3];
      v462 = v646[4];
      __swift_project_boxed_opaque_existential_1(v646, v461);
      v456 = _allocateUninitializedArray<A>(_:)();
      v477(v89, v638, v630);
      _finalizeUninitializedArray<A>(_:)();
      v459 = v90;
      v457 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v458 = &v717;
      swift_beginAccess();
      (*(v626 + 16))(v629, v457, v625);
      swift_endAccess();
      v91 = v460;
      v92 = (*(v462 + 16))(v459, v629, v461);
      v463 = v91;
      v464 = v92;
      v465 = v91;
      if (v91)
      {
        v211 = v465;
        v212 = 0;
        (*(v626 + 8))(v629, v625);

        v454 = 0;
        v455 = v212;
      }

      else
      {
        v453 = v464;
        (*(v626 + 8))(v629, v625);

        v454 = v453;
        v455 = v463;
      }

      v93 = v659;
      v439 = v455;
      v440 = v454;
      v716 = v454;
      v94 = Logger.payments.unsafeMutableAddressor();
      v669(v93, v94, v668);

      v443 = 7;
      v444 = swift_allocObject();
      *(v444 + 16) = v440;
      v451 = Logger.logObject.getter();
      v452 = static os_log_type_t.debug.getter();
      v441 = 17;
      v446 = swift_allocObject();
      *(v446 + 16) = 32;
      v447 = swift_allocObject();
      *(v447 + 16) = 8;
      v442 = 32;
      v95 = swift_allocObject();
      v96 = v444;
      v445 = v95;
      *(v95 + 16) = v587;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v445;
      v449 = v97;
      *(v97 + 16) = v588;
      *(v97 + 24) = v98;
      v448 = _allocateUninitializedArray<A>(_:)();
      v450 = v99;

      v100 = v446;
      v101 = v450;
      *v450 = v589;
      v101[1] = v100;

      v102 = v447;
      v103 = v450;
      v450[2] = v590;
      v103[3] = v102;

      v104 = v449;
      v105 = v450;
      v450[4] = v591;
      v105[5] = v104;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v451, v452))
      {
        v432 = static UnsafeMutablePointer.allocate(capacity:)();
        v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v433 = createStorage<A>(capacity:type:)(0, v431, v431);
        v434 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v435 = v710;
        v710[0] = v432;
        v436 = &v709;
        v709 = v433;
        v437 = &v708;
        v708 = v434;
        serialize(_:at:)(2, v710);
        serialize(_:at:)(1, v435);
        v106 = v439;
        v706 = v589;
        v707 = v446;
        closure #1 in osLogInternal(_:log:type:)(&v706, v435, v436, v437);
        v438 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v706 = v590;
          v707 = v447;
          closure #1 in osLogInternal(_:log:type:)(&v706, v710, &v709, &v708);
          v429 = 0;
          v706 = v591;
          v707 = v449;
          closure #1 in osLogInternal(_:log:type:)(&v706, v710, &v709, &v708);
          v428 = 0;
          _os_log_impl(&dword_2686B1000, v451, v452, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v432, 0xCu);
          destroyStorage<A>(_:count:)(v433, 0, v431);
          destroyStorage<A>(_:count:)(v434, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v432, MEMORY[0x277D84B78]);

          v430 = v428;
        }
      }

      else
      {

        v430 = v439;
      }

      v427 = v430;
      MEMORY[0x277D82BD8](v451);
      v550(v659, v668);

      if (v440)
      {
        v426 = v440;
        v423 = v440;
        v710[2] = v440;
        v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v424 = v710[1];

        v425 = v424;
      }

      else
      {
        v425 = 0;
      }

      v107 = v657;
      v108 = *(v536 + 16);
      *(v536 + 16) = v425;
      MEMORY[0x277D82BD8](v108);
      v109 = Logger.payments.unsafeMutableAddressor();
      v669(v107, v109, v668);

      v420 = Logger.logObject.getter();
      v421 = static os_log_type_t.debug.getter();
      v411 = 17;
      v413 = 7;
      v415 = swift_allocObject();
      *(v415 + 16) = 32;
      v416 = swift_allocObject();
      *(v416 + 16) = 8;
      v412 = 32;
      v110 = swift_allocObject();
      v111 = v536;
      v414 = v110;
      *(v110 + 16) = v592;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      v113 = v414;
      v418 = v112;
      *(v112 + 16) = v593;
      *(v112 + 24) = v113;
      v417 = _allocateUninitializedArray<A>(_:)();
      v419 = v114;

      v115 = v415;
      v116 = v419;
      *v419 = v594;
      v116[1] = v115;

      v117 = v416;
      v118 = v419;
      v419[2] = v595;
      v118[3] = v117;

      v119 = v418;
      v120 = v419;
      v419[4] = v596;
      v120[5] = v119;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v420, v421))
      {
        v404 = static UnsafeMutablePointer.allocate(capacity:)();
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v405 = createStorage<A>(capacity:type:)(0, v403, v403);
        v406 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v407 = &v715;
        v715 = v404;
        v408 = &v714;
        v714 = v405;
        v409 = &v713;
        v713 = v406;
        serialize(_:at:)(2, &v715);
        serialize(_:at:)(1, v407);
        v121 = v427;
        v711 = v594;
        v712 = v415;
        closure #1 in osLogInternal(_:log:type:)(&v711, v407, v408, v409);
        v410 = v121;
        if (v121)
        {

          __break(1u);
        }

        else
        {
          v711 = v595;
          v712 = v416;
          closure #1 in osLogInternal(_:log:type:)(&v711, &v715, &v714, &v713);
          v401 = 0;
          v711 = v596;
          v712 = v418;
          closure #1 in osLogInternal(_:log:type:)(&v711, &v715, &v714, &v713);
          v400 = 0;
          _os_log_impl(&dword_2686B1000, v420, v421, "#Transformer resolved payee from matches as %s", v404, 0xCu);
          destroyStorage<A>(_:count:)(v405, 0, v403);
          destroyStorage<A>(_:count:)(v406, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v404, MEMORY[0x277D84B78]);

          v402 = v400;
        }
      }

      else
      {

        v402 = v427;
      }

      v399 = v402;
      MEMORY[0x277D82BD8](v420);
      v550(v657, v668);

      (*(v632 + 8))(v638, v630);
      v495 = v399;
    }

    v397 = v495;
    v398 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v398)
    {
      v396 = v398;
      v393 = v398;
      v733 = v398;
      v122 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v394 = v122;
      if (v122)
      {
        v392 = v394;
        v389 = v394;
        v390 = CodeGenBase.entity.getter();

        v391 = v390;
      }

      else
      {
        v391 = 0;
      }

      v386 = v391;
      v123 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v385 = *&v123;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v383 = v124;
      v384 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v125 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v732 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v386, v385, v383, v384, v125);
      v387 = *&v732;
      v388 = BYTE4(v732);

      if ((v388 & 1) == 0)
      {
        v382 = v387;
        v380 = v387;
        v731 = v387;
        v730 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v126 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v381 = v126;
        if (v126)
        {
          v379 = v381;
          v376 = v381;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v377 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v377)
          {
            v374 = v377;
            v718 = v377;
            v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v127 = v397;
            result = Sequence.first(where:)();
            v373 = v127;
            if (v127)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v718);
            v369 = type metadata accessor for UsoIdentifier();
            v370 = *(v369 - 8);
            v371 = v369 - 8;
            if ((*(v370 + 48))(v624, 1) != 1)
            {
              v364 = UsoIdentifier.value.getter();
              v365 = v129;
              (*(v370 + 8))(v624, v369);
              v366 = v364;
              v367 = v365;
              v368 = v373;
LABEL_83:
              v361 = v368;
              v362 = v367;
              v363 = v366;
              v728 = v366;
              v729 = v367;
              v726._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v726._object = v130;
              if (v130)
              {
                v727 = v726;
              }

              else
              {
                v727 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v726._object)
                {
                  outlined destroy of String.UTF8View(&v726);
                }
              }

              v131 = v655;
              v336 = v727;

              v730 = v336;

              v132 = Logger.payments.unsafeMutableAddressor();
              v669(v131, v132, v668);
              v345 = 7;
              v337 = swift_allocObject();
              *(v337 + 16) = v380;

              v344 = 32;
              v133 = swift_allocObject();
              v134 = v336._object;
              v339 = v133;
              *(v133 + 16) = v336._countAndFlagsBits;
              *(v133 + 24) = v134;

              v135 = swift_allocObject();
              v136 = v362;
              v346 = v135;
              *(v135 + 16) = v363;
              *(v135 + 24) = v136;
              v359 = Logger.logObject.getter();
              v360 = static os_log_type_t.debug.getter();
              v342 = 17;
              v348 = swift_allocObject();
              v341 = 32;
              *(v348 + 16) = 32;
              v349 = swift_allocObject();
              v343 = 8;
              *(v349 + 16) = 8;
              v137 = swift_allocObject();
              v138 = v337;
              v338 = v137;
              *(v137 + 16) = v598;
              *(v137 + 24) = v138;
              v139 = swift_allocObject();
              v140 = v338;
              v350 = v139;
              *(v139 + 16) = v599;
              *(v139 + 24) = v140;
              v351 = swift_allocObject();
              *(v351 + 16) = v341;
              v352 = swift_allocObject();
              *(v352 + 16) = v343;
              v141 = swift_allocObject();
              v142 = v339;
              v340 = v141;
              *(v141 + 16) = v600;
              *(v141 + 24) = v142;
              v143 = swift_allocObject();
              v144 = v340;
              v353 = v143;
              *(v143 + 16) = v601;
              *(v143 + 24) = v144;
              v354 = swift_allocObject();
              *(v354 + 16) = v341;
              v355 = swift_allocObject();
              *(v355 + 16) = v343;
              v145 = swift_allocObject();
              v146 = v346;
              v347 = v145;
              *(v145 + 16) = v602;
              *(v145 + 24) = v146;
              v147 = swift_allocObject();
              v148 = v347;
              v357 = v147;
              *(v147 + 16) = v603;
              *(v147 + 24) = v148;
              v356 = _allocateUninitializedArray<A>(_:)();
              v358 = v149;

              v150 = v348;
              v151 = v358;
              *v358 = v604;
              v151[1] = v150;

              v152 = v349;
              v153 = v358;
              v358[2] = v605;
              v153[3] = v152;

              v154 = v350;
              v155 = v358;
              v358[4] = v606;
              v155[5] = v154;

              v156 = v351;
              v157 = v358;
              v358[6] = v607;
              v157[7] = v156;

              v158 = v352;
              v159 = v358;
              v358[8] = v608;
              v159[9] = v158;

              v160 = v353;
              v161 = v358;
              v358[10] = v609;
              v161[11] = v160;

              v162 = v354;
              v163 = v358;
              v358[12] = v610;
              v163[13] = v162;

              v164 = v355;
              v165 = v358;
              v358[14] = v611;
              v165[15] = v164;

              v166 = v357;
              v167 = v358;
              v358[16] = v612;
              v167[17] = v166;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v359, v360))
              {
                v329 = static UnsafeMutablePointer.allocate(capacity:)();
                v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v330 = createStorage<A>(capacity:type:)(0, v328, v328);
                v331 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v332 = &v723;
                v723 = v329;
                v333 = &v722;
                v722 = v330;
                v334 = &v721;
                v721 = v331;
                serialize(_:at:)(2, &v723);
                serialize(_:at:)(3, v332);
                v168 = v361;
                v719 = v604;
                v720 = v348;
                closure #1 in osLogInternal(_:log:type:)(&v719, v332, v333, v334);
                v335 = v168;
                if (v168)
                {

                  __break(1u);
                }

                else
                {
                  v719 = v605;
                  v720 = v349;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v326 = 0;
                  v719 = v606;
                  v720 = v350;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v325 = 0;
                  v719 = v607;
                  v720 = v351;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v324 = 0;
                  v719 = v608;
                  v720 = v352;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v323 = 0;
                  v719 = v609;
                  v720 = v353;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v322 = 0;
                  v719 = v610;
                  v720 = v354;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v321 = 0;
                  v719 = v611;
                  v720 = v355;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v320 = 0;
                  v719 = v612;
                  v720 = v357;
                  closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
                  v319 = 0;
                  _os_log_impl(&dword_2686B1000, v359, v360, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v329, 0x20u);
                  destroyStorage<A>(_:count:)(v330, 0, v328);
                  destroyStorage<A>(_:count:)(v331, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v329, MEMORY[0x277D84B78]);

                  v327 = v319;
                }
              }

              else
              {

                v327 = v361;
              }

              v316 = v327;
              MEMORY[0x277D82BD8](v359);
              v550(v655, v668);
              v317 = &v725;
              swift_beginAccess();
              swift_endAccess();
              v318 = String.isEmpty.getter();

              if ((v318 & 1) == 0)
              {
                v311 = 0;
                v312 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v169, v380);
                v314 = v170;
                v313 = &v724;
                swift_beginAccess();
                v315 = v730;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v314, v315).super.isa;
                v172 = v761;
                v761 = isa;
                MEMORY[0x277D82BD8](v172);
              }

              outlined destroy of String.UTF8View(&v730);

              v395 = v316;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v624);
            v378 = v373;
          }

          else
          {
            v378 = v397;
          }
        }

        else
        {
          v378 = v397;
        }

        v366 = 0;
        v367 = 0;
        v368 = v378;
        goto LABEL_83;
      }

      v395 = v397;
    }

    else
    {
      v395 = v397;
    }

LABEL_96:
    v308 = v395;
    v309 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v310 = v173;
    if (v173)
    {
      v306 = v309;
      v307 = v310;
      v305 = v310;
      v304 = v309;
      v734 = v309;
      v735 = v310;

      v759 = v304;
      v760 = v305;
    }

    outlined destroy of ContactQuery?(v645);

    v519 = v308;
    goto LABEL_99;
  }

  v519 = v535;
LABEL_99:
  v285 = v519;
  type metadata accessor for INSendPaymentIntent();
  v286 = &v757;
  v293 = 32;
  swift_beginAccess();
  v287 = *(v536 + 16);
  MEMORY[0x277D82BE0](v287);
  swift_endAccess();
  v288 = v761;
  MEMORY[0x277D82BE0](v761);
  v289 = v759;
  v290 = v760;

  v768.value.super.isa = v287;
  v768.is_nil = v288;
  v769.value.super.isa = v289;
  v769.is_nil = v290;
  v175.super.super.isa = INSendPaymentIntent.__allocating_init(payee:currencyAmount:note:)(v768, v769, v174).super.super.isa;
  v176 = v653;
  v291 = v175.super.super.isa;
  v756 = v175.super.super.isa;
  v177 = Logger.payments.unsafeMutableAddressor();
  v669(v176, v177, v668);
  MEMORY[0x277D82BE0](v291);
  v294 = 7;
  v295 = swift_allocObject();
  *(v295 + 16) = v291;
  v302 = Logger.logObject.getter();
  v303 = static os_log_type_t.debug.getter();
  v292 = 17;
  v297 = swift_allocObject();
  *(v297 + 16) = 32;
  v298 = swift_allocObject();
  *(v298 + 16) = 8;
  v178 = swift_allocObject();
  v179 = v295;
  v296 = v178;
  *(v178 + 16) = v613;
  *(v178 + 24) = v179;
  v180 = swift_allocObject();
  v181 = v296;
  v300 = v180;
  *(v180 + 16) = v614;
  *(v180 + 24) = v181;
  v299 = _allocateUninitializedArray<A>(_:)();
  v301 = v182;

  v183 = v297;
  v184 = v301;
  *v301 = v615;
  v184[1] = v183;

  v185 = v298;
  v186 = v301;
  v301[2] = v616;
  v186[3] = v185;

  v187 = v300;
  v188 = v301;
  v301[4] = v617;
  v188[5] = v187;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v302, v303))
  {
    v278 = static UnsafeMutablePointer.allocate(capacity:)();
    v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v279 = createStorage<A>(capacity:type:)(0, v277, v277);
    v280 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v281 = &v742;
    v742 = v278;
    v282 = &v741;
    v741 = v279;
    v283 = &v740;
    v740 = v280;
    serialize(_:at:)(2, &v742);
    serialize(_:at:)(1, v281);
    v189 = v285;
    v738 = v615;
    v739 = v297;
    closure #1 in osLogInternal(_:log:type:)(&v738, v281, v282, v283);
    v284 = v189;
    if (v189)
    {

      __break(1u);
    }

    else
    {
      v738 = v616;
      v739 = v298;
      closure #1 in osLogInternal(_:log:type:)(&v738, &v742, &v741, &v740);
      v275 = 0;
      v738 = v617;
      v739 = v300;
      closure #1 in osLogInternal(_:log:type:)(&v738, &v742, &v741, &v740);
      v274 = 0;
      _os_log_impl(&dword_2686B1000, v302, v303, "#Transformer returning intent %s", v278, 0xCu);
      destroyStorage<A>(_:count:)(v279, 0, v277);
      destroyStorage<A>(_:count:)(v280, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v278, MEMORY[0x277D84B78]);

      v276 = v274;
    }
  }

  else
  {

    v276 = v285;
  }

  v272 = v276;
  MEMORY[0x277D82BD8](v302);
  v550(v653, v668);

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v273 = v754;

  if (v273 && (v271 = v273, v269 = v273, v270 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v270))
  {
    v268 = v270;
    v265 = v270;
    *&v266 = UsoEntity_common_App.appIdentifier.getter();
    *(&v266 + 1) = v190;

    v267 = v266;
  }

  else
  {
    v267 = 0uLL;
  }

  v753 = v267;

  if (*(&v753 + 1))
  {
    v755 = v753;
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v264 = v752;

    if (v264 && (v263 = v264, v261 = v264, v262 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v262) && (v260 = v262, v258 = v262, v259 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v259))
    {
      v257 = v259;
      v254 = v259;
      *&v255 = UsoEntity_common_App.appIdentifier.getter();
      *(&v255 + 1) = v191;

      v256 = v255;
    }

    else
    {
      v256 = 0uLL;
    }

    v751 = v256;

    if (*(&v751 + 1))
    {
      v755 = v751;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v253 = v750;

      if (v253 && (v252 = v253, v250 = v253, v251 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v251 && (v249 = v251, v247 = v251, v248 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v248)))
      {
        v246 = v248;
        v245 = v248;
        *&v755 = UsoEntity_common_App.appIdentifier.getter();
        *(&v755 + 1) = v192;
      }

      else
      {
        v755 = 0uLL;
      }

      if (*(&v751 + 1))
      {
        outlined destroy of String.UTF8View(&v751);
      }
    }

    if (*(&v753 + 1))
    {
      outlined destroy of String.UTF8View(&v753);
    }
  }

  v244 = v755;
  if (*(&v755 + 1))
  {
    v243 = v244;
    v193 = v651;
    v229 = v244;
    v749 = v244;
    MEMORY[0x277D82BE0](v291);
    v226 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();

    v228 = MEMORY[0x26D620690](v229, *(&v229 + 1));

    v227 = &v748;
    v231 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v291, v226, v228, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v194 = Logger.payments.unsafeMutableAddressor();
    v669(v193, v194, v668);

    v232 = 7;
    v195 = swift_allocObject();
    v196 = *(&v229 + 1);
    v233 = v195;
    *(v195 + 16) = v229;
    *(v195 + 24) = v196;
    v240 = Logger.logObject.getter();
    v241 = static os_log_type_t.debug.getter();
    v230 = 17;
    v235 = swift_allocObject();
    *(v235 + 16) = 32;
    v236 = swift_allocObject();
    *(v236 + 16) = 8;
    v197 = swift_allocObject();
    v198 = v233;
    v234 = v197;
    *(v197 + 16) = v618;
    *(v197 + 24) = v198;
    v199 = swift_allocObject();
    v200 = v234;
    v238 = v199;
    *(v199 + 16) = v619;
    *(v199 + 24) = v200;
    v237 = _allocateUninitializedArray<A>(_:)();
    v239 = v201;

    v202 = v235;
    v203 = v239;
    *v239 = v620;
    v203[1] = v202;

    v204 = v236;
    v205 = v239;
    v239[2] = v621;
    v205[3] = v204;

    v206 = v238;
    v207 = v239;
    v239[4] = v622;
    v207[5] = v206;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v240, v241))
    {
      v219 = static UnsafeMutablePointer.allocate(capacity:)();
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v220 = createStorage<A>(capacity:type:)(0, v218, v218);
      v221 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v222 = &v747;
      v747 = v219;
      v223 = &v746;
      v746 = v220;
      v224 = &v745;
      v745 = v221;
      serialize(_:at:)(2, &v747);
      serialize(_:at:)(1, v222);
      v208 = v272;
      v743 = v620;
      v744 = v235;
      closure #1 in osLogInternal(_:log:type:)(&v743, v222, v223, v224);
      v225 = v208;
      if (v208)
      {

        __break(1u);
      }

      else
      {
        v743 = v621;
        v744 = v236;
        closure #1 in osLogInternal(_:log:type:)(&v743, &v747, &v746, &v745);
        v216 = 0;
        v743 = v622;
        v744 = v238;
        closure #1 in osLogInternal(_:log:type:)(&v743, &v747, &v746, &v745);
        v215 = 0;
        _os_log_impl(&dword_2686B1000, v240, v241, "#Transformer found appIdentifier to use for intent as %s", v219, 0xCu);
        destroyStorage<A>(_:count:)(v220, 0, v218);
        destroyStorage<A>(_:count:)(v221, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v219, MEMORY[0x277D84B78]);

        v217 = v215;
      }
    }

    else
    {

      v217 = v272;
    }

    v214 = v217;
    MEMORY[0x277D82BD8](v240);
    v550(v651, v668);

    v242 = v214;
  }

  else
  {
    v242 = v272;
  }

  v213 = v242;
  MEMORY[0x277D82BE0](v291);
  v209 = v291;
  *v575 = v291;
  MEMORY[0x277D82BD8](v209);
  outlined destroy of String.UTF8View(&v759);
  outlined destroy of SFRichText?(&v761);
}

{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v569 = v4;
  v642 = v3;
  v641 = v5;
  v640 = v6;
  v570 = v2;
  v666 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v670 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v672 = partial apply for closure #1 in OSLogArguments.append(_:);
  v674 = partial apply for closure #1 in OSLogArguments.append(_:);
  v677 = partial apply for closure #1 in OSLogArguments.append(_:);
  v571 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v572 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v573 = partial apply for closure #1 in OSLogArguments.append(_:);
  v574 = partial apply for closure #1 in OSLogArguments.append(_:);
  v575 = partial apply for closure #1 in OSLogArguments.append(_:);
  v576 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v577 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v578 = partial apply for closure #1 in OSLogArguments.append(_:);
  v579 = partial apply for closure #1 in OSLogArguments.append(_:);
  v580 = partial apply for closure #1 in OSLogArguments.append(_:);
  v581 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v582 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v583 = partial apply for closure #1 in OSLogArguments.append(_:);
  v584 = partial apply for closure #1 in OSLogArguments.append(_:);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v586 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v587 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v588 = partial apply for closure #1 in OSLogArguments.append(_:);
  v589 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v591 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v592 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v593 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v594 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v595 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v596 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v597 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v598 = partial apply for closure #1 in OSLogArguments.append(_:);
  v599 = partial apply for closure #1 in OSLogArguments.append(_:);
  v600 = partial apply for closure #1 in OSLogArguments.append(_:);
  v601 = partial apply for closure #1 in OSLogArguments.append(_:);
  v602 = partial apply for closure #1 in OSLogArguments.append(_:);
  v603 = partial apply for closure #1 in OSLogArguments.append(_:);
  v604 = partial apply for closure #1 in OSLogArguments.append(_:);
  v605 = partial apply for closure #1 in OSLogArguments.append(_:);
  v606 = partial apply for closure #1 in OSLogArguments.append(_:);
  v607 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v608 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v609 = partial apply for closure #1 in OSLogArguments.append(_:);
  v610 = partial apply for closure #1 in OSLogArguments.append(_:);
  v611 = partial apply for closure #1 in OSLogArguments.append(_:);
  v612 = partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v613 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v614 = partial apply for closure #1 in OSLogArguments.append(_:);
  v615 = partial apply for closure #1 in OSLogArguments.append(_:);
  v616 = partial apply for closure #1 in OSLogArguments.append(_:);
  v759 = 0;
  v758 = 0;
  v757 = 0;
  v756 = 0;
  v755 = 0;
  v754 = 0;
  v748 = 0;
  v743 = 0;
  v731 = 0;
  v728 = 0;
  v729 = 0;
  v727 = 0;
  v725 = 0.0;
  v724._countAndFlagsBits = 0;
  v724._object = 0;
  v722 = 0;
  v723 = 0;
  v710 = 0;
  v694 = 0;
  v693 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v617 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v618 = &v207 - v617;
  v633 = 0;
  v619 = type metadata accessor for ContactResolverConfig();
  v620 = *(v619 - 8);
  v621 = v619 - 8;
  v622 = (*(v620 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v633, v9);
  v623 = &v207 - v622;
  v624 = type metadata accessor for ContactQuery();
  v626 = *(v624 - 8);
  v625 = v624 - 8;
  v627 = v626;
  v628 = *(v626 + 64);
  v629 = (v628 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v624, v10);
  v630 = &v207 - v629;
  v631 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v207 - v629, v12);
  v632 = &v207 - v631;
  v759 = &v207 - v631;
  v634 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v633, v13);
  v635 = &v207 - v634;
  v636 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14, &v207 - v634);
  v637 = &v207 - v636;
  v638 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, &v207 - v636);
  v639 = &v207 - v638;
  v758 = &v207 - v638;
  v662 = type metadata accessor for Logger();
  v660 = *(v662 - 8);
  v661 = v662 - 8;
  v643 = v660[8];
  v644 = (v643 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v642, v641);
  v645 = &v207 - v644;
  v646 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v647 = &v207 - v646;
  v648 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v649 = &v207 - v648;
  v650 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v651 = &v207 - v650;
  v652 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v653 = &v207 - v652;
  v654 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v655 = &v207 - v654;
  v656 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v657 = &v207 - v656;
  v658 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v40 = &v207 - v658;
  v659 = &v207 - v658;
  v667 = *v39;
  v757 = v667;
  v756 = v41;
  v755 = v42;
  v43 = Logger.payments.unsafeMutableAddressor();
  v663 = v660[2];
  v664 = v660 + 2;
  v663(v40, v43, v662);

  v681 = Logger.logObject.getter();
  v682 = static os_log_type_t.debug.getter();
  v665 = 17;
  v669 = 7;
  v673 = swift_allocObject();
  *(v673 + 16) = 32;
  v675 = swift_allocObject();
  *(v675 + 16) = 8;
  v668 = 32;
  v44 = swift_allocObject();
  v45 = v667;
  v671 = v44;
  *(v44 + 16) = v666;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v671;
  v678 = v46;
  *(v46 + 16) = v670;
  *(v46 + 24) = v47;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v676 = _allocateUninitializedArray<A>(_:)();
  v679 = v48;

  v49 = v673;
  v50 = v679;
  *v679 = v672;
  v50[1] = v49;

  v51 = v675;
  v52 = v679;
  v679[2] = v674;
  v52[3] = v51;

  v53 = v678;
  v54 = v679;
  v679[4] = v677;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v681, v682))
  {
    v562 = static UnsafeMutablePointer.allocate(capacity:)();
    v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v563 = createStorage<A>(capacity:type:)(0, v561, v561);
    v564 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v565 = &v687;
    v687 = v562;
    v566 = &v686;
    v686 = v563;
    v567 = &v685;
    v685 = v564;
    serialize(_:at:)(2, &v687);
    serialize(_:at:)(1, v565);
    v55 = v570;
    v683 = v672;
    v684 = v673;
    closure #1 in osLogInternal(_:log:type:)(&v683, v565, v566, v567);
    v568 = v55;
    if (v55)
    {

      __break(1u);
    }

    else
    {
      v683 = v674;
      v684 = v675;
      closure #1 in osLogInternal(_:log:type:)(&v683, &v687, &v686, &v685);
      v559 = 0;
      v683 = v677;
      v684 = v678;
      closure #1 in osLogInternal(_:log:type:)(&v683, &v687, &v686, &v685);
      v558 = 0;
      _os_log_impl(&dword_2686B1000, v681, v682, "#Transformer for requestMoney_common_Payment task %s", v562, 0xCu);
      destroyStorage<A>(_:count:)(v563, 0, v561);
      destroyStorage<A>(_:count:)(v564, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v562, MEMORY[0x277D84B78]);

      v560 = v558;
    }
  }

  else
  {

    v560 = v570;
  }

  v56 = v657;
  v543 = v560;
  MEMORY[0x277D82BD8](v681);
  v544 = v660[1];
  v545 = v660 + 1;
  v544(v659, v662);
  v57 = Logger.payments.unsafeMutableAddressor();
  v663(v56, v57, v662);
  MEMORY[0x277D82BE0](v641);
  v548 = 7;
  v549 = swift_allocObject();
  *(v549 + 16) = v641;
  v556 = Logger.logObject.getter();
  v557 = static os_log_type_t.debug.getter();
  v546 = 17;
  v551 = swift_allocObject();
  *(v551 + 16) = 32;
  v552 = swift_allocObject();
  *(v552 + 16) = 8;
  v547 = 32;
  v58 = swift_allocObject();
  v59 = v549;
  v550 = v58;
  *(v58 + 16) = v571;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v550;
  v554 = v60;
  *(v60 + 16) = v572;
  *(v60 + 24) = v61;
  v553 = _allocateUninitializedArray<A>(_:)();
  v555 = v62;

  v63 = v551;
  v64 = v555;
  *v555 = v573;
  v64[1] = v63;

  v65 = v552;
  v66 = v555;
  v555[2] = v574;
  v66[3] = v65;

  v67 = v554;
  v68 = v555;
  v555[4] = v575;
  v68[5] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v556, v557))
  {
    v536 = static UnsafeMutablePointer.allocate(capacity:)();
    v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v537 = createStorage<A>(capacity:type:)(0, v535, v535);
    v538 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v539 = &v692;
    v692 = v536;
    v540 = &v691;
    v691 = v537;
    v541 = &v690;
    v690 = v538;
    serialize(_:at:)(2, &v692);
    serialize(_:at:)(1, v539);
    v69 = v543;
    v688 = v573;
    v689 = v551;
    closure #1 in osLogInternal(_:log:type:)(&v688, v539, v540, v541);
    v542 = v69;
    if (v69)
    {

      __break(1u);
    }

    else
    {
      v688 = v574;
      v689 = v552;
      closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
      v533 = 0;
      v688 = v575;
      v689 = v554;
      closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
      v532 = 0;
      _os_log_impl(&dword_2686B1000, v556, v557, "#Transformer for requestMoney_common_Payment previous intent is %s", v536, 0xCu);
      destroyStorage<A>(_:count:)(v537, 0, v535);
      destroyStorage<A>(_:count:)(v538, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v536, MEMORY[0x277D84B78]);

      v534 = v532;
    }
  }

  else
  {

    v534 = v543;
  }

  v529 = v534;
  MEMORY[0x277D82BD8](v556);
  v544(v657, v662);
  v530 = swift_allocObject();
  v531 = v530 + 16;
  v754 = v530 + 16;
  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v528 = v641;
    v527 = v641;
    v70 = [v641 payer];
    v71 = v527;
    *(v530 + 16) = v70;
    MEMORY[0x277D82BD8](v71);
  }

  else
  {
    *(v530 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v526 = v641;
    v525 = v641;
    v753 = [v641 currencyAmount];
    MEMORY[0x277D82BD8](v525);
  }

  else
  {
    v753 = 0;
  }

  MEMORY[0x277D82BE0](v641);
  if (v641)
  {
    v524 = v641;
    v522 = v641;
    v72 = [v641 note];
    v523 = v72;
    if (v72)
    {
      v521 = v523;
      v516 = v523;
      v517 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v518 = v73;
      MEMORY[0x277D82BD8](v516);
      v519 = v517;
      v520 = v518;
    }

    else
    {
      v519 = 0;
      v520 = 0;
    }

    v751 = v519;
    v752 = v520;
    MEMORY[0x277D82BD8](v522);
  }

  else
  {
    v751 = 0;
    v752 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v515 = v750;
  if (v750)
  {
    v514 = v515;
    v509 = v515;
    v731 = v515;

    v510 = *(v626 + 56);
    v511 = v626 + 56;
    v510(v639, 1, 1, v624);
    v74 = dispatch thunk of UsoEntity_common_Payment.payer.getter();
    v512 = v74;
    if (v74 && (v508 = v512, v506 = v512, v507 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v507))
    {
      v505 = v507;
      v502 = v507;
      v503 = CodeGenBase.entity.getter();

      v504 = v503;
    }

    else
    {
      v504 = 0;
    }

    v500 = v504;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v501 = v730;
    if (v730)
    {
      v499 = v501;
      v496 = v501;
      v693 = v501;
      UsoEntity_common_Person.toContactQuery()();
      v510(v637, 0, 1, v624);
      outlined assign with take of ContactQuery?(v637, v639);
    }

    else
    {
      v498 = dispatch thunk of UsoEntity_common_Payment.payer.getter();
      if (v498)
      {
        v497 = v498;
        v493 = v498;
        v494 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v495 = v494;
      }

      else
      {
        v495 = 0;
      }

      v492 = v495;
      if (v495)
      {
        v491 = v492;
        v490 = v492;
        v694 = v492;
        UsoEntity_common_Agent.toContactQuery()();
        v510(v637, 0, 1, v624);
        outlined assign with take of ContactQuery?(v637, v639);
      }
    }

    outlined init with copy of ContactQuery?(v639, v635);
    if ((*(v626 + 48))(v635, 1, v624) == 1)
    {
      outlined destroy of ContactQuery?(v635);
      v489 = v529;
    }

    else
    {
      v75 = v655;
      v473 = v627;
      v476 = *(v626 + 32);
      v475 = v626 + 32;
      v476(v632, v635, v624);
      v76 = Logger.payments.unsafeMutableAddressor();
      v663(v75, v76, v662);
      v471 = *(v626 + 16);
      v472 = v626 + 16;
      v471(v630, v632, v624);
      v474 = (*(v473 + 80) + 16) & ~*(v473 + 80);
      v479 = 7;
      v480 = swift_allocObject();
      v476((v480 + v474), v630, v624);
      v487 = Logger.logObject.getter();
      v488 = static os_log_type_t.debug.getter();
      v477 = 17;
      v482 = swift_allocObject();
      *(v482 + 16) = 32;
      v483 = swift_allocObject();
      *(v483 + 16) = 8;
      v478 = 32;
      v77 = swift_allocObject();
      v78 = v480;
      v481 = v77;
      *(v77 + 16) = v576;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v481;
      v485 = v79;
      *(v79 + 16) = v577;
      *(v79 + 24) = v80;
      v484 = _allocateUninitializedArray<A>(_:)();
      v486 = v81;

      v82 = v482;
      v83 = v486;
      *v486 = v578;
      v83[1] = v82;

      v84 = v483;
      v85 = v486;
      v486[2] = v579;
      v85[3] = v84;

      v86 = v485;
      v87 = v486;
      v486[4] = v580;
      v87[5] = v86;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v487, v488))
      {
        v464 = static UnsafeMutablePointer.allocate(capacity:)();
        v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v465 = createStorage<A>(capacity:type:)(0, v463, v463);
        v466 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v467 = &v699;
        v699 = v464;
        v468 = &v698;
        v698 = v465;
        v469 = &v697;
        v697 = v466;
        serialize(_:at:)(2, &v699);
        serialize(_:at:)(1, v467);
        v88 = v529;
        v695 = v578;
        v696 = v482;
        closure #1 in osLogInternal(_:log:type:)(&v695, v467, v468, v469);
        v470 = v88;
        if (v88)
        {

          __break(1u);
        }

        else
        {
          v695 = v579;
          v696 = v483;
          closure #1 in osLogInternal(_:log:type:)(&v695, &v699, &v698, &v697);
          v461 = 0;
          v695 = v580;
          v696 = v485;
          closure #1 in osLogInternal(_:log:type:)(&v695, &v699, &v698, &v697);
          v460 = 0;
          _os_log_impl(&dword_2686B1000, v487, v488, "#Transformer payee contact in USO parse as ContactQuery is: %s", v464, 0xCu);
          destroyStorage<A>(_:count:)(v465, 0, v463);
          destroyStorage<A>(_:count:)(v466, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v464, MEMORY[0x277D84B78]);

          v462 = v460;
        }
      }

      else
      {

        v462 = v529;
      }

      v454 = v462;
      MEMORY[0x277D82BD8](v487);
      v544(v655, v662);
      v455 = v640[3];
      v456 = v640[4];
      __swift_project_boxed_opaque_existential_1(v640, v455);
      v450 = _allocateUninitializedArray<A>(_:)();
      v471(v89, v632, v624);
      _finalizeUninitializedArray<A>(_:)();
      v453 = v90;
      v451 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v452 = &v711;
      swift_beginAccess();
      (*(v620 + 16))(v623, v451, v619);
      swift_endAccess();
      v91 = v454;
      v92 = (*(v456 + 16))(v453, v623, v455);
      v457 = v91;
      v458 = v92;
      v459 = v91;
      if (v91)
      {
        v208 = v459;
        v209 = 0;
        (*(v620 + 8))(v623, v619);

        v448 = 0;
        v449 = v209;
      }

      else
      {
        v447 = v458;
        (*(v620 + 8))(v623, v619);

        v448 = v447;
        v449 = v457;
      }

      v93 = v653;
      v433 = v449;
      v434 = v448;
      v710 = v448;
      v94 = Logger.payments.unsafeMutableAddressor();
      v663(v93, v94, v662);

      v437 = 7;
      v438 = swift_allocObject();
      *(v438 + 16) = v434;
      v445 = Logger.logObject.getter();
      v446 = static os_log_type_t.debug.getter();
      v435 = 17;
      v440 = swift_allocObject();
      *(v440 + 16) = 32;
      v441 = swift_allocObject();
      *(v441 + 16) = 8;
      v436 = 32;
      v95 = swift_allocObject();
      v96 = v438;
      v439 = v95;
      *(v95 + 16) = v581;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v439;
      v443 = v97;
      *(v97 + 16) = v582;
      *(v97 + 24) = v98;
      v442 = _allocateUninitializedArray<A>(_:)();
      v444 = v99;

      v100 = v440;
      v101 = v444;
      *v444 = v583;
      v101[1] = v100;

      v102 = v441;
      v103 = v444;
      v444[2] = v584;
      v103[3] = v102;

      v104 = v443;
      v105 = v444;
      v444[4] = v585;
      v105[5] = v104;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v445, v446))
      {
        v426 = static UnsafeMutablePointer.allocate(capacity:)();
        v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v427 = createStorage<A>(capacity:type:)(0, v425, v425);
        v428 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v429 = v704;
        v704[0] = v426;
        v430 = &v703;
        v703 = v427;
        v431 = &v702;
        v702 = v428;
        serialize(_:at:)(2, v704);
        serialize(_:at:)(1, v429);
        v106 = v433;
        v700 = v583;
        v701 = v440;
        closure #1 in osLogInternal(_:log:type:)(&v700, v429, v430, v431);
        v432 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v700 = v584;
          v701 = v441;
          closure #1 in osLogInternal(_:log:type:)(&v700, v704, &v703, &v702);
          v423 = 0;
          v700 = v585;
          v701 = v443;
          closure #1 in osLogInternal(_:log:type:)(&v700, v704, &v703, &v702);
          v422 = 0;
          _os_log_impl(&dword_2686B1000, v445, v446, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v426, 0xCu);
          destroyStorage<A>(_:count:)(v427, 0, v425);
          destroyStorage<A>(_:count:)(v428, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v426, MEMORY[0x277D84B78]);

          v424 = v422;
        }
      }

      else
      {

        v424 = v433;
      }

      v421 = v424;
      MEMORY[0x277D82BD8](v445);
      v544(v653, v662);

      if (v434)
      {
        v420 = v434;
        v417 = v434;
        v704[2] = v434;
        v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v418 = v704[1];

        v419 = v418;
      }

      else
      {
        v419 = 0;
      }

      v107 = v651;
      v108 = *(v530 + 16);
      *(v530 + 16) = v419;
      MEMORY[0x277D82BD8](v108);
      v109 = Logger.payments.unsafeMutableAddressor();
      v663(v107, v109, v662);

      v414 = Logger.logObject.getter();
      v415 = static os_log_type_t.debug.getter();
      v405 = 17;
      v407 = 7;
      v409 = swift_allocObject();
      *(v409 + 16) = 32;
      v410 = swift_allocObject();
      *(v410 + 16) = 8;
      v406 = 32;
      v110 = swift_allocObject();
      v111 = v530;
      v408 = v110;
      *(v110 + 16) = v586;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      v113 = v408;
      v412 = v112;
      *(v112 + 16) = v587;
      *(v112 + 24) = v113;
      v411 = _allocateUninitializedArray<A>(_:)();
      v413 = v114;

      v115 = v409;
      v116 = v413;
      *v413 = v588;
      v116[1] = v115;

      v117 = v410;
      v118 = v413;
      v413[2] = v589;
      v118[3] = v117;

      v119 = v412;
      v120 = v413;
      v413[4] = v590;
      v120[5] = v119;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v414, v415))
      {
        v398 = static UnsafeMutablePointer.allocate(capacity:)();
        v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v399 = createStorage<A>(capacity:type:)(0, v397, v397);
        v400 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v401 = &v709;
        v709 = v398;
        v402 = &v708;
        v708 = v399;
        v403 = &v707;
        v707 = v400;
        serialize(_:at:)(2, &v709);
        serialize(_:at:)(1, v401);
        v121 = v421;
        v705 = v588;
        v706 = v409;
        closure #1 in osLogInternal(_:log:type:)(&v705, v401, v402, v403);
        v404 = v121;
        if (v121)
        {

          __break(1u);
        }

        else
        {
          v705 = v589;
          v706 = v410;
          closure #1 in osLogInternal(_:log:type:)(&v705, &v709, &v708, &v707);
          v395 = 0;
          v705 = v590;
          v706 = v412;
          closure #1 in osLogInternal(_:log:type:)(&v705, &v709, &v708, &v707);
          v394 = 0;
          _os_log_impl(&dword_2686B1000, v414, v415, "#Transformer resolved payer from matches as %s", v398, 0xCu);
          destroyStorage<A>(_:count:)(v399, 0, v397);
          destroyStorage<A>(_:count:)(v400, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v398, MEMORY[0x277D84B78]);

          v396 = v394;
        }
      }

      else
      {

        v396 = v421;
      }

      v393 = v396;
      MEMORY[0x277D82BD8](v414);
      v544(v651, v662);

      (*(v626 + 8))(v632, v624);
      v489 = v393;
    }

    v391 = v489;
    v392 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v392)
    {
      v390 = v392;
      v387 = v392;
      v727 = v392;
      v122 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v388 = v122;
      if (v122)
      {
        v386 = v388;
        v383 = v388;
        v384 = CodeGenBase.entity.getter();

        v385 = v384;
      }

      else
      {
        v385 = 0;
      }

      v380 = v385;
      v123 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v379 = *&v123;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v377 = v124;
      v378 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v125 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v726 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v380, v379, v377, v378, v125);
      v381 = *&v726;
      v382 = BYTE4(v726);

      if ((v382 & 1) == 0)
      {
        v376 = v381;
        v374 = v381;
        v725 = v381;
        v724 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v126 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v375 = v126;
        if (v126)
        {
          v373 = v375;
          v370 = v375;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v371 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v371)
          {
            v368 = v371;
            v712 = v371;
            v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v127 = v391;
            result = Sequence.first(where:)();
            v367 = v127;
            if (v127)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v712);
            v363 = type metadata accessor for UsoIdentifier();
            v364 = *(v363 - 8);
            v365 = v363 - 8;
            if ((*(v364 + 48))(v618, 1) != 1)
            {
              v358 = UsoIdentifier.value.getter();
              v359 = v129;
              (*(v364 + 8))(v618, v363);
              v360 = v358;
              v361 = v359;
              v362 = v367;
LABEL_83:
              v355 = v362;
              v356 = v361;
              v357 = v360;
              v722 = v360;
              v723 = v361;
              v720._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v720._object = v130;
              if (v130)
              {
                v721 = v720;
              }

              else
              {
                v721 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v720._object)
                {
                  outlined destroy of String.UTF8View(&v720);
                }
              }

              v131 = v649;
              v330 = v721;

              v724 = v330;

              v132 = Logger.payments.unsafeMutableAddressor();
              v663(v131, v132, v662);
              v339 = 7;
              v331 = swift_allocObject();
              *(v331 + 16) = v374;

              v338 = 32;
              v133 = swift_allocObject();
              v134 = v330._object;
              v333 = v133;
              *(v133 + 16) = v330._countAndFlagsBits;
              *(v133 + 24) = v134;

              v135 = swift_allocObject();
              v136 = v356;
              v340 = v135;
              *(v135 + 16) = v357;
              *(v135 + 24) = v136;
              v353 = Logger.logObject.getter();
              v354 = static os_log_type_t.debug.getter();
              v336 = 17;
              v342 = swift_allocObject();
              v335 = 32;
              *(v342 + 16) = 32;
              v343 = swift_allocObject();
              v337 = 8;
              *(v343 + 16) = 8;
              v137 = swift_allocObject();
              v138 = v331;
              v332 = v137;
              *(v137 + 16) = v592;
              *(v137 + 24) = v138;
              v139 = swift_allocObject();
              v140 = v332;
              v344 = v139;
              *(v139 + 16) = v593;
              *(v139 + 24) = v140;
              v345 = swift_allocObject();
              *(v345 + 16) = v335;
              v346 = swift_allocObject();
              *(v346 + 16) = v337;
              v141 = swift_allocObject();
              v142 = v333;
              v334 = v141;
              *(v141 + 16) = v594;
              *(v141 + 24) = v142;
              v143 = swift_allocObject();
              v144 = v334;
              v347 = v143;
              *(v143 + 16) = v595;
              *(v143 + 24) = v144;
              v348 = swift_allocObject();
              *(v348 + 16) = v335;
              v349 = swift_allocObject();
              *(v349 + 16) = v337;
              v145 = swift_allocObject();
              v146 = v340;
              v341 = v145;
              *(v145 + 16) = v596;
              *(v145 + 24) = v146;
              v147 = swift_allocObject();
              v148 = v341;
              v351 = v147;
              *(v147 + 16) = v597;
              *(v147 + 24) = v148;
              v350 = _allocateUninitializedArray<A>(_:)();
              v352 = v149;

              v150 = v342;
              v151 = v352;
              *v352 = v598;
              v151[1] = v150;

              v152 = v343;
              v153 = v352;
              v352[2] = v599;
              v153[3] = v152;

              v154 = v344;
              v155 = v352;
              v352[4] = v600;
              v155[5] = v154;

              v156 = v345;
              v157 = v352;
              v352[6] = v601;
              v157[7] = v156;

              v158 = v346;
              v159 = v352;
              v352[8] = v602;
              v159[9] = v158;

              v160 = v347;
              v161 = v352;
              v352[10] = v603;
              v161[11] = v160;

              v162 = v348;
              v163 = v352;
              v352[12] = v604;
              v163[13] = v162;

              v164 = v349;
              v165 = v352;
              v352[14] = v605;
              v165[15] = v164;

              v166 = v351;
              v167 = v352;
              v352[16] = v606;
              v167[17] = v166;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v353, v354))
              {
                v323 = static UnsafeMutablePointer.allocate(capacity:)();
                v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v324 = createStorage<A>(capacity:type:)(0, v322, v322);
                v325 = createStorage<A>(capacity:type:)(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v326 = &v717;
                v717 = v323;
                v327 = &v716;
                v716 = v324;
                v328 = &v715;
                v715 = v325;
                serialize(_:at:)(2, &v717);
                serialize(_:at:)(3, v326);
                v168 = v355;
                v713 = v598;
                v714 = v342;
                closure #1 in osLogInternal(_:log:type:)(&v713, v326, v327, v328);
                v329 = v168;
                if (v168)
                {

                  __break(1u);
                }

                else
                {
                  v713 = v599;
                  v714 = v343;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v320 = 0;
                  v713 = v600;
                  v714 = v344;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v319 = 0;
                  v713 = v601;
                  v714 = v345;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v318 = 0;
                  v713 = v602;
                  v714 = v346;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v317 = 0;
                  v713 = v603;
                  v714 = v347;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v316 = 0;
                  v713 = v604;
                  v714 = v348;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v315 = 0;
                  v713 = v605;
                  v714 = v349;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v314 = 0;
                  v713 = v606;
                  v714 = v351;
                  closure #1 in osLogInternal(_:log:type:)(&v713, &v717, &v716, &v715);
                  v313 = 0;
                  _os_log_impl(&dword_2686B1000, v353, v354, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v323, 0x20u);
                  destroyStorage<A>(_:count:)(v324, 0, v322);
                  destroyStorage<A>(_:count:)(v325, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v323, MEMORY[0x277D84B78]);

                  v321 = v313;
                }
              }

              else
              {

                v321 = v355;
              }

              v310 = v321;
              MEMORY[0x277D82BD8](v353);
              v544(v649, v662);
              v311 = &v719;
              swift_beginAccess();
              swift_endAccess();
              v312 = String.isEmpty.getter();

              if ((v312 & 1) == 0)
              {
                v305 = 0;
                v306 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v169, v374);
                v308 = v170;
                v307 = &v718;
                swift_beginAccess();
                v309 = v724;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v308, v309).super.isa;
                v172 = v753;
                v753 = isa;
                MEMORY[0x277D82BD8](v172);
              }

              outlined destroy of String.UTF8View(&v724);

              v389 = v310;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v618);
            v372 = v367;
          }

          else
          {
            v372 = v391;
          }
        }

        else
        {
          v372 = v391;
        }

        v360 = 0;
        v361 = 0;
        v362 = v372;
        goto LABEL_83;
      }

      v389 = v391;
    }

    else
    {
      v389 = v391;
    }

LABEL_96:
    v302 = v389;
    v303 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v304 = v173;
    if (v173)
    {
      v300 = v303;
      v301 = v304;
      v299 = v304;
      v298 = v303;
      v728 = v303;
      v729 = v304;

      v751 = v298;
      v752 = v299;
    }

    outlined destroy of ContactQuery?(v639);

    v513 = v302;
    goto LABEL_99;
  }

  v513 = v529;
LABEL_99:
  v279 = v513;
  type metadata accessor for INRequestPaymentIntent();
  v280 = &v749;
  v287 = 32;
  swift_beginAccess();
  v281 = *(v530 + 16);
  MEMORY[0x277D82BE0](v281);
  swift_endAccess();
  v282 = v753;
  MEMORY[0x277D82BE0](v753);
  v283 = v751;
  v284 = v752;

  v760.value.super.isa = v281;
  v760.is_nil = v282;
  v761.value.super.isa = v283;
  v761.is_nil = v284;
  v175.super.super.isa = INRequestPaymentIntent.__allocating_init(payer:currencyAmount:note:)(v760, v761, v174).super.super.isa;
  v176 = v647;
  v285 = v175.super.super.isa;
  v748 = v175.super.super.isa;
  v177 = Logger.payments.unsafeMutableAddressor();
  v663(v176, v177, v662);
  MEMORY[0x277D82BE0](v285);
  v288 = 7;
  v289 = swift_allocObject();
  *(v289 + 16) = v285;
  v296 = Logger.logObject.getter();
  v297 = static os_log_type_t.debug.getter();
  v286 = 17;
  v291 = swift_allocObject();
  *(v291 + 16) = 32;
  v292 = swift_allocObject();
  *(v292 + 16) = 8;
  v178 = swift_allocObject();
  v179 = v289;
  v290 = v178;
  *(v178 + 16) = v607;
  *(v178 + 24) = v179;
  v180 = swift_allocObject();
  v181 = v290;
  v294 = v180;
  *(v180 + 16) = v608;
  *(v180 + 24) = v181;
  v293 = _allocateUninitializedArray<A>(_:)();
  v295 = v182;

  v183 = v291;
  v184 = v295;
  *v295 = v609;
  v184[1] = v183;

  v185 = v292;
  v186 = v295;
  v295[2] = v610;
  v186[3] = v185;

  v187 = v294;
  v188 = v295;
  v295[4] = v611;
  v188[5] = v187;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v296, v297))
  {
    v272 = static UnsafeMutablePointer.allocate(capacity:)();
    v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v273 = createStorage<A>(capacity:type:)(0, v271, v271);
    v274 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v275 = &v736;
    v736 = v272;
    v276 = &v735;
    v735 = v273;
    v277 = &v734;
    v734 = v274;
    serialize(_:at:)(2, &v736);
    serialize(_:at:)(1, v275);
    v189 = v279;
    v732 = v609;
    v733 = v291;
    closure #1 in osLogInternal(_:log:type:)(&v732, v275, v276, v277);
    v278 = v189;
    if (v189)
    {

      __break(1u);
    }

    else
    {
      v732 = v610;
      v733 = v292;
      closure #1 in osLogInternal(_:log:type:)(&v732, &v736, &v735, &v734);
      v269 = 0;
      v732 = v611;
      v733 = v294;
      closure #1 in osLogInternal(_:log:type:)(&v732, &v736, &v735, &v734);
      v268 = 0;
      _os_log_impl(&dword_2686B1000, v296, v297, "#Transformer returned intent %s", v272, 0xCu);
      destroyStorage<A>(_:count:)(v273, 0, v271);
      destroyStorage<A>(_:count:)(v274, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v272, MEMORY[0x277D84B78]);

      v270 = v268;
    }
  }

  else
  {

    v270 = v279;
  }

  v266 = v270;
  MEMORY[0x277D82BD8](v296);
  v544(v647, v662);

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v267 = v746[1];

  if (v267)
  {
    v265 = v267;
    v262 = v267;
    v263 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v264 = v263;
  }

  else
  {
    v264 = 0;
  }

  v746[0] = v264;

  if (v746[0])
  {
    v747 = v746[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v261 = v745[1];

    if (v261 && (v260 = v261, v258 = v261, v259 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v259))
    {
      v257 = v259;
      v254 = v259;
      v255 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v256 = v255;
    }

    else
    {
      v256 = 0;
    }

    v745[0] = v256;

    if (v745[0])
    {
      v747 = v745[0];
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v253 = v744;

      if (v253 && (v252 = v253, v250 = v253, v251 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v251))
      {
        v249 = v251;
        v248 = v251;
        v747 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v747 = 0;
      }

      if (v745[0])
      {
        outlined destroy of ContiguousArray<A1>(v745);
      }
    }

    if (v746[0])
    {
      outlined destroy of ContiguousArray<A1>(v746);
    }
  }

  v247 = v747;
  if (v747)
  {
    v246 = v247;
    v241 = v247;
    v743 = v247;
    MEMORY[0x277D82BE0](v285);
    v242 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v190 = UsoEntity_common_App.appIdentifier.getter();
    v243 = v190;
    v244 = v191;
    if (v191)
    {
      v239 = v243;
      v240 = v244;
      v236 = v244;
      v237 = MEMORY[0x26D620690](v243);

      v238 = v237;
    }

    else
    {
      v238 = 0;
    }

    v192 = v645;
    v224 = v238;
    v223 = &v742;
    v226 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v285, v242, v224, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v193 = Logger.payments.unsafeMutableAddressor();
    v663(v192, v193, v662);

    v234 = Logger.logObject.getter();
    v235 = static os_log_type_t.debug.getter();
    v225 = 17;
    v227 = 7;
    v229 = swift_allocObject();
    *(v229 + 16) = 32;
    v230 = swift_allocObject();
    *(v230 + 16) = 8;
    v194 = swift_allocObject();
    v195 = v241;
    v228 = v194;
    *(v194 + 16) = v612;
    *(v194 + 24) = v195;
    v196 = swift_allocObject();
    v197 = v228;
    v232 = v196;
    *(v196 + 16) = v613;
    *(v196 + 24) = v197;
    v231 = _allocateUninitializedArray<A>(_:)();
    v233 = v198;

    v199 = v229;
    v200 = v233;
    *v233 = v614;
    v200[1] = v199;

    v201 = v230;
    v202 = v233;
    v233[2] = v615;
    v202[3] = v201;

    v203 = v232;
    v204 = v233;
    v233[4] = v616;
    v204[5] = v203;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v234, v235))
    {
      v216 = static UnsafeMutablePointer.allocate(capacity:)();
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v217 = createStorage<A>(capacity:type:)(0, v215, v215);
      v218 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v219 = &v741;
      v741 = v216;
      v220 = &v740;
      v740 = v217;
      v221 = &v739;
      v739 = v218;
      serialize(_:at:)(2, &v741);
      serialize(_:at:)(1, v219);
      v205 = v266;
      v737 = v614;
      v738 = v229;
      closure #1 in osLogInternal(_:log:type:)(&v737, v219, v220, v221);
      v222 = v205;
      if (v205)
      {

        __break(1u);
      }

      else
      {
        v737 = v615;
        v738 = v230;
        closure #1 in osLogInternal(_:log:type:)(&v737, &v741, &v740, &v739);
        v213 = 0;
        v737 = v616;
        v738 = v232;
        closure #1 in osLogInternal(_:log:type:)(&v737, &v741, &v740, &v739);
        v212 = 0;
        _os_log_impl(&dword_2686B1000, v234, v235, "#Transformer found app to use for intent as %s", v216, 0xCu);
        destroyStorage<A>(_:count:)(v217, 0, v215);
        destroyStorage<A>(_:count:)(v218, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v216, MEMORY[0x277D84B78]);

        v214 = v212;
      }
    }

    else
    {

      v214 = v266;
    }

    v211 = v214;
    MEMORY[0x277D82BD8](v234);
    v544(v645, v662);

    v245 = v211;
  }

  else
  {
    v245 = v266;
  }

  v210 = v245;
  MEMORY[0x277D82BE0](v285);
  v206 = v285;
  *v569 = v285;
  MEMORY[0x277D82BD8](v206);
  outlined destroy of String.UTF8View(&v751);
  outlined destroy of SFRichText?(&v753);
}

uint64_t sub_2687908C0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1, *(v1 + 16));
}

{
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1, *(v1 + 16));
}

{
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1, *(v1 + 16));
}

uint64_t implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{

  type metadata accessor for UsoTask_noVerb_common_Payment();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_pay_common_Payment();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_requestMoney_common_Payment();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19INSendPaymentIntentCSgMd, &_sSo19INSendPaymentIntentCSgMR);
  return String.init<A>(describing:)();
}

{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INRequestPaymentIntentCSgMd, &_sSo22INRequestPaymentIntentCSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;

  *v3 = a1;
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo8INPersonCGSgGMd, &_sSaySaySo8INPersonCGSgGMR);
  lazy protocol witness table accessor for type [[INPerson]?] and conformance [A]();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  swift_beginAccess();
  MEMORY[0x277D82BE0](*(a1 + 16));
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return String.init<A>(describing:)();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  v13 = a1;
  v6 = UsoIdentifier.namespace.getter();
  v7 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyUnit", 0xCuLL, 1);

  v11[0] = v6;
  v11[1] = v7;
  v12 = v2;
  if (!v7)
  {
    if (!v12._object)
    {
      outlined destroy of String.UTF8View(v11);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v11, &v10);
  if (!v12._object)
  {
    outlined destroy of String.UTF8View(&v10);
LABEL_8:
    outlined destroy of DIIdentifier(v11);
    v5 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v4 = MEMORY[0x26D620740](v10, *(&v10 + 1), v12._countAndFlagsBits, v12._object);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  outlined destroy of String.UTF8View(v11);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

INSendPaymentIntent __swiftcall INSendPaymentIntent.__allocating_init(payee:currencyAmount:note:)(INPerson_optional payee, INCurrencyAmount_optional currencyAmount, Swift::String_optional note)
{
  isa = payee.value.super.isa;
  v5 = *&payee.is_nil;
  v6 = currencyAmount.value.super.isa;
  v7 = *&currencyAmount.is_nil;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INSendPaymentIntent.init(payee:currencyAmount:note:)(isa, v5, v6, v7);
}

uint64_t implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSendPaymentIntent();
  lazy protocol witness table accessor for type INSendPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INRequestPaymentIntent();
  lazy protocol witness table accessor for type INRequestPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{

  type metadata accessor for UsoEntity_common_App();
  return String.init<A>(describing:)();
}

{
  UsoEntity_common_App.appIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t sub_2687951FC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_2687993EC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

INRequestPaymentIntent __swiftcall INRequestPaymentIntent.__allocating_init(payer:currencyAmount:note:)(INPerson_optional payer, INCurrencyAmount_optional currencyAmount, Swift::String_optional note)
{
  isa = payer.value.super.isa;
  v5 = *&payer.is_nil;
  v6 = currencyAmount.value.super.isa;
  v7 = *&currencyAmount.is_nil;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INRequestPaymentIntent.init(payer:currencyAmount:note:)(isa, v5, v6, v7);
}

uint64_t static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_request_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_summarise_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v224 = a3;
  v237 = a1;
  v236 = a2;
  v250 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v254 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v256 = partial apply for closure #1 in OSLogArguments.append(_:);
  v258 = partial apply for closure #1 in OSLogArguments.append(_:);
  v261 = partial apply for closure #1 in OSLogArguments.append(_:);
  v226 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v227 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v228 = partial apply for closure #1 in OSLogArguments.append(_:);
  v229 = partial apply for closure #1 in OSLogArguments.append(_:);
  v230 = partial apply for closure #1 in OSLogArguments.append(_:);
  v231 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v232 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v233 = partial apply for closure #1 in OSLogArguments.append(_:);
  v234 = partial apply for closure #1 in OSLogArguments.append(_:);
  v235 = partial apply for closure #1 in OSLogArguments.append(_:);
  v310 = 0;
  v309 = 0;
  v299 = 0;
  v283 = 0;
  v282 = 0;
  v277 = 0u;
  v278 = 0u;
  v246 = type metadata accessor for Logger();
  v244 = *(v246 - 8);
  v245 = v246 - 8;
  v238 = (v244[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v237, v236);
  v239 = v65 - v238;
  v240 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v241 = v65 - v240;
  v242 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v10 = v65 - v242;
  v243 = v65 - v242;
  v251 = *v9;
  v310 = v251;
  v309 = v11;
  v12 = Logger.payments.unsafeMutableAddressor();
  v247 = v244[2];
  v248 = v244 + 2;
  v247(v10, v12, v246);

  v265 = Logger.logObject.getter();
  v266 = static os_log_type_t.debug.getter();
  v249 = 17;
  v253 = 7;
  v257 = swift_allocObject();
  *(v257 + 16) = 32;
  v259 = swift_allocObject();
  *(v259 + 16) = 8;
  v252 = 32;
  v13 = swift_allocObject();
  v14 = v251;
  v255 = v13;
  *(v13 + 16) = v250;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v255;
  v262 = v15;
  *(v15 + 16) = v254;
  *(v15 + 24) = v16;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v260 = _allocateUninitializedArray<A>(_:)();
  v263 = v17;

  v18 = v257;
  v19 = v263;
  *v263 = v256;
  v19[1] = v18;

  v20 = v259;
  v21 = v263;
  v263[2] = v258;
  v21[3] = v20;

  v22 = v262;
  v23 = v263;
  v263[4] = v261;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v265, v266))
  {
    v217 = static UnsafeMutablePointer.allocate(capacity:)();
    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v218 = createStorage<A>(capacity:type:)(0, v216, v216);
    v219 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v220 = &v271;
    v271 = v217;
    v221 = &v270;
    v270 = v218;
    v222 = &v269;
    v269 = v219;
    serialize(_:at:)(2, &v271);
    serialize(_:at:)(1, v220);
    v24 = v225;
    v267 = v256;
    v268 = v257;
    closure #1 in osLogInternal(_:log:type:)(&v267, v220, v221, v222);
    v223 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v267 = v258;
      v268 = v259;
      closure #1 in osLogInternal(_:log:type:)(&v267, &v271, &v270, &v269);
      v214 = 0;
      v267 = v261;
      v268 = v262;
      closure #1 in osLogInternal(_:log:type:)(&v267, &v271, &v270, &v269);
      v213 = 0;
      _os_log_impl(&dword_2686B1000, v265, v266, "#Transformer for request_common_PaymentAccount task %s", v217, 0xCu);
      destroyStorage<A>(_:count:)(v218, 0, v216);
      destroyStorage<A>(_:count:)(v219, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v217, MEMORY[0x277D84B78]);

      v215 = v213;
    }
  }

  else
  {

    v215 = v225;
  }

  v25 = v241;
  v198 = v215;
  MEMORY[0x277D82BD8](v265);
  v199 = v244[1];
  v200 = v244 + 1;
  v199(v243, v246);
  v26 = Logger.payments.unsafeMutableAddressor();
  v247(v25, v26, v246);
  MEMORY[0x277D82BE0](v236);
  v203 = 7;
  v204 = swift_allocObject();
  *(v204 + 16) = v236;
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.debug.getter();
  v201 = 17;
  v206 = swift_allocObject();
  *(v206 + 16) = 32;
  v207 = swift_allocObject();
  *(v207 + 16) = 8;
  v202 = 32;
  v27 = swift_allocObject();
  v28 = v204;
  v205 = v27;
  *(v27 + 16) = v226;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v205;
  v209 = v29;
  *(v29 + 16) = v227;
  *(v29 + 24) = v30;
  v208 = _allocateUninitializedArray<A>(_:)();
  v210 = v31;

  v32 = v206;
  v33 = v210;
  *v210 = v228;
  v33[1] = v32;

  v34 = v207;
  v35 = v210;
  v210[2] = v229;
  v35[3] = v34;

  v36 = v209;
  v37 = v210;
  v210[4] = v230;
  v37[5] = v36;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v211, v212))
  {
    v191 = static UnsafeMutablePointer.allocate(capacity:)();
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v192 = createStorage<A>(capacity:type:)(0, v190, v190);
    v193 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v194 = &v276;
    v276 = v191;
    v195 = &v275;
    v275 = v192;
    v196 = &v274;
    v274 = v193;
    serialize(_:at:)(2, &v276);
    serialize(_:at:)(1, v194);
    v38 = v198;
    v272 = v228;
    v273 = v206;
    closure #1 in osLogInternal(_:log:type:)(&v272, v194, v195, v196);
    v197 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v272 = v229;
      v273 = v207;
      closure #1 in osLogInternal(_:log:type:)(&v272, &v276, &v275, &v274);
      v188 = 0;
      v272 = v230;
      v273 = v209;
      closure #1 in osLogInternal(_:log:type:)(&v272, &v276, &v275, &v274);
      v187 = 0;
      _os_log_impl(&dword_2686B1000, v211, v212, "#Transformer for request_common_PaymentAccount previous intent is %s", v191, 0xCu);
      destroyStorage<A>(_:count:)(v192, 0, v190);
      destroyStorage<A>(_:count:)(v193, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v191, MEMORY[0x277D84B78]);

      v189 = v187;
    }
  }

  else
  {

    v189 = v198;
  }

  v186 = v189;
  MEMORY[0x277D82BD8](v211);
  v199(v241, v246);
  MEMORY[0x277D82BE0](v236);
  if (v236)
  {
    v185 = v236;
    v184 = v236;
    v308 = [v236 accountNickname];
    MEMORY[0x277D82BD8](v184);
  }

  else
  {
    v308 = 0;
  }

  MEMORY[0x277D82BE0](v236);
  if (v236)
  {
    v183 = v236;
    v179 = v236;
    v180 = [v236 accountType];
    MEMORY[0x277D82BD8](v179);
    v181 = v180;
    v182 = 0;
  }

  else
  {
    v181 = 0;
    v182 = 1;
  }

  v305 = v181;
  v306 = v182 & 1;
  if (v182)
  {
    v307 = 0;
    v178 = 0;
  }

  else
  {
    v307 = v305;
    v178 = v305;
  }

  v177 = v178;
  MEMORY[0x277D82BE0](v236);
  if (v236)
  {
    v176 = v236;
    v175 = v236;
    v304 = [v236 organizationName];
    MEMORY[0x277D82BD8](v175);
  }

  else
  {
    v304 = 0;
  }

  MEMORY[0x277D82BE0](v236);
  if (v236)
  {
    v174 = v236;
    v170 = v236;
    v171 = [v236 requestedBalanceType];
    MEMORY[0x277D82BD8](v170);
    v172 = v171;
    v173 = 0;
  }

  else
  {
    v172 = 0;
    v173 = 1;
  }

  v301 = v172;
  v302 = v173 & 1;
  if (v173)
  {
    v303 = 1;
    v169 = 1;
  }

  else
  {
    v303 = v301;
    v169 = v301;
  }

  v164 = v169;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v165 = v300;

  v166 = static PaymentAccountInformation.from(_:)(v165);
  v168 = v39;
  *&v167 = v40;
  *(&v167 + 1) = v41;

  if (v168 == 1)
  {
    v160 = v164;
    v161 = v177;
  }

  else
  {
    *&v162 = v166;
    *(&v162 + 1) = v168;
    v163 = v167;
    v159 = *(&v167 + 1);
    v157 = v167;
    v156 = v168;
    v158 = v166;
    v277 = v162;
    v278 = v167;
    MEMORY[0x277D82BE0](v168);
    v42 = v308;
    v308 = v156;
    MEMORY[0x277D82BD8](v42);
    v307 = v159;
    MEMORY[0x277D82BE0](v157);
    v43 = v304;
    v304 = v157;
    MEMORY[0x277D82BD8](v43);
    v303 = v158;
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](v157);
    v160 = v158;
    v161 = v159;
  }

  v150 = v161;
  v152 = v160;
  type metadata accessor for INSearchForAccountsIntent();
  v153 = v308;
  MEMORY[0x277D82BE0](v308);
  v151 = v304;
  MEMORY[0x277D82BE0](v304);
  v154 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v153, v150, v151, v152);
  v299 = v154;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v155 = v298;

  if (v155)
  {
    v149 = v155;
    v146 = v155;
    v147 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v148 = v147;
  }

  else
  {
    v148 = 0;
  }

  v145 = v148;
  if (v148)
  {
    v144 = v145;
    v141 = v145;
    v283 = v145;
    v142 = type metadata accessor for App();
    UsoEntity_common_App.appIdentifier.getter();
    v143 = App.__allocating_init(appIdentifier:)();
    v282 = v143;
    if (App.isFirstParty.getter(v143))
    {
      v140 = &v280;
      v280 = v150;
      v138 = &v279;
      v279 = 0;
      v139 = type metadata accessor for INAccountType(0);
      lazy protocol witness table accessor for type INAccountType and conformance INAccountType();
      if (== infix<A>(_:_:)())
      {
        INBalanceType.rawValue.getter();
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
        object = v44._object;
        v136 = MEMORY[0x26D620690](v44._countAndFlagsBits);

        [v154 setValue:isa forKeyPath:v136];
        MEMORY[0x277D82BD8](v136);
        swift_unknownObjectRelease();
      }
    }

    MEMORY[0x277D82BE0](v154);
    v132 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v133 = UsoEntity_common_App.appIdentifier.getter();
    v134 = v45;
    if (v45)
    {
      v130 = v133;
      v131 = v134;
      v127 = v134;
      v128 = MEMORY[0x26D620690](v133);

      v129 = v128;
    }

    else
    {
      v129 = 0;
    }

    v126 = v129;
    v125 = &v281;
    swift_beginAccess();
    objc_setAssociatedObject(v154, v132, v126, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v124 = v297;

  if (v124 && (v123 = v124, v121 = v124, v122 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v122))
  {
    v120 = v122;
    v115 = v122;
    v116 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
    v117 = v46;

    v118 = v116;
    v119 = v117;
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  v113 = v119;
  v112 = v118;

  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apple Cash", 0xAuLL, 1);
  countAndFlagsBits = v47._countAndFlagsBits;
  v114 = v47._object;

  v295[0] = v112;
  v295[1] = v113;
  *&v296 = countAndFlagsBits;
  *(&v296 + 1) = v114;
  if (v113)
  {
    outlined init with copy of String(v295, &v286);
    if (*(&v296 + 1))
    {
      v108 = &v285;
      v285 = v286;
      v107 = &v284;
      v284 = v296;
      v109 = MEMORY[0x26D620740](v286, *(&v286 + 1), v296, *(&v296 + 1));
      outlined destroy of String.UTF8View(v107);
      outlined destroy of String.UTF8View(v108);
      outlined destroy of String.UTF8View(v295);
      v110 = v109;
      goto LABEL_57;
    }

    outlined destroy of String.UTF8View(&v286);
    goto LABEL_59;
  }

  if (*(&v296 + 1))
  {
LABEL_59:
    outlined destroy of DIIdentifier(v295);
    v110 = 0;
    goto LABEL_57;
  }

  outlined destroy of String.UTF8View(v295);
  v110 = 1;
LABEL_57:
  v106 = v110;

  if (v106)
  {
    v105 = &v289;
    v289 = v150;
    v103 = &v288;
    v288 = 0;
    v104 = type metadata accessor for INAccountType(0);
    lazy protocol witness table accessor for type INAccountType and conformance INAccountType();
    if (== infix<A>(_:_:)())
    {
      INBalanceType.rawValue.getter();
      v102 = Int._bridgeToObjectiveC()().super.super.isa;
      v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      v100 = v48._object;
      v101 = MEMORY[0x26D620690](v48._countAndFlagsBits);

      [v154 setValue:v102 forKeyPath:v101];
      MEMORY[0x277D82BD8](v101);
      swift_unknownObjectRelease();
    }

    MEMORY[0x277D82BE0](v154);
    v96 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v97 = static AppUtil.walletApp.getter();
    v98 = App.appIdentifier.getter();
    v99 = v49;
    if (v49)
    {
      v94 = v98;
      v95 = v99;
      v91 = v99;
      v92 = MEMORY[0x26D620690](v98);

      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    v90 = v93;

    v89 = &v287;
    swift_beginAccess();
    objc_setAssociatedObject(v154, v96, v90, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v50 = v239;
  v51 = Logger.payments.unsafeMutableAddressor();
  v247(v50, v51, v246);
  MEMORY[0x277D82BE0](v154);
  v79 = 7;
  v80 = swift_allocObject();
  *(v80 + 16) = v154;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  v77 = 17;
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v78 = 32;
  v52 = swift_allocObject();
  v53 = v80;
  v81 = v52;
  *(v52 + 16) = v231;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v81;
  v85 = v54;
  *(v54 + 16) = v232;
  *(v54 + 24) = v55;
  v84 = _allocateUninitializedArray<A>(_:)();
  v86 = v56;

  v57 = v82;
  v58 = v86;
  *v86 = v233;
  v58[1] = v57;

  v59 = v83;
  v60 = v86;
  v86[2] = v234;
  v60[3] = v59;

  v61 = v85;
  v62 = v86;
  v86[4] = v235;
  v62[5] = v61;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v87, v88))
  {
    v70 = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v71 = createStorage<A>(capacity:type:)(0, v69, v69);
    v72 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v73 = &v294;
    v294 = v70;
    v74 = &v293;
    v293 = v71;
    v75 = &v292;
    v292 = v72;
    serialize(_:at:)(2, &v294);
    serialize(_:at:)(1, v73);
    v63 = v186;
    v290 = v233;
    v291 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v290, v73, v74, v75);
    v76 = v63;
    if (v63)
    {

      __break(1u);
    }

    else
    {
      v290 = v234;
      v291 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v290, &v294, &v293, &v292);
      v67 = 0;
      v290 = v235;
      v291 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v290, &v294, &v293, &v292);
      v66 = 0;
      _os_log_impl(&dword_2686B1000, v87, v88, "#Transformer newly transformed intent is %s", v70, 0xCu);
      destroyStorage<A>(_:count:)(v71, 0, v69);
      destroyStorage<A>(_:count:)(v72, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v70, MEMORY[0x277D84B78]);

      v68 = v66;
    }
  }

  else
  {

    v68 = v186;
  }

  v65[1] = v68;
  MEMORY[0x277D82BD8](v87);
  v199(v239, v246);
  MEMORY[0x277D82BE0](v154);
  v64 = v154;
  *v224 = v154;
  MEMORY[0x277D82BD8](v64);
  outlined destroy of SFRichText?(&v304);
  outlined destroy of SFRichText?(&v308);
}

{
  v177 = a3;
  v190 = a1;
  v189 = a2;
  v203 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v207 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v209 = partial apply for closure #1 in OSLogArguments.append(_:);
  v211 = partial apply for closure #1 in OSLogArguments.append(_:);
  v214 = partial apply for closure #1 in OSLogArguments.append(_:);
  v179 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v180 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v181 = partial apply for closure #1 in OSLogArguments.append(_:);
  v182 = partial apply for closure #1 in OSLogArguments.append(_:);
  v183 = partial apply for closure #1 in OSLogArguments.append(_:);
  v184 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v185 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = partial apply for closure #1 in OSLogArguments.append(_:);
  v188 = partial apply for closure #1 in OSLogArguments.append(_:);
  v251 = 0;
  v250 = 0;
  v240 = 0;
  v238 = 0;
  v230 = 0u;
  v231 = 0u;
  v199 = type metadata accessor for Logger();
  v197 = *(v199 - 8);
  v198 = v199 - 8;
  v191 = (v197[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v190, v189);
  v192 = &v62 - v191;
  v193 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v194 = &v62 - v193;
  v195 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - v195;
  v196 = &v62 - v195;
  v204 = *v9;
  v251 = v204;
  v250 = v11;
  v12 = Logger.payments.unsafeMutableAddressor();
  v200 = v197[2];
  v201 = v197 + 2;
  v200(v10, v12, v199);

  v218 = Logger.logObject.getter();
  v219 = static os_log_type_t.debug.getter();
  v202 = 17;
  v206 = 7;
  v210 = swift_allocObject();
  *(v210 + 16) = 32;
  v212 = swift_allocObject();
  *(v212 + 16) = 8;
  v205 = 32;
  v13 = swift_allocObject();
  v14 = v204;
  v208 = v13;
  *(v13 + 16) = v203;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v208;
  v215 = v15;
  *(v15 + 16) = v207;
  *(v15 + 24) = v16;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v213 = _allocateUninitializedArray<A>(_:)();
  v216 = v17;

  v18 = v210;
  v19 = v216;
  *v216 = v209;
  v19[1] = v18;

  v20 = v212;
  v21 = v216;
  v216[2] = v211;
  v21[3] = v20;

  v22 = v215;
  v23 = v216;
  v216[4] = v214;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v218, v219))
  {
    v170 = static UnsafeMutablePointer.allocate(capacity:)();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v171 = createStorage<A>(capacity:type:)(0, v169, v169);
    v172 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v173 = &v224;
    v224 = v170;
    v174 = &v223;
    v223 = v171;
    v175 = &v222;
    v222 = v172;
    serialize(_:at:)(2, &v224);
    serialize(_:at:)(1, v173);
    v24 = v178;
    v220 = v209;
    v221 = v210;
    closure #1 in osLogInternal(_:log:type:)(&v220, v173, v174, v175);
    v176 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v220 = v211;
      v221 = v212;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
      v167 = 0;
      v220 = v214;
      v221 = v215;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
      v166 = 0;
      _os_log_impl(&dword_2686B1000, v218, v219, "#Transformer for summarise_common_PaymentAccount task %s", v170, 0xCu);
      destroyStorage<A>(_:count:)(v171, 0, v169);
      destroyStorage<A>(_:count:)(v172, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v170, MEMORY[0x277D84B78]);

      v168 = v166;
    }
  }

  else
  {

    v168 = v178;
  }

  v25 = v194;
  v151 = v168;
  MEMORY[0x277D82BD8](v218);
  v152 = v197[1];
  v153 = v197 + 1;
  v152(v196, v199);
  v26 = Logger.payments.unsafeMutableAddressor();
  v200(v25, v26, v199);
  MEMORY[0x277D82BE0](v189);
  v156 = 7;
  v157 = swift_allocObject();
  *(v157 + 16) = v189;
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();
  v154 = 17;
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v155 = 32;
  v27 = swift_allocObject();
  v28 = v157;
  v158 = v27;
  *(v27 + 16) = v179;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v158;
  v162 = v29;
  *(v29 + 16) = v180;
  *(v29 + 24) = v30;
  v161 = _allocateUninitializedArray<A>(_:)();
  v163 = v31;

  v32 = v159;
  v33 = v163;
  *v163 = v181;
  v33[1] = v32;

  v34 = v160;
  v35 = v163;
  v163[2] = v182;
  v35[3] = v34;

  v36 = v162;
  v37 = v163;
  v163[4] = v183;
  v37[5] = v36;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v164, v165))
  {
    v144 = static UnsafeMutablePointer.allocate(capacity:)();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v145 = createStorage<A>(capacity:type:)(0, v143, v143);
    v146 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v147 = &v229;
    v229 = v144;
    v148 = &v228;
    v228 = v145;
    v149 = &v227;
    v227 = v146;
    serialize(_:at:)(2, &v229);
    serialize(_:at:)(1, v147);
    v38 = v151;
    v225 = v181;
    v226 = v159;
    closure #1 in osLogInternal(_:log:type:)(&v225, v147, v148, v149);
    v150 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v225 = v182;
      v226 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v225, &v229, &v228, &v227);
      v141 = 0;
      v225 = v183;
      v226 = v162;
      closure #1 in osLogInternal(_:log:type:)(&v225, &v229, &v228, &v227);
      v140 = 0;
      _os_log_impl(&dword_2686B1000, v164, v165, "#Transformer for summarise_common_PaymentAccount previous intent is %s", v144, 0xCu);
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v146, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v144, MEMORY[0x277D84B78]);

      v142 = v140;
    }
  }

  else
  {

    v142 = v151;
  }

  v139 = v142;
  MEMORY[0x277D82BD8](v164);
  v152(v194, v199);
  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v138 = v189;
    v137 = v189;
    v249 = [v189 accountNickname];
    MEMORY[0x277D82BD8](v137);
  }

  else
  {
    v249 = 0;
  }

  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v136 = v189;
    v132 = v189;
    v133 = [v189 accountType];
    MEMORY[0x277D82BD8](v132);
    v134 = v133;
    v135 = 0;
  }

  else
  {
    v134 = 0;
    v135 = 1;
  }

  v246 = v134;
  v247 = v135 & 1;
  if (v135)
  {
    v248 = 0;
    v131 = 0;
  }

  else
  {
    v248 = v246;
    v131 = v246;
  }

  v130 = v131;
  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v129 = v189;
    v128 = v189;
    v245 = [v189 organizationName];
    MEMORY[0x277D82BD8](v128);
  }

  else
  {
    v245 = 0;
  }

  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v127 = v189;
    v123 = v189;
    v124 = [v189 requestedBalanceType];
    MEMORY[0x277D82BD8](v123);
    v125 = v124;
    v126 = 0;
  }

  else
  {
    v125 = 0;
    v126 = 1;
  }

  v242 = v125;
  v243 = v126 & 1;
  if (v126)
  {
    v244 = 1;
    v122 = 1;
  }

  else
  {
    v244 = v242;
    v122 = v242;
  }

  v117 = v122;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v118 = v241;

  v119 = static PaymentAccountInformation.from(_:)(v118);
  v121 = v39;
  *&v120 = v40;
  *(&v120 + 1) = v41;

  if (v121 == 1)
  {
    v113 = v117;
    v114 = v130;
  }

  else
  {
    *&v115 = v119;
    *(&v115 + 1) = v121;
    v116 = v120;
    v112 = *(&v120 + 1);
    v110 = v120;
    v109 = v121;
    v111 = v119;
    v230 = v115;
    v231 = v120;
    MEMORY[0x277D82BE0](v121);
    v42 = v249;
    v249 = v109;
    MEMORY[0x277D82BD8](v42);
    v248 = v112;
    MEMORY[0x277D82BE0](v110);
    v43 = v245;
    v245 = v110;
    MEMORY[0x277D82BD8](v43);
    v244 = v111;
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    v113 = v111;
    v114 = v112;
  }

  v92 = v114;
  v94 = v113;
  type metadata accessor for INSearchForAccountsIntent();
  v95 = v249;
  MEMORY[0x277D82BE0](v249);
  v93 = v245;
  MEMORY[0x277D82BE0](v245);
  v44 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v95, v92, v93, v94);
  v45 = v192;
  v96 = v44;
  v240 = v44;
  v46 = Logger.payments.unsafeMutableAddressor();
  v200(v45, v46, v199);
  MEMORY[0x277D82BE0](v96);
  v99 = 7;
  v100 = swift_allocObject();
  *(v100 + 16) = v96;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  v97 = 17;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = 8;
  v98 = 32;
  v47 = swift_allocObject();
  v48 = v100;
  v101 = v47;
  *(v47 + 16) = v184;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v101;
  v105 = v49;
  *(v49 + 16) = v185;
  *(v49 + 24) = v50;
  v104 = _allocateUninitializedArray<A>(_:)();
  v106 = v51;

  v52 = v102;
  v53 = v106;
  *v106 = v186;
  v53[1] = v52;

  v54 = v103;
  v55 = v106;
  v106[2] = v187;
  v55[3] = v54;

  v56 = v105;
  v57 = v106;
  v106[4] = v188;
  v57[5] = v56;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v107, v108))
  {
    v85 = static UnsafeMutablePointer.allocate(capacity:)();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v86 = createStorage<A>(capacity:type:)(0, v84, v84);
    v87 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v88 = &v236;
    v236 = v85;
    v89 = &v235;
    v235 = v86;
    v90 = &v234;
    v234 = v87;
    serialize(_:at:)(2, &v236);
    serialize(_:at:)(1, v88);
    v58 = v139;
    v232 = v186;
    v233 = v102;
    closure #1 in osLogInternal(_:log:type:)(&v232, v88, v89, v90);
    v91 = v58;
    if (v58)
    {

      __break(1u);
    }

    else
    {
      v232 = v187;
      v233 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
      v82 = 0;
      v232 = v188;
      v233 = v105;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
      v81 = 0;
      _os_log_impl(&dword_2686B1000, v107, v108, "#Transformer newly transformed intent is %s", v85, 0xCu);
      destroyStorage<A>(_:count:)(v86, 0, v84);
      destroyStorage<A>(_:count:)(v87, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v85, MEMORY[0x277D84B78]);

      v83 = v81;
    }
  }

  else
  {

    v83 = v139;
  }

  v79 = v83;
  MEMORY[0x277D82BD8](v107);
  v152(v192, v199);

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v80 = v239;

  if (v80)
  {
    v78 = v80;
    v75 = v80;
    v76 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v74 = v77;
  if (v77)
  {
    v73 = v74;
    v69 = v74;
    v238 = v74;
    MEMORY[0x277D82BE0](v96);
    v70 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v59 = UsoEntity_common_App.appIdentifier.getter();
    v71 = v59;
    v72 = v60;
    if (v60)
    {
      v67 = v71;
      v68 = v72;
      v64 = v72;
      v65 = MEMORY[0x26D620690](v71);

      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v63 = v66;
    v62 = &v237;
    swift_beginAccess();
    objc_setAssociatedObject(v96, v70, v63, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  MEMORY[0x277D82BE0](v96);
  v61 = v96;
  *v177 = v96;
  MEMORY[0x277D82BD8](v61);
  outlined destroy of SFRichText?(&v245);
  outlined destroy of SFRichText?(&v249);
}

{
  v177 = a3;
  v190 = a1;
  v189 = a2;
  v203 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v207 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v209 = partial apply for closure #1 in OSLogArguments.append(_:);
  v211 = partial apply for closure #1 in OSLogArguments.append(_:);
  v214 = partial apply for closure #1 in OSLogArguments.append(_:);
  v179 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v180 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v181 = partial apply for closure #1 in OSLogArguments.append(_:);
  v182 = partial apply for closure #1 in OSLogArguments.append(_:);
  v183 = partial apply for closure #1 in OSLogArguments.append(_:);
  v184 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v185 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = partial apply for closure #1 in OSLogArguments.append(_:);
  v188 = partial apply for closure #1 in OSLogArguments.append(_:);
  v251 = 0;
  v250 = 0;
  v240 = 0;
  v238 = 0;
  v230 = 0u;
  v231 = 0u;
  v199 = type metadata accessor for Logger();
  v197 = *(v199 - 8);
  v198 = v199 - 8;
  v191 = (v197[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v190, v189);
  v192 = &v62 - v191;
  v193 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v194 = &v62 - v193;
  v195 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - v195;
  v196 = &v62 - v195;
  v204 = *v9;
  v251 = v204;
  v250 = v11;
  v12 = Logger.payments.unsafeMutableAddressor();
  v200 = v197[2];
  v201 = v197 + 2;
  v200(v10, v12, v199);

  v218 = Logger.logObject.getter();
  v219 = static os_log_type_t.debug.getter();
  v202 = 17;
  v206 = 7;
  v210 = swift_allocObject();
  *(v210 + 16) = 32;
  v212 = swift_allocObject();
  *(v212 + 16) = 8;
  v205 = 32;
  v13 = swift_allocObject();
  v14 = v204;
  v208 = v13;
  *(v13 + 16) = v203;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v208;
  v215 = v15;
  *(v15 + 16) = v207;
  *(v15 + 24) = v16;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v213 = _allocateUninitializedArray<A>(_:)();
  v216 = v17;

  v18 = v210;
  v19 = v216;
  *v216 = v209;
  v19[1] = v18;

  v20 = v212;
  v21 = v216;
  v216[2] = v211;
  v21[3] = v20;

  v22 = v215;
  v23 = v216;
  v216[4] = v214;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v218, v219))
  {
    v170 = static UnsafeMutablePointer.allocate(capacity:)();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v171 = createStorage<A>(capacity:type:)(0, v169, v169);
    v172 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v173 = &v224;
    v224 = v170;
    v174 = &v223;
    v223 = v171;
    v175 = &v222;
    v222 = v172;
    serialize(_:at:)(2, &v224);
    serialize(_:at:)(1, v173);
    v24 = v178;
    v220 = v209;
    v221 = v210;
    closure #1 in osLogInternal(_:log:type:)(&v220, v173, v174, v175);
    v176 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v220 = v211;
      v221 = v212;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
      v167 = 0;
      v220 = v214;
      v221 = v215;
      closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
      v166 = 0;
      _os_log_impl(&dword_2686B1000, v218, v219, "#Transformer for noVerb_common_PaymentAccount task %s", v170, 0xCu);
      destroyStorage<A>(_:count:)(v171, 0, v169);
      destroyStorage<A>(_:count:)(v172, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v170, MEMORY[0x277D84B78]);

      v168 = v166;
    }
  }

  else
  {

    v168 = v178;
  }

  v25 = v194;
  v151 = v168;
  MEMORY[0x277D82BD8](v218);
  v152 = v197[1];
  v153 = v197 + 1;
  v152(v196, v199);
  v26 = Logger.payments.unsafeMutableAddressor();
  v200(v25, v26, v199);
  MEMORY[0x277D82BE0](v189);
  v156 = 7;
  v157 = swift_allocObject();
  *(v157 + 16) = v189;
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();
  v154 = 17;
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v155 = 32;
  v27 = swift_allocObject();
  v28 = v157;
  v158 = v27;
  *(v27 + 16) = v179;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v158;
  v162 = v29;
  *(v29 + 16) = v180;
  *(v29 + 24) = v30;
  v161 = _allocateUninitializedArray<A>(_:)();
  v163 = v31;

  v32 = v159;
  v33 = v163;
  *v163 = v181;
  v33[1] = v32;

  v34 = v160;
  v35 = v163;
  v163[2] = v182;
  v35[3] = v34;

  v36 = v162;
  v37 = v163;
  v163[4] = v183;
  v37[5] = v36;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v164, v165))
  {
    v144 = static UnsafeMutablePointer.allocate(capacity:)();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v145 = createStorage<A>(capacity:type:)(0, v143, v143);
    v146 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v147 = &v229;
    v229 = v144;
    v148 = &v228;
    v228 = v145;
    v149 = &v227;
    v227 = v146;
    serialize(_:at:)(2, &v229);
    serialize(_:at:)(1, v147);
    v38 = v151;
    v225 = v181;
    v226 = v159;
    closure #1 in osLogInternal(_:log:type:)(&v225, v147, v148, v149);
    v150 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v225 = v182;
      v226 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v225, &v229, &v228, &v227);
      v141 = 0;
      v225 = v183;
      v226 = v162;
      closure #1 in osLogInternal(_:log:type:)(&v225, &v229, &v228, &v227);
      v140 = 0;
      _os_log_impl(&dword_2686B1000, v164, v165, "#Transformer for noVerb_common_PaymentAccount previous intent is %s", v144, 0xCu);
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v146, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v144, MEMORY[0x277D84B78]);

      v142 = v140;
    }
  }

  else
  {

    v142 = v151;
  }

  v139 = v142;
  MEMORY[0x277D82BD8](v164);
  v152(v194, v199);
  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v138 = v189;
    v137 = v189;
    v249 = [v189 accountNickname];
    MEMORY[0x277D82BD8](v137);
  }

  else
  {
    v249 = 0;
  }

  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v136 = v189;
    v132 = v189;
    v133 = [v189 accountType];
    MEMORY[0x277D82BD8](v132);
    v134 = v133;
    v135 = 0;
  }

  else
  {
    v134 = 0;
    v135 = 1;
  }

  v246 = v134;
  v247 = v135 & 1;
  if (v135)
  {
    v248 = 0;
    v131 = 0;
  }

  else
  {
    v248 = v246;
    v131 = v246;
  }

  v130 = v131;
  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v129 = v189;
    v128 = v189;
    v245 = [v189 organizationName];
    MEMORY[0x277D82BD8](v128);
  }

  else
  {
    v245 = 0;
  }

  MEMORY[0x277D82BE0](v189);
  if (v189)
  {
    v127 = v189;
    v123 = v189;
    v124 = [v189 requestedBalanceType];
    MEMORY[0x277D82BD8](v123);
    v125 = v124;
    v126 = 0;
  }

  else
  {
    v125 = 0;
    v126 = 1;
  }

  v242 = v125;
  v243 = v126 & 1;
  if (v126)
  {
    v244 = 1;
    v122 = 1;
  }

  else
  {
    v244 = v242;
    v122 = v242;
  }

  v117 = v122;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v118 = v241;

  v119 = static PaymentAccountInformation.from(_:)(v118);
  v121 = v39;
  *&v120 = v40;
  *(&v120 + 1) = v41;

  if (v121 == 1)
  {
    v113 = v117;
    v114 = v130;
  }

  else
  {
    *&v115 = v119;
    *(&v115 + 1) = v121;
    v116 = v120;
    v112 = *(&v120 + 1);
    v110 = v120;
    v109 = v121;
    v111 = v119;
    v230 = v115;
    v231 = v120;
    MEMORY[0x277D82BE0](v121);
    v42 = v249;
    v249 = v109;
    MEMORY[0x277D82BD8](v42);
    v248 = v112;
    MEMORY[0x277D82BE0](v110);
    v43 = v245;
    v245 = v110;
    MEMORY[0x277D82BD8](v43);
    v244 = v111;
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    v113 = v111;
    v114 = v112;
  }

  v92 = v114;
  v94 = v113;
  type metadata accessor for INSearchForAccountsIntent();
  v95 = v249;
  MEMORY[0x277D82BE0](v249);
  v93 = v245;
  MEMORY[0x277D82BE0](v245);
  v44 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v95, v92, v93, v94);
  v45 = v192;
  v96 = v44;
  v240 = v44;
  v46 = Logger.payments.unsafeMutableAddressor();
  v200(v45, v46, v199);
  MEMORY[0x277D82BE0](v96);
  v99 = 7;
  v100 = swift_allocObject();
  *(v100 + 16) = v96;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  v97 = 17;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = 8;
  v98 = 32;
  v47 = swift_allocObject();
  v48 = v100;
  v101 = v47;
  *(v47 + 16) = v184;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v101;
  v105 = v49;
  *(v49 + 16) = v185;
  *(v49 + 24) = v50;
  v104 = _allocateUninitializedArray<A>(_:)();
  v106 = v51;

  v52 = v102;
  v53 = v106;
  *v106 = v186;
  v53[1] = v52;

  v54 = v103;
  v55 = v106;
  v106[2] = v187;
  v55[3] = v54;

  v56 = v105;
  v57 = v106;
  v106[4] = v188;
  v57[5] = v56;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v107, v108))
  {
    v85 = static UnsafeMutablePointer.allocate(capacity:)();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v86 = createStorage<A>(capacity:type:)(0, v84, v84);
    v87 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v88 = &v236;
    v236 = v85;
    v89 = &v235;
    v235 = v86;
    v90 = &v234;
    v234 = v87;
    serialize(_:at:)(2, &v236);
    serialize(_:at:)(1, v88);
    v58 = v139;
    v232 = v186;
    v233 = v102;
    closure #1 in osLogInternal(_:log:type:)(&v232, v88, v89, v90);
    v91 = v58;
    if (v58)
    {

      __break(1u);
    }

    else
    {
      v232 = v187;
      v233 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
      v82 = 0;
      v232 = v188;
      v233 = v105;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
      v81 = 0;
      _os_log_impl(&dword_2686B1000, v107, v108, "#Transformer newly transformed intent is %s", v85, 0xCu);
      destroyStorage<A>(_:count:)(v86, 0, v84);
      destroyStorage<A>(_:count:)(v87, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v85, MEMORY[0x277D84B78]);

      v83 = v81;
    }
  }

  else
  {

    v83 = v139;
  }

  v79 = v83;
  MEMORY[0x277D82BD8](v107);
  v152(v192, v199);

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v80 = v239;

  if (v80)
  {
    v78 = v80;
    v75 = v80;
    v76 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v74 = v77;
  if (v77)
  {
    v73 = v74;
    v69 = v74;
    v238 = v74;
    MEMORY[0x277D82BE0](v96);
    v70 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v59 = UsoEntity_common_App.appIdentifier.getter();
    v71 = v59;
    v72 = v60;
    if (v60)
    {
      v67 = v71;
      v68 = v72;
      v64 = v72;
      v65 = MEMORY[0x26D620690](v71);

      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v63 = v66;
    v62 = &v237;
    swift_beginAccess();
    objc_setAssociatedObject(v96, v70, v63, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  MEMORY[0x277D82BE0](v96);
  v61 = v96;
  *v177 = v96;
  MEMORY[0x277D82BD8](v61);
  outlined destroy of SFRichText?(&v245);
  outlined destroy of SFRichText?(&v249);
}

void partial apply for closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

{
  closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

{
  closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

uint64_t implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{

  type metadata accessor for UsoTask_request_common_PaymentAccount();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_summarise_common_PaymentAccount();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25INSearchForAccountsIntentCSgMd, &_sSo25INSearchForAccountsIntentCSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSearchForAccountsIntent();
  lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t default argument 0 of static Transformer<>.transformer(appBundleId:)()
{
  v1 = *AppUtil.usoNamespace.unsafeMutableAddressor();

  return v1;
}

uint64_t static Transformer<>.transformer(appBundleId:)(uint64_t a1, uint64_t a2)
{

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for INPerson();
  type metadata accessor for UsoEntityBuilder_common_Person();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a4;
  v62 = a1;
  v64 = a2;
  v63 = a3;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v65 = 0;
  v55 = type metadata accessor for UsoIdentifier();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v4);
  v59 = v19 - v58;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v5);
  v61 = v19 - v60;
  v66 = type metadata accessor for PersonNameComponents();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v70 = *(v67 + 64);
  v69 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v65, v64);
  v71 = v19 - v69;
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v73 = v19 - v72;
  v94 = v19 - v72;
  v74 = *v8;
  v93 = v74;
  v91 = v9;
  v92 = v10;
  type metadata accessor for UsoEntityBuilder_common_Person();
  v75 = UsoEntityBuilder_common_Person.__allocating_init()();
  v90 = v75;
  v76 = [v74 nameComponents];
  if (v76)
  {
    v53 = v76;
    v52 = v76;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v67 + 32))(v61, v71, v66);
    (*(v67 + 56))(v61, 0, 1, v66);
    MEMORY[0x277D82BD8](v52);
  }

  else
  {
    (*(v67 + 56))(v61, 1, 1, v66);
  }

  if ((*(v67 + 48))(v61, 1, v66) == 1)
  {
    outlined destroy of PersonNameComponents?(v61);
  }

  else
  {
    (*(v67 + 32))(v73, v61, v66);
    type metadata accessor for UsoEntityBuilder_common_PersonName();
    v49 = UsoEntityBuilder_common_PersonName.__allocating_init()();
    v89 = v49;
    v50 = PersonNameComponents.nickname.getter();
    v51 = v11;
    if (v11)
    {
      v47 = v50;
      v48 = v51;
      v46 = v51;
      v77 = v50;
      v78 = v51;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();
    }

    v44 = PersonNameComponents.givenName.getter();
    v45 = v12;
    if (v12)
    {
      v42 = v44;
      v43 = v45;
      v41 = v45;
      v79 = v44;
      v80 = v45;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setGivenName(value:)();
    }

    v39 = PersonNameComponents.familyName.getter();
    v40 = v13;
    if (v13)
    {
      v37 = v39;
      v38 = v40;
      v36 = v40;
      v81 = v39;
      v82 = v40;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setFamilyName(value:)();
    }

    v34 = PersonNameComponents.middleName.getter();
    v35 = v14;
    if (v14)
    {
      v32 = v34;
      v33 = v35;
      v31 = v35;
      v83 = v34;
      v84 = v35;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setMiddleName(value:)();
    }

    v29 = PersonNameComponents.namePrefix.getter();
    v30 = v15;
    if (v15)
    {
      v27 = v29;
      v28 = v30;
      v26 = v30;
      v85 = v29;
      v86 = v30;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePrefix(value:)();
    }

    v24 = PersonNameComponents.nameSuffix.getter();
    v25 = v16;
    if (v16)
    {
      v22 = v24;
      v23 = v25;
      v21 = v25;
      v87 = v24;
      v88 = v25;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePostfix(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

    v20 = dispatch thunk of UsoEntityBuilder_common_Person.name.getter();
    if (v20)
    {
      v19[3] = v20;
      v19[2] = v20;
      v19[0] = INPerson.uniqueContactIdentifier.getter();
      v19[1] = v17;

      UsoIdentifierNamespace.rawValue.getter(0);
      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      (*(v56 + 8))(v59, v55);
    }

    (*(v67 + 8))(v73, v66);
  }

  *v54 = v75;
}

uint64_t one-time initialization function for transformer()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  __swift_allocate_value_buffer(v1, static Transformer<>.transformer);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  type metadata accessor for UsoEntityBuilder();
  type metadata accessor for UsoEntity();
  return Transformer.init(transform:)();
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  __swift_allocate_value_buffer(v1, static Transformer<>.transformer);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  type metadata accessor for INPerson();
  type metadata accessor for UsoEntity();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = 0;
  v33 = *a1;
  v28 = MEMORY[0x26D61F7C0]();
  if (v28)
  {

    *a2 = v28;
  }

  else
  {
    v26 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    v25 = v2;
    v31 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v32 = v3;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v5 = type metadata accessor for UsoEntityBuilder();
    DefaultStringInterpolation.appendInterpolation(_:)(v5);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v6);

    v16 = v31;
    v15 = v32;

    outlined destroy of String.UTF8View(&v31);
    v21 = MEMORY[0x26D620710](v16, v15);
    v22 = v7;
    v29 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v30 = v8;
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v10 = type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)(v10);
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v11);

    v18 = v29;
    v17 = v30;

    outlined destroy of String.UTF8View(&v29);
    v19 = MEMORY[0x26D620710](v18, v17);
    v20 = v12;
    v34 = v21;
    v35 = v22;
    v36 = v19;
    v37 = v12;
    v38 = 0;
    v39 = 0;
    v40 = 5;
    v23 = PaymentsError.errorDescription.getter();
    v24 = v13;
    outlined consume of PaymentsError(v21, v22, v19, v20, 0, 0, 5);
    *v25 = v23;
    v25[1] = v24;
    (*(*(v26 - 8) + 104))();
    return swift_willThrow();
  }
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

uint64_t static Transformer<>.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Transformer<>.transformer.unsafeMutableAddressor();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

{
  v3 = Transformer<>.transformer.unsafeMutableAddressor();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static Transformer<>.transformer(contactResolver:)(uint64_t a1)
{
  v4 = a1;
  outlined init with copy of GlobalsProviding(a1, v3);
  v2 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v3, (v2 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(contactResolver:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v73 = a1;
  v76 = a2;
  v77 = 0;
  v59 = closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:);
  v60 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v61 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v62 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v64 = partial apply for closure #1 in OSLogArguments.append(_:);
  v65 = partial apply for closure #1 in OSLogArguments.append(_:);
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v96 = 0;
  v71 = 0;
  v66 = type metadata accessor for Logger();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3);
  v70 = v29 - v69;
  v81 = type metadata accessor for ContactResolverConfig();
  v78 = *(v81 - 8);
  v79 = v81 - 8;
  v72 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v71, v4);
  v84 = v29 - v72;
  v74 = (*(*(type metadata accessor for Signpost.OpenSignpost(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v73, v76);
  v75 = v29 - v74;
  v100 = v29 - v74;
  v83 = *v6;
  v99 = v83;
  v98 = v7;
  v8 = SignpostName.transformContactQueryToINPersons.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v8, v8[1], *(v8 + 16), v75);
  v86 = v76[3];
  v87 = v76[4];
  __swift_project_boxed_opaque_existential_1(v76, v86);
  v80 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  v82 = &v97;
  swift_beginAccess();
  (*(v78 + 16))(v84, v80, v81);
  swift_endAccess();
  v9 = v85;
  v10 = (*(v87 + 8))(v83, v84, v86);
  v88 = v9;
  v89 = v10;
  v90 = v9;
  if (v9)
  {
    v29[1] = v90;
    (*(v78 + 8))(v84, v81);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    return outlined destroy of Signpost.OpenSignpost(v75);
  }

  else
  {
    v55 = v89;
    (*(v78 + 8))(v84, v81);
    v96 = v55;
    v95[1] = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    v11 = v88;
    result = Sequence.forEach(_:)();
    v57 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = v70;
      v14 = Logger.payments.unsafeMutableAddressor();
      (*(v67 + 16))(v13, v14, v66);

      v44 = 7;
      v41 = swift_allocObject();
      *(v41 + 16) = v55;

      v43 = 32;
      v15 = swift_allocObject();
      v16 = v41;
      v45 = v15;
      *(v15 + 16) = v60;
      *(v15 + 24) = v16;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      v42 = 17;
      v47 = swift_allocObject();
      *(v47 + 16) = 32;
      v48 = swift_allocObject();
      *(v48 + 16) = 8;
      v17 = swift_allocObject();
      v18 = v45;
      v46 = v17;
      *(v17 + 16) = v61;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v46;
      v50 = v19;
      *(v19 + 16) = v62;
      *(v19 + 24) = v20;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v49 = _allocateUninitializedArray<A>(_:)();
      v51 = v21;

      v22 = v47;
      v23 = v51;
      *v51 = v63;
      v23[1] = v22;

      v24 = v48;
      v25 = v51;
      v51[2] = v64;
      v25[3] = v24;

      v26 = v50;
      v27 = v51;
      v51[4] = v65;
      v27[5] = v26;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v53, v54))
      {
        v34 = static UnsafeMutablePointer.allocate(capacity:)();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v35 = createStorage<A>(capacity:type:)(0, v33, v33);
        v36 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v37 = v95;
        v95[0] = v34;
        v38 = &v94;
        v94 = v35;
        v39 = &v93;
        v93 = v36;
        serialize(_:at:)(2, v95);
        serialize(_:at:)(1, v37);
        v28 = v57;
        v91 = v63;
        v92 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v91, v37, v38, v39);
        v40 = v28;
        if (v28)
        {

          __break(1u);
        }

        else
        {
          v91 = v64;
          v92 = v48;
          closure #1 in osLogInternal(_:log:type:)(&v91, v95, &v94, &v93);
          v31 = 0;
          v91 = v65;
          v92 = v50;
          closure #1 in osLogInternal(_:log:type:)(&v91, v95, &v94, &v93);
          v30 = 0;
          _os_log_impl(&dword_2686B1000, v53, v54, "#Transformer for resolving INPersons from ContactQuery returning persons: %s", v34, 0xCu);
          destroyStorage<A>(_:count:)(v35, 0, v33);
          destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);

          v32 = v30;
        }
      }

      else
      {

        v32 = v57;
      }

      v29[2] = v32;
      MEMORY[0x277D82BD8](v53);
      (*(v67 + 8))(v70, v66);

      *v58 = v55;

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      return outlined destroy of Signpost.OpenSignpost(v75);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:)(id *a1)
{
  v8 = *a1;
  v9 = [*a1 siriMatches];
  if (v9)
  {
    type metadata accessor for INPerson();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v9);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    result = _ArrayProtocol.filter(_:)();
    if (v7)
    {
      __break(1u);
      return result;
    }

    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setAlternatives_];
  }

  else
  {
    [v8 setAlternatives_];
  }

  return MEMORY[0x277D82BD8](v2);
}

BOOL closure #1 in closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:)(void **a1)
{
  v18 = 0;
  v14 = *a1;
  v18 = v14;
  v15 = [v14 contactIdentifier];
  if (v15)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v1;
    MEMORY[0x277D82BD8](v15);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v17[0] = v12;
  v17[1] = v13;
  outlined destroy of String.UTF8View(v17);
  MEMORY[0x277D82BE0](v14);
  if (v13)
  {
    v9 = 1;
  }

  else
  {
    v8 = [v14 customIdentifier];
    if (v8)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v2;
      MEMORY[0x277D82BD8](v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v16[0] = v6;
    v16[1] = v7;
    outlined destroy of String.UTF8View(v16);
    v9 = v7 != 0;
  }

  MEMORY[0x277D82BD8](v14);
  return v9;
}

uint64_t closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v23 = a1;
  v46 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology30UsoEntityBuilder_common_PersonCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology30UsoEntityBuilder_common_PersonCGMR);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v22 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v2);
  v34 = v14 - v22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v24 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v23, v3);
  v5 = v14 - v24;
  v27 = v14 - v24;
  v37 = *v4;
  v46 = v37;
  v6 = Transformer<>.transformer.unsafeMutableAddressor();
  (*(v25 + 16))(v5, v6, v29);
  v28 = Transformer.transform.getter();
  v30 = v7;
  (*(v25 + 8))(v27, v29);
  v8 = default argument 0 of static Transformer<>.transformer(appBundleId:)();
  v31 = v9;
  static Transformer<>.transformer(appBundleId:)(v8, v9);

  v39 = Transformer.transform.getter();
  v36 = v10;
  (*(v32 + 8))(v34, v35);
  v11 = v38;
  v45 = v37;
  v39(&v44, &v45);
  v40 = v11;
  v41 = v11;
  if (v11)
  {
    v16 = v41;

    v17 = v16;
  }

  else
  {
    v18 = v44;

    v12 = v40;
    v43 = v18;
    v28(&v42, &v43);
    v19 = v12;
    v20 = v12;
    if (v12)
    {
      v14[1] = v20;
    }

    else
    {
      v15 = v42;

      *v21 = v15;
    }
  }

  return result;
}

id @nonobjc INCurrencyAmount.init(amount:currencyCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x26D620690](a2);
  v7 = [v4 initWithAmount:a1 currencyCode:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](a1);
  return v7;
}

id @nonobjc INSendPaymentIntent.init(payee:currencyAmount:note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = MEMORY[0x26D620690](a3);

    v4 = [v11 initWithPayee:a1 currencyAmount:a2 note:v8];
  }

  else
  {
    v4 = [v11 initWithPayee:a1 currencyAmount:a2 note:0];
  }

  v7 = v4;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

id @nonobjc INRequestPaymentIntent.init(payer:currencyAmount:note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = MEMORY[0x26D620690](a3);

    v4 = [v11 initWithPayer:a1 currencyAmount:a2 note:v8];
  }

  else
  {
    v4 = [v11 initWithPayer:a1 currencyAmount:a2 note:0];
  }

  v7 = v4;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}