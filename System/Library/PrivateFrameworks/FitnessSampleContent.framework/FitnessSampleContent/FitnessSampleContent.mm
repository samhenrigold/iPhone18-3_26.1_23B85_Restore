uint64_t sub_1E58326D8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E5832714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E583278C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5832884()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E58328BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF5B10, qword_1E58555D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 36) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for SampleContentArtwork(255);
    swift_getFunctionTypeMetadata1();
    v11 = sub_1E5853FA0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E5832A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF5B10, qword_1E58555D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 36) + 16) = -a2;
  }

  else
  {
    type metadata accessor for SampleContentArtwork(255);
    swift_getFunctionTypeMetadata1();
    v11 = sub_1E5853FA0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5832B60(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  sub_1E5854090();
  swift_getWitnessTable();
  sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8, MEMORY[0x1E69E6338]);
  sub_1E5854540();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854560();
  sub_1E5854090();
  sub_1E583EC38();
  sub_1E583EE60();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5833030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5854140();
  *a1 = result;
  return result;
}

uint64_t sub_1E58330EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5854100();
  *a1 = result;
  return result;
}

uint64_t sub_1E5833148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = type metadata accessor for SampleContentItem(0);
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(*(v9 - 1) + 64);
  v13 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1E5854080();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  else
  {
  }

  sub_1E583F318(*(v13 + *(v5 + 36)), *(v13 + *(v5 + 36) + 8));
  v15 = *(v5 + 40);
  type metadata accessor for SampleContentArtwork(255);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E5853FA0();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v4 + v11;
  swift_checkMetadataState();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1E5853FC0();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v4 + v11, 1, v18))
    {
      (*(v19 + 8))(v4 + v11, v18);
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    v21 = sub_1E5853EF0();
  }

  else
  {

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v23 = *(v22 + 48);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
    (*(*(v24 - 8) + 8))(v17 + v23, v24);
    v20 = *(v22 + 64);
    v21 = sub_1E5853FC0();
  }

  v25 = v21;
  v26 = *(v21 - 8);
  if (!(*(v26 + 48))(v17 + v20, 1, v21))
  {
    (*(v26 + 8))(v17 + v20, v25);
  }

  v27 = v6 | v10;
  v28 = v9[5];
  v29 = sub_1E5853EB0();
  v30 = *(*(v29 - 8) + 8);
  v30(v17 + v28, v29);

  v30(v17 + v9[8], v29);
  v30(v17 + v9[9], v29);

  return MEMORY[0x1EEE6BDD0](v4, v11 + v12, v27 | 7);
}

uint64_t sub_1E5833578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A00, &qword_1E58554D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58335E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5854120();
  *a1 = result;
  return result;
}

uint64_t sub_1E583363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E5854080();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  sub_1E583F318(*(v9 + *(v5 + 36)), *(v9 + *(v5 + 36) + 8));
  v11 = *(v5 + 40);
  type metadata accessor for SampleContentArtwork(255);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5853FA0();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v7 + 1, v6 | 7);
}

uint64_t sub_1E58337D4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E692E7B0]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5833838()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1E58338A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5853EB0();
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

uint64_t sub_1E5833960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5853EB0();
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

uint64_t sub_1E5833A18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5833A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SampleContentSummaryCardView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  sub_1E583F318(*(v4 + v7), *(v4 + v7 + 8));
  v9 = v5[11];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5853FA0();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1E5833B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v8 = sub_1E5853FA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5833C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v7 = sub_1E5853FA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5833CEC(uint64_t *a1)
{
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854230();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5854520();
  sub_1E5854090();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5833E28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E5853F70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5853F40();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E5833FAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E5853F70();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E5853F40();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E5834148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SampleContentArtwork(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5853EB0();
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

uint64_t sub_1E5834258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SampleContentArtwork(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E5853EB0();
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

id sub_1E5834430()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2F8AC0 = result;
  return result;
}

uint64_t sub_1E5834488()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

uint64_t sub_1E58344D0(uint64_t a1)
{
  v2 = *v1;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v2);
  return sub_1E58548C0();
}

uint64_t sub_1E5834514()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x64656C696166;
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

uint64_t sub_1E5834584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5835FA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58345C4(uint64_t a1)
{
  v2 = sub_1E5835348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5834600(uint64_t a1)
{
  v2 = sub_1E5835348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834648(uint64_t a1)
{
  v2 = sub_1E5835444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5834684(uint64_t a1)
{
  v2 = sub_1E5835444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58346C8()
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

uint64_t sub_1E5834734(uint64_t a1)
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

uint64_t sub_1E5834790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5834820(uint64_t a1)
{
  v2 = sub_1E58353F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E583485C(uint64_t a1)
{
  v2 = sub_1E58353F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834898(uint64_t a1)
{
  v2 = sub_1E583539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58348D4(uint64_t a1)
{
  v2 = sub_1E583539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834910(uint64_t a1)
{
  v2 = sub_1E5835498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E583494C(uint64_t a1)
{
  v2 = sub_1E5835498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentLoadState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for SampleContentLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5834C7C(v1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v9 = (*(*(v8 - 8) + 48))(v7, 3, v8);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x676E696863746566;
    }
  }

  else if (v9)
  {
    return 1701602409;
  }

  else
  {
    sub_1E5835E20(v7, v4, type metadata accessor for SampleContentShelfDescriptor);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1E5854730();

    v15 = 0x656C746974627573;
    v16 = 0xEA0000000000203ALL;
    sub_1E5853EB0();
    sub_1E5835E88(&qword_1EE2F8AB0, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
    v10 = sub_1E5854830();
    MEMORY[0x1E692ECE0](v10);

    MEMORY[0x1E692ECE0](0xD000000000000011, 0x80000001E5857A00);
    v14[1] = *(*&v4[*(v2 + 20)] + 16);
    v11 = sub_1E5854830();
    MEMORY[0x1E692ECE0](v11);

    MEMORY[0x1E692ECE0](93, 0xE100000000000000);
    v12 = v15;
    sub_1E5836C08(v4, type metadata accessor for SampleContentShelfDescriptor);
    return v12;
  }
}

uint64_t type metadata accessor for SampleContentLoadState(uint64_t a1)
{
  result = qword_1EE2F85A0;
  if (!qword_1EE2F85A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5834C7C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for SampleContentLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
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

uint64_t SampleContentLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58D0, &qword_1E5854D98);
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58D8, &qword_1E5854DA0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v27 - v5;
  v31 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58E0, &qword_1E5854DA8);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58E8, &qword_1E5854DB0);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  State = type metadata accessor for SampleContentLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58F0, &qword_1E5854DB8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5835348();
  sub_1E58548E0();
  sub_1E5834C7C(v39, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v21 = (*(*(v20 - 8) + 48))(v15, 3, v20);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 1;
      sub_1E5835444();
      sub_1E58547E0();
      (*(v29 + 8))(v9, v30);
    }

    else
    {
      v43 = 3;
      sub_1E583539C();
      v26 = v33;
      sub_1E58547E0();
      (*(v35 + 8))(v26, v36);
    }
  }

  else
  {
    if (!v21)
    {
      v22 = v32;
      sub_1E5835E20(v15, v32, type metadata accessor for SampleContentShelfDescriptor);
      v42 = 2;
      sub_1E58353F0();
      v23 = v34;
      sub_1E58547E0();
      sub_1E5835E88(&qword_1EE2F8A68, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);
      v24 = v38;
      sub_1E5854820();
      (*(v37 + 8))(v23, v24);
      sub_1E5836C08(v22, type metadata accessor for SampleContentShelfDescriptor);
      return (*(v17 + 8))(v19, v16);
    }

    v40 = 0;
    sub_1E5835498();
    sub_1E58547E0();
    (*(v27 + 8))(v12, v28);
  }

  return (*(v17 + 8))(v19, v16);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5835348()
{
  result = qword_1ECFF58F8;
  if (!qword_1ECFF58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF58F8);
  }

  return result;
}

unint64_t sub_1E583539C()
{
  result = qword_1ECFF5900;
  if (!qword_1ECFF5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5900);
  }

  return result;
}

unint64_t sub_1E58353F0()
{
  result = qword_1ECFF5908;
  if (!qword_1ECFF5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5908);
  }

  return result;
}

unint64_t sub_1E5835444()
{
  result = qword_1ECFF5910;
  if (!qword_1ECFF5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5910);
  }

  return result;
}

unint64_t sub_1E5835498()
{
  result = qword_1ECFF5918;
  if (!qword_1ECFF5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5918);
  }

  return result;
}

uint64_t SampleContentLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5920, &qword_1E5854DC0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v43 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5928, &qword_1E5854DC8);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5930, &qword_1E5854DD0);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5938, &qword_1E5854DD8);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5940, &unk_1E5854DE0);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  State = type metadata accessor for SampleContentLoadState(0);
  v14 = MEMORY[0x1EEE9AC00](State);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E5835348();
  v20 = v59;
  sub_1E58548D0();
  if (!v20)
  {
    v59 = State;
    v44 = v16;
    v45 = v18;
    v21 = v57;
    v22 = sub_1E58547D0();
    v23 = *(v22 + 16);
    v24 = v10;
    if (!v23 || ((v25 = *(v22 + 32), v23 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
    {
      v27 = sub_1E5854750();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20);
      *v29 = v59;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v58 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v22 + 32) > 1u)
      {
        v59 = v22;
        v34 = v56;
        v35 = v58;
        if (v25 == 2)
        {
          v63 = 2;
          sub_1E58353F0();
          v36 = v55;
          sub_1E5854770();
          type metadata accessor for SampleContentShelfDescriptor(0);
          sub_1E5835E88(&qword_1ECFF5950, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);
          v37 = v44;
          v38 = v51;
          sub_1E58547C0();
          (*(v53 + 8))(v36, v38);
          (*(v35 + 8))(v12, v24);
          swift_unknownObjectRelease();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          (*(*(v39 - 8) + 56))(v37, 0, 3, v39);
          v33 = v45;
          sub_1E5835E20(v37, v45, type metadata accessor for SampleContentLoadState);
          v34 = v56;
        }

        else
        {
          v64 = 3;
          sub_1E583539C();
          sub_1E5854770();
          (*(v50 + 8))(v21, v52);
          (*(v35 + 8))(v12, v24);
          swift_unknownObjectRelease();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v33 = v45;
          (*(*(v42 - 8) + 56))(v45, 3, 3, v42);
        }
      }

      else
      {
        v31 = v58;
        if (*(v22 + 32))
        {
          v62 = 1;
          sub_1E5835444();
          v40 = v54;
          sub_1E5854770();
          (*(v48 + 8))(v40, v49);
          (*(v31 + 8))(v12, v10);
          swift_unknownObjectRelease();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v33 = v45;
          (*(*(v41 - 8) + 56))(v45, 2, 3, v41);
        }

        else
        {
          v61 = 0;
          sub_1E5835498();
          sub_1E5854770();
          (*(v46 + 8))(v9, v47);
          (*(v31 + 8))(v12, v10);
          swift_unknownObjectRelease();
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v33 = v45;
          (*(*(v32 - 8) + 56))(v45, 1, 3, v32);
        }

        v34 = v56;
      }

      sub_1E5835E20(v33, v34, type metadata accessor for SampleContentLoadState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
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

uint64_t sub_1E5835E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5835E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5835ED0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_1E5835F04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_1E5835F38()
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

uint64_t sub_1E5835FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s20FitnessSampleContent0bC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for SampleContentLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59B8, &qword_1E5855328);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = *(v11 + 56);
  sub_1E5834C7C(a1, &v19 - v12);
  sub_1E5834C7C(a2, &v13[v14]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 3, v15);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v14], 3, v15) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v16(&v13[v14], 3, v15) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1E5836C08(v13, type metadata accessor for SampleContentLoadState);
    return 1;
  }

  if (v17)
  {
    if (v16(&v13[v14], 3, v15) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1E5834C7C(v13, v9);
  if (!v16(&v13[v14], 3, v15))
  {
    sub_1E5835E20(&v13[v14], v6, type metadata accessor for SampleContentShelfDescriptor);
    if ((sub_1E5853EA0() & 1) == 0 || (sub_1E58446AC(*&v9[*(v4 + 20)], *&v6[*(v4 + 20)]) & 1) == 0)
    {
      sub_1E5836C08(v6, type metadata accessor for SampleContentShelfDescriptor);
      sub_1E5836C08(v9, type metadata accessor for SampleContentShelfDescriptor);
      sub_1E5836C08(v13, type metadata accessor for SampleContentLoadState);
      return 0;
    }

    sub_1E5836C08(v6, type metadata accessor for SampleContentShelfDescriptor);
    sub_1E5836C08(v9, type metadata accessor for SampleContentShelfDescriptor);
    goto LABEL_11;
  }

  sub_1E5836C08(v9, type metadata accessor for SampleContentShelfDescriptor);
LABEL_12:
  sub_1E5836BA0(v13);
  return 0;
}

uint64_t sub_1E5836468(uint64_t a1)
{
  sub_1E58364C0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E58364C0()
{
  if (!qword_1EE2F8A70)
  {
    v0 = type metadata accessor for SampleContentShelfDescriptor(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2F8A70);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleContentLoadState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentLoadState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SampleContentLoadState.FetchedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SampleContentLoadState.FetchedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E5836784()
{
  result = qword_1ECFF5958;
  if (!qword_1ECFF5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5958);
  }

  return result;
}

unint64_t sub_1E58367DC()
{
  result = qword_1ECFF5960;
  if (!qword_1ECFF5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5960);
  }

  return result;
}

unint64_t sub_1E5836834()
{
  result = qword_1ECFF5968;
  if (!qword_1ECFF5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5968);
  }

  return result;
}

unint64_t sub_1E583688C()
{
  result = qword_1ECFF5970;
  if (!qword_1ECFF5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5970);
  }

  return result;
}

unint64_t sub_1E58368E4()
{
  result = qword_1ECFF5978;
  if (!qword_1ECFF5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5978);
  }

  return result;
}

unint64_t sub_1E583693C()
{
  result = qword_1ECFF5980;
  if (!qword_1ECFF5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5980);
  }

  return result;
}

unint64_t sub_1E5836994()
{
  result = qword_1ECFF5988;
  if (!qword_1ECFF5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5988);
  }

  return result;
}

unint64_t sub_1E58369EC()
{
  result = qword_1ECFF5990;
  if (!qword_1ECFF5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5990);
  }

  return result;
}

unint64_t sub_1E5836A44()
{
  result = qword_1ECFF5998;
  if (!qword_1ECFF5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5998);
  }

  return result;
}

unint64_t sub_1E5836A9C()
{
  result = qword_1ECFF59A0;
  if (!qword_1ECFF59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59A0);
  }

  return result;
}

unint64_t sub_1E5836AF4()
{
  result = qword_1ECFF59A8;
  if (!qword_1ECFF59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59A8);
  }

  return result;
}

unint64_t sub_1E5836B4C()
{
  result = qword_1ECFF59B0;
  if (!qword_1ECFF59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59B0);
  }

  return result;
}

uint64_t sub_1E5836BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59B8, &qword_1E5855328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5836C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SampleContentSummaryCardErrorItemContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

unint64_t sub_1E5836D00()
{
  result = qword_1ECFF59C0;
  if (!qword_1ECFF59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentSummaryCardErrorItemContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentSummaryCardErrorItemContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5836EA4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA0, "0*");
  v7 = sub_1E5840E30(&qword_1EE2F8480, &qword_1ECFF5BA0, "0*", MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v3, v4, v5, v6, v7);
}

uint64_t sub_1E5836F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SampleContentArtwork(255);
  swift_getFunctionTypeMetadata1();
  return sub_1E5853F80();
}

uint64_t sub_1E5836FA8(uint64_t a1)
{
  type metadata accessor for SampleContentArtwork(255);
  swift_getFunctionTypeMetadata1();
  sub_1E5853FA0();
  sub_1E5853F90();
  return v2;
}

uint64_t SampleContentWorkoutView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  swift_storeEnumTagMultiPayload();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v16 = a7 + *(type metadata accessor for SampleContentWorkoutView(0, a5, a6, v15) + 36);
  *v16 = sub_1E583EBB0;
  *(v16 + 1) = v14;
  v16[16] = 0;
  return sub_1E5836F4C(a3, a4, a5);
}

uint64_t SampleContentWorkoutView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v52 = a1;
  v55 = *(a1 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v59 = *(a1 + 16);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v82 = sub_1E5854090();
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v85 = MEMORY[0x1E6981840];
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v5 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  v80 = WitnessTable;
  v81 = v7;
  v47 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v82 = v5;
  v83 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8, MEMORY[0x1E69E6338]);
  v82 = v4;
  v83 = MEMORY[0x1E69E6158];
  v84 = OpaqueTypeMetadata2;
  v85 = v10;
  v86 = MEMORY[0x1E69E6168];
  v11 = sub_1E5854540();
  v82 = v5;
  v83 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v82 = v11;
  v83 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1E5854230();
  sub_1E5854230();
  v42 = sub_1E5854230();
  v13 = sub_1E5854560();
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v42 - v14;
  v45 = v13;
  v15 = sub_1E5854090();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v42 - v16;
  v17 = sub_1E583EC38();
  v18 = sub_1E583EE60();
  v82 = v11;
  v83 = v12;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v12;
  v75 = swift_getWitnessTable();
  v76 = v18;
  v19 = swift_getWitnessTable();
  v73 = v18;
  v74 = v19;
  v20 = swift_getWitnessTable();
  v70 = v17;
  v71 = v20;
  v72 = MEMORY[0x1E6981E60];
  v44 = swift_getWitnessTable();
  v68 = v44;
  v69 = MEMORY[0x1E69805D0];
  v46 = v15;
  v47 = swift_getWitnessTable();
  v82 = v15;
  v83 = v47;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v43 = &v42 - v26;
  v27 = v52;
  v28 = *(v52 + 24);
  v65 = v59;
  v66 = v28;
  v29 = v53;
  v67 = v53;
  v61 = v59;
  v62 = v28;
  v63 = v53;
  v30 = v48;
  sub_1E583A408(sub_1E583F300, v64, sub_1E583F30C, v60, v58, v42, v17, v20);
  v31 = v55;
  v32 = v54;
  (*(v55 + 16))(v54, v29, v27);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v59;
  *(v34 + 24) = v28;
  (*(v31 + 32))(v34 + v33, v32, v27);
  v35 = v49;
  v36 = v45;
  sub_1E5854410();

  (*(v51 + 8))(v30, v36);
  v37 = v46;
  sub_1E5854370();
  (*(v50 + 8))(v35, v37);
  v38 = *(v22 + 16);
  v39 = v43;
  v38(v43, v25, v21);
  v40 = *(v22 + 8);
  v40(v25, v21);
  v38(v57, v39, v21);
  return (v40)(v39, v21);
}

uint64_t sub_1E5837A4C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a1;
  v113 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v7 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v137 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  v8 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8, MEMORY[0x1E69E6338]);
  v138 = v6;
  v139 = MEMORY[0x1E69E6158];
  v140 = OpaqueTypeMetadata2;
  v141 = v10;
  v142 = MEMORY[0x1E69E6168];
  v11 = sub_1E5854540();
  v98 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v97 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v90 - v14;
  v138 = v7;
  v139 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v138 = v11;
  v139 = v15;
  v109 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1E5854230();
  v103 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v102 = &v90 - v19;
  v101 = v16;
  v96 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v90 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  MEMORY[0x1EEE9AC00](v104);
  v24 = &v90 - v23;
  v94 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  v114 = v17;
  v27 = sub_1E5854230();
  v106 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v90 - v32;
  v112 = sub_1E5854230();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v35 = &v90 - v34;
  v37 = type metadata accessor for SampleContentWorkoutView(0, a2, a3, v36);
  sub_1E5836EA4(v37);
  swift_getKeyPath();
  sub_1E58545E0();

  if (v138 != 1)
  {
    v90 = v33;
    v107 = v26;
    v91 = v27;
    v44 = v11;
    v92 = v35;
    sub_1E5836EA4(v37);
    swift_getKeyPath();
    sub_1E58545E0();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v51 = v95;
      sub_1E5839284(v37, v95);
      v39 = v109;
      v138 = v11;
      v139 = v109;
      v52 = swift_getOpaqueTypeConformance2();
      v53 = v96;
      v54 = *(v96 + 16);
      v55 = v99;
      v56 = v101;
      v54(v99, v51, v101);
      v110 = *(v53 + 8);
      v110(v51, v56);
      v54(v51, v55, v56);
      v57 = v11;
      v58 = v102;
      sub_1E58472FC(v51, v56, v11, v52, v39);
      v119 = v52;
      v120 = v39;
      v59 = v114;
      v60 = swift_getWitnessTable();
      v61 = sub_1E583EE60();
      v47 = v108;
      sub_1E58472FC(v58, v59, v107, v60, v61);
      (*(v103 + 8))(v58, v59);
      v62 = v110;
      v110(v51, v56);
      v62(v99, v56);
      v63 = v57;
    }

    else
    {
      v46 = v114;
      if (!EnumCaseMultiPayload)
      {
        v49 = v93;
        sub_1E584085C(v24, v93, type metadata accessor for SampleContentShelfDescriptor);
        v42 = v112;
        v47 = v108;
        goto LABEL_9;
      }

      v47 = v108;
      if (EnumCaseMultiPayload == 1)
      {
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
        v49 = v93;
        sub_1E584085C(v24, v93, type metadata accessor for SampleContentShelfDescriptor);
        v50 = sub_1E5853F00();
        (*(*(v50 - 8) + 8))(&v24[v48], v50);
        v42 = v112;
LABEL_9:
        v64 = *(v49 + *(v94 + 20));

        sub_1E5840A0C(v49, type metadata accessor for SampleContentShelfDescriptor);
        v65 = v97;
        sub_1E5839D68(v64, v37);

        v66 = v98;
        v67 = *(v98 + 16);
        v68 = v100;
        v67(v100, v65, v44);
        v69 = *(v66 + 8);
        v69(v65, v44);
        v67(v65, v68, v44);
        v39 = v109;
        v63 = v44;
        v138 = v44;
        v139 = v109;
        v70 = swift_getOpaqueTypeConformance2();
        v71 = v102;
        sub_1E58473F4(v65, v101, v44, v70, v39);
        v121 = v70;
        v122 = v39;
        v72 = v114;
        v73 = swift_getWitnessTable();
        v74 = sub_1E583EE60();
        sub_1E58472FC(v71, v72, v107, v73, v74);
        (*(v103 + 8))(v71, v72);
        v69(v65, v63);
        v69(v100, v63);
LABEL_12:
        v138 = v63;
        v139 = v39;
        v131 = swift_getOpaqueTypeConformance2();
        v132 = v39;
        v78 = swift_getWitnessTable();
        v79 = sub_1E583EE60();
        v129 = v78;
        v130 = v79;
        v80 = v91;
        v81 = swift_getWitnessTable();
        v82 = v106;
        v83 = v105;
        (*(v106 + 16))(v105, v47, v80);
        v84 = v79;
        v43 = v63;
        v35 = v92;
        sub_1E58473F4(v83, v107, v80, v84, v81);
        v85 = *(v82 + 8);
        v85(v83, v80);
        v85(v47, v80);
        v41 = v113;
        goto LABEL_13;
      }

      sub_1E5840E78(v24, &qword_1ECFF5CD8, &qword_1E58566E0);
      LOBYTE(v138) = 1;
      v75 = v90;
      sub_1E5838A3C(&v138, v37, v90);
      v63 = v44;
      v39 = v109;
      v138 = v44;
      v139 = v109;
      v133 = swift_getOpaqueTypeConformance2();
      v134 = v39;
      v76 = swift_getWitnessTable();
      v77 = sub_1E583EE60();
      sub_1E58473F4(v75, v46, v107, v76, v77);
      sub_1E5840E78(v75, &qword_1ECFF59D8, &qword_1E58554B0);
    }

    v42 = v112;
    goto LABEL_12;
  }

  LOBYTE(v138) = 0;
  sub_1E5838A3C(&v138, v37, v33);
  v38 = sub_1E583EE60();
  v39 = v109;
  v138 = v11;
  v139 = v109;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = v39;
  v115 = swift_getWitnessTable();
  v116 = v38;
  v40 = swift_getWitnessTable();
  sub_1E58472FC(v33, v26, v27, v38, v40);
  sub_1E5840E78(v33, &qword_1ECFF59D8, &qword_1E58554B0);
  v41 = v113;
  v42 = v112;
  v43 = v11;
LABEL_13:
  v86 = sub_1E583EE60();
  v138 = v43;
  v139 = v39;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v39;
  v125 = swift_getWitnessTable();
  v126 = v86;
  v87 = swift_getWitnessTable();
  v123 = v86;
  v124 = v87;
  swift_getWitnessTable();
  v88 = v111;
  (*(v111 + 16))(v41, v35, v42);
  return (*(v88 + 8))(v35, v42);
}

uint64_t sub_1E5838A3C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v72 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AD8, &qword_1E5855538);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v72 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AC8, &qword_1E5855530);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v72 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AB8, &qword_1E5855528);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v72 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DC0, &qword_1E5855858);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v72 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A78, &qword_1E5855508);
  v12 = MEMORY[0x1EEE9AC00](v81);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v72 - v15;
  v17 = sub_1E5854080();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v24 = *a1;
  sub_1E583F55C(&v72 - v22);
  (*(v18 + 104))(v21, *MEMORY[0x1E697E6C0], v17);
  v25 = sub_1E5854070();
  v26 = *(v18 + 8);
  v26(v21, v17);
  v26(v23, v17);
  if (v25)
  {
    v27 = sub_1E5854450();
    sub_1E5854570();
    sub_1E58540D0();
    *&v85[54] = v90;
    *&v85[70] = v91;
    *&v85[86] = v92;
    *&v85[102] = v93;
    *&v85[6] = v87;
    *&v85[22] = v88;
    v86 = 0;
    *&v85[38] = v89;
    v28 = sub_1E5854570();
    v30 = v29;
    v31 = &v14[*(v81 + 36)];
    sub_1E583DDE4(v24, *(v79 + 16), *(v79 + 24), v31);
    v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AA8, &qword_1E5855520) + 36));
    *v32 = v28;
    v32[1] = v30;
    v33 = *&v85[32];
    *(v14 + 66) = *&v85[48];
    *(v14 + 50) = v33;
    v34 = *v85;
    *(v14 + 34) = *&v85[16];
    *(v14 + 18) = v34;
    *(v14 + 16) = *&v85[110];
    *(v14 + 114) = *&v85[96];
    v35 = *&v85[64];
    *(v14 + 98) = *&v85[80];
    *v14 = v27;
    *(v14 + 1) = 0x3FFC71C71C71C71CLL;
    *(v14 + 8) = 0;
    *(v14 + 82) = v35;
    v36 = &qword_1ECFF5A78;
    v37 = &qword_1E5855508;
    sub_1E5840C94(v14, v16, &qword_1ECFF5A78, &qword_1E5855508);
    sub_1E5840F94(v16, v82, &qword_1ECFF5A78, &qword_1E5855508);
    swift_storeEnumTagMultiPayload();
    sub_1E583EEEC();
    sub_1E583F0D8();
    sub_1E5854220();
    v38 = v16;
  }

  else
  {
    LOBYTE(v87) = v24;
    v39 = v73;
    sub_1E583E0B0(&v87, v79, v73);
    sub_1E5854570();
    sub_1E58540D0();
    v40 = v39;
    v41 = v75;
    sub_1E5840C94(v40, v75, &qword_1ECFF5AE8, &qword_1E5855540);
    v42 = (v41 + *(v72 + 36));
    v43 = v90;
    v44 = v92;
    v45 = v93;
    v42[4] = v91;
    v42[5] = v44;
    v42[6] = v45;
    v46 = v88;
    v47 = v89;
    *v42 = v87;
    v42[1] = v46;
    v42[2] = v47;
    v42[3] = v43;
    v48 = sub_1E5854280();
    sub_1E5854010();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v77;
    sub_1E5840C94(v41, v77, &qword_1ECFF5AD8, &qword_1E5855538);
    v58 = v57 + *(v74 + 36);
    *v58 = v48;
    *(v58 + 8) = v50;
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    LOBYTE(v41) = sub_1E5854260();
    sub_1E5854010();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v57;
    v68 = v76;
    sub_1E5840C94(v67, v76, &qword_1ECFF5AC8, &qword_1E5855530);
    v69 = v68 + *(v83 + 36);
    *v69 = v41;
    *(v69 + 8) = v60;
    *(v69 + 16) = v62;
    *(v69 + 24) = v64;
    *(v69 + 32) = v66;
    *(v69 + 40) = 0;
    v36 = &qword_1ECFF5AB8;
    v37 = &qword_1E5855528;
    v70 = v78;
    sub_1E5840C94(v68, v78, &qword_1ECFF5AB8, &qword_1E5855528);
    sub_1E5840F94(v70, v82, &qword_1ECFF5AB8, &qword_1E5855528);
    swift_storeEnumTagMultiPayload();
    sub_1E583EEEC();
    sub_1E583F0D8();
    sub_1E5854220();
    v38 = v70;
  }

  return sub_1E5840E78(v38, v36, v37);
}

uint64_t sub_1E5839284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = sub_1E58540B0();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E5853F40();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5853EE0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5853EB0();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v49 - v17;
  v18 = type metadata accessor for SampleContentArtwork(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v66 = a1;
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v75 = sub_1E5854090();
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v78 = MEMORY[0x1E6981840];
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v22 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v24 = v20;
  v25 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  v73 = WitnessTable;
  v74 = v25;
  v26 = swift_getWitnessTable();
  v57 = v22;
  v75 = v22;
  v76 = v26;
  v55 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8, MEMORY[0x1E69E6338]);
  v75 = v21;
  v76 = MEMORY[0x1E69E6158];
  v77 = OpaqueTypeMetadata2;
  v78 = v28;
  v79 = MEMORY[0x1E69E6168];
  v56 = sub_1E5854540();
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v49 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF8, &unk_1E58557D0);
  v30 = type metadata accessor for SampleContentItem(0);
  v31 = (*(*(v30 - 1) + 80) + 32) & ~*(*(v30 - 1) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1E58553F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
  *v20 = 0xD00000000000001DLL;
  v20[1] = 0x80000001E5857A70;
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v33 = v32 + v31;
  v34 = qword_1EE2F8AC0;
  sub_1E584057C();
  v35 = v34;
  sub_1E5853FE0();
  sub_1E5853FB0();
  swift_storeEnumTagMultiPayload();
  v50 = v24;
  sub_1E5854620();
  v36 = v35;
  v51 = v32;
  sub_1E5853F60();
  v37 = v36;
  sub_1E5854650();
  sub_1E5853ED0();
  sub_1E5853EC0();
  sub_1E5853F30();
  v49 = sub_1E5853F10();
  v39 = v38;
  (*(v60 + 8))(v5, v62);
  sub_1E5854620();
  sub_1E5853F60();
  sub_1E5854650();
  sub_1E5853ED0();
  v40 = v61;
  sub_1E5853EC0();
  sub_1E5854620();
  sub_1E5853F60();
  sub_1E5854650();
  sub_1E5853ED0();
  v41 = v63;
  sub_1E5853EC0();
  sub_1E584085C(v50, v33, type metadata accessor for SampleContentArtwork);
  v42 = v65;
  v43 = *(v64 + 32);
  v43(v33 + v30[5], v71, v65);
  v44 = (v33 + v30[6]);
  *v44 = v49;
  v44[1] = v39;
  *(v33 + v30[7]) = 1;
  v43(v33 + v30[8], v40, v42);
  v43(v33 + v30[9], v41, v42);
  v45 = v52;
  sub_1E5839D68(v51, v66);

  v46 = v67;
  sub_1E58540A0();
  v75 = v57;
  v76 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v56;
  swift_getWitnessTable();
  sub_1E5854420();
  (*(v68 + 8))(v46, v70);
  return (*(v53 + 8))(v45, v47);
}

uint64_t sub_1E5839D68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v21 = MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v13 = *(a2 + 16);
  *(v7 + 16) = v13;
  (*(v4 + 32))(v7 + v6, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v16 = sub_1E5854090();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v19 = MEMORY[0x1E6981840];
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v8 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  v14 = WitnessTable;
  v15 = v10;
  v11 = swift_getWitnessTable();
  v16 = v8;
  v17 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8, MEMORY[0x1E69E6338]);
  v16 = v8;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  return sub_1E5854530();
}

double sub_1E583A154@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, a1, a2, a4);
  sub_1E583A1B8(v5, a3);
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59D0, &qword_1E58554A8) + 36);
  *v6 = 0;
  *(v6 + 8) = 0;
  result = 10.0;
  *(v6 + 16) = xmmword_1E5855400;
  *(v6 + 32) = 0;
  return result;
}

uint64_t sub_1E583A1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A50, &qword_1E58554F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A40, &qword_1E58554F0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  *v7 = sub_1E58541C0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA8, &qword_1E58555F0);
  sub_1E583C57C(v2, *(a1 + 16), *(a1 + 24), &v7[*(v12 + 44)]);
  sub_1E5854570();
  sub_1E58540D0();
  sub_1E5840C94(v7, v11, &qword_1ECFF5A50, &qword_1E58554F8);
  v13 = &v11[*(v9 + 44)];
  v14 = v21[5];
  *(v13 + 4) = v21[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v21[6];
  v15 = v21[1];
  *v13 = v21[0];
  *(v13 + 1) = v15;
  v16 = v21[3];
  *(v13 + 2) = v21[2];
  *(v13 + 3) = v16;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A30, &qword_1E58554E8) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A60, &qword_1E5855500) + 28);
  v19 = sub_1E5854320();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  return sub_1E5840C94(v11, a2, &qword_1ECFF5A40, &qword_1E58554F0);
}

uint64_t sub_1E583A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1E5854550();
}

uint64_t sub_1E583A500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a4;
  v57 = a2;
  v68 = a1;
  v71 = a5;
  v7 = type metadata accessor for SampleContentItem(0);
  v8 = *(v7 - 8);
  v70 = v7 - 8;
  v67 = v8;
  v69 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SampleContentWorkoutView(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v51 - v15;
  v51[0] = v51 - v15;
  v17 = a3;
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  *&v80 = sub_1E5854090();
  *(&v80 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  *&v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  *(&v81 + 1) = MEMORY[0x1E6981840];
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  v62 = sub_1E5854500();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1E58544E0();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = v51 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v52 = v18;
  v20 = sub_1E5854090();
  v59 = v20;
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v53 = v51 - v21;
  v22 = swift_getWitnessTable();
  v51[1] = v22;
  v23 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
  v78 = v22;
  v79 = v23;
  v60 = swift_getWitnessTable();
  *&v80 = v20;
  *(&v80 + 1) = v60;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v56 = v51 - v26;
  v27 = v13;
  v28 = *(v13 + 16);
  v29 = v57;
  v30 = v12;
  v28(v16, v57, v12);
  v31 = v68;
  v32 = v10;
  sub_1E58407F8(v68, v10);
  v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v34 = (v14 + *(v67 + 80) + v33) & ~*(v67 + 80);
  v35 = swift_allocObject();
  v36 = v17;
  *(v35 + 16) = v17;
  v37 = v66;
  *(v35 + 24) = v66;
  (*(v27 + 32))(v35 + v33, v51[0], v30);
  sub_1E584085C(v32, v35 + v34, type metadata accessor for SampleContentItem);
  v72 = v36;
  v73 = v37;
  v74 = v29;
  v75 = v31;
  v38 = v55;
  sub_1E58544D0();
  v80 = xmmword_1E5855410;
  v81 = xmmword_1E5855410;
  LOBYTE(v82) = 0;
  v39 = v53;
  v40 = v52;
  sub_1E58543C0();
  (*(v64 + 8))(v38, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D20, &qword_1E5855810);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1E58553F0;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1E5854730();

  v76 = 0xD000000000000015;
  v77 = 0x80000001E5857AD0;
  MEMORY[0x1E692ECE0](*(v31 + *(v70 + 32)), *(v31 + *(v70 + 32) + 8));
  v42 = v77;
  *(v41 + 32) = v76;
  *(v41 + 40) = v42;
  v43 = v54;
  v44 = v59;
  sub_1E5854380();

  (*(v65 + 8))(v39, v44);
  v45 = v58;
  v46 = *(v58 + 16);
  v47 = v56;
  v48 = OpaqueTypeMetadata2;
  v46(v56, v43, OpaqueTypeMetadata2);
  v49 = *(v45 + 8);
  v49(v43, v48);
  v46(v71, v47, v48);
  return (v49)(v47, v48);
}

uint64_t sub_1E583ACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, a3, a4, a4);
  sub_1E5836EA4(v5);
  v6 = (a2 + *(type metadata accessor for SampleContentItem(0) + 24));
  v8 = *v6;
  v9 = v6[1];

  sub_1E58545F0();

  return sub_1E5840ED8(v8, v9);
}

uint64_t sub_1E583AD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v25 = sub_1E5854090();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v28 = MEMORY[0x1E6981840];
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  v9 = sub_1E5854500();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  sub_1E58541C0();
  sub_1E58544F0();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_1E583B004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a5;
  v130 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D28, &qword_1E5855818);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v117 = (&v96 - v9);
  v10 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5854440();
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D30, &qword_1E5855820);
  MEMORY[0x1EEE9AC00](v107);
  v103 = (&v96 - v16);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D38, &qword_1E5855828);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D40, &qword_1E5855830);
  v114 = *(v18 - 8);
  v115 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v96 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A00, &qword_1E58554D8);
  v22 = MEMORY[0x1EEE9AC00](v124);
  v126 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v96 - v24;
  v122 = sub_1E58540C0();
  v25 = MEMORY[0x1EEE9AC00](v122);
  v123 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E5854090();
  v120 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v96 - v31;
  v119 = sub_1E5854090();
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v34 = &v96 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v35 = sub_1E5854090();
  v36 = *(v35 - 8);
  v132 = v35;
  v133 = v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v131 = &v96 - v40;
  v102 = type metadata accessor for SampleContentWorkoutView(0, a3, a4, v41);
  v116 = a1;
  v42 = sub_1E5836FA8(v102);
  v42(v130);

  sub_1E58543B0();
  (*(v27 + 8))(v29, a3);
  sub_1E5854570();
  v166 = a4;
  v167 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E5854400();
  (*(v120 + 8))(v32, v30);
  v44 = *(v122 + 20);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_1E58541E0();
  v47 = v123;
  (*(*(v46 - 8) + 104))(&v123[v44], v45, v46);
  __asm { FMOV            V0.2D, #10.0 }

  *v47 = _Q0;
  v53 = v47;
  v164 = WitnessTable;
  v165 = MEMORY[0x1E697E040];
  v54 = v119;
  v55 = swift_getWitnessTable();
  sub_1E58409C4(&qword_1ECFF5D48, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E5854430();
  sub_1E5840A0C(v53, MEMORY[0x1E697EAF0]);
  (*(v121 + 8))(v34, v54);
  v56 = sub_1E5840E30(&qword_1ECFF5D50, &qword_1ECFF59E8, &qword_1E58554C0, MEMORY[0x1E697DDB0]);
  v162 = v55;
  v163 = v56;
  v57 = v132;
  v58 = swift_getWitnessTable();
  v59 = v133;
  v60 = v133 + 16;
  v121 = *(v133 + 16);
  (v121)(v131, v39, v57);
  v122 = *(v59 + 8);
  v123 = v39;
  v133 = v59 + 8;
  (v122)(v39, v57);
  sub_1E5854570();
  sub_1E5854050();
  v118 = v168;
  v119 = v170;
  v61 = v172;
  v120 = v173;
  v185 = 1;
  v183 = v169;
  v181 = v171;
  v62 = sub_1E5854200();
  LOBYTE(v142) = 1;
  v63 = v130;
  sub_1E583C068(v130, v186);
  *(&v160[1] + 7) = v186[1];
  *(v160 + 7) = v186[0];
  *(&v160[2] + 7) = v186[2];
  *(&v160[3] + 7) = v187;
  v188 = v62;
  v189[0] = v142;
  *&v189[33] = v160[2];
  *&v189[49] = v160[3];
  *&v189[64] = *(&v187 + 1);
  *&v189[1] = v160[0];
  *&v189[17] = v160[1];
  if (*(v63 + *(type metadata accessor for SampleContentItem(0) + 28)))
  {
    v64 = v125;
    (*(v127 + 56))(v125, 1, 1, v128);
  }

  else
  {
    v100 = v61;
    v101 = v60;
    v130 = v58;
    sub_1E5854570();
    sub_1E5854050();
    v98 = v176;
    v99 = v174;
    v96 = v179;
    v97 = v178;
    LOBYTE(v142) = 1;
    LOBYTE(v148) = v175;
    LOBYTE(v159[0]) = v177;
    v65 = sub_1E58544A0();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D58, &qword_1E5855838);
    v67 = v103;
    v68 = (v103 + *(v66 + 36));
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C70, &qword_1E58556F0) + 28);
    v70 = *MEMORY[0x1E69816E0];
    v71 = sub_1E58544B0();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = swift_getKeyPath();
    *v67 = v65;
    v72 = sub_1E58542A0();
    KeyPath = swift_getKeyPath();
    v74 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D60, &qword_1E5855840) + 36));
    *v74 = KeyPath;
    v74[1] = v72;
    (*(v105 + 104))(v104, *MEMORY[0x1E69814D8], v106);
    *(v67 + *(v107 + 36)) = sub_1E5854490();
    sub_1E5854620();
    if (qword_1EE2F8460 != -1)
    {
      swift_once();
    }

    v75 = qword_1EE2F8AC0;
    sub_1E5836EA4(v102);
    swift_getKeyPath();
    sub_1E58545E0();

    *&v160[0] = sub_1E5854670();
    *(&v160[0] + 1) = v76;
    sub_1E5840A6C();
    sub_1E5840074();
    v77 = v109;
    sub_1E58543F0();

    sub_1E5840E78(v67, &qword_1ECFF5D30, &qword_1E5855820);
    sub_1E583FE50(&qword_1ECFF5D90, &qword_1ECFF5D38, &qword_1E5855828, sub_1E5840A6C);
    v78 = v111;
    sub_1E5854380();
    sub_1E5840E78(v77, &qword_1ECFF5D38, &qword_1E5855828);
    v79 = v142;
    v80 = v148;
    LODWORD(v116) = LOBYTE(v159[0]);
    v81 = v113;
    v82 = v114;
    v83 = *(v114 + 16);
    v84 = v115;
    v83(v113, v78, v115);
    v85 = v117;
    *v117 = 0;
    *(v85 + 8) = v79;
    v86 = v98;
    *(v85 + 16) = v99;
    *(v85 + 24) = v80;
    *(v85 + 32) = v86;
    *(v85 + 40) = v116;
    v87 = v96;
    *(v85 + 48) = v97;
    *(v85 + 56) = v87;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D98, &qword_1E5855850);
    v83((v85 + *(v88 + 48)), v81, v84);
    v89 = *(v82 + 8);
    v89(v78, v84);
    v89(v81, v84);
    v64 = v125;
    sub_1E5840C94(v85, v125, &qword_1ECFF5D28, &qword_1E5855818);
    (*(v127 + 56))(v64, 0, 1, v128);
    v58 = v130;
    v61 = v100;
  }

  v90 = v123;
  v91 = v131;
  v92 = v132;
  (v121)(v123, v131, v132);
  v148 = 0;
  v149 = v185;
  *v150 = *v184;
  *&v150[3] = *&v184[3];
  v151 = v118;
  v152 = v183;
  *v153 = *v182;
  *&v153[3] = *&v182[3];
  v154 = v119;
  v155 = v181;
  *v156 = *v180;
  *&v156[3] = *&v180[3];
  v157 = v61;
  v158 = v120;
  v159[0] = v90;
  v159[1] = &v148;
  v144 = *&v189[16];
  v145 = *&v189[32];
  v146 = *&v189[48];
  v147 = *&v189[64];
  v142 = v188;
  v143 = *v189;
  v140 = 0;
  v141 = 1;
  v159[2] = &v142;
  v159[3] = &v140;
  v93 = v126;
  sub_1E5833578(v64, v126);
  v159[4] = v93;
  sub_1E5840F94(&v188, v160, &qword_1ECFF59F8, &qword_1E58554D0);
  v139[0] = v92;
  v139[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v139[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v139[3] = MEMORY[0x1E6981840];
  v139[4] = v124;
  v134 = v58;
  v135 = sub_1E5840CFC();
  v136 = sub_1E5840E30(&qword_1ECFF5DA8, &qword_1ECFF59F8, &qword_1E58554D0, MEMORY[0x1E6981870]);
  v137 = MEMORY[0x1E6981838];
  v138 = sub_1E5840D80();
  sub_1E583C3AC(v159, 5uLL, v139);
  sub_1E5840E78(&v188, &qword_1ECFF59F8, &qword_1E58554D0);
  sub_1E5840E78(v64, &qword_1ECFF5A00, &qword_1E58554D8);
  v94 = v122;
  (v122)(v91, v92);
  sub_1E5840E78(v93, &qword_1ECFF5A00, &qword_1E58554D8);
  v160[2] = v144;
  v160[3] = v145;
  v160[4] = v146;
  v161 = v147;
  v160[0] = v142;
  v160[1] = v143;
  sub_1E5840E78(v160, &qword_1ECFF59F8, &qword_1E58554D0);
  return v94(v90, v92);
}

uint64_t sub_1E583C068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v3 = sub_1E5853EB0();
  v45 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SampleContentItem(0);
  v8 = *(v7 + 36);
  v9 = *(v4 + 16);
  v44 = v4 + 16;
  v47 = v9;
  v48 = v7;
  v9(v6, a1 + v8, v3);
  v10 = sub_1E5854350();
  v12 = v11;
  v14 = v13;
  sub_1E58542A0();
  v15 = sub_1E5854330();
  v17 = v16;
  v19 = v18;

  sub_1E5840460(v10, v12, v14 & 1);

  v54 = sub_1E5854470();
  v20 = sub_1E5854310();
  v50 = v21;
  v51 = v20;
  v23 = v22;
  v49 = v24;
  sub_1E5840460(v15, v17, v19 & 1);

  v47(v6, v46 + *(v48 + 32), v45);
  v25 = sub_1E5854350();
  v27 = v26;
  v29 = v28;
  sub_1E58542A0();
  v30 = sub_1E5854330();
  v32 = v31;
  LOBYTE(v10) = v33;

  sub_1E5840460(v25, v27, v29 & 1);

  v54 = sub_1E5854480();
  v34 = sub_1E5854310();
  v36 = v35;
  LOBYTE(v6) = v37;
  v39 = v38;
  sub_1E5840460(v30, v32, v10 & 1);

  v40 = v49 & 1;
  v53 = v49 & 1;
  LOBYTE(v54) = v49 & 1;
  v55 = v6 & 1;
  v42 = v51;
  v41 = v52;
  *v52 = v51;
  v41[1] = v23;
  *(v41 + 16) = v40;
  v41[3] = v50;
  v41[4] = v34;
  v41[5] = v36;
  *(v41 + 48) = v6 & 1;
  v41[7] = v39;
  sub_1E58404F4(v42, v23, v40);

  sub_1E58404F4(v34, v36, v6 & 1);

  sub_1E5840460(v34, v36, v6 & 1);

  sub_1E5840460(v42, v23, v53);
}

uint64_t sub_1E583C3AC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E5854590();
}

uint64_t sub_1E583C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BB8, &qword_1E5855630);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BC0, &qword_1E5855638);
  v29 = *(v34 - 8);
  v12 = v29;
  v13 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - v15;
  v32 = sub_1E5854200();
  v44 = 1;
  sub_1E583CA6C(a1, a2, a3, &v53);
  v47 = *&v54[16];
  v48[0] = *&v54[32];
  *(v48 + 15) = *&v54[47];
  v45 = v53;
  v46 = *v54;
  v49[2] = *&v54[16];
  v50[0] = *&v54[32];
  *(v50 + 15) = *&v54[47];
  v49[0] = v53;
  v49[1] = *v54;
  sub_1E5840F94(&v45, v51, &qword_1ECFF5BC8, &qword_1E5855640);
  sub_1E5840E78(v49, &qword_1ECFF5BC8, &qword_1E5855640);
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[3] + 7) = v48[0];
  *(&v43[4] + 6) = *(v48 + 15);
  *(v43 + 7) = v45;
  v30 = v44;
  v40 = a2;
  v41 = a3;
  v42 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BD0, &qword_1E5855648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BD8, &qword_1E5855650);
  sub_1E583FE50(&qword_1ECFF5BE0, &qword_1ECFF5BD0, &qword_1E5855648, sub_1E583FF04);
  sub_1E5840E30(&qword_1ECFF5C30, &qword_1ECFF5BD8, &qword_1E5855650, MEMORY[0x1E697D680]);
  sub_1E58542E0();
  sub_1E5840E30(&qword_1ECFF5C38, &qword_1ECFF5BB8, &qword_1E5855630, MEMORY[0x1E697CD28]);
  v16 = v31;
  v17 = v35;
  sub_1E5854380();
  (*(v36 + 8))(v11, v17);
  v18 = *(v12 + 16);
  v20 = v33;
  v19 = v34;
  v18(v33, v16, v34);
  v21 = v32;
  v51[0] = v32;
  v51[1] = 0;
  LOBYTE(v12) = v30;
  LOBYTE(v52[0]) = v30;
  *(v52 + 1) = v43[0];
  *(&v52[1] + 1) = v43[1];
  *(&v52[2] + 1) = v43[2];
  *(&v52[3] + 11) = *(&v43[3] + 10);
  *(&v52[3] + 1) = v43[3];
  v22 = v52[0];
  *a4 = v32;
  *(a4 + 16) = v22;
  v23 = v52[1];
  v24 = v52[2];
  v25 = v52[3];
  *(a4 + 75) = *(&v52[3] + 11);
  *(a4 + 48) = v24;
  *(a4 + 64) = v25;
  *(a4 + 32) = v23;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C40, &qword_1E5855678);
  v18((a4 + *(v26 + 64)), v20, v19);
  sub_1E5840F94(v51, &v53, &qword_1ECFF5C48, &qword_1E5855680);
  v27 = *(v29 + 8);
  v27(v16, v19);
  v27(v20, v19);
  v53 = v21;
  v54[0] = v12;
  *&v54[17] = v43[1];
  *&v54[33] = v43[2];
  *&v54[49] = v43[3];
  *&v54[59] = *(&v43[3] + 10);
  *&v54[1] = v43[0];
  return sub_1E5840E78(&v53, &qword_1ECFF5C48, &qword_1E5855680);
}

uint64_t sub_1E583CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  *&v81 = a3;
  v79 = a1;
  *&v82 = a4;
  v74 = sub_1E5853EB0();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  MEMORY[0x1EEE9AC00](v78);
  v10 = &v71 - v9;
  v11 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E58541D0();
  v13 = sub_1E5854340();
  v15 = v14;
  v17 = v16;
  sub_1E58542B0();
  v18 = sub_1E5854330();
  v20 = v19;
  v22 = v21;

  sub_1E5840460(v13, v15, v17 & 1);

  sub_1E58542C0();
  v23 = sub_1E5854300();
  v25 = v24;
  v27 = v26;
  sub_1E5840460(v18, v20, v22 & 1);

  *&v89 = sub_1E5854470();
  v28 = sub_1E5854310();
  v30 = v29;
  LODWORD(v32) = v31;
  v34 = v33;
  sub_1E5840460(v23, v25, v27 & 1);

  v36 = type metadata accessor for SampleContentWorkoutView(0, v80, v81, v35);
  sub_1E5836EA4(v36);
  swift_getKeyPath();
  sub_1E58545E0();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      LODWORD(v79) = v32;
      v80 = v28;
      *&v81 = v34;
      v39 = v75;
      sub_1E584085C(v10, v75, type metadata accessor for SampleContentShelfDescriptor);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      LODWORD(v79) = v32;
      v80 = v28;
      *&v81 = v34;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
      v39 = v75;
      sub_1E584085C(v10, v75, type metadata accessor for SampleContentShelfDescriptor);
      v40 = sub_1E5853F00();
      (*(*(v40 - 8) + 8))(&v10[v38], v40);
LABEL_6:
      v41 = v73;
      v42 = v72;
      v43 = v74;
      (*(v73 + 16))(v72, v39, v74);
      sub_1E5840A0C(v39, type metadata accessor for SampleContentShelfDescriptor);
      v44 = sub_1E5853E90();
      v46 = v45;
      v48 = v47;
      (*(v41 + 8))(v42, v43);
      *&v89 = sub_1E5854480();
      v49 = sub_1E5854310();
      v51 = v50;
      v53 = v52;
      v32 = v54;
      sub_1E5840460(v44, v46, v48 & 1);

      v83 = v49;
      v84 = v51;
      v85 = v53 & 1;
      v86 = v32;
      v87 = 256;
      v88 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CE0, &qword_1E58557A0);
      sub_1E5840470();
      sub_1E5854220();
      v55 = v89;
      v56 = v90;
      v57 = v91;
      v58 = v92;
      v59 = v82;
      v28 = v80;
      v34 = v81;
      LOBYTE(v32) = v79;
      goto LABEL_11;
    }

    sub_1E5840E78(v10, &qword_1ECFF5CD8, &qword_1E58566E0);
  }

  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v60 = qword_1EE2F8AC0;
  sub_1E5836EA4(v36);
  swift_getKeyPath();
  sub_1E58545E0();

  *&v89 = sub_1E5854670();
  *(&v89 + 1) = v61;
  sub_1E5840074();
  v83 = sub_1E5854360();
  v84 = v62;
  v85 = v63 & 1;
  v86 = v64;
  v87 = 0;
  v88 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CE0, &qword_1E58557A0);
  sub_1E5840470();
  sub_1E5854220();
  v55 = v89;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v59 = v82;
LABEL_11:
  v81 = v55;
  v82 = v56;
  v65 = v32 & 1;
  LOBYTE(v89) = v65;
  LOBYTE(v83) = v58;
  *v59 = v28;
  *(v59 + 8) = v30;
  *(v59 + 16) = v65;
  *(v59 + 24) = v34;
  *(v59 + 32) = v55;
  *(v59 + 48) = v56;
  *(v59 + 64) = v57;
  *(v59 + 66) = v58;
  sub_1E58404F4(v28, v30, v65);

  v66 = v81;
  v67 = v82;
  v68 = v28;
  v69 = *(&v82 + 1);
  sub_1E5840504(v81, *(&v81 + 1), v82, *(&v82 + 1));
  sub_1E5840540(v66, *(&v66 + 1), v67, v69);
  sub_1E5840460(v68, v30, v65);
}

uint64_t sub_1E583D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SampleContentWorkoutView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD0, &unk_1E5855770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18[-v12];
  sub_1E5853FF0();
  v14 = sub_1E5854000();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  v19 = a2;
  v20 = a3;
  v21 = a1;
  return sub_1E58544C0();
}

uint64_t sub_1E583D480(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, a3, a4, a5);
  sub_1E5836EA4(v5);
  sub_1E58545F0();
}

uint64_t sub_1E583D4D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2F8AC0;
  v10 = type metadata accessor for SampleContentWorkoutView(0, a1, a2, v8);
  v11 = v9;
  sub_1E5836EA4(v10);
  swift_getKeyPath();
  sub_1E58545E0();

  result = sub_1E58542F0();
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_1E583D670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a1;
  v28[2] = a4;
  v6 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E5854440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BF0, &qword_1E5855658);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  (*(v9 + 104))(v11, *MEMORY[0x1E69814D8], v8);
  sub_1E5854490();
  v15 = sub_1E5854460();

  sub_1E5854570();
  sub_1E5854050();
  *&v29[6] = v30;
  *&v29[22] = v31;
  *&v29[38] = v32;
  v16 = sub_1E5854570();
  v18 = v17;
  v19 = &v14[*(v12 + 36)];
  sub_1E583DA34(v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C20, &qword_1E5855670) + 36));
  *v20 = v16;
  v20[1] = v18;
  *(v14 + 7) = *&v29[46];
  *(v14 + 42) = *&v29[32];
  v21 = *v29;
  *(v14 + 26) = *&v29[16];
  *v14 = v15;
  *(v14 + 4) = 256;
  *(v14 + 10) = v21;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE2F8AC0;
  v24 = type metadata accessor for SampleContentWorkoutView(0, a2, a3, v22);
  v25 = v23;
  sub_1E5836EA4(v24);
  swift_getKeyPath();
  sub_1E58545E0();

  v28[3] = sub_1E5854670();
  v28[4] = v26;
  sub_1E583FF04();
  sub_1E5840074();
  sub_1E58543F0();

  return sub_1E5840E78(v14, &qword_1ECFF5BF0, &qword_1E5855658);
}

uint64_t sub_1E583DA34@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C58, &qword_1E58556A8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v2 = v22 - v1;
  v24 = sub_1E5854440();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C60, &qword_1E58556B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v22 - v7);
  v23 = sub_1E58544A0();
  v9 = sub_1E58542A0();
  KeyPath = swift_getKeyPath();
  v11 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C68, &qword_1E58556E8) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C70, &qword_1E58556F0) + 28);
  v13 = *MEMORY[0x1E69816C0];
  v14 = sub_1E58544B0();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  v15 = v24;
  *v8 = v23;
  v8[1] = KeyPath;
  v8[2] = v9;
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v15);
  v16 = sub_1E5854490();
  v17 = swift_getKeyPath();
  v18 = (v8 + *(v6 + 36));
  *v18 = v17;
  v18[1] = v16;
  v19 = *MEMORY[0x1E697E6E8];
  v20 = sub_1E5854080();
  (*(*(v20 - 8) + 104))(v2, v19, v20);
  sub_1E58409C4(&qword_1ECFF5C78, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5854610();
  if (result)
  {
    sub_1E5840198();
    sub_1E5840E30(&qword_1ECFF5CC8, &qword_1ECFF5C58, &qword_1E58556A8, MEMORY[0x1E69E6ED8]);
    sub_1E58543E0();
    sub_1E5840E78(v2, &qword_1ECFF5C58, &qword_1E58556A8);
    return sub_1E5840E78(v8, &qword_1ECFF5C60, &qword_1E58556B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E583DDE4@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AD8, &qword_1E5855538);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AC8, &qword_1E5855530);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v46 - v17;
  LOBYTE(v46[0]) = a1 & 1;
  v20 = type metadata accessor for SampleContentWorkoutView(0, a2, a3, v19);
  sub_1E583E0B0(v46, v20, v10);
  sub_1E5854570();
  sub_1E58540D0();
  sub_1E5840C94(v10, v14, &qword_1ECFF5AE8, &qword_1E5855540);
  v21 = &v14[*(v12 + 44)];
  v22 = v46[5];
  *(v21 + 4) = v46[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v46[6];
  v23 = v46[1];
  *v21 = v46[0];
  *(v21 + 1) = v23;
  v24 = v46[3];
  *(v21 + 2) = v46[2];
  *(v21 + 3) = v24;
  v25 = sub_1E5854280();
  sub_1E5854010();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1E5840C94(v14, v18, &qword_1ECFF5AD8, &qword_1E5855538);
  v34 = &v18[*(v16 + 44)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1E5854260();
  sub_1E5854010();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1E5840C94(v18, a4, &qword_1ECFF5AC8, &qword_1E5855530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AB8, &qword_1E5855528);
  v45 = a4 + *(result + 36);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_1E583E0B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = sub_1E58541F0();
  *(a3 + 8) = 0x4014000000000000;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DC8, &qword_1E5855860);
  sub_1E583E154(v6, v3, *(a2 + 16), *(a2 + 24), (a3 + *(v7 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_1E583E154@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v89 = a4;
  v88 = a3;
  v95 = a5;
  v96 = a2;
  v92 = sub_1E5854440();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SampleContentWorkoutView(0, a3, a4, v9);
  v97 = v10;
  v86 = *(v10 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v78 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DD0, &qword_1E5855898) - 8;
  v12 = MEMORY[0x1EEE9AC00](v93);
  v94 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v78 - v14;
  v15 = sub_1E5853F70();
  v79 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1 & 1;
  LOBYTE(v104) = a1 & 1;
  sub_1E5836EA4(v10);
  swift_getKeyPath();
  sub_1E58545E0();

  v19 = sub_1E5852814(v18);
  v21 = v20;
  v23 = v22;
  v24 = *(v16 + 8);
  v78 = v16 + 8;
  v80 = v24;
  v24(v18, v15);
  sub_1E58542D0();
  v25 = sub_1E5854330();
  v27 = v26;
  v29 = v28;

  sub_1E5840460(v19, v21, v23 & 1);

  sub_1E58542C0();
  v84 = sub_1E5854300();
  v82 = v30;
  v81 = v31;
  v83 = v32;
  sub_1E5840460(v25, v27, v29 & 1);

  v105 = v98;
  v33 = v97;
  sub_1E5836EA4(v97);
  swift_getKeyPath();
  sub_1E58545E0();

  sub_1E5836EA4(v33);
  swift_getKeyPath();
  sub_1E58545E0();

  v34 = sub_1E5854660();
  v36 = v35;

  v37 = sub_1E58529F8(v18, v34, v36);
  v39 = v38;
  LOBYTE(v34) = v40;

  v80(v18, v79);
  sub_1E5854290();
  v41 = sub_1E5854330();
  v43 = v42;
  v45 = v44;

  sub_1E5840460(v37, v39, v34 & 1);

  LODWORD(v104) = sub_1E5854240();
  v78 = sub_1E5854310();
  v47 = v46;
  LODWORD(v79) = v48;
  v80 = v49;
  sub_1E5840460(v41, v43, v45 & 1);

  v50 = v86;
  v51 = v85;
  v52 = v96;
  v53 = v97;
  (*(v86 + 16))(v85, v96, v97);
  v54 = v50;
  v55 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v56 = v55 + v87;
  v57 = swift_allocObject();
  v58 = v88;
  v59 = v89;
  *(v57 + 16) = v88;
  *(v57 + 24) = v59;
  (*(v54 + 32))(v57 + v55, v51, v53);
  v60 = v98;
  *(v57 + v56) = v98;
  v100 = v58;
  v101 = v59;
  v102 = v60;
  v103 = v52;
  v61 = v99;
  sub_1E58544D0();
  (*(v91 + 104))(v90, *MEMORY[0x1E69814D8], v92);
  v62 = sub_1E5854490();
  KeyPath = swift_getKeyPath();
  v104 = v62;
  v64 = sub_1E5854060();
  v65 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DD8, &qword_1E58558F0) + 36));
  *v65 = KeyPath;
  v65[1] = v64;
  LOBYTE(v64) = sub_1E5854270();
  sub_1E5854010();
  v66 = v94;
  v67 = v61 + *(v93 + 44);
  *v67 = v64;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  LOBYTE(v64) = v81 & 1;
  LOBYTE(v104) = v81 & 1;
  sub_1E5840F94(v61, v66, &qword_1ECFF5DD0, &qword_1E5855898);
  v72 = v95;
  v73 = v84;
  v74 = v82;
  *v95 = v84;
  v72[1] = v74;
  *(v72 + 16) = v64;
  v75 = v78;
  v72[3] = v83;
  v72[4] = v75;
  v72[5] = v47;
  LOBYTE(KeyPath) = v79 & 1;
  *(v72 + 48) = v79 & 1;
  v72[7] = v80;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE0, &qword_1E58558F8);
  sub_1E5840F94(v66, v72 + *(v76 + 64), &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E58404F4(v73, v74, v64);

  sub_1E58404F4(v75, v47, KeyPath);

  sub_1E5840E78(v99, &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E5840E78(v66, &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E5840460(v75, v47, KeyPath);

  sub_1E5840460(v73, v74, v104);
}

uint64_t sub_1E583E9A8(char *a1, uint64_t a2)
{
  sub_1E5836EA4(a2);
  sub_1E58545F0();
}

uint64_t sub_1E583EA04@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1E5853F70();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27[15] = a1 & 1;
  v13 = type metadata accessor for SampleContentWorkoutView(0, a2, a3, v12);
  sub_1E5836EA4(v13);
  swift_getKeyPath();
  sub_1E58545E0();

  v14 = sub_1E5852C34(v11);
  v16 = v15;
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  sub_1E5854290();
  v19 = sub_1E5854330();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1E5840460(v14, v16, v18 & 1);

  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
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

unint64_t sub_1E583EC38()
{
  result = qword_1ECFF5A20;
  if (!qword_1ECFF5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
    sub_1E583ECF0();
    sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A20);
  }

  return result;
}

unint64_t sub_1E583ECF0()
{
  result = qword_1ECFF5A28;
  if (!qword_1ECFF5A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A30, &qword_1E58554E8);
    sub_1E583EDA8();
    sub_1E5840E30(&qword_1ECFF5A58, &qword_1ECFF5A60, &qword_1E5855500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A28);
  }

  return result;
}

unint64_t sub_1E583EDA8()
{
  result = qword_1ECFF5A38;
  if (!qword_1ECFF5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A40, &qword_1E58554F0);
    sub_1E5840E30(&qword_1ECFF5A48, &qword_1ECFF5A50, &qword_1E58554F8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A38);
  }

  return result;
}

unint64_t sub_1E583EE60()
{
  result = qword_1ECFF5A68;
  if (!qword_1ECFF5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
    sub_1E583EEEC();
    sub_1E583F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A68);
  }

  return result;
}

unint64_t sub_1E583EEEC()
{
  result = qword_1ECFF5A70;
  if (!qword_1ECFF5A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A78, &qword_1E5855508);
    sub_1E583EFD0(&qword_1ECFF5A80, &qword_1ECFF5A88, &qword_1E5855510, sub_1E583F054);
    sub_1E5840E30(&qword_1ECFF5AA0, &qword_1ECFF5AA8, &qword_1E5855520, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A70);
  }

  return result;
}

uint64_t sub_1E583EFD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E583F054()
{
  result = qword_1ECFF5A90;
  if (!qword_1ECFF5A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A98, &qword_1E5855518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A90);
  }

  return result;
}

unint64_t sub_1E583F0D8()
{
  result = qword_1ECFF5AB0;
  if (!qword_1ECFF5AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AB8, &qword_1E5855528);
    sub_1E583F164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AB0);
  }

  return result;
}

unint64_t sub_1E583F164()
{
  result = qword_1ECFF5AC0;
  if (!qword_1ECFF5AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AC8, &qword_1E5855530);
    sub_1E583EFD0(&qword_1ECFF5AD0, &qword_1ECFF5AD8, &qword_1E5855538, sub_1E583F21C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AC0);
  }

  return result;
}

unint64_t sub_1E583F21C()
{
  result = qword_1ECFF5AE0;
  if (!qword_1ECFF5AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AE8, &qword_1E5855540);
    sub_1E5840E30(&qword_1ECFF5AF0, &qword_1ECFF5AF8, &qword_1E5855548, MEMORY[0x1E6981870]);
    sub_1E5840E30(&qword_1ECFF5B00, &qword_1ECFF5B08, &unk_1E5855550, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AE0);
  }

  return result;
}

void sub_1E583F378(uint64_t a1)
{
  sub_1E583F460(319);
  if (v1 <= 0x3F)
  {
    sub_1E583F4B8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SampleContentArtwork(255);
      swift_getFunctionTypeMetadata1();
      sub_1E5853FA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E583F460(uint64_t a1)
{
  if (!qword_1ECFF5B98)
  {
    sub_1E5854080();
    v1 = sub_1E5854020();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFF5B98);
    }
  }
}

void sub_1E583F4B8(uint64_t a1)
{
  if (!qword_1EE2F8490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BA0, "0*");
    sub_1E5840E30(&qword_1EE2F8480, &qword_1ECFF5BA0, "0*", MEMORY[0x1E6999B78]);
    v1 = sub_1E5854040();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2F8490);
    }
  }
}

uint64_t sub_1E583F55C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E58541B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E5840F94(v2, &v17 - v9, &qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E5854080();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E5854700();
    v14 = sub_1E5854250();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E583F7E8(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_1E5831000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E692F2D0](v16, -1, -1);
      MEMORY[0x1E692F2D0](v15, -1, -1);
    }

    sub_1E58541A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1E583F7E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E583F8B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5840FFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E583F8B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E583F9C0(a5, a6);
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
    result = sub_1E5854760();
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

void *sub_1E583F9C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E583FA0C(a1, a2);
  sub_1E583FB3C(&unk_1F5F540B8);
  return v3;
}

void *sub_1E583FA0C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E583FC28(v5, 0);
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

  result = sub_1E5854760();
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
        v10 = sub_1E58546A0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E583FC28(v10, 0);
        result = sub_1E5854720();
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

uint64_t sub_1E583FB3C(uint64_t result)
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

  result = sub_1E583FC9C(result, v11, 1, v3);
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

void *sub_1E583FC28(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE8, &unk_1E5855900);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E583FC9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE8, &unk_1E5855900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E583FD90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BB0, &qword_1E5855628);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5840F94(a1, &v5 - v3, &qword_1ECFF5BB0, &qword_1E5855628);
  return sub_1E5854190();
}

uint64_t sub_1E583FE50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E58409C4(&qword_1ECFF5C28, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E583FF04()
{
  result = qword_1ECFF5BE8;
  if (!qword_1ECFF5BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BF0, &qword_1E5855658);
    sub_1E583FFBC();
    sub_1E5840E30(&qword_1ECFF5C18, &qword_1ECFF5C20, &qword_1E5855670, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5BE8);
  }

  return result;
}

unint64_t sub_1E583FFBC()
{
  result = qword_1ECFF5BF8;
  if (!qword_1ECFF5BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C00, &qword_1E5855660);
    sub_1E5840E30(&qword_1ECFF5C08, &qword_1ECFF5C10, &qword_1E5855668, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5BF8);
  }

  return result;
}

unint64_t sub_1E5840074()
{
  result = qword_1ECFF5C50;
  if (!qword_1ECFF5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C50);
  }

  return result;
}

uint64_t sub_1E58400C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1E5840198()
{
  result = qword_1ECFF5C80;
  if (!qword_1ECFF5C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C60, &qword_1E58556B0);
    sub_1E5840250();
    sub_1E5840E30(&qword_1ECFF5CB8, &qword_1ECFF5CC0, &qword_1E5855768, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C80);
  }

  return result;
}

unint64_t sub_1E5840250()
{
  result = qword_1ECFF5C88;
  if (!qword_1ECFF5C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C68, &qword_1E58556E8);
    sub_1E5840308();
    sub_1E5840E30(&qword_1ECFF5CB0, &qword_1ECFF5C70, &qword_1E58556F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C88);
  }

  return result;
}

unint64_t sub_1E5840308()
{
  result = qword_1ECFF5C90;
  if (!qword_1ECFF5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C98, &qword_1E5855758);
    sub_1E5840E30(&qword_1ECFF5CA0, &qword_1ECFF5CA8, &qword_1E5855760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C90);
  }

  return result;
}

uint64_t sub_1E58403CC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(type metadata accessor for SampleContentWorkoutView(0, v6, v7, a5) - 8);
  return sub_1E583D480(a1, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, v9);
}

uint64_t sub_1E5840460(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E5840470()
{
  result = qword_1ECFF5CE8;
  if (!qword_1ECFF5CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5CE0, &qword_1E58557A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5CE8);
  }

  return result;
}

uint64_t sub_1E58404F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5840504(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E58404F4(a1, a2, a3 & 1);
}

uint64_t sub_1E5840540(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E5840460(a1, a2, a3 & 1);
}

unint64_t sub_1E584057C()
{
  result = qword_1ECFF5D08;
  if (!qword_1ECFF5D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECFF5D08);
  }

  return result;
}

uint64_t objectdestroy_3Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E5854080();
    (*(*(v10 - 8) + 8))(v4 + v7, v10);
  }

  else
  {
  }

  sub_1E583F318(*(v9 + *(v5 + 36)), *(v9 + *(v5 + 36) + 8));
  v11 = *(v5 + 40);
  type metadata accessor for SampleContentArtwork(255);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5853FA0();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1E584075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SampleContentWorkoutView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E583A500(a1, v9, v6, v7, a3);
}

uint64_t sub_1E58407F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E584085C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58408C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SampleContentWorkoutView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for SampleContentItem(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1E583ACEC(v4 + v8, v11, v5, v6);
}

uint64_t sub_1E58409C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5840A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5840A6C()
{
  result = qword_1ECFF5D68;
  if (!qword_1ECFF5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D30, &qword_1E5855820);
    sub_1E5840B24();
    sub_1E5840E30(&qword_1ECFF5D80, &qword_1ECFF5D88, &qword_1E5855848, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D68);
  }

  return result;
}

unint64_t sub_1E5840B24()
{
  result = qword_1ECFF5D70;
  if (!qword_1ECFF5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D60, &qword_1E5855840);
    sub_1E5840BDC();
    sub_1E5840E30(&qword_1ECFF5CA0, &qword_1ECFF5CA8, &qword_1E5855760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D70);
  }

  return result;
}

unint64_t sub_1E5840BDC()
{
  result = qword_1ECFF5D78;
  if (!qword_1ECFF5D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D58, &qword_1E5855838);
    sub_1E5840E30(&qword_1ECFF5CB0, &qword_1ECFF5C70, &qword_1E58556F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D78);
  }

  return result;
}

uint64_t sub_1E5840C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5840CFC()
{
  result = qword_1ECFF5DA0;
  if (!qword_1ECFF5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5DA0);
  }

  return result;
}

unint64_t sub_1E5840D80()
{
  result = qword_1ECFF5DB0;
  if (!qword_1ECFF5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
    sub_1E5840E30(&qword_1ECFF5DB8, &qword_1ECFF5D28, &qword_1E5855818, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5DB0);
  }

  return result;
}

uint64_t sub_1E5840E30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E5840E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5840ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5840EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SampleContentWorkoutView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 64));
  return sub_1E583E9A8(&v7, v5);
}

uint64_t sub_1E5840F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5840FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 SampleContentFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1E58410AC()
{
  v1 = *(v0 + 8);
  sub_1E5854890();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1E692EEF0](v2);
      return sub_1E58548C0();
    }
  }

  MEMORY[0x1E692EEF0](2);
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5841164(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      return MEMORY[0x1E692EEF0](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E692EEF0](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1E692EEF0](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E692EEF0](v3);
    }
  }

  MEMORY[0x1E692EEF0](2);

  return sub_1E5854680();
}

uint64_t sub_1E5841214(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E5854890();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E692EEF0](v3);
      return sub_1E58548C0();
    }
  }

  MEMORY[0x1E692EEF0](2);
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E58412C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_1E5854840();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SampleContentFeature.reduce(localState:sharedState:sideEffects:action:)(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v92 = a3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910);
  v7 = *(v93 - 8);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v92 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v92 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v92 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v92 - v21;
  v23 = *a4;
  v24 = a4[1];
  v25 = v4[3];
  v97 = v4[2];
  v98 = v25;
  v99 = v4[4];
  v26 = v4[1];
  v95 = *v4;
  v96 = v26;
  if (v24 <= 1)
  {
    if (!v24)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
      v69 = v68[16];
      v70 = v68[20];
      v71 = &v22[v68[24]];
      sub_1E5841E68();
      v94[0] = 0uLL;
      sub_1E5854710();
      sub_1E58546F0();
      v72 = *MEMORY[0x1E6999B50];
      v73 = sub_1E58545D0();
      (*(*(v73 - 8) + 104))(&v22[v69], v72, v73);
      v74 = *MEMORY[0x1E6999B40];
      v75 = sub_1E58545C0();
      (*(*(v75 - 8) + 104))(&v22[v70], v74, v75);
      v76 = swift_allocObject();
      v77 = v98;
      v76[3] = v97;
      v76[4] = v77;
      v76[5] = v99;
      v78 = v96;
      v76[1] = v95;
      v76[2] = v78;
      *v71 = &unk_1E5855968;
      *(v71 + 1) = v76;
      v38 = v93;
      (*(v7 + 104))(v22, *MEMORY[0x1E6999AD8], v93);
      v39 = v92;
      v40 = *v92;
      sub_1E5842950(&v95, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1E5842990(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v79 = v40[3];
      v43 = v42 + 1;
      if (v42 >= v79 >> 1)
      {
        v40 = sub_1E5842990((v79 > 1), v42 + 1, 1, v40);
      }

      goto LABEL_31;
    }

    if (v24 == 1)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
      v28 = v27[16];
      v29 = v27[20];
      v30 = &v19[v27[24]];
      v94[0] = xmmword_1E5855440;
      sub_1E5841E68();
      sub_1E5854710();
      sub_1E58546F0();
      v31 = *MEMORY[0x1E6999B50];
      v32 = sub_1E58545D0();
      (*(*(v32 - 8) + 104))(&v19[v28], v31, v32);
      v33 = *MEMORY[0x1E6999B40];
      v34 = sub_1E58545C0();
      (*(*(v34 - 8) + 104))(&v19[v29], v33, v34);
      v35 = swift_allocObject();
      v36 = v98;
      v35[3] = v97;
      v35[4] = v36;
      v35[5] = v99;
      v37 = v96;
      v35[1] = v95;
      v35[2] = v37;
      *v30 = &unk_1E5855958;
      *(v30 + 1) = v35;
      v38 = v93;
      (*(v7 + 104))(v19, *MEMORY[0x1E6999AD8], v93);
      v39 = v92;
      v40 = *v92;
      sub_1E5842950(&v95, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1E5842990(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v41 = v40[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1E5842990((v41 > 1), v42 + 1, 1, v40);
      }

      v22 = v19;
      goto LABEL_31;
    }

LABEL_17:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
    v57 = v56[16];
    v58 = v56[20];
    v59 = &v16[v56[24]];
    *&v94[0] = v23;
    *(&v94[0] + 1) = v24;
    sub_1E5842C18(v23, v24);
    sub_1E5841E68();

    sub_1E5854710();
    sub_1E58546F0();
    v60 = *MEMORY[0x1E6999B50];
    v61 = sub_1E58545D0();
    (*(*(v61 - 8) + 104))(&v16[v57], v60, v61);
    v62 = *MEMORY[0x1E6999B40];
    v63 = sub_1E58545C0();
    (*(*(v63 - 8) + 104))(&v16[v58], v62, v63);
    v64 = swift_allocObject();
    v65 = v98;
    *(v64 + 48) = v97;
    *(v64 + 64) = v65;
    *(v64 + 80) = v99;
    v66 = v96;
    *(v64 + 16) = v95;
    *(v64 + 32) = v66;
    *(v64 + 96) = v23;
    *(v64 + 104) = v24;
    *v59 = &unk_1E5855948;
    *(v59 + 1) = v64;
    v38 = v93;
    (*(v7 + 104))(v16, *MEMORY[0x1E6999AD8], v93);
    v39 = v92;
    v40 = *v92;
    sub_1E5842950(&v95, v94);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1E5842990(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v67 = v40[3];
    v43 = v42 + 1;
    if (v42 >= v67 >> 1)
    {
      v40 = sub_1E5842990((v67 > 1), v42 + 1, 1, v40);
    }

    v22 = v16;
    goto LABEL_31;
  }

  if (v24 == 2)
  {
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
    v81 = v80[16];
    v82 = v80[20];
    v83 = &v13[v80[24]];
    v94[0] = xmmword_1E5855420;
    sub_1E5841E68();
    sub_1E5854710();
    sub_1E58546F0();
    v84 = *MEMORY[0x1E6999B50];
    v85 = sub_1E58545D0();
    (*(*(v85 - 8) + 104))(&v13[v81], v84, v85);
    v86 = *MEMORY[0x1E6999B40];
    v87 = sub_1E58545C0();
    (*(*(v87 - 8) + 104))(&v13[v82], v86, v87);
    v88 = swift_allocObject();
    v89 = v98;
    v88[3] = v97;
    v88[4] = v89;
    v88[5] = v99;
    v90 = v96;
    v88[1] = v95;
    v88[2] = v90;
    *v83 = &unk_1E5855938;
    *(v83 + 1) = v88;
    v38 = v93;
    (*(v7 + 104))(v13, *MEMORY[0x1E6999AD8], v93);
    v39 = v92;
    v40 = *v92;
    sub_1E5842950(&v95, v94);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1E5842990(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v91 = v40[3];
    v43 = v42 + 1;
    if (v42 >= v91 >> 1)
    {
      v40 = sub_1E5842990((v91 > 1), v42 + 1, 1, v40);
    }

    v22 = v13;
    goto LABEL_31;
  }

  if (v24 != 3)
  {
    goto LABEL_17;
  }

  if (*a1)
  {
    return result;
  }

  *a1 = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
  v45 = v44[16];
  v46 = v44[20];
  v47 = &v10[v44[24]];
  v94[0] = xmmword_1E5855430;
  sub_1E5841E68();
  sub_1E5854710();
  sub_1E58546F0();
  v48 = *MEMORY[0x1E6999B50];
  v49 = sub_1E58545D0();
  (*(*(v49 - 8) + 104))(&v10[v45], v48, v49);
  v50 = *MEMORY[0x1E6999B40];
  v51 = sub_1E58545C0();
  (*(*(v51 - 8) + 104))(&v10[v46], v50, v51);
  v52 = swift_allocObject();
  v53 = v98;
  v52[3] = v97;
  v52[4] = v53;
  v52[5] = v99;
  v54 = v96;
  v52[1] = v95;
  v52[2] = v54;
  *v47 = &unk_1E5855928;
  *(v47 + 1) = v52;
  (*(v7 + 104))(v10, *MEMORY[0x1E6999AD8], v93);
  v39 = v92;
  v40 = *v92;
  sub_1E5842950(&v95, v94);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_1E5842990(0, v40[2] + 1, 1, v40);
  }

  v42 = v40[2];
  v55 = v40[3];
  v43 = v42 + 1;
  if (v42 >= v55 >> 1)
  {
    v40 = sub_1E5842990((v55 > 1), v42 + 1, 1, v40);
  }

  v22 = v10;
  v38 = v93;
LABEL_31:
  v40[2] = v43;
  result = (*(v7 + 32))(v40 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v42, v22, v38);
  *v39 = v40;
  return result;
}

unint64_t sub_1E5841E68()
{
  result = qword_1EE2F85D8[0];
  if (!qword_1EE2F85D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F85D8);
  }

  return result;
}

uint64_t sub_1E5841EBC(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5841FC4;

  return v6();
}

uint64_t sub_1E5841FC4()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E58546C0();
  if (v0)
  {
    v4 = sub_1E58432E0;
  }

  else
  {
    v4 = sub_1E58432E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5842120(uint64_t a1, int **a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5842228;

  return v6();
}

uint64_t sub_1E5842228()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E58546C0();
  if (v0)
  {
    v4 = sub_1E58423E8;
  }

  else
  {
    v4 = sub_1E5842384;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5842384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E58423E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E584244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E58546E0();
  v4[3] = sub_1E58546D0();
  v10 = (*(a2 + 16) + **(a2 + 16));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5841FC4;

  return v10(a3, a4);
}

uint64_t sub_1E584256C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5841FC4;

  return v6();
}

uint64_t sub_1E5842674(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E584277C;

  return v6();
}

uint64_t sub_1E584277C()
{

  v1 = sub_1E58546C0();

  return MEMORY[0x1EEE6DFA0](sub_1E58432E4, v1, v0);
}

uint64_t sub_1E58428B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E5842674(a1, v1 + 16);
}

void *sub_1E5842990(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E00, &unk_1E5855AF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910) - 8);
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

uint64_t sub_1E5842B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E584256C(a1, v1 + 16);
}

uint64_t sub_1E5842C18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5842C2C(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58432DC;

  return sub_1E584244C(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5842CD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5842D70;

  return sub_1E5842120(a1, (v1 + 16));
}

uint64_t sub_1E5842D70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E5842EBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E5841EBC(a1, v1 + 16);
}

unint64_t sub_1E5842F58()
{
  result = qword_1EE2F86D0;
  if (!qword_1EE2F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86D0);
  }

  return result;
}

unint64_t sub_1E5842FB0()
{
  result = qword_1EE2F86D8;
  if (!qword_1EE2F86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86D8);
  }

  return result;
}

unint64_t sub_1E5843008()
{
  result = qword_1EE2F8A90;
  if (!qword_1EE2F8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A90);
  }

  return result;
}

unint64_t sub_1E5843060()
{
  result = qword_1EE2F87D8[0];
  if (!qword_1EE2F87D8[0])
  {
    type metadata accessor for SampleContentState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F87D8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E58430D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E584311C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FitnessSampleContent0bC7FeatureV14TaskIdentifier33_EEDECBAFDAB7E1FD33325F9685F0140CLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E58431A4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E58431F8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1E5843254(void *result, int a2)
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

unint64_t sub_1E5843288()
{
  result = qword_1EE2F85D0;
  if (!qword_1EE2F85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F85D0);
  }

  return result;
}

uint64_t SampleContentSummaryCardItemContext.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x1E692EEF0](1);
    return MEMORY[0x1E692EEF0](v2 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);

    return sub_1E5854680();
  }
}

uint64_t SampleContentSummaryCardItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1E5854890();
  if (v2)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

uint64_t sub_1E58433F4()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1E5854890();
  if (v2)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

uint64_t sub_1E5843478(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x1E692EEF0](1);
    return MEMORY[0x1E692EEF0](v2 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);

    return sub_1E5854680();
  }
}

uint64_t sub_1E58434FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1E5854890();
  if (v3)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v2 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

BOOL _s20FitnessSampleContent0bC22SummaryCardItemContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4)
  {
    if (a2[2])
    {
      sub_1E5843814(*a1, v3, 1);
      sub_1E5843814(v5, v6, 1);
      return ((v5 ^ v2) & 1) == 0;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {

LABEL_6:
    sub_1E5843804(v5, v6, v7);
    sub_1E5843814(v2, v3, v4);
    sub_1E5843814(v5, v6, v7);
    return 0;
  }

  v9 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1E5843804(v9, v3, 0);
    sub_1E5843804(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    return 1;
  }

  else
  {
    v11 = sub_1E5854840();
    sub_1E5843804(v5, v6, 0);
    sub_1E5843804(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    sub_1E5843814(v5, v6, 0);
    return v11 & 1;
  }
}

unint64_t sub_1E58436E8()
{
  result = qword_1EE2F88A0[0];
  if (!qword_1EE2F88A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F88A0);
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

uint64_t sub_1E584375C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E58437A4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5843804(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5843814(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t SampleContentSummaryCardErrorItem.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SampleContentSummaryCardErrorItem.description.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SampleContentSummaryCardErrorItem.buttonTitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall SampleContentSummaryCardErrorItem.init(context:title:description:buttonTitle:)(FitnessSampleContent::SampleContentSummaryCardErrorItem *__return_ptr retstr, FitnessSampleContent::SampleContentSummaryCardErrorItemContext context, Swift::String title, Swift::String description, Swift::String buttonTitle)
{
  retstr->context = *context;
  retstr->title = title;
  retstr->description = description;
  retstr->buttonTitle = buttonTitle;
}

uint64_t SampleContentSummaryCardErrorItem.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E692EEF0](*v1);
  sub_1E5854680();
  sub_1E5854680();

  return sub_1E5854680();
}

uint64_t SampleContentSummaryCardErrorItem.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5843A04()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5843AA0(uint64_t a1)
{
  MEMORY[0x1E692EEF0](*v1);
  sub_1E5854680();
  sub_1E5854680();

  return sub_1E5854680();
}

uint64_t sub_1E5843B2C(uint64_t a1)
{
  v2 = *v1;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v2);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC20SummaryCardErrorItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  if ((v3 != v7 || v5 != v8) && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1E5854840();
}

unint64_t sub_1E5843CD4()
{
  result = qword_1ECFF5E08;
  if (!qword_1ECFF5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E08);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5843D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E5843D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static SampleContentShelfDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SampleContentShelfDescriptor(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1E58446AC(v5, v6);
}

uint64_t type metadata accessor for SampleContentShelfDescriptor(uint64_t a1)
{
  result = qword_1EE2F8A50;
  if (!qword_1EE2F8A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentShelfDescriptor.init(subtitle:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5853EB0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SampleContentShelfDescriptor(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1E5843F10()
{
  if (*v0)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656C746974627573;
  }
}

uint64_t sub_1E5843F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E5844020(uint64_t a1)
{
  v2 = sub_1E584491C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584405C(uint64_t a1)
{
  v2 = sub_1E584491C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentShelfDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E10, &unk_1E5855CF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584491C();
  sub_1E58548E0();
  v12 = 0;
  sub_1E5853EB0();
  sub_1E5844A0C(&qword_1EE2F8AB8, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  sub_1E5854820();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SampleContentShelfDescriptor(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
    sub_1E5844970(&qword_1EE2F8468, &qword_1EE2F8880, &protocol conformance descriptor for SampleContentItem, MEMORY[0x1E69E6300]);
    sub_1E5854820();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SampleContentShelfDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1E5853EB0();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E18, &qword_1E5855D00);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584491C();
  sub_1E58548D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1E5844A0C(&qword_1ECFF5E20, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  v15 = v26;
  v16 = v24;
  sub_1E58547C0();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v28 = 1;
  sub_1E5844970(&qword_1ECFF5E28, &qword_1ECFF5E30, &protocol conformance descriptor for SampleContentItem, MEMORY[0x1E69E6330]);
  sub_1E58547C0();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1E58454A0(v18, v22, type metadata accessor for SampleContentShelfDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58453DC(v18, type metadata accessor for SampleContentShelfDescriptor);
}

uint64_t sub_1E58446AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1E58454A0(v13, v10, type metadata accessor for SampleContentItem);
      sub_1E58454A0(v14, v7, type metadata accessor for SampleContentItem);
      if ((_s20FitnessSampleContent0bC7ArtworkO2eeoiySbAC_ACtFZ_0(v10, v7) & 1) == 0 || (sub_1E5853EA0() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_1E5854840() & 1) == 0 || v10[*(v4 + 28)] != v7[*(v4 + 28)] || (sub_1E5853EA0() & 1) == 0)
      {
        break;
      }

      v21 = sub_1E5853EA0();
      sub_1E58453DC(v7, type metadata accessor for SampleContentItem);
      sub_1E58453DC(v10, type metadata accessor for SampleContentItem);
      if (v21)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_1E58453DC(v7, type metadata accessor for SampleContentItem);
    sub_1E58453DC(v10, type metadata accessor for SampleContentItem);
    goto LABEL_19;
  }

  v21 = 1;
  return v21 & 1;
}

unint64_t sub_1E584491C()
{
  result = qword_1EE2F8A88;
  if (!qword_1EE2F8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A88);
  }

  return result;
}

uint64_t sub_1E5844970(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
    sub_1E5844A0C(a2, type metadata accessor for SampleContentItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5844A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5844A54(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for SampleContentItem(0);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  MEMORY[0x1EEE9AC00](v59);
  v6 = &v46 - v5;
  v58 = type metadata accessor for SampleContentSummaryCardItem(0);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v46 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v46 - v14;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v46 = v15;
  v47 = &v46 - v14;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v51 = *(v13 + 72);
  v21 = v57;
  v48 = v12;
  v49 = v6;
  while (1)
  {
    sub_1E58454A0(v19, v16, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58454A0(v20, v12, type metadata accessor for SampleContentSummaryCardItem);
    v22 = &v6[*(v59 + 48)];
    sub_1E58454A0(v16, v6, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58454A0(v12, v22, type metadata accessor for SampleContentSummaryCardItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v24 = v46;
      sub_1E58454A0(v6, v46, type metadata accessor for SampleContentSummaryCardItem);
      v26 = v24[1];
      v25 = v24[2];
      v27 = v24[3];
      v55 = v24[4];
      v56 = v25;
      v28 = v24[5];
      v29 = v24[6];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v12 = v48;
        v6 = v49;
        v16 = v47;
        goto LABEL_38;
      }

      v30 = *v24;
      v31 = *v22;
      v32 = *(v22 + 2);
      v53 = *(v22 + 4);
      v54 = v32;
      v33 = *(v22 + 6);
      if (v30 != v31 || ((v34 = *(v22 + 1), v35 = *(v22 + 3), v36 = *(v22 + 5), v26 != v34) || v56 != v54) && (sub_1E5854840() & 1) == 0 || (v27 != v35 || v55 != v53) && (sub_1E5854840() & 1) == 0)
      {

        v12 = v48;
        v6 = v49;
        v16 = v47;
        goto LABEL_35;
      }

      if (v28 == v36 && v29 == v33)
      {

        v12 = v48;
        v6 = v49;
        v16 = v47;
        v21 = v57;
      }

      else
      {
        v44 = sub_1E5854840();

        v12 = v48;
        v6 = v49;
        v16 = v47;
        v21 = v57;
        if ((v44 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_38;
    }

LABEL_6:
    sub_1E58453DC(v6, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58453DC(v12, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58453DC(v16, type metadata accessor for SampleContentSummaryCardItem);
    v20 += v51;
    v19 += v51;
    if (!--v17)
    {
      return 1;
    }
  }

  v37 = v52;
  sub_1E58454A0(v6, v52, type metadata accessor for SampleContentSummaryCardItem);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1E584543C(v22, v21);
    v38 = static SampleContentArtwork.== infix(_:_:)(v37, v21);
    v39 = v50;
    if ((v38 & 1) == 0 || (sub_1E5853EA0() & 1) == 0 || ((v40 = *(v39 + 24), v41 = *(v37 + v40), v42 = *(v37 + v40 + 8), v43 = (v21 + v40), v41 != *v43) || v42 != v43[1]) && (sub_1E5854840() & 1) == 0 || *(v37 + *(v39 + 28)) != *(v21 + *(v39 + 28)) || (sub_1E5853EA0() & 1) == 0 || (sub_1E5853EA0() & 1) == 0)
    {
      sub_1E58453DC(v21, type metadata accessor for SampleContentItem);
      sub_1E58453DC(v37, type metadata accessor for SampleContentItem);
LABEL_35:
      sub_1E58453DC(v6, type metadata accessor for SampleContentSummaryCardItem);
      goto LABEL_39;
    }

    sub_1E58453DC(v21, type metadata accessor for SampleContentItem);
    sub_1E58453DC(v37, type metadata accessor for SampleContentItem);
    goto LABEL_6;
  }

  sub_1E58453DC(v37, type metadata accessor for SampleContentItem);
LABEL_38:
  sub_1E5845374(v6);
LABEL_39:
  sub_1E58453DC(v12, type metadata accessor for SampleContentSummaryCardItem);
  sub_1E58453DC(v16, type metadata accessor for SampleContentSummaryCardItem);
  return 0;
}

uint64_t sub_1E58450F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E58446AC(v7, v8);
}

void sub_1E5845180(uint64_t a1)
{
  sub_1E5853EB0();
  if (v1 <= 0x3F)
  {
    sub_1E5845204(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5845204(uint64_t a1)
{
  if (!qword_1EE2F8470)
  {
    type metadata accessor for SampleContentItem(255);
    v1 = sub_1E58546B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2F8470);
    }
  }
}

unint64_t sub_1E5845270()
{
  result = qword_1ECFF5E38;
  if (!qword_1ECFF5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E38);
  }

  return result;
}

unint64_t sub_1E58452C8()
{
  result = qword_1EE2F8A78;
  if (!qword_1EE2F8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A78);
  }

  return result;
}

unint64_t sub_1E5845320()
{
  result = qword_1EE2F8A80;
  if (!qword_1EE2F8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A80);
  }

  return result;
}

uint64_t sub_1E5845374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58453DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E584543C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58454A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5845508()
{
  v1 = *v0;
  v2 = 0x707061546D657469;
  v3 = 0xD000000000000014;
  if (v1 != 3)
  {
    v3 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000017;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E58455C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5846FB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58455F4(uint64_t a1)
{
  v2 = sub_1E5845EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845630(uint64_t a1)
{
  v2 = sub_1E5845EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584566C(uint64_t a1)
{
  v2 = sub_1E5846094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58456A8(uint64_t a1)
{
  v2 = sub_1E5846094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58456E4(uint64_t a1)
{
  v2 = sub_1E5846040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845720(uint64_t a1)
{
  v2 = sub_1E5846040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5845778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5845808(uint64_t a1)
{
  v2 = sub_1E5845FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845844(uint64_t a1)
{
  v2 = sub_1E5845FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5845880(uint64_t a1)
{
  v2 = sub_1E5845F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58458BC(uint64_t a1)
{
  v2 = sub_1E5845F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58458F8(uint64_t a1)
{
  v2 = sub_1E5845F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845934(uint64_t a1)
{
  v2 = sub_1E5845F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E48, &qword_1E5855EC0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = v24 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E50, &qword_1E5855EC8);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = v24 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E58, &qword_1E5855ED0);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E60, &qword_1E5855ED8);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E68, &qword_1E5855EE0);
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E70, &qword_1E5855EE8);
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v17 = *v2;
  v18 = v2[1];
  v24[1] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5845EF0();
  sub_1E58548E0();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v41 = 3;
      sub_1E5845F98();
      v23 = v29;
      sub_1E58547E0();
      (*(v31 + 8))(v23, v33);
      return (*(v37 + 8))(v16, v14);
    }

    if (v18 == 3)
    {
      v42 = 4;
      sub_1E5845F44();
      v19 = v34;
      sub_1E58547E0();
      (*(v35 + 8))(v19, v36);
      return (*(v37 + 8))(v16, v14);
    }

LABEL_8:
    v40 = 2;
    sub_1E5845FEC();
    v20 = v28;
    sub_1E58547E0();
    v21 = v32;
    sub_1E5854800();
    (*(v30 + 8))(v20, v21);
    return (*(v37 + 8))(v16, v14);
  }

  if (!v18)
  {
    v38 = 0;
    sub_1E5846094();
    sub_1E58547E0();
    (*(v25 + 8))(v13, v11);
    return (*(v37 + 8))(v16, v14);
  }

  if (v18 != 1)
  {
    goto LABEL_8;
  }

  v39 = 1;
  sub_1E5846040();
  sub_1E58547E0();
  (*(v26 + 8))(v10, v27);
  return (*(v37 + 8))(v16, v14);
}

unint64_t sub_1E5845EF0()
{
  result = qword_1EE2F8728[0];
  if (!qword_1EE2F8728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F8728);
  }

  return result;
}

unint64_t sub_1E5845F44()
{
  result = qword_1EE2F8700;
  if (!qword_1EE2F8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8700);
  }

  return result;
}

unint64_t sub_1E5845F98()
{
  result = qword_1ECFF5E78;
  if (!qword_1ECFF5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E78);
  }

  return result;
}

unint64_t sub_1E5845FEC()
{
  result = qword_1ECFF5E80;
  if (!qword_1ECFF5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E80);
  }

  return result;
}

unint64_t sub_1E5846040()
{
  result = qword_1ECFF5E88;
  if (!qword_1ECFF5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E88);
  }

  return result;
}

unint64_t sub_1E5846094()
{
  result = qword_1ECFF5E90;
  if (!qword_1ECFF5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E90);
  }

  return result;
}

uint64_t SampleContentAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E98, &qword_1E5855EF0);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v36 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EA0, &qword_1E5855EF8);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v49 = &v36 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EA8, &qword_1E5855F00);
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EB0, &qword_1E5855F08);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EB8, &qword_1E5855F10);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EC0, &qword_1E5855F18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5845EF0();
  v17 = v51;
  sub_1E58548D0();
  if (!v17)
  {
    v18 = v11;
    v37 = v9;
    v20 = v48;
    v19 = v49;
    v51 = v13;
    v21 = v50;
    v22 = sub_1E58547D0();
    v23 = (2 * *(v22 + 16)) | 1;
    v53 = v22;
    v54 = v22 + 32;
    v55 = 0;
    v56 = v23;
    v24 = sub_1E5835ED0();
    if (v24 == 5 || v55 != v56 >> 1)
    {
      v28 = sub_1E5854750();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20);
      *v30 = &type metadata for SampleContentAction;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v51 + 8))(v15, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24 <= 1u)
      {
        if (v24)
        {
          v57 = 1;
          sub_1E5846040();
          sub_1E5854770();
          (*(v40 + 8))(v8, v41);
          (*(v51 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 1;
        }

        else
        {
          v57 = 0;
          sub_1E5846094();
          sub_1E5854770();
          (*(v38 + 8))(v18, v37);
          (*(v51 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 0;
        }
      }

      else if (v24 == 2)
      {
        v57 = 2;
        sub_1E5845FEC();
        sub_1E5854770();
        v32 = v51;
        v33 = v39;
        v26 = sub_1E58547A0();
        v27 = v35;
        (*(v44 + 8))(v20, v33);
        (*(v32 + 8))(v15, v12);
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = v51;
        if (v24 == 3)
        {
          v57 = 3;
          sub_1E5845F98();
          sub_1E5854770();
          (*(v45 + 8))(v19, v43);
          (*(v25 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 2;
        }

        else
        {
          v57 = 4;
          sub_1E5845F44();
          v34 = v47;
          sub_1E5854770();
          (*(v42 + 8))(v34, v46);
          (*(v25 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 3;
        }
      }

      *v21 = v26;
      v21[1] = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t get_enum_tag_for_layout_string_20FitnessSampleContent0bC6ActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SampleContentAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5846AEC()
{
  result = qword_1ECFF5EC8;
  if (!qword_1ECFF5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EC8);
  }

  return result;
}

unint64_t sub_1E5846B44()
{
  result = qword_1ECFF5ED0;
  if (!qword_1ECFF5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5ED0);
  }

  return result;
}

unint64_t sub_1E5846B9C()
{
  result = qword_1ECFF5ED8;
  if (!qword_1ECFF5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5ED8);
  }

  return result;
}

unint64_t sub_1E5846BF4()
{
  result = qword_1ECFF5EE0;
  if (!qword_1ECFF5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EE0);
  }

  return result;
}

unint64_t sub_1E5846C4C()
{
  result = qword_1EE2F86E0;
  if (!qword_1EE2F86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86E0);
  }

  return result;
}

unint64_t sub_1E5846CA4()
{
  result = qword_1EE2F86E8;
  if (!qword_1EE2F86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86E8);
  }

  return result;
}

unint64_t sub_1E5846CFC()
{
  result = qword_1EE2F8708;
  if (!qword_1EE2F8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8708);
  }

  return result;
}

unint64_t sub_1E5846D54()
{
  result = qword_1EE2F8710;
  if (!qword_1EE2F8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8710);
  }

  return result;
}

unint64_t sub_1E5846DAC()
{
  result = qword_1ECFF5EE8;
  if (!qword_1ECFF5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EE8);
  }

  return result;
}

unint64_t sub_1E5846E04()
{
  result = qword_1ECFF5EF0;
  if (!qword_1ECFF5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EF0);
  }

  return result;
}

unint64_t sub_1E5846E5C()
{
  result = qword_1EE2F86F0;
  if (!qword_1EE2F86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86F0);
  }

  return result;
}

unint64_t sub_1E5846EB4()
{
  result = qword_1EE2F86F8;
  if (!qword_1EE2F86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86F8);
  }

  return result;
}

unint64_t sub_1E5846F0C()
{
  result = qword_1EE2F8718;
  if (!qword_1EE2F8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8718);
  }

  return result;
}

unint64_t sub_1E5846F64()
{
  result = qword_1EE2F8720;
  if (!qword_1EE2F8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8720);
  }

  return result;
}

uint64_t sub_1E5846FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001E5857AF0 == a2;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5857B10 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5857B30 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5854840();

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

void sub_1E5847184()
{
  *&xmmword_1ECFF5EF8 = &unk_1E5856538;
  *(&xmmword_1ECFF5EF8 + 1) = 0;
  qword_1ECFF5F08 = &unk_1E5856540;
  unk_1ECFF5F10 = 0;
  *&xmmword_1ECFF5F18 = &unk_1E5856548;
  *(&xmmword_1ECFF5F18 + 1) = 0;
  qword_1ECFF5F28 = &unk_1E5856550;
  unk_1ECFF5F30 = 0;
  *&xmmword_1ECFF5F38 = &unk_1E5856558;
  *(&xmmword_1ECFF5F38 + 1) = 0;
}

uint64_t static SampleContentEnvironment.preview.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1ECFF58C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1ECFF5F28;
  v8[2] = xmmword_1ECFF5F18;
  v8[3] = *&qword_1ECFF5F28;
  v2 = xmmword_1ECFF5F38;
  v8[4] = xmmword_1ECFF5F38;
  v4 = xmmword_1ECFF5EF8;
  v3 = *&qword_1ECFF5F08;
  v8[0] = xmmword_1ECFF5EF8;
  v8[1] = *&qword_1ECFF5F08;
  a1[2] = xmmword_1ECFF5F18;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_1E584729C(v8, &v7);
}

uint64_t sub_1E58472FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5854210();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5854220();
}

uint64_t sub_1E58473F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5854210();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5854220();
}

uint64_t sub_1E58474EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA0, "0*");
  v5 = sub_1E5849880();

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5847558(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5853FA0();
  sub_1E5853F90();
  return v2;
}

uint64_t SampleContentSummaryCardView.init(store:summaryWorkoutsCardViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a7 = sub_1E583EBB0;
  *(a7 + 8) = v12;
  *(a7 + 16) = 0;
  type metadata accessor for SampleContentSummaryCardView(0, a5, a6, v13);
  swift_getFunctionTypeMetadata1();
  return sub_1E5853F80();
}

uint64_t SampleContentSummaryCardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = *(a1 - 8);
  v35 = *(v34 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  sub_1E5854230();
  v28 = v5;
  sub_1E5854230();
  sub_1E5854230();
  v6 = *(a1 + 24);
  v46 = v6;
  v47 = v6;
  WitnessTable = swift_getWitnessTable();
  v44 = WitnessTable;
  v45 = v6;
  v8 = swift_getWitnessTable();
  v42 = WitnessTable;
  v43 = v8;
  swift_getWitnessTable();
  v9 = sub_1E5854520();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1E5854090();
  v32 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v27 - v16;
  v37 = v5;
  v38 = v6;
  v17 = v30;
  v39 = v30;
  sub_1E5854570();
  sub_1E5854510();
  v19 = v33;
  v18 = v34;
  (*(v34 + 16))(v33, v17, a1);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  *(v21 + 24) = v6;
  (*(v18 + 32))(v21 + v20, v19, a1);
  v22 = swift_getWitnessTable();
  v23 = v15;
  sub_1E5854410();

  (*(v31 + 8))(v11, v9);
  v40 = v22;
  v41 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v24 = v29;
  sub_1E584108C();
  v25 = *(v32 + 8);
  v25(v23, v12);
  sub_1E584108C();
  return (v25)(v24, v12);
}

uint64_t sub_1E5847AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v134 - v7;
  v135 = type metadata accessor for SampleContentShelfDescriptor(0);
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5854230();
  v10 = sub_1E5854230();
  v143 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v142 = (&v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v141 = &v134 - v14;
  v146 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v145 = (&v134 - v15);
  v16 = sub_1E5853EE0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1E5853F70();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v159 = type metadata accessor for SampleContentSummaryCardItem(0);
  v147 = *(v159 - 1);
  v19 = MEMORY[0x1EEE9AC00](v159);
  v21 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v134 - v23);
  v149 = *(a2 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v136 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v137 = &v134 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v144 = (&v134 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v134 - v31;
  v153 = v9;
  v154 = v10;
  v32 = sub_1E5854230();
  v151 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v150 = &v134 - v33;
  v148 = a2;
  v155 = a3;
  v35 = type metadata accessor for SampleContentSummaryCardView(0, a2, a3, v34);
  v158 = a1;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v152 = v32;
  if (v168 == 1)
  {
    v142 = sub_1E5847558(v35);
    v143 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    *v24 = 0xD00000000000001DLL;
    v24[1] = 0x80000001E5857A70;
    if (qword_1EE2F8460 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE2F8AC0;
    sub_1E584057C();
    v38 = v37;
    sub_1E5853FE0();
    sub_1E5853FB0();
    type metadata accessor for SampleContentArtwork(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5854620();
    v39 = v38;
    sub_1E5853F60();
    v40 = v39;
    sub_1E5854650();
    sub_1E5853ED0();
    v41 = type metadata accessor for SampleContentItem(0);
    sub_1E5853EC0();
    sub_1E5854620();
    sub_1E58474EC();
    swift_getKeyPath();
    sub_1E58545E0();

    sub_1E5854650();
    sub_1E5853ED0();
    sub_1E5853EC0();
    sub_1E5854620();
    sub_1E58474EC();
    swift_getKeyPath();
    sub_1E58545E0();

    sub_1E5854650();
    sub_1E5853ED0();
    sub_1E5853EC0();
    v42 = (v24 + *(v41 + 24));
    *v42 = 0x77656976657270;
    v42[1] = 0xE700000000000000;
    *(v24 + *(v41 + 28)) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
    v43 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1E58553F0;
    sub_1E584994C(v24, v44 + v43, type metadata accessor for SampleContentSummaryCardItem);
    v168 = v44;
    LOBYTE(v169) = 0;
    v45 = v144;
    v142(&v168);

    v46 = v148;
    v47 = v155;
    sub_1E584108C();
    v159 = *(v149 + 8);
    v159(v45, v46);
    sub_1E584108C();
    v48 = v145;
    sub_1E58472FC(v45, v46, v46, v47, v47);
    v162 = v47;
    v163 = v47;
    v49 = v153;
    WitnessTable = swift_getWitnessTable();
    v160 = WitnessTable;
    v161 = v47;
    goto LABEL_10;
  }

  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  if (v168 != 1)
  {
    sub_1E58474EC();
    swift_getKeyPath();
    v71 = v140;
    sub_1E58545E0();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v76 = sub_1E5847558(v35);
      swift_storeEnumTagMultiPayload();
      sub_1E58474EC();
      swift_getKeyPath();
      sub_1E58545E0();

      v77 = v168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
      v78 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1E58553F0;
      sub_1E584994C(v24, v79 + v78, type metadata accessor for SampleContentSummaryCardItem);
      v168 = v79;
      LOBYTE(v169) = (v77 & 1) == 0;
      v80 = v144;
      v76(&v168);

      v81 = v157;
      v82 = v148;
      v47 = v155;
      sub_1E584108C();
      v83 = *(v149 + 8);
      v83(v80, v82);
      sub_1E584108C();
      v84 = v145;
      sub_1E58472FC(v80, v82, v82, v47, v47);
      v170 = v47;
      v171 = v47;
      v85 = v153;
      v86 = swift_getWitnessTable();
      v87 = v141;
      sub_1E58472FC(v84, v85, v82, v86, v47);
      (*(v146 + 8))(v84, v85);
      v83(v80, v82);
      v88 = v81;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1E58498E4(v71);
          v145 = sub_1E5847558(v35);
          v146 = v100;
          sub_1E5854620();
          if (qword_1EE2F8460 != -1)
          {
            swift_once();
          }

          v101 = qword_1EE2F8AC0;
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v102 = v101;
          v140 = sub_1E5854650();
          v139 = v103;
          sub_1E5854620();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v104 = sub_1E5854650();
          v106 = v105;
          sub_1E5854620();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v107 = sub_1E5854650();
          *v24 = 1;
          v108 = v139;
          v24[1] = v140;
          v24[2] = v108;
          v24[3] = v104;
          v24[4] = v106;
          v24[5] = v107;
          v24[6] = v109;
          swift_storeEnumTagMultiPayload();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v110 = v168;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
          v111 = (*(v147 + 80) + 32) & ~*(v147 + 80);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_1E58553F0;
          sub_1E584994C(v24, v112 + v111, type metadata accessor for SampleContentSummaryCardItem);
          v168 = v112;
          LOBYTE(v169) = (v110 & 1) == 0;
          v113 = v144;
          v145(&v168);

          v114 = v157;
          v115 = v148;
          v47 = v155;
          sub_1E584108C();
          v83 = *(v149 + 8);
          v83(v113, v115);
          sub_1E584108C();
          v184 = v47;
          v185 = v47;
          v85 = v153;
          v116 = swift_getWitnessTable();
          v87 = v141;
          sub_1E58473F4(v113, v85, v115, v116, v47);
          v83(v113, v115);
          v88 = v114;
          v117 = v115;
          goto LABEL_29;
        }

        v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
        v74 = v138;
        sub_1E584994C(v71, v138, type metadata accessor for SampleContentShelfDescriptor);
        v75 = sub_1E5853F00();
        (*(*(v75 - 8) + 8))(v71 + v73, v75);
      }

      else
      {
        v74 = v138;
        sub_1E584994C(v71, v138, type metadata accessor for SampleContentShelfDescriptor);
      }

      v89 = sub_1E5847558(v35);
      v90 = v89;
      v91 = *(v74 + *(v135 + 20));
      v92 = *(v91 + 16);
      if (v92)
      {
        v144 = v89;
        v168 = MEMORY[0x1E69E7CC0];
        sub_1E58499B4(0, v92, 0);
        v93 = v168;
        v94 = *(type metadata accessor for SampleContentItem(0) - 8);
        v95 = v91 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
        v96 = *(v94 + 72);
        v97 = v147;
        do
        {
          sub_1E58407F8(v95, v21);
          swift_storeEnumTagMultiPayload();
          v168 = v93;
          v99 = *(v93 + 16);
          v98 = *(v93 + 24);
          if (v99 >= v98 >> 1)
          {
            sub_1E58499B4((v98 > 1), v99 + 1, 1);
            v97 = v147;
            v93 = v168;
          }

          *(v93 + 16) = v99 + 1;
          sub_1E584994C(v21, v93 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v99, type metadata accessor for SampleContentSummaryCardItem);
          v95 += v96;
          --v92;
        }

        while (v92);
        sub_1E58499D4(v138);
        v90 = v144;
      }

      else
      {
        sub_1E58499D4(v74);
        v93 = MEMORY[0x1E69E7CC0];
      }

      sub_1E58474EC();
      swift_getKeyPath();
      sub_1E58545E0();

      v118 = (v168 & 1) == 0;
      v168 = v93;
      LOBYTE(v169) = v118;
      v119 = v136;
      v90(&v168);

      v120 = v137;
      v82 = v148;
      v47 = v155;
      sub_1E584108C();
      v83 = *(v149 + 8);
      v83(v119, v82);
      v121 = v157;
      sub_1E584108C();
      v122 = v145;
      sub_1E58473F4(v121, v82, v82, v47, v47);
      v172 = v47;
      v173 = v47;
      v85 = v153;
      v123 = swift_getWitnessTable();
      v87 = v141;
      sub_1E58472FC(v122, v85, v82, v123, v47);
      (*(v146 + 8))(v122, v85);
      v83(v121, v82);
      v88 = v120;
    }

    v117 = v82;
LABEL_29:
    v83(v88, v117);
    v124 = v154;
    v69 = v150;
    v182 = v47;
    v183 = v47;
    v125 = swift_getWitnessTable();
    v180 = v125;
    v181 = v47;
    v126 = swift_getWitnessTable();
    v127 = v142;
    sub_1E584108C();
    sub_1E58473F4(v127, v85, v124, v125, v126);
    v128 = *(v143 + 8);
    v128(v127, v124);
    v128(v87, v124);
    goto LABEL_30;
  }

  v168 = 0;
  v169 = 0xE000000000000000;
  sub_1E5854730();

  v168 = 0xD000000000000017;
  v169 = 0x80000001E5857BC0;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v51 = sub_1E5854660();
  v53 = v52;

  MEMORY[0x1E692ECE0](v51, v53);

  MEMORY[0x1E692ECE0](0xD000000000000017, 0x80000001E5857BE0);
  v141 = v168;
  v140 = v169;
  v142 = sub_1E5847558(v35);
  v143 = v54;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v55 = qword_1EE2F8AC0;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v56 = v55;
  v139 = sub_1E5854650();
  v138 = v57;
  sub_1E5854640();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v58 = sub_1E5854650();
  v60 = v59;
  sub_1E5854620();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v61 = sub_1E5854650();
  *v24 = 0;
  v62 = v138;
  v24[1] = v139;
  v24[2] = v62;
  v24[3] = v58;
  v24[4] = v60;
  v24[5] = v61;
  v24[6] = v63;
  swift_storeEnumTagMultiPayload();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v64 = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v65 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1E58553F0;
  sub_1E584994C(v24, v66 + v65, type metadata accessor for SampleContentSummaryCardItem);
  v168 = v66;
  LOBYTE(v169) = (v64 & 1) == 0;
  v45 = v144;
  v142(&v168);

  v46 = v148;
  v47 = v155;
  sub_1E584108C();
  v159 = *(v149 + 8);
  v159(v45, v46);
  sub_1E584108C();
  v48 = v145;
  sub_1E58473F4(v45, v46, v46, v47, v47);
  v166 = v47;
  v167 = v47;
  v49 = v153;
  WitnessTable = swift_getWitnessTable();
  v164 = WitnessTable;
  v165 = v47;
LABEL_10:
  v67 = v154;
  v68 = swift_getWitnessTable();
  v69 = v150;
  sub_1E58472FC(v48, v49, v67, WitnessTable, v68);
  (*(v146 + 8))(v48, v49);
  v70 = v159;
  v159(v45, v46);
  v70(v157, v46);
LABEL_30:
  v129 = v151;
  v178 = v47;
  v179 = v47;
  v130 = swift_getWitnessTable();
  v176 = v130;
  v177 = v47;
  v131 = swift_getWitnessTable();
  v174 = v130;
  v175 = v131;
  v132 = v152;
  swift_getWitnessTable();
  sub_1E584108C();
  return (*(v129 + 8))(v69, v132);
}

uint64_t sub_1E5849690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SampleContentSummaryCardView(0, a2, a3, a4);
  sub_1E58474EC();
  sub_1E58545F0();
}

uint64_t sub_1E58496E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for SampleContentSummaryCardView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E5849690(v9, v5, v6, v7);
}

void sub_1E58497B8(uint64_t a1)
{
  sub_1E583F4B8(319);
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    sub_1E5853FA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E5849880()
{
  result = qword_1EE2F8480;
  if (!qword_1EE2F8480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BA0, "0*");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8480);
  }

  return result;
}

uint64_t sub_1E58498E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E584994C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1E58499B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E5849A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E58499D4(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentShelfDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E5849A30(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v10 = *(type metadata accessor for SampleContentSummaryCardItem(0) - 8);
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
  v15 = *(type metadata accessor for SampleContentSummaryCardItem(0) - 8);
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

uint64_t SampleContentState.init(activeStorefrontLocale:identifier:isEditModeActive:isPreviewModeActive:loadState:networkConditions:wlanStandards:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_1E5853F70();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SampleContentState(0);
  v20 = v19[5];
  v21 = sub_1E5853F40();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v19[6]) = a3;
  *(a9 + v19[7]) = a4;
  result = sub_1E5849D70(a5, a9 + v19[10]);
  *(a9 + v19[8]) = a6;
  v23 = (a9 + v19[9]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t type metadata accessor for SampleContentState(uint64_t a1)
{
  result = qword_1EE2F87C8;
  if (!qword_1EE2F87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5849D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5853F70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SampleContentState.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentState(0) + 20);
  v4 = sub_1E5853F40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentState.wlanStandards.getter()
{
  v1 = *(v0 + *(type metadata accessor for SampleContentState(0) + 36));

  return v1;
}

uint64_t SampleContentState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SampleContentState(0) + 40);

  return sub_1E5849FB4(v3, a1);
}

uint64_t sub_1E5849FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SampleContentState(0) + 40);

  return sub_1E584A068(a1, v3);
}

uint64_t sub_1E584A068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E584A120()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v2 = 0x6E6174536E616C77;
    if (v1 != 5)
    {
      v2 = 0x7461745364616F6CLL;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E584A224@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E584B48C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E584A258(uint64_t a1)
{
  v2 = sub_1E584A60C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584A294(uint64_t a1)
{
  v2 = sub_1E584A60C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F50, &qword_1E58566E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584A60C();
  sub_1E58548E0();
  v11[15] = 0;
  sub_1E5853F70();
  sub_1E584B1EC(&qword_1ECFF5F60, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
  sub_1E5854820();
  if (!v2)
  {
    v9 = type metadata accessor for SampleContentState(0);
    v11[14] = 1;
    sub_1E5853F40();
    sub_1E584B1EC(&qword_1ECFF5F68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5854820();
    v11[13] = 2;
    sub_1E5854810();
    v11[12] = 3;
    sub_1E5854810();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_1E584A660();
    sub_1E5854820();
    v11[9] = 5;
    sub_1E5854800();
    v11[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    sub_1E584AD70(&qword_1ECFF5F78, MEMORY[0x1E6999B20]);
    sub_1E5854820();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E584A60C()
{
  result = qword_1ECFF5F58;
  if (!qword_1ECFF5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F58);
  }

  return result;
}

unint64_t sub_1E584A660()
{
  result = qword_1ECFF5F70;
  if (!qword_1ECFF5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F70);
  }

  return result;
}

uint64_t SampleContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v27 - v3;
  v4 = sub_1E5853F40();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5853F70();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F80, &qword_1E58566F0);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v27 - v9;
  v11 = type metadata accessor for SampleContentState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584A60C();
  v36 = v10;
  v14 = v38;
  sub_1E58548D0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v6;
  v38 = v11;
  v16 = v13;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v46 = 0;
  sub_1E584B1EC(&qword_1ECFF5F88, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  sub_1E58547C0();
  v20 = *(v17 + 32);
  v21 = v35;
  v35 = v7;
  v20(v16, v21, v7);
  v45 = 1;
  sub_1E584B1EC(&qword_1ECFF5F90, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1E58547C0();
  (*(v18 + 32))(v16 + v38[5], v15, v19);
  v44 = 2;
  *(v16 + v38[6]) = sub_1E58547B0() & 1;
  v43 = 3;
  *(v16 + v38[7]) = sub_1E58547B0() & 1;
  v41 = 4;
  sub_1E584AD1C();
  sub_1E58547C0();
  *(v16 + v38[8]) = v42;
  v40 = 5;
  v22 = sub_1E58547A0();
  v23 = (v16 + v38[9]);
  *v23 = v22;
  v23[1] = v24;
  v39 = 6;
  sub_1E584AD70(&qword_1ECFF5FA0, MEMORY[0x1E6999B30]);
  v25 = v30;
  sub_1E58547C0();
  (*(v34 + 8))(v36, v37);
  sub_1E5849D70(v25, v16 + v38[10]);
  sub_1E584AE44(v16, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E584AEA8(v16);
}

unint64_t sub_1E584AD1C()
{
  result = qword_1ECFF5F98;
  if (!qword_1ECFF5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F98);
  }

  return result;
}

uint64_t sub_1E584AD70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    sub_1E584B1EC(&qword_1ECFF5950, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);
    sub_1E584B1EC(&qword_1EE2F8A68, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E584AE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E584AEA8(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20FitnessSampleContent0bC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E692E5A0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SampleContentState(0);
  if ((sub_1E5853F20() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[10];
  v11 = type metadata accessor for SampleContentShelfDescriptor(0);
  v12 = sub_1E584B1EC(&qword_1EE2F8A60, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);

  return MEMORY[0x1EEE01AC0](a1 + v10, a2 + v10, v11, v12);
}

void sub_1E584B098(uint64_t a1)
{
  sub_1E5853F70();
  if (v1 <= 0x3F)
  {
    sub_1E5853F40();
    if (v2 <= 0x3F)
    {
      sub_1E584B158(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E584B158(uint64_t a1)
{
  if (!qword_1EE2F8488)
  {
    type metadata accessor for SampleContentShelfDescriptor(255);
    sub_1E584B1EC(&qword_1EE2F8A60, type metadata accessor for SampleContentShelfDescriptor, &protocol conformance descriptor for SampleContentShelfDescriptor);
    v1 = sub_1E58545B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2F8488);
    }
  }
}

uint64_t sub_1E584B1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SampleContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E584B388()
{
  result = qword_1ECFF5FA8;
  if (!qword_1ECFF5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FA8);
  }

  return result;
}

unint64_t sub_1E584B3E0()
{
  result = qword_1ECFF5FB0;
  if (!qword_1ECFF5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FB0);
  }

  return result;
}

unint64_t sub_1E584B438()
{
  result = qword_1ECFF5FB8;
  if (!qword_1ECFF5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FB8);
  }

  return result;
}

uint64_t sub_1E584B48C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001E5857C80 == a2;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5857CA0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5857CC0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5857CE0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6174536E616C77 && a2 == 0xED00007364726164 || (sub_1E5854840() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t SampleContentError.hashValue.getter()
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

unint64_t sub_1E584B76C()
{
  result = qword_1ECFF5FC0;
  if (!qword_1ECFF5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FC0);
  }

  return result;
}

uint64_t sub_1E584B7F0(uint64_t a1)
{
  v2 = sub_1E584BEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B82C(uint64_t a1)
{
  v2 = sub_1E584BEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B868()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1E584B8D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E584C00C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E584B904(uint64_t a1)
{
  v2 = sub_1E584BDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B940(uint64_t a1)
{
  v2 = sub_1E584BDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B97C(uint64_t a1)
{
  v2 = sub_1E584BE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B9B8(uint64_t a1)
{
  v2 = sub_1E584BE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B9F4(uint64_t a1)
{
  v2 = sub_1E584BE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584BA30(uint64_t a1)
{
  v2 = sub_1E584BE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkConditions.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FC8, "r3");
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FD0, &qword_1E58569B8);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FD8, &qword_1E58569C0);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FE0, &qword_1E58569C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584BDEC();
  sub_1E58548E0();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E584BE94();
      sub_1E58547E0();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E584BE40();
      v16 = v22;
      sub_1E58547E0();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E584BEE8();
    sub_1E58547E0();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E584BDEC()
{
  result = qword_1ECFF5FE8;
  if (!qword_1ECFF5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FE8);
  }

  return result;
}

unint64_t sub_1E584BE40()
{
  result = qword_1ECFF5FF0;
  if (!qword_1ECFF5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FF0);
  }

  return result;
}

unint64_t sub_1E584BE94()
{
  result = qword_1ECFF5FF8;
  if (!qword_1ECFF5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FF8);
  }

  return result;
}

unint64_t sub_1E584BEE8()
{
  result = qword_1ECFF6000;
  if (!qword_1ECFF6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6000);
  }

  return result;
}

uint64_t sub_1E584BF54@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E584C130(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NetworkConditions.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](a1);
  return sub_1E58548C0();
}

uint64_t sub_1E584C00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E584C130(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6058, &qword_1E5856DF0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6060, &qword_1E5856DF8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6068, &qword_1E5856E00);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6070, &qword_1E5856E08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E584BDEC();
  v13 = v34;
  sub_1E58548D0();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E58547D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5835F04();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E584BE94();
          sub_1E5854770();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E584BE40();
        v24 = v11;
        sub_1E5854770();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E584BEE8();
        v24 = v11;
        sub_1E5854770();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5854750();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20) + 48);
    *v22 = &type metadata for NetworkConditions;
    sub_1E5854780();
    sub_1E5854740();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E584C6A4()
{
  result = qword_1ECFF6008;
  if (!qword_1ECFF6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentArtwork.AssetCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentArtwork.AssetCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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