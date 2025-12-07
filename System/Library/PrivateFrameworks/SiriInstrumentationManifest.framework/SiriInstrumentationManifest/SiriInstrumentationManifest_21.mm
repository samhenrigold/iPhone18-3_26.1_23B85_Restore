uint64_t sub_26725A828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725A88C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725A934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26725A97C()
{
  result = qword_2800F8C00;
  if (!qword_2800F8C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C00);
  }

  return result;
}

uint64_t static QDSchemaQDEntityType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *(v1 + 104);
  v19 = *MEMORY[0x277D3E530];
  v20 = v1 + 104;
  v21 = v0;
  v18 = v7;
  v7(v3);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v17 = *(v9 + 56);
  v17(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449656C646E7562, 0xE800000000000000);
  v10(v23, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v22, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_28788D6B8);
    sub_26738115C();
  }

  (v12)(v22, 0);
  v11(v23, 0);
  v18(v3, v19, v21);
  v23[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267486FA0);
  return v14(v23, 0);
}

uint64_t sub_26725AD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725ADFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725AE60()
{
  result = qword_2800EF3A0;
  if (!qword_2800EF3A0)
  {
    sub_26725AEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF3A0);
  }

  return result;
}

unint64_t sub_26725AEB8()
{
  result = qword_2800EF398;
  if (!qword_2800EF398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF398);
  }

  return result;
}

uint64_t static QDSchemaQDMatchingTransform.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267486FF0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267487010, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267487030, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267487050, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267487080, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674870B0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x80000002674870E0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267487110, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_26725B34C(uint64_t a1)
{
  v2 = sub_26725B450(&qword_2800F8C08, &protocol conformance descriptor for QDSchemaQDMatchingTransform);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725B3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725B450(&qword_2800F8C08, &protocol conformance descriptor for QDSchemaQDMatchingTransform);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725B450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDMatchingTransform(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDRetrievedContextStatement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267487180);
  v6(v10, 0);
  type metadata accessor for QDSchemaQDEntityContextType(0);
  sub_26725B8B8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x54747865746E6F63, 0xEB00000000657079);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x70795465756C6176, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_26725B7F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725B858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725B8B8()
{
  result = qword_2800EF390;
  if (!qword_2800EF390)
  {
    type metadata accessor for QDSchemaQDEntityContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF390);
  }

  return result;
}

uint64_t static QDSchemaQDRetrievedTool.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v30 = sub_26738113C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v28 = "edContextStatement";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  (v10)(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v28 | 0x8000000000000000);
  v11(v32, 0);
  v12 = *MEMORY[0x277D3E530];
  v25 = *(v2 + 104);
  v26 = v2 + 104;
  v25(v4, v12, v30);
  v32[0] = 1;
  v27 = v4;
  sub_26738114C();
  v28 = v10;
  v24[1] = v9 + 56;
  (v10)(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v13(v32, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v31, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v9 + 48))(v16, 1, v8))
  {
    sub_266ECB128(&unk_28788D6E8);
    sub_26738115C();
  }

  (v15)(v31, 0);
  v14(v32, 0);
  type metadata accessor for QDSchemaQDToolSubtype(0);
  sub_26725C200(&qword_2800F8C10, type metadata accessor for QDSchemaQDToolSubtype, &protocol conformance descriptor for QDSchemaQDToolSubtype);
  sub_26738120C();
  v17 = v28;
  (v28)(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x65707954627573, 0xE700000000000000);
  v18(v32, 0);
  v25(v27, *MEMORY[0x277D3E500], v30);
  v32[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6972616C696D6973, 0xEF65726F63537974);
  v19(v32, 0);
  type metadata accessor for QDSchemaQDToolSelectionCriteria(0);
  sub_26725C200(&qword_2800F8C18, type metadata accessor for QDSchemaQDToolSelectionCriteria, &protocol conformance descriptor for QDSchemaQDToolSelectionCriteria);
  sub_26738120C();
  v17(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674871D0);
  v20(v32, 0);
  sub_266ECB294(0, &qword_2800F8C20, 0x277D5A2B8);
  sub_266ECAF2C(&qword_2800F8C28, &qword_2800F8C20, 0x277D5A2B8, &protocol conformance descriptor for QDSchemaQDToolSource);
  sub_26738120C();
  v17(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x72756F536C6F6F74, 0xEA00000000006563);
  v21(v32, 0);
  sub_266ECB294(0, &qword_2800F8C30, 0x277D5A2A0);
  sub_266ECAF2C(&qword_2800F8C38, &qword_2800F8C30, 0x277D5A2A0, &protocol conformance descriptor for QDSchemaQDToolDefinition);
  sub_26738120C();
  v17(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x696665446C6F6F74, 0xEE006E6F6974696ELL);
  return v22(v32, 0);
}

uint64_t sub_26725C13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725C1A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725C200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static QDSchemaQDSpanMatchedEntity.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267487180);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x70795465756C6176, 0xE900000000000065);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F8C00, 0x277D5A258);
  sub_266ECAF2C(&qword_2800F8BF8, &qword_2800F8C00, 0x277D5A258, &protocol conformance descriptor for QDSchemaQDEntityMatch);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365686374616DLL, 0xE700000000000000);
  v8(v11, 0);
  type metadata accessor for QDSchemaQDDataProtectionClass(0);
  sub_26725C778();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267487220);
  return v9(v11, 0);
}

uint64_t sub_26725C6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725C718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725C778()
{
  result = qword_2800F8BA0;
  if (!qword_2800F8BA0)
  {
    type metadata accessor for QDSchemaQDDataProtectionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8BA0);
  }

  return result;
}

uint64_t static QDSchemaQDSpanMatcherType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267487270, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267487290, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674872C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26725CA28(uint64_t a1)
{
  v2 = sub_26725CB2C(&qword_2800F8C40, &protocol conformance descriptor for QDSchemaQDSpanMatcherType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725CA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725CB2C(&qword_2800F8C40, &protocol conformance descriptor for QDSchemaQDSpanMatcherType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725CB2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDSpanMatcherType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267487320, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267487340, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267487360, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267487380, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674873B0, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674873E0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x8000000267487400, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267487420, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267487440, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267487460, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x8000000267487480, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x80000002674874B0, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_26725D188(uint64_t a1)
{
  v2 = sub_26725D28C(&qword_2800F8C50, &protocol conformance descriptor for QDSchemaQDSubComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725D1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725D28C(&qword_2800F8C50, &protocol conformance descriptor for QDSchemaQDSubComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725D28C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8C58, 0x277D5A298);
  sub_266ECAF2C(&qword_2800F8C60, &qword_2800F8C58, 0x277D5A298, &protocol conformance descriptor for QDSchemaQDSubComponentStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F8C68, 0x277D5A288);
  sub_266ECAF2C(&qword_2800F8C70, &qword_2800F8C68, 0x277D5A288, &protocol conformance descriptor for QDSchemaQDSubComponentEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8C78, 0x277D5A290);
  sub_266ECAF2C(&qword_2800F8C80, &qword_2800F8C78, 0x277D5A290, &protocol conformance descriptor for QDSchemaQDSubComponentFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496563617274, 0xE700000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26725D8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725D910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDSubComponentEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26725DBFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725DC60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725DCC4()
{
  result = qword_2800F8C70;
  if (!qword_2800F8C70)
  {
    sub_26725DD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8C70);
  }

  return result;
}

unint64_t sub_26725DD1C()
{
  result = qword_2800F8C68;
  if (!qword_2800F8C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C68);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E508], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v13(v16, 0);
}

uint64_t sub_26725E094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E0F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725E15C()
{
  result = qword_2800F8C80;
  if (!qword_2800F8C80)
  {
    sub_26725E1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8C80);
  }

  return result;
}

unint64_t sub_26725E1B4()
{
  result = qword_2800F8C78;
  if (!qword_2800F8C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C78);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for QDSchemaQDSubComponent(0);
  sub_26725E664(&qword_2800F8C48, type metadata accessor for QDSchemaQDSubComponent, &protocol conformance descriptor for QDSchemaQDSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F706D6F43627573, 0xEC000000746E656ELL);
  return v5(v7, 0);
}

uint64_t sub_26725E3C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for QDSchemaQDSubComponent(0);
  sub_26725E664(&qword_2800F8C48, type metadata accessor for QDSchemaQDSubComponent, &protocol conformance descriptor for QDSchemaQDSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F706D6F43627573, 0xEC000000746E656ELL);
  return v5(v7, 0);
}

uint64_t sub_26725E558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E5BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725E664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26725E6AC()
{
  result = qword_2800F8C58;
  if (!qword_2800F8C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C58);
  }

  return result;
}

uint64_t static QDSchemaQDToolboxSizeReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F6F546C61746F74, 0xEE00746E756F436CLL);
  return v8(v10, 0);
}

uint64_t sub_26725E950(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E9B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725EA18()
{
  result = qword_2800F8B40;
  if (!qword_2800F8B40)
  {
    sub_26725EA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B40);
  }

  return result;
}

unint64_t sub_26725EA70()
{
  result = qword_2800F8B38;
  if (!qword_2800F8B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B38);
  }

  return result;
}

uint64_t static QDSchemaQDToolDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8C88, 0x277D5A2B0);
  sub_266ECAF2C(&qword_2800F8C90, &qword_2800F8C88, 0x277D5A2B0, &protocol conformance descriptor for QDSchemaQDToolParameterDefinition);
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574656D61726170, 0xEA00000000007372);
  v9(v15, 0);
  sub_266ECB294(0, &qword_2800F8C98, 0x277D5A2A8);
  sub_266ECAF2C(&qword_2800F8CA0, &qword_2800F8C98, 0x277D5A2A8, &protocol conformance descriptor for QDSchemaQDToolOutputDefinition);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x74757074756FLL, 0xE600000000000000);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7470697263736564, 0xEB000000006E6F69);
  return v11(v15, 0);
}

uint64_t sub_26725EEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725EF20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolOutputDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_26725F19C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_26725F33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725F3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolParameterDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v18[1] = v2 + 104;
  v20 = v8;
  v21 = v1;
  v9(v4, v8, v1);
  v19 = v9;
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v18[0] = v11 + 56;
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 7955819, 0xE300000000000000);
  v13(v23, 0);
  v9(v4, v8, v1);
  v23[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v14(v23, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954797469746E65, 0xEA00000000006570);
  v15(v23, 0);
  v19(v4, v20, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7470697263736564, 0xEB000000006E6F69);
  return v16(v23, 0);
}

uint64_t sub_26725F8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725F95C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolSelectionCriteria.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674876B0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x80000002674876D0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267487700, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267487730, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x8000000267487760, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x8000000267487790, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26725FD68(uint64_t a1)
{
  v2 = sub_26725FE6C(&qword_2800F8CA8, &protocol conformance descriptor for QDSchemaQDToolSelectionCriteria);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725FDD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725FE6C(&qword_2800F8CA8, &protocol conformance descriptor for QDSchemaQDToolSelectionCriteria);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725FE6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDToolSelectionCriteria(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDToolSource.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8BD0, 0x277D5A278);
  sub_266ECAF2C(&qword_2800F8BD8, &qword_2800F8BD0, 0x277D5A278, &protocol conformance descriptor for QDSchemaQDSpanMatchedEntity);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374614D6E617073, 0xEB00000000736568);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674877F0);
  return v7(v9, 0);
}

uint64_t sub_267260188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672601EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolSubtype.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267487840, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267487860, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267487880, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674878A0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674878C0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674878E0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2672605F8(uint64_t a1)
{
  v2 = sub_2672606FC(&qword_2800F8CB0, &protocol conformance descriptor for QDSchemaQDToolSubtype);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267260660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672606FC(&qword_2800F8CB0, &protocol conformance descriptor for QDSchemaQDToolSubtype);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672606FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDToolSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDTuplesGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17[1] = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v19 = v3 + 104;
  v10(v5, v9, v2);
  v20[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v18 = v11;
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x664F7265626D756ELL, 0xEE0073656C707554);
  v13(v20, 0);
  v17[0] = "iri.qd.QDTuplesGenerated";
  v10(v5, v9, v2);
  v20[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v17[0] | 0x8000000000000000);
  v14(v20, 0);
  v10(v5, *MEMORY[0x277D3E4E8], v2);
  v20[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v18);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267487950);
  return v15(v20, 0);
}

uint64_t sub_267260B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267260BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267260C0C()
{
  result = qword_2800F8B00;
  if (!qword_2800F8B00)
  {
    sub_267260C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B00);
  }

  return result;
}

unint64_t sub_267260C64()
{
  result = qword_2800F8AF8;
  if (!qword_2800F8AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8AF8);
  }

  return result;
}

uint64_t static READSchemaREADClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8CB8, 0x277D5A2D8);
  sub_266ECAF2C(&qword_2800F8CC0, &qword_2800F8CB8, 0x277D5A2D8, &protocol conformance descriptor for READSchemaREADClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F8CC8, 0x277D5A300);
  sub_266ECAF2C(&qword_2800F8CD0, &qword_2800F8CC8, 0x277D5A300, &protocol conformance descriptor for READSchemaREADRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674879A0);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8CD8, 0x277D5A308);
  sub_266ECAF2C(&qword_2800F8CE0, &qword_2800F8CD8, 0x277D5A308, &protocol conformance descriptor for READSchemaREADRequestPreprocessingContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000024, 0x80000002674879C0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F8CE8, 0x277D5A2E0);
  sub_266ECAF2C(&qword_2800F8CF0, &qword_2800F8CE8, 0x277D5A2E0, &protocol conformance descriptor for READSchemaREADPlaybackSessionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674879F0);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  v13(v25, 0);
  sub_266ECB128(&unk_28788D718);
  return sub_2673811CC();
}

uint64_t sub_26726128C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267261324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672613F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267261454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672614B4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8CF8, &qword_2800F8D00, 0x277D5A2D0, &protocol conformance descriptor for READSchemaREADClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8D08, &qword_2800F8D00, 0x277D5A2D0, &protocol conformance descriptor for READSchemaREADClientEvent);
  result = sub_266ECAF2C(&qword_2800F8D10, &qword_2800F8D00, 0x277D5A2D0, &protocol conformance descriptor for READSchemaREADClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static READSchemaREADClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x644964616572, 0xE600000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x644964616572, 0xE600000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D750);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26726184C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672618B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADPlaybackSessionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F8D20, 0x277D5A2F8);
  sub_266ECAF2C(&qword_2800F8D28, &qword_2800F8D20, 0x277D5A2F8, &protocol conformance descriptor for READSchemaREADPlaybackSessionStartedOrChanged);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8D30, 0x277D5A2E8);
  sub_266ECAF2C(&qword_2800F8D38, &qword_2800F8D30, 0x277D5A2E8, &protocol conformance descriptor for READSchemaREADPlaybackSessionEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F8D40, 0x277D5A2F0);
  sub_266ECAF2C(&qword_2800F8D48, &qword_2800F8D40, 0x277D5A2F0, &protocol conformance descriptor for READSchemaREADPlaybackSessionFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_267261F30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267261F94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADPlaybackSessionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16[1] = a1;
  sub_26738119C();
  v17 = "ybackSessionEnded";
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7275446C61746F74, 0xED00006E6F697461);
  return v14(v19, 0);
}

uint64_t sub_267262370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672623D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267262438()
{
  result = qword_2800F8D38;
  if (!qword_2800F8D38)
  {
    sub_267262490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D38);
  }

  return result;
}

unint64_t sub_267262490()
{
  result = qword_2800F8D30;
  if (!qword_2800F8D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D30);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackSessionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xEA00000000007365);
  return v8(v10, 0);
}

uint64_t sub_26726272C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267262790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672627F4()
{
  result = qword_2800F8D48;
  if (!qword_2800F8D48)
  {
    sub_26726284C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D48);
  }

  return result;
}

unint64_t sub_26726284C()
{
  result = qword_2800F8D40;
  if (!qword_2800F8D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D40);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackSessionStartedOrChanged.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = a1;
  v16 = sub_26738113C();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v15 = *MEMORY[0x277D3E500];
  v14 = *(v1 + 104);
  v14(v3);
  v18[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267487B70);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800F8D50, 0x277D5B138);
  sub_266ECAF2C(&qword_2800F8D58, &qword_2800F8D50, 0x277D5B138, &protocol conformance descriptor for TTSSchemaTTSAudioInterface);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E496F69647561, 0xEE00656361667265);
  v10(v18, 0);
  (v14)(v3, v15, v16);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D756C6F76, 0xE600000000000000);
  v11(v18, 0);
  type metadata accessor for READSchemaREADPlaybackState(0);
  sub_267262DF0();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267487B90);
  return v12(v18, 0);
}

uint64_t sub_267262D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267262D90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267262DF0()
{
  result = qword_2800F8D60;
  if (!qword_2800F8D60)
  {
    type metadata accessor for READSchemaREADPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D60);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267487BE0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487C00, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267487C20, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267487C40, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267487C60, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267263188(uint64_t a1)
{
  v2 = sub_26726328C(&qword_2800F8D68, &protocol conformance descriptor for READSchemaREADPlaybackState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672631F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726328C(&qword_2800F8D68, &protocol conformance descriptor for READSchemaREADPlaybackState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726328C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for READSchemaREADPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static READSchemaREADRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8D70, 0x277D5A318);
  sub_266ECAF2C(&qword_2800F8D78, &qword_2800F8D70, 0x277D5A318, &protocol conformance descriptor for READSchemaREADRequestStarted);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741EB30);
  v9(v18, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, v1);
  return v10(v18, 0);
}

uint64_t sub_267263644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672636A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADRequestPreprocessingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8D80, 0x277D5A310);
  sub_266ECAF2C(&qword_2800F8D88, &qword_2800F8D80, 0x277D5A310, &protocol conformance descriptor for READSchemaREADRequestPreprocessingEnded);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
  v9(v18, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, v1);
  return v10(v18, 0);
}

uint64_t sub_267263AB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267263B1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADRequestPreprocessingEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v17 = sub_26738113C();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = "uestPreprocessingEnded";
  v18 = *MEMORY[0x277D3E538];
  v6 = *(v0 + 104);
  v6(v2);
  v15 = v6;
  v19[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  v9 = v8;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, v16 | 0x8000000000000000);
  v10(v19, 0);
  v11 = v17;
  (v6)(v2, v18, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x636E617265747475, 0xEE00746E756F4365);
  v12(v19, 0);
  (v15)(v2, *MEMORY[0x277D3E500], v11);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267487D50);
  return v13(v19, 0);
}

uint64_t sub_267263FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267264028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726408C()
{
  result = qword_2800F8D88;
  if (!qword_2800F8D88)
  {
    sub_2672640E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D88);
  }

  return result;
}

unint64_t sub_2672640E4()
{
  result = qword_2800F8D80;
  if (!qword_2800F8D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D80);
  }

  return result;
}

uint64_t static READSchemaREADRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for READSchemaREADRequestTrigger(0);
  sub_267264584(&qword_2800F8D90, type metadata accessor for READSchemaREADRequestTrigger, &protocol conformance descriptor for READSchemaREADRequestTrigger);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672642F0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for READSchemaREADRequestTrigger(0);
  sub_267264584(&qword_2800F8D90, type metadata accessor for READSchemaREADRequestTrigger, &protocol conformance descriptor for READSchemaREADRequestTrigger);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267264478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672644DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267264584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672645CC()
{
  result = qword_2800F8D70;
  if (!qword_2800F8D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D70);
  }

  return result;
}

uint64_t static READSchemaREADRequestTrigger.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267487DD0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487DF0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267487E10, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26726482C(uint64_t a1)
{
  v2 = sub_267264930(&qword_2800F8D98, &protocol conformance descriptor for READSchemaREADRequestTrigger);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267264894(uint64_t a1, uint64_t a2)
{
  v4 = sub_267264930(&qword_2800F8D98, &protocol conformance descriptor for READSchemaREADRequestTrigger);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267264930(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for READSchemaREADRequestTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFGSchemaRFGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738118C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8DA0, 0x277D5A340);
  sub_266ECAF2C(&qword_2800F8DA8, &qword_2800F8DA0, 0x277D5A340, &protocol conformance descriptor for RFSchemaRFGClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800F8DB0, 0x277D5A350);
  sub_266ECAF2C(&qword_2800F8DB8, &qword_2800F8DB0, 0x277D5A350, &protocol conformance descriptor for RFSchemaRFGVisualResponseShownTier1);
  sub_26738121C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267487E60);
  v10(v29, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v28, 0xD000000000000018, 0x8000000267487E60);
  if (!(*(v7 + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_28788D780);
    sub_26738115C();
  }

  (v12)(v28, 0);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800F8DC0, 0x277D5A348);
  sub_266ECAF2C(&qword_2800F8DC8, &qword_2800F8DC0, 0x277D5A348, &protocol conformance descriptor for RFSchemaRFGVisualResponseShownLink);
  sub_26738121C();
  v8(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267487E80);
  v14(v29, 0);
  v15 = v24;
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54((v21 > 1), v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v25 + 32))(v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v15, v26);
  v16(v29, 0);
  sub_266ECB128(&unk_28788D7B0);
  return sub_2673811CC();
}

uint64_t sub_267264F24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267264FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267265088(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672650EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726514C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8DD0, &qword_2800F1FC0, 0x277D5A320, &protocol conformance descriptor for RFGSchemaRFGClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8DD8, &qword_2800F1FC0, 0x277D5A320, &protocol conformance descriptor for RFGSchemaRFGClientEvent);
  result = sub_266ECAF2C(&qword_2800F8DE0, &qword_2800F1FC0, 0x277D5A320, &protocol conformance descriptor for RFGSchemaRFGClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static RFSchemaRFClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8DE8, 0x277D5A330);
  sub_266ECAF2C(&qword_2800F8DF0, &qword_2800F8DE8, 0x277D5A330, &protocol conformance descriptor for RFSchemaRFClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v26 = *(v6 - 8);
  v7 = *(v26 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v31, 0);
  sub_266ECB294(0, &qword_2800F8DF8, 0x277D5A370);
  sub_266ECAF2C(&qword_2800F8E00, &qword_2800F8DF8, 0x277D5A370, &protocol conformance descriptor for RFSchemaRFPatternExecuted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x456E726574746170, 0xEF64657475636578);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F8E08, 0x277D5A368);
  sub_266ECAF2C(&qword_2800F8E10, &qword_2800F8E08, 0x277D5A368, &protocol conformance descriptor for RFSchemaRFInteractionPerformed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267487ED0);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F8E18, 0x277D5A338);
  sub_266ECAF2C(&qword_2800F8E20, &qword_2800F8E18, 0x277D5A338, &protocol conformance descriptor for RFSchemaRFComponentShown);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E656E6F706D6F63, 0xEE006E776F685374);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F8E28, 0x277D5A380);
  sub_266ECAF2C(&qword_2800F8E30, &qword_2800F8E28, 0x277D5A380, &protocol conformance descriptor for RFSchemaRFSnippetRenderingContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267487EF0);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F8E38, 0x277D5A360);
  sub_266ECAF2C(&qword_2800F8E40, &qword_2800F8E38, 0x277D5A360, &protocol conformance descriptor for RFSchemaRFGradingDialogReportedTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x8000000267487F10);
  v13(v31, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v30, 0xD00000000000001CLL, 0x8000000267487F10);
  if (!(*(v26 + 48))(v16, 1, v6))
  {
    sub_266ECB128(&unk_28788D7E8);
    sub_26738115C();
  }

  (v15)(v30, 0);
  v14(v31, 0);
  v17 = v27;
  sub_26738117C();
  v18 = sub_2673811BC();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266ECAD54(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266ECAD54((v23 > 1), v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v17, v29);
  v18(v31, 0);
  sub_266ECB128(&unk_28788D810);
  return sub_2673811CC();
}

uint64_t sub_267265A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267265B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267265BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267265C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267265CB0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8E48, &qword_2800F1F90, 0x277D5A328, &protocol conformance descriptor for RFSchemaRFClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8E50, &qword_2800F1F90, 0x277D5A328, &protocol conformance descriptor for RFSchemaRFClientEvent);
  result = sub_266ECAF2C(&qword_2800F8E58, &qword_2800F1F90, 0x277D5A328, &protocol conformance descriptor for RFSchemaRFClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static RFSchemaRFClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v5 = a1;
  v26 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v24 = *(v7 + 56);
  v25 = v7 + 56;
  v24(v4, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496E727574, 0xE600000000000000);
  v8(v28, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v27, 0x64496E727574, 0xE600000000000000);
  v23 = *(v7 + 48);
  if (!v23(v11, 1, v6))
  {
    sub_266ECB128(&unk_28788D848);
    sub_26738115C();
  }

  (v10)(v27, 0);
  v9(v28, 0);
  sub_26738120C();
  v24(v4, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v12(v28, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v27, 0x4974736575716572, 0xE900000000000064);
  if (!v23(v15, 1, v6))
  {
    sub_266ECB128(&unk_28788D878);
    sub_26738115C();
  }

  (v14)(v27, 0);
  v13(v28, 0);
  v22[1] = v5;
  sub_26738120C();
  v24(v4, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v4, 0x6575716552627573, 0xEC00000064497473);
  v16(v28, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v27, 0x6575716552627573, 0xEC00000064497473);
  if (!v23(v19, 1, v6))
  {
    sub_266ECB128(&unk_28788D8A8);
    sub_26738115C();
  }

  (v18)(v27, 0);
  v17(v28, 0);
  sub_26738120C();
  v24(v4, 0, 1, v6);
  v20 = sub_2673811AC();
  sub_266EC637C(v4, 0x4977656956656361, 0xE900000000000064);
  return v20(v28, 0);
}

uint64_t sub_267266324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267266388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFCommandType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267487F90, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487FB0, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267487FD0, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267487FF0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267488010, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267488030, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267488050, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267488070, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267488090, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x80000002674880B0, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_267266954(uint64_t a1)
{
  v2 = sub_267266A58(&qword_2800F8E68, &protocol conformance descriptor for RFSchemaRFCommandType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672669BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267266A58(&qword_2800F8E68, &protocol conformance descriptor for RFSchemaRFCommandType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267266A58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFComponent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v286 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267488100, isUniquelyReferenced_nonNull_native);
  *v3 = v286;

  v1(v357, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267488120, v8);
  *v7 = v287;

  v5(v357, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v288 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267488140, v12);
  *v11 = v288;

  v9(v357, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v289 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267488160, v16);
  *v15 = v289;

  v13(v357, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267488190, v20);
  *v19 = v290;

  v17(v357, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v291 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674881C0, v24);
  *v23 = v291;

  v21(v357, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v292 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674881F0, v28);
  *v27 = v292;

  v25(v357, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v293 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267488220, v32);
  *v31 = v293;

  v29(v357, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v294 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267488240, v36);
  *v35 = v294;

  v33(v357, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267488270, v40);
  *v39 = v295;

  v37(v357, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x80000002674882A0, v44);
  *v43 = v296;

  v41(v357, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001CLL, 0x80000002674882D0, v48);
  *v47 = v297;

  v45(v357, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x80000002674882F0, v52);
  *v51 = v298;

  v49(v357, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x8000000267488310, v56);
  *v55 = v299;

  v53(v357, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000022, 0x8000000267488340, v60);
  *v59 = v300;

  v57(v357, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x8000000267488370, v64);
  *v63 = v301;

  v61(v357, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v302 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000025, 0x8000000267488390, v68);
  *v67 = v302;

  v65(v357, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v303 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x80000002674883C0, v72);
  *v71 = v303;

  v69(v357, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v304 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x80000002674883E0, v76);
  *v75 = v304;

  v73(v357, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000024, 0x8000000267488400, v80);
  *v79 = v305;

  v77(v357, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v306 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267488430, v84);
  *v83 = v306;

  v81(v357, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v307 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000028, 0x8000000267488460, v88);
  *v87 = v307;

  v85(v357, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v308 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000026, 0x8000000267488490, v92);
  *v91 = v308;

  v89(v357, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000016, 0x80000002674884C0, v96);
  *v95 = v309;

  v93(v357, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ALL, 0x80000002674884E0, v100);
  *v99 = v310;

  v97(v357, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v311 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x8000000267488500, v104);
  *v103 = v311;

  v101(v357, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v312 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000011, 0x8000000267488520, v108);
  *v107 = v312;

  v105(v357, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v313 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ELL, 0x8000000267488540, v112);
  *v111 = v313;

  v109(v357, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v314 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001ALL, 0x8000000267488560, v116);
  *v115 = v314;

  v113(v357, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v315 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ALL, 0x8000000267488580, v120);
  *v119 = v315;

  v117(v357, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v316 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000001CLL, 0x80000002674885A0, v124);
  *v123 = v316;

  v121(v357, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v317 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001DLL, 0x80000002674885C0, v128);
  *v127 = v317;

  v125(v357, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v318 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000024, 0x80000002674885E0, v132);
  *v131 = v318;

  v129(v357, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v319 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001FLL, 0x8000000267488610, v136);
  *v135 = v319;

  v133(v357, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v320 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000001CLL, 0x8000000267488630, v140);
  *v139 = v320;

  v137(v357, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v321 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000015, 0x8000000267488650, v144);
  *v143 = v321;

  v141(v357, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v322 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001ELL, 0x8000000267488670, v148);
  *v147 = v322;

  v145(v357, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v323 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001ALL, 0x8000000267488690, v152);
  *v151 = v323;

  v149(v357, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v324 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001FLL, 0x80000002674886B0, v156);
  *v155 = v324;

  v153(v357, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v325 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000001FLL, 0x80000002674886D0, v160);
  *v159 = v325;

  v157(v357, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v326 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000001ELL, 0x80000002674886F0, v164);
  *v163 = v326;

  v161(v357, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v327 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000024, 0x8000000267488710, v168);
  *v167 = v327;

  v165(v357, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v328 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000002ELL, 0x8000000267488740, v172);
  *v171 = v328;

  v169(v357, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v329 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001FLL, 0x8000000267488770, v176);
  *v175 = v329;

  v173(v357, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v330 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD00000000000002BLL, 0x8000000267488790, v180);
  *v179 = v330;

  v177(v357, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v331 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000001FLL, 0x80000002674887C0, v184);
  *v183 = v331;

  v181(v357, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000001DLL, 0x80000002674887E0, v188);
  *v187 = v332;

  v185(v357, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v333 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000018, 0x8000000267488800, v192);
  *v191 = v333;

  v189(v357, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v334 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001FLL, 0x8000000267488820, v196);
  *v195 = v334;

  v193(v357, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v335 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000019, 0x8000000267488840, v200);
  *v199 = v335;

  v197(v357, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v336 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000017, 0x8000000267488860, v204);
  *v203 = v336;

  v201(v357, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v337 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000024, 0x8000000267488880, v208);
  *v207 = v337;

  v205(v357, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v338 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000023, 0x80000002674888B0, v212);
  *v211 = v338;

  v209(v357, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v339 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0xD00000000000001FLL, 0x80000002674888E0, v216);
  *v215 = v339;

  v213(v357, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v340 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000001ELL, 0x8000000267488900, v220);
  *v219 = v340;

  v217(v357, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v341 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000024, 0x8000000267488920, v224);
  *v223 = v341;

  v221(v357, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v342 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000020, 0x8000000267488950, v228);
  *v227 = v342;

  v225(v357, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v343 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0xD00000000000002ALL, 0x8000000267488980, v232);
  *v231 = v343;

  v229(v357, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v344 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000021, 0x80000002674889B0, v236);
  *v235 = v344;

  v233(v357, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v345 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000025, 0x80000002674889E0, v240);
  *v239 = v345;

  v237(v357, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000024, 0x8000000267488A10, v244);
  *v243 = v346;

  v241(v357, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v347 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000028, 0x8000000267488A40, v248);
  *v247 = v347;

  v245(v357, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v348 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000021, 0x8000000267488A70, v252);
  *v251 = v348;

  v249(v357, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v349 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000025, 0x8000000267488AA0, v256);
  *v255 = v349;

  v253(v357, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v350 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000021, 0x8000000267488AD0, v260);
  *v259 = v350;

  v257(v357, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v351 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000026, 0x8000000267488B00, v264);
  *v263 = v351;

  v261(v357, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v352 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000001FLL, 0x8000000267488B30, v268);
  *v267 = v352;

  v265(v357, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v353 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0x4E4F504D4F434652, 0xEF50414D5F544E45, v272);
  *v271 = v353;

  v269(v357, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v354 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000020, 0x8000000267488B50, v276);
  *v275 = v354;

  v273(v357, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v355 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000017, 0x8000000267488B80, v280);
  *v279 = v355;

  v277(v357, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v356 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000020, 0x8000000267488BA0, v284);
  *v283 = v356;

  return v281(v357, 0);
}

uint64_t sub_267268AF8(uint64_t a1)
{
  v2 = sub_267268BFC(&qword_2800F8E78, &protocol conformance descriptor for RFSchemaRFComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267268B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267268BFC(&qword_2800F8E78, &protocol conformance descriptor for RFSchemaRFComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267268BFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFComponentShown.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RFSchemaRFComponent(0);
  sub_26726914C(&qword_2800F8E70, type metadata accessor for RFSchemaRFComponent, &protocol conformance descriptor for RFSchemaRFComponent);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656E6F706D6F63, 0xE900000000000074);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v1);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656E6F706D6F63, 0xED0000656D614E74);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656E6F706D6F63, 0xEE007865646E4974);
  return v14(v18, 0);
}

uint64_t sub_267269040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672690A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726914C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267269194()
{
  result = qword_2800F8E18;
  if (!qword_2800F8E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E18);
  }

  return result;
}

uint64_t static RFSchemaRFGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 1682531954, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682531954, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D8D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267269474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672694D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGradingDialogLineTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v30 = *MEMORY[0x277D3E530];
  v9 = *(v3 + 104);
  v27[0] = v9;
  v10 = v2;
  v9(v5);
  v33[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v31 = *(v11 - 8);
  v12 = v31 + 56;
  v29 = *(v31 + 56);
  v29(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449676F6C616964, 0xE800000000000000);
  v13(v33, 0);
  v28 = "iri.rf.RFGradingDialogLineTier1";
  (v9)(v5, *MEMORY[0x277D3E4E8], v10);
  v33[0] = 1;
  sub_26738114C();
  v29(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v28 | 0x8000000000000000);
  v14(v33, 0);
  v28 = v10;
  v27[2] = v3 + 104;
  (v9)(v5, v30, v10);
  v33[0] = 1;
  v15 = v5;
  sub_26738114C();
  v27[1] = v12;
  v16 = v29;
  v29(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x69446E656B6F7073, 0xEC000000676F6C61);
  v17(v33, 0);
  v27[3] = a1;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v32, 0x69446E656B6F7073, 0xEC000000676F6C61);
  v20 = *(v31 + 48);
  v31 += 48;
  if (!v20(v21, 1, v11))
  {
    sub_266ECB128(&unk_28788D908);
    sub_26738115C();
  }

  (v19)(v32, 0);
  v18(v33, 0);
  (v27[0])(v15, v30, v28);
  v33[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6579616C70736964, 0xEF676F6C61694464);
  v22(v33, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v32, 0x6579616C70736964, 0xEF676F6C61694464);
  if (!v20(v25, 1, v11))
  {
    sub_266ECB128(&unk_28788D930);
    sub_26738115C();
  }

  (v24)(v32, 0);
  return v23(v33, 0);
}

uint64_t sub_267269BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267269C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267269C68()
{
  result = qword_2800F8E80;
  if (!qword_2800F8E80)
  {
    sub_267269CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8E80);
  }

  return result;
}

unint64_t sub_267269CC0()
{
  result = qword_2800F8E88;
  if (!qword_2800F8E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E88);
  }

  return result;
}

uint64_t static RFSchemaRFGradingDialogReportedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8E88, 0x277D5A358);
  sub_266ECAF2C(&qword_2800F8E80, &qword_2800F8E88, 0x277D5A358, &protocol conformance descriptor for RFSchemaRFGradingDialogLineTier1);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x694C676F6C616964, 0xEB0000000073656ELL);
  return v5(v7, 0);
}

uint64_t sub_267269EE8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8E88, 0x277D5A358);
  sub_266ECAF2C(&qword_2800F8E80, &qword_2800F8E88, 0x277D5A358, &protocol conformance descriptor for RFSchemaRFGradingDialogLineTier1);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x694C676F6C616964, 0xEB0000000073656ELL);
  return v5(v7, 0);
}

uint64_t sub_26726A08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726A0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGVisualResponseShownLink.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496E727574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26726A364(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496E727574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26726A4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726A560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGVisualResponseShownTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v30 = *MEMORY[0x277D3E530];
  v31 = v3 + 104;
  v32 = v2;
  v29 = v9;
  v9(v5);
  v34[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v27 = v11 + 56;
  v26(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x65736E6F70736572, 0xED00006C65646F4DLL);
  v12(v34, 0);
  v28 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 0x65736E6F70736572, 0xED00006C65646F4DLL);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788D958);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  v16 = v30;
  v17 = v32;
  v29(v5, v30, v32);
  v34[0] = 1;
  sub_26738114C();
  v18 = v26;
  v26(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x496E726574746170, 0xE900000000000064);
  v19(v34, 0);
  v20 = v16;
  v21 = v29;
  v29(v5, v20, v17);
  v34[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F6973726576, 0xE700000000000000);
  v22(v34, 0);
  v21(v5, v30, v32);
  v34[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x65736E6F70736572, 0xEE00644977656956);
  return v23(v34, 0);
}

uint64_t sub_26726AB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726ABDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726AC40()
{
  result = qword_2800F8DB8;
  if (!qword_2800F8DB8)
  {
    sub_26726AC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8DB8);
  }

  return result;
}

unint64_t sub_26726AC98()
{
  result = qword_2800F8DB0;
  if (!qword_2800F8DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8DB0);
  }

  return result;
}

uint64_t static RFSchemaRFInteraction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267488D70, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267488D90, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267488DB0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267488DD0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267488DF0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267488E10, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267488E30, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26726B0BC(uint64_t a1)
{
  v2 = sub_26726B1C0(&qword_2800F8E98, &protocol conformance descriptor for RFSchemaRFInteraction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726B124(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726B1C0(&qword_2800F8E98, &protocol conformance descriptor for RFSchemaRFInteraction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726B1C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFInteraction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFInteractionPerformed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v22 = sub_26738113C();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = *MEMORY[0x277D3E530];
  v7 = *(v1 + 104);
  v18[1] = v1 + 104;
  v19 = v7;
  v7(v3);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x614E6E6F69746361, 0xEA0000000000656DLL);
  v10(v23, 0);
  type metadata accessor for RFSchemaRFInteraction(0);
  sub_26726B960(&qword_2800F8E90, type metadata accessor for RFSchemaRFInteraction, &protocol conformance descriptor for RFSchemaRFInteraction);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65746E4972657375, 0xEF6E6F6974636172);
  v11(v23, 0);
  type metadata accessor for RFSchemaRFComponent(0);
  sub_26726B960(&qword_2800F8E70, type metadata accessor for RFSchemaRFComponent, &protocol conformance descriptor for RFSchemaRFComponent);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F436C6175736976, 0xEF746E656E6F706DLL);
  v12(v23, 0);
  v13 = v19;
  v19(v3, v21, v22);
  v23[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656E6F706D6F63, 0xED0000656D614E74);
  v14(v23, 0);
  type metadata accessor for RFSchemaRFCommandType(0);
  sub_26726B960(&qword_2800F8E60, type metadata accessor for RFSchemaRFCommandType, &protocol conformance descriptor for RFSchemaRFCommandType);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x54646E616D6D6F63, 0xEB00000000657079);
  v15(v23, 0);
  v13(v3, v21, v22);
  v23[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656E6F706D6F63, 0xEE007865646E4974);
  return v16(v23, 0);
}

uint64_t sub_26726B854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726B8B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726B960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26726B9A8()
{
  result = qword_2800F8E08;
  if (!qword_2800F8E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E08);
  }

  return result;
}

uint64_t static RFSchemaRFPattern.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267488EB0, isUniquelyReferenced_nonNull_native);
  *v3 = v78;

  v1(v97, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267488ED0, v8);
  *v7 = v79;

  v5(v97, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267488EF0, v12);
  *v11 = v80;

  v9(v97, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267488F10, v16);
  *v15 = v81;

  v13(v97, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267488F30, v20);
  *v19 = v82;

  v17(v97, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x8000000267488F60, v24);
  *v23 = v83;

  v21(v97, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267488F80, v28);
  *v27 = v84;

  v25(v97, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267488FA0, v32);
  *v31 = v85;

  v29(v97, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x8000000267488FC0, v36);
  *v35 = v86;

  v33(v97, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267488FF0, v40);
  *v39 = v87;

  v37(v97, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002FLL, 0x8000000267489020, v44);
  *v43 = v88;

  v41(v97, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x8000000267489050, v48);
  *v47 = v89;

  v45(v97, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267489070, v52);
  *v51 = v90;

  v49(v97, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ALL, 0x8000000267489090, v56);
  *v55 = v91;

  v53(v97, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x80000002674890B0, v60);
  *v59 = v92;

  v57(v97, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000028, 0x80000002674890D0, v64);
  *v63 = v93;

  v61(v97, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001BLL, 0x8000000267489100, v68);
  *v67 = v94;

  v65(v97, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x8000000267489120, v72);
  *v71 = v95;

  v69(v97, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x8000000267489150, v76);
  *v75 = v96;

  return v73(v97, 0);
}

uint64_t sub_26726C30C(uint64_t a1)
{
  v2 = sub_26726C410(&qword_2800F8EA8, &protocol conformance descriptor for RFSchemaRFPattern);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726C374(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726C410(&qword_2800F8EA8, &protocol conformance descriptor for RFSchemaRFPattern);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726C410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFPattern(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFPatternExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v14 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E530];
  v15 = *(v1 + 104);
  v15(v3);
  v18[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x496E726574746170, 0xE900000000000064);
  v9(v18, 0);
  type metadata accessor for RFSchemaRFPattern(0);
  sub_26726CA08(&qword_2800F8EA0, type metadata accessor for RFSchemaRFPattern, &protocol conformance descriptor for RFSchemaRFPattern);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E726574746170, 0xE700000000000000);
  v10(v18, 0);
  type metadata accessor for RFSchemaRFSiriMode(0);
  sub_26726CA08(&qword_2800F8EB0, type metadata accessor for RFSchemaRFSiriMode, &protocol conformance descriptor for RFSchemaRFSiriMode);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 1701080941, 0xE400000000000000);
  v11(v18, 0);
  (v15)(v3, v16, v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x65736E6F70736572, 0xEE00644977656956);
  return v12(v18, 0);
}

uint64_t sub_26726C8FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726C960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726CA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26726CA50()
{
  result = qword_2800F8DF8;
  if (!qword_2800F8DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8DF8);
  }

  return result;
}

uint64_t static RFSchemaRFSiriMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674891D0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674891F0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267489210, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267489230, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267489250, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26726CD94(uint64_t a1)
{
  v2 = sub_26726CE98(&qword_2800F8EB8, &protocol conformance descriptor for RFSchemaRFSiriMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726CDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726CE98(&qword_2800F8EB8, &protocol conformance descriptor for RFSchemaRFSiriMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726CE98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFSiriMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726D124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726D188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726D1EC()
{
  result = qword_2800F8EC0;
  if (!qword_2800F8EC0)
  {
    sub_26726D244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EC0);
  }

  return result;
}

unint64_t sub_26726D244()
{
  result = qword_2800F8EC8;
  if (!qword_2800F8EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EC8);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8ED0, 0x277D5A398);
  sub_266ECAF2C(&qword_2800F8ED8, &qword_2800F8ED0, 0x277D5A398, &protocol conformance descriptor for RFSchemaRFSnippetRenderingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F8EE0, 0x277D5A388);
  sub_266ECAF2C(&qword_2800F8EE8, &qword_2800F8EE0, 0x277D5A388, &protocol conformance descriptor for RFSchemaRFSnippetRenderingEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8EF0, 0x277D5A390);
  sub_266ECAF2C(&qword_2800F8EF8, &qword_2800F8EF0, 0x277D5A390, &protocol conformance descriptor for RFSchemaRFSnippetRenderingFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8EC8, 0x277D5A378);
  sub_266ECAF2C(&qword_2800F8EC0, &qword_2800F8EC8, 0x277D5A378, &protocol conformance descriptor for RFSchemaRFSnippetRenderingCancelled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x656C6C65636E6163, 0xE900000000000064);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26726D874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726D8D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFSnippetRenderingEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726DBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726DC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726DC8C()
{
  result = qword_2800F8EE8;
  if (!qword_2800F8EE8)
  {
    sub_26726DCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EE8);
  }

  return result;
}

unint64_t sub_26726DCE4()
{
  result = qword_2800F8EE0;
  if (!qword_2800F8EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EE0);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726DF78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726DFDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726E040()
{
  result = qword_2800F8EF8;
  if (!qword_2800F8EF8)
  {
    sub_26726E098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EF8);
  }

  return result;
}

unint64_t sub_26726E098()
{
  result = qword_2800F8EF0;
  if (!qword_2800F8EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EF0);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726E32C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726E390(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726E3F4()
{
  result = qword_2800F8ED8;
  if (!qword_2800F8ED8)
  {
    sub_26726E44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8ED8);
  }

  return result;
}

unint64_t sub_26726E44C()
{
  result = qword_2800F8ED0;
  if (!qword_2800F8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8ED0);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8F00, 0x277D5A3B8);
  sub_266ECAF2C(&qword_2800F8F08, &qword_2800F8F00, 0x277D5A3B8, &protocol conformance descriptor for RGSiriSchemaRGCacheManagerCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F8F10, 0x277D5A3A8);
  sub_266ECAF2C(&qword_2800F8F18, &qword_2800F8F10, 0x277D5A3A8, &protocol conformance descriptor for RGSiriSchemaRGCacheManagerCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8F20, 0x277D5A3B0);
  sub_266ECAF2C(&qword_2800F8F28, &qword_2800F8F20, 0x277D5A3B0, &protocol conformance descriptor for RGSiriSchemaRGCacheManagerCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496563617274, 0xE700000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26726EA74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726EAD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCacheManagerCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726EDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726EE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726EE8C()
{
  result = qword_2800F8F18;
  if (!qword_2800F8F18)
  {
    sub_26726EEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F18);
  }

  return result;
}

unint64_t sub_26726EEE4()
{
  result = qword_2800F8F10;
  if (!qword_2800F8F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F10);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788D980);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_26726F268(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726F2CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726F32C()
{
  result = qword_2800F8F40;
  if (!qword_2800F8F40)
  {
    type metadata accessor for RGSiriSchemaRGFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F40);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726F610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726F674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726F6D8()
{
  result = qword_2800F8F08;
  if (!qword_2800F8F08)
  {
    sub_26726F730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F08);
  }

  return result;
}

unint64_t sub_26726F730()
{
  result = qword_2800F8F00;
  if (!qword_2800F8F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F00);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCatalogContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8F58, 0x277D5A3D8);
  sub_266ECAF2C(&qword_2800F8F60, &qword_2800F8F58, 0x277D5A3D8, &protocol conformance descriptor for RGSiriSchemaRGCatalogStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8F68, 0x277D5A3C8);
  sub_266ECAF2C(&qword_2800F8F70, &qword_2800F8F68, 0x277D5A3C8, &protocol conformance descriptor for RGSiriSchemaRGCatalogEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8F78, 0x277D5A3D0);
  sub_266ECAF2C(&qword_2800F8F80, &qword_2800F8F78, 0x277D5A3D0, &protocol conformance descriptor for RGSiriSchemaRGCatalogFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26726FC94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726FCF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCatalogEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26726FFE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267270048(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672700AC()
{
  result = qword_2800F8F70;
  if (!qword_2800F8F70)
  {
    sub_267270104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F70);
  }

  return result;
}

unint64_t sub_267270104()
{
  result = qword_2800F8F68;
  if (!qword_2800F8F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F68);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCatalogFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788D9A8);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267270488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672704EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCatalogStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267489530);
  return v13(v16, 0);
}

uint64_t sub_2672708B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267270914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267270978()
{
  result = qword_2800F8F60;
  if (!qword_2800F8F60)
  {
    sub_2672709D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F60);
  }

  return result;
}

unint64_t sub_2672709D0()
{
  result = qword_2800F8F58;
  if (!qword_2800F8F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F58);
  }

  return result;
}

uint64_t static RGSiriSchemaRGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8F98, 0x277D5A3E8);
  sub_266ECAF2C(&qword_2800F8FA0, &qword_2800F8F98, 0x277D5A3E8, &protocol conformance descriptor for RGSiriSchemaRGClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v31, 0);
  sub_266ECB294(0, &qword_2800F8FA8, 0x277D5A478);
  sub_266ECAF2C(&qword_2800F8FB0, &qword_2800F8FA8, 0x277D5A478, &protocol conformance descriptor for RGSiriSchemaRGRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x4374736575716572, 0xEE00747865746E6FLL);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F8FB8, 0x277D5A488);
  sub_266ECAF2C(&qword_2800F8FC0, &qword_2800F8FB8, 0x277D5A488, &protocol conformance descriptor for RGSiriSchemaRGRequestEndedTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267489590);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F8FC8, 0x277D5A458);
  sub_266ECAF2C(&qword_2800F8FD0, &qword_2800F8FC8, 0x277D5A458, &protocol conformance descriptor for RGSiriSchemaRGOverrideContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x656469727265766FLL, 0xEF747865746E6F43);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F8FD8, 0x277D5A4A0);
  sub_266ECAF2C(&qword_2800F8FE0, &qword_2800F8FD8, 0x277D5A4A0, &protocol conformance descriptor for RGSiriSchemaRGValidationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674895B0);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F8F90, 0x277D5A3C0);
  sub_266ECAF2C(&qword_2800F8F88, &qword_2800F8F90, 0x277D5A3C0, &protocol conformance descriptor for RGSiriSchemaRGCatalogContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x43676F6C61746163, 0xEE00747865746E6FLL);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F8FE8, 0x277D5A438);
  sub_266ECAF2C(&qword_2800F8FF0, &qword_2800F8FE8, 0x277D5A438, &protocol conformance descriptor for RGSiriSchemaRGInferenceContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674895D0);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F8FF8, 0x277D5A418);
  sub_266ECAF2C(&qword_2800F9000, &qword_2800F8FF8, 0x277D5A418, &protocol conformance descriptor for RGSiriSchemaRGHallucinationDetectionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x80000002674895F0);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F9008, 0x277D5A3F8);
  sub_266ECAF2C(&qword_2800F9010, &qword_2800F9008, 0x277D5A3F8, &protocol conformance descriptor for RGSiriSchemaRGGMSCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267489610);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F8F38, 0x277D5A3A0);
  sub_266ECAF2C(&qword_2800F8F30, &qword_2800F8F38, 0x277D5A3A0, &protocol conformance descriptor for RGSiriSchemaRGCacheManagerCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x8000000267489630);
  v18(v31, 0);
  sub_26738117C();
  v19 = sub_2673811BC();
  v21 = v20;
  v22 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_266ECAD54(0, v22[2] + 1, 1, v22);
    *v21 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_266ECAD54((v24 > 1), v25 + 1, 1, v22);
    *v21 = v22;
  }

  v22[2] = v25 + 1;
  (*(v29 + 32))(v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v17, v30);
  v19(v31, 0);
  sub_266ECB128(&unk_28788D9D0);
  return sub_2673811CC();
}

uint64_t sub_26727151C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672715B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267271680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672716E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267271744(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9018, &qword_2800F9020, 0x277D5A3E0, &protocol conformance descriptor for RGSiriSchemaRGClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F9028, &qword_2800F9020, 0x277D5A3E0, &protocol conformance descriptor for RGSiriSchemaRGClientEvent);
  result = sub_266ECAF2C(&qword_2800F9030, &qword_2800F9020, 0x277D5A3E0, &protocol conformance descriptor for RGSiriSchemaRGClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static RGSiriSchemaRGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29 = a1;
  v24[1] = v9;
  v26 = v8;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v24[0] = *(v11 + 56);
  (v24[0])(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7365757165526669, 0xEB00000000644974);
  v12(v32, 0);
  v30 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v31, 0x7365757165526669, 0xEB00000000644974);
  v15 = *(v11 + 48);
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788DA00);
    sub_26738115C();
  }

  (v14)(v31, 0);
  v13(v32, 0);
  (*(v25 + 104))(v27, *MEMORY[0x277D3E540], v28);
  v32[0] = 1;
  sub_26738114C();
  v17 = v24[0];
  (v24[0])(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x53676E6974736F70, 0xED000064496E6170);
  v18(v32, 0);
  sub_26738120C();
  v17(v7, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 1682532210, 0xE400000000000000);
  v19(v32, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v31, 1682532210, 0xE400000000000000);
  if (!v15(v22, 1, v10))
  {
    sub_266ECB128(&unk_28788DA30);
    sub_26738115C();
  }

  (v21)(v31, 0);
  return v20(v32, 0);
}

uint64_t sub_267271D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267271DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E508], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v13(v16, 0);
}

uint64_t sub_26727218C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672721F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267272254()
{
  result = qword_2800F8F50;
  if (!qword_2800F8F50)
  {
    sub_2672722AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F50);
  }

  return result;
}

unint64_t sub_2672722AC()
{
  result = qword_2800F8F48;
  if (!qword_2800F8F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F48);
  }

  return result;
}

uint64_t static RGSiriSchemaRGFallbackReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674896D0, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674896F0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267489720, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267489750, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x8000000267489770, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674897B0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674897E0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x8000000267489800, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267489830, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267489860, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x8000000267489890, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_267272890(uint64_t a1)
{
  v2 = sub_267272994(&qword_2800F9048, &protocol conformance descriptor for RGSiriSchemaRGFallbackReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672728F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267272994(&qword_2800F9048, &protocol conformance descriptor for RGSiriSchemaRGFallbackReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267272994(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGFatalError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x80000002674898F0, isUniquelyReferenced_nonNull_native);
  *v3 = v6;

  return v1(v7, 0);
}

uint64_t sub_267272AF8(uint64_t a1)
{
  v2 = sub_267272BFC(&qword_2800F9050, &protocol conformance descriptor for RGSiriSchemaRGFatalError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267272B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267272BFC(&qword_2800F9050, &protocol conformance descriptor for RGSiriSchemaRGFatalError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267272BFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGGMSCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9058, 0x277D5A410);
  sub_266ECAF2C(&qword_2800F9060, &qword_2800F9058, 0x277D5A410, &protocol conformance descriptor for RGSiriSchemaRGGMSCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F9068, 0x277D5A400);
  sub_266ECAF2C(&qword_2800F9070, &qword_2800F9068, 0x277D5A400, &protocol conformance descriptor for RGSiriSchemaRGGMSCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9078, 0x277D5A408);
  sub_266ECAF2C(&qword_2800F9080, &qword_2800F9078, 0x277D5A408, &protocol conformance descriptor for RGSiriSchemaRGGMSCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496563617274, 0xE700000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26727321C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273280(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGGMSCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26727356C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672735D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267273634()
{
  result = qword_2800F9070;
  if (!qword_2800F9070)
  {
    sub_26727368C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9070);
  }

  return result;
}

unint64_t sub_26727368C()
{
  result = qword_2800F9068;
  if (!qword_2800F9068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9068);
  }

  return result;
}

uint64_t static RGSiriSchemaRGGMSCallFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DA60);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267273A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273A74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGGMSCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267273D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273DC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267273E28()
{
  result = qword_2800F9060;
  if (!qword_2800F9060)
  {
    sub_267273E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9060);
  }

  return result;
}

unint64_t sub_267273E80()
{
  result = qword_2800F9058;
  if (!qword_2800F9058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9058);
  }

  return result;
}

uint64_t static RGSiriSchemaRGHallucinationDetectionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9088, 0x277D5A430);
  sub_266ECAF2C(&qword_2800F9090, &qword_2800F9088, 0x277D5A430, &protocol conformance descriptor for RGSiriSchemaRGHallucinationDetectionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F9098, 0x277D5A420);
  sub_266ECAF2C(&qword_2800F90A0, &qword_2800F9098, 0x277D5A420, &protocol conformance descriptor for RGSiriSchemaRGHallucinationDetectionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F90A8, 0x277D5A428);
  sub_266ECAF2C(&qword_2800F90B0, &qword_2800F90A8, 0x277D5A428, &protocol conformance descriptor for RGSiriSchemaRGHallucinationDetectionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_2672743E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGHallucinationDetectionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267274734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672747FC()
{
  result = qword_2800F90A0;
  if (!qword_2800F90A0)
  {
    sub_267274854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90A0);
  }

  return result;
}

unint64_t sub_267274854()
{
  result = qword_2800F9098;
  if (!qword_2800F9098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9098);
  }

  return result;
}

uint64_t static RGSiriSchemaRGHallucinationDetectionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DA88);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267274BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGHallucinationDetectionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267274F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274F8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267274FF0()
{
  result = qword_2800F9090;
  if (!qword_2800F9090)
  {
    sub_267275048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9090);
  }

  return result;
}

unint64_t sub_267275048()
{
  result = qword_2800F9088;
  if (!qword_2800F9088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9088);
  }

  return result;
}

uint64_t static RGSiriSchemaRGInferenceContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F90B8, 0x277D5A450);
  sub_266ECAF2C(&qword_2800F90C0, &qword_2800F90B8, 0x277D5A450, &protocol conformance descriptor for RGSiriSchemaRGInferenceStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F90C8, 0x277D5A440);
  sub_266ECAF2C(&qword_2800F90D0, &qword_2800F90C8, 0x277D5A440, &protocol conformance descriptor for RGSiriSchemaRGInferenceEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F90D8, 0x277D5A448);
  sub_266ECAF2C(&qword_2800F90E0, &qword_2800F90D8, 0x277D5A448, &protocol conformance descriptor for RGSiriSchemaRGInferenceFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_2672755AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGInferenceEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_2672758FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672759C4()
{
  result = qword_2800F90D0;
  if (!qword_2800F90D0)
  {
    sub_267275A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90D0);
  }

  return result;
}

unint64_t sub_267275A1C()
{
  result = qword_2800F90C8;
  if (!qword_2800F90C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90C8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGInferenceFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DAB0);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267275DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275E04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGInferenceStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x655674706D6F7270, 0xED00006E6F697372);
  return v7(v9, 0);
}

uint64_t sub_267276140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672761A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F90E8, 0x277D5A470);
  sub_266ECAF2C(&qword_2800F90F0, &qword_2800F90E8, 0x277D5A470, &protocol conformance descriptor for RGSiriSchemaRGOverrideStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F90F8, 0x277D5A460);
  sub_266ECAF2C(&qword_2800F9100, &qword_2800F90F8, 0x277D5A460, &protocol conformance descriptor for RGSiriSchemaRGOverrideEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F9108, 0x277D5A468);
  sub_266ECAF2C(&qword_2800F9110, &qword_2800F9108, 0x277D5A468, &protocol conformance descriptor for RGSiriSchemaRGOverrideFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267276760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672767C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGOverrideType(0);
  sub_267276CA8(&qword_2800F9118, type metadata accessor for RGSiriSchemaRGOverrideType, &protocol conformance descriptor for RGSiriSchemaRGOverrideType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656469727265766FLL, 0xEC00000065707954);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x656469727265766FLL, 0xEA00000000006449);
  return v10(v14, 0);
}

uint64_t sub_267276B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267276C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267276CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267276CF0()
{
  result = qword_2800F90F8;
  if (!qword_2800F90F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90F8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGOverrideFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DAD8);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267277074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672770D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267489C50);
  return v13(v16, 0);
}

uint64_t sub_26727749C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267277500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267277564()
{
  result = qword_2800F90F0;
  if (!qword_2800F90F0)
  {
    sub_2672775BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90F0);
  }

  return result;
}

unint64_t sub_2672775BC()
{
  result = qword_2800F90E8;
  if (!qword_2800F90E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90E8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGOverrideType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267489CA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267489CC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267489CE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267489D00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26727788C(uint64_t a1)
{
  v2 = sub_267277990(&qword_2800F9120, &protocol conformance descriptor for RGSiriSchemaRGOverrideType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672778F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267277990(&qword_2800F9120, &protocol conformance descriptor for RGSiriSchemaRGOverrideType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267277990(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGOverrideType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9128, 0x277D5A498);
  sub_266ECAF2C(&qword_2800F9130, &qword_2800F9128, 0x277D5A498, &protocol conformance descriptor for RGSiriSchemaRGRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F9138, 0x277D5A480);
  sub_266ECAF2C(&qword_2800F9140, &qword_2800F9138, 0x277D5A480, &protocol conformance descriptor for RGSiriSchemaRGRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F9148, 0x277D5A490);
  sub_266ECAF2C(&qword_2800F9150, &qword_2800F9148, 0x277D5A490, &protocol conformance descriptor for RGSiriSchemaRGRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_267277EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267277F50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = sub_26738113C();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v28 = v6;
  v29 = v7;
  v26 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v31, 0);
  type metadata accessor for RGSiriSchemaRGResponseSource(0);
  sub_267278708(&qword_2800F9158, type metadata accessor for RGSiriSchemaRGResponseSource, &protocol conformance descriptor for RGSiriSchemaRGResponseSource);
  sub_26738120C();
  v11 = v8;
  v9(v5, 0, 1, v8);
  v12 = v9;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x65736E6F70736572, 0xEE00656372756F53);
  v13(v31, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = *(v30 + 104);
  v30 += 104;
  v24 = v15;
  v16 = v25;
  v17 = v27;
  v15(v25, v14, v27);
  v31[0] = 1;
  sub_26738114C();
  v12(v5, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x6574636172616863, 0xEE00746E756F4372);
  v18(v31, 0);
  v24(v16, v14, v17);
  v31[0] = 1;
  sub_26738114C();
  v12(v5, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E756F4364726F77, 0xE900000000000074);
  v19(v31, 0);
  type metadata accessor for RGSiriSchemaRGFallbackReason(0);
  sub_267278708(&qword_2800F9040, type metadata accessor for RGSiriSchemaRGFallbackReason, &protocol conformance descriptor for RGSiriSchemaRGFallbackReason);
  sub_26738120C();
  v12(v5, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  v20(v31, 0);
  sub_26738120C();
  v12(v5, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674779E0);
  return v21(v31, 0);
}

uint64_t sub_267278644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672786A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267278708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static RGSiriSchemaRGRequestEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = sub_26738113C();
  v1 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v39, 0);
  v11 = *(v1 + 104);
  v33 = *MEMORY[0x277D3E530];
  v36 = v1 + 104;
  v32 = v11;
  v11(v3);
  v39[0] = 1;
  sub_26738114C();
  v30 = v8 + 56;
  v34 = v9;
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x5379616C70736964, 0xED0000676E697274);
  v12(v39, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v38, 0x5379616C70736964, 0xED0000676E697274);
  v15 = *(v8 + 48);
  v35 = v8 + 48;
  v31 = v15;
  if (!v15(v16, 1, v7))
  {
    sub_266ECB128(&unk_28788DB00);
    sub_26738115C();
  }

  (v14)(v38, 0);
  v13(v39, 0);
  v32(v3, v33, v37);
  v39[0] = 1;
  sub_26738114C();
  v34(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x74536E656B6F7073, 0xEC000000676E6972);
  v17(v39, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v38, 0x74536E656B6F7073, 0xEC000000676E6972);
  if (!v31(v20, 1, v7))
  {
    sub_266ECB128(&unk_28788DB28);
    sub_26738115C();
  }

  (v19)(v38, 0);
  v18(v39, 0);
  v32(v3, v33, v37);
  v39[0] = 1;
  sub_26738114C();
  v34(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449746163, 0xE500000000000000);
  v21(v39, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v38, 0x6449746163, 0xE500000000000000);
  if (!v31(v24, 1, v7))
  {
    sub_266ECB128(&unk_28788DB50);
    sub_26738115C();
  }

  (v23)(v38, 0);
  v22(v39, 0);
  v32(v3, v33, v37);
  v39[0] = 1;
  sub_26738114C();
  v34(v6, 0, 1, v7);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0x6944636974617473, 0xEE006449676F6C61);
  v25(v39, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v38, 0x6944636974617473, 0xEE006449676F6C61);
  if (!v31(v28, 1, v7))
  {
    sub_266ECB128(&unk_28788DB78);
    sub_26738115C();
  }

  (v27)(v38, 0);
  return v26(v39, 0);
}

uint64_t sub_267278FA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6E6F73616572, 0xE600000000000000);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DBA0);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_2672793D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279438(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267279724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672797EC()
{
  result = qword_2800F9130;
  if (!qword_2800F9130)
  {
    sub_267279844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9130);
  }

  return result;
}

unint64_t sub_267279844()
{
  result = qword_2800F9128;
  if (!qword_2800F9128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9128);
  }

  return result;
}

uint64_t static RGSiriSchemaRGResponseSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267489E40, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267489E60, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267489E80, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267489EA0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267489EC0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267489EE0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267489F10, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267489F30, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267489F50, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_267279D48(uint64_t a1)
{
  v2 = sub_267279E4C(&qword_2800F9160, &protocol conformance descriptor for RGSiriSchemaRGResponseSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267279DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267279E4C(&qword_2800F9160, &protocol conformance descriptor for RGSiriSchemaRGResponseSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267279E4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGValidationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9168, 0x277D5A4B8);
  sub_266ECAF2C(&qword_2800F9170, &qword_2800F9168, 0x277D5A4B8, &protocol conformance descriptor for RGSiriSchemaRGValidationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F9178, 0x277D5A4A8);
  sub_266ECAF2C(&qword_2800F9180, &qword_2800F9178, 0x277D5A4A8, &protocol conformance descriptor for RGSiriSchemaRGValidationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F9188, 0x277D5A4B0);
  sub_266ECAF2C(&qword_2800F9190, &qword_2800F9188, 0x277D5A4B0, &protocol conformance descriptor for RGSiriSchemaRGValidationFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26727A3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727A40C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGValidationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26727A6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727A75C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727A7C0()
{
  result = qword_2800F9180;
  if (!qword_2800F9180)
  {
    sub_26727A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9180);
  }

  return result;
}

unint64_t sub_26727A818()
{
  result = qword_2800F9178;
  if (!qword_2800F9178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9178);
  }

  return result;
}

uint64_t static RGSiriSchemaRGValidationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x7272456C61746166, 0xEA0000000000726FLL);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DBC8);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0, &protocol conformance descriptor for RGSiriSchemaRGError);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F727265, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_26727AB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727AC00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGValidationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026748A040);
  return v13(v16, 0);
}

uint64_t sub_26727AFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727B028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727B08C()
{
  result = qword_2800F9170;
  if (!qword_2800F9170)
  {
    sub_26727B0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9170);
  }

  return result;
}

unint64_t sub_26727B0E4()
{
  result = qword_2800F9168;
  if (!qword_2800F9168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9168);
  }

  return result;
}

uint64_t static RRSchemaRRAnnotatedEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v33 = sub_26738113C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v11 = v9;
  v10(v8, 0, 1);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x68706172476F7375, 0xE800000000000000);
  v12(v34, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v14;
  v30 = v5;
  v14(v5, v13, v33);
  v34[0] = 1;
  sub_26738114C();
  v15 = v11;
  (v10)(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x616C437466697773, 0xEE00656D614E7373);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F9198, 0x277D5A508);
  sub_266ECAF2C(&qword_2800F91A0, &qword_2800F9198, 0x277D5A508, &protocol conformance descriptor for RRSchemaRRGroupIdentifier);
  sub_26738120C();
  (v10)(v8, 0, 1, v11);
  v27[1] = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x70756F7267, 0xE500000000000000);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F91A8, 0x277D5A4C8);
  sub_266ECAF2C(&qword_2800F91B0, &qword_2800F91A8, 0x277D5A4C8, &protocol conformance descriptor for RRSchemaRRAnnotation);
  sub_26738122C();
  v28 = v11;
  (v10)(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461746F6E6E61, 0xEB00000000736E6FLL);
  v18(v34, 0);
  v19 = v30;
  v20 = v32;
  v21 = v33;
  v32(v30, *MEMORY[0x277D3E500], v33);
  v34[0] = 1;
  sub_26738114C();
  (v10)(v8, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x79636E65696C6173, 0xED000065726F6353);
  v22(v34, 0);
  v29 = "iri.rr.RRAnnotatedEntity";
  v20(v19, *MEMORY[0x277D3E540], v21);
  v34[0] = 1;
  sub_26738114C();
  v23 = v28;
  (v10)(v8, 0, 1, v28);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v29 | 0x8000000000000000);
  v24(v34, 0);
  v20(v19, *MEMORY[0x277D3E4E8], v33);
  v34[0] = 1;
  sub_26738114C();
  (v10)(v8, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265666552736168, 0xEC00000065636E65);
  return v25(v34, 0);
}

uint64_t sub_26727B888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727B8EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRAnnotation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRAnnotationName(0);
  sub_26727BDBC(&qword_2800F91C8, type metadata accessor for RRSchemaRRAnnotationName, &protocol conformance descriptor for RRSchemaRRAnnotationName);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701667182, 0xE400000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x800000026748A0F0);
  return v10(v14, 0);
}

uint64_t sub_26727BCB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727BD14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727BDBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26727BE04()
{
  result = qword_2800F91A8;
  if (!qword_2800F91A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F91A8);
  }

  return result;
}

uint64_t static RRSchemaRRAnnotationName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026748A150, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026748A170, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026748A190, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026748A1C0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026748A1E0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026748A200, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26727C1B8(uint64_t a1)
{
  v2 = sub_26727C2BC(&qword_2800F91D0, &protocol conformance descriptor for RRSchemaRRAnnotationName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26727C220(uint64_t a1, uint64_t a2)
{
  v4 = sub_26727C2BC(&qword_2800F91D0, &protocol conformance descriptor for RRSchemaRRAnnotationName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26727C2BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRAnnotationName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F91D8, 0x277D5A4D8);
  sub_266ECAF2C(&qword_2800F91E0, &qword_2800F91D8, 0x277D5A4D8, &protocol conformance descriptor for RRSchemaRRClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v28[0] = *(v9 - 8);
  v10 = *(v28[0] + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v33, 0);
  sub_266ECB294(0, &qword_2800F91E8, 0x277D5A500);
  sub_266ECAF2C(&qword_2800F91F0, &qword_2800F91E8, 0x277D5A500, &protocol conformance descriptor for RRSchemaRREntityPoolReturned);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748A250);
  v12(v33, 0);
  sub_266ECB294(0, &qword_2800F91F8, 0x277D5A4E0);
  sub_266ECAF2C(&qword_2800F9200, &qword_2800F91F8, 0x277D5A4E0, &protocol conformance descriptor for RRSchemaRREntityPoolResolveContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026748A270);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F9208, 0x277D5A528);
  sub_266ECAF2C(&qword_2800F9210, &qword_2800F9208, 0x277D5A528, &protocol conformance descriptor for RRSchemaRRUsoGraphTier1);
  v28[2] = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6172476F73557272, 0xEF31726569546870);
  v14(v33, 0);
  v28[1] = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v32, 0x6172476F73557272, 0xEF31726569546870);
  if (!(*(v28[0] + 48))(v17, 1, v9))
  {
    sub_266ECB128(&unk_28788DBF0);
    sub_26738115C();
  }

  (v16)(v32, 0);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F9218, 0x277D5A510);
  sub_266ECAF2C(&qword_2800F9220, &qword_2800F9218, 0x277D5A510, &protocol conformance descriptor for RRSchemaRRPullerContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4372656C6C7570, 0xED0000747865746ELL);
  v18(v33, 0);
  v19 = v29;
  sub_26738117C();
  v20 = sub_2673811BC();
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_266ECAD54(0, v23[2] + 1, 1, v23);
    *v22 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_266ECAD54((v25 > 1), v26 + 1, 1, v23);
    *v22 = v23;
  }

  v23[2] = v26 + 1;
  (*(v30 + 32))(v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v19, v31);
  v20(v33, 0);
  sub_266ECB128(&unk_28788DC18);
  return sub_2673811CC();
}

uint64_t sub_26727CA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26727CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26727CBD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727CC3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727CC9C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9228, &qword_2800F1EC0, 0x277D5A4D0, &protocol conformance descriptor for RRSchemaRRClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F9230, &qword_2800F1EC0, 0x277D5A4D0, &protocol conformance descriptor for RRSchemaRRClientEvent);
  result = sub_266ECAF2C(&qword_2800F9238, &qword_2800F1EC0, 0x277D5A4D0, &protocol conformance descriptor for RRSchemaRRClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static RRSchemaRRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v21[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v23 = *(v6 + 56);
  v23(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 1145664114, 0xE400000000000000);
  v7(v26, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v25, 1145664114, 0xE400000000000000);
  v10 = *(v6 + 48);
  v24 = v6 + 48;
  v22 = v10;
  if (!v10(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DC50);
    sub_26738115C();
  }

  (v9)(v25, 0);
  v8(v26, 0);
  v21[2] = a1;
  sub_26738120C();
  v23(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v12(v26, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v25, 0x4974736575716572, 0xE900000000000064);
  if (!v22(v15, 1, v5))
  {
    sub_266ECB128(&unk_28788DC80);
    sub_26738115C();
  }

  (v14)(v25, 0);
  v13(v26, 0);
  sub_26738120C();
  v23(v4, 0, 1, v5);
  v16 = sub_2673811AC();
  sub_266EC637C(v4, 0x6575716552627573, 0xEC00000064497473);
  v16(v26, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v25, 0x6575716552627573, 0xEC00000064497473);
  if (!v22(v19, 1, v5))
  {
    sub_266ECB128(&unk_28788DCB0);
    sub_26738115C();
  }

  (v18)(v25, 0);
  return v17(v26, 0);
}

uint64_t sub_26727D290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727D2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolResolveContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9240, 0x277D5A4F8);
  sub_266ECAF2C(&qword_2800F9248, &qword_2800F9240, 0x277D5A4F8, &protocol conformance descriptor for RRSchemaRREntityPoolResolveStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F9250, 0x277D5A4E8);
  sub_266ECAF2C(&qword_2800F9258, &qword_2800F9250, 0x277D5A4E8, &protocol conformance descriptor for RRSchemaRREntityPoolResolveEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F9260, 0x277D5A4F0);
  sub_266ECAF2C(&qword_2800F9268, &qword_2800F9260, 0x277D5A4F0, &protocol conformance descriptor for RRSchemaRREntityPoolResolveFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26727D8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727D914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolResolveEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F91C0, 0x277D5A4C0);
  sub_266ECAF2C(&qword_2800F91B8, &qword_2800F91C0, 0x277D5A4C0, &protocol conformance descriptor for RRSchemaRRAnnotatedEntity);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365527972657571, 0xEC00000073746C75);
  v6(v9, 0);
  type metadata accessor for RRSchemaRRResolveOutcome(0);
  sub_26727DD0C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26727DC48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727DCAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727DD0C()
{
  result = qword_2800F9270;
  if (!qword_2800F9270)
  {
    type metadata accessor for RRSchemaRRResolveOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9270);
  }

  return result;
}

uint64_t static RRSchemaRREntityPoolResolveFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRResolveFailureReason(0);
  sub_26727E1F4(&qword_2800F9278, type metadata accessor for RRSchemaRRResolveFailureReason, &protocol conformance descriptor for RRSchemaRRResolveFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727DF64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRResolveFailureReason(0);
  sub_26727E1F4(&qword_2800F9278, type metadata accessor for RRSchemaRRResolveFailureReason, &protocol conformance descriptor for RRSchemaRRResolveFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727E14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727E1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26727E23C()
{
  result = qword_2800F9260;
  if (!qword_2800F9260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9260);
  }

  return result;
}

uint64_t static RRSchemaRREntityPoolResolveStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x79726575516F7375, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E45C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x79726575516F7375, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727E65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolReturned.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = sub_26738113C();
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v16 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F91C0, 0x277D5A4C0);
  sub_266ECAF2C(&qword_2800F91B8, &qword_2800F91C0, 0x277D5A4C0, &protocol conformance descriptor for RRSchemaRRAnnotatedEntity);
  sub_26738122C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000011, 0x800000026748A3E0);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0xD000000000000011, 0x800000026748A3E0);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788DCE0);
    sub_26738115C();
  }

  (v10)(v18, 0);
  v9(v19, 0);
  (*(v15 + 104))(v16, *MEMORY[0x277D3E538], v17);
  v19[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x6F43797469746E65, 0xEB00000000746E75);
  return v12(v19, 0);
}

uint64_t sub_26727EAEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727EB50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRGroupIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x644970756F7267, 0xE700000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 7431539, 0xE300000000000000);
  return v13(v16, 0);
}

uint64_t sub_26727EF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727EF70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727EFD4()
{
  result = qword_2800F91A0;
  if (!qword_2800F91A0)
  {
    sub_26727F02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F91A0);
  }

  return result;
}

unint64_t sub_26727F02C()
{
  result = qword_2800F9198;
  if (!qword_2800F9198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9198);
  }

  return result;
}

uint64_t static RRSchemaRRPullerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738118C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9280, 0x277D5A518);
  sub_266ECAF2C(&qword_2800F9288, &qword_2800F9280, 0x277D5A518, &protocol conformance descriptor for RRSchemaRRPullerEnded);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F9290, 0x277D5A520);
  sub_266ECAF2C(&qword_2800F9298, &qword_2800F9290, 0x277D5A520, &protocol conformance descriptor for RRSchemaRRPullerFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v21, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v9, v20);
  return v11(v21, 0);
}

uint64_t sub_26727F4BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727F520(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRPullerEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRPullerName(0);
  sub_26727F9F8(&qword_2800F92A0, type metadata accessor for RRSchemaRRPullerName, &protocol conformance descriptor for RRSchemaRRPullerName);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701667182, 0xE400000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43797469746E65, 0xEB00000000746E75);
  return v10(v14, 0);
}

uint64_t sub_26727F8EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727F950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727F9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26727FA40()
{
  result = qword_2800F9280;
  if (!qword_2800F9280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9280);
  }

  return result;
}

uint64_t static RRSchemaRRPullerFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRPullerName(0);
  sub_26727FEBC(&qword_2800F92A0, type metadata accessor for RRSchemaRRPullerName, &protocol conformance descriptor for RRSchemaRRPullerName);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701667182, 0xE400000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x756F656D69547369, 0xE900000000000074);
  return v10(v14, 0);
}

uint64_t sub_26727FDB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727FE14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727FEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26727FF04()
{
  result = qword_2800F9290;
  if (!qword_2800F9290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9290);
  }

  return result;
}

uint64_t static RRSchemaRRPullerName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x800000026748A4F0, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026748A510, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x800000026748A530, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026748A550, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x800000026748A570, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x800000026748A590, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x800000026748A5B0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026748A5E0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x800000026748A610, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x800000026748A630, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_267280488(uint64_t a1)
{
  v2 = sub_26728058C(&qword_2800F92A8, &protocol conformance descriptor for RRSchemaRRPullerName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672804F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728058C(&qword_2800F92A8, &protocol conformance descriptor for RRSchemaRRPullerName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728058C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRPullerName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRResolveFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026748A690, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026748A6B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026748A6E0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026748A710, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267280854(uint64_t a1)
{
  v2 = sub_267280958(&qword_2800F92B0, &protocol conformance descriptor for RRSchemaRRResolveFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672808BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267280958(&qword_2800F92B0, &protocol conformance descriptor for RRSchemaRRResolveFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267280958(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRResolveFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRResolveOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026748A770, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026748A790, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026748A7B0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026748A7D0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026748A800, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267280C94(uint64_t a1)
{
  v2 = sub_267280D98(&qword_2800F92B8, &protocol conformance descriptor for RRSchemaRRResolveOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267280CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267280D98(&qword_2800F92B8, &protocol conformance descriptor for RRSchemaRRResolveOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267280D98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRResolveOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRUsoGraphTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270, &protocol conformance descriptor for USOSchemaUSOGraphTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  v5(v7, 0);
  sub_266ECB128(&unk_28788DD10);
  return sub_2673811CC();
}

uint64_t sub_267280FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728104C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F92C0, 0x277D5A538);
  sub_266ECAF2C(&qword_2800F92C8, &qword_2800F92C0, 0x277D5A538, &protocol conformance descriptor for RSSSchemaRSSClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F92D0, 0x277D5A560);
  sub_266ECAF2C(&qword_2800F92D8, &qword_2800F92D0, 0x277D5A560, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x800000026748A880);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F92E0, 0x277D5A590);
  sub_266ECAF2C(&qword_2800F92E8, &qword_2800F92E0, 0x277D5A590, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncTokenReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026748A8A0);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F92F0, 0x277D5A588);
  sub_266ECAF2C(&qword_2800F92F8, &qword_2800F92F0, 0x277D5A588, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026748A8C0);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F9300, 0x277D5A580);
  sub_266ECAF2C(&qword_2800F9308, &qword_2800F9300, 0x277D5A580, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x800000026748A8E0);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F9310, 0x277D5A558);
  sub_266ECAF2C(&qword_2800F9318, &qword_2800F9310, 0x277D5A558, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDonationFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x800000026748A910);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F9320, 0x277D5A548);
  sub_266ECAF2C(&qword_2800F9328, &qword_2800F9320, 0x277D5A548, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026748A930);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F9330, 0x277D5A540);
  sub_266ECAF2C(&qword_2800F9338, &qword_2800F9330, 0x277D5A540, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002FLL, 0x800000026748A960);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F9340, 0x277D5A550);
  sub_266ECAF2C(&qword_2800F9348, &qword_2800F9340, 0x277D5A550, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x800000026748A990);
  v17(v30, 0);
  sub_26738117C();
  v18 = sub_2673811BC();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266ECAD54(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266ECAD54((v23 > 1), v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v16, v29);
  v18(v30, 0);
  sub_266ECB128(&unk_28788DD40);
  return sub_2673811CC();
}

uint64_t sub_267281B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267281BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267281C6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267281CD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267281D30(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9350, &qword_2800F1F70, 0x277D5A530, &protocol conformance descriptor for RSSSchemaRSSClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F9358, &qword_2800F1F70, 0x277D5A530, &protocol conformance descriptor for RSSSchemaRSSClientEvent);
  result = sub_266ECAF2C(&qword_2800F9360, &qword_2800F1F70, 0x277D5A530, &protocol conformance descriptor for RSSSchemaRSSClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static RSSSchemaRSSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449737372, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449737372, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788DD78);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2672820C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728212C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267282418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728247C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672824E0()
{
  result = qword_2800F9338;
  if (!qword_2800F9338)
  {
    sub_267282538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9338);
  }

  return result;
}

unint64_t sub_267282538()
{
  result = qword_2800F9330;
  if (!qword_2800F9330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9330);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncData(0);
  sub_2672829D8(&qword_2800F9368, type metadata accessor for RSSSchemaRSSSiriVocabSyncData, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncData);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x61746144636E7973, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267282744(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncData(0);
  sub_2672829D8(&qword_2800F9368, type metadata accessor for RSSSchemaRSSSiriVocabSyncData, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncData);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x61746144636E7973, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672828CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267282930(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672829D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267282A20()
{
  result = qword_2800F9320;
  if (!qword_2800F9320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9320);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267282CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267282D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267282D7C()
{
  result = qword_2800F9348;
  if (!qword_2800F9348)
  {
    sub_267282DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9348);
  }

  return result;
}

unint64_t sub_267282DD4()
{
  result = qword_2800F9340;
  if (!qword_2800F9340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9340);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026748AB10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026748AB30, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026748AB50, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026748AB80, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672830A8(uint64_t a1)
{
  v2 = sub_2672831AC(&qword_2800F9370, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncData);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267283110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672831AC(&qword_2800F9370, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncData);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672831AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDonationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(0);
  sub_26728363C(&qword_2800F9378, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672833AC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(0);
  sub_26728363C(&qword_2800F9378, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267283530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267283594(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728363C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267283684()
{
  result = qword_2800F9310;
  if (!qword_2800F9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9310);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDonationFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000031, 0x800000026748AC30, isUniquelyReferenced_nonNull_native);
  *v3 = v58;

  v1(v72, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026748AC70, v8);
  *v7 = v59;

  v5(v72, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x800000026748ACB0, v12);
  *v11 = v60;

  v9(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x800000026748ACF0, v16);
  *v15 = v61;

  v13(v72, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ALL, 0x800000026748AD30, v20);
  *v19 = v62;

  v17(v72, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000038, 0x800000026748AD70, v24);
  *v23 = v63;

  v21(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000038, 0x800000026748ADB0, v28);
  *v27 = v64;

  v25(v72, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000038, 0x800000026748ADF0, v32);
  *v31 = v65;

  v29(v72, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ELL, 0x800000026748AE30, v36);
  *v35 = v66;

  v33(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000003ELL, 0x800000026748AE70, v40);
  *v39 = v67;

  v37(v72, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000037, 0x800000026748AEB0, v44);
  *v43 = v68;

  v41(v72, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x800000026748AEF0, v48);
  *v47 = v69;

  v45(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003DLL, 0x800000026748AF30, v52);
  *v51 = v70;

  v49(v72, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000040, 0x800000026748AF70, v56);
  *v55 = v71;

  return v53(v72, 0);
}

uint64_t sub_267283DCC(uint64_t a1)
{
  v2 = sub_267283ED0(&qword_2800F9380, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267283E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267283ED0(&qword_2800F9380, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267283ED0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9388, 0x277D5A578);
  sub_266ECAF2C(&qword_2800F9390, &qword_2800F9388, 0x277D5A578, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadTriggered);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F9398, 0x277D5A568);
  sub_266ECAF2C(&qword_2800F93A0, &qword_2800F9398, 0x277D5A568, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F93A8, 0x277D5A570);
  sub_266ECAF2C(&qword_2800F93B0, &qword_2800F93A8, 0x277D5A570, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26728442C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267284490(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26728477C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672847E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267284844()
{
  result = qword_2800F93A0;
  if (!qword_2800F93A0)
  {
    sub_26728489C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F93A0);
  }

  return result;
}

unint64_t sub_26728489C()
{
  result = qword_2800F9398;
  if (!qword_2800F9398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9398);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason(0);
  sub_267284D34(&qword_2800F93B8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267284AA4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason(0);
  sub_267284D34(&qword_2800F93B8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267284C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267284C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267284D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267284D7C()
{
  result = qword_2800F93A8;
  if (!qword_2800F93A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F93A8);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000031, 0x800000026748B0D0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x800000026748B110, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000047, 0x800000026748B150, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004ALL, 0x800000026748B1A0, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x800000026748B1F0, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000041, 0x800000026748B230, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000048, 0x800000026748B280, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ELL, 0x800000026748B2D0, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x800000026748B310, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003ELL, 0x800000026748B350, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000047, 0x800000026748B390, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000039, 0x800000026748B3E0, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_2672853D0(uint64_t a1)
{
  v2 = sub_2672854D4(&qword_2800F93C0, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267285438(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672854D4(&qword_2800F93C0, &protocol conformance descriptor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}