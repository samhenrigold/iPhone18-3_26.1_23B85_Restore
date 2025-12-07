unint64_t sub_25F406474()
{
  result = qword_27FD6DC28;
  if (!qword_27FD6DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC28);
  }

  return result;
}

unint64_t sub_25F4064C8()
{
  result = qword_27FD6DC30;
  if (!qword_27FD6DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC30);
  }

  return result;
}

unint64_t sub_25F40651C()
{
  result = qword_27FD6DC38;
  if (!qword_27FD6DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC38);
  }

  return result;
}

unint64_t sub_25F406570()
{
  result = qword_27FD6DC40;
  if (!qword_27FD6DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC40);
  }

  return result;
}

unint64_t sub_25F4065C4()
{
  result = qword_27FD6DC48;
  if (!qword_27FD6DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC48);
  }

  return result;
}

unint64_t sub_25F406618()
{
  result = qword_27FD6DC50;
  if (!qword_27FD6DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC50);
  }

  return result;
}

uint64_t sub_25F40666C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_25F406680()
{
  result = qword_27FD6DC58;
  if (!qword_27FD6DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC58);
  }

  return result;
}

unint64_t sub_25F4066D4()
{
  result = qword_27FD6DC60;
  if (!qword_27FD6DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC60);
  }

  return result;
}

unint64_t sub_25F406728()
{
  result = qword_27FD6DC78;
  if (!qword_27FD6DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC78);
  }

  return result;
}

unint64_t sub_25F40677C()
{
  result = qword_27FD6DA68;
  if (!qword_27FD6DA68)
  {
    type metadata accessor for PlistValueBox(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA68);
  }

  return result;
}

uint64_t CancelUpdatePayload.contentIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t CancelUpdatePayload.init(pid:contentIdentifier:updateSeed:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  return result;
}

uint64_t UpdateSetupPayload.loggingOutputPath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall UpdateSetupPayload.init(dynamicProducts:staticProducts:shellDidLoadStaticProducts:updates:loggingOutputPath:)(PreviewsMessagingOS::UpdateSetupPayload *__return_ptr retstr, Swift::OpaquePointer dynamicProducts, Swift::OpaquePointer staticProducts, Swift::Bool shellDidLoadStaticProducts, Swift::OpaquePointer updates, Swift::String_optional loggingOutputPath)
{
  retstr->dynamicProducts = dynamicProducts;
  retstr->shellDidLoadStaticProducts = shellDidLoadStaticProducts;
  retstr->updates = updates;
  retstr->loggingOutputPath = loggingOutputPath;
  retstr->staticProducts = staticProducts;
}

uint64_t static HostUpdateSeed.next.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_25F4A2A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD6D370 != -1)
  {
    swift_once();
  }

  v7[2] = qword_27FD6DC20;

  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC90, &unk_25F4A6630);
  sub_25F406B28();
  sub_25F4A29B0();
  (*(v3 + 8))(v5, v2);

  *a1 = v7[3];
  return result;
}

uint64_t *sub_25F406A98@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result + 1;
  *result = v2;
  *a2 = v2;
  return result;
}

uint64_t sub_25F406AF0()
{
  result = sub_25F4A2A90();
  qword_27FD6DC20 = result;
  return result;
}

unint64_t sub_25F406B28()
{
  result = qword_27FD6DC98;
  if (!qword_27FD6DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC90, &unk_25F4A6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC98);
  }

  return result;
}

uint64_t HostUpdateSeed.hashValue.getter()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F406C14()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F406C88(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v2);
  return sub_25F4A3350();
}

uint64_t sub_25F406D9C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F406E98(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F406F80(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F407078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F40A5B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4070A8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746375646F7270;
  v5 = 0x800000025F4B5E20;
  v6 = 0xD00000000000001ALL;
  v7 = 0xE700000000000000;
  v8 = 0x73657461647075;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000025F4B5E50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7250636974617473;
    v3 = 0xEE0073746375646FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_25F407160()
{
  v1 = *v0;
  v2 = 0x73746375646F7270;
  v3 = 0xD00000000000001ALL;
  v4 = 0x73657461647075;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7250636974617473;
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

uint64_t sub_25F407264(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[5];
  v3 = *(a1 + 8);
  v4 = a1[2];
  v13 = *(a1 + 3);
  v22[0] = 0;
  v21 = v1;
  v20 = 1;
  v19 = v2;
  v18 = 2;
  v17 = v3;
  v16 = 3;
  v15 = v4;
  v14 = 4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
  v8 = sub_25F4078A8();
  v9 = sub_25F407950(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  v10 = sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  v11 = sub_25F407950(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
  return sub_25F4A28A0(v22, &v21, &v20, &v19, &v18, &v17, &v16, &v15, &v14, &v13, &type metadata for UpdateSetupPayload.Key, v5, &type metadata for UpdateSetupPayload.Key, v6, &type metadata for UpdateSetupPayload.Key, MEMORY[0x277D839B0], &type metadata for UpdateSetupPayload.Key, v7, &type metadata for UpdateSetupPayload.Key, MEMORY[0x277D837D0], v8, v9, v8, v10, v8, MEMORY[0x277D405C8], v8, v11, v8, MEMORY[0x277D405B0]);
}

uint64_t UpdateSetupPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for UpdateSetupPayload.Key;
  v5 = sub_25F4078A8();
  v17 = v5;
  LOBYTE(v15[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v13)
    {
      v7 = v13;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
    sub_25F407950(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = v18;
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = v13;
    if (v13 == 2)
    {
      v9 = *(v7 + 16) != 0;
    }

    v12 = v9;
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
    sub_25F407950(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 4;
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v8;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 40) = v7;
  }

  return result;
}

unint64_t sub_25F4078A8()
{
  result = qword_27FD6DCA0;
  if (!qword_27FD6DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCA0);
  }

  return result;
}

unint64_t sub_25F4078FC()
{
  result = qword_27FD6DCB8;
  if (!qword_27FD6DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCB8);
  }

  return result;
}

uint64_t sub_25F407950(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F4079CC()
{
  result = qword_27FD6DCD0;
  if (!qword_27FD6DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCD0);
  }

  return result;
}

uint64_t sub_25F407A88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x800000025F4B5DA0;
  if (v2 == 1)
  {
    v5 = 0x800000025F4B5DA0;
  }

  else
  {
    v3 = 0x6553657461647075;
    v5 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 6580592;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6580592;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F407B84()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F407C28(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F407CB8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F407D58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F40A5FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F407D88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x800000025F4B5DA0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6580592;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F407DE8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_25F407E94(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F408168();
  sub_25F406618();
  sub_25F40651C();

  v4 = sub_25F4A28C0();

  return v4;
}

uint64_t CancelUpdatePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for CancelUpdatePayload.Key;
  v5 = sub_25F408168();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for CancelUpdatePayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F406618();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for CancelUpdatePayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F40651C();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v10;
  }

  return result;
}

unint64_t sub_25F408168()
{
  result = qword_27FD6DCD8;
  if (!qword_27FD6DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCD8);
  }

  return result;
}

uint64_t sub_25F408230()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F408330(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F40841C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F408518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F40A648(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F408548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6E6563536E69616DLL;
  v4 = 0xED0000656E656353;
  v5 = 0x64657463656A6E69;
  v6 = 0xE800000000000000;
  v7 = 0x6C616E7265747865;
  if (v2 != 3)
  {
    v7 = 0x656976657250736ELL;
    v6 = 0xE900000000000077;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF656E6563537961;
  if (*v1)
  {
    v3 = 0x6C707369446D6973;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_25F408604(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F40A4BC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4086C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656449656E656373;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v5 = 0x656449656E656373;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xEF7265696669746ELL;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F408784()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F40881C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4088A0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F408940(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x656449656E656373;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEF7265696669746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F408994()
{
  if (*v0)
  {
    return 0x656449656E656373;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t PreviewType.HostLocation.propertyListValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F408AD8();
  sub_25F408B2C();
  result = sub_25F4A25C0();
  if (v1 >= 4)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for PreviewType.HostLocation.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

_BYTE *sub_25F408AAC(_BYTE *result, char *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  if (v3 >= 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0x4030100u >> (8 * v3);
  }

  *a2 = v4;
  return result;
}

unint64_t sub_25F408AD8()
{
  result = qword_27FD6DCE0;
  if (!qword_27FD6DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCE0);
  }

  return result;
}

unint64_t sub_25F408B2C()
{
  result = qword_27FD6DCE8;
  if (!qword_27FD6DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCE8);
  }

  return result;
}

uint64_t PreviewType.HostLocation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = &type metadata for PreviewType.HostLocation.Key;
  v5 = sub_25F408AD8();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_25F408B2C();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v13 <= 1u)
    {
      v11 = sub_25F4A25E0();
      result = (*(*(v11 - 8) + 8))(a1, v11);
      v9 = 0;
      v10 = v13 != 0;
    }

    else if (v13 == 2)
    {
      v16 = &type metadata for PreviewType.HostLocation.Key;
      v17 = v5;
      LOBYTE(v15[0]) = 1;
      sub_25F4A2530();
      v12 = sub_25F4A25E0();
      (*(*(v12 - 8) + 8))(a1, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v9 = v13;
      v10 = v14;
    }

    else
    {
      v8 = sub_25F4A25E0();
      result = (*(*(v8 - 8) + 8))(a1, v8);
      v9 = 0;
      if (v13 == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }

    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_25F408DFC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F408AD8();
  sub_25F408B2C();
  result = sub_25F4A25C0();
  if (v1 >= 4)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for PreviewType.HostLocation.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_25F408EDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646574736F68;
  }

  else
  {
    v2 = 0x636974617473;
  }

  if (*a2)
  {
    v3 = 0x646574736F68;
  }

  else
  {
    v3 = 0x636974617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F408F5C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F408FCC(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F409020(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F409098(uint64_t *a1@<X8>)
{
  v2 = 0x636974617473;
  if (*v1)
  {
    v2 = 0x646574736F68;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_25F4090C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F40A510();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F40918C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61636F4C74736F68;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v5 = 0x61636F4C74736F68;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F409244()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4092D8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F409358(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4093F4(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x61636F4C74736F68;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F409444()
{
  if (*v0)
  {
    return 0x61636F4C74736F68;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t PreviewType.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_25F409584();
  sub_25F4095D8();
  result = sub_25F4A25C0();
  if (v2 != 4)
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[3] = &type metadata for PreviewType.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F404C6C(v1, v2);
    sub_25F40962C();
    sub_25F4A2520();
    sub_25F409680(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

_BYTE *sub_25F40956C(_BYTE *result, BOOL *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  *a2 = v3 != 4;
  return result;
}

unint64_t sub_25F409584()
{
  result = qword_27FD6DCF0;
  if (!qword_27FD6DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCF0);
  }

  return result;
}

unint64_t sub_25F4095D8()
{
  result = qword_27FD6DCF8;
  if (!qword_27FD6DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCF8);
  }

  return result;
}

unint64_t sub_25F40962C()
{
  result = qword_27FD6DD00;
  if (!qword_27FD6DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD00);
  }

  return result;
}

uint64_t sub_25F409680(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_25F40666C(a1, a2);
  }

  return a1;
}

uint64_t PreviewType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v13 = &type metadata for PreviewType.Key;
  v5 = sub_25F409584();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4095D8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v11)
    {
      v13 = &type metadata for PreviewType.Key;
      v14 = v5;
      LOBYTE(v12[0]) = 1;
      sub_25F40962C();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
      v9 = v11;
    }

    else
    {
      v10 = sub_25F4A25E0();
      result = (*(*(v10 - 8) + 8))(a1, v10);
      v9 = xmmword_25F4A6610;
    }

    *a2 = v9;
  }

  return result;
}

unint64_t sub_25F40985C()
{
  result = qword_27FD6DD08;
  if (!qword_27FD6DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD08);
  }

  return result;
}

unint64_t sub_25F4098B4()
{
  result = qword_27FD6DD10;
  if (!qword_27FD6DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD10);
  }

  return result;
}

uint64_t sub_25F409928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F4A25E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F4099E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F4A25E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F409A8C(uint64_t a1)
{
  sub_25F409C34(319, &qword_27FD6DD28, &type metadata for HostUpdateSeed, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25F409C34(319, &qword_27FD6DD30, &type metadata for HostUpdateGroupSeed, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25F409C34(319, &qword_27FD6DD38, &type metadata for ContentOverride, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25F4A25E0();
        if (v4 <= 0x3F)
        {
          sub_25F409C34(319, &qword_27FD6DD40, &type metadata for StaticLinkablePreviewProduct, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_25F409C84(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25F409C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25F409C84(uint64_t a1)
{
  if (!qword_27FD6DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC80, &unk_25F4AFB40);
    v1 = sub_25F4A3060();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD6DD48);
    }
  }
}

uint64_t sub_25F409CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F409D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F409D80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F409DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS11PreviewTypeO12HostLocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS11PreviewTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F409E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 4;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F409EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_25F409F10(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = a2 - 2147483644;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2 + 3;
  }

  return result;
}

uint64_t sub_25F409F54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F409FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_25F40A004(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for BinaryType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BinaryType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ShellUpdatePayload.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShellUpdatePayload.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F40A258()
{
  result = qword_27FD6DD50;
  if (!qword_27FD6DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD50);
  }

  return result;
}

unint64_t sub_25F40A2B0()
{
  result = qword_27FD6DD58;
  if (!qword_27FD6DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD58);
  }

  return result;
}

unint64_t sub_25F40A308()
{
  result = qword_27FD6DD60;
  if (!qword_27FD6DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD60);
  }

  return result;
}

unint64_t sub_25F40A360()
{
  result = qword_27FD6DD68;
  if (!qword_27FD6DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD68);
  }

  return result;
}

unint64_t sub_25F40A3B8()
{
  result = qword_27FD6DD70;
  if (!qword_27FD6DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD70);
  }

  return result;
}

unint64_t sub_25F40A410()
{
  result = qword_27FD6DD78;
  if (!qword_27FD6DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD78);
  }

  return result;
}

unint64_t sub_25F40A468()
{
  result = qword_27FD6DD80;
  if (!qword_27FD6DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD80);
  }

  return result;
}

unint64_t sub_25F40A4BC()
{
  result = qword_27FD6DD88;
  if (!qword_27FD6DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD88);
  }

  return result;
}

unint64_t sub_25F40A510()
{
  result = qword_27FD6DD90;
  if (!qword_27FD6DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD90);
  }

  return result;
}

unint64_t sub_25F40A564(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F40A5B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F40A5FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F40A648(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F40A694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DD98, &qword_25F4A7138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40A704(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F40A764(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_25F409680(a1, a2);
  }

  return a1;
}

uint64_t sub_25F40A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PipeEvent.Content(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F40A890(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v11 + v12;
  v14 = ((*(*(sub_25F4A25E0() - 8) + 64) + v10) & ~v10) + v12;
  if (!*(v9 + 84))
  {
    ++v14;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v16 = 253 - (2u >> (8 * v15));
  }

  else
  {
    v16 = 253;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 84);
  if (v19 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = *(v18 + 84);
  }

  v21 = *(v18 + 80);
  if (!a2)
  {
    return 0;
  }

  v22 = v15 + v21 + 1;
  if (a2 <= v20)
  {
    goto LABEL_36;
  }

  v23 = (v22 & ~v21) + *(*(AssociatedTypeWitness - 8) + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v20 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v27 < 2)
    {
LABEL_36:
      if (v16 >= v19)
      {
        v32 = *(a1 + v15);
        if (v16 <= (v32 ^ 0xFFu))
        {
          return 0;
        }

        else
        {
          return (256 - v32);
        }
      }

      else
      {
        v31 = *(v18 + 48);

        return v31((a1 + v22) & ~v21);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_36;
  }

LABEL_23:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = v23;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v20 + (v30 | v28) + 1;
}

void sub_25F40AC40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v12 + v13;
  v15 = ((*(*(sub_25F4A25E0() - 8) + 64) + v11) & ~v11) + v13;
  if (!*(v10 + 84))
  {
    ++v15;
  }

  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 3)
  {
    v17 = 253 - (2u >> (8 * v16));
  }

  else
  {
    v17 = 253;
  }

  v18 = *(swift_getAssociatedTypeWitness() - 8);
  v19 = *(v18 + 84);
  v20 = *(v18 + 80);
  if (v19 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = *(v18 + 84);
  }

  v22 = v16 + 1;
  v23 = v16 + 1 + v20;
  v24 = (v23 & ~v20) + *(v18 + 64);
  v25 = a3 - v21;
  if (a3 <= v21)
  {
    v26 = 0;
  }

  else
  {
    v26 = 1;
    if (v24 <= 3)
    {
      v27 = ((v25 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      v28 = HIWORD(v27);
      if (v27 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v27 >= 2)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v28)
      {
        v26 = 4;
      }

      else
      {
        v26 = v30;
      }
    }
  }

  if (v21 < a2)
  {
    v31 = ~v21 + a2;
    if (v24 < 4)
    {
      v32 = (v31 >> (8 * v24)) + 1;
      if (v24)
      {
        v33 = v31 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v33;
            if (v26 > 1)
            {
LABEL_55:
              if (v26 == 2)
              {
                *&a1[v24] = v32;
              }

              else
              {
                *&a1[v24] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v26 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v26 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v31;
      v32 = 1;
      if (v26 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v26)
    {
      a1[v24] = v32;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v24] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v26)
  {
    goto LABEL_39;
  }

  a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v17 >= v19)
  {
    if (v17 >= a2)
    {
      a1[v16] = -a2;
    }

    else
    {
      v35 = ~v17 + a2;
      if (v22 < 4)
      {
        if (v16 != -1)
        {
          v36 = v35 & ~(-1 << (8 * v22));
          bzero(a1, v16 + 1);
          if (v16 == 2)
          {
            *a1 = v36;
            a1[2] = BYTE2(v36);
          }

          else if (v16 == 1)
          {
            *a1 = v36;
          }

          else
          {
            *a1 = v35;
          }
        }
      }

      else
      {
        bzero(a1, v16 + 1);
        *a1 = v35;
      }
    }
  }

  else
  {
    v34 = *(v18 + 56);

    v34(&a1[v23] & ~v20, a2);
  }
}

void sub_25F40B118(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TransportReply(255);
  swift_getTupleTypeMetadata3();
  if (v1 <= 0x3F)
  {
    sub_25F40B858(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F40B244(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v11 + v12;
  v14 = ((*(*(sub_25F4A25E0() - 8) + 64) + v10) & ~v10) + v12;
  if (!*(v9 + 84))
  {
    ++v14;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = 253 - (2u >> (8 * v15));
  if (v15 > 3)
  {
    v16 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v17 = v15 + 1;
  v18 = 8 * (v15 + 1);
  if ((v15 + 1) <= 3)
  {
    v21 = ((~(-1 << v18) + a2 - v16) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 < 2)
    {
LABEL_30:
      v23 = *(a1 + v15);
      if (v16 <= (v23 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v23);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_19:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v16 + (v17 | v22) + 1;
}

void sub_25F40B514(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v13 + v14;
  v16 = ((*(*(sub_25F4A25E0() - 8) + 64) + v12) & ~v12) + v14;
  if (!*(v11 + 84))
  {
    ++v16;
  }

  if (v16 <= v15)
  {
    v16 = v15;
  }

  v17 = 253 - (2u >> (8 * v16));
  if (v16 > 3)
  {
    v17 = 253;
  }

  v18 = v16 + 1;
  if (v17 >= a3)
  {
    v19 = 0;
    if (v17 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v16] = -a2;
        return;
      }

      *&a1[v18] = 0;
    }

    else if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v19 = 1;
  if (v18 <= 3)
  {
    v20 = ((~(-1 << (8 * v18)) + a3 - v17) >> (8 * v18)) + 1;
    v21 = HIWORD(v20);
    if (v20 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v20 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v21)
    {
      v19 = 4;
    }

    else
    {
      v19 = v23;
    }
  }

  if (v17 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v24 = ~v17 + a2;
  if (v18 >= 4)
  {
    bzero(a1, v18);
    *a1 = v24;
    v25 = 1;
    if (v19 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v25 = (v24 >> (8 * v18)) + 1;
  if (v16 == -1)
  {
LABEL_39:
    if (v19 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v26 = v24 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_39;
  }

  if (v18 == 2)
  {
    *a1 = v26;
    if (v19 > 1)
    {
LABEL_43:
      if (v19 == 2)
      {
        *&a1[v18] = v25;
      }

      else
      {
        *&a1[v18] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v19 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v19)
  {
    a1[v18] = v25;
  }
}

void sub_25F40B858(uint64_t a1)
{
  if (!qword_27FD6DEA8)
  {
    sub_25F4A25E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DEB0, &qword_25F4AB200);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6DEA8);
    }
  }
}

unint64_t sub_25F40B8D8(uint64_t a1)
{
  v3 = sub_25F4A25E0();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v1, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v16 = v24;
    if (EnumCaseMultiPayload)
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      (*(v16 + 32))(v5, v12, v3);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_25F4A30F0();

      v25 = 0xD000000000000010;
      v26 = 0x800000025F4B72D0;
      sub_25F40CA7C();
      v21 = sub_25F4A3210();
      MEMORY[0x25F8DD480](v21);

      v15 = v25;
      (*(v16 + 8))(v5, v3);
      sub_25F3F21F4(&v12[v20], &qword_27FD6DEB0, &qword_25F4AB200);
    }

    else
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v17 = swift_getAssociatedTypeWitness();
      type metadata accessor for TransportReply(255);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v19 = *(TupleTypeMetadata3 + 64);
      (*(v7 + 32))(v10, &v12[*(TupleTypeMetadata3 + 48)], AssociatedTypeWitness);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_25F4A30F0();
      MEMORY[0x25F8DD480](0xD000000000000019, 0x800000025F4B72F0);
      sub_25F4A3240();
      MEMORY[0x25F8DD480](41, 0xE100000000000000);
      v15 = v25;
      (*(v7 + 8))(v10, AssociatedTypeWitness);
      sub_25F40C9BC(&v12[v19]);
      (*(*(v17 - 8) + 8))(v12, v17);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0x6F206D6165727473;
  }

  else
  {
    return 0xD000000000000012;
  }

  return v15;
}

uint64_t sub_25F40BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PipeEvent.Content(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = *(type metadata accessor for PipeEvent(0, a3, a4, v11) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);

  return v14(a5 + v12, a2, AssociatedTypeWitness);
}

uint64_t sub_25F40BE64(void *a1, uint64_t a2)
{
  v3 = v2;
  v92 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v69 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v79);
  v81 = (&v69 - v9);
  v10 = sub_25F4A2A70();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TransportReply(0);
  v75 = *(v84 - 8);
  v12 = MEMORY[0x28223BE20](v84);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  v14 = *(a2 - 8);
  a2 -= 8;
  v89 = v14;
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F4A2AE0();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v90 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 24);
  v73 = *(a2 + 32);
  v74 = v19;
  v21 = type metadata accessor for PipeEvent.Content(0, v19, v73, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  v31 = v3;
  v86 = *(v22 + 16);
  v86(&v69 - v29, v3, v21);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v32 = *(v22 + 8);
  result = v32(v30, v21);
  if (v3 != 4)
  {
    v85 = v25;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v34 = v31;
    (*(v89 + 16))(v16, v31, v91);
    v35 = v92;
    v36 = v92;
    v37 = sub_25F4A2AD0();
    v38 = sub_25F4A3010();

    v39 = v34;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v72 = v34;
      v41 = v40;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v93 = v71;
      *v41 = 136446466;
      v42 = v86;
      v86(v28, v16, v21);
      (*(v89 + 8))(v16, v91);
      LODWORD(v91) = v38;
      v43 = sub_25F40B8D8(v21);
      v45 = v44;
      v32(v28, v21);
      v46 = sub_25F41272C(v43, v45, &v93);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2114;
      v47 = v92;
      v48 = v92;
      v49 = v47;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v50;
      v51 = v70;
      *v70 = v50;
      _os_log_impl(&dword_25F3DE000, v37, v91, "Failed to deliver pipe event: %{public}s\nError: %{public}@", v41, 0x16u);
      sub_25F3F21F4(v51, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v51, -1, -1);
      v52 = v71;
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x25F8DE250](v52, -1, -1);
      v53 = v41;
      v39 = v72;
      MEMORY[0x25F8DE250](v53, -1, -1);

      (*(v87 + 8))(v90, v88);
    }

    else
    {
      v49 = v92;
      (*(v89 + 8))(v16, v91);

      (*(v87 + 8))(v90, v88);
      v42 = v86;
    }

    v42(v85, v39, v21);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 2) >= 3)
    {
      if (result)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0);
        v58 = v85;
        v64 = v77;
        sub_25F40C8DC(&v85[*(v63 + 48)], v77);
        v65 = v78;
        sub_25F40C94C(v64, v78);
        if ((*(v75 + 48))(v65, 1, v84) == 1)
        {
          sub_25F3F21F4(v64, &qword_27FD6DEB0, &qword_25F4AB200);
          sub_25F3F21F4(v65, &qword_27FD6DEB0, &qword_25F4AB200);
        }

        else
        {
          v66 = v80;
          sub_25F4A2A80();
          v67 = v81;
          *v81 = v49;
          swift_storeEnumTagMultiPayload();
          v68 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
          sub_25F4A2410();
          sub_25F3F21F4(v67, &qword_27FD6DEB8, &unk_25F4A8D20);
          (*(v82 + 8))(v66, v83);
          sub_25F3F21F4(v64, &qword_27FD6DEB0, &qword_25F4AB200);
          sub_25F40C9BC(v65);
        }

        AssociatedTypeWitness = sub_25F4A25E0();
      }

      else
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v55 = swift_getAssociatedTypeWitness();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v57 = *(TupleTypeMetadata3 + 48);
        v58 = v85;
        v59 = v76;
        sub_25F40CA18(&v85[*(TupleTypeMetadata3 + 64)], v76);
        v60 = v80;
        sub_25F4A2A80();
        v61 = v81;
        *v81 = v49;
        swift_storeEnumTagMultiPayload();
        v62 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
        sub_25F4A2410();
        sub_25F3F21F4(v61, &qword_27FD6DEB8, &unk_25F4A8D20);
        (*(v82 + 8))(v60, v83);
        sub_25F40C9BC(v59);
        (*(*(v55 - 8) + 8))(&v58[v57], v55);
      }

      return (*(*(AssociatedTypeWitness - 8) + 8))(v58, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_25F40C8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40C94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40C9BC(uint64_t a1)
{
  v2 = type metadata accessor for TransportReply(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F40CA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F40CA7C()
{
  result = qword_27FD6DED0;
  if (!qword_27FD6DED0)
  {
    sub_25F4A25E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DED0);
  }

  return result;
}

uint64_t static EndpointProtocol<>.decode(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  (*(v6 + 16))(v8, a1, v5);
  return sub_25F4A2950();
}

uint64_t static EndpointProtocol<>.decode(context:)(uint64_t a1, uint64_t a2)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v5 = a2;
  sub_25F40CCD4();
  swift_allocError();
  sub_25F4031EC(&v5, v3);
  return swift_willThrow();
}

unint64_t sub_25F40CCD4()
{
  result = qword_27FD6DED8;
  if (!qword_27FD6DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DED8);
  }

  return result;
}

uint64_t sub_25F40CD94()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x746E696F70646E45, 0xE900000000000020);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7310);
  return 0;
}

uint64_t sub_25F40CE68(uint64_t a1)
{
  v2 = sub_25F40CFD8();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F40CEB0(uint64_t a1)
{
  v2 = sub_25F40CFD8();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F40CEF4()
{
  result = qword_27FD6DEE0;
  if (!qword_27FD6DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEE0);
  }

  return result;
}

unint64_t sub_25F40CF4C()
{
  result = qword_27FD6DEE8;
  if (!qword_27FD6DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEE8);
  }

  return result;
}

unint64_t sub_25F40CFD8()
{
  result = qword_27FD6DEF0;
  if (!qword_27FD6DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEF0);
  }

  return result;
}

uint64_t sub_25F40D02C(uint64_t a1)
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7350);
  sub_25F4A3240();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B7370);
  return 0;
}

uint64_t sub_25F40D0DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F40D130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t sub_25F40D1B0()
{
  type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  sub_25F40D52C();
  return sub_25F4A2940();
}

uint64_t sub_25F40D1FC(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  (*(v3 + 16))(v5, a1, v2);
  sub_25F40D52C();
  return sub_25F4A2950();
}

uint64_t sub_25F40D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *&v8 = v5;
  sub_25F40CCD4();
  swift_allocError();
  sub_25F4031EC(&v8, v6);
  return swift_willThrow();
}

uint64_t sub_25F40D3F0(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25F40D4D8();
  return sub_25F4A2950();
}

unint64_t sub_25F40D4D8()
{
  result = qword_27FD6DEF8;
  if (!qword_27FD6DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEF8);
  }

  return result;
}

unint64_t sub_25F40D52C()
{
  result = qword_27FD6DF08;
  if (!qword_27FD6DF08)
  {
    type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DF08);
  }

  return result;
}

uint64_t sub_25F40D58C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F40D5FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25F40D73C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Transport.activate<A>(forReceivingMessages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TransportEvent(255, a3, a5, a4);
  v9 = sub_25F4A2F50();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  Transport.activate<A>(forReceivingEvents:)(v11, a2, a3, a4, a5);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  type metadata accessor for TransportMessage(0, a3, a5, v15);
  sub_25F4A2F20();

  return (*(v10 + 8))(v13, v9);
}

uint64_t Transport.transportSender<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a3;
  return MEMORY[0x2822009F8](sub_25F40DB5C, 0, 0);
}

uint64_t sub_25F40DB5C()
{
  v6 = v0[4];
  sub_25F4A3250();
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v5 = (*(v6 + 32) + **(v6 + 32));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25F40DC90;
  v2 = v0[4];
  v3 = v0[3];

  return v5(v3, v2);
}

uint64_t sub_25F40DC90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_25F40DE6C;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_25F40DDC4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F40DDC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v8 = *(v0 + 80);
  v4 = (*(*(v0 + 32) + 40))(*(v0 + 24));
  v3->i64[0] = v2;
  v3->i64[1] = v1;
  v3[1] = vextq_s8(v8, v8, 8uLL);
  v3[2].i64[0] = v4;
  v3[2].i64[1] = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25F40DE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TransportSenderProtocol<>.send(oneWay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a1;
  v65 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v56[-v9];
  v10 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56[-v17];
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_25F4A2AE0();
  v67 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2AC0();
  v25 = *(v19 + 16);
  v69 = v5;
  v72 = a2;
  v25(v21, v5, a2);
  v26 = *(v13 + 16);
  v63 = v18;
  v27 = v18;
  v28 = v64;
  v61 = v26;
  v26(v27);
  v66 = v24;
  v29 = sub_25F4A2AD0();
  v30 = sub_25F4A3000();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v70 = a3;
    v32 = v31;
    v59 = swift_slowAlloc();
    v73 = v59;
    *v32 = 136446466;
    v33 = *(v70 + 24);
    v58 = v29;
    v60 = v22;
    v34 = AssociatedTypeWitness;
    v35 = v28;
    v36 = v72;
    v37 = v33(v72, v70);
    v57 = v30;
    v39 = v38;
    v40 = v36;
    v28 = v35;
    AssociatedTypeWitness = v34;
    (*(v19 + 8))(v21, v40);
    v41 = sub_25F41272C(v37, v39, &v73);

    *(v32 + 4) = v41;
    *(v32 + 12) = 2082;
    v42 = v63;
    v61(v62, v63, AssociatedTypeWitness);
    v43 = sub_25F4A2C30();
    v45 = v44;
    (*(v13 + 8))(v42, AssociatedTypeWitness);
    v46 = sub_25F41272C(v43, v45, &v73);

    *(v32 + 14) = v46;
    v47 = v58;
    _os_log_impl(&dword_25F3DE000, v58, v57, "%{public}s sending one-way message: %{public}s", v32, 0x16u);
    v48 = v59;
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v48, -1, -1);
    v49 = v32;
    a3 = v70;
    MEMORY[0x25F8DE250](v49, -1, -1);

    (*(v67 + 8))(v66, v60);
  }

  else
  {

    (*(v13 + 8))(v63, AssociatedTypeWitness);
    (*(v19 + 8))(v21, v72);
    (*(v67 + 8))(v66, v22);
  }

  v50 = v72;
  v51 = (*(a3 + 32))(v72, a3);
  v52 = v71;
  (*(a3 + 40))(v28, AssociatedTypeWitness, v65, v50, a3);
  v53 = type metadata accessor for TransportReply(0);
  v54 = v68;
  (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
  v51(v52, v54);

  sub_25F3F21F4(v54, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v52, type metadata accessor for LazyPropertyList);
}

uint64_t TransportSenderProtocol<>.send(message:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v4 = type metadata accessor for TransportReply(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F4A2A70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v23 - v16);
  sub_25F4A2A80();
  v18 = sub_25F4A2F70();
  (*(v8 + 8))(v10, v7);
  *v17 = v18;
  sub_25F4A2A80();
  sub_25F404B8C(v17, v15, &qword_27FD6DF98, &unk_25F4A7580);

  TransportReply.init(callsite:fulfilling:)(v10, &v15[*(v12 + 56)], v6);
  TransportSenderProtocol<>.send(message:reply:)(v24, v6, v25, v26, v27);
  sub_25F412CE4(v6, type metadata accessor for TransportReply);
  sub_25F412D44(v17, v15);
  v19 = *v15;
  v20 = *(v12 + 56);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v21 - 8) + 8))(&v15[v20], v21);
  return v19;
}

uint64_t TransportSenderProtocol<>.send<A>(message:expecting:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v27 = a6;
  v28 = a1;
  v29 = a3;
  v30 = a5;
  v8 = type metadata accessor for TransportReply(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F4A2A70();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2FB0();
  v14 = sub_25F4A2F80();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v25 - v20);
  sub_25F4A2A80();
  v22 = sub_25F4A2F70();
  (*(v11 + 8))(v13, v26);
  *v21 = v22;
  sub_25F4A2A80();
  (*(v16 + 16))(v19, v21, TupleTypeMetadata2);

  TransportReply.init<A>(callsite:fulfilling:)(v13, &v19[*(TupleTypeMetadata2 + 48)], a4, v27, v10);
  TransportSenderProtocol<>.send(message:reply:)(v28, v10, v29, v30, v31);
  sub_25F412CE4(v10, type metadata accessor for TransportReply);
  (*(v16 + 32))(v19, v21, TupleTypeMetadata2);
  v23 = *v19;
  (*(*(v14 - 8) + 8))(&v19[*(TupleTypeMetadata2 + 48)], v14);
  return v23;
}

uint64_t TransportMessage<>.reply.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_25F40CA18(&v4[*(TupleTypeMetadata2 + 48)], a2);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);
  }

  else
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  return result;
}

uint64_t TransportMessage<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply(255);
    v7 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v4, AssociatedTypeWitness);
    return sub_25F412CE4(&v4[v7], type metadata accessor for TransportReply);
  }

  else
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  return result;
}

{
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v4, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_25F40EF30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TransportSender.transportDescription.getter()
{
  v0 = sub_25F412E28();

  return v0;
}

uint64_t TransportSender.messageRelay.getter()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t TransportSender.legacyMessageKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TransportSender.encode<A>(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_25F4A25E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 40))
  {
    MEMORY[0x28223BE20](v13);
    v16 = *(a2 + 24);
    *(&v20 - 8) = *(a2 + 16);
    *(&v20 - 7) = a3;
    *(&v20 - 6) = v16;
    *(&v20 - 5) = a4;
    *(&v20 - 4) = v18;
    *(&v20 - 3) = v17;
    *(&v20 - 2) = a1;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v12 + 32))(a5, v15, v11);
  type metadata accessor for LazyPropertyList(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F40F174()
{
  v0 = sub_25F412E28();

  return v0;
}

uint64_t sub_25F40F1AC()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t TransportSenderProtocol.encode<A>(message:)()
{
  sub_25F4A2940();
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportSenderProtocol<>.send(message:reply:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v67 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54[-v11];
  v13 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v69 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v54[-v20];
  v22 = *(a3 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_25F4A2AE0();
  v62 = *(v25 - 8);
  v63 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v54[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2AC0();
  v28 = *(v22 + 16);
  v66 = v6;
  v70 = a3;
  v29 = a3;
  v30 = AssociatedTypeWitness;
  v28(v24, v6, v29);
  v31 = *(v16 + 16);
  v65 = a1;
  v59 = v31;
  v31(v21, a1, AssociatedTypeWitness);
  v61 = v27;
  v32 = sub_25F4A2AD0();
  v33 = sub_25F4A3000();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v56 = v32;
    v35 = v34;
    v57 = swift_slowAlloc();
    v71 = v57;
    *v35 = 136446466;
    v36 = v70;
    v37 = *(v69 + 24);
    v55 = v33;
    v38 = v37(v70);
    v58 = v12;
    v40 = v39;
    (*(v22 + 8))(v24, v36);
    v41 = sub_25F41272C(v38, v40, &v71);
    v12 = v58;

    *(v35 + 4) = v41;
    *(v35 + 12) = 2082;
    v59(v60, v21, v30);
    v42 = sub_25F4A2C30();
    v44 = v43;
    (*(v16 + 8))(v21, v30);
    v45 = sub_25F41272C(v42, v44, &v71);

    *(v35 + 14) = v45;
    v46 = v56;
    _os_log_impl(&dword_25F3DE000, v56, v55, "%{public}s sending two-way message: %{public}s", v35, 0x16u);
    v47 = v57;
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v47, -1, -1);
    MEMORY[0x25F8DE250](v35, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v21, v30);
    (*(v22 + 8))(v24, v70);
  }

  (*(v62 + 8))(v61, v63);
  v48 = v69;
  v49 = v70;
  v50 = (*(v69 + 32))(v70, v69);
  v51 = v68;
  (*(v48 + 40))(v65, v30, v64, v49, v48);
  sub_25F412F00(v67, v12);
  v52 = type metadata accessor for TransportReply(0);
  (*(*(v52 - 8) + 56))(v12, 0, 1, v52);
  v50(v51, v12);

  sub_25F3F21F4(v12, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v51, type metadata accessor for LazyPropertyList);
}

uint64_t Transport.activate<A>(forReceivingEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TransportEvent(255, a3, a5, a4);
  v10 = sub_25F4A2ED0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = v5;
  swift_checkMetadataState();
  v13 = *MEMORY[0x277D85778];
  v14 = sub_25F4A2ED0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_25F4A2F60();
}

uint64_t sub_25F40F9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for TransportEvent(0, a2, a4, a3);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  (*(v12 + 16))(&v18 - v10, a1);
  v14 = type metadata accessor for TransportMessage(0, a2, a4, v13);
  v15 = *(v14 - 8);
  v16 = 1;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    (*(v15 + 32))(a5, v11, v14);
    v16 = 0;
  }

  return (*(v15 + 56))(a5, v16, 1, v14);
}

uint64_t sub_25F40FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a4;
  v79 = a6;
  v68 = a1;
  type metadata accessor for TransportEvent(255, a4, a6, a4);
  v10 = sub_25F4A2F00();
  v11 = *(v10 - 8);
  v77 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v80 = 0;
  v81 = 0xE000000000000000;
  v72 = a2;
  sub_25F4A3250();
  v64 = v80;
  v73 = v81;
  v82 = a3;
  v83 = a5;
  v14 = __swift_allocate_boxed_opaque_existential_1(&v80);
  v15 = *(a3 - 8);
  v61 = *(v15 + 16);
  v62 = (v15 + 16);
  v61(v14, a2, a3);
  v16 = *(v11 + 16);
  v69 = v11 + 16;
  v76 = v16;
  v16(v13, a1, v10);
  v67 = *(v11 + 80);
  v17 = (v67 + 48) & ~v67;
  v18 = swift_allocObject();
  v19 = v78;
  v20 = v79;
  *(v18 + 2) = a3;
  *(v18 + 3) = v19;
  *(v18 + 4) = a5;
  *(v18 + 5) = v20;
  v74 = *(v11 + 32);
  v75 = v11 + 32;
  v74(&v18[v17], v13, v10);
  v70 = static TransportInterface.makeOneWayMessageRelay(for:using:)(&v80, sub_25F414894, v18, v19, v20);
  v63 = v21;

  __swift_destroy_boxed_opaque_existential_1(&v80);
  v82 = a3;
  v83 = a5;
  v22 = a5;
  v60 = a5;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v80);
  v24 = a3;
  v71 = a3;
  v61(v23, v72, a3);
  v25 = v13;
  v65 = v13;
  v66 = v10;
  v26 = v13;
  v27 = v68;
  v76(v26, v68, v10);
  v28 = swift_allocObject();
  *(v28 + 2) = v24;
  v30 = v78;
  v29 = v79;
  *(v28 + 3) = v78;
  *(v28 + 4) = v22;
  *(v28 + 5) = v29;
  v74(&v28[v17], v25, v10);
  v31 = static TransportInterface.makeTwoWayMessageRelay(for:using:)(&v80, sub_25F414030, v28, v30, v29);
  v62 = v31;
  v33 = v32;

  __swift_destroy_boxed_opaque_existential_1(&v80);
  v34 = swift_allocObject();
  v35 = v73;
  v34[2] = v64;
  v34[3] = v35;
  v36 = v70;
  v37 = v63;
  v34[4] = v70;
  v34[5] = v37;
  v34[6] = v31;
  v34[7] = v33;
  v38 = v65;
  v39 = v27;
  v40 = v66;
  v76(v65, v39, v66);
  v59 = v17;
  v41 = swift_allocObject();
  v42 = v78;
  *(v41 + 2) = v71;
  *(v41 + 3) = v42;
  v43 = v60;
  v44 = v79;
  *(v41 + 4) = v60;
  *(v41 + 5) = v44;
  v74(&v41[v17], v38, v40);
  v45 = v43;
  v46 = *(v43 + 24);

  v47 = v36;
  v48 = v37;
  sub_25F41401C(v47, v37);
  v49 = v62;
  sub_25F41401C(v62, v33);
  v50 = v71;
  v46(sub_25F414148, v34, sub_25F41416C, v41, v71, v45);

  v52 = v65;
  v51 = v66;
  v76(v65, v68, v66);
  v53 = v59;
  v54 = swift_allocObject();
  v56 = v78;
  v55 = v79;
  *(v54 + 2) = v50;
  *(v54 + 3) = v56;
  *(v54 + 4) = v45;
  *(v54 + 5) = v55;
  v74(&v54[v53], v52, v51);
  sub_25F4A2930();

  sub_25F41305C(v70, v48);
  sub_25F41305C(v49, v33);
}

uint64_t (*static TransportInterface.makeOneWayMessageRelay(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  sub_25F412F74(a1, v13);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v5;
  sub_25F412FDC(v13, (v11 + 7));

  return sub_25F412FF4;
}

uint64_t sub_25F410168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v9 = type metadata accessor for TransportMessage(0, a4, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = a4;
  v31 = &v28 - v11;
  v32 = a6;
  v13 = type metadata accessor for TransportEvent(0, a4, a6, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = sub_25F4A2EC0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = *(v10 + 16);
  v29 = a1;
  v21 = a1;
  v22 = v20;
  v20(v15, v21, v9);
  (*(v10 + 56))(v15, 0, 1, v9);
  sub_25F4A2F00();
  sub_25F4A2EE0();
  LODWORD(v15) = (*(v17 + 88))(v19, v16);
  v23 = *MEMORY[0x277D85748];
  result = (*(v17 + 8))(v19, v16);
  if (v15 == v23)
  {
    v25 = v31;
    v22(v31, v29, v9);
    type metadata accessor for TransportInvalidated(0, v30, v32, v26);
    swift_getWitnessTable();
    swift_allocError();
    (*(v10 + 32))(v27, v25, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t (*static TransportInterface.makeTwoWayMessageRelay(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2)
{
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  sub_25F412F74(a1, v13);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v5;
  sub_25F412FDC(v13, (v11 + 7));

  return sub_25F413048;
}

uint64_t sub_25F410554(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TransportReply(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F404B8C(a2, v10, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25F3F21F4(v10, &qword_27FD6DEB0, &qword_25F4AB200);
    v15 = v2[2];
    if (v15)
    {
      v16 = v2[3];

      v15(a1);
      return sub_25F41305C(v15, v16);
    }

    else
    {
      (*(v12 + 56))(v8, 1, 1, v11);
      sub_25F4139AC(0xD000000000000010, 0x800000025F4B7450, v8, *v2, v2[1]);
      return sub_25F3F21F4(v8, &qword_27FD6DEB0, &qword_25F4AB200);
    }
  }

  else
  {
    sub_25F40CA18(v10, v14);
    v18 = v2[4];
    if (v18)
    {
      v19 = v2[5];

      v18(a1, v14);
      sub_25F41305C(v18, v19);
    }

    else
    {
      sub_25F412F00(v14, v8);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_25F4139AC(0xD000000000000010, 0x800000025F4B7470, v8, *v2, v2[1]);
      sub_25F3F21F4(v8, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    return sub_25F412CE4(v14, type metadata accessor for TransportReply);
  }
}

uint64_t TransportReceiverProtocol.handleMessage@Sendable (_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TransportReply(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F404B8C(a2, v11, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25F3F21F4(v11, &qword_27FD6DEB0, &qword_25F4AB200);
    v16 = v28;
    v17 = (*(a4 + 16))(v28, a4);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v17(v27);
      return sub_25F41305C(v19, v20);
    }

    else
    {
      (*(v13 + 56))(v9, 1, 1, v12);
      TransportReceiverProtocol.informNotHandled(_:reply:)(0xD000000000000010, 0x800000025F4B7450, v9, v16, a4);
      return sub_25F3F21F4(v9, &qword_27FD6DEB0, &qword_25F4AB200);
    }
  }

  else
  {
    sub_25F40CA18(v11, v15);
    v22 = v28;
    v23 = (*(a4 + 24))(v28, a4);
    if (v23)
    {
      v25 = v23;
      v26 = v24;
      v23(v27, v15);
      sub_25F41305C(v25, v26);
    }

    else
    {
      sub_25F412F00(v15, v9);
      (*(v13 + 56))(v9, 0, 1, v12);
      TransportReceiverProtocol.informNotHandled(_:reply:)(0xD000000000000010, 0x800000025F4B7470, v9, v22, a4);
      sub_25F3F21F4(v9, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    return sub_25F412CE4(v15, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F410B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TransportEvent(0, a3, a5, a4);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = sub_25F4A2EC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  v15 = type metadata accessor for TransportMessage(0, a3, a5, v14);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_25F4A2F00();
  sub_25F4A2EE0();
  return (*(v11 + 8))(v13, v10);
}

uint64_t Transport.activate(interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F4A3250();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v9 = *(a4 + 24);

  v9(sub_25F414890, v8, a1, a2, a3, a4);
}

uint64_t TransportReceiverProtocol.informNotHandled(_:reply:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a3;
  v49 = a1;
  v50 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v45);
  v47 = (&v43 - v7);
  v48 = sub_25F4A2A70();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v43 - v10;
  v11 = sub_25F4A2AE0();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F4A2610();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_25F4A30F0();
  v21 = (*(a5 + 8))(a4, a5);
  v23 = v22;

  v55 = v21;
  v56 = v23;
  MEMORY[0x25F8DD480](0xD000000000000011, 0x800000025F4B7490);
  MEMORY[0x25F8DD480](v49, v50);
  sub_25F4A2620();
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
  v24 = *(v15 + 16);
  v50 = v20;
  v24(v18, v20, v14);
  v25 = sub_25F4A2AD0();
  v26 = sub_25F4A3010();
  v27 = os_log_type_enabled(v25, v26);
  v43 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v49 = v15;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    sub_25F4131BC(&qword_27FD6DFA8, MEMORY[0x277D40478]);
    swift_allocError();
    v24(v31, v18, v14);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    v33 = *(v49 + 8);
    v33(v18, v14);
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_25F3DE000, v25, v26, "%{public}@", v29, 0xCu);
    sub_25F3F21F4(v30, &qword_27FD6DEC8, &qword_25F4AB2B0);
    MEMORY[0x25F8DE250](v30, -1, -1);
    MEMORY[0x25F8DE250](v29, -1, -1);
  }

  else
  {

    v33 = *(v15 + 8);
    v33(v18, v14);
  }

  (*(v51 + 8))(v13, v52);
  v34 = v54;
  sub_25F404B8C(v53, v54, &qword_27FD6DEB0, &qword_25F4AB200);
  v35 = type metadata accessor for TransportReply(0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
    v33(v50, v14);
    return sub_25F3F21F4(v34, &qword_27FD6DEB0, &qword_25F4AB200);
  }

  else
  {
    sub_25F4131BC(&qword_27FD6DFA8, MEMORY[0x277D40478]);
    v37 = swift_allocError();
    v38 = v50;
    v43(v39, v50, v14);
    v40 = v44;
    sub_25F4A2A80();
    v41 = v47;
    *v47 = v37;
    swift_storeEnumTagMultiPayload();
    v42 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v41, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v46 + 8))(v40, v48);
    v33(v38, v14);

    return sub_25F412CE4(v34, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F411484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = MEMORY[0x277D405A0];
  v9[0] = a1;
  v9[1] = a2;
  sub_25F4A2530();
  v7 = sub_25F4A25E0();
  (*(*(v7 - 8) + 8))(a3, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t static TransportInterface.unarchive<A>(_:for:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31[1] = a5;
  v36 = sub_25F4A25E0();
  v32 = *(v36 - 8);
  v10 = MEMORY[0x28223BE20](v36);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = swift_conformsToProtocol2();
  if (v18 && a3)
  {
    v31[0] = v18;
    result = LazyPropertyList.propertyList.getter(v17);
    if (!v5)
    {
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v22 = (*(v21 + 40))(v20, v21);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = v32;
        v27 = v36;
        (*(v32 + 16))(v15, v17, v36);
        MetatypeMetadata = a3;
        v35 = v31[0];
        __swift_allocate_boxed_opaque_existential_1(&v33);
        sub_25F411484(v24, v25, v15);
        (*(v26 + 8))(v17, v27);
      }

      else
      {
        v29 = v32;
        v30 = v36;
        (*(v32 + 16))(v12, v17, v36);
        MetatypeMetadata = a3;
        v35 = v31[0];
        __swift_allocate_boxed_opaque_existential_1(&v33);
        sub_25F4A2950();
        (*(v29 + 8))(v17, v30);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFB8, &qword_25F4A75A0);
      return swift_dynamicCast();
    }
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v33 = a3;
    sub_25F413070();
    swift_allocError();
    *v28 = a2;
    *(v28 + 8) = a4;
    sub_25F4031EC(&v33, (v28 + 16));
    return swift_willThrow();
  }

  return result;
}

uint64_t static TransportInterface.invalidatedError.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_25F4A2610();
  a1[4] = sub_25F4131BC(qword_27FD6DFC0, MEMORY[0x277D40470]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_25F4A2620();
}

uint64_t sub_25F4118D4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a2;
  v19 = sub_25F4A2AE0();
  MEMORY[0x28223BE20](v19);
  v11 = type metadata accessor for TransportMessage(0, a6, a7, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static TransportInterface.unarchive<A>(_:for:)(a5, a6, AssociatedTypeWitness, a7, v14);
  swift_storeEnumTagMultiPayload();
  v18(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_25F411BD0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a3;
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v27);
  v11 = sub_25F4A2A70();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v26 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F4A2AE0();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for TransportMessage(0, a7, a8, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static TransportInterface.unarchive<A>(_:for:)(a6, a7, AssociatedTypeWitness, a8, v18);
  type metadata accessor for TransportReply(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F412F00(v30, &v18[*(TupleTypeMetadata2 + 48)]);
  swift_storeEnumTagMultiPayload();
  v23(v18);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_25F412060()
{
  sub_25F4A30F0();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD00000000000007DLL, 0x800000025F4B7520);
  return 0;
}

uint64_t sub_25F4120F0()
{
  strcpy(v2, "Interface = ");
  v0 = sub_25F4A33B0();
  MEMORY[0x25F8DD480](v0);

  return v2[0];
}

uint64_t sub_25F412158(uint64_t a1)
{
  v2 = sub_25F413958();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F412194(uint64_t a1)
{
  v2 = sub_25F413958();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F4121D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v21 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v13 = type metadata accessor for TransportMessage(0, v3, v2, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for TransportReply(255);
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v5 + 32))(v7, v15, AssociatedTypeWitness);
    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x25F8DD480](0x7961772D6F777428, 0xEA00000000002029);
    sub_25F4A3240();
    v19 = v21;
    v18 = v22;
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    sub_25F412CE4(&v15[v17], type metadata accessor for TransportReply);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x25F8DD480](0x7961772D656E6F28, 0xEA00000000002029);
    sub_25F4A3240();
    v19 = v21;
    v18 = v22;
    (*(v9 + 8))(v11, v8);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000050, 0x800000025F4B75D0);
  MEMORY[0x25F8DD480](v19, v18);

  return v21;
}

uint64_t sub_25F412554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F4125A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t sub_25F4125FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F412648(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_25F4126D0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25F41272C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25F41272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F4127F8(v11, 0, 0, 1, a1, a2);
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
    sub_25F4031FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25F4127F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F412904(a5, a6);
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
    result = sub_25F4A3130();
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

void *sub_25F412904(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F412950(a1, a2);
  sub_25F412A80(&unk_2871749F0);
  return v3;
}

void *sub_25F412950(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F412B6C(v5, 0);
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

  result = sub_25F4A3130();
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
        v10 = sub_25F4A2C80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F412B6C(v10, 0);
        result = sub_25F4A30E0();
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

uint64_t sub_25F412A80(uint64_t result)
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

  result = sub_25F412BE0(result, v11, 1, v3);
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

void *sub_25F412B6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E160, &qword_25F4A78E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F412BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E160, &qword_25F4A78E8);
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

_BYTE **sub_25F412CD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F412CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F412D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F412DB4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25F412E38(void *a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[7];
  v6 = v2[8];
  *a1 = v2[6];
  a1[1] = v5;
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, v6, v4);
  (*(v7 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25F412F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F412F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F412FDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_4Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25F41305C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25F413070()
{
  result = qword_27FD6DFB0;
  if (!qword_27FD6DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DFB0);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8DE250);
  }

  return result;
}

uint64_t sub_25F4131BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25F4A2610();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F413208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TransportMessage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_25F413264(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v8 = ((v6 + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) > 3)
  {
    goto LABEL_7;
  }

  v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
  if (HIWORD(v14))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_26:
    v16 = *(a1 + v9);
    if (v16 >= 2)
    {
      v17 = (v16 ^ 0xFF) + 1;
    }

    else
    {
      v17 = 0;
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFF)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (v14 < 2)
  {
    goto LABEL_26;
  }

LABEL_7:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 254;
}

void sub_25F41346C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = ((v8 + *(v9 + 80)) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F4136E8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply(255);
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F4137C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F4138AC()
{
  result = qword_27FD6E148;
  if (!qword_27FD6E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E148);
  }

  return result;
}

unint64_t sub_25F413904()
{
  result = qword_27FD6E150;
  if (!qword_27FD6E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E150);
  }

  return result;
}

unint64_t sub_25F413958()
{
  result = qword_27FD6E158;
  if (!qword_27FD6E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E158);
  }

  return result;
}

uint64_t sub_25F4139AC(char *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v54 = a2;
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v49);
  v8 = (&v43 - v7);
  v47 = sub_25F4A2A70();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_25F4A2AE0();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F4A2610();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_25F4A30F0();

  v55 = a4;
  v56 = a5;

  MEMORY[0x25F8DD480](0xD000000000000011, 0x800000025F4B7490);
  v23 = v15;
  MEMORY[0x25F8DD480](v50, v54);
  sub_25F4A2620();
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
  v24 = *(v17 + 16);
  v54 = v22;
  v24(v20, v22, v16);
  v50 = v23;
  v25 = sub_25F4A2AD0();
  v26 = sub_25F4A3010();
  v27 = os_log_type_enabled(v25, v26);
  v44 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v46 = v17;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    sub_25F4131BC(&qword_27FD6DFA8, MEMORY[0x277D40478]);
    swift_allocError();
    v43 = v12;
    v24(v31, v20, v16);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    v33 = *(v46 + 8);
    v33(v20, v16);
    *(v29 + 4) = v32;
    *v30 = v32;
    v12 = v43;
    _os_log_impl(&dword_25F3DE000, v25, v26, "%{public}@", v29, 0xCu);
    sub_25F3F21F4(v30, &qword_27FD6DEC8, &qword_25F4AB2B0);
    MEMORY[0x25F8DE250](v30, -1, -1);
    MEMORY[0x25F8DE250](v29, -1, -1);
  }

  else
  {

    v33 = *(v17 + 8);
    v33(v20, v16);
  }

  v34 = v16;
  (*(v51 + 8))(v50, v52);
  sub_25F404B8C(v53, v12, &qword_27FD6DEB0, &qword_25F4AB200);
  v35 = type metadata accessor for TransportReply(0);
  if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
  {
    v33(v54, v16);
    return sub_25F3F21F4(v12, &qword_27FD6DEB0, &qword_25F4AB200);
  }

  else
  {
    sub_25F4131BC(&qword_27FD6DFA8, MEMORY[0x277D40478]);
    v37 = swift_allocError();
    v38 = v54;
    v44(v39, v54, v34);
    v40 = v34;
    v41 = v48;
    sub_25F4A2A80();
    *v8 = v37;
    swift_storeEnumTagMultiPayload();
    v42 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v8, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v45 + 8))(v41, v47);
    v33(v38, v40);

    return sub_25F412CE4(v12, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F41401C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F414048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  type metadata accessor for TransportEvent(255, v7, v9, a4);
  v10 = *(sub_25F4A2F00() - 8);
  return sub_25F410168(a1, v4 + ((*(v10 + 80) + 48) & ~*(v10 + 80)), v6, v7, v8, v9);
}

uint64_t objectdestroy_10Tm()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F41416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  type metadata accessor for TransportEvent(255, v6, v8, a4);
  v9 = *(sub_25F4A2F00() - 8);
  v10 = v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_25F410B5C(v10, v5, v6, v7, v8);
}

uint64_t objectdestroy_31Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TransportEvent(255, *(v4 + 24), *(v4 + 40), a4);
  v5 = sub_25F4A2F00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25F4142AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TransportEvent(255, *(v4 + 24), *(v4 + 40), a4);
  sub_25F4A2F00();
  return sub_25F4A2EF0();
}

uint64_t sub_25F414334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TransportMessage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F4143A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v8 = ((v6 + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_25F4145A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = ((v8 + *(v9 + 80)) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *sub_25F4148B8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25F4148C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25F4148E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F415184();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t ContentCategory.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F4149D8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F414B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F415130();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F414C0C()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F414C58(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F414CA0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F414CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4150DC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

unint64_t sub_25F414D98()
{
  result = qword_27FD6E1E8;
  if (!qword_27FD6E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1E8);
  }

  return result;
}

unint64_t sub_25F414DFC()
{
  result = qword_27FD6E1F0;
  if (!qword_27FD6E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1F0);
  }

  return result;
}

unint64_t sub_25F414E54()
{
  result = qword_27FD6E1F8;
  if (!qword_27FD6E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1F8);
  }

  return result;
}

unint64_t sub_25F414EC4()
{
  result = qword_27FD6E200;
  if (!qword_27FD6E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E200);
  }

  return result;
}

unint64_t sub_25F414F1C()
{
  result = qword_27FD6E208;
  if (!qword_27FD6E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E208);
  }

  return result;
}

unint64_t sub_25F414F74()
{
  result = qword_27FD6E210;
  if (!qword_27FD6E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E210);
  }

  return result;
}

unint64_t sub_25F414FCC()
{
  result = qword_27FD6E218;
  if (!qword_27FD6E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E218);
  }

  return result;
}

uint64_t sub_25F415048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F415090(uint64_t result, int a2, int a3)
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

unint64_t sub_25F4150DC()
{
  result = qword_27FD6E220;
  if (!qword_27FD6E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E220);
  }

  return result;
}

unint64_t sub_25F415130()
{
  result = qword_27FD6E228;
  if (!qword_27FD6E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E228);
  }

  return result;
}

unint64_t sub_25F415184()
{
  result = qword_27FD6E230;
  if (!qword_27FD6E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E230);
  }

  return result;
}

uint64_t sub_25F415220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736172437478656ELL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = 0x800000025F4B5EE0;
  }

  else
  {
    v4 = 0xEF74726F70655268;
  }

  if (*a2)
  {
    v5 = 0x736172437478656ELL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = 0xEF74726F70655268;
  }

  else
  {
    v6 = 0x800000025F4B5EE0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F4152D8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F41536C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4153EC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F415488(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B5EE0;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x736172437478656ELL;
    v2 = 0xEF74726F70655268;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4154D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F41B898();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t CrashListenerInterface.TwoWayMessage.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_25F4156C4();
  sub_25F415718();
  result = sub_25F4A25C0();
  if (v4 != 0xFF)
  {
    v7[5] = v1;
    v7[6] = v2;
    v7[7] = v4 & 1;
    v7[8] = v3;
    v7[3] = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
    v7[4] = v5;
    LOBYTE(v7[0]) = 1;
    sub_25F41576C(v1, v2, v4 & 1);
    sub_25F41577C();
    sub_25F4A2520();
    sub_25F4157D0(v1, v2, v4 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

_BYTE *sub_25F4156A8(_BYTE *result, BOOL *a2)
{
  v3 = ~*(v2 + 32);
  *result = 0;
  *a2 = v3 != 0;
  return result;
}

unint64_t sub_25F4156C4()
{
  result = qword_27FD6E238;
  if (!qword_27FD6E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E238);
  }

  return result;
}

unint64_t sub_25F415718()
{
  result = qword_27FD6E240;
  if (!qword_27FD6E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E240);
  }

  return result;
}

uint64_t sub_25F41576C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_25F41577C()
{
  result = qword_27FD6E248;
  if (!qword_27FD6E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E248);
  }

  return result;
}

uint64_t sub_25F4157D0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25F4157E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25F4157E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CrashListenerInterface.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
  v5 = sub_25F4156C4();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F415718();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v13)
    {
      v17 = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 1;
      sub_25F41577C();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = v13;
      v10 = v14;
      v11 = v15;
    }

    else
    {
      v12 = sub_25F4A25E0();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      v11 = 0;
      v9 = 0uLL;
      v10 = 255;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t NextCrashRequest.process.getter()
{
  v1 = *v0;
  sub_25F41576C(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t NextCrashRequest.init(process:timeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = a5;
  return result;
}

uint64_t sub_25F415A24(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x74756F656D6974;
  }

  else
  {
    v2 = 0x737365636F7270;
  }

  if (*a2)
  {
    v3 = 0x74756F656D6974;
  }

  else
  {
    v3 = 0x737365636F7270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F415AAC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F415B24(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F415B80(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F415C00(uint64_t *a1@<X8>)
{
  v2 = 0x737365636F7270;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_25F415C38()
{
  if (*v0)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x737365636F7270;
  }
}

uint64_t sub_25F415CBC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_25F415F10();
  sub_25F415F64();
  return sub_25F4A28D0();
}

uint64_t NextCrashRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for NextCrashRequest.Key;
  v5 = sub_25F415F10();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F415F64();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = v16;
    v8 = v17;
    v19 = v18;
    v14 = &type metadata for NextCrashRequest.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = v16;
    v12 = v19;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
  }

  return result;
}

unint64_t sub_25F415F10()
{
  result = qword_27FD6E250;
  if (!qword_27FD6E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E250);
  }

  return result;
}

unint64_t sub_25F415F64()
{
  result = qword_27FD6E258;
  if (!qword_27FD6E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E258);
  }

  return result;
}

uint64_t NextCrashResponse.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A23A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NextCrashResponse.init(crashReport:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25F4160F4()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F416170(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4161C8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25F4A3170();

  *a2 = v3 != 0;
  return result;
}

uint64_t NextCrashResponse.propertyListValue.getter()
{
  sub_25F4A23A0();
  sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0], &protocol conformance descriptor for CrashReport);
  return sub_25F4A25C0();
}

unint64_t sub_25F416314()
{
  result = qword_27FD6E260;
  if (!qword_27FD6E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E260);
  }

  return result;
}

uint64_t NextCrashResponse.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for NextCrashResponse.Key;
  v12[4] = sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0], &protocol conformance descriptor for CrashReport);
  sub_25F4A2530();
  v9 = sub_25F4A25E0();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t sub_25F416528()
{
  sub_25F4A23A0();
  sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0], &protocol conformance descriptor for CrashReport);
  return sub_25F4A25C0();
}

uint64_t sub_25F4165D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for NextCrashResponse.Key;
  v12[4] = sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0], &protocol conformance descriptor for CrashReport);
  sub_25F4A2530();
  v9 = sub_25F4A25E0();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t ProcessIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_25F4A30F0();

    strcpy(v7, "process name: ");
    HIBYTE(v7[1]) = -18;
    MEMORY[0x25F8DD480](a1, a2);
  }

  else
  {
    v7[0] = 0x203A646970;
    v7[1] = 0xE500000000000000;
    v5 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v5);
  }

  return v7[0];
}

uint64_t ProcessIdentifier.name.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t static ProcessIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_25F4A3270();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a6 & 1) == 0 && a1 == a4;
  }
}

uint64_t ProcessIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x25F8DDB20](1);

    return sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0, a2, a3);
    return sub_25F4A3330();
  }
}

uint64_t ProcessIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_25F4A3300();
  if (a3)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416A00()
{
  v1 = *(v0 + 16);
  sub_25F4A3300();
  if (v1)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416A84(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x25F8DDB20](1);

    return sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    return sub_25F4A3330();
  }
}

uint64_t sub_25F416B08(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25F4A3300();
  if (v2)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416B94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (a2[2])
    {
      v5 = a1[1];
      if (v3 == v4 && v5 == a2[1])
      {
        return 1;
      }

      else
      {
        return sub_25F4A3270();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[2] & 1) == 0 && v3 == v4;
  }
}

uint64_t sub_25F416BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4E737365636F7270;
  }

  else
  {
    v3 = 6580592;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEB00000000656D61;
  }

  if (*a2)
  {
    v5 = 0x4E737365636F7270;
  }

  else
  {
    v5 = 6580592;
  }

  if (*a2)
  {
    v6 = 0xEB00000000656D61;
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
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F416C9C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F416D20(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F416D90(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F416E1C(uint64_t *a1@<X8>)
{
  v2 = 6580592;
  if (*v1)
  {
    v2 = 0x4E737365636F7270;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000656D61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F416E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F41B8EC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F416F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F416FD8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F417064(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4170E0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F417174(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4171BC()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ProcessIdentifier.init(propertyListValue:)(uint64_t a1)
{
  result = sub_25F41A5A4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t ProcessIdentifier.propertyListValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_25F41A788();
  sub_25F41A7DC();
  sub_25F4A25C0();
  if (a3)
  {
    v9 = a1;
    v10 = a2;
  }

  else
  {
    LODWORD(v9) = a1;
    BYTE4(v9) = 0;
  }

  v8[3] = &type metadata for ProcessIdentifier.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_25F417320(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736567616D69;
    v6 = 0x73656D617266;
    if (a1 != 8)
    {
      v6 = 0x50656C6946676F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6910817;
    if (a1 != 5)
    {
      v7 = 0x74616E696D726574;
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
    v1 = 25705;
    v2 = 0x65707954677562;
    v3 = 6580592;
    if (a1 != 3)
    {
      v3 = 1701669236;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
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

uint64_t sub_25F417448@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25F41A5A4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_25F41747C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F417320(*a1);
  v5 = v4;
  if (v3 == sub_25F417320(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F417504()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F417320(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F417568(uint64_t a1)
{
  sub_25F417320(*v1);
  sub_25F4A2C60();
}

uint64_t sub_25F4175BC(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  sub_25F417320(v2);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F41761C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F41B940(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F41764C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F417320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CrashReport.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E280, &qword_25F4A7F90);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = v29 - v5;
  v6 = sub_25F4A2070();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E288, &qword_25F4A7F98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v29 - v10;
  v12 = sub_25F4A2220();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &_s3KeyON_2;
  v16 = sub_25F41A830();
  v44 = v16;
  LOBYTE(v42[0]) = 0;
  sub_25F41AB00(&qword_27FD6E298, MEMORY[0x277D403D8], &protocol conformance descriptor for CrashReport.ID);
  sub_25F4A2580();
  if (v2)
  {
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v31 = v6;
    v19 = a1;
    v36 = v15;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v20 = v13;
    v21 = *(v13 + 48);
    v22 = v21(v11, 1, v12);
    v32 = v12;
    if (v22 == 1)
    {
      sub_25F4A2210();
      if (v21(v11, 1, v12) != 1)
      {
        sub_25F3F21F4(v11, &qword_27FD6E288, &qword_25F4A7F98);
      }
    }

    else
    {
      (*(v20 + 32))(v36, v11, v12);
    }

    v43 = &_s3KeyON_2;
    v44 = v16;
    LOBYTE(v42[0]) = 1;
    v23 = v19;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = v40;
    v25 = v41;
    v43 = &_s3KeyON_2;
    v44 = v16;
    LOBYTE(v42[0]) = 2;
    sub_25F4A2530();
    v29[5] = v8;
    v29[4] = v24;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v26 = v39;
    v43 = &_s3KeyON_2;
    v44 = v16;
    v30 = v16;
    LOBYTE(v42[0]) = 3;
    sub_25F4A2530();
    v29[3] = v26;
    __swift_destroy_boxed_opaque_existential_1(v42);
    LODWORD(v26) = v46;
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 4;
    sub_25F4A2530();
    v45 = v26;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
    sub_25F41A884();
    sub_25F4A2580();
    v29[2] = v25;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v27 = v38;
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 6;
    sub_25F4A21D0();
    sub_25F41AB00(&qword_27FD6E2B0, MEMORY[0x277D403D0], &protocol conformance descriptor for CrashReport.Termination);
    sub_25F4A2580();
    v29[1] = v27;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
    sub_25F41A998();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v42);
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
    sub_25F41AA4C();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v42);
    v29[0] = v37;
    v43 = &_s3KeyON_2;
    v44 = v30;
    LOBYTE(v42[0]) = 9;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_25F4A2240();
    v28 = sub_25F4A25E0();
    return (*(*(v28 - 8) + 8))(v23, v28);
  }
}

uint64_t sub_25F418168()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E378, &qword_25F4A8CC8);
  MEMORY[0x28223BE20](v0 - 8);
  v57 = &v45[-v1];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E288, &qword_25F4A7F98);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v45[-v3];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E380, &qword_25F4A8CD0) - 8;
  v4 = MEMORY[0x28223BE20](v56);
  v51 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v45[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E388, &qword_25F4A8CD8);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v45[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E390, &unk_25F4A8CE0);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v45[-v19];
  v45[-v19] = 0;
  v55 = &v45[-v19];
  sub_25F4A2250();
  v48 = sub_25F4A2280();
  v22 = v21;
  v53 = v21;
  v47 = sub_25F4A2390();
  v24 = v23;
  v52 = v23;
  v46 = sub_25F4A2270();
  *v13 = 4;
  v54 = v13;
  sub_25F4A2290();
  v62 = sub_25F4A2260();
  v63 = v7;
  *v7 = 6;
  sub_25F4A21F0();
  v61 = sub_25F4A2380();
  v60 = sub_25F4A2370();
  v49 = sub_25F4A21E0();
  v59 = v25;
  sub_25F404B8C(v20, v18, &qword_27FD6E390, &unk_25F4A8CE0);
  v26 = *v18;
  v27 = *(v15 + 56);
  v28 = sub_25F4A2220();
  v29 = *(v28 - 8);
  v30 = v58;
  (*(v29 + 32))(v58, &v18[v27], v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  v84 = v26;
  v83 = 1;
  v81 = v48;
  v82 = v22;
  v80 = 2;
  v78 = v47;
  v79 = v24;
  v77 = 3;
  v75 = v46;
  v76 = 0;
  v31 = v50;
  sub_25F404B8C(v13, v50, &qword_27FD6E388, &qword_25F4A8CD8);
  v32 = *v31;
  v33 = *(v9 + 56);
  v34 = sub_25F4A2070();
  v35 = *(v34 - 8);
  v36 = &v31[v33];
  v37 = v57;
  (*(v35 + 32))(v57, v36, v34);
  (*(v35 + 56))(v37, 0, 1, v34);
  v74 = v32;
  v73 = 5;
  v72 = v62;
  v38 = v51;
  sub_25F404B8C(v63, v51, &qword_27FD6E380, &qword_25F4A8CD0);
  v39 = *v38;
  v56 = &v38[*(v56 + 56)];
  v71 = v39;
  v70 = 7;
  v69 = v61;
  v68 = 8;
  v67 = v60;
  v66 = 9;
  v64 = v49;
  v65 = v59;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
  sub_25F4A21D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
  sub_25F41A830();
  sub_25F41AB00(&qword_27FD6E298, MEMORY[0x277D403D8], &protocol conformance descriptor for CrashReport.ID);
  sub_25F41A884();
  sub_25F41AB00(&qword_27FD6E2B0, MEMORY[0x277D403D0], &protocol conformance descriptor for CrashReport.Termination);
  sub_25F41A998();
  sub_25F41AA4C();
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v43 = sub_25F4A2850();

  sub_25F3F21F4(v41, &qword_27FD6E378, &qword_25F4A8CC8);

  sub_25F3F21F4(v42, &qword_27FD6E288, &qword_25F4A7F98);
  sub_25F3F21F4(v63, &qword_27FD6E380, &qword_25F4A8CD0);
  sub_25F3F21F4(v54, &qword_27FD6E388, &qword_25F4A8CD8);
  sub_25F3F21F4(v55, &qword_27FD6E390, &unk_25F4A8CE0);
  sub_25F3F21F4(v40, &qword_27FD6E280, &qword_25F4A7F90);
  return v43;
}

uint64_t CrashReport.ID.propertyListValue.getter()
{
  v0 = sub_25F4A20A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2200();
  v4 = sub_25F4A2090();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t CrashReport.ID.init(propertyListValue:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F4A20A0();
  MEMORY[0x28223BE20](v3 - 8);
  result = sub_25F4A2080();
  if (!v2)
  {
    return sub_25F4A2230();
  }

  return result;
}

uint64_t sub_25F418B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F4A20A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2200();
  v6 = sub_25F4A2090();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_25F418C24(void *a1)
{
  v2 = sub_25F4A20A0();
  MEMORY[0x28223BE20](v2 - 8);
  result = sub_25F4A2080();
  if (!v1)
  {
    return sub_25F4A2230();
  }

  return result;
}

uint64_t sub_25F418CD8(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F418DE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F41B98C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F418E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007865;
  v4 = 0x646E496567616D69;
  v5 = 0xEE006E6F69746163;
  v6 = 0x6F4C6C6F626D7973;
  v7 = 0x6946656372756F73;
  v8 = 0xEA0000000000656CLL;
  if (v2 != 4)
  {
    v7 = 0x694C656372756F73;
    v8 = 0xEA0000000000656ELL;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEB00000000746573;
  v10 = 0x66664F6567616D69;
  if (v2 != 1)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F418EF0()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t CrashReport.Frame.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_1;
  v3 = sub_25F41AB50();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A22A0();
    v5 = sub_25F4A25E0();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}

uint64_t sub_25F419364()
{
  sub_25F4A22B0();
  sub_25F4A22E0();
  sub_25F4A2300();
  sub_25F4A22F0();
  sub_25F4A22C0();
  sub_25F4A22D0();
  sub_25F41AB50();
  v0 = sub_25F4A2890();

  return v0;
}

uint64_t sub_25F419550()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4195AC(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4195EC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F419644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F41B9D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t CrashReport.Image.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_0;
  v3 = sub_25F41ABAC();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A2350();
    v6 = sub_25F4A25E0();
    return (*(*(v6 - 8) + 8))(a1, v6);
  }
}

uint64_t sub_25F419A10()
{
  v17 = 0;
  v16[0] = sub_25F4A2360();
  v16[1] = v0;
  v15 = 1;
  v14[0] = sub_25F4A2310();
  v14[1] = v1;
  v13 = 2;
  v11 = sub_25F4A2320();
  v12 = 0;
  v10 = 3;
  v9[0] = sub_25F4A2340();
  v9[1] = v2;
  v8 = 4;
  v7[0] = sub_25F4A2330();
  v7[1] = v3;
  v4 = sub_25F41ABAC();
  v5 = sub_25F4A28A0(&v17, v16, &v15, v14, &v13, &v11, &v10, v9, &v8, v7, &_s3KeyON_0, MEMORY[0x277D837D0], &_s3KeyON_0, MEMORY[0x277D837D0], &_s3KeyON_0, MEMORY[0x277D83B88], &_s3KeyON_0, MEMORY[0x277D837D0], &_s3KeyON_0, MEMORY[0x277D837D0], v4, MEMORY[0x277D405B0], v4, MEMORY[0x277D405B0], v4, MEMORY[0x277D405F8], v4, MEMORY[0x277D405B0], v4, MEMORY[0x277D405B0]);

  return v5;
}

unint64_t sub_25F419BF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F41BA24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F419C20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7367616C66;
  v5 = 0xE500000000000000;
  v6 = 0x6469507962;
  if (v2 != 6)
  {
    v6 = 0x736E6F73616572;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000072;
  v8 = 0x6F74616369646E69;
  if (v2 != 4)
  {
    v8 = 0x636F72507962;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x63617073656D616ELL;
  v10 = 0xE900000000000065;
  if (v2 != 2)
  {
    v9 = 0x736C6961746564;
    v10 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 1701080931;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F419D18()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t CrashReport.Termination.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON;
  v3 = sub_25F41AC08();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2580();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F41A91C();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 6;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A2160();
    v5 = sub_25F4A25E0();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}

uint64_t sub_25F41A31C()
{
  sub_25F4A2170();
  sub_25F4A2140();
  sub_25F4A21C0();
  sub_25F4A2190();
  sub_25F4A21B0();
  sub_25F4A2180();
  sub_25F4A2150();
  sub_25F4A21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41AC08();
  sub_25F41A91C();
  v0 = sub_25F4A2870();

  return v0;
}

uint64_t sub_25F41A5A4(uint64_t a1)
{
  v9 = &type metadata for ProcessIdentifier.Key;
  v3 = sub_25F41A788();
  v10 = v3;
  LOBYTE(v8[0]) = 0;
  sub_25F41A7DC();
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v9 = &type metadata for ProcessIdentifier.Key;
    v10 = v3;
    LOBYTE(v8[0]) = 1;
    sub_25F4A2530();
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v7)
    {
      return v7;
    }

    else
    {
      return v7;
    }
  }
}

_BYTE *sub_25F41A778(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 32);
  *result = 0;
  *a2 = v3;
  return result;
}

unint64_t sub_25F41A788()
{
  result = qword_27FD6E270;
  if (!qword_27FD6E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E270);
  }

  return result;
}

unint64_t sub_25F41A7DC()
{
  result = qword_27FD6E278;
  if (!qword_27FD6E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E278);
  }

  return result;
}

unint64_t sub_25F41A830()
{
  result = qword_27FD6E290;
  if (!qword_27FD6E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E290);
  }

  return result;
}

unint64_t sub_25F41A884()
{
  result = qword_27FD6E2A8;
  if (!qword_27FD6E2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
    sub_25F41A91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2A8);
  }

  return result;
}

unint64_t sub_25F41A91C()
{
  result = qword_27FD6D630;
  if (!qword_27FD6D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D5D8, &unk_25F4AB530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D630);
  }

  return result;
}

unint64_t sub_25F41A998()
{
  result = qword_27FD6E2C0;
  if (!qword_27FD6E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
    sub_25F41AB00(&qword_27FD6E2C8, MEMORY[0x277D403E8], &protocol conformance descriptor for CrashReport.Image);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2C0);
  }

  return result;
}

unint64_t sub_25F41AA4C()
{
  result = qword_27FD6E2D8;
  if (!qword_27FD6E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
    sub_25F41AB00(&qword_27FD6E2E0, MEMORY[0x277D403E0], &protocol conformance descriptor for CrashReport.Frame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2D8);
  }

  return result;
}

uint64_t sub_25F41AB00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F41AB50()
{
  result = qword_27FD6E2E8;
  if (!qword_27FD6E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2E8);
  }

  return result;
}

unint64_t sub_25F41ABAC()
{
  result = qword_27FD6E2F0;
  if (!qword_27FD6E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2F0);
  }

  return result;
}

unint64_t sub_25F41AC08()
{
  result = qword_27FD6E2F8;
  if (!qword_27FD6E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E2F8);
  }

  return result;
}

unint64_t sub_25F41AC68()
{
  result = qword_27FD6E300;
  if (!qword_27FD6E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E300);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS22CrashListenerInterfaceO13TwoWayMessageO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F41ACEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F41AD34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

void *sub_25F41AD7C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_25F41ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F41ADFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F41AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F41AEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NextCrashResponse(uint64_t a1)
{
  result = qword_27FD6E308;
  if (!qword_27FD6E308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F41AFA0(uint64_t a1)
{
  result = sub_25F4A23A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t getEnumTagSinglePayload for SceneLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s3KeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s3KeyOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s3KeyOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s3KeyOwet_1(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s3KeyOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F41B52C()
{
  result = qword_27FD6E318;
  if (!qword_27FD6E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E318);
  }

  return result;
}

unint64_t sub_25F41B584()
{
  result = qword_27FD6E320;
  if (!qword_27FD6E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E320);
  }

  return result;
}

unint64_t sub_25F41B5DC()
{
  result = qword_27FD6E328;
  if (!qword_27FD6E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E328);
  }

  return result;
}

unint64_t sub_25F41B634()
{
  result = qword_27FD6E330;
  if (!qword_27FD6E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E330);
  }

  return result;
}

unint64_t sub_25F41B68C()
{
  result = qword_27FD6E338;
  if (!qword_27FD6E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E338);
  }

  return result;
}

unint64_t sub_25F41B6E4()
{
  result = qword_27FD6E340;
  if (!qword_27FD6E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E340);
  }

  return result;
}

unint64_t sub_25F41B73C()
{
  result = qword_27FD6E348;
  if (!qword_27FD6E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E348);
  }

  return result;
}

unint64_t sub_25F41B794()
{
  result = qword_27FD6E350;
  if (!qword_27FD6E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E350);
  }

  return result;
}

unint64_t sub_25F41B7EC()
{
  result = qword_27FD6E358;
  if (!qword_27FD6E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E358);
  }

  return result;
}

unint64_t sub_25F41B844()
{
  result = qword_27FD6E360;
  if (!qword_27FD6E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E360);
  }

  return result;
}

unint64_t sub_25F41B898()
{
  result = qword_27FD6E368;
  if (!qword_27FD6E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E368);
  }

  return result;
}

unint64_t sub_25F41B8EC()
{
  result = qword_27FD6E370;
  if (!qword_27FD6E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E370);
  }

  return result;
}

unint64_t sub_25F41B940(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F41B98C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F41B9D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F41BA24(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F41BA70(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_25F4A23A0();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t TransportReply.send(error:file:line:column:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v19[4] = a8;
  v19[2] = a6;
  v19[3] = a7;
  v19[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - v11);
  v13 = sub_25F4A2A70();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v14 + 8))(v16, v13);
}

uint64_t TransportReply.init(callsite:fulfilling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a1;
  v32 = a3;
  v5 = sub_25F4A2910();
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_25F4A2A70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v12 + 16))(v14, a1, v11);
  v19 = *(v8 + 16);
  v26 = v7;
  v19(v10, a2, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  v22 = v30;
  sub_25F4A2480();
  (*(v8 + 8))(v27, v26);
  v23 = *(v12 + 8);
  v23(v28, v11);
  v23(v14, v11);
  return (*(v31 + 8))(v18, v22);
}

uint64_t TransportReply.init<A>(callsite:fulfilling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v31 = a5;
  v32 = a2;
  v27 = a1;
  v7 = sub_25F4A2910();
  MEMORY[0x28223BE20](v7 - 8);
  v30 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v25 = sub_25F4A2F80();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = v24 - v10;
  v12 = sub_25F4A2A70();
  v26 = v12;
  v28 = *(v12 - 8);
  v13 = v28;
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F4A24A0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v24 - v17;
  (*(v13 + 16))(v15, a1, v12);
  v19 = v25;
  (*(v9 + 16))(v11, v32, v25);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  (*(v9 + 32))(v21 + v20, v11, v19);
  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v18, a3, v22);
  (*(v9 + 8))(v32, v19);
  return (*(v28 + 8))(v27, v26);
}

uint64_t TransportReply.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransportReply.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TransportReply.send<A>(_:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v30 = a1;
  v28 = a7;
  v29 = a8;
  v24 = a5;
  v25 = a6;
  v26 = a11;
  v27 = a10;
  v23[2] = a9;
  v23[3] = a4;
  v11 = sub_25F4A25E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  v18 = sub_25F4A2A70();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  sub_25F4A2940();
  (*(v12 + 32))(v17, v14, v11);
  type metadata accessor for LazyPropertyList(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v17, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v19 + 8))(v21, v18);
}

uint64_t TransportReply.send<A>(result:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v20[1] = a7;
  v20[2] = a8;
  v20[0] = a6;
  v20[3] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v20 - v12;
  v21 = sub_25F4A2A70();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v24 = a10;
  v25 = a11;
  KeyPath = swift_getKeyPath();
  v22 = a11;
  v23 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v18 = sub_25F4A3360();
  type metadata accessor for LazyPropertyList(0);
  sub_25F41CA98(sub_25F41F3FC, v18, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v13, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v14 + 8))(v16, v21);
}

uint64_t sub_25F41CA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F4A25E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}