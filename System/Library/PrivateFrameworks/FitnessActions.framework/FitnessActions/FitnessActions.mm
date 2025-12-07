uint64_t sub_1E5B55A10(uint64_t a1)
{
  result = sub_1E5BF6384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SharingDetail(uint64_t a1)
{
  result = qword_1EE2C77C8;
  if (!qword_1EE2C77C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B55AF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B55BA8(uint64_t a1)
{
  v1 = sub_1E5BF71F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1E5B55C24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B55C5C(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5B55CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5B55D9C(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5B55E88(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v2 <= 0x3F)
  {
    result = sub_1E5BF6464();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B56010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B56084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B560D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B5613C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B56190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B561CC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5624C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B562BC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E5B562FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B56334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5BF6544();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5B563FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v7 = sub_1E5BF6544();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5B564B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CreatePlanAlertView(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1E5BF6884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  sub_1E5BF6D24();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B566DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CreatePlanAlertView(255, a1[1], a1[3], a4);
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B56770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5BF67E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5B567D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF6764();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B56828()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B56870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B5692C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B56A14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v6 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
      (*(*(v9 - 8) + 8))(v6, v9);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
      v11 = sub_1E5BF6464();
      (*(*(v11 - 8) + 8))(v6 + v10, v11);
      break;
    case 0:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
      (*(*(v8 - 8) + 8))(v6, v8);
      break;
  }

  v12 = swift_getEnumCaseMultiPayload();
  if (v12 != 2)
  {
    if (v12 == 1)
    {

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v14 = sub_1E5BF6464();
      (*(*(v14 - 8) + 8))(v0 + v5 + v13, v14);
      goto LABEL_13;
    }

    if (v12)
    {
      goto LABEL_13;
    }
  }

LABEL_13:

  return swift_deallocObject();
}

uint64_t sub_1E5B56D5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B56DF8()
{

  return swift_deallocObject();
}

void sub_1E5B56E38(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E5B86E54(v1);
}

uint64_t sub_1E5B56E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1E5B76870();
    swift_getFunctionTypeMetadata1();
    v8 = sub_1E5BF6544();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5B56F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1E5B76870();
    swift_getFunctionTypeMetadata1();
    v7 = sub_1E5BF6544();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5B57000(uint64_t *a1)
{
  sub_1E5BF66E4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  sub_1E5BF66E4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  sub_1E5B7656C();
  swift_getOpaqueTypeConformance2();
  sub_1E5B76768();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1E5BF6CB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B57350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6804();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B573A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B573E8()
{
  v1 = *(type metadata accessor for PreviewPlayerConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  v3 = sub_1E5BF6384();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E5B57504()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B575CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EC98, &unk_1E5BFA180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED03ECA0, &qword_1ED03EC98, &unk_1E5BFA180, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B576D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E5B577A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5B5785C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B578C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B57900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF28, &qword_1E5BFAD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B57978@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E6936EF0]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B579D4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B57A14()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B57A84()
{
  v1 = *(type metadata accessor for PlannedWorkoutConfirmation(0) - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));
  v3 = sub_1E5BF6494();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E5B57B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F140, &qword_1E5BFB4E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for PlannedWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6320, &qword_1ED03F140, &qword_1E5BFB4E8, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0, MEMORY[0x1E6981F48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B57D04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5B57D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5B57DB8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B57DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF64B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5B57EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5BF64B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5B57FFC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1E5B5821C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E5B5843C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1E5B585C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E5B5875C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B58798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F468, &qword_1E5BFC878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B58824()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B58874()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B588C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F640, &qword_1E5BFD260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B589E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F848, &unk_1E5BFDFA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1EE2C6328, &qword_1ED03F848, &unk_1E5BFDFA0, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B58AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B58B20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 72);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v15[2] = v2;
  v16 = *(v0 + 40);
  v17 = *(v0 + 56);
  v18 = v3;
  v4 = (type metadata accessor for DynamicStartWorkoutView(0, v15) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 80) & ~*(*v4 + 80)));
  sub_1E5B5C0A8(*v5, v5[1]);
  v6 = v4[23];
  swift_getFunctionTypeMetadata0();
  v7 = sub_1E5BF6544();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v4[24];
  swift_getFunctionTypeMetadata1();
  v9 = sub_1E5BF6544();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v4[25];
  swift_getFunctionTypeMetadata0();
  v11 = sub_1E5BF6544();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v4[26];
  swift_getFunctionTypeMetadata0();
  v13 = sub_1E5BF6544();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  return swift_deallocObject();
}

uint64_t sub_1E5B58D4C(uint64_t a1, uint64_t a2, int *a3)
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

  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[21];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[22];
    goto LABEL_11;
  }

  swift_getFunctionTypeMetadata0();
  v13 = sub_1E5BF6544();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[23];
    goto LABEL_11;
  }

  swift_getFunctionTypeMetadata0();
  v15 = sub_1E5BF6544();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[24];

  return v16(v17, a2, v15);
}

uint64_t sub_1E5B58F44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[21];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[22];
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata0();
  v13 = sub_1E5BF6544();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[23];
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata0();
  v15 = sub_1E5BF6544();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[24];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E5B59140(uint64_t *a1)
{
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B59294()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B59330()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B59378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5943C()
{
  if (*v0)
  {
    return 0x7669746341776172;
  }

  else
  {
    return 0x6954656D75736572;
  }
}

uint64_t sub_1E5B5958C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5B595F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5B59668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B59728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B597E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E5BF6464();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5B598D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5BF6494();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E5BF6464();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5B599D0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(a1 + v11, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[11];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[12];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[13];

  return v19(v20, a2, v18);
}

uint64_t sub_1E5B59C98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[11];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[12];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v5 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E5B59F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03FD70, &qword_1E5C00D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03FD78, &qword_1E5C00D90);
  type metadata accessor for ResumeWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6310, &qword_1ED03FD70, &qword_1E5C00D88, MEMORY[0x1E697FDF8]);
  sub_1E5B81070();
  sub_1E5B5FC8C(&qword_1EE2C62A8, &qword_1ED03FD78, &qword_1E5C00D90, MEMORY[0x1E6981F48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5A090()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF64B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E5B5A1C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF64B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5B5A27C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5A2B4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1E5B5A438(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E5B5A5D4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5A60C()
{
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B5A648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveLibraryItemConfirmationDialog(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1E5BF6884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405A8, &qword_1E5C038D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1EE2C62A0, &qword_1ED0405A8, &qword_1E5C038D0, MEMORY[0x1E6981F48]);
  sub_1E5BD02E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5A770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveLibraryItemConfirmationDialog(255, a1[1], a1[3], a4);
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5A810()
{
  v1 = sub_1E5BF6914();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B5A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040720, &qword_1E5C042B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5A908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6784();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5A968()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040790, &unk_1E5C04460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED040798, &qword_1ED040790, &unk_1E5C04460, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5AA70()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5AAAC(void *a1)
{
  sub_1E5BF66E4();
  sub_1E5BD8FA4();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5AB2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B5ABE8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5AC20()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v16[0] = *(v0 + 16);
  v16[1] = v1;
  v16[2] = v3;
  v16[3] = v2;
  v4 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v4;
  v19 = *(v0 + 80);
  v5 = (type metadata accessor for DynamicLibraryButton(0, v16) - 8);
  v6 = (v0 + ((*(*v5 + 80) + 96) & ~*(*v5 + 80)));
  sub_1E5B5C0A8(*v6, v6[1]);
  v7 = v5[27];
  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v5[28];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5BF6544();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v5[29];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = v5[30];
  swift_getFunctionTypeMetadata0();
  v14 = sub_1E5BF6544();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  return swift_deallocObject();
}

uint64_t sub_1E5B5AE60(uint64_t a1, uint64_t a2, int *a3)
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

  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[25];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[26];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v13 = sub_1E5BF6544();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[27];
    goto LABEL_11;
  }

  swift_getFunctionTypeMetadata0();
  v15 = sub_1E5BF6544();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[28];

  return v16(v17, a2, v15);
}

uint64_t sub_1E5B5B078(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[25];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[26];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v13 = sub_1E5BF6544();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[27];
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata0();
  v15 = sub_1E5BF6544();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[28];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E5B5B2A4(void *a1)
{
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B46C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5B4A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShareLinkPicker(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1E5BF6884();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShareLinkPicker(255, a1[1], a1[3], a4);
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B678()
{
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B5B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B5B774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B5B834()
{
  v1 = (type metadata accessor for FutureWorkoutConfirmation(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));
  v3 = sub_1E5BF6494();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[9];
  v5 = sub_1E5BF6464();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5B5B958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040B80, &unk_1E5C05DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for FutureWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6308, &qword_1ED040B80, &unk_1E5C05DC0, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0, MEMORY[0x1E6981F48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5BA78()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5BAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE0, &qword_1E5C05F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5BB44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5BF6384();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5B5BBF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5BF6384();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5B5BC94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE8, &qword_1E5C064A0);
  sub_1E5BECF14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5BD08()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5BD40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5BDB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B5BE18()
{
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B5BE58()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5BE94(void *a1)
{
  sub_1E5BF66E4();
  sub_1E5BEE728();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5BF04()
{

  return swift_deallocObject();
}

uint64_t sub_1E5B5BF3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5BF88()
{
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B5BFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF67C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5B5C060(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5B5C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DownloadButtonFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t DownloadButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for DownloadButtonFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t sub_1E5B5C350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1E5B5F77C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0, MEMORY[0x1E697D658]);
  sub_1E5BF6C84();
  v8 = a1 == 0;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v12 = (a4 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_1E5B5F78C;
  v12[2] = v10;
  return result;
}

uint64_t sub_1E5B5C4CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B5C5FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v6 - v1;
  v6[1] = sub_1E5BF6BE4();
  v3 = *MEMORY[0x1E697E6E8];
  v4 = sub_1E5BF66D4();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
    sub_1E5BF6A84();
    sub_1E5B5F804(v2, &qword_1ED03E328, &unk_1E5BFD530);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B5C79C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_1E5BF65C4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  v15 = v11;
  v16 = v12;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_1E5B5F5EC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3A0, &qword_1E5BF7F08);
  sub_1E5B5FC8C(&qword_1ED03E3A8, &qword_1ED03E3A0, &qword_1E5BF7F08, MEMORY[0x1E697D658]);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5C94C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3B0, &unk_1E5BF7F10);
  sub_1E5B5FB44();
  return sub_1E5BF6C24();
}

double sub_1E5B5C9F0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF6BF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5BF6BE4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = sub_1E5BF6C14();

  (*(v3 + 8))(v5, v2);
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = *&v16;
  *(a1 + 40) = v16;
  return result;
}

uint64_t sub_1E5B5CB78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6];
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  sub_1E5BF65C4();
  v11 = sub_1E5BF65E4();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = swift_allocObject();
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v10;
  v17 = v13;
  v18 = v14;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = a1;
  v23 = BYTE4(a1) & 1;
  sub_1E5B5F5EC(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E340, &qword_1E5BF7ED0);
  sub_1E5B5FC8C(&qword_1ED03E348, &qword_1ED03E340, &qword_1E5BF7ED0, MEMORY[0x1E697D658]);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5CD40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E350, &qword_1E5BF7ED8);
  sub_1E5B5FC8C(&qword_1ED03E358, &qword_1ED03E350, &qword_1E5BF7ED8, MEMORY[0x1E6981880]);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B5CE24@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E5BF6D84();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E360, &qword_1E5BF7EE0);
  return sub_1E5B5CE84(a1 | ((HIDWORD(a1) & 1) << 32), a2 + *(v5 + 44));
}

uint64_t sub_1E5B5CE84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1E5BF6BF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E368, &qword_1E5BF7EE8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E370, &qword_1E5BF7EF0);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  BYTE4(v38) = BYTE4(a1) & 1;
  v37 = 1065353216;
  LODWORD(v38) = a1;
  sub_1E5B5F9E4();
  sub_1E5BF6634();
  sub_1E5BF6D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E380, &qword_1E5BF7EF8);
  sub_1E5B5FC8C(&qword_1ED03E388, &qword_1ED03E368, &qword_1E5BF7EE8, MEMORY[0x1E697BF38]);
  sub_1E5B5FA38();
  v32 = v15;
  sub_1E5BF6B74();
  (*(v8 + 8))(v10, v7);
  sub_1E5BF6BE4();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v16 = sub_1E5BF6C14();

  (*(v4 + 8))(v6, v3);
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v31 = v38;
  v30 = v39;
  v29 = v40;
  LOBYTE(v6) = v41;
  v17 = v42;
  v18 = v43;
  v19 = v33;
  v20 = *(v33 + 16);
  v21 = v36;
  v22 = v34;
  v20(v36, v15, v34);
  v23 = v35;
  v20(v35, v21, v22);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E398, &qword_1E5BF7F00) + 48)];
  v25 = v31;
  *v24 = v16;
  *(v24 + 1) = v25;
  v24[16] = v30;
  *(v24 + 3) = v29;
  v24[32] = v6;
  *(v24 + 5) = v17;
  *(v24 + 6) = v18;
  v26 = *(v19 + 8);

  v26(v32, v22);

  return (v26)(v36, v22);
}

double sub_1E5B5D2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E368, &qword_1E5BF7EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E380, &qword_1E5BF7EF8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1E5B5D3A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_1E5BF65C4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  v15 = v11;
  v16 = v12;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_1E5B5F5EC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5D554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  v14 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2CD210;
  v28[1] = a1;
  v28[2] = a2;
  v29 = a3 & 1;
  v18 = type metadata accessor for DownloadButton(0, a4, a5, v16);
  v19 = v17;
  v23 = sub_1E5B5C18C(v18, v20, v21, v22);
  MEMORY[0x1EEE9AC00](v23);
  v28[-2] = a4;
  v28[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a8 = result;
  *(a8 + 8) = v25;
  *(a8 + 16) = v26 & 1;
  *(a8 + 24) = v27;
  return result;
}

uint64_t sub_1E5B5D740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2C8, &qword_1E5BF7CF0);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v37 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E330, &qword_1E5BF7EA8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v37 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E258, &qword_1E5BF7CB0);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v49 = *v2;
  v50 = v13;
  v51 = v14;
  sub_1E5B5C18C(a1, v15, v16, v17);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v41 = a1;
  v47 = v18;
  v48 = v19;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    if ((*v11 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v49 = v12;
    v50 = v13;
    v51 = v14;
    v28 = swift_allocObject();
    *(v28 + 16) = v18;
    *(v28 + 24) = v19;
    *(v28 + 32) = v12;
    *(v28 + 40) = v13;
    *(v28 + 48) = v14;
    sub_1E5B5F5EC(v12, v13);
    v29 = v37;
    sub_1E5B5C350(sub_1E5B5F8CC, v28, v37);

    v27 = v39;
    sub_1E5B5F8D4(v29, v39, &qword_1ED03E288, &qword_1E5BF7CD8);
    v24 = 0;
    v25 = v44;
    v26 = v40;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v11, &qword_1ED03E238, &unk_1E5BF8A10);
LABEL_10:
    v49 = v12;
    v50 = v13;
    v51 = v14;
    sub_1E5B5C350(0, 0, v8);
    v33 = swift_allocObject();
    *(v33 + 16) = v18;
    *(v33 + 24) = v19;
    *(v33 + 32) = v12;
    *(v33 + 40) = v13;
    *(v33 + 48) = v14;
    v34 = v44;
    v35 = &v8[*(v43 + 36)];
    *v35 = sub_1E5B5F93C;
    v35[1] = v33;
    v35[2] = 0;
    v35[3] = 0;
    sub_1E5B5F864(v8, v34, &qword_1ED03E258, &qword_1E5BF7CB0);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5F5EC(v12, v13);
    sub_1E5B5F0B8();
    sub_1E5B5F35C();
    sub_1E5BF6864();
    v30 = v8;
    v31 = &qword_1ED03E258;
    v32 = &qword_1E5BF7CB0;
    return sub_1E5B5F804(v30, v31, v32);
  }

  v21 = *v11;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
  v23 = sub_1E5BF6464();
  (*(*(v23 - 8) + 8))(&v11[v22], v23);
  if (v21 == 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v24 = 1;
  v25 = v44;
  v27 = v39;
  v26 = v40;
LABEL_8:
  (*(v38 + 56))(v27, v24, 1, v26);
  sub_1E5B5F864(v27, v25, &qword_1ED03E2C8, &qword_1E5BF7CF0);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5F0B8();
  sub_1E5B5F35C();
  sub_1E5BF6864();
  v30 = v27;
  v31 = &qword_1ED03E2C8;
  v32 = &qword_1E5BF7CF0;
  return sub_1E5B5F804(v30, v31, v32);
}

uint64_t DownloadButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v98 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v97 = &v82 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E8, &qword_1E5BF7C48);
  v96 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v95 = &v82 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1F0, &qword_1E5BF7C50);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v82 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1F8, &qword_1E5BF7C58);
  v94 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v93 = &v82 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E200, &qword_1E5BF7C60);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v82 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E208, &qword_1E5BF7C68);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v82 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E210, &qword_1E5BF7C70);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v82 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E218, &qword_1E5BF7C78);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v82 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E220, &qword_1E5BF7C80);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v82 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E228, &qword_1E5BF7C88);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v82 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E230, &qword_1E5BF7C90);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v82 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v82 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E240, &qword_1E5BF7C98);
  MEMORY[0x1EEE9AC00](v104);
  v92 = &v82 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E248, &qword_1E5BF7CA0);
  MEMORY[0x1EEE9AC00](v117);
  v111 = &v82 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E250, &qword_1E5BF7CA8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v82 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E258, &qword_1E5BF7CB0);
  MEMORY[0x1EEE9AC00](v119);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v82 - v22);
  v25 = *v2;
  v24 = *(v2 + 8);
  v26 = *(v2 + 16);
  v123 = *v2;
  v124 = v24;
  v125 = v26;
  sub_1E5B5C18C(a1, v27, v28, v29);
  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v32 = a1;
  v120 = v31;
  v121 = v30;
  v114 = v30;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = *v23 | (*(v23 + 4) << 32);
      if ((*(v23 + 5) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v37 = *v23 | (*(v23 + 4) << 32);
      v38 = *(v23 + 5);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v40 = sub_1E5BF6464();
      (*(*(v40 - 8) + 8))(v23 + v39, v40);
      if (v38 != 1)
      {
LABEL_5:
        v123 = v25;
        v124 = v24;
        v125 = v26;
        v41 = sub_1E5B5C18C(v32, v34, v35, v36);
        MEMORY[0x1EEE9AC00](v41);
        v42 = v114;
        *(&v82 - 2) = v31;
        *(&v82 - 1) = v42;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v123 = v25;
        v124 = v24;
        v125 = v26;
        if (v122)
        {
          v43 = v93;
          sub_1E5B5CB78(v37 | ((HIDWORD(v37) & 1) << 32), v32);
          v44 = v94;
          v45 = v101;
          (*(v94 + 16))(v100, v43, v101);
        }

        else
        {
          v43 = v95;
          sub_1E5B5C79C(v32);
          v44 = v96;
          v45 = v102;
          (*(v96 + 16))(v100, v43, v102);
        }

        swift_storeEnumTagMultiPayload();
        v46 = MEMORY[0x1E697D680];
        sub_1E5B5FC8C(&qword_1ED03E2D8, &qword_1ED03E1F8, &qword_1E5BF7C58, MEMORY[0x1E697D680]);
        sub_1E5B5FC8C(&qword_1ED03E2E0, &qword_1ED03E1E8, &qword_1E5BF7C48, v46);
        v47 = v103;
        sub_1E5BF6864();
        (*(v44 + 8))(v43, v45);
        v59 = v113;
        sub_1E5B5F864(v47, v106, &qword_1ED03E200, &qword_1E5BF7C60);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
        sub_1E5B5F3E0();
        v60 = v108;
        sub_1E5BF6864();
        sub_1E5B5F864(v60, v59, &qword_1ED03E218, &qword_1E5BF7C78);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5EFB8();
        sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
        v52 = v111;
        sub_1E5BF6864();
        sub_1E5B5F804(v60, &qword_1ED03E218, &qword_1E5BF7C78);
        v61 = v47;
        v62 = &qword_1ED03E200;
        v63 = &qword_1E5BF7C60;
        goto LABEL_25;
      }

LABEL_8:
      v48 = v32;
      if (v37)
      {
        v123 = v25;
        v124 = v24;
        v125 = v26;
        v49 = v97;
        sub_1E5B5D3A4(v32);
        v50 = v98;
        v51 = v110;
        (*(v98 + 16))(v113, v49, v110);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5EFB8();
        sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
        v52 = v111;
        sub_1E5BF6864();
        (*(v50 + 8))(v49, v51);
LABEL_26:
        sub_1E5B5F864(v52, v116, &qword_1ED03E248, &qword_1E5BF7CA0);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5F0B8();
        sub_1E5B5F4C0();
        sub_1E5BF6864();
        v56 = v52;
        v57 = &qword_1ED03E248;
        v58 = &qword_1E5BF7CA0;
        return sub_1E5B5F804(v56, v57, v58);
      }

      v123 = v25;
      v124 = v24;
      v125 = v26;
      v64 = sub_1E5B5C18C(v32, v34, v35, v36);
      MEMORY[0x1EEE9AC00](v64);
      v65 = v114;
      *(&v82 - 2) = v31;
      *(&v82 - 1) = v65;
      swift_getKeyPath();
      v66 = v91;
      sub_1E5BF6E34();

      v67 = swift_getEnumCaseMultiPayload();
      v68 = v92;
      if (v67 <= 2)
      {
        if (!v67)
        {
          if ((*v66 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        if (v67 == 1)
        {
          v69 = *v66;
          v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v71 = sub_1E5BF6464();
          (*(*(v71 - 8) + 8))(&v66[v70], v71);
          if (v69 != 1)
          {
LABEL_18:
            v72 = 1;
            v73 = v113;
            v74 = v86;
LABEL_21:
            (*(v84 + 56))(v74, v72, 1, v85);
            sub_1E5B5F864(v74, v88, &qword_1ED03E228, &qword_1E5BF7C88);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5F0B8();
            sub_1E5B5F228();
            sub_1E5BF6864();
            sub_1E5B5F804(v74, &qword_1ED03E228, &qword_1E5BF7C88);
LABEL_24:
            v79 = v68;
            sub_1E5B5F864(v68, v106, &qword_1ED03E240, &qword_1E5BF7C98);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
            sub_1E5B5F3E0();
            v80 = v108;
            sub_1E5BF6864();
            sub_1E5B5F864(v80, v73, &qword_1ED03E218, &qword_1E5BF7C78);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5EFB8();
            sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
            v52 = v111;
            sub_1E5BF6864();
            sub_1E5B5F804(v80, &qword_1ED03E218, &qword_1E5BF7C78);
            v61 = v79;
            v62 = &qword_1ED03E240;
            v63 = &qword_1E5BF7C98;
LABEL_25:
            sub_1E5B5F804(v61, v62, v63);
            goto LABEL_26;
          }

LABEL_20:
          v123 = v25;
          v124 = v24;
          v125 = v26;
          v75 = v83;
          sub_1E5B5D778(v48, v83);
          v74 = v86;
          sub_1E5B5F8D4(v75, v86, &qword_1ED03E220, &qword_1E5BF7C80);
          v72 = 0;
          v73 = v113;
          goto LABEL_21;
        }

        sub_1E5B5F804(v66, &qword_1ED03E238, &unk_1E5BF8A10);
      }

      v123 = v25;
      v124 = v24;
      v125 = v26;
      sub_1E5B5C350(0, 0, v20);
      v76 = swift_allocObject();
      v77 = v114;
      *(v76 + 16) = v31;
      *(v76 + 24) = v77;
      *(v76 + 32) = v25;
      *(v76 + 40) = v24;
      *(v76 + 48) = v26;
      v78 = &v20[*(v119 + 36)];
      *v78 = sub_1E5B5FCF0;
      *(v78 + 1) = v76;
      *(v78 + 2) = 0;
      *(v78 + 3) = 0;
      sub_1E5B5F864(v20, v88, &qword_1ED03E258, &qword_1E5BF7CB0);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5F5EC(v25, v24);
      sub_1E5B5F0B8();
      sub_1E5B5F228();
      sub_1E5BF6864();
      sub_1E5B5F804(v20, &qword_1ED03E258, &qword_1E5BF7CB0);
      v73 = v113;
      goto LABEL_24;
    }

    sub_1E5B5F804(v23, &qword_1ED03E260, &qword_1E5BF9190);
  }

  v123 = v25;
  v124 = v24;
  v125 = v26;
  sub_1E5B5C350(0, 0, v20);
  v53 = swift_allocObject();
  v54 = v114;
  *(v53 + 16) = v31;
  *(v53 + 24) = v54;
  *(v53 + 32) = v25;
  *(v53 + 40) = v24;
  *(v53 + 48) = v26;
  v55 = &v20[*(v119 + 36)];
  *v55 = sub_1E5B5FCF0;
  *(v55 + 1) = v53;
  *(v55 + 2) = 0;
  *(v55 + 3) = 0;
  sub_1E5B5F864(v20, v116, &qword_1ED03E258, &qword_1E5BF7CB0);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5F5EC(v25, v24);
  sub_1E5B5F0B8();
  sub_1E5B5F4C0();
  sub_1E5BF6864();
  v56 = v20;
  v57 = &qword_1ED03E258;
  v58 = &qword_1E5BF7CB0;
  return sub_1E5B5F804(v56, v57, v58);
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

unint64_t sub_1E5B5EFB8()
{
  result = qword_1ED03E268;
  if (!qword_1ED03E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E218, &qword_1E5BF7C78);
    sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
    sub_1E5B5F3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E268);
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

unint64_t sub_1E5B5F0B8()
{
  result = qword_1ED03E278;
  if (!qword_1ED03E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E258, &qword_1E5BF7CB0);
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E278);
  }

  return result;
}

unint64_t sub_1E5B5F144()
{
  result = qword_1ED03E280;
  if (!qword_1ED03E280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E288, &qword_1E5BF7CD8);
    sub_1E5B5FC8C(&qword_1ED03E290, &qword_1ED03E298, &qword_1E5BF7CE0, MEMORY[0x1E697D680]);
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E280);
  }

  return result;
}

unint64_t sub_1E5B5F228()
{
  result = qword_1ED03E2B0;
  if (!qword_1ED03E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E228, &qword_1E5BF7C88);
    sub_1E5B5F2D8(&qword_1ED03E2B8, &qword_1ED03E220, &qword_1E5BF7C80, sub_1E5B5F35C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2B0);
  }

  return result;
}

uint64_t sub_1E5B5F2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E5B5F0B8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B5F35C()
{
  result = qword_1ED03E2C0;
  if (!qword_1ED03E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E2C8, &qword_1E5BF7CF0);
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2C0);
  }

  return result;
}

unint64_t sub_1E5B5F3E0()
{
  result = qword_1ED03E2D0;
  if (!qword_1ED03E2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E200, &qword_1E5BF7C60);
    v1 = MEMORY[0x1E697D680];
    sub_1E5B5FC8C(&qword_1ED03E2D8, &qword_1ED03E1F8, &qword_1E5BF7C58, MEMORY[0x1E697D680]);
    sub_1E5B5FC8C(&qword_1ED03E2E0, &qword_1ED03E1E8, &qword_1E5BF7C48, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2D0);
  }

  return result;
}

unint64_t sub_1E5B5F4C0()
{
  result = qword_1ED03E2E8;
  if (!qword_1ED03E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E248, &qword_1E5BF7CA0);
    sub_1E5B5EFB8();
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2E8);
  }

  return result;
}

uint64_t sub_1E5B5F578(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for DownloadButton(0, a4, a5, a4);
  sub_1E5B5C18C(v6, v7, v8, v9);
  sub_1E5BF6E44();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5F6A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E5B5F6F0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5B5F734()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E5B5F77C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E5B5F7AC()
{
  result = qword_1EE2C63B0;
  if (!qword_1EE2C63B0)
  {
    sub_1E5BF66D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63B0);
  }

  return result;
}

uint64_t sub_1E5B5F804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5B5F864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B5F8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5B5F9E4()
{
  result = qword_1ED03E378;
  if (!qword_1ED03E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E378);
  }

  return result;
}

unint64_t sub_1E5B5FA38()
{
  result = qword_1ED03E390;
  if (!qword_1ED03E390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E380, &qword_1E5BF7EF8);
    sub_1E5B5FC8C(&qword_1ED03E388, &qword_1ED03E368, &qword_1E5BF7EE8, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E390);
  }

  return result;
}

unint64_t sub_1E5B5FB44()
{
  result = qword_1ED03E3B8;
  if (!qword_1ED03E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E3B0, &unk_1E5BF7F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E3B8);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  sub_1E5B5C0A8(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E5B5FC8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E5B5FD34(uint64_t a1)
{
  v2 = sub_1E5B61120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B5FD70(uint64_t a1)
{
  v2 = sub_1E5B61120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B5FDAC(uint64_t a1)
{
  v2 = sub_1E5B610CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B5FDE8(uint64_t a1)
{
  v2 = sub_1E5B610CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B5FE24()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B5FE6C(uint64_t a1)
{
  v2 = *v1;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B5FEB0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6570704177656976;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000015;
    if (v1 == 5)
    {
      v3 = 0xD000000000000020;
    }

    if (v1 != 3)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1E5B5FFA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B6121C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5FFDC(uint64_t a1)
{
  v2 = sub_1E5B60F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60018(uint64_t a1)
{
  v2 = sub_1E5B60F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B60054(uint64_t a1)
{
  v2 = sub_1E5B61174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60090(uint64_t a1)
{
  v2 = sub_1E5B61174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B600D4()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60118(uint64_t a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B601E4(uint64_t a1)
{
  v2 = sub_1E5B60F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60220(uint64_t a1)
{
  v2 = sub_1E5B60F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B6025C(uint64_t a1)
{
  v2 = sub_1E5B61078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60298(uint64_t a1)
{
  v2 = sub_1E5B61078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B602D4(uint64_t a1)
{
  v2 = sub_1E5B61024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60310(uint64_t a1)
{
  v2 = sub_1E5B61024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B6034C(uint64_t a1)
{
  v2 = sub_1E5B611C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60388(uint64_t a1)
{
  v2 = sub_1E5B611C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadButtonAction.encode(to:)(void *a1, uint64_t a2)
{
  v51 = a2;
  v52 = a2 & 0xFFFFFFFFFFFFLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C8, &qword_1E5BF7F20);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3D0, &qword_1E5BF7F28);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3D8, &qword_1E5BF7F30);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3E0, &qword_1E5BF7F38);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3E8, &qword_1E5BF7F40);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3F0, &qword_1E5BF7F48);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3F8, &qword_1E5BF7F50);
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E400, &qword_1E5BF7F58);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B60F28();
  v23 = v51;
  sub_1E5BF7524();
  if ((v23 & 0x1000000000000) == 0)
  {
    v62 = 6;
    sub_1E5B60F7C();
    v24 = v48;
    sub_1E5BF7394();
    v59 = BYTE4(v23);
    v58 = v23;
    v60 = BYTE5(v52) & 1;
    sub_1E5B60FD0();
    v25 = v50;
    sub_1E5BF7424();
    (*(v49 + 8))(v24, v25);
    return (*(v20 + 8))(v22, v19);
  }

  v27 = (v20 + 8);
  if (v52 > 2)
  {
    v28 = v19;
    if (v52 == 3)
    {
      v56 = 3;
      sub_1E5B610CC();
      v29 = v39;
      sub_1E5BF7394();
      v31 = v40;
      v30 = v41;
    }

    else if (v52 == 4)
    {
      v57[0] = 4;
      sub_1E5B61078();
      v29 = v42;
      sub_1E5BF7394();
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v61 = 5;
      sub_1E5B61024();
      v29 = v45;
      sub_1E5BF7394();
      v31 = v46;
      v30 = v47;
    }

    goto LABEL_14;
  }

  v28 = v19;
  if (!v52)
  {
    v53 = 0;
    sub_1E5B611C8();
    sub_1E5BF7394();
    (*(v33 + 8))(v18, v16);
    return (*v27)(v22, v28);
  }

  if (v52 != 1)
  {
    v55 = 2;
    sub_1E5B61120();
    v29 = v36;
    sub_1E5BF7394();
    v31 = v37;
    v30 = v38;
LABEL_14:
    (*(v31 + 8))(v29, v30);
    return (*v27)(v22, v28);
  }

  v54 = 1;
  sub_1E5B61174();
  sub_1E5BF7394();
  (*(v34 + 8))(v15, v35);
  return (*v27)(v22, v28);
}

uint64_t DownloadButtonAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x1000000000000) != 0)
  {
    if ((a2 & 0xFFFFFFFFFFFFuLL) > 2)
    {
      if (v2 == 3)
      {
        v5 = 3;
      }

      else if (v2 == 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }

      return MEMORY[0x1E6937C10](v5);
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v5 = 1;
        return MEMORY[0x1E6937C10](v5);
      }

LABEL_10:
      v5 = 2;
      return MEMORY[0x1E6937C10](v5);
    }

LABEL_14:
    v5 = 0;
    return MEMORY[0x1E6937C10](v5);
  }

  v3 = a2 & 0xFFFFFFFFFFLL;
  MEMORY[0x1E6937C10](6);
  if ((v2 & 0x10000000000) != 0)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  MEMORY[0x1E6937C10](1);
  if ((v3 & 0x100000000) != 0)
  {
    return sub_1E5BF74D4();
  }

  sub_1E5BF74D4();
  return sub_1E5BF74E4();
}

uint64_t DownloadButtonAction.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v3, a1 & 0xFFFFFFFFFFFFLL | ((HIWORD(a1) & 1) << 48));
  return sub_1E5BF7504();
}

unint64_t sub_1E5B60C3C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B6146C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = WORD2(result);
    *(a1 + 6) = BYTE6(result) & 1;
  }

  return result;
}

uint64_t sub_1E5B60CB4()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60D38(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v5, v2 | (v3 << 48));
  return sub_1E5BF7504();
}

BOOL sub_1E5B60DD4(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a1 & 0xFFFFFFFFFFFFuLL) > 2)
    {
      if (v2 == 3)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 3;
      }

      else if (v2 == 4)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 4;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && v3 > 4;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 1;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 2;
      }
    }

    else
    {
      return (a2 & 0x1000000000000) != 0 && !v3;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    v5 = a2 & 0xFFFFFFFFFFLL;
    if ((a1 & 0x10000000000) != 0)
    {
      if ((a1 & 0xFFFFFFFFFFLL) != 0)
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 != 0;
      }

      else
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 == 0;
      }
    }

    else
    {
      if ((a2 & 0x10000000000) != 0)
      {
        return 0;
      }

      if ((a1 & 0x100000000) != 0)
      {
        return (a2 & 0x100000000) != 0;
      }

      else
      {
        return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
      }
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5B60F28()
{
  result = qword_1ED03E408;
  if (!qword_1ED03E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E408);
  }

  return result;
}

unint64_t sub_1E5B60F7C()
{
  result = qword_1ED03E410;
  if (!qword_1ED03E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E410);
  }

  return result;
}

unint64_t sub_1E5B60FD0()
{
  result = qword_1EE2C75F0;
  if (!qword_1EE2C75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75F0);
  }

  return result;
}

unint64_t sub_1E5B61024()
{
  result = qword_1ED03E418;
  if (!qword_1ED03E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E418);
  }

  return result;
}

unint64_t sub_1E5B61078()
{
  result = qword_1ED03E420;
  if (!qword_1ED03E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E420);
  }

  return result;
}

unint64_t sub_1E5B610CC()
{
  result = qword_1ED03E428;
  if (!qword_1ED03E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E428);
  }

  return result;
}

unint64_t sub_1E5B61120()
{
  result = qword_1ED03E430;
  if (!qword_1ED03E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E430);
  }

  return result;
}

unint64_t sub_1E5B61174()
{
  result = qword_1ED03E438;
  if (!qword_1ED03E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E438);
  }

  return result;
}

unint64_t sub_1E5B611C8()
{
  result = qword_1ED03E440;
  if (!qword_1ED03E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E440);
  }

  return result;
}

uint64_t sub_1E5B6121C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5C075A0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C075C0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C075E0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C07610 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C07630 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C07660 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B6146C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4E0, &qword_1E5BF8730);
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4E8, &qword_1E5BF8738);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4F0, &qword_1E5BF8740);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4F8, &qword_1E5BF8748);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E500, &qword_1E5BF8750);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v46 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E508, &qword_1E5BF8758);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E510, &qword_1E5BF8760);
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E518, &qword_1E5BF8768);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5B60F28();
  v23 = v66;
  sub_1E5BF7514();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v24 = v17;
  v46 = v15;
  v25 = v14;
  v26 = v63;
  v27 = v64;
  v66 = v19;
  v28 = sub_1E5BF7374();
  v29 = (2 * *(v28 + 16)) | 1;
  v67 = v28;
  v68 = v28 + 32;
  v69 = 0;
  v70 = v29;
  v30 = sub_1E5B7FB08();
  if (v30 == 7 || v69 != v70 >> 1)
  {
    v36 = sub_1E5BF7284();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v38 = &type metadata for DownloadButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v66 + 8))(v21, v18);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v30 <= 2u)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        LOBYTE(v71) = 1;
        sub_1E5B61174();
        sub_1E5BF72C4();
        (*(v48 + 8))(v25, v49);
        (*(v66 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v34 = 1;
        v33 = 1;
      }

      else
      {
        LOBYTE(v71) = 2;
        sub_1E5B61120();
        v41 = v61;
        sub_1E5BF72C4();
        (*(v50 + 8))(v41, v51);
        (*(v66 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v33 = 1;
        v34 = 2;
      }
    }

    else
    {
      LOBYTE(v71) = 0;
      sub_1E5B611C8();
      sub_1E5BF72C4();
      (*(v47 + 8))(v24, v46);
      (*(v66 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v34 = 0;
      v33 = 1;
    }
  }

  else
  {
    if (v30 <= 4u)
    {
      v31 = v65;
      v32 = v66;
      if (v30 == 3)
      {
        LOBYTE(v71) = 3;
        sub_1E5B610CC();
        sub_1E5BF72C4();
        (*(v52 + 8))(v26, v53);
        (*(v32 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v33 = 1;
        v34 = 3;
      }

      else
      {
        LOBYTE(v71) = 4;
        sub_1E5B61078();
        v42 = v60;
        sub_1E5BF72C4();
        (*(v54 + 8))(v42, v55);
        (*(v32 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v33 = 1;
        v34 = 4;
      }

      v35 = v31;
      goto LABEL_23;
    }

    v40 = v66;
    if (v30 == 5)
    {
      LOBYTE(v71) = 5;
      sub_1E5B61024();
      sub_1E5BF72C4();
      (*(v56 + 8))(v27, v57);
      (*(v40 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v33 = 1;
      v34 = 5;
    }

    else
    {
      LOBYTE(v71) = 6;
      sub_1E5B60F7C();
      v43 = v62;
      sub_1E5BF72C4();
      sub_1E5B62934();
      v44 = v58;
      sub_1E5BF7364();
      (*(v59 + 8))(v43, v44);
      (*(v40 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v33 = 0;
      v45 = 0x10000000000;
      if (!v73)
      {
        v45 = 0;
      }

      v34 = v45 | v71 | (v72 << 32);
    }
  }

  v35 = v65;
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v34 | (v33 << 48);
}

unint64_t sub_1E5B61F04()
{
  result = qword_1ED03E448;
  if (!qword_1ED03E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E448);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadButtonAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadButtonAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
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

  *(result + 7) = v3;
  return result;
}

uint64_t sub_1E5B61FC0(uint64_t a1)
{
  if (*(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B61FE0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 6) = 1;
  }

  else
  {
    *(result + 6) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadButtonAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadButtonAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DownloadButtonAction.DownloadStatusUpdatedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DownloadButtonAction.DownloadStatusUpdatedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E5B622BC()
{
  result = qword_1ED03E450;
  if (!qword_1ED03E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E450);
  }

  return result;
}

unint64_t sub_1E5B62314()
{
  result = qword_1ED03E458;
  if (!qword_1ED03E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E458);
  }

  return result;
}

unint64_t sub_1E5B6236C()
{
  result = qword_1ED03E460;
  if (!qword_1ED03E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E460);
  }

  return result;
}

unint64_t sub_1E5B623C4()
{
  result = qword_1ED03E468;
  if (!qword_1ED03E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E468);
  }

  return result;
}

unint64_t sub_1E5B6241C()
{
  result = qword_1ED03E470;
  if (!qword_1ED03E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E470);
  }

  return result;
}

unint64_t sub_1E5B62474()
{
  result = qword_1ED03E478;
  if (!qword_1ED03E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E478);
  }

  return result;
}

unint64_t sub_1E5B624CC()
{
  result = qword_1ED03E480;
  if (!qword_1ED03E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E480);
  }

  return result;
}

unint64_t sub_1E5B62524()
{
  result = qword_1ED03E488;
  if (!qword_1ED03E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E488);
  }

  return result;
}

unint64_t sub_1E5B6257C()
{
  result = qword_1ED03E490;
  if (!qword_1ED03E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E490);
  }

  return result;
}

unint64_t sub_1E5B625D4()
{
  result = qword_1ED03E498;
  if (!qword_1ED03E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E498);
  }

  return result;
}

unint64_t sub_1E5B6262C()
{
  result = qword_1ED03E4A0;
  if (!qword_1ED03E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4A0);
  }

  return result;
}

unint64_t sub_1E5B62684()
{
  result = qword_1ED03E4A8;
  if (!qword_1ED03E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4A8);
  }

  return result;
}

unint64_t sub_1E5B626DC()
{
  result = qword_1ED03E4B0;
  if (!qword_1ED03E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4B0);
  }

  return result;
}

unint64_t sub_1E5B62734()
{
  result = qword_1ED03E4B8;
  if (!qword_1ED03E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4B8);
  }

  return result;
}

unint64_t sub_1E5B6278C()
{
  result = qword_1ED03E4C0;
  if (!qword_1ED03E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4C0);
  }

  return result;
}

unint64_t sub_1E5B627E4()
{
  result = qword_1ED03E4C8;
  if (!qword_1ED03E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4C8);
  }

  return result;
}

unint64_t sub_1E5B6283C()
{
  result = qword_1ED03E4D0;
  if (!qword_1ED03E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4D0);
  }

  return result;
}

unint64_t sub_1E5B62894()
{
  result = qword_1ED03E4D8;
  if (!qword_1ED03E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4D8);
  }

  return result;
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

unint64_t sub_1E5B62934()
{
  result = qword_1ED03E528;
  if (!qword_1ED03E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E528);
  }

  return result;
}

uint64_t DownloadButtonEnvironment.init(resolveDownloadStatus:requestDownload:cancelDownload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1E5B629A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E5B629F0(uint64_t *a1, int a2)
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

uint64_t sub_1E5B62A38(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5B62AD4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_1E5BF6DB4();
}

uint64_t sub_1E5B62CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E540, qword_1E5BF88C8);
  sub_1E5B5FC8C(&qword_1EE2C6260, &qword_1ED03E540, qword_1E5BF88C8, MEMORY[0x1E6999B78]);

  return sub_1E5BF6614();
}

uint64_t sub_1E5B62D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B62DE4(uint64_t a1))(char a1)
{
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E5B64B34;
}

uint64_t CreatePlanAlertView.init(store:createPlanAlertViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_1E5B62F34;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for CreatePlanAlertView(0, a5, a6, v15);
  return sub_1E5B62D44(a3, a4, a5, a6);
}

uint64_t CreatePlanAlertView.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  swift_getWitnessTable();
  v5 = sub_1E5BF6884();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  v23 = *(a2 + 16);
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  sub_1E5BF6D24();
  v6 = sub_1E5BF66E4();
  v18 = v5;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  v32 = v5;
  v33 = v22;
  v34 = MEMORY[0x1E6981E70];
  v35 = v6;
  v36 = WitnessTable;
  v37 = v20;
  v38 = MEMORY[0x1E6981E60];
  v39 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E54();

  v14 = *(a2 + 24);
  v29 = v23;
  v30 = v14;
  v31 = v3;
  v26 = v23;
  v27 = v14;
  v28 = v3;
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1E5BF6AF4();

  v15 = *(v8 + 16);
  v15(v13, v10, OpaqueTypeMetadata2);
  v16 = *(v8 + 8);
  v16(v10, OpaqueTypeMetadata2);
  v15(v25, v13, OpaqueTypeMetadata2);
  return (v16)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B63420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PlanAlertView = type metadata accessor for CreatePlanAlertView(0, a2, a3, a4);
  v8 = *(PlanAlertView - 8);
  MEMORY[0x1EEE9AC00](PlanAlertView);
  v10 = &v18[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18[-v12];
  sub_1E5BF65D4();
  v14 = sub_1E5BF65E4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a1, PlanAlertView);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, PlanAlertView);
  v19 = a2;
  v20 = a3;
  v21 = a1;
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B63644@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  type metadata accessor for CreatePlanAlertView(0, a1, a2, v8);
  v10 = v9;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_1E5B637E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21 = a1;
  v22 = a3;
  v23 = a4;
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  v5 = sub_1E5BF6D24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = sub_1E5BF66E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1E5BF6844();
  v24 = a2;
  v25 = v22;
  v26 = v21;
  sub_1E5BF6D14();
  WitnessTable = swift_getWitnessTable();
  sub_1E5BF6B24();
  (*(v6 + 8))(v8, v5);
  v27 = WitnessTable;
  v28 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v12, v9);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v17(v23, v15, v9);
  return (v18)(v15, v9);
}

uint64_t sub_1E5B63B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v79 = a4;
  v7 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67[1] = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlanAlertView = type metadata accessor for CreatePlanAlertView(0, a2, a3, v13);
  v69 = *(PlanAlertView - 8);
  v75 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](PlanAlertView);
  v72 = v67 - v15;
  v68 = a2;
  v70 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E5BF66E4();
  v78 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v20 = v67 - v19;
  v81 = sub_1E5BF66E4();
  v73 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v22 = (v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v80 = v67 - v24;
  sub_1E5B62DE4(PlanAlertView);
  v26 = v25;
  v27 = a1;
  v67[2] = a1;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v28 = *(v26 + 32);
  LOBYTE(v100[0]) = v91;
  v28(v100);

  sub_1E5BF6D84();
  v29 = v68;
  v30 = v74;
  sub_1E5BF6B14();
  (*(v70 + 8))(v18, v29);
  v31 = v69;
  v32 = v72;
  (*(v69 + 16))(v72, v27, PlanAlertView);
  v33 = v31;
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 24) = v30;
  (*(v33 + 32))(v35 + v34, v32, PlanAlertView);
  v98 = v30;
  v99 = MEMORY[0x1E697E040];
  v36 = v71;
  WitnessTable = swift_getWitnessTable();
  sub_1E5BF6B44();

  v78[1](v20, v36);
  v96 = WitnessTable;
  v97 = MEMORY[0x1E69805D0];
  v38 = v81;
  v75 = swift_getWitnessTable();
  v39 = v73;
  v74 = v73[2];
  v74(v80, v22, v38);
  v40 = v39[1];
  v78 = v22;
  v73 = v40;
  (v40)(v22, v38);
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (LOBYTE(v100[0]) != 2 && (v100[0] & 1) != 0 && (sub_1E5B62CA4(), swift_getKeyPath(), sub_1E5BF6E34(), , , *(&v85 + 1)))
  {
    sub_1E5BF6F64();
    sub_1E5BF6F54();
    sub_1E5BF6F44();

    sub_1E5BF6F54();
    sub_1E5BF6F84();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE2CD210;
    sub_1E5B62CA4();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v42 = sub_1E5BF69D4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    KeyPath = swift_getKeyPath();
    v50 = swift_getKeyPath();
    LOBYTE(v100[0]) = v46 & 1;
    LOBYTE(v90[0]) = 0;
    *&v91 = v42;
    *(&v91 + 1) = v44;
    LOBYTE(v92) = v46 & 1;
    *(&v92 + 1) = v48;
    *&v93 = KeyPath;
    *(&v93 + 1) = 2;
    LOBYTE(v94) = 0;
    *(&v94 + 1) = v50;
    v95 = 1;
  }

  else
  {
    sub_1E5BF6F24();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v51 = qword_1EE2CD210;
    sub_1E5B62CA4();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v52 = sub_1E5BF69D4();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = swift_getKeyPath();
    v60 = swift_getKeyPath();
    LOBYTE(v100[0]) = v56 & 1;
    LOBYTE(v85) = 1;
    *&v91 = v52;
    *(&v91 + 1) = v54;
    LOBYTE(v92) = v56 & 1;
    *(&v92 + 1) = v58;
    *&v93 = v59;
    *(&v93 + 1) = 2;
    LOBYTE(v94) = 0;
    *(&v94 + 1) = v60;
    v95 = 257;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E548, &qword_1E5BF89A0);
  sub_1E5B64868();
  sub_1E5BF6864();
  v61 = v78;
  v63 = v80;
  v62 = v81;
  v74(v78, v80, v81);
  v87 = v100[2];
  v88 = v100[3];
  v89 = v101;
  v85 = v100[0];
  v86 = v100[1];
  v90[0] = v61;
  v90[1] = &v85;
  sub_1E5B649D8(v100, &v91);
  v84[0] = v62;
  v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  v82 = v75;
  v83 = sub_1E5B64A48();
  sub_1E5B62AD4(v90, 2uLL, v84);
  sub_1E5B64ACC(v100);
  v64 = v63;
  v65 = v73;
  (v73)(v64, v62);
  v93 = v87;
  v94 = v88;
  v95 = v89;
  v91 = v85;
  v92 = v86;
  sub_1E5B64ACC(&v91);
  return v65(v61, v62);
}

uint64_t sub_1E5B644E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CreatePlanAlertView(0, a2, a3, a4);
  sub_1E5B62CA4();
  sub_1E5BF6E44();
}

uint64_t View.createPlanAlert<A>(store:createPlanAlertViewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v20 = a5;
  PlanAlertView = type metadata accessor for CreatePlanAlertView(0, a6, a8, a4);
  v15 = *(PlanAlertView - 8);
  MEMORY[0x1EEE9AC00](PlanAlertView);
  v17 = &v19 - v16;

  CreatePlanAlertView.init(store:createPlanAlertViewBuilder:)(a1, a2, a3, a4, a6, a8, v17);
  MEMORY[0x1E6937280](v17, v20, PlanAlertView, v21);
  return (*(v15 + 8))(v17, PlanAlertView);
}

void sub_1E5B646E8(uint64_t a1)
{
  sub_1E5B647B0(319);
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    sub_1E5BF6544();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B647B0(uint64_t a1)
{
  if (!qword_1EE2C63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E540, qword_1E5BF88C8);
    sub_1E5B5FC8C(&qword_1EE2C6260, &qword_1ED03E540, qword_1E5BF88C8, MEMORY[0x1E6999B78]);
    v1 = sub_1E5BF6624();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C63E0);
    }
  }
}

unint64_t sub_1E5B64868()
{
  result = qword_1ED03E550;
  if (!qword_1ED03E550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E548, &qword_1E5BF89A0);
    sub_1E5B64920();
    sub_1E5B5FC8C(&qword_1ED03E578, &qword_1ED03E580, &qword_1E5BF89B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E550);
  }

  return result;
}

unint64_t sub_1E5B64920()
{
  result = qword_1ED03E558;
  if (!qword_1ED03E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E560, &qword_1E5BF89A8);
    sub_1E5B5FC8C(&qword_1ED03E568, &qword_1ED03E570, &qword_1E5BF89B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E558);
  }

  return result;
}

uint64_t sub_1E5B649D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B64A48()
{
  result = qword_1ED03E588;
  if (!qword_1ED03E588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
    sub_1E5B64868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E588);
  }

  return result;
}

uint64_t sub_1E5B64ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B64B34(char a1)
{
  v2 = *(v1 + 32);
  v4 = a1 & 1;
  return v2(&v4);
}

uint64_t objectdestroy_7Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for CreatePlanAlertView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  sub_1E5B5C0A8(*(v4 + v6), *(v4 + v6 + 8));
  v7 = v5[11];
  swift_getFunctionTypeMetadata1();
  v8 = sub_1E5BF6544();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E5B64C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CreatePlanAlertView(0, v6, v7, a4) - 8);
  return sub_1E5B644E8(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

unint64_t static DownloadStatus.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFLL;
  if ((a1 & 0x10000000000) != 0)
  {
    v4 = v2 == 0;
    v5 = (a2 >> 40) & (v2 == 0);
    v6 = !v4;
    if ((a1 & 0xFFFFFFFFFFLL) != 0)
    {
      return (a2 >> 40) & v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a2 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a1 & 0x100000000) != 0)
    {
      return (a2 & 0x100000000) != 0;
    }

    else
    {
      return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
    }
  }
}

uint64_t sub_1E5B64DB4()
{
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6F6C6E776F446F6ELL;
  }
}

uint64_t sub_1E5B64E1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B68E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B64E44(uint64_t a1)
{
  v2 = sub_1E5B653E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64E80(uint64_t a1)
{
  v2 = sub_1E5B653E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64EBC(uint64_t a1)
{
  v2 = sub_1E5B65438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64EF8(uint64_t a1)
{
  v2 = sub_1E5B65438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64F34(uint64_t a1)
{
  v2 = sub_1E5B6548C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64F70(uint64_t a1)
{
  v2 = sub_1E5B6548C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64FAC(uint64_t a1)
{
  v2 = sub_1E5B654E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64FE8(uint64_t a1)
{
  v2 = sub_1E5B654E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadStatus.encode(to:)(void *a1, uint64_t a2)
{
  v28 = a2 & 0xFFFFFFFFFFLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E590, &qword_1E5BF89F0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E598, &qword_1E5BF89F8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5A0, &qword_1E5BF8A00);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5A8, &qword_1E5BF8A08);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B653E4();
  sub_1E5BF7524();
  if ((a2 & 0x10000000000) != 0)
  {
    if (v28)
    {
      v31 = 2;
      sub_1E5B65438();
      v11 = v23;
      sub_1E5BF7394();
      v19 = v24;
      v18 = v25;
    }

    else
    {
      v29 = 0;
      sub_1E5B654E0();
      sub_1E5BF7394();
      v19 = v21;
      v18 = v22;
    }

    (*(v19 + 8))(v11, v18);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v30 = 1;
    sub_1E5B6548C();
    sub_1E5BF7394();
    v16 = v27;
    sub_1E5BF73C4();
    (*(v26 + 8))(v8, v16);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_1E5B653E4()
{
  result = qword_1EE2C7628;
  if (!qword_1EE2C7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7628);
  }

  return result;
}

unint64_t sub_1E5B65438()
{
  result = qword_1ED03E5B0;
  if (!qword_1ED03E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5B0);
  }

  return result;
}

unint64_t sub_1E5B6548C()
{
  result = qword_1ED03E5B8;
  if (!qword_1ED03E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5B8);
  }

  return result;
}

unint64_t sub_1E5B654E0()
{
  result = qword_1EE2C7640[0];
  if (!qword_1EE2C7640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7640);
  }

  return result;
}

uint64_t DownloadStatus.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFLL;
  if ((a2 & 0x10000000000) != 0)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1E6937C10](v4);
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    if ((v2 & 0x100000000) != 0)
    {
      return sub_1E5BF74D4();
    }

    else
    {
      sub_1E5BF74D4();
      return sub_1E5BF74E4();
    }
  }
}

uint64_t DownloadStatus.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
  return sub_1E5BF7504();
}

unint64_t sub_1E5B65638@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B68FA0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result);
    *(a1 + 5) = BYTE5(result) & 1;
  }

  return result;
}

uint64_t sub_1E5B656B0()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  v2 = *(v0 + 5);
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v4, v1 | (v2 << 40));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B65734(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 4) << 32);
  v3 = *(v1 + 5);
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v5, v2 | (v3 << 40));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B6578C(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 4) << 32);
  v3 = *a2 | (*(a2 + 4) << 32);
  if (*(a1 + 5) != 1)
  {
    if (*(a2 + 5))
    {
      return 0;
    }

    if ((v2 & 0x100000000) != 0)
    {
      if ((v3 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x100000000) != 0 || *a1 != *a2)
    {
      return 0;
    }

    return 1;
  }

  if ((v2 & 0xFFFFFFFFFFLL) != 0)
  {
    if ((v3 & 0xFFFFFFFFFFLL) != 0)
    {
      return *(a2 + 5);
    }

    else
    {
      return 0;
    }
  }

  else if ((v3 & 0xFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  else
  {
    return *(a2 + 5);
  }
}

uint64_t DownloadButtonState.init(identifier:locale:isNetworkAvailable:isSubscribed:shouldShowProgress:downloadState:presentationContextKey:removeConfirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v20 = type metadata accessor for DownloadButtonState(0, a10, a11, v19);
  v21 = v20[9];
  v22 = sub_1E5BF64B4();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  sub_1E5B5F8D4(a3, a9 + v20[11], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a4, a9 + v20[12], &qword_1ED03E238, &unk_1E5BF8A10);
  *(a9 + v20[10]) = a5;
  sub_1E5B5F8D4(a6, a9 + v20[13], &qword_1ED03E260, &qword_1E5BF9190);
  v23 = v20[14];
  v24 = sub_1E5BF6494();
  (*(*(v24 - 8) + 32))(a9 + v23, a7, v24);
  return sub_1E5B5F8D4(a8, a9 + v20[15], &qword_1ED03E5C0, &unk_1E5BF8A20);
}

uint64_t static DownloadButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for DownloadButtonState(0, a3, a4, v8);
  if ((MEMORY[0x1E6936BF0](a1 + v9[9], a2 + v9[9]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v9[10]) != *(a2 + v9[10]))
  {
    return 0;
  }

  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  sub_1E5B695CC();
  if ((sub_1E5BF6DE4() & 1) == 0 || (sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v10 = v9[15];

  return sub_1E5B65C60(a1 + v10, a2 + v10);
}

uint64_t sub_1E5B65C60(uint64_t a1, uint64_t a2)
{
  v39 = sub_1E5BF6494();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E798, &qword_1E5BF9158);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  v19 = *(v18 + 56);
  sub_1E5B5F864(a1, &v34 - v16, &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F864(a2, &v17[v19], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v17, &qword_1ED03E5C0, &unk_1E5BF8A20);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v17, v14, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if (v20(&v17[v19], 1, v7) != 1)
  {
    v24 = v36;
    sub_1E5B5F8D4(&v17[v19], v36, &qword_1ED03E5E8, &unk_1E5BF9600);
    v25 = *(v5 + 48);
    v26 = v38;
    sub_1E5B5F864(v14, v38, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v24, v26 + v25, &qword_1ED03E5E8, &unk_1E5BF9600);
    v27 = v37;
    v28 = *(v37 + 48);
    v29 = v39;
    if (v28(v26, 1, v39) == 1)
    {
      sub_1E5B5F804(v24, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v28(v26 + v25, 1, v29) == 1)
      {
        sub_1E5B5F804(v26, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_3;
      }
    }

    else
    {
      v30 = v35;
      sub_1E5B5F864(v26, v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v28(v26 + v25, 1, v29) != 1)
      {
        v31 = v34;
        (*(v27 + 32))(v34, v26 + v25, v29);
        sub_1E5B6AD6C(&qword_1ED03E7A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v32 = sub_1E5BF6F14();
        v33 = *(v27 + 8);
        v33(v31, v29);
        sub_1E5B5F804(v24, &qword_1ED03E5E8, &unk_1E5BF9600);
        v33(v30, v29);
        sub_1E5B5F804(v26, &qword_1ED03E5E8, &unk_1E5BF9600);
        if (v32)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      sub_1E5B5F804(v24, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v27 + 8))(v30, v29);
    }

    sub_1E5B5F804(v26, &qword_1ED03E790, &qword_1E5BF9150);
LABEL_13:
    v22 = &qword_1ED03E5C0;
    v23 = &unk_1E5BF8A20;
    goto LABEL_14;
  }

  sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
LABEL_6:
  v22 = &qword_1ED03E798;
  v23 = &qword_1E5BF9158;
LABEL_14:
  sub_1E5B5F804(v17, v22, v23);
  return 0;
}

uint64_t sub_1E5B66224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumeWorkoutConfirmation(0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E770, &unk_1E5BF9130);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E788, &qword_1E5BF9148);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v39 - v17;
  v20 = *(v19 + 56);
  sub_1E5B5F864(a1, &v39 - v17, &qword_1ED03E780, &qword_1E5BF9140);
  sub_1E5B5F864(a2, &v18[v20], &qword_1ED03E780, &qword_1E5BF9140);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v18, &qword_1ED03E780, &qword_1E5BF9140);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v18, v15, &qword_1ED03E780, &qword_1E5BF9140);
  if (v21(&v18[v20], 1, v8) != 1)
  {
    v25 = v41;
    sub_1E5B5F8D4(&v18[v20], v41, &qword_1ED03E778, &qword_1E5C00D60);
    v26 = *(v6 + 48);
    v27 = v44;
    sub_1E5B5F864(v15, v44, &qword_1ED03E778, &qword_1E5C00D60);
    sub_1E5B5F804(v15, &qword_1ED03E778, &qword_1E5C00D60);
    sub_1E5B5F864(v25, v27 + v26, &qword_1ED03E778, &qword_1E5C00D60);
    v28 = v43;
    v29 = *(v42 + 48);
    if (v29(v27, 1, v43) == 1)
    {
      sub_1E5B5F804(v25, &qword_1ED03E778, &qword_1E5C00D60);
      if (v29(v27 + v26, 1, v28) == 1)
      {
        sub_1E5B5F804(v27, &qword_1ED03E778, &qword_1E5C00D60);
        goto LABEL_3;
      }
    }

    else
    {
      v30 = v40;
      sub_1E5B5F864(v27, v40, &qword_1ED03E778, &qword_1E5C00D60);
      if (v29(v27 + v26, 1, v28) != 1)
      {
        v33 = v27 + v26;
        v34 = v39;
        sub_1E5B6AD04(v33, v39, type metadata accessor for ResumeWorkoutConfirmation);
        v35 = sub_1E5BF6474();
        sub_1E5B5F804(v25, &qword_1ED03E778, &qword_1E5C00D60);
        if ((v35 & 1) != 0 && *(v30 + *(v28 + 20)) == *(v34 + *(v28 + 20)))
        {
          v36 = *(v28 + 24);
          v37 = *(v30 + v36);
          v38 = *(v34 + v36);
          sub_1E5B6ACA4(v34, type metadata accessor for ResumeWorkoutConfirmation);
          sub_1E5B6ACA4(v30, type metadata accessor for ResumeWorkoutConfirmation);
          sub_1E5B5F804(v27, &qword_1ED03E778, &qword_1E5C00D60);
          if (v37 == v38)
          {
            goto LABEL_3;
          }

          goto LABEL_19;
        }

        sub_1E5B6ACA4(v34, type metadata accessor for ResumeWorkoutConfirmation);
        sub_1E5B6ACA4(v30, type metadata accessor for ResumeWorkoutConfirmation);
        v31 = &qword_1ED03E778;
        v32 = &qword_1E5C00D60;
LABEL_18:
        sub_1E5B5F804(v27, v31, v32);
LABEL_19:
        v23 = &qword_1ED03E780;
        v24 = &qword_1E5BF9140;
        goto LABEL_20;
      }

      sub_1E5B5F804(v25, &qword_1ED03E778, &qword_1E5C00D60);
      sub_1E5B6ACA4(v30, type metadata accessor for ResumeWorkoutConfirmation);
    }

    v31 = &qword_1ED03E770;
    v32 = &unk_1E5BF9130;
    goto LABEL_18;
  }

  sub_1E5B5F804(v15, &qword_1ED03E778, &qword_1E5C00D60);
LABEL_6:
  v23 = &qword_1ED03E788;
  v24 = &qword_1E5BF9148;
LABEL_20:
  sub_1E5B5F804(v18, v23, v24);
  return 0;
}

uint64_t sub_1E5B66818(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E750, &unk_1E5BF9110);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E768, &qword_1E5BF9128);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v19 = *(v18 + 56);
  sub_1E5B5F864(a1, &v43 - v16, &qword_1ED03E760, &qword_1E5BF9120);
  sub_1E5B5F864(a2, &v17[v19], &qword_1ED03E760, &qword_1E5BF9120);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v17, v14, &qword_1ED03E760, &qword_1E5BF9120);
  if (v20(&v17[v19], 1, v7) != 1)
  {
    v23 = v46;
    sub_1E5B5F8D4(&v17[v19], v46, &qword_1ED03E758, &unk_1E5BFB490);
    v24 = *(v5 + 48);
    v25 = v48;
    sub_1E5B5F864(v14, v48, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F804(v14, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F864(v23, v25 + v24, &qword_1ED03E758, &unk_1E5BFB490);
    v26 = *(v45 + 48);
    v27 = v47;
    if (v26(v25, 1, v47) == 1)
    {
      sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
      if (v26(v25 + v24, 1, v27) == 1)
      {
LABEL_9:
        sub_1E5B5F804(v25, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_10:
        sub_1E5B5F804(v17, &qword_1ED03E760, &qword_1E5BF9120);
        return 1;
      }

      goto LABEL_13;
    }

    v29 = v44;
    sub_1E5B5F864(v25, v44, &qword_1ED03E758, &unk_1E5BFB490);
    if (v26(v25 + v24, 1, v27) == 1)
    {
      sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
      sub_1E5B6ACA4(v29, type metadata accessor for PlannedWorkoutConfirmation);
LABEL_13:
      v30 = &qword_1ED03E750;
      v31 = &unk_1E5BF9110;
LABEL_25:
      sub_1E5B5F804(v25, v30, v31);
      v21 = &qword_1ED03E760;
      v22 = &qword_1E5BF9120;
      goto LABEL_26;
    }

    v32 = v25 + v24;
    v33 = v43;
    sub_1E5B6AD04(v32, v43, type metadata accessor for PlannedWorkoutConfirmation);
    if (sub_1E5BF6474() & 1) != 0 && *(v29 + v27[5]) == *(v33 + v27[5]) && *(v29 + v27[6]) == *(v33 + v27[6]) && ((v34 = v27[7], v35 = *(v29 + v34), v36 = *(v29 + v34 + 8), v37 = (v33 + v34), v35 == *v37) && v36 == v37[1] || (sub_1E5BF7444()))
    {
      v38 = v27[8];
      v39 = *(v29 + v38);
      v40 = *(v29 + v38 + 8);
      v41 = (v33 + v38);
      if (v39 == *v41 && v40 == v41[1])
      {
        sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_28:
        sub_1E5B6ACA4(v33, type metadata accessor for PlannedWorkoutConfirmation);
        sub_1E5B6ACA4(v29, type metadata accessor for PlannedWorkoutConfirmation);
        goto LABEL_9;
      }

      v42 = sub_1E5BF7444();
      sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
      if (v42)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
    }

    sub_1E5B6ACA4(v33, type metadata accessor for PlannedWorkoutConfirmation);
    sub_1E5B6ACA4(v29, type metadata accessor for PlannedWorkoutConfirmation);
    v30 = &qword_1ED03E758;
    v31 = &unk_1E5BFB490;
    goto LABEL_25;
  }

  sub_1E5B5F804(v14, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_6:
  v21 = &qword_1ED03E768;
  v22 = &qword_1E5BF9128;
LABEL_26:
  sub_1E5B5F804(v17, v21, v22);
  return 0;
}

uint64_t sub_1E5B66E88(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for FutureWorkoutConfirmation(0);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E730, &unk_1E5BF90F0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E748, &qword_1E5BF9108);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  v19 = *(v18 + 56);
  sub_1E5B5F864(a1, &v36 - v16, &qword_1ED03E740, &qword_1E5BF9100);
  sub_1E5B5F864(a2, &v17[v19], &qword_1ED03E740, &qword_1E5BF9100);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v17, &qword_1ED03E740, &qword_1E5BF9100);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v17, v14, &qword_1ED03E740, &qword_1E5BF9100);
  if (v20(&v17[v19], 1, v7) != 1)
  {
    v24 = v39;
    sub_1E5B5F8D4(&v17[v19], v39, &qword_1ED03E738, &unk_1E5BFE1C0);
    v25 = *(v5 + 48);
    v26 = v41;
    sub_1E5B5F864(v14, v41, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F804(v14, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F864(v24, v26 + v25, &qword_1ED03E738, &unk_1E5BFE1C0);
    v27 = *(v38 + 48);
    v28 = v40;
    if (v27(v26, 1, v40) == 1)
    {
      sub_1E5B5F804(v24, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v27(v26 + v25, 1, v28) == 1)
      {
        sub_1E5B5F804(v26, &qword_1ED03E738, &unk_1E5BFE1C0);
        goto LABEL_3;
      }
    }

    else
    {
      v29 = v37;
      sub_1E5B5F864(v26, v37, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v27(v26 + v25, 1, v28) != 1)
      {
        v33 = v26 + v25;
        v34 = v36;
        sub_1E5B6AD04(v33, v36, type metadata accessor for FutureWorkoutConfirmation);
        if ((sub_1E5BF6474() & 1) != 0 && *(v29 + *(v28 + 20)) == *(v34 + *(v28 + 20)) && *(v29 + *(v28 + 24)) == *(v34 + *(v28 + 24)))
        {
          v35 = sub_1E5BF6434();
          sub_1E5B6ACA4(v34, type metadata accessor for FutureWorkoutConfirmation);
          sub_1E5B5F804(v24, &qword_1ED03E738, &unk_1E5BFE1C0);
          sub_1E5B6ACA4(v29, type metadata accessor for FutureWorkoutConfirmation);
          sub_1E5B5F804(v26, &qword_1ED03E738, &unk_1E5BFE1C0);
          if (v35)
          {
            goto LABEL_3;
          }

          goto LABEL_20;
        }

        sub_1E5B6ACA4(v34, type metadata accessor for FutureWorkoutConfirmation);
        sub_1E5B5F804(v24, &qword_1ED03E738, &unk_1E5BFE1C0);
        sub_1E5B6ACA4(v29, type metadata accessor for FutureWorkoutConfirmation);
        v32 = v26;
        v30 = &qword_1ED03E738;
        v31 = &unk_1E5BFE1C0;
LABEL_19:
        sub_1E5B5F804(v32, v30, v31);
LABEL_20:
        v22 = &qword_1ED03E740;
        v23 = &qword_1E5BF9100;
        goto LABEL_21;
      }

      sub_1E5B5F804(v24, &qword_1ED03E738, &unk_1E5BFE1C0);
      sub_1E5B6ACA4(v29, type metadata accessor for FutureWorkoutConfirmation);
    }

    v30 = &qword_1ED03E730;
    v31 = &unk_1E5BF90F0;
    v32 = v26;
    goto LABEL_19;
  }

  sub_1E5B5F804(v14, &qword_1ED03E738, &unk_1E5BFE1C0);
LABEL_6:
  v22 = &qword_1ED03E748;
  v23 = &qword_1E5BF9108;
LABEL_21:
  sub_1E5B5F804(v17, v22, v23);
  return 0;
}

uint64_t sub_1E5B674AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07790 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E5B67794(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B677DC(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000016;
  if (a1 != 6)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0x7263736275537369;
  if (a1 != 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (a1 > 1u)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5B6792C(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B6776C(v3, *v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B67980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B674AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B679B0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5B6AC9C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B679DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B67A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DownloadButtonState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for DownloadButtonState.CodingKeys(255, v13, v5, a4);
  swift_getWitnessTable();
  v6 = sub_1E5BF7434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v22 = 0;
  v10 = v14;
  sub_1E5BF7424();
  if (!v10)
  {
    v21 = 1;
    sub_1E5BF64B4();
    sub_1E5B6AD6C(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v20 = 2;
    sub_1E5BF73F4();
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v18 = 4;
    sub_1E5BF7424();
    v17 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B696FC(&qword_1ED03E5D8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v16 = 6;
    sub_1E5BF6494();
    sub_1E5B6AD6C(&qword_1EE2C7AF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5BF7424();
    v15 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B69774(&qword_1ED03E5E0, &protocol conformance descriptor for ModalPresentation<A>);
    sub_1E5BF7424();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DownloadButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v21 = &v19 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  sub_1E5BF6EF4();
  sub_1E5BF64B4();
  sub_1E5B6AD6C(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  sub_1E5BF74D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  sub_1E5B6AD6C(&qword_1EE2C7AE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5BF6EF4();
  sub_1E5B5F864(v2 + *(a2 + 60), v13, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v15 = v21;
  sub_1E5B5F8D4(v13, v21, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v16 = v20;
  sub_1E5B5F864(v15, v20, &qword_1ED03E5E8, &unk_1E5BF9600);
  v17 = v22;
  if ((*(v22 + 48))(v16, 1, v4) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v18 = v19;
    (*(v17 + 32))(v19, v16, v4);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v17 + 8))(v18, v4);
  }

  return sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t DownloadButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  DownloadButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t DownloadButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v45 - v7;
  v8 = sub_1E5BF6494();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v45 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v45 - v13;
  v57 = sub_1E5BF64B4();
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadButtonState.CodingKeys(255, a2, a3, v17);
  swift_getWitnessTable();
  v18 = sub_1E5BF7384();
  v19 = *(v18 - 8);
  v62 = v18;
  v63 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  v64 = a2;
  v61 = a3;
  v23 = type metadata accessor for DownloadButtonState(0, a2, a3, v22);
  v24 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v66 = v21;
  v27 = v67;
  sub_1E5BF7514();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v59;
  v45 = v24;
  v67 = v26;
  v29 = v60;
  v75 = 0;
  v30 = v64;
  sub_1E5BF7364();
  v31 = v67;
  (*(v58 + 32))(v67, v65, v30);
  v74 = 1;
  sub_1E5B6AD6C(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v32 = v28;
  v33 = v57;
  sub_1E5BF7364();
  (*(v29 + 32))(&v31[v23[9]], v32, v33);
  v73 = 2;
  v65 = 0;
  v31[v23[10]] = sub_1E5BF7334() & 1;
  v72 = 3;
  v34 = sub_1E5B6968C(&qword_1ED03E608, MEMORY[0x1E6999B30]);
  v35 = v53;
  v61 = v34;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v35, &v31[v23[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v71 = 4;
  v36 = v52;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v36, &v31[v23[12]], &qword_1ED03E238, &unk_1E5BF8A10);
  v70 = 5;
  sub_1E5B696FC(&qword_1ED03E610, MEMORY[0x1E6999B30]);
  v37 = v51;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v37, &v31[v23[13]], &qword_1ED03E260, &qword_1E5BF9190);
  v69 = 6;
  sub_1E5B6AD6C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v38 = v49;
  v39 = v56;
  sub_1E5BF7364();
  (*(v55 + 32))(&v31[v23[14]], v38, v39);
  v68 = 7;
  sub_1E5B69774(qword_1ED03E618, &protocol conformance descriptor for ModalPresentation<A>);
  v40 = v48;
  v41 = v62;
  sub_1E5BF7364();
  (*(v63 + 8))(v66, v41);
  v42 = v67;
  sub_1E5B5F8D4(v40, &v67[v23[15]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v43 = v45;
  (*(v45 + 16))(v46, v42, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v43 + 8))(v42, v23);
}

uint64_t sub_1E5B68E30(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  DownloadButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B68E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6E776F446F6ELL && a2 == 0xEA00000000006461;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B68FA0(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7A8, &qword_1E5BF9160);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v31 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7B0, &qword_1E5BF9168);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7B8, &qword_1E5BF9170);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7C0, &qword_1E5BF9178);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5B653E4();
  v13 = v39;
  sub_1E5BF7514();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v32 = v5;
  v39 = 0;
  v14 = v37;
  v15 = v38;
  v16 = v9;
  v17 = sub_1E5BF7374();
  v18 = (2 * *(v17 + 16)) | 1;
  v41 = v17;
  v42 = v17 + 32;
  v43 = 0;
  v44 = v18;
  v19 = sub_1E5B7FB04();
  if (v19 == 3 || v43 != v44 >> 1)
  {
    v23 = sub_1E5BF7284();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v25 = &type metadata for DownloadStatus;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v19)
  {
    v45 = 0;
    sub_1E5B654E0();
    v27 = v39;
    sub_1E5BF72C4();
    if (v27)
    {
      goto LABEL_9;
    }

    (*(v14 + 8))(v7, v32);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v30 = 0;
LABEL_15:
    v29 = 1;
    goto LABEL_16;
  }

  if (v19 != 1)
  {
    v45 = 2;
    sub_1E5B65438();
    v28 = v39;
    sub_1E5BF72C4();
    if (v28)
    {
      goto LABEL_9;
    }

    (*(v33 + 8))(v15, v35);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v30 = 1;
    goto LABEL_15;
  }

  v45 = 1;
  sub_1E5B6548C();
  v20 = v39;
  sub_1E5BF72C4();
  if (v20)
  {
LABEL_9:
    (*(v16 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v21 = v34;
  v22 = sub_1E5BF7304();
  (*(v36 + 8))(v4, v21);
  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v29 = 0;
  v30 = v22 & 0x1FFFFFFFFLL;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v30 | (v29 << 40);
}

uint64_t sub_1E5B6954C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5B695CC()
{
  result = qword_1EE2C75E8;
  if (!qword_1EE2C75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75E8);
  }

  return result;
}

unint64_t sub_1E5B69638()
{
  result = qword_1ED03E5F8;
  if (!qword_1ED03E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5F8);
  }

  return result;
}

uint64_t sub_1E5B6968C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E238, &unk_1E5BF8A10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B696FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B62934();
    sub_1E5B60FD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B69774(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1E5B69844(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B69860(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

void sub_1E5B6989C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v2 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v3 <= 0x3F)
      {
        sub_1E5B6A4B0(319);
        if (v4 <= 0x3F)
        {
          sub_1E5BF6494();
          if (v5 <= 0x3F)
          {
            sub_1E5B6A50C(319);
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

uint64_t sub_1E5B6998C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v58 = *(a3 + 16);
  v4 = *(v58 - 8);
  v5 = *(v4 + 84);
  v56 = sub_1E5BF64B4();
  v6 = *(v56 - 8);
  v57 = *(v6 + 84);
  if (v57 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  if (v7 > v12)
  {
    v12 = v7;
  }

  v13 = ((v9 + 6) & ~v9) + v10;
  if (v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = v13;
  }

  v15 = 252 - (1u >> (8 * v14));
  if (v14 >= 4)
  {
    v15 = 252;
  }

  if (v12 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v17 = *(sub_1E5BF6494() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v16 <= v19)
  {
    v20 = *(v17 + 84);
  }

  else
  {
    v20 = v16;
  }

  v21 = v19 - 1;
  if (!v19)
  {
    v21 = 0;
  }

  v22 = v21 - 1;
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v20 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  v25 = *(v6 + 80);
  v26 = *(v6 + 64);
  v27 = *(v17 + 80);
  v28 = *(v17 + 64);
  if (v24 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v24;
  }

  if (v19)
  {
    v30 = v19 < 2;
  }

  else
  {
    v30 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v4 + 64) + v25;
  v32 = v9 | 7;
  v33 = (v9 | 7) + 1;
  v34 = v33 + v11;
  v35 = v14 + v27 + 1;
  v36 = v28 + v27;
  v37 = a1;
  if (a2 > v29)
  {
    v38 = v30 + v28 + ((v36 + ((v35 + ((v34 + ((v34 + ((v33 + v26 + (v31 & ~v25)) & ~v32)) & ~v32)) & ~v32)) & ~v27)) & ~v27);
    v39 = 8 * v38;
    if (v38 > 3)
    {
      goto LABEL_39;
    }

    v41 = ((a2 - v29 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    if (v41 >= 2)
    {
LABEL_39:
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_59;
      }

LABEL_46:
      v42 = (v40 - 1) << v39;
      if (v38 > 3)
      {
        v42 = 0;
      }

      if (v38)
      {
        if (v38 <= 3)
        {
          v43 = v38;
        }

        else
        {
          v43 = 4;
        }

        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v44 = *a1;
          }
        }

        else if (v43 == 1)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }
      }

      else
      {
        v44 = 0;
      }

      v54 = v29 + (v44 | v42);
      return (v54 + 1);
    }
  }

LABEL_59:
  if (v5 == v29)
  {
    v45 = v58;
    v46 = *(v4 + 48);
    v47 = v5;
LABEL_63:

    return v46(v37, v47, v45);
  }

  v37 = ((a1 + v31) & ~v25);
  if (v57 == v29)
  {
    v46 = *(v6 + 48);
    v47 = v57;
    v45 = v56;
    goto LABEL_63;
  }

  v49 = v37 + v26;
  if (v29 == 254)
  {
    v50 = *v49;
    if (v50 < 2)
    {
      return 0;
    }

    v54 = (v50 + 2147483646) & 0x7FFFFFFF;
    return (v54 + 1);
  }

  v51 = ~v27;
  v52 = (v35 + ((v34 + ((v34 + (&v49[v33] & ~v32)) & ~v32)) & ~v32)) & v51;
  if (v19 == v29)
  {
    v53 = *(v18 + 48);

    return v53(v52);
  }

  else
  {
    result = 0;
    if (v19 >= 2 && v22)
    {
      v55 = (*(v18 + 48))((v36 + v52) & v51);
      if (v55 >= 3)
      {
        return v55 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5B69E54(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v65 = *(a4 + 16);
  v4 = *(v65 - 8);
  v64 = v4;
  v5 = *(v4 + 84);
  v62 = sub_1E5BF64B4();
  v6 = *(v62 - 8);
  v63 = *(v6 + 84);
  if (v63 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  if (v7 > v12)
  {
    v12 = v7;
  }

  v13 = ((v9 + 6) & ~v9) + v10;
  if (v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = v13;
  }

  v15 = 252 - (1u >> (8 * v14));
  if (v14 >= 4)
  {
    v15 = 252;
  }

  if (v12 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v17 = 0;
  v18 = *(sub_1E5BF6494() - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  v21 = *(v4 + 64);
  if (v16 <= v20)
  {
    v22 = *(v18 + 84);
  }

  else
  {
    v22 = v16;
  }

  v23 = v20 - 1;
  if (!v20)
  {
    v23 = 0;
  }

  v24 = v23 - 1;
  v25 = v20 < 2;
  if (v20 < 2)
  {
    v24 = 0;
  }

  if (v22 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  v27 = *(v6 + 80);
  v28 = *(v6 + 64);
  v29 = *(v18 + 80);
  v30 = *(v18 + 64);
  if (v26 <= 0xFE)
  {
    v31 = 254;
  }

  else
  {
    v31 = v26;
  }

  v32 = v21 + v27;
  v33 = (v9 | 7) + 1;
  v34 = v33 + v11;
  v35 = v14 + v29 + 1;
  v36 = v30 + v29;
  if (v20)
  {
    v37 = v20 < 2;
  }

  else
  {
    v37 = v25 + 1;
  }

  v38 = v37 + v30 + ((v30 + v29 + ((v35 + ((v33 + v11 + ((v33 + v11 + ((v33 + v28 + ((v21 + v27) & ~v27)) & ~(v9 | 7))) & ~(v9 | 7))) & ~(v9 | 7))) & ~v29)) & ~v29);
  if (a3 > v31)
  {
    v17 = 1;
    if (v38 <= 3)
    {
      v39 = ((a3 - v31 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      v40 = HIWORD(v39);
      if (v39 < 0x100)
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      if (v39 >= 2)
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      if (v40)
      {
        v17 = 4;
      }

      else
      {
        v17 = v42;
      }
    }
  }

  if (v31 < a2)
  {
    v43 = ~v31 + a2;
    if (v38 >= 4)
    {
      bzero(a1, v38);
      *a1 = v43;
      v44 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_77;
    }

    v44 = (v43 >> (8 * v38)) + 1;
    if (v38)
    {
      v46 = v43 & ~(-1 << (8 * v38));
      bzero(a1, v38);
      if (v38 != 3)
      {
        if (v38 == 2)
        {
          *a1 = v46;
          if (v17 > 1)
          {
            goto LABEL_49;
          }
        }

        else
        {
          *a1 = v43;
          if (v17 > 1)
          {
LABEL_49:
            if (v17 == 2)
            {
              *&a1[v38] = v44;
            }

            else
            {
              *&a1[v38] = v44;
            }

            return;
          }
        }

LABEL_77:
        if (v17)
        {
          a1[v38] = v44;
        }

        return;
      }

      *a1 = v46;
      a1[2] = BYTE2(v46);
    }

    if (v17 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

  v45 = a1;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v38] = 0;
  }

  else if (v17)
  {
    a1[v38] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v5 == v31)
  {
    v47 = v65;
    v48 = *(v64 + 56);
    v49 = a2;
    v50 = v5;
LABEL_67:

    v48(v45, v49, v50, v47);
    return;
  }

  v45 = (&a1[v32] & ~v27);
  if (v63 == v31)
  {
    v48 = *(v6 + 56);
    v49 = a2;
    v50 = v63;
    v47 = v62;
    goto LABEL_67;
  }

  v51 = &v45[v28];
  if (v31 == 254)
  {
    *v51 = a2 + 1;
    return;
  }

  v53 = (v35 + ((v34 + ((v34 + (&v51[v33] & ~(v9 | 7))) & ~(v9 | 7))) & ~(v9 | 7))) & ~v29;
  if (v20 != v31)
  {
    v52 = ~v29;
    v56 = (v36 + v53) & ~v29;
    if (v20)
    {
      if (v24 >= a2)
      {
        if (a2 + 1 <= v23)
        {
          if (a2 == -1 || v20 == 1)
          {
            return;
          }

          v54 = *(v19 + 56);
          v55 = a2 + 2;
          v53 = v56;
          goto LABEL_84;
        }

        if (v30 <= 3)
        {
          v57 = ~(-1 << (8 * v30));
        }

        else
        {
          v57 = -1;
        }

        if (!v30)
        {
          return;
        }

        v58 = v57 & (a2 - v23);
        if (v30 <= 3)
        {
          v59 = v30;
        }

        else
        {
          v59 = 4;
        }

        bzero(((v36 + v53) & v52), v30);
        if (v59 <= 2)
        {
          if (v59 != 1)
          {
LABEL_99:
            *v56 = v58;
            return;
          }

LABEL_110:
          *v56 = v58;
          return;
        }

        goto LABEL_111;
      }
    }

    else
    {
      LODWORD(v30) = v30 + 1;
    }

    v60 = (v30 + v25);
    if (v60 <= 3)
    {
      v61 = ~(-1 << (8 * v60));
    }

    else
    {
      v61 = -1;
    }

    if (!v60)
    {
      return;
    }

    v58 = v61 & (~v24 + a2);
    if (v60 <= 3)
    {
      v59 = v60;
    }

    else
    {
      v59 = 4;
    }

    bzero(((v36 + v53) & v52), v60);
    if (v59 <= 2)
    {
      if (v59 != 1)
      {
        goto LABEL_99;
      }

      goto LABEL_110;
    }

LABEL_111:
    if (v59 == 3)
    {
      *v56 = v58;
      *(v56 + 2) = BYTE2(v58);
    }

    else
    {
      *v56 = v58;
    }

    return;
  }

  v54 = *(v19 + 56);
  v55 = a2;
LABEL_84:

  v54(v53, v55);
}

void sub_1E5B6A458()
{
  if (!qword_1EE2C6270)
  {
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6270);
    }
  }
}

void sub_1E5B6A4B0(uint64_t a1)
{
  if (!qword_1EE2C6280)
  {
    sub_1E5B695CC();
    v1 = sub_1E5BF6E04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C6280);
    }
  }
}

void sub_1E5B6A50C(uint64_t a1)
{
  if (!qword_1EE2C7448[0])
  {
    v2 = sub_1E5BF6494();
    v3 = MEMORY[0x1E69695A8];
    v6[0] = v2;
    v6[1] = sub_1E5B6AD6C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v6[2] = sub_1E5B6AD6C(&qword_1EE2C7AF0, v3, MEMORY[0x1E69695B0]);
    v6[3] = sub_1E5B6AD6C(&qword_1EE2C7AE8, v3, MEMORY[0x1E69695B8]);
    v4 = type metadata accessor for ModalPresentation(a1, v6);
    if (!v5)
    {
      atomic_store(v4, qword_1EE2C7448);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleContentButtonState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentButtonState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DownloadStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B6A8DC()
{
  result = qword_1ED03E720;
  if (!qword_1ED03E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E720);
  }

  return result;
}

unint64_t sub_1E5B6A934()
{
  result = qword_1ED03E728;
  if (!qword_1ED03E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E728);
  }

  return result;
}

unint64_t sub_1E5B6A9E0()
{
  result = qword_1EE2C7630;
  if (!qword_1EE2C7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7630);
  }

  return result;
}

unint64_t sub_1E5B6AA38()
{
  result = qword_1EE2C7638;
  if (!qword_1EE2C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7638);
  }

  return result;
}

unint64_t sub_1E5B6AA90()
{
  result = qword_1EE2C75F8;
  if (!qword_1EE2C75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75F8);
  }

  return result;
}

unint64_t sub_1E5B6AAE8()
{
  result = qword_1EE2C7600;
  if (!qword_1EE2C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7600);
  }

  return result;
}

unint64_t sub_1E5B6AB40()
{
  result = qword_1EE2C7608;
  if (!qword_1EE2C7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7608);
  }

  return result;
}

unint64_t sub_1E5B6AB98()
{
  result = qword_1EE2C7610;
  if (!qword_1EE2C7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7610);
  }

  return result;
}

unint64_t sub_1E5B6ABF0()
{
  result = qword_1EE2C7618;
  if (!qword_1EE2C7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7618);
  }

  return result;
}

unint64_t sub_1E5B6AC48()
{
  result = qword_1EE2C7620;
  if (!qword_1EE2C7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7620);
  }

  return result;
}

uint64_t sub_1E5B6ACA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5B6AD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B6AD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5B6ADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v7 = sub_1E5BF6494();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - v10;
  v12 = type metadata accessor for DownloadButtonFeature.TaskIdentifier(0, a3, a4, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = &v42 - v22;
  v25 = &v42 + *(v24 + 48) - v22;
  v46 = v13;
  v26 = *(v13 + 16);
  v26(&v42 - v22, a1, v12, v21);
  (v26)(v25, v47, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v26)(v15, v23, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *(v25 + 1);
      v48 = *v25;
      v49 = v27;
      v50 = *(v25 + 4);
      v28 = MEMORY[0x1E6937980](v15, &v48);
      sub_1E5B6E230(&v48);
      v29 = v15;
      goto LABEL_10;
    }

    v18 = v15;
  }

  else
  {
    (v26)(v18, v23, v12);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E880, &qword_1E5BF9300) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *(v25 + 1);
      v48 = *v25;
      v49 = v31;
      v50 = *(v25 + 4);
      v33 = v43;
      v32 = v44;
      v34 = *(v44 + 32);
      v35 = v45;
      v34(v43, &v18[v30], v45);
      v36 = &v25[v30];
      v37 = v42;
      v34(v42, v36, v35);
      v38 = MEMORY[0x1E6937980](v18, &v48);
      sub_1E5B6E230(v18);
      if ((v38 & 1) == 0)
      {
        v40 = *(v32 + 8);
        v40(v37, v35);
        v40(v33, v35);
        sub_1E5B6E230(&v48);
        v28 = 0;
        goto LABEL_12;
      }

      v28 = sub_1E5BF6474();
      v39 = *(v32 + 8);
      v39(v37, v35);
      v39(v33, v35);
      v29 = &v48;
LABEL_10:
      sub_1E5B6E230(v29);
LABEL_12:
      v20 = v46;
      goto LABEL_13;
    }

    (*(v44 + 8))(&v18[v30], v45);
  }

  sub_1E5B6E230(v18);
  v28 = 0;
  v12 = TupleTypeMetadata2;
LABEL_13:
  (*(v20 + 8))(v23, v12);
  return v28 & 1;
}

uint64_t sub_1E5B6B208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v3, a2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v12 + 1);
    v18 = *v12;
    v19 = v14;
    v20 = *(v12 + 4);
    MEMORY[0x1E6937C10](1);
    sub_1E5BF7244();
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E880, &qword_1E5BF9300) + 48);
    v16 = *(v12 + 1);
    v18 = *v12;
    v19 = v16;
    v20 = *(v12 + 4);
    (*(v6 + 32))(v8, &v12[v15], v5);
    MEMORY[0x1E6937C10](0);
    sub_1E5BF7244();
    sub_1E5B6E284();
    sub_1E5BF6EF4();
    (*(v6 + 8))(v8, v5);
  }

  return sub_1E5B6E230(&v18);
}

uint64_t sub_1E5B6B428(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B6B208(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B6B478(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5B6B208(v4, a2);
  return sub_1E5BF7504();
}

__n128 DownloadButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5BF6484();
  v9 = a4 + *(type metadata accessor for DownloadButtonFeature(0, a2, a3, v8) + 36);
  v10 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 16) = v10;
  result = *(a1 + 32);
  *(v9 + 32) = result;
  return result;
}

uint64_t DownloadButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a3;
  v105 = a1;
  v8 = a4 & 0xFFFFFFFFFFFFLL;
  v9 = *(a5 + 16);
  v10 = *(a5 + 24);
  v108 = type metadata accessor for DownloadButtonFeature.TaskIdentifier(0, v9, v10, a4);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v102 - v16;
  v120 = a5;
  v115 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v112 = v19;
  v114 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7C8, &qword_1E5BF9198);
  v116 = *(v20 - 8);
  v117 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v118 = v102 - v21;
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v113 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v102 - v27;
  v29 = *(v22 + 16);
  v110 = v22 + 16;
  v109 = v29;
  (v29)(v102 - v27, a2, v9, v26);
  if ((a4 & 0x1000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0);
    *v17 = a4;
    v17[4] = BYTE4(a4);
    v17[5] = BYTE5(v8) & 1;
    sub_1E5BF6444();
    (*(v22 + 8))(v28, v9);
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for DownloadButtonState(0, v9, v10, v31);
    return sub_1E5B6C3AC(v17, &a2[*(v32 + 52)]);
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      (*(v22 + 8))(v28, v9);
      v82 = *(type metadata accessor for DownloadButtonState(0, v9, v10, v81) + 60);
      sub_1E5B5F804(&a2[v82], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v83 - 8) + 56))(&a2[v82], 1, 1, v83);
    }

    else if (v8 == 4)
    {
      (*(v22 + 8))(v28, v9);
      v58 = type metadata accessor for DownloadButtonState(0, v9, v10, v57);
      v59 = *(v58 + 60);
      sub_1E5B5F804(&a2[v59], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v60 = *(v58 + 56);
      v61 = sub_1E5BF6494();
      v62 = *(v61 - 8);
      (*(v62 + 16))(&a2[v59], &a2[v60], v61);
      (*(v62 + 56))(&a2[v59], 0, 1, v61);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v63 - 8) + 56))(&a2[v59], 0, 1, v63);
    }

    else
    {
      LOBYTE(v123[0]) = 1;
      DownloadButtonFeature.reduce(localState:sharedState:sideEffects:action:)(v105, a2, v121, 0x1000000000002, v120);
      return (*(v22 + 8))(v28, v9);
    }
  }

  else
  {
    if (!v8)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v107 = v64[12];
      v65 = v64[16];
      v108 = v64[20];
      v66 = v118;
      v106 = &v118[v64[24]];
      v103 = v10;
      v67 = v28;
      v104 = v28;
      sub_1E5BF72B4();
      v124 = 5;
      sub_1E5B6C48C(v123, v122);
      sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v123);
      v68 = v9;
      v69 = *MEMORY[0x1E6999B50];
      v70 = sub_1E5BF6E24();
      (*(*(v70 - 8) + 104))(&v66[v65], v69, v70);
      v71 = v114;
      v72 = v115;
      v73 = v120;
      (*(v115 + 16))(v114, v119, v120);
      v74 = v113;
      v109(v113, v67, v68);
      v75 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v76 = v22;
      v77 = (v112 + v75 + *(v22 + 80)) & ~*(v22 + 80);
      v78 = swift_allocObject();
      v79 = v103;
      *(v78 + 16) = v68;
      *(v78 + 24) = v79;
      (*(v72 + 32))(v78 + v75, v71, v73);
      (*(v76 + 32))(v78 + v77, v74, v68);
      v80 = &unk_1E5BF91E0;
LABEL_15:
      v99 = v106;
      *v106 = v80;
      *(v99 + 1) = v78;
      sub_1E5BF7094();
      v100 = *MEMORY[0x1E6999B48];
      v101 = sub_1E5BF6E14();
      (*(*(v101 - 8) + 104))(&v66[v108], v100, v101);
      (*(v116 + 104))(v66, *MEMORY[0x1E6999AD8], v117);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D8, &qword_1E5BF91C0);
      sub_1E5BF7034();
      return (*(v76 + 8))(v104, v68);
    }

    if (v8 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0);
      *v17 = 0;
      *(v17 + 2) = 1;
      sub_1E5BF6444();
      swift_storeEnumTagMultiPayload();
      v103 = v10;
      v35 = type metadata accessor for DownloadButtonState(0, v9, v10, v34);
      sub_1E5B6C3AC(v17, &a2[*(v35 + 52)]);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v102[1] = v36[12];
      v37 = v36[16];
      v105 = v36[20];
      v38 = v118;
      v102[0] = &v118[v36[24]];
      v39 = v106;
      v40 = v28;
      v104 = v28;
      sub_1E5BF72B4();
      v41 = v108;
      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1E5BF72B4();
      (*(v107 + 8))(v39, v41);
      v42 = v9;
      v43 = *MEMORY[0x1E6999B50];
      v44 = sub_1E5BF6E24();
      (*(*(v44 - 8) + 104))(&v38[v37], v43, v44);
      v45 = v114;
      v46 = v115;
      v47 = v120;
      (*(v115 + 16))(v114, v119, v120);
      v48 = v113;
      v109(v113, v40, v42);
      v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v50 = v22;
      v51 = (v112 + v49 + *(v22 + 80)) & ~*(v22 + 80);
      v52 = swift_allocObject();
      v53 = v103;
      *(v52 + 16) = v42;
      *(v52 + 24) = v53;
      (*(v46 + 32))(v52 + v49, v45, v47);
      (*(v50 + 32))(v52 + v51, v48, v42);
      v54 = v102[0];
      *v102[0] = &unk_1E5BF91D0;
      *(v54 + 8) = v52;
      sub_1E5BF7094();
      v55 = *MEMORY[0x1E6999B48];
      v56 = sub_1E5BF6E14();
      (*(*(v56 - 8) + 104))(&v38[v105], v55, v56);
      (*(v116 + 104))(v38, *MEMORY[0x1E6999AD8], v117);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D8, &qword_1E5BF91C0);
      sub_1E5BF7034();
      return (*(v50 + 8))(v104, v42);
    }

    v84 = type metadata accessor for DownloadButtonState(0, v9, v10, v30);
    sub_1E5B6C41C(&a2[*(v84 + 52)], v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v86 = sub_1E5BF6464();
      (*(*(v86 - 8) + 8))(&v14[v85], v86);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v107 = v87[12];
      v88 = v87[16];
      v108 = v87[20];
      v66 = v118;
      v106 = &v118[v87[24]];
      v89 = v28;
      v104 = v28;
      sub_1E5BF72B4();
      v124 = 3;
      sub_1E5B6C48C(v123, v122);
      sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v123);
      v103 = v10;
      v68 = v9;
      v90 = *MEMORY[0x1E6999B50];
      v91 = sub_1E5BF6E24();
      (*(*(v91 - 8) + 104))(&v66[v88], v90, v91);
      v92 = v114;
      v93 = v115;
      v94 = v120;
      (*(v115 + 16))(v114, v119, v120);
      v95 = v113;
      v109(v113, v89, v68);
      v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v76 = v22;
      v97 = (v112 + v96 + *(v22 + 80)) & ~*(v22 + 80);
      v78 = swift_allocObject();
      v98 = v103;
      *(v78 + 16) = v68;
      *(v78 + 24) = v98;
      (*(v93 + 32))(v78 + v96, v92, v94);
      (*(v76 + 32))(v78 + v97, v95, v68);
      v80 = &unk_1E5BF91B8;
      goto LABEL_15;
    }

    (*(v22 + 8))(v28, v9);
    return sub_1E5B5F804(v14, &qword_1ED03E260, &qword_1E5BF9190);
  }
}

uint64_t sub_1E5B6C3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B6C41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B6C4E8()
{
  result = qword_1EE2C7240;
  if (!qword_1EE2C7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7240);
  }

  return result;
}

uint64_t sub_1E5B6C590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C62C, v7, v6);
}

uint64_t sub_1E5B6C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = (v5 + *(type metadata accessor for DownloadButtonFeature(0, v4[4], v4[5], a4) + 36));
  v10 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B6C734;
  v8 = v4[3];

  return v10(v8);
}

uint64_t sub_1E5B6C734()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C854, v3, v2);
}

uint64_t sub_1E5B6C854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B6C8BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6999B48];
  v3 = sub_1E5BF6E14();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E5B6C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 56) = *(a4 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = sub_1E5BF7084();
  *(v5 + 88) = sub_1E5BF7074();
  *(v5 + 156) = 1;
  *(v5 + 152) = 0;
  *(v5 + 158) = 0;
  v6 = swift_task_alloc();
  *(v5 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E888, &qword_1E5BF9308);
  *(v5 + 104) = v7;
  *v6 = v5;
  v6[1] = sub_1E5B6CA88;

  return MEMORY[0x1EEE01A40](v5 + 152, v7);
}

uint64_t sub_1E5B6CA88()
{
  v1 = *v0;

  v3 = sub_1E5BF7054();
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6CBCC, v3, v2);
}

uint64_t sub_1E5B6CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = v5 + *(type metadata accessor for DownloadButtonFeature(0, v4[5], v4[6], a4) + 36);
  v10 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B6CCD4;
  v8 = v4[4];

  return v10(v8);
}

uint64_t sub_1E5B6CCD4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1E5B6CE84;
  }

  else
  {
    v5 = sub_1E5B6CE10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5B6CE10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B6CE84()
{
  v32 = v0;
  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_1E5BF6594();
  __swift_project_value_buffer(v6, qword_1ED053DE0);
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = v1;
  v9 = sub_1E5BF6574();
  v10 = sub_1E5BF71A4();

  if (os_log_type_enabled(v9, v10))
  {
    v29 = *(v0 + 136);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 136315394;
    v7(v12, v11, v14);
    v16 = sub_1E5BF6FB4();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_1E5B89CE4(v16, v18, &v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2114;
    v20 = v29;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_1E5B54000, v9, v10, "Failed to download workout with identifier: %s -- %{public}@", v15, 0x16u);
    sub_1E5B5F804(v28, &qword_1ED03E890, &qword_1E5BF9310);
    MEMORY[0x1E6938270](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E6938270](v30, -1, -1);
    MEMORY[0x1E6938270](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 40);

    (*(v23 + 8))(v22, v24);
  }

  *(v0 + 164) = 256;
  *(v0 + 160) = 0;
  *(v0 + 166) = 0;
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_1E5B6D180;
  v26 = *(v0 + 104);

  return MEMORY[0x1EEE01A40](v0 + 160, v26);
}

uint64_t sub_1E5B6D180()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D2A0, v3, v2);
}

uint64_t sub_1E5B6D2A0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B6D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1E5BF7084();
  v5[7] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D3C0, v7, v6);
}

uint64_t sub_1E5B6D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = v5 + *(type metadata accessor for DownloadButtonFeature(0, v4[5], v4[6], a4) + 36);
  v10 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B6D4C8;
  v8 = v4[4];

  return v10(v8);
}

uint64_t sub_1E5B6D4C8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1E5B6D7F4, v3, v4);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 108) = 256;
    *(v2 + 110) = 0;
    v5 = swift_task_alloc();
    *(v2 + 96) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E888, &qword_1E5BF9308);
    *v5 = v2;
    v5[1] = sub_1E5B6D670;

    return MEMORY[0x1EEE01A40](v2 + 104, v6);
  }
}

uint64_t sub_1E5B6D670()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D790, v3, v2);
}

uint64_t sub_1E5B6D790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B6D7F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B6D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DownloadButtonFeature(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E5B6D9A0;

  return sub_1E5B6D320(a1, v4 + v10, v4 + v11, v7, v8);
}

uint64_t sub_1E5B6D9A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5B6DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DownloadButtonFeature(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E5B6E314;

  return sub_1E5B6C930(a1, v4 + v10, v4 + v11, v7, v8);
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for DownloadButtonFeature(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v4 + v7;
  v11 = sub_1E5BF6494();
  (*(*(v11 - 8) + 8))(v10, v11);

  (*(v8 + 8))(v4 + v9, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5B6DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DownloadButtonFeature(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E5B6E314;

  return sub_1E5B6C590(a1, v4 + v10, v4 + v11, v7, v8);
}

unint64_t sub_1E5B6DEE4()
{
  result = qword_1ED03E7E0;
  if (!qword_1ED03E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E7E0);
  }

  return result;
}

unint64_t sub_1E5B6DF3C()
{
  result = qword_1ED03E7E8[0];
  if (!qword_1ED03E7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03E7E8);
  }

  return result;
}

unint64_t sub_1E5B6DF94()
{
  result = qword_1EE2C6290;
  if (!qword_1EE2C6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6290);
  }

  return result;
}

uint64_t sub_1E5B6E004(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for DownloadButtonEnvironment(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5B6E0B4(uint64_t a1)
{
  sub_1E5B6E178(319);
  if (v1 <= 0x3F)
  {
    sub_1E5B6E1E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5B6E178(uint64_t a1)
{
  if (!qword_1ED03E870)
  {
    sub_1E5BF6494();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED03E870);
    }
  }
}

uint64_t sub_1E5B6E1E4()
{
  result = qword_1ED03E878;
  if (!qword_1ED03E878)
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &qword_1ED03E878);
  }

  return result;
}

unint64_t sub_1E5B6E284()
{
  result = qword_1EE2C7AE8;
  if (!qword_1EE2C7AE8)
  {
    sub_1E5BF6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7AE8);
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

uint64_t sub_1E5B6E31C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E5BF74B4();
  if (a3 <= 1u)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v4 = 3;
LABEL_10:
    MEMORY[0x1E6937C10](v4);
    sub_1E5BF6FE4();
    return sub_1E5BF7504();
  }

  if (a3 == 3)
  {
    MEMORY[0x1E6937C10](4);
    sub_1E5BF74D4();
  }

  else
  {
    MEMORY[0x1E6937C10](0);
  }

  return sub_1E5BF7504();
}

uint64_t sub_1E5B6E3E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 <= 1)
  {
    if (*(v1 + 16))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return MEMORY[0x1E6937C10](0);
      }

      MEMORY[0x1E6937C10](4);
      return sub_1E5BF74D4();
    }

    v4 = 3;
  }

  MEMORY[0x1E6937C10](v4);

  return sub_1E5BF6FE4();
}

uint64_t sub_1E5B6E49C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E5BF74B4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 3;
LABEL_10:
    MEMORY[0x1E6937C10](v3);
    sub_1E5BF6FE4();
    return sub_1E5BF7504();
  }

  if (v2 == 3)
  {
    MEMORY[0x1E6937C10](4);
    sub_1E5BF74D4();
  }

  else
  {
    MEMORY[0x1E6937C10](0);
  }

  return sub_1E5BF7504();
}

__n128 StackButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t StackButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unsigned __int8 a5)
{
  v149 = a4;
  v151 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v133 - v12;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E898, &qword_1E5BF9328);
  v152 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v133 - v25;
  v27 = v5[3];
  v158 = v5[2];
  v159 = v27;
  v160 = v5[4];
  v28 = v5[1];
  v156 = *v5;
  v157 = v28;
  v29 = a2[1];
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v55 = v149;
      v56 = v149 >> 8;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v58 = v57[16];
      v59 = v57[20];
      v60 = &v15[v57[24]];
      v153 = v55 & 1;
      v154 = 0;
      v155 = 3;
      sub_1E5B6F52C();
      sub_1E5BF7254();
      sub_1E5BF7094();
      v61 = *MEMORY[0x1E6999B60];
      v62 = sub_1E5BF6E24();
      (*(*(v62 - 8) + 104))(&v15[v58], v61, v62);
      v63 = *MEMORY[0x1E6999B40];
      v64 = sub_1E5BF6E14();
      (*(*(v64 - 8) + 104))(&v15[v59], v63, v64);
      v65 = swift_allocObject();
      v66 = v159;
      *(v65 + 48) = v158;
      *(v65 + 64) = v66;
      *(v65 + 80) = v160;
      v67 = v157;
      *(v65 + 16) = v156;
      *(v65 + 32) = v67;
      *(v65 + 96) = v55 & 1;
      *(v65 + 97) = v56;
      *v60 = &unk_1E5BF9340;
      *(v60 + 1) = v65;
      v68 = v152;
      v69 = v150;
      (*(v152 + 104))(v15, *MEMORY[0x1E6999AD8], v150);
      v51 = v151;
      v52 = *v151;
      sub_1E5B70DB8(&v156, &v153);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1E5B71778(0, v52[2] + 1, 1, v52, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
      }

      v71 = v52[2];
      v70 = v52[3];
      if (v71 >= v70 >> 1)
      {
        v52 = sub_1E5B71778((v70 > 1), v71 + 1, 1, v52, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
      }

      v52[2] = v71 + 1;
      result = (*(v68 + 32))(v52 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v71, v15, v69);
      goto LABEL_18;
    }

    v148 = *a2;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v81 = v80[16];
    v82 = v80[20];
    v83 = &v26[v80[24]];
    v153 = 0;
    v154 = 0;
    v155 = 4;
    v84 = sub_1E5B6F52C();
    v149 = v29;

    v147 = v84;
    sub_1E5BF7254();
    v85 = *MEMORY[0x1E6999B50];
    v86 = sub_1E5BF6E24();
    v87 = *(v86 - 8);
    v88 = *(v87 + 104);
    v146 = v85;
    v145 = v86;
    v144 = v88;
    v143 = v87 + 104;
    (v88)(&v26[v81], v85);
    v89 = *MEMORY[0x1E6999B40];
    v90 = sub_1E5BF6E14();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v142 = v89;
    v141 = v90;
    v140 = v92;
    v139 = v91 + 104;
    (v92)(&v26[v82], v89);
    v93 = swift_allocObject();
    v94 = v159;
    v93[3] = v158;
    v93[4] = v94;
    v93[5] = v160;
    v95 = v157;
    v93[1] = v156;
    v93[2] = v95;
    *v83 = &unk_1E5BF9378;
    *(v83 + 1) = v93;
    sub_1E5B70DB8(&v156, &v153);
    sub_1E5BF7094();
    v96 = v152;
    v97 = *(v152 + 104);
    v138 = *MEMORY[0x1E6999AD8];
    v137 = v97;
    v97(v26);
    v98 = *v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1E5B71778(0, *(v98 + 2) + 1, 1, v98, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    if (v100 >= v99 >> 1)
    {
      v98 = sub_1E5B71778((v99 > 1), v100 + 1, 1, v98, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    *(v98 + 2) = v100 + 1;
    v102 = *(v96 + 32);
    v101 = v96 + 32;
    v135 = (*(v101 + 48) + 32) & ~*(v101 + 48);
    v134 = *(v101 + 40);
    v103 = v150;
    v152 = v101;
    v136 = v102;
    v102(&v98[v135 + v134 * v100], v26, v150);
    v104 = v80[16];
    v105 = v80[20];
    v106 = &v22[v80[24]];
    v107 = v148;
    v108 = v149;
    v153 = v148;
    v154 = v149;
    v155 = 0;

    sub_1E5BF7254();
    v144(&v22[v104], v146, v145);
    v140(&v22[v105], v142, v141);
    v109 = swift_allocObject();
    v110 = v159;
    *(v109 + 48) = v158;
    *(v109 + 64) = v110;
    *(v109 + 80) = v160;
    v111 = v157;
    *(v109 + 16) = v156;
    *(v109 + 32) = v111;
    *(v109 + 96) = v107;
    *(v109 + 104) = v108;
    *v106 = &unk_1E5BF9388;
    *(v106 + 1) = v109;
    sub_1E5B70DB8(&v156, &v153);
    sub_1E5BF7094();
    v137(v22, v138, v103);
    v113 = *(v98 + 2);
    v112 = *(v98 + 3);
    if (v113 >= v112 >> 1)
    {
      v98 = sub_1E5B71778((v112 > 1), v113 + 1, 1, v98, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    *(v98 + 2) = v113 + 1;
    result = v136(&v98[v135 + v113 * v134], v22, v103);
    *v151 = v98;
  }

  else
  {
    v30 = *a2;
    if (!(a5 >> 6))
    {
      v31 = type metadata accessor for StackButtonState(0);
      sub_1E5B70E04(a2 + *(v31 + 36), v13);
      result = swift_getEnumCaseMultiPayload();
      if (result > 2)
      {
        return result;
      }

      if (result)
      {
        if (result == 1)
        {
          v33 = v29;
          v34 = *v13;
          v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v36 = sub_1E5BF6464();
          v37 = *(*(v36 - 8) + 8);

          v37(&v13[v35], v36);
          if ((v34 & 1) == 0)
          {
LABEL_7:
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
            v39 = v38[16];
            v40 = v38[20];
            v41 = &v19[v38[24]];
            v153 = v30;
            v154 = v33;
            v155 = 1;
            sub_1E5B6F52C();

            sub_1E5BF7254();
            v42 = *MEMORY[0x1E6999B50];
            v43 = sub_1E5BF6E24();
            (*(*(v43 - 8) + 104))(&v19[v39], v42, v43);
            v44 = swift_allocObject();
            v45 = v159;
            *(v44 + 48) = v158;
            *(v44 + 64) = v45;
            *(v44 + 80) = v160;
            v46 = v157;
            *(v44 + 16) = v156;
            *(v44 + 32) = v46;
            *(v44 + 96) = v30;
            *(v44 + 104) = v33;
            *(v44 + 112) = v149;
            *(v44 + 120) = a5;
            *v41 = &unk_1E5BF9368;
            *(v41 + 1) = v44;
            sub_1E5B70DB8(&v156, &v153);
            sub_1E5BF7094();
            v47 = *MEMORY[0x1E6999B48];
            v48 = sub_1E5BF6E14();
            (*(*(v48 - 8) + 104))(&v19[v40], v47, v48);
            v49 = v152;
            v50 = v150;
            (*(v152 + 104))(v19, *MEMORY[0x1E6999AD8], v150);
            v51 = v151;
            v52 = *v151;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_1E5B71778(0, v52[2] + 1, 1, v52, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
            }

            v54 = v52[2];
            v53 = v52[3];
            if (v54 >= v53 >> 1)
            {
              v52 = sub_1E5B71778((v53 > 1), v54 + 1, 1, v52, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
            }

            v52[2] = v54 + 1;
            result = (*(v49 + 32))(v52 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, v19, v50);
LABEL_18:
            *v51 = v52;
            return result;
          }
        }

        v132 = v13;
        return sub_1E5B70F30(v132);
      }

      v114 = *v13;

      v33 = v29;
      if ((v114 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v72 = v24;
    v73 = type metadata accessor for StackButtonState(0);
    sub_1E5B70E04(a2 + *(v73 + 36), v10);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      return result;
    }

    if (result)
    {
      v74 = v152;
      if (result != 1)
      {
        v132 = v10;
        return sub_1E5B70F30(v132);
      }

      v75 = *v10;
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v77 = v29;
      v78 = sub_1E5BF6464();
      v79 = *(*(v78 - 8) + 8);

      v79(&v10[v76], v78);
      if (v75 != 1)
      {
      }
    }

    else
    {
      v115 = *v10;

      v74 = v152;
      v77 = v29;
      if ((v115 & 1) == 0)
      {
      }
    }

    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v117 = v116[16];
    v118 = v116[20];
    v119 = (v72 + v116[24]);
    v153 = v30;
    v154 = v77;
    v155 = 2;
    sub_1E5B6F52C();

    sub_1E5BF7254();
    v120 = *MEMORY[0x1E6999B50];
    v121 = sub_1E5BF6E24();
    (*(*(v121 - 8) + 104))(v72 + v117, v120, v121);
    v122 = swift_allocObject();
    v123 = v159;
    *(v122 + 48) = v158;
    *(v122 + 64) = v123;
    *(v122 + 80) = v160;
    v124 = v157;
    *(v122 + 16) = v156;
    *(v122 + 32) = v124;
    *(v122 + 96) = v30;
    *(v122 + 104) = v77;
    *(v122 + 112) = v149;
    *v119 = &unk_1E5BF9350;
    v119[1] = v122;
    sub_1E5B70DB8(&v156, &v153);
    sub_1E5BF7094();
    v125 = *MEMORY[0x1E6999B48];
    v126 = sub_1E5BF6E14();
    (*(*(v126 - 8) + 104))(v72 + v118, v125, v126);
    v127 = v150;
    (*(v74 + 104))(v72, *MEMORY[0x1E6999AD8], v150);
    v128 = v151;
    v129 = *v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1E5B71778(0, v129[2] + 1, 1, v129, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v131 = v129[2];
    v130 = v129[3];
    if (v131 >= v130 >> 1)
    {
      v129 = sub_1E5B71778((v130 > 1), v131 + 1, 1, v129, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v129[2] = v131 + 1;
    result = (*(v74 + 32))(v129 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v131, v72, v127);
    *v128 = v129;
  }

  return result;
}

unint64_t sub_1E5B6F52C()
{
  result = qword_1ED03E8A0;
  if (!qword_1ED03E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8A0);
  }

  return result;
}

uint64_t sub_1E5B6F580(uint64_t a1, int **a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6F688;

  return v6();
}

uint64_t sub_1E5B6F688()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A18, v1, v0);
}

uint64_t sub_1E5B6F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v10 = (*(a2 + 16) + **(a2 + 16));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5B6F8E4;

  return v10(a3, a4);
}

uint64_t sub_1E5B6F8E4()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B6FA20, v1, v0);
}

uint64_t sub_1E5B6FA20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B6FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a1;
  *(v6 + 40) = sub_1E5BF7084();
  *(v6 + 48) = sub_1E5BF7074();
  *(v6 + 56) = *a2;
  v13 = (*(a2 + 32) + **(a2 + 32));
  v11 = swift_task_alloc();
  *(v6 + 72) = v11;
  *v11 = v6;
  v11[1] = sub_1E5B6FBC0;

  return v13(a3, a4, a5);
}

uint64_t sub_1E5B6FBC0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(v2 + 80) = v0;

  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v8;
  if (v0)
  {
    v5 = sub_1E5B7002C;
  }

  else
  {
    v5 = sub_1E5B6FD80;
  }

  v4[1] = v5;

  return v7();
}

uint64_t sub_1E5B6FD80()
{
  v1 = *v0;
  v2 = *(*v0 + 25);
  v7 = *v0;

  *(v1 + 16) = (v2 << 8) | 1;
  v3 = v1 + 16;
  *(v3 + 8) = 0x80;
  v4 = swift_task_alloc();
  *(v3 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E938, &qword_1E5BF95D8);
  *v4 = v7;
  v4[1] = sub_1E5B6FEF0;

  return MEMORY[0x1EEE01A40](v3, v5);
}

uint64_t sub_1E5B6FEF0()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C854, v1, v0);
}

uint64_t sub_1E5B7002C()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B70168, v1, v0);
}

uint64_t sub_1E5B70168()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B701D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = sub_1E5BF7084();
  *(v5 + 48) = sub_1E5BF7074();
  *(v5 + 56) = *a2;
  v11 = (*(a2 + 48) + **(a2 + 48));
  v9 = swift_task_alloc();
  *(v5 + 72) = v9;
  *v9 = v5;
  v9[1] = sub_1E5B70308;

  return v11(a3, a4);
}

uint64_t sub_1E5B70308()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(v2 + 80) = v0;

  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v8;
  if (v0)
  {
    v5 = sub_1E5B70770;
  }

  else
  {
    v5 = sub_1E5B704C8;
  }

  v4[1] = v5;

  return v7();
}

uint64_t sub_1E5B704C8()
{
  v1 = *v0;
  v2 = *(*v0 + 25);
  v7 = *v0;

  *(v1 + 16) = v2 << 8;
  v3 = v1 + 16;
  *(v3 + 8) = 0x80;
  v4 = swift_task_alloc();
  *(v3 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E938, &qword_1E5BF95D8);
  *v4 = v7;
  v4[1] = sub_1E5B70634;

  return MEMORY[0x1EEE01A40](v3, v5);
}

uint64_t sub_1E5B70634()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A1C, v1, v0);
}

uint64_t sub_1E5B70770()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A14, v1, v0);
}

uint64_t sub_1E5B708AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  *(v4 + 48) = sub_1E5BF7084();
  *(v4 + 56) = sub_1E5BF7074();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_1E5B709D0;

  return v10(a3, a4);
}

uint64_t sub_1E5B709D0()
{
  *(*v1 + 72) = v0;

  v3 = sub_1E5BF7054();
  if (v0)
  {
    v4 = sub_1E5B70B2C;
  }

  else
  {
    v4 = sub_1E5B6D790;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}