uint64_t sub_267348AC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267348B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267348C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267348C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267348CEC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FAF70, &qword_2800F1F80, 0x277D5AF30, &protocol conformance descriptor for SUGSchemaSUGClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FAF78, &qword_2800F1F80, 0x277D5AF30, &protocol conformance descriptor for SUGSchemaSUGClientEvent);
  result = sub_266ECAF2C(&qword_2800FAF80, &qword_2800F1F80, 0x277D5AF30, &protocol conformance descriptor for SUGSchemaSUGClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static SUGSchemaSUGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449677573, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449677573, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893420);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267349084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673490E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGConversionMetricType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674A31D0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674A31F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674A3220, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673493A0(uint64_t a1)
{
  v2 = sub_2673494A4(&qword_2800FAF90, &protocol conformance descriptor for SUGSchemaSUGConversionMetricType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349408(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673494A4(&qword_2800FAF90, &protocol conformance descriptor for SUGSchemaSUGConversionMetricType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673494A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGConversionMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGDeliveryVehicle.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674A3280, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674A32A0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A32D0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x80000002674A3300, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674A3330, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674A3350, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x80000002674A3370, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x80000002674A33A0, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002DLL, 0x80000002674A33D0, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x80000002674A3400, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x80000002674A3420, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_267349A88(uint64_t a1)
{
  v2 = sub_267349B8C(&qword_2800FAFA0, &protocol conformance descriptor for SUGSchemaSUGDeliveryVehicle);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267349B8C(&qword_2800FAFA0, &protocol conformance descriptor for SUGSchemaSUGDeliveryVehicle);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267349B8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGDeliveryVehicle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementMetricDaysBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674A3490, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A34C0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A34F0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x80000002674A3520, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A3550, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267349ECC(uint64_t a1)
{
  v2 = sub_267349FD0(&qword_2800FAFB0, &protocol conformance descriptor for SUGSchemaSUGEngagementMetricDaysBucket);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267349FD0(&qword_2800FAFB0, &protocol conformance descriptor for SUGSchemaSUGEngagementMetricDaysBucket);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267349FD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementMetricReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_26738113C();
  v45 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v48 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v49 = *(v4 + 104);
  v46 = v4 + 104;
  v49(v6, v10, v3);
  v51[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v41 = *(v11 - 8);
  v12 = v41 + 56;
  v13 = *(v41 + 7);
  v13(v9, 0, 1, v11);
  v47 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xEC00000064496E6FLL);
  v14(v51, 0);
  v15 = v10;
  v16 = v45;
  v17 = v49;
  v49(v6, v15, v45);
  v51[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x41676E6967676F6CLL, 0xEF64496E6F697463);
  v18(v51, 0);
  v42 = *MEMORY[0x277D3E538];
  v17(v6);
  v51[0] = 1;
  sub_26738114C();
  v19 = v47;
  v47(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x80000002674A35C0);
  v20(v51, 0);
  v49(v6, *MEMORY[0x277D3E4E8], v16);
  v51[0] = 1;
  sub_26738114C();
  v43 = v12;
  v19(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x65766E6F43736168, 0xED00006E6F697372);
  v21(v51, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v50, 0x65766E6F43736168, 0xED00006E6F697372);
  v24 = v11;
  if (!(*(v41 + 6))(v25, 1, v11))
  {
    sub_266ECB128(&unk_287893448);
    sub_26738115C();
  }

  (v23)(v50, 0);
  v22(v51, 0);
  v41 = "numberSuggestionShownBefore";
  v26 = v42;
  v27 = v45;
  v49(v6, v42, v45);
  v51[0] = 1;
  sub_26738114C();
  v28 = v24;
  v40 = v24;
  v29 = v47;
  v47(v9, 0, 1, v24);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v41 | 0x8000000000000000);
  v30(v51, 0);
  v41 = "secondsToConversion";
  v31 = v27;
  v32 = v49;
  v49(v6, v26, v31);
  v51[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v41 | 0x8000000000000000);
  v33(v51, 0);
  v32(v6, v26, v45);
  v51[0] = 1;
  sub_26738114C();
  v34 = v40;
  v35 = v47;
  v47(v9, 0, 1, v40);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674A3620);
  v36(v51, 0);
  type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket(0);
  sub_26734AAA4(&qword_2800FAFA8, type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket, &protocol conformance descriptor for SUGSchemaSUGEngagementMetricDaysBucket);
  sub_26738120C();
  v35(v9, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B63754273796164, 0xEE00657079547465);
  v37(v51, 0);
  type metadata accessor for SUGSchemaSUGConversionMetricType(0);
  sub_26734AAA4(&qword_2800FAF88, type metadata accessor for SUGSchemaSUGConversionMetricType, &protocol conformance descriptor for SUGSchemaSUGConversionMetricType);
  sub_26738120C();
  v35(v9, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674A3640);
  return v38(v51, 0);
}

uint64_t sub_26734A998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734A9FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26734AAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26734AAEC()
{
  result = qword_2800FAF20;
  if (!qword_2800FAF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAF20);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E540], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x80000002674A3690);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800FAFB8, 0x277D5B020);
  sub_266ECAF2C(&qword_2800FAFC0, &qword_2800FAFB8, 0x277D5B020, &protocol conformance descriptor for SUGSchemaSUGUserStatistics);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7461745372657375, 0xEE00736369747369);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800FAFC8, 0x277D5AF80);
  sub_266ECAF2C(&qword_2800FAFD0, &qword_2800FAFC8, 0x277D5AF80, &protocol conformance descriptor for SUGSchemaSUGInteraction);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7463617265746E69, 0xEB000000006E6F69);
  v12(v14, 0);
  sub_266ECB128(&unk_287893470);
  return sub_2673811CC();
}

uint64_t sub_26734AF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734AFC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGFilteringStepContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAFD8, 0x277D5AF60);
  sub_266ECAF2C(&qword_2800FAFE0, &qword_2800FAFD8, 0x277D5AF60, &protocol conformance descriptor for SUGSchemaSUGFilteringStepStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FAFE8, 0x277D5AF58);
  sub_266ECAF2C(&qword_2800FAFF0, &qword_2800FAFE8, 0x277D5AF58, &protocol conformance descriptor for SUGSchemaSUGFilteringStepEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
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
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  v10(v22, 0);
  sub_266ECB128(&unk_287893498);
  return sub_2673811CC();
}

uint64_t sub_26734B4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734B528(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGFilteringStepEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_2878934C8);
  return sub_2673811CC();
}

uint64_t sub_26734B82C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734B890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734B8F4()
{
  result = qword_2800FAFF0;
  if (!qword_2800FAFF0)
  {
    sub_26734B94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAFF0);
  }

  return result;
}

unint64_t sub_26734B94C()
{
  result = qword_2800FAFE8;
  if (!qword_2800FAFE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFE8);
  }

  return result;
}

uint64_t static SUGSchemaSUGFilteringStepStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_2878934F8);
  return sub_2673811CC();
}

uint64_t sub_26734BBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734BC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734BCC0()
{
  result = qword_2800FAFE0;
  if (!qword_2800FAFE0)
  {
    sub_26734BD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAFE0);
  }

  return result;
}

unint64_t sub_26734BD18()
{
  result = qword_2800FAFD8;
  if (!qword_2800FAFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFD8);
  }

  return result;
}

uint64_t static SUGSchemaSUGGenerationStepContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAFF8, 0x277D5AF78);
  sub_266ECAF2C(&qword_2800FB000, &qword_2800FAFF8, 0x277D5AF78, &protocol conformance descriptor for SUGSchemaSUGGenerationStepStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FB008, 0x277D5AF70);
  sub_266ECAF2C(&qword_2800FB010, &qword_2800FB008, 0x277D5AF70, &protocol conformance descriptor for SUGSchemaSUGGenerationStepEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
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
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  v10(v22, 0);
  sub_266ECB128(&unk_287893528);
  return sub_2673811CC();
}

uint64_t sub_26734C1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGGenerationStepEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893558);
  return sub_2673811CC();
}

uint64_t sub_26734C52C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734C5F4()
{
  result = qword_2800FB010;
  if (!qword_2800FB010)
  {
    sub_26734C64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB010);
  }

  return result;
}

unint64_t sub_26734C64C()
{
  result = qword_2800FB008;
  if (!qword_2800FB008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB008);
  }

  return result;
}

uint64_t static SUGSchemaSUGGenerationStepStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893588);
  return sub_2673811CC();
}

uint64_t sub_26734C8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C95C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734C9C0()
{
  result = qword_2800FB000;
  if (!qword_2800FB000)
  {
    sub_26734CA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB000);
  }

  return result;
}

unint64_t sub_26734CA18()
{
  result = qword_2800FAFF8;
  if (!qword_2800FAFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFF8);
  }

  return result;
}

uint64_t static SUGSchemaSUGGoal.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x5F4C414F47475553, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A3810, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x80000002674A3830, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x80000002674A3850, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26734CCF8(uint64_t a1)
{
  v2 = sub_26734CDFC(&qword_2800FB020, &protocol conformance descriptor for SUGSchemaSUGGoal);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26734CD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26734CDFC(&qword_2800FB020, &protocol conformance descriptor for SUGSchemaSUGGoal);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26734CDFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGGoal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGInteraction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_26738113C();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v31 = "iri.sug.SUGInteraction";
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v34[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v30 = *(v12 + 56);
  v13 = v12 + 56;
  v27 = v11;
  v30(v9, 0, 1, v11);
  v26[1] = a2;
  v26[2] = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v31 | 0x8000000000000000);
  v14(v34, 0);
  v31 = "relatedSuggestionId";
  v15 = *MEMORY[0x277D3E538];
  v16 = v32;
  v28 = v10;
  v29 = v4 + 104;
  v10(v6, v15, v32);
  v34[0] = 1;
  sub_26738114C();
  v17 = v11;
  v18 = v30;
  v30(v9, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v31 | 0x8000000000000000);
  v19(v34, 0);
  v10(v6, v15, v16);
  v34[0] = 1;
  sub_26738114C();
  v20 = v27;
  v18(v9, 0, 1, v27);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x80000002674A38F0);
  v21(v34, 0);
  v28(v6, *MEMORY[0x277D3E4E8], v16);
  v34[0] = 1;
  sub_26738114C();
  v22 = v18;
  v18(v9, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x80000002674A3910);
  v23(v34, 0);
  type metadata accessor for SUGSchemaSUGTriggerType(0);
  sub_26734D50C(&qword_2800FB028, type metadata accessor for SUGSchemaSUGTriggerType, &protocol conformance descriptor for SUGSchemaSUGTriggerType);
  sub_26738120C();
  v22(v9, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x5472656767697274, 0xEB00000000657079);
  v24(v34, 0);
  sub_266ECB128(&unk_2878935B8);
  return sub_2673811CC();
}

uint64_t sub_26734D400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734D464(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26734D50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26734D554()
{
  result = qword_2800FAFC8;
  if (!qword_2800FAFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFC8);
  }

  return result;
}

uint64_t static SUGSchemaSUGInvocationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A3960, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A3980, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674A39A0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A39D0, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674A3A00, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x80000002674A3A20, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x80000002674A3A50, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000032, 0x80000002674A3A80, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x80000002674A3AC0, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000004BLL, 0x80000002674A3B00, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000035, 0x80000002674A3B50, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_26734DB34(uint64_t a1)
{
  v2 = sub_26734DC38(&qword_2800FB038, &protocol conformance descriptor for SUGSchemaSUGInvocationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26734DB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26734DC38(&qword_2800FB038, &protocol conformance descriptor for SUGSchemaSUGInvocationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26734DC38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGRankingStepContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB040, 0x277D5AF98);
  sub_266ECAF2C(&qword_2800FB048, &qword_2800FB040, 0x277D5AF98, &protocol conformance descriptor for SUGSchemaSUGRankingStepStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FB050, 0x277D5AF90);
  sub_266ECAF2C(&qword_2800FB058, &qword_2800FB050, 0x277D5AF90, &protocol conformance descriptor for SUGSchemaSUGRankingStepEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
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
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  v10(v22, 0);
  sub_266ECB128(&unk_2878935E0);
  return sub_2673811CC();
}

uint64_t sub_26734E0DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGRankingStepEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893610);
  return sub_2673811CC();
}

uint64_t sub_26734E444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E4A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734E50C()
{
  result = qword_2800FB058;
  if (!qword_2800FB058)
  {
    sub_26734E564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB058);
  }

  return result;
}

unint64_t sub_26734E564()
{
  result = qword_2800FB050;
  if (!qword_2800FB050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB050);
  }

  return result;
}

uint64_t static SUGSchemaSUGRankingStepStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893640);
  return sub_2673811CC();
}

uint64_t sub_26734E810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734E8D8()
{
  result = qword_2800FB048;
  if (!qword_2800FB048)
  {
    sub_26734E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB048);
  }

  return result;
}

unint64_t sub_26734E930()
{
  result = qword_2800FB040;
  if (!qword_2800FB040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB040);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB060, 0x277D5AFB8);
  sub_266ECAF2C(&qword_2800FB068, &qword_2800FB060, 0x277D5AFB8, &protocol conformance descriptor for SUGSchemaSUGRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FB070, 0x277D5AFA8);
  sub_266ECAF2C(&qword_2800FB078, &qword_2800FB070, 0x277D5AFA8, &protocol conformance descriptor for SUGSchemaSUGRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB080, 0x277D5AFB0);
  sub_266ECAF2C(&qword_2800FB088, &qword_2800FB080, 0x277D5AFB0, &protocol conformance descriptor for SUGSchemaSUGRequestFailed);
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
  v11(v23, 0);
  sub_266ECB128(&unk_287893670);
  return sub_2673811CC();
}

uint64_t sub_26734EEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734EF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_2878936A0);
  return sub_2673811CC();
}

uint64_t sub_26734F210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734F274(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734F2D8()
{
  result = qword_2800FB078;
  if (!qword_2800FB078)
  {
    sub_26734F330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB078);
  }

  return result;
}

unint64_t sub_26734F330()
{
  result = qword_2800FB070;
  if (!qword_2800FB070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB070);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_2878936D0);
  return sub_2673811CC();
}

uint64_t sub_26734F5DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734F640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734F6A4()
{
  result = qword_2800FB088;
  if (!qword_2800FB088)
  {
    sub_26734F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB088);
  }

  return result;
}

unint64_t sub_26734F6FC()
{
  result = qword_2800FB080;
  if (!qword_2800FB080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB080);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893700);
  return sub_2673811CC();
}

uint64_t sub_26734F9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734FA0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734FA70()
{
  result = qword_2800FB068;
  if (!qword_2800FB068)
  {
    sub_26734FAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB068);
  }

  return result;
}

unint64_t sub_26734FAC8()
{
  result = qword_2800FB060;
  if (!qword_2800FB060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB060);
  }

  return result;
}

uint64_t static SUGSchemaSUGResolutionStepContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB090, 0x277D5AFD0);
  sub_266ECAF2C(&qword_2800FB098, &qword_2800FB090, 0x277D5AFD0, &protocol conformance descriptor for SUGSchemaSUGResolutionStepStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FB0A0, 0x277D5AFC8);
  sub_266ECAF2C(&qword_2800FB0A8, &qword_2800FB0A0, 0x277D5AFC8, &protocol conformance descriptor for SUGSchemaSUGResolutionStepEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
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
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  v10(v22, 0);
  sub_266ECB128(&unk_287893730);
  return sub_2673811CC();
}

uint64_t sub_26734FF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734FFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGResolutionStepEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893760);
  return sub_2673811CC();
}

uint64_t sub_2673502DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267350340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673503A4()
{
  result = qword_2800FB0A8;
  if (!qword_2800FB0A8)
  {
    sub_2673503FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB0A8);
  }

  return result;
}

unint64_t sub_2673503FC()
{
  result = qword_2800FB0A0;
  if (!qword_2800FB0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0A0);
  }

  return result;
}

uint64_t static SUGSchemaSUGResolutionStepStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893790);
  return sub_2673811CC();
}

uint64_t sub_2673506A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735070C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267350770()
{
  result = qword_2800FB098;
  if (!qword_2800FB098)
  {
    sub_2673507C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB098);
  }

  return result;
}

unint64_t sub_2673507C8()
{
  result = qword_2800FB090;
  if (!qword_2800FB090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB090);
  }

  return result;
}

uint64_t static SUGSchemaSUGSignalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674A3DC0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A3DE0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674A3E00, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674A3E20, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x80000002674A3E40, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x80000002674A3E60, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000019, 0x80000002674A3E80, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267350BEC(uint64_t a1)
{
  v2 = sub_267350CF0(&qword_2800FB0B8, &protocol conformance descriptor for SUGSchemaSUGSignalType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267350C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_267350CF0(&qword_2800FB0B8, &protocol conformance descriptor for SUGSchemaSUGSignalType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267350CF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGSignalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGSiriHelpSignal.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17[1] = a2;
  sub_26738119C();
  v18 = "iri.sug.SUGSiriHelpSignal";
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E538], v3);
  v20[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v18 | 0x8000000000000000);
  v13(v20, 0);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v20[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x61566C616E676973, 0xEB0000000065756CLL);
  v14(v20, 0);
  type metadata accessor for SUGSchemaSUGSignalType(0);
  sub_267351238(&qword_2800FB0B0, type metadata accessor for SUGSchemaSUGSignalType, &protocol conformance descriptor for SUGSchemaSUGSignalType);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x79546C616E676973, 0xEA00000000006570);
  return v15(v20, 0);
}

uint64_t sub_26735112C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267351190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267351238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267351280()
{
  result = qword_2800FB0C8;
  if (!qword_2800FB0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0C8);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuggestion.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_26738113C();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v52) = *MEMORY[0x277D3E530];
  v61 = *(v4 + 104);
  v62 = v4 + 104;
  v61(v6);
  v63[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xEC00000064496E6FLL);
  v14(v63, 0);
  sub_266ECB294(0, &qword_2800FB0C8, 0x277D5AFD8);
  sub_266ECAF2C(&qword_2800FB0C0, &qword_2800FB0C8, 0x277D5AFD8, &protocol conformance descriptor for SUGSchemaSUGSiriHelpSignal);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674A3F20);
  v15(v63, 0);
  type metadata accessor for SUGSchemaSUGDeliveryVehicle(0);
  sub_2673522E4(&qword_2800FAF98, type metadata accessor for SUGSchemaSUGDeliveryVehicle, &protocol conformance descriptor for SUGSchemaSUGDeliveryVehicle);
  v58 = a1;
  sub_26738120C();
  v57 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x79726576696C6564, 0xEF656C6369686556);
  v16(v63, 0);
  type metadata accessor for SUGSchemaSUGGoal(0);
  sub_2673522E4(&qword_2800FB018, type metadata accessor for SUGSchemaSUGGoal, &protocol conformance descriptor for SUGSchemaSUGGoal);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v59 = v13;
  v56 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 1818324839, 0xE400000000000000);
  v17(v63, 0);
  v18 = v54;
  v19 = v60;
  v20 = v61;
  (v61)(v54, *MEMORY[0x277D3E538], v60);
  v63[0] = 1;
  sub_26738114C();
  v57(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E61526C616E6966, 0xE90000000000006BLL);
  v21(v63, 0);
  v51 = "subscribedSignal";
  v23 = v18;
  v24 = v18;
  LODWORD(v55) = *MEMORY[0x277D3E518];
  v22 = v55;
  v25 = v19;
  v26 = v19;
  v27 = v20;
  (v20)(v24, v55, v25);
  v63[0] = 1;
  sub_26738114C();
  v28 = v57;
  v57(v9, 0, 1, v10);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v51 | 0x8000000000000000);
  v29(v63, 0);
  v27(v23, v22, v26);
  v63[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v10);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F63536C616E6966, 0xEA00000000006572);
  v30(v63, 0);
  type metadata accessor for SUGSchemaSUGTierCategory(0);
  sub_2673522E4(&qword_2800FB0D0, type metadata accessor for SUGSchemaSUGTierCategory, &protocol conformance descriptor for SUGSchemaSUGTierCategory);
  sub_26738120C();
  v28(v9, 0, 1, v10);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xEE00726569546E6FLL);
  v31(v63, 0);
  sub_266ECB294(0, &qword_2800FB0D8, 0x277D5B010);
  sub_266ECAF2C(&qword_2800FB0E0, &qword_2800FB0D8, 0x277D5B010, &protocol conformance descriptor for SUGSchemaSUGSuppressionResult);
  sub_26738120C();
  v32 = v28;
  v28(v9, 0, 1, v10);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674A3F60);
  v33(v63, 0);
  v34 = v54;
  (v61)(v54, v52, v60);
  v63[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v10);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x41676E6967676F6CLL, 0xEF64496E6F697463);
  v35(v63, 0);
  type metadata accessor for SUGSchemaSUGChannel(0);
  sub_2673522E4(&qword_2800FAE90, type metadata accessor for SUGSchemaSUGChannel, &protocol conformance descriptor for SUGSchemaSUGChannel);
  sub_26738120C();
  v53 = v10;
  v32(v9, 0, 1, v10);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C656E6E616863, 0xE700000000000000);
  v36(v63, 0);
  v37 = v60;
  (v61)(v34, v55, v60);
  v63[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v10);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x536C656E6E616863, 0xEC00000065726F63);
  v38(v63, 0);
  v52 = "suppressionResult";
  v39 = v37;
  v40 = v61;
  (v61)(v34, v55, v37);
  v63[0] = 1;
  sub_26738114C();
  v41 = v53;
  v32(v9, 0, 1, v53);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v52 | 0x8000000000000000);
  v42(v63, 0);
  v55 = "smartSuppressionScore";
  v43 = *MEMORY[0x277D3E508];
  v40(v34, v43, v39);
  v63[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v55 | 0x8000000000000000);
  v44(v63, 0);
  (v61)(v34, v43, v60);
  v63[0] = 1;
  sub_26738114C();
  v45 = v53;
  v46 = v57;
  v57(v9, 0, 1, v53);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x80000002674A3FC0);
  v47(v63, 0);
  sub_266ECB294(0, &qword_2800FAE80, 0x277D5AF28);
  sub_266ECAF2C(&qword_2800FAE78, &qword_2800FAE80, 0x277D5AF28, &protocol conformance descriptor for SUGSchemaSUGAutoCompleteSuggestionMetaData);
  sub_26738120C();
  v46(v9, 0, 1, v45);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x80000002674A3FE0);
  v48(v63, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v46(v9, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  return v49(v63, 0);
}

uint64_t sub_267352220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267352284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673522E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SUGSchemaSUGSuggestionsGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB0F0, 0x277D5AFE0);
  sub_266ECAF2C(&qword_2800FB0E8, &qword_2800FB0F0, 0x277D5AFE0, &protocol conformance descriptor for SUGSchemaSUGSuggestion);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974736567677573, 0xEB00000000736E6FLL);
  v11(v22, 0);
  type metadata accessor for SUGSchemaSUGInvocationType(0);
  sub_267352A54();
  v18[1] = a1;
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461636F766E69, 0xEE00657079546E6FLL);
  v12(v22, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v18[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v18[0] = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x69746172656E6567, 0xEC00000064496E6FLL);
  v13(v22, 0);
  (*(v20 + 104))(v19, *MEMORY[0x277D3E530], v21);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x69746172656E6567, 0xED00006761546E6FLL);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800FAE68, 0x277D5AF20);
  sub_266ECAF2C(&qword_2800FAE60, &qword_2800FAE68, 0x277D5AF20, &protocol conformance descriptor for SUGSchemaSUGAutoCompleteQuery);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A4030);
  v15(v22, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  return v16(v22, 0);
}

uint64_t sub_267352990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673529F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267352A54()
{
  result = qword_2800FB030;
  if (!qword_2800FB030)
  {
    type metadata accessor for SUGSchemaSUGInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB030);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuggestionsGeneratedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB0F8, 0x277D5AFE8);
  sub_266ECAF2C(&qword_2800FB100, &qword_2800FB0F8, 0x277D5AFE8, &protocol conformance descriptor for SUGSchemaSUGSuggestionTier1);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEB00000000736E6FLL);
  v8(v14, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v13, 0x6974736567677573, 0xEB00000000736E6FLL);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_2878937C0);
    sub_26738115C();
  }

  (v10)(v13, 0);
  return v9(v14, 0);
}

uint64_t sub_267352E68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267352ECC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuggestionsUIActivity.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v22[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v20[0] = *(v9 + 56);
  (v20[0])(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974736567677573, 0xED00007364496E6FLL);
  v10(v22, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 0x6974736567677573, 0xED00007364496E6FLL);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878937E8);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  type metadata accessor for SUGSchemaSUGDeliveryVehicle(0);
  sub_267353678(&qword_2800FAF98, type metadata accessor for SUGSchemaSUGDeliveryVehicle, &protocol conformance descriptor for SUGSchemaSUGDeliveryVehicle);
  sub_26738120C();
  v14 = v20[0];
  (v20[0])(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x79726576696C6564, 0xEF656C6369686556);
  v15(v22, 0);
  type metadata accessor for SUGSchemaSUGUIActivity(0);
  sub_267353678(&qword_2800FB108, type metadata accessor for SUGSchemaSUGUIActivity, &protocol conformance descriptor for SUGSchemaSUGUIActivity);
  sub_26738120C();
  v14(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6976697463416975, 0xEA00000000007974);
  v16(v22, 0);
  sub_266ECB294(0, &qword_2800FB0F0, 0x277D5AFE0);
  sub_266ECAF2C(&qword_2800FB0E8, &qword_2800FB0F0, 0x277D5AFE0, &protocol conformance descriptor for SUGSchemaSUGSuggestion);
  sub_26738122C();
  v14(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974736567677573, 0xEB00000000736E6FLL);
  v17(v22, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v14(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  return v18(v22, 0);
}

uint64_t sub_2673535B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353618(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267353678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SUGSchemaSUGSuggestionsUIActivityTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB0F8, 0x277D5AFE8);
  sub_266ECAF2C(&qword_2800FB100, &qword_2800FB0F8, 0x277D5AFE8, &protocol conformance descriptor for SUGSchemaSUGSuggestionTier1);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEB00000000736E6FLL);
  v8(v14, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v13, 0x6974736567677573, 0xEB00000000736E6FLL);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_287893810);
    sub_26738115C();
  }

  (v10)(v13, 0);
  return v9(v14, 0);
}

uint64_t sub_267353A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuggestionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
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
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6974736567677573, 0xEC00000064496E6FLL);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x6974736567677573, 0xEC00000064496E6FLL);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287893838);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_267353F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353FC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuppressionReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674A4170, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674A4190, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A41C0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674A41F0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A4210, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000004FLL, 0x80000002674A4240, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000036, 0x80000002674A4290, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x80000002674A42D0, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002FLL, 0x80000002674A4300, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ELL, 0x80000002674A4330, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ALL, 0x80000002674A4360, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000051, 0x80000002674A4390, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000031, 0x80000002674A43F0, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_2673546E4(uint64_t a1)
{
  v2 = sub_2673547E8(&qword_2800FB118, &protocol conformance descriptor for SUGSchemaSUGSuppressionReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735474C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673547E8(&qword_2800FB118, &protocol conformance descriptor for SUGSchemaSUGSuppressionReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673547E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGSuppressionReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuppressionResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7270707553736177, 0xED00006465737365);
  v10(v13, 0);
  type metadata accessor for SUGSchemaSUGSuppressionReason(0);
  sub_267354C68(&qword_2800FB110, type metadata accessor for SUGSchemaSUGSuppressionReason, &protocol conformance descriptor for SUGSchemaSUGSuppressionReason);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674A4460);
  return v11(v13, 0);
}

uint64_t sub_267354B5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267354BC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267354C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267354CB0()
{
  result = qword_2800FB0D8;
  if (!qword_2800FB0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0D8);
  }

  return result;
}

uint64_t static SUGSchemaSUGTierCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674A44B0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A44D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A44F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674A4510, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267354F84(uint64_t a1)
{
  v2 = sub_267355088(&qword_2800FB120, &protocol conformance descriptor for SUGSchemaSUGTierCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267354FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355088(&qword_2800FB120, &protocol conformance descriptor for SUGSchemaSUGTierCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355088(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTierCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGTriggerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A4560, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x80000002674A4580, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674A45A0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673552E0(uint64_t a1)
{
  v2 = sub_2673553E4(&qword_2800FB128, &protocol conformance descriptor for SUGSchemaSUGTriggerType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673553E4(&qword_2800FB128, &protocol conformance descriptor for SUGSchemaSUGTriggerType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673553E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGTypingWindowEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUGSchemaSUGTypingWindowEndReason(0);
  sub_267355718(&qword_2800FB130, type metadata accessor for SUGSchemaSUGTypingWindowEndReason, &protocol conformance descriptor for SUGSchemaSUGTypingWindowEndReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x80000002674A45F0);
  return v5(v7, 0);
}

uint64_t sub_26735560C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267355670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267355718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267355760()
{
  result = qword_2800FAF40;
  if (!qword_2800FAF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAF40);
  }

  return result;
}

uint64_t static SUGSchemaSUGTypingWindowEndReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A4650, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674A4680, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674A46B0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A46E0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267355A34(uint64_t a1)
{
  v2 = sub_267355B38(&qword_2800FB138, &protocol conformance descriptor for SUGSchemaSUGTypingWindowEndReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355B38(&qword_2800FB138, &protocol conformance descriptor for SUGSchemaSUGTypingWindowEndReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355B38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTypingWindowEndReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGUIActivity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674A4740, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A4760, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x80000002674A4780, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267355D90(uint64_t a1)
{
  v2 = sub_267355E94(&qword_2800FB140, &protocol conformance descriptor for SUGSchemaSUGUIActivity);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355E94(&qword_2800FB140, &protocol conformance descriptor for SUGSchemaSUGUIActivity);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355E94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGUIActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGUserStatistics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "iri.sug.SUGUserStatistics";
  sub_266ECB294(0, &qword_2800FAE58, 0x277D5AF18);
  sub_266ECAF2C(&qword_2800FAE50, &qword_2800FAE58, 0x277D5AF18, &protocol conformance descriptor for SUGSchemaSUGAggregateCounts);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v20[1] = a2;
  v20[2] = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v21 | 0x8000000000000000);
  v13(v25, 0);
  v20[3] = a1;
  v21 = "totalSiriRequests";
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v21 | 0x8000000000000000);
  v14(v25, 0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A4810);
  v15(v25, 0);
  sub_26738120C();
  v16 = v9;
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674A4830);
  v17(v25, 0);
  (*(v23 + 104))(v22, *MEMORY[0x277D3E4E8], v24);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674A4850);
  return v18(v25, 0);
}

uint64_t sub_2673563E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735644C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestAssociatedSchemaIdentifier.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB148, 0x277D5B060);
  sub_266ECAF2C(&qword_2800FB150, &qword_2800FB148, 0x277D5B060, &protocol conformance descriptor for SUTSchemaTestGeneratedTurnID);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x44496E727574, 0xE600000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800FB158, 0x277D5B058);
  sub_266ECAF2C(&qword_2800FB160, &qword_2800FB158, 0x277D5B058, &protocol conformance descriptor for SUTSchemaTestGeneratedRequestId);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
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
  v11(v21, 0);
  sub_266ECB128(&unk_287893860);
  return sub_2673811CC();
}

uint64_t sub_267356954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673569B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D614E74736574, 0xE800000000000000);
  v10(v14, 0);
  type metadata accessor for SUTSchemaTestType(0);
  sub_267356EF8();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6570795474736574, 0xE800000000000000);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800FB180, 0x277D5B070);
  sub_266ECAF2C(&qword_2800FB188, &qword_2800FB180, 0x277D5B070, &protocol conformance descriptor for SUTSchemaTestSessionInfo);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7373655374736574, 0xEF6F666E496E6F69);
  v12(v14, 0);
  sub_266ECB128(&unk_287893890);
  return sub_2673811CC();
}

uint64_t sub_267356E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267356E98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267356EF8()
{
  result = qword_2800FB178;
  if (!qword_2800FB178)
  {
    type metadata accessor for SUTSchemaTestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB178);
  }

  return result;
}

uint64_t static SUTSchemaTestExecutionBegin.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB198, 0x277D5B030);
  sub_266ECAF2C(&qword_2800FB190, &qword_2800FB198, 0x277D5B030, &protocol conformance descriptor for SUTSchemaTestContext);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x747865746E6F63, 0xE700000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674A4930);
  v10(v14, 0);
  sub_266ECB128(&unk_2878938C0);
  return sub_2673811CC();
}

uint64_t sub_2673572E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267357344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestExecutionEnd.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_2878938F0);
  return sub_2673811CC();
}

uint64_t sub_267357648(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673576AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267357710()
{
  result = qword_2800FB1B0;
  if (!qword_2800FB1B0)
  {
    sub_267357768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB1B0);
  }

  return result;
}

unint64_t sub_267357768()
{
  result = qword_2800FB1B8;
  if (!qword_2800FB1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB1B8);
  }

  return result;
}

uint64_t static SUTSchemaTestExecutionEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB1C0, 0x277D5B050);
  sub_266ECAF2C(&qword_2800FB1C8, &qword_2800FB1C0, 0x277D5B050, &protocol conformance descriptor for SUTSchemaTestExecutionMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x617461646174656DLL, 0xE800000000000000);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800FB1A8, 0x277D5B038);
  sub_266ECAF2C(&qword_2800FB1A0, &qword_2800FB1A8, 0x277D5B038, &protocol conformance descriptor for SUTSchemaTestExecutionBegin);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674A49D0);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800FB1B8, 0x277D5B040);
  sub_266ECAF2C(&qword_2800FB1B0, &qword_2800FB1B8, 0x277D5B040, &protocol conformance descriptor for SUTSchemaTestExecutionEnd);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674A49F0);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800FB170, 0x277D5B028);
  sub_266ECAF2C(&qword_2800FB168, &qword_2800FB170, 0x277D5B028, &protocol conformance descriptor for SUTSchemaTestAssociatedSchemaIdentifier);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x80000002674A4A10);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800FB1D0, 0x277D5B068);
  sub_266ECAF2C(&qword_2800FB1D8, &qword_2800FB1D0, 0x277D5B068, &protocol conformance descriptor for SUTSchemaTestOutcomeRecorded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674A4A30);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  v14(v26, 0);
  sub_266ECB128(&unk_287893920);
  return sub_2673811CC();
}

uint64_t sub_267357E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267357EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267357FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267358028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267358088(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB1E0, &qword_2800F1E40, 0x277D5B048, &protocol conformance descriptor for SUTSchemaTestExecutionEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FB1E8, &qword_2800F1E40, 0x277D5B048, &protocol conformance descriptor for SUTSchemaTestExecutionEvent);
  result = sub_266ECAF2C(&qword_2800FB1F0, &qword_2800F1E40, 0x277D5B048, &protocol conformance descriptor for SUTSchemaTestExecutionEvent);
  a1[3] = result;
  return result;
}

uint64_t static SUTSchemaTestExecutionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x72707265676E6966, 0xEB00000000746E69);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x72707265676E6966, 0xEB00000000746E69);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893960);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287893990);
  return sub_2673811CC();
}

uint64_t sub_267358448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673584AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestGeneratedRequestId.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  v5(v7, 0);
  sub_266ECB128(&unk_2878939C0);
  return sub_2673811CC();
}

uint64_t sub_267358754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673587B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestGeneratedTurnID.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x44496E727574, 0xE600000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_2878939F0);
  return sub_2673811CC();
}

uint64_t sub_267358A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267358ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674A4B40, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x80000002674A4B60, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x80000002674A4B80, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x80000002674A4BA0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674A4BC0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x80000002674A4BE0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x80000002674A4C00, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267358F3C(uint64_t a1)
{
  v2 = sub_267359040(&qword_2800FB200, &protocol conformance descriptor for SUTSchemaTestOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267358FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267359040(&qword_2800FB200, &protocol conformance descriptor for SUTSchemaTestOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267359040(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUTSchemaTestOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUTSchemaTestOutcomeRecorded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUTSchemaTestOutcome(0);
  sub_26735938C(&qword_2800FB1F8, type metadata accessor for SUTSchemaTestOutcome, &protocol conformance descriptor for SUTSchemaTestOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374754F74736574, 0xEB00000000656D6FLL);
  v5(v7, 0);
  sub_266ECB128(&unk_287893A20);
  return sub_2673811CC();
}

uint64_t sub_267359280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673592E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735938C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2673593D4()
{
  result = qword_2800FB1D0;
  if (!qword_2800FB1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB1D0);
  }

  return result;
}

uint64_t static SUTSchemaTestSessionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42[2] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v48 = a2;
  sub_26738119C();
  v47 = *MEMORY[0x277D3E530];
  v10 = *(v4 + 104);
  v10(v6);
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v49 = *(v12 + 56);
  v13 = v12 + 56;
  v49(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v14(v50, 0);
  v15 = v47;
  v44 = v3;
  (v10)(v6, v47, v3);
  v50[0] = 1;
  sub_26738114C();
  v45 = v11;
  v46 = v13;
  v49(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6968637241757063, 0xEF65727574636574);
  v16(v50, 0);
  (v10)(v6, v15, v3);
  v43 = v10;
  v50[0] = 1;
  sub_26738114C();
  v17 = v11;
  v18 = v49;
  v49(v9, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6572617764726168, 0xED00006C65646F4DLL);
  v19(v50, 0);
  v20 = v47;
  v21 = v44;
  (v10)(v6, v47, v44);
  v50[0] = 1;
  sub_26738114C();
  v22 = v45;
  v23 = v18;
  v18(v9, 0, 1, v45);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v24(v50, 0);
  v25 = v43;
  (v43)(v6, v20, v21);
  v50[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x54746375646F7270, 0xEB00000000657079);
  v26(v50, 0);
  v27 = v20;
  v28 = v44;
  v29 = v25;
  v25(v6, v27, v44);
  v50[0] = 1;
  sub_26738114C();
  v30 = v45;
  v49(v9, 0, 1, v45);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x56746375646F7270, 0xEE006E6F69737265);
  v31(v50, 0);
  v32 = *MEMORY[0x277D3E4E8];
  v42[1] = v4 + 104;
  v29(v6, v32, v28);
  v50[0] = 1;
  sub_26738114C();
  v33 = v30;
  v34 = v49;
  v49(v9, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x616C756D69537369, 0xEB00000000726F74);
  v35(v50, 0);
  v36 = v47;
  v29(v6, v47, v28);
  v50[0] = 1;
  sub_26738114C();
  v37 = v45;
  v34(v9, 0, 1, v45);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v38(v50, 0);
  (v43)(v6, v36, v44);
  v50[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x614E656369766564, 0xEA0000000000656DLL);
  v39(v50, 0);
  sub_266ECB294(0, &qword_2800FB208, 0x277D5B078);
  sub_266ECAF2C(&qword_2800FB210, &qword_2800FB208, 0x277D5B078, &protocol conformance descriptor for SUTSchemaTestSessionInfoItem);
  sub_26738122C();
  v34(v9, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674A4CA0);
  v40(v50, 0);
  sub_266ECB128(&unk_287893A50);
  return sub_2673811CC();
}

uint64_t sub_267359DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267359E34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestSessionInfoItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v14(v18, 0);
  sub_266ECB128(&unk_287893A80);
  return sub_2673811CC();
}

uint64_t sub_26735A204(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735A268(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735A2CC()
{
  result = qword_2800FB210;
  if (!qword_2800FB210)
  {
    sub_26735A324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB210);
  }

  return result;
}

unint64_t sub_26735A324()
{
  result = qword_2800FB208;
  if (!qword_2800FB208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB208);
  }

  return result;
}

uint64_t static SUTSchemaTestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x80000002674A4D30, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x80000002674A4D50, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x4550595454534554, 0xEE0053495249535FLL, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x4550595454534554, 0xEC0000005453555FLL, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0x4550595454534554, 0xEC0000005053555FLL, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26735A668(uint64_t a1)
{
  v2 = sub_26735A76C(&qword_2800FB218, &protocol conformance descriptor for SUTSchemaTestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735A6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735A76C(&qword_2800FB218, &protocol conformance descriptor for SUTSchemaTestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735A76C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUTSchemaTestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB220, 0x277D5B0A0);
  sub_266ECAF2C(&qword_2800FB228, &qword_2800FB220, 0x277D5B0A0, &protocol conformance descriptor for TTMSchemaTTMClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800FB230, 0x277D5B110);
  sub_266ECAF2C(&qword_2800FB238, &qword_2800FB230, 0x277D5B110, &protocol conformance descriptor for TTMSchemaTTMRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674A4DA0);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800FB240, 0x277D5B0A8);
  sub_266ECAF2C(&qword_2800FB248, &qword_2800FB240, 0x277D5B0A8, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x80000002674A4DC0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800FB250, 0x277D5B0D8);
  sub_266ECAF2C(&qword_2800FB258, &qword_2800FB250, 0x277D5B0D8, &protocol conformance descriptor for TTMSchemaTTMOverrideRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674A4DE0);
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
  sub_266ECB128(&unk_287893AB0);
  return sub_2673811CC();
}

uint64_t sub_26735AD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26735AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26735AEF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735AF58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735AFB8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB260, &qword_2800FB268, 0x277D5B098, &protocol conformance descriptor for TTMSchemaTTMClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FB270, &qword_2800FB268, 0x277D5B098, &protocol conformance descriptor for TTMSchemaTTMClientEvent);
  result = sub_266ECAF2C(&qword_2800FB278, &qword_2800FB268, 0x277D5B098, &protocol conformance descriptor for TTMSchemaTTMClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static TTMSchemaTTMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v19[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v19[2] = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v19[0] = *(v8 + 56);
  (v19[0])(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496D7474, 0xE500000000000000);
  v9(v21, 0);
  v19[3] = a2;
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v20, 0x64496D7474, 0xE500000000000000);
  v12 = *(v8 + 48);
  if (!v12(v13, 1, v7))
  {
    sub_266ECB128(&unk_287893AE8);
    sub_26738115C();
  }

  (v11)(v20, 0);
  v10(v21, 0);
  sub_26738120C();
  (v19[0])(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v14(v21, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v20, 0x6449707274, 0xE500000000000000);
  if (!v12(v17, 1, v7))
  {
    sub_266ECB128(&unk_287893B18);
    sub_26738115C();
  }

  (v16)(v20, 0);
  v15(v21, 0);
  sub_266ECB128(&unk_287893B40);
  return sub_2673811CC();
}

uint64_t sub_26735B480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735B4E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A4E60, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x80000002674A4E80, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A4EB0, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_287893B70);
  return sub_26738112C();
}

uint64_t sub_26735B7B0(uint64_t a1)
{
  v2 = sub_26735B8B4(&qword_2800FB290, &protocol conformance descriptor for TTMSchemaTTMDecisionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735B818(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735B8B4(&qword_2800FB290, &protocol conformance descriptor for TTMSchemaTTMDecisionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735B8B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674A4F00, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674A4F20, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674A4F40, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x80000002674A4F60, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x80000002674A4F80, v20);
  *v19 = v26;

  v17(v27, 0);
  sub_266ECB128(&unk_287893BA0);
  return sub_26738112C();
}

uint64_t sub_26735BC04(uint64_t a1)
{
  v2 = sub_26735BD08(&qword_2800FB2A0, &protocol conformance descriptor for TTMSchemaTTMFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735BC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735BD08(&qword_2800FB2A0, &protocol conformance descriptor for TTMSchemaTTMFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735BD08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A5000, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674A5030, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A5060, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A5090, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_287893BD0);
  return sub_26738112C();
}

uint64_t sub_26735BFE8(uint64_t a1)
{
  v2 = sub_26735C0EC(&qword_2800FB2B0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735C050(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735C0EC(&qword_2800FB2B0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735C0EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A50F0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674A5110, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A5130, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_287893C00);
  return sub_26738112C();
}

uint64_t sub_26735C358(uint64_t a1)
{
  v2 = sub_26735C45C(&qword_2800FB2C0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735C3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735C45C(&qword_2800FB2C0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735C45C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB2C8, 0x277D5B0C0);
  sub_266ECAF2C(&qword_2800FB2D0, &qword_2800FB2C8, 0x277D5B0C0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FB2D8, 0x277D5B0B0);
  sub_266ECAF2C(&qword_2800FB2E0, &qword_2800FB2D8, 0x277D5B0B0, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB2E8, 0x277D5B0B8);
  sub_266ECAF2C(&qword_2800FB2F0, &qword_2800FB2E8, 0x277D5B0B8, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerRequestFailed);
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
  v11(v23, 0);
  sub_266ECB128(&unk_287893C30);
  return sub_2673811CC();
}

uint64_t sub_26735C9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735CA30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB2F8, 0x277D5B0C8);
  sub_266ECAF2C(&qword_2800FB300, &qword_2800FB2F8, 0x277D5B0C8, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerTCUResult);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v21[1] = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x73746C75736572, 0xE700000000000000);
  v13(v25, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v21[2] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465737361, 0xE500000000000000);
  v14(v25, 0);
  v21[0] = "lCombinerRequestEnded";
  v22 = *MEMORY[0x277D3E500];
  v15 = v24;
  v16 = *(v23 + 13);
  v16(v5);
  v23 = v16;
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v21[0] | 0x8000000000000000);
  v17(v25, 0);
  v21[0] = "dedResponseSuppressionEnded";
  (v16)(v5, *MEMORY[0x277D3E530], v15);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v21[0] | 0x8000000000000000);
  v18(v25, 0);
  (v23)(v5, v22, v24);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674A5200);
  v19(v25, 0);
  sub_266ECB128(&unk_287893C60);
  return sub_2673811CC();
}

uint64_t sub_26735D0B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735D114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(0);
  sub_26735D510();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287893C90);
  return sub_2673811CC();
}

uint64_t sub_26735D44C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735D4B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735D510()
{
  result = qword_2800FB2A8;
  if (!qword_2800FB2A8)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB2A8);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v23, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v22, 0x737473697865, 0xE600000000000000);
  v14 = *(v9 + 48);
  if (!v14(v15, 1, v8))
  {
    sub_266ECB128(&unk_287893CC0);
    sub_26738115C();
  }

  (v13)(v22, 0);
  v12(v23, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerMode(0);
  sub_26735DB10(&qword_2800FB2B8, type metadata accessor for TTMSchemaTTMNeuralCombinerMode, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerMode);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 1701080941, 0xE400000000000000);
  v16(v23, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v22, 1701080941, 0xE400000000000000);
  if (!v14(v19, 1, v8))
  {
    sub_266ECB128(&unk_287893CE8);
    sub_26738115C();
  }

  (v18)(v22, 0);
  v17(v23, 0);
  sub_266ECB128(&unk_287893D10);
  return sub_2673811CC();
}

uint64_t sub_26735DA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735DA68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735DB10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26735DB58()
{
  result = qword_2800FB2C8;
  if (!qword_2800FB2C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB2C8);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerTCUResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v14 = a1;
  v15 = sub_26738113C();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449756374, 0xE500000000000000);
  v9(v16, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v15);
  v16[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674A52E0);
  v10(v16, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_26735E130(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  v11(v16, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerMode(0);
  sub_26735E130(&qword_2800FB2B8, type metadata accessor for TTMSchemaTTMNeuralCombinerMode, &protocol conformance descriptor for TTMSchemaTTMNeuralCombinerMode);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 1701080941, 0xE400000000000000);
  v12(v16, 0);
  sub_266ECB128(&unk_287893D40);
  return sub_2673811CC();
}

uint64_t sub_26735E06C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735E0D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735E130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTMSchemaTTMOverrideFailure.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_26735E574(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType, &protocol conformance descriptor for TTMSchemaTTMOverrideType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEC00000065707954);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMOverrideFailureReason(0);
  sub_26735E574(&qword_2800FB318, type metadata accessor for TTMSchemaTTMOverrideFailureReason, &protocol conformance descriptor for TTMSchemaTTMOverrideFailureReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26735E468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735E4CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735E574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26735E5BC()
{
  result = qword_2800FB328;
  if (!qword_2800FB328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB328);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A5370, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674A53A0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A53D0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x80000002674A5400, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_287893D70);
  return sub_26738112C();
}

uint64_t sub_26735E8A4(uint64_t a1)
{
  v2 = sub_26735E9A8(&qword_2800FB330, &protocol conformance descriptor for TTMSchemaTTMOverrideFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735E90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735E9A8(&qword_2800FB330, &protocol conformance descriptor for TTMSchemaTTMOverrideFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735E9A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMOverrideFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB338, 0x277D5B0F0);
  sub_266ECAF2C(&qword_2800FB340, &qword_2800FB338, 0x277D5B0F0, &protocol conformance descriptor for TTMSchemaTTMOverrideRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FB348, 0x277D5B0E0);
  sub_266ECAF2C(&qword_2800FB350, &qword_2800FB348, 0x277D5B0E0, &protocol conformance descriptor for TTMSchemaTTMOverrideRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB358, 0x277D5B0E8);
  sub_266ECAF2C(&qword_2800FB360, &qword_2800FB358, 0x277D5B0E8, &protocol conformance descriptor for TTMSchemaTTMOverrideRequestFailed);
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
  v11(v23, 0);
  sub_266ECB128(&unk_287893DA0);
  return sub_2673811CC();
}

uint64_t sub_26735EF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735EF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB368, 0x277D5B108);
  sub_266ECAF2C(&qword_2800FB370, &qword_2800FB368, 0x277D5B108, &protocol conformance descriptor for TTMSchemaTTMOverrideTCUResult);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746C75736572, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737361, 0xE500000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287893DD0);
  return sub_2673811CC();
}

uint64_t sub_26735F2F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735F35C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideFailureReason(0);
  sub_26735F810();
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
    sub_266ECB128(&unk_287893E00);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800FB378, 0x277D5B100);
  sub_266ECAF2C(&qword_2800FB380, &qword_2800FB378, 0x277D5B100, &protocol conformance descriptor for TTMSchemaTTMOverrideTCUFailure);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x756C696146756374, 0xEB00000000736572);
  v12(v16, 0);
  sub_266ECB128(&unk_287893E28);
  return sub_2673811CC();
}

uint64_t sub_26735F74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735F7B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735F810()
{
  result = qword_2800FB318;
  if (!qword_2800FB318)
  {
    type metadata accessor for TTMSchemaTTMOverrideFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB318);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893E58);
  return sub_2673811CC();
}

uint64_t sub_26735FB0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735FB70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735FBD4()
{
  result = qword_2800FB340;
  if (!qword_2800FB340)
  {
    sub_26735FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB340);
  }

  return result;
}

unint64_t sub_26735FC2C()
{
  result = qword_2800FB338;
  if (!qword_2800FB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB338);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_267360040(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType, &protocol conformance descriptor for TTMSchemaTTMOverrideType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEC00000065707954);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267360040(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  return v7(v9, 0);
}

uint64_t sub_26735FF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735FF98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267360040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267360088()
{
  result = qword_2800FB390;
  if (!qword_2800FB390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB390);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideTCUFailure.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FB328, 0x277D5B0D0);
  sub_266ECAF2C(&qword_2800FB320, &qword_2800FB328, 0x277D5B0D0, &protocol conformance descriptor for TTMSchemaTTMOverrideFailure);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x736572756C696166, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_267360398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673603FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideTCUResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449756374, 0xE500000000000000);
  v8(v18, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267360A80(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  v9(v18, 0);
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_267360A80(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType, &protocol conformance descriptor for TTMSchemaTTMOverrideType);
  v16[1] = a1;
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x656469727265766FLL, 0xEC00000065707954);
  v10(v18, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v17, 0x656469727265766FLL, 0xEC00000065707954);
  if (!(*(v6 + 48))(v13, 1, v5))
  {
    sub_266ECB128(&unk_287893E88);
    sub_26738115C();
  }

  (v12)(v17, 0);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800FB390, 0x277D5B0F8);
  sub_266ECAF2C(&qword_2800FB388, &qword_2800FB390, 0x277D5B0F8, &protocol conformance descriptor for TTMSchemaTTMOverrideResult);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0x656469727265766FLL, 0xEF73746C75736552);
  v14(v18, 0);
  sub_266ECB128(&unk_287893EB0);
  return sub_2673811CC();
}

uint64_t sub_2673609BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267360A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267360A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTMSchemaTTMOverrideType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674A55E0, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x80000002674A5600, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674A5620, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674A5640, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x80000002674A5660, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674A5680, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x80000002674A56A0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674A56C0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x80000002674A56F0, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x80000002674A5720, v40);
  *v39 = v51;

  v37(v52, 0);
  sub_266ECB128(&unk_287893EE0);
  return sub_26738112C();
}

uint64_t sub_267361048(uint64_t a1)
{
  v2 = sub_26736114C(&qword_2800FB398, &protocol conformance descriptor for TTMSchemaTTMOverrideType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673610B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736114C(&qword_2800FB398, &protocol conformance descriptor for TTMSchemaTTMOverrideType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736114C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMOverrideType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FB3A0, 0x277D5B128);
  sub_266ECAF2C(&qword_2800FB3A8, &qword_2800FB3A0, 0x277D5B128, &protocol conformance descriptor for TTMSchemaTTMRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800FB3B0, 0x277D5B118);
  sub_266ECAF2C(&qword_2800FB3B8, &qword_2800FB3B0, 0x277D5B118, &protocol conformance descriptor for TTMSchemaTTMRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB3C0, 0x277D5B120);
  sub_266ECAF2C(&qword_2800FB3C8, &qword_2800FB3C0, 0x277D5B120, &protocol conformance descriptor for TTMSchemaTTMRequestFailed);
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
  v11(v23, 0);
  sub_266ECB128(&unk_287893F10);
  return sub_2673811CC();
}

uint64_t sub_2673616BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361720(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB3D0, 0x277D5B130);
  sub_266ECAF2C(&qword_2800FB3D8, &qword_2800FB3D0, 0x277D5B130, &protocol conformance descriptor for TTMSchemaTTMTCUResult);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746C75736572, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287893F40);
  return sub_2673811CC();
}

uint64_t sub_2673619C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361A28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMFailureReason(0);
  sub_267361DC8(&qword_2800FB298, type metadata accessor for TTMSchemaTTMFailureReason, &protocol conformance descriptor for TTMSchemaTTMFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287893F70);
  return sub_2673811CC();
}

uint64_t sub_267361CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361D20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267361DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267361E10()
{
  result = qword_2800FB3C0;
  if (!qword_2800FB3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB3C0);
  }

  return result;
}

uint64_t static TTMSchemaTTMRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287893FA0);
  return sub_2673811CC();
}

uint64_t sub_2673620BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267362120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267362184()
{
  result = qword_2800FB3A8;
  if (!qword_2800FB3A8)
  {
    sub_2673621DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB3A8);
  }

  return result;
}

unint64_t sub_2673621DC()
{
  result = qword_2800FB3A0;
  if (!qword_2800FB3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB3A0);
  }

  return result;
}

uint64_t static TTMSchemaTTMTCUMitigationDecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A5840, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674A5870, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674A58A0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A58D0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674A5900, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674A5930, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000033, 0x80000002674A5960, v28);
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_287893FD0);
  return sub_26738112C();
}

uint64_t sub_267362614(uint64_t a1)
{
  v2 = sub_267362718(&qword_2800FB3E0, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736267C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267362718(&qword_2800FB3E0, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267362718(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMTCUMitigationDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMTCUResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v7(v15, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267362C50(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision, &protocol conformance descriptor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F697369636564, 0xE800000000000000);
  v8(v15, 0);
  type metadata accessor for TTMSchemaTTMDecisionSource(0);
  sub_267362C50(&qword_2800FB288, type metadata accessor for TTMSchemaTTMDecisionSource, &protocol conformance descriptor for TTMSchemaTTMDecisionSource);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F697369636564, 0xEE00656372756F53);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6E6F697369636564, 0xEE00656372756F53);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_287894000);
    sub_26738115C();
  }

  (v11)(v14, 0);
  v10(v15, 0);
  sub_266ECB128(&unk_287894028);
  return sub_2673811CC();
}

uint64_t sub_267362B8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267362BF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267362C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTSSchemaTTSAudioInterface.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449726F646E6576, 0xE800000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49746375646F7270, 0xE900000000000064);
  return v14(v18, 0);
}

uint64_t sub_267363000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267363064(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673630C8()
{
  result = qword_2800F8D58;
  if (!qword_2800F8D58)
  {
    sub_267363120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D58);
  }

  return result;
}

unint64_t sub_267363120()
{
  result = qword_2800F8D50;
  if (!qword_2800F8D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D50);
  }

  return result;
}

uint64_t static TTSSchemaTTSAudioOutputRoute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A5A30, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A5A50, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A5A70, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A5AA0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x80000002674A5AD0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674A5AF0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x80000002674A5B20, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x80000002674A5B40, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2673635B8(uint64_t a1)
{
  v2 = sub_2673636BC(&qword_2800FB3F0, &protocol conformance descriptor for TTSSchemaTTSAudioOutputRoute);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267363620(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673636BC(&qword_2800FB3F0, &protocol conformance descriptor for TTSSchemaTTSAudioOutputRoute);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673636BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSAudioOutputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB3F8, 0x277D5B148);
  sub_266ECAF2C(&qword_2800FB400, &qword_2800FB3F8, 0x277D5B148, &protocol conformance descriptor for TTSSchemaTTSClientEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v28 = *(v7 - 8);
  v8 = *(v28 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v34, 0);
  sub_266ECB294(0, &qword_2800FB408, 0x277D5B150);
  sub_266ECAF2C(&qword_2800FB410, &qword_2800FB408, 0x277D5B150, &protocol conformance descriptor for TTSSchemaTTSClientSpeechContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43686365657073, 0xED0000747865746ELL);
  v10(v34, 0);
  sub_266ECB294(0, &qword_2800FB418, 0x277D5B160);
  sub_266ECAF2C(&qword_2800FB420, &qword_2800FB418, 0x277D5B160, &protocol conformance descriptor for TTSSchemaTTSRequestReceived);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x5274736575716572, 0xEF64657669656365);
  v11(v34, 0);
  sub_266ECB294(0, &qword_2800FB428, 0x277D5B168);
  sub_266ECAF2C(&qword_2800FB430, &qword_2800FB428, 0x277D5B168, &protocol conformance descriptor for TTSSchemaTTSRequestReceivedTier1);
  v29 = a1;
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674A5B90);
  v12(v34, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 0xD000000000000014, 0x80000002674A5B90);
  if (!(*(v28 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_287894058);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800FB438, 0x277D5B1B8);
  sub_266ECAF2C(&qword_2800FB440, &qword_2800FB438, 0x277D5B1B8, &protocol conformance descriptor for TTSSchemaTTSVoiceFallbackOccurred);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674A5BB0);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800FB448, 0x277D5B158);
  sub_266ECAF2C(&qword_2800FB450, &qword_2800FB448, 0x277D5B158, &protocol conformance descriptor for TTSSchemaTTSClientSynthesisContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674A5BD0);
  v17(v34, 0);
  v18 = v30;
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
  (*(v31 + 32))(v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v18, v32);
  v19(v34, 0);
  sub_266ECB128(&unk_287894080);
  return sub_2673811CC();
}

uint64_t sub_267363F48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267363FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2673640AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267364110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267364170(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB458, &qword_2800F1EB0, 0x277D5B140, &protocol conformance descriptor for TTSSchemaTTSClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FB460, &qword_2800F1EB0, 0x277D5B140, &protocol conformance descriptor for TTSSchemaTTSClientEvent);
  result = sub_266ECAF2C(&qword_2800FB468, &qword_2800F1EB0, 0x277D5B140, &protocol conformance descriptor for TTSSchemaTTSClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static TTSSchemaTTSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v31 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v32 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v30 = *(v9 + 56);
  v30(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449737474, 0xE500000000000000);
  v10(v35, 0);
  v33 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v34, 0x6449737474, 0xE500000000000000);
  v29 = *(v9 + 48);
  if (!v29(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878940B8);
    sub_26738115C();
  }

  (v12)(v34, 0);
  v11(v35, 0);
  sub_26738120C();
  v30(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v14(v35, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0x4974736575716572, 0xE900000000000064);
  if (!v29(v17, 1, v8))
  {
    sub_266ECB128(&unk_2878940E8);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  (*(v26 + 104))(v27, *MEMORY[0x277D3E530], v28);
  v35[0] = 1;
  sub_26738114C();
  v18 = v30;
  v30(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449746E65696C63, 0xE800000000000000);
  v19(v35, 0);
  sub_26738120C();
  v18(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v20(v35, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v34, 0x6575716552627573, 0xEC00000064497473);
  if (!v29(v23, 1, v8))
  {
    sub_266ECB128(&unk_287894118);
    sub_26738115C();
  }

  (v22)(v34, 0);
  v21(v35, 0);
  sub_26738120C();
  v30(v7, 0, 1, v8);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x4977656956656361, 0xE900000000000064);
  return v24(v35, 0);
}

uint64_t sub_26736491C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267364980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSClientSpeechContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
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
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800FB470, 0x277D5B188);
  sub_266ECAF2C(&qword_2800FB478, &qword_2800FB470, 0x277D5B188, &protocol conformance descriptor for TTSSchemaTTSSpeechStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800FB480, 0x277D5B178);
  sub_266ECAF2C(&qword_2800FB488, &qword_2800FB480, 0x277D5B178, &protocol conformance descriptor for TTSSchemaTTSSpeechEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800FB490, 0x277D5B180);
  sub_266ECAF2C(&qword_2800FB498, &qword_2800FB490, 0x277D5B180, &protocol conformance descriptor for TTSSchemaTTSSpeechFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800FB4A0, 0x277D5B170);
  sub_266ECAF2C(&qword_2800FB4A8, &qword_2800FB4A0, 0x277D5B170, &protocol conformance descriptor for TTSSchemaTTSSpeechCancelled);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  return v14(v26, 0);
}

uint64_t sub_2673650D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267365134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSClientSynthesisContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
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
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800FB4B0, 0x277D5B1A8);
  sub_266ECAF2C(&qword_2800FB4B8, &qword_2800FB4B0, 0x277D5B1A8, &protocol conformance descriptor for TTSSchemaTTSSynthesisStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800FB4C0, 0x277D5B198);
  sub_266ECAF2C(&qword_2800FB4C8, &qword_2800FB4C0, 0x277D5B198, &protocol conformance descriptor for TTSSchemaTTSSynthesisEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800FB4D0, 0x277D5B1A0);
  sub_266ECAF2C(&qword_2800FB4D8, &qword_2800FB4D0, 0x277D5B1A0, &protocol conformance descriptor for TTSSchemaTTSSynthesisFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800FB4E0, 0x277D5B190);
  sub_266ECAF2C(&qword_2800FB4E8, &qword_2800FB4E0, 0x277D5B190, &protocol conformance descriptor for TTSSchemaTTSSynthesisCancelled);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  return v14(v26, 0);
}

uint64_t sub_267365884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673658E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSRequestReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_26738113C();
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1);
  v14 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v13[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v8(v17, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0, &protocol conformance descriptor for TTSSchemaTTSVoiceContext);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x80000002674A5CC0);
  v9(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E508], v16);
  v17[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x7865547475706E69, 0xEF6874676E654C74);
  v10(v17, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  return v11(v17, 0);
}

uint64_t sub_267365E24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267365E88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSRequestReceivedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v20[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v18[0] = *(v9 + 56);
  (v18[0])(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674A5D10);
  v10(v20, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v19, 0xD000000000000010, 0x80000002674A5D10);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_287894140);
    sub_26738115C();
  }

  (v12)(v19, 0);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v14 = v18[0];
  (v18[0])(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v15(v20, 0);
  sub_26738120C();
  v14(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x49747865746E6F63, 0xE900000000000064);
  return v16(v20, 0);
}

uint64_t sub_26736639C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSSpeechCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673666EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366750(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673667B4()
{
  result = qword_2800FB4A8;
  if (!qword_2800FB4A8)
  {
    sub_26736680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4A8);
  }

  return result;
}

unint64_t sub_26736680C()
{
  result = qword_2800FB4A0;
  if (!qword_2800FB4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4A0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = *MEMORY[0x277D3E500];
  v9 = *(v3 + 104);
  v30 = v3 + 104;
  v28 = v9;
  v25 = v2;
  (v9)(v5);
  v31[0] = 1;
  sub_26738114C();
  v29 = sub_26738116C();
  v10 = *(*(v29 - 8) + 56);
  v10(v8, 0, 1, v29);
  v24 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x80000002674A5D90);
  v11(v31, 0);
  v23 = "DurationInSecond";
  v12 = v27;
  v13 = v28;
  v28(v5, v27, v2);
  v31[0] = 1;
  sub_26738114C();
  v14 = v29;
  v10(v8, 0, 1, v29);
  v26 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v23 | 0x8000000000000000);
  v15(v31, 0);
  v16 = v12;
  v17 = v25;
  v13(v5, v16, v25);
  v31[0] = 1;
  sub_26738114C();
  v18 = v24;
  v24(v8, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674A5DE0);
  v19(v31, 0);
  v13(v5, *MEMORY[0x277D3E538], v17);
  v31[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4374706D6F7270, 0xEB00000000746E75);
  v20(v31, 0);
  v13(v5, *MEMORY[0x277D3E508], v17);
  v31[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v29);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xEA00000000007365);
  return v21(v31, 0);
}

uint64_t sub_267366E00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366E64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267366EC8()
{
  result = qword_2800FB488;
  if (!qword_2800FB488)
  {
    sub_267366F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB488);
  }

  return result;
}

unint64_t sub_267366F20()
{
  result = qword_2800FB480;
  if (!qword_2800FB480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB480);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673671BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267367220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267367284()
{
  result = qword_2800FB498;
  if (!qword_2800FB498)
  {
    sub_2673672DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB498);
  }

  return result;
}

unint64_t sub_2673672DC()
{
  result = qword_2800FB490;
  if (!qword_2800FB490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB490);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechStarted.makeTypeManifestAndEnsureFields(in:)(char *a1)
{
  v39 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  MEMORY[0x28223BE20](v1);
  v40 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v36 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSAudioOutputRoute(0);
  sub_267367E60(&qword_2800FB3E8, type metadata accessor for TTSSchemaTTSAudioOutputRoute, &protocol conformance descriptor for TTSSchemaTTSAudioOutputRoute);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026749AA90);
  v11(v45, 0);
  v41 = *MEMORY[0x277D3E500];
  v12 = *(v44 + 104);
  v44 += 104;
  v42 = v12;
  v12(v40);
  v45[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x80000002674A5E60);
  v13(v45, 0);
  type metadata accessor for TTSSchemaTTSSynthesisSource(0);
  sub_267367E60(&qword_2800FB500, type metadata accessor for TTSSchemaTTSSynthesisSource, &protocol conformance descriptor for TTSSchemaTTSSynthesisSource);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x69736568746E7973, 0xEF656372756F5373);
  v14(v45, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0, &protocol conformance descriptor for TTSSchemaTTSVoiceContext);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F436563696F76, 0xEC00000074786574);
  v15(v45, 0);
  type metadata accessor for TTSSchemaTTSSynthesisEffect(0);
  sub_267367E60(&qword_2800FB508, type metadata accessor for TTSSchemaTTSSynthesisEffect, &protocol conformance descriptor for TTSSchemaTTSSynthesisEffect);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x69736568746E7973, 0xEF74636566664573);
  v16(v45, 0);
  sub_266ECB294(0, &qword_2800F8D50, 0x277D5B138);
  sub_266ECAF2C(&qword_2800F8D58, &qword_2800F8D50, 0x277D5B138, &protocol conformance descriptor for TTSSchemaTTSAudioInterface);
  sub_26738120C();
  v17 = v7;
  v18 = v7;
  v19 = v10;
  v9(v6, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E496F69647561, 0xEE00656361667265);
  v20(v45, 0);
  v21 = v40;
  v22 = v41;
  v42(v40, v41, v43);
  v45[0] = 1;
  sub_26738114C();
  v23 = v17;
  v9(v6, 0, 1, v17);
  v36[1] = v19;
  v37 = v9;
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D756C6F76, 0xE600000000000000);
  v24(v45, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267367E60(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState, &protocol conformance descriptor for SISchemaDeviceThermalState);
  sub_26738120C();
  v38 = v17;
  v9(v6, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0x536C616D72656874, 0xEC00000065746174);
  v25(v45, 0);
  v39 = "dLatencyInSecond";
  v26 = v22;
  v27 = v42;
  v28 = v43;
  v42(v21, v26, v43);
  v45[0] = 1;
  sub_26738114C();
  v29 = v23;
  v30 = v37;
  v37(v6, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, v39 | 0x8000000000000000);
  v31(v45, 0);
  v39 = "assetSelectionLatencyInSecond";
  v27(v21, v41, v28);
  v45[0] = 1;
  sub_26738114C();
  v32 = v38;
  v30(v6, 0, 1, v38);
  v33 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v39 | 0x8000000000000000);
  v33(v45, 0);
  v27(v21, *MEMORY[0x277D3E4E8], v43);
  v45[0] = 1;
  sub_26738114C();
  v30(v6, 0, 1, v32);
  v34 = sub_2673811AC();
  sub_266EC637C(v6, 0x74536D7261577369, 0xEB00000000747261);
  return v34(v45, 0);
}

uint64_t sub_267367D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267367E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267367E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTSSchemaTTSSynthesisCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267368134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673681FC()
{
  result = qword_2800FB4E8;
  if (!qword_2800FB4E8)
  {
    sub_267368254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4E8);
  }

  return result;
}

unint64_t sub_267368254()
{
  result = qword_2800FB4E0;
  if (!qword_2800FB4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4E0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisEffect.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A5F30, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A5F50, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674A5F70, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673684B8(uint64_t a1)
{
  v2 = sub_2673685BC(&qword_2800FB510, &protocol conformance descriptor for TTSSchemaTTSSynthesisEffect);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267368520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673685BC(&qword_2800FB510, &protocol conformance descriptor for TTSSchemaTTSSynthesisEffect);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673685BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSSynthesisEffect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = *MEMORY[0x277D3E500];
  v9 = *(v3 + 104);
  v30 = v3 + 104;
  v28 = v9;
  v25 = v2;
  (v9)(v5);
  v31[0] = 1;
  sub_26738114C();
  v29 = sub_26738116C();
  v10 = *(*(v29 - 8) + 56);
  v10(v8, 0, 1, v29);
  v24 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x80000002674A5D90);
  v11(v31, 0);
  v23 = "DurationInSecond";
  v12 = v27;
  v13 = v28;
  v28(v5, v27, v2);
  v31[0] = 1;
  sub_26738114C();
  v14 = v29;
  v10(v8, 0, 1, v29);
  v26 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v23 | 0x8000000000000000);
  v15(v31, 0);
  v16 = v12;
  v17 = v25;
  v13(v5, v16, v25);
  v31[0] = 1;
  sub_26738114C();
  v18 = v24;
  v24(v8, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674A5DE0);
  v19(v31, 0);
  v13(v5, *MEMORY[0x277D3E538], v17);
  v31[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4374706D6F7270, 0xEB00000000746E75);
  v20(v31, 0);
  v13(v5, *MEMORY[0x277D3E508], v17);
  v31[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v29);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xEA00000000007365);
  return v21(v31, 0);
}

uint64_t sub_267368BA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267368C70()
{
  result = qword_2800FB4C8;
  if (!qword_2800FB4C8)
  {
    sub_267368CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4C8);
  }

  return result;
}

unint64_t sub_267368CC8()
{
  result = qword_2800FB4C0;
  if (!qword_2800FB4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4C0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267368F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368FC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736902C()
{
  result = qword_2800FB4D8;
  if (!qword_2800FB4D8)
  {
    sub_267369084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4D8);
  }

  return result;
}

unint64_t sub_267369084()
{
  result = qword_2800FB4D0;
  if (!qword_2800FB4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4D0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A6020, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674A6040, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674A6070, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x80000002674A6090, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674A60C0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x80000002674A60F0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ALL, 0x80000002674A6120, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2673694AC(uint64_t a1)
{
  v2 = sub_2673695B0(&qword_2800FB518, &protocol conformance descriptor for TTSSchemaTTSSynthesisSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267369514(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673695B0(&qword_2800FB518, &protocol conformance descriptor for TTSSchemaTTSSynthesisSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673695B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSSynthesisSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSSynthesisSource(0);
  sub_267369B08(&qword_2800FB500, type metadata accessor for TTSSchemaTTSSynthesisSource, &protocol conformance descriptor for TTSSchemaTTSSynthesisSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69736568746E7973, 0xEF656372756F5373);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0, &protocol conformance descriptor for TTSSchemaTTSVoiceContext);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F436563696F76, 0xEC00000074786574);
  v7(v11, 0);
  type metadata accessor for TTSSchemaTTSSynthesisEffect(0);
  sub_267369B08(&qword_2800FB508, type metadata accessor for TTSSchemaTTSSynthesisEffect, &protocol conformance descriptor for TTSSchemaTTSSynthesisEffect);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x69736568746E7973, 0xEF74636566664573);
  v8(v11, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267369B08(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState, &protocol conformance descriptor for SISchemaDeviceThermalState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x536C616D72656874, 0xEC00000065746174);
  return v9(v11, 0);
}

uint64_t sub_267369A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267369AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267369B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTSSchemaTTSVoiceContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = sub_26738113C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSVoiceType(0);
  sub_26736A240(&qword_2800FB520, type metadata accessor for TTSSchemaTTSVoiceType, &protocol conformance descriptor for TTSSchemaTTSVoiceType);
  v25 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v23 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7079546563696F76, 0xE900000000000065);
  v11(v27, 0);
  type metadata accessor for TTSSchemaTTSVoiceFootprint(0);
  sub_26736A240(&qword_2800FB528, type metadata accessor for TTSSchemaTTSVoiceFootprint, &protocol conformance descriptor for TTSSchemaTTSVoiceFootprint);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F6F466563696F76, 0xEE00746E69727074);
  v12(v27, 0);
  v13 = *MEMORY[0x277D3E538];
  v14 = *(v2 + 104);
  v21 = v2 + 104;
  v22 = v14;
  v15 = v24;
  v16 = v26;
  v14(v24, v13, v26);
  v27[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265566563696F76, 0xEC0000006E6F6973);
  v17(v27, 0);
  v22(v15, v13, v16);
  v27[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x656372756F736572, 0xEF6E6F6973726556);
  v18(v27, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_26736A240(&qword_2800F6410, type metadata accessor for SISchemaVoiceName, &protocol conformance descriptor for SISchemaVoiceName);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D614E6563696F76, 0xE900000000000065);
  return v19(v27, 0);
}

uint64_t sub_26736A134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736A198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736A240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26736A288()
{
  result = qword_2800FB4F0;
  if (!qword_2800FB4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4F0);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceFallbackOccurred.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8, &protocol conformance descriptor for SISchemaVoiceSettings);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465536563696F76, 0xED000073676E6974);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0, &protocol conformance descriptor for TTSSchemaTTSVoiceContext);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x747865746E6F63, 0xE700000000000000);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_26736A674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736A6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSVoiceFootprint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674A6220, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A6240, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674A6260, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x80000002674A6280, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26736AA08(uint64_t a1)
{
  v2 = sub_26736AB0C(&qword_2800FB530, &protocol conformance descriptor for TTSSchemaTTSVoiceFootprint);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736AA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736AB0C(&qword_2800FB530, &protocol conformance descriptor for TTSSchemaTTSVoiceFootprint);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736AB0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceFootprint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceGender.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A62D0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674A62F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674A6310, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26736AD64(uint64_t a1)
{
  v2 = sub_26736AE68(&qword_2800FB540, &protocol conformance descriptor for TTSSchemaTTSVoiceGender);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736ADCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736AE68(&qword_2800FB540, &protocol conformance descriptor for TTSSchemaTTSVoiceGender);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736AE68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674A6360, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674A6380, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A63A0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674A63C0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674A63E0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26736B1A8(uint64_t a1)
{
  v2 = sub_26736B2AC(&qword_2800FB548, &protocol conformance descriptor for TTSSchemaTTSVoiceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736B210(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736B2AC(&qword_2800FB548, &protocol conformance descriptor for TTSSchemaTTSVoiceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736B2AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UAFSchemaUAFAsset.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v38 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v44 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v46 = *(v4 + 104);
  v47 = v4 + 104;
  v46(v6, v10, v3);
  v49[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v39 = *(v11 - 8);
  v13 = v39 + 56;
  v12 = *(v39 + 56);
  v38[0] = v11;
  v12(v9, 0, 1, v11);
  v41 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D614E7465737361, 0xE900000000000065);
  v14(v49, 0);
  v43 = v6;
  v15 = v6;
  v45 = v3;
  v16 = v46;
  v46(v15, v10, v3);
  v49[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6570537465737361, 0xEE00726569666963);
  v17(v49, 0);
  LODWORD(v40) = v10;
  v16(v43, v10, v3);
  v49[0] = 1;
  sub_26738114C();
  v18 = v38[0];
  v19 = v41;
  v41(v9, 0, 1, v38[0]);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265567465737361, 0xEC0000006E6F6973);
  v20(v49, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_26736BE38(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v19(v9, 0, 1, v18);
  v21 = v19;
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x636F4C7465737361, 0xEB00000000656C61);
  v22(v49, 0);
  type metadata accessor for UAFSchemaUAFAssetSource(0);
  sub_26736BE38(&qword_2800FB550, type metadata accessor for UAFSchemaUAFAssetSource, &protocol conformance descriptor for UAFSchemaUAFAssetSource);
  sub_26738120C();
  v21(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x756F537465737361, 0xEB00000000656372);
  v23(v49, 0);
  v46(v43, *MEMORY[0x277D3E538], v45);
  v49[0] = 1;
  sub_26738114C();
  v42 = v13;
  v21(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x7A69537465737361, 0xEF6B7369446E4F65);
  v24(v49, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v48, 0x7A69537465737361, 0xEF6B7369446E4F65);
  if (!(*(v39 + 48))(v27, 1, v18))
  {
    sub_266ECB128(&unk_287894170);
    sub_26738115C();
  }

  (v26)(v48, 0);
  v25(v49, 0);
  v28 = v43;
  v29 = v45;
  v46(v43, *MEMORY[0x277D3E4E8], v45);
  v49[0] = 1;
  sub_26738114C();
  v30 = v41;
  v41(v9, 0, 1, v18);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674A6420);
  v31(v49, 0);
  v32 = v46;
  v46(v28, v40, v29);
  v49[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v18);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x7461507465737361, 0xE900000000000068);
  v33(v49, 0);
  v40 = "isAssetPathValid";
  v34 = *MEMORY[0x277D3E540];
  v32(v28, v34, v29);
  v49[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v18);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v40 | 0x8000000000000000);
  v35(v49, 0);
  v32(v28, v34, v45);
  v49[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v18);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x80000002674A6460);
  return v36(v49, 0);
}

uint64_t sub_26736BD2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736BD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736BE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26736BE80()
{
  result = qword_2800FB560;
  if (!qword_2800FB560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB560);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetDailyStatusWithDeviceProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB568, 0x277D5B218);
  sub_266ECAF2C(&qword_2800FB570, &qword_2800FB568, 0x277D5B218, &protocol conformance descriptor for UAFSchemaUAFDeviceMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x654D656369766564, 0xEE00617461646174);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F94A0, 0x277D5A5D8);
  sub_266ECAF2C(&qword_2800F9498, &qword_2800F94A0, 0x277D5A5D8, &protocol conformance descriptor for SADSchemaSADAvailableAssetDailyStatus);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v20;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026748BC70);
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
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_26736C314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736C378(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x6D614E7465737361, 0xE900000000000065);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E540], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674A64F0);
  return v13(v16, 0);
}

uint64_t sub_26736C744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736C7A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736C80C()
{
  result = qword_2800FB588;
  if (!qword_2800FB588)
  {
    sub_26736C864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB588);
  }

  return result;
}

unint64_t sub_26736C864()
{
  result = qword_2800FB590;
  if (!qword_2800FB590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB590);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v36 = sub_26738113C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v37) = *MEMORY[0x277D3E530];
  v9 = *(v3 + 104);
  v38 = v3 + 104;
  v39 = v9;
  v9(v5);
  v43[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v41 = v10;
  v12(v8, 0, 1, v10);
  v40 = v13;
  v14 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465537465737361, 0xEC000000656D614ELL);
  v15(v43, 0);
  sub_266ECB294(0, &qword_2800FB560, 0x277D5B1C0);
  sub_266ECAF2C(&qword_2800FB558, &qword_2800FB560, 0x277D5B1C0, &protocol conformance descriptor for UAFSchemaUAFAsset);
  sub_26738122C();
  v12(v8, 0, 1, v10);
  v35[2] = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x737465737361, 0xE600000000000000);
  v16(v43, 0);
  v42 = v5;
  v17 = v37;
  v18 = v36;
  v19 = v39;
  v39(v5, v37, v36);
  v43[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v41);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x7079547465737361, 0xE900000000000065);
  v20(v43, 0);
  v21 = v18;
  v22 = v18;
  v23 = v19;
  v19(v42, v17, v21);
  v43[0] = 1;
  sub_26738114C();
  v24 = v41;
  v14(v8, 0, 1, v41);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465537465737361, 0xEA00000000006449);
  v25(v43, 0);
  v23(v42, v37, v22);
  v43[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x65636E6569647561, 0xEA00000000006449);
  v26(v43, 0);
  sub_266ECB294(0, &qword_2800FB598, 0x277D5B220);
  sub_266ECAF2C(&qword_2800FB5A0, &qword_2800FB598, 0x277D5B220, &protocol conformance descriptor for UAFSchemaUAFMobileAssetDownloadErrorCodeFrequency);
  sub_26738122C();
  v14(v8, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674A6530);
  v27(v43, 0);
  v37 = "oadErrorCodeFrequency";
  v28 = *MEMORY[0x277D3E4E8];
  v29 = v42;
  v30 = v36;
  v31 = v39;
  v39(v42, v28, v36);
  v43[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v24);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v37 | 0x8000000000000000);
  v32(v43, 0);
  v31(v29, v28, v30);
  v43[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v41);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x80000002674A6580);
  return v33(v43, 0);
}

uint64_t sub_26736D0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736D120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetStatus.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8, &protocol conformance descriptor for UAFSchemaUAFAssetSet);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB5A8, 0x277D5B1F8);
  sub_266ECAF2C(&qword_2800FB5B0, &qword_2800FB5A8, 0x277D5B1F8, &protocol conformance descriptor for UAFSchemaUAFAssetSubscriberSubscriptions);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x80000002674A65E0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800FB590, 0x277D5B1D0);
  sub_266ECAF2C(&qword_2800FB588, &qword_2800FB590, 0x277D5B1D0, &protocol conformance descriptor for UAFSchemaUAFAssetMetadata);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x74657373416C6C61, 0xE900000000000073);
  return v8(v10, 0);
}

uint64_t sub_26736D56C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736D5D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetSubscription.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = "af.UAFAssetSetSubscription";
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E530], v1);
  v20[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v17[1] = v10 + 56;
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v18 | 0x8000000000000000);
  v12(v20, 0);
  v8(v4, *MEMORY[0x277D3E538], v1);
  v20[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEF73656369646E49);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800FB5B8, 0x277D5B1F0);
  sub_266ECAF2C(&qword_2800FB5C0, &qword_2800FB5B8, 0x277D5B1F0, &protocol conformance descriptor for UAFSchemaUAFAssetSetUsage);
  sub_26738122C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEE00736567617355);
  v14(v20, 0);
  sub_266ECB294(0, &qword_2800FB5C8, 0x277D5B200);
  sub_266ECAF2C(&qword_2800FB5D0, &qword_2800FB5C8, 0x277D5B200, &protocol conformance descriptor for UAFSchemaUAFAssetUsageAlias);
  sub_26738122C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x696C416567617375, 0xEC00000073657361);
  return v15(v20, 0);
}

uint64_t sub_26736DB64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736DBC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetUsage.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E6567617375, 0xE900000000000065);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C61566567617375, 0xEA00000000006575);
  return v14(v18, 0);
}

uint64_t sub_26736DF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736DFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736E05C()
{
  result = qword_2800FB5C0;
  if (!qword_2800FB5C0)
  {
    sub_26736E0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5C0);
  }

  return result;
}

unint64_t sub_26736E0B4()
{
  result = qword_2800FB5B8;
  if (!qword_2800FB5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB5B8);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A66B0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674A66D0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674A66F0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A6710, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674A6730, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26736E3F4(uint64_t a1)
{
  v2 = sub_26736E4F8(&qword_2800FB5E8, &protocol conformance descriptor for UAFSchemaUAFAssetSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736E45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736E4F8(&qword_2800FB5E8, &protocol conformance descriptor for UAFSchemaUAFAssetSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736E4F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UAFSchemaUAFAssetSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSubscriberSubscriptions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6269726373627573, 0xEE00656D614E7265);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800FB5E0, 0x277D5B1E8);
  sub_266ECAF2C(&qword_2800FB5D8, &qword_2800FB5E0, 0x277D5B1E8, &protocol conformance descriptor for UAFSchemaUAFAssetSetSubscription);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7069726373627573, 0xED0000736E6F6974);
  return v11(v13, 0);
}

uint64_t sub_26736E884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736E8E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetUsageAlias.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E7361696C61, 0xE900000000000065);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C61567361696C61, 0xEA00000000006575);
  return v14(v18, 0);
}

uint64_t sub_26736ECB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736ED18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736ED7C()
{
  result = qword_2800FB5D0;
  if (!qword_2800FB5D0)
  {
    sub_26736EDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5D0);
  }

  return result;
}

unint64_t sub_26736EDD4()
{
  result = qword_2800FB5C8;
  if (!qword_2800FB5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB5C8);
  }

  return result;
}

uint64_t static UAFSchemaUAFClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB5F0, 0x277D5B210);
  sub_266ECAF2C(&qword_2800FB5F8, &qword_2800FB5F0, 0x277D5B210, &protocol conformance descriptor for UAFSchemaUAFClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB580, 0x277D5B1C8);
  sub_266ECAF2C(&qword_2800FB578, &qword_2800FB580, 0x277D5B1C8, &protocol conformance descriptor for UAFSchemaUAFAssetDailyStatusWithDeviceProperties);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674A67F0);
  v9(v23, 0);
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
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v10, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287894198);
  return sub_2673811CC();
}

uint64_t sub_26736F250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26736F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26736F3B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736F418(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736F478(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB600, &qword_2800FB608, 0x277D5B208, &protocol conformance descriptor for UAFSchemaUAFClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FB610, &qword_2800FB608, 0x277D5B208, &protocol conformance descriptor for UAFSchemaUAFClientEvent);
  result = sub_266ECAF2C(&qword_2800FB618, &qword_2800FB608, 0x277D5B208, &protocol conformance descriptor for UAFSchemaUAFClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static UAFSchemaUAFClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449666175, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449666175, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878941D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26736F810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736F874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFDeviceMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v23 = sub_26738113C();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v21 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449656369766564, 0xE800000000000000);
  v8(v26, 0);
  v20 = *MEMORY[0x277D3E530];
  v9 = *(v1 + 104);
  v25 = v1 + 104;
  v10 = v21;
  v11 = v23;
  v9(v21);
  v22 = v9;
  v26[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x7954656369766564, 0xEA00000000006570);
  v12(v26, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_267370048(&qword_2800F0448, type metadata accessor for SISchemaProgramCode, &protocol conformance descriptor for SISchemaProgramCode);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v13 = v7;
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x436D6172676F7270, 0xEB0000000065646FLL);
  v14(v26, 0);
  (v9)(v10, v20, v11);
  v26[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x75426D6574737973, 0xEB00000000646C69);
  v15(v26, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_267370048(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0x636F4C7475706E69, 0xEB00000000656C61);
  v16(v26, 0);
  v22(v10, *MEMORY[0x277D3E540], v11);
  v26[0] = 1;
  sub_26738114C();
  v13(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x80000002674A6870);
  return v17(v26, 0);
}

uint64_t sub_26736FF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736FFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267370048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static UAFSchemaUAFMobileAssetDownloadErrorCodeFrequency.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "tDownloadErrorCodeFrequency";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x63634F73656D6974, 0xED00006465727275);
  return v14(v19, 0);
}

uint64_t sub_26737040C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267370470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673704D4()
{
  result = qword_2800FB5A0;
  if (!qword_2800FB5A0)
  {
    sub_26737052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5A0);
  }

  return result;
}

unint64_t sub_26737052C()
{
  result = qword_2800FB598;
  if (!qword_2800FB598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB598);
  }

  return result;
}

uint64_t static USOSchemaUSOAsrAlternativeTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v8 = *(v1 + 104);
  v19 = v1 + 104;
  v20 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v22[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v17 = *(v10 + 56);
  v17(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616E7265746C61, 0xEB00000000657669);
  v11(v22, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v21, 0x74616E7265746C61, 0xEB00000000657669);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287894200);
    sub_26738115C();
  }

  (v13)(v21, 0);
  v12(v22, 0);
  v18(v3, *MEMORY[0x277D3E500], v20);
  v22[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C696261626F7270, 0xEB00000000797469);
  return v15(v22, 0);
}

uint64_t sub_267370960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673709C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267370A28()
{
  result = qword_2800FB628;
  if (!qword_2800FB628)
  {
    sub_267370A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB628);
  }

  return result;
}

unint64_t sub_267370A80()
{
  result = qword_2800FB630;
  if (!qword_2800FB630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB630);
  }

  return result;
}

uint64_t static USOSchemaUSOAttachmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A6950, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A6970, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A6990, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267370CE4(uint64_t a1)
{
  v2 = sub_267370DE8(&qword_2800FB640, &protocol conformance descriptor for USOSchemaUSOAttachmentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267370D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267370DE8(&qword_2800FB640, &protocol conformance descriptor for USOSchemaUSOAttachmentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267370DE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOBackingAppBundleType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674A69E0, isUniquelyReferenced_nonNull_native);
  *v3 = v106;

  v1(v132, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A6A00, v8);
  *v7 = v107;

  v5(v132, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674A6A30, v12);
  *v11 = v108;

  v9(v132, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A6A60, v16);
  *v15 = v109;

  v13(v132, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674A6A90, v20);
  *v19 = v110;

  v17(v132, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674A6AC0, v24);
  *v23 = v111;

  v21(v132, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674A6AF0, v28);
  *v27 = v112;

  v25(v132, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001FLL, 0x80000002674A6B10, v32);
  *v31 = v113;

  v29(v132, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674A6B30, v36);
  *v35 = v114;

  v33(v132, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674A6B60, v40);
  *v39 = v115;

  v37(v132, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x80000002674A6B90, v44);
  *v43 = v116;

  v41(v132, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674A6BB0, v48);
  *v47 = v117;

  v45(v132, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000021, 0x80000002674A6BE0, v52);
  *v51 = v118;

  v49(v132, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x80000002674A6C10, v56);
  *v55 = v119;

  v53(v132, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000028, 0x80000002674A6C30, v60);
  *v59 = v120;

  v57(v132, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x80000002674A6C60, v64);
  *v63 = v121;

  v61(v132, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001FLL, 0x80000002674A6C90, v68);
  *v67 = v122;

  v65(v132, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x80000002674A6CB0, v72);
  *v71 = v123;

  v69(v132, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000024, 0x80000002674A6CE0, v76);
  *v75 = v124;

  v73(v132, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x80000002674A6D10, v80);
  *v79 = v125;

  v77(v132, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000020, 0x80000002674A6D40, v84);
  *v83 = v126;

  v81(v132, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000024, 0x80000002674A6D70, v88);
  *v87 = v127;

  v85(v132, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x80000002674A6DA0, v92);
  *v91 = v128;

  v89(v132, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000002ELL, 0x80000002674A6DC0, v96);
  *v95 = v129;

  v93(v132, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000024, 0x80000002674A6DF0, v100);
  *v99 = v130;

  v97(v132, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x80000002674A6E20, v104);
  *v103 = v131;

  return v101(v132, 0);
}

uint64_t sub_267371A74(uint64_t a1)
{
  v2 = sub_267371B78(&qword_2800FB650, &protocol conformance descriptor for USOSchemaUSOBackingAppBundleType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267371ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267371B78(&qword_2800FB650, &protocol conformance descriptor for USOSchemaUSOBackingAppBundleType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267371B78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOBackingAppBundleType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEdge.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_26738113C();
  v19 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v21[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x65646E496D6F7266, 0xE900000000000078);
  v14(v21, 0);
  v11(v6, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7865646E496F74, 0xE700000000000000);
  v15(v21, 0);
  sub_266ECB294(0, &qword_2800FB658, 0x277D5B238);
  sub_266ECAF2C(&qword_2800FB660, &qword_2800FB658, 0x277D5B238, &protocol conformance descriptor for USOSchemaUSOEdgeLabel);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6562616CLL, 0xE500000000000000);
  return v16(v21, 0);
}

uint64_t sub_267371FAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372010(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOEdgeLabel.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_26738113C();
  v19 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v21[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D656C456F7375, 0xEC0000006449746ELL);
  v14(v21, 0);
  v11(v6, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x746172656D756E65, 0xEB000000006E6F69);
  v15(v21, 0);
  sub_266ECB294(0, &qword_2800FB678, 0x277D5B278);
  sub_266ECAF2C(&qword_2800FB680, &qword_2800FB678, 0x277D5B278, &protocol conformance descriptor for USOSchemaUSOLabel);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6567644565736162, 0xED00006C6562614CLL);
  return v16(v21, 0);
}

uint64_t sub_2673724C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOEntityIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v39 = a2;
  sub_26738119C();
  v38 = *MEMORY[0x277D3E538];
  v10 = *(v4 + 104);
  v10(v6);
  v42[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v41 = v12 + 56;
  v13(v9, 0, 1, v11);
  v32 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x65646E4965646F6ELL, 0xE900000000000078);
  v14(v42, 0);
  v31 = "iri.uso.USOEntityIdentifier";
  v15 = *MEMORY[0x277D3E530];
  v34 = v3;
  v35 = v10;
  (v10)(v6, v15, v3);
  v36 = v4 + 104;
  v42[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v31 | 0x8000000000000000);
  v16(v42, 0);
  v17 = *MEMORY[0x277D3E518];
  v33 = v6;
  (v10)(v6, v17, v3);
  v42[0] = 1;
  sub_26738114C();
  v40 = v11;
  v18 = v32;
  v32(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C696261626F7270, 0xEB00000000797469);
  v19(v42, 0);
  type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent(0);
  sub_267372E0C(&qword_2800FB688, type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent, &protocol conformance descriptor for USOSchemaUSOEntityIdentifierNluComponent);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674A6EE0);
  v20(v42, 0);
  type metadata accessor for USOSchemaUSOBackingAppBundleType(0);
  sub_267372E0C(&qword_2800FB648, type metadata accessor for USOSchemaUSOBackingAppBundleType, &protocol conformance descriptor for USOSchemaUSOBackingAppBundleType);
  sub_26738120C();
  v21 = v40;
  v18(v9, 0, 1, v40);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674A6F00);
  v22(v42, 0);
  v23 = v33;
  v24 = v34;
  v25 = v38;
  v26 = v35;
  (v35)(v33, v38, v34);
  v42[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E4970756F7267, 0xEA00000000007865);
  v27(v42, 0);
  v26(v23, v25, v24);
  v42[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v40);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674A6F20);
  return v28(v42, 0);
}

uint64_t sub_267372D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267372E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267372E54()
{
  result = qword_2800FB698;
  if (!qword_2800FB698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB698);
  }

  return result;
}

uint64_t static USOSchemaUSOEntityIdentifierNluComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674A6F80, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A6FB0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x80000002674A6FE0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x80000002674A7020, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000042, 0x80000002674A7060, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x80000002674A70B0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003BLL, 0x80000002674A70E0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674A7120, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2673732E4(uint64_t a1)
{
  v2 = sub_2673733E8(&qword_2800FB6A0, &protocol conformance descriptor for USOSchemaUSOEntityIdentifierNluComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737334C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673733E8(&qword_2800FB6A0, &protocol conformance descriptor for USOSchemaUSOEntityIdentifierNluComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673733E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEntityIdentifierTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v33 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v35[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v26 = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  v13(v35, 0);
  v14 = *MEMORY[0x277D3E530];
  v29 = v9;
  v30 = v3 + 104;
  v9(v5, v14, v33);
  v35[0] = 1;
  v27 = v5;
  sub_26738114C();
  v28 = v12;
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v15(v35, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v34, 0x65756C6176, 0xE500000000000000);
  v18 = *(v11 + 48);
  v31 = v11 + 48;
  v19 = v18;
  if (!v18(v20, 1, v10))
  {
    sub_266ECB128(&unk_287894228);
    sub_26738115C();
  }

  (v17)(v34, 0);
  v16(v35, 0);
  v29(v27, v14, v33);
  v35[0] = 1;
  sub_26738114C();
  v28(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674A7190);
  v21(v35, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v34, 0xD000000000000012, 0x80000002674A7190);
  if (!v19(v24, 1, v10))
  {
    sub_266ECB128(&unk_287894250);
    sub_26738115C();
  }

  (v23)(v34, 0);
  return v22(v35, 0);
}

uint64_t sub_267373964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673739C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267373A2C()
{
  result = qword_2800FB6A8;
  if (!qword_2800FB6A8)
  {
    sub_267373A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB6A8);
  }

  return result;
}

unint64_t sub_267373A84()
{
  result = qword_2800FB6B0;
  if (!qword_2800FB6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6B0);
  }

  return result;
}

uint64_t static USOSchemaUSOEntitySpan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = a1;
  v33 = sub_26738113C();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v30 = *MEMORY[0x277D3E538];
  v31 = *(v1 + 104);
  v31(v3);
  v29 = v1 + 104;
  v34[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65646E4965646F6ELL, 0xE900000000000078);
  v11(v34, 0);
  type metadata accessor for USOSchemaUSOEntitySpanNluComponent(0);
  sub_26737439C(&qword_2800FB6B8, type metadata accessor for USOSchemaUSOEntitySpanNluComponent, &protocol conformance descriptor for USOSchemaUSOEntitySpanNluComponent);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43656372756F73, 0xEF746E656E6F706DLL);
  v12(v34, 0);
  (v31)(v3, *MEMORY[0x277D3E530], v33);
  v34[0] = 1;
  sub_26738114C();
  v13 = v7;
  v9(v6, 0, 1, v7);
  v14 = v10;
  v27 = v9;
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6562616CLL, 0xE500000000000000);
  v15(v34, 0);
  sub_266ECB294(0, &qword_2800FB6C0, 0x277D5B280);
  sub_266ECAF2C(&qword_2800FB6C8, &qword_2800FB6C0, 0x277D5B280, &protocol conformance descriptor for USOSchemaUSOMatchInfo);
  sub_26738120C();
  v26 = v13;
  v9(v6, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x666E49686374616DLL, 0xE90000000000006FLL);
  v16(v34, 0);
  v17 = v30;
  v18 = v31;
  (v31)(v3, v30, v33);
  v34[0] = 1;
  sub_26738114C();
  v19 = v27;
  v27(v6, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x646E497472617473, 0xEA00000000007865);
  v20(v34, 0);
  v18(v3, v17, v33);
  v34[0] = 1;
  sub_26738114C();
  v21 = v26;
  v28 = v14;
  v19(v6, 0, 1, v26);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x7865646E49646E65, 0xE800000000000000);
  v22(v34, 0);
  type metadata accessor for USOSchemaUSOBackingAppBundleType(0);
  sub_26737439C(&qword_2800FB648, type metadata accessor for USOSchemaUSOBackingAppBundleType, &protocol conformance descriptor for USOSchemaUSOBackingAppBundleType);
  sub_26738120C();
  v19(v6, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674A71E0);
  v23(v34, 0);
  sub_266ECB294(0, &qword_2800FB6D0, 0x277D5B298);
  sub_266ECAF2C(&qword_2800FB6D8, &qword_2800FB6D0, 0x277D5B298, &protocol conformance descriptor for USOSchemaUSOPayloadAttachmentInfo);
  sub_26738120C();
  v19(v6, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674A7200);
  return v24(v34, 0);
}

uint64_t sub_2673742D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737433C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737439C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static USOSchemaUSOEntitySpanNluComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A7260, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x80000002674A7290, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x80000002674A72C0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674A72F0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003CLL, 0x80000002674A7320, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x80000002674A7360, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x80000002674A7390, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x80000002674A73D0, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_267374870(uint64_t a1)
{
  v2 = sub_267374974(&qword_2800FB6F0, &protocol conformance descriptor for USOSchemaUSOEntitySpanNluComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673748D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267374974(&qword_2800FB6F0, &protocol conformance descriptor for USOSchemaUSOEntitySpanNluComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267374974(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOEntitySpanNluComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEntitySpanTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_26738113C();
  v37 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v28 = a2;
  sub_26738119C();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E538], v3);
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7865646E69, 0xE500000000000000);
  v14(v39, 0);
  v30 = *MEMORY[0x277D3E530];
  v36 = v4 + 104;
  v32 = v10;
  (v10)(v6);
  v39[0] = 1;
  v34 = v6;
  sub_26738114C();
  v31 = v13;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x70416E696769726FLL, 0xEB00000000644970);
  v15(v39, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v38, 0x70416E696769726FLL, 0xEB00000000644970);
  v18 = *(v12 + 48);
  v35 = v12 + 48;
  v29 = v18;
  if (!v18(v19, 1, v11))
  {
    sub_266ECB128(&unk_287894278);
    sub_26738115C();
  }

  (v17)(v38, 0);
  v16(v39, 0);
  sub_266ECB294(0, &qword_2800FB6F8, 0x277D5B2A0);
  sub_266ECAF2C(&qword_2800FB700, &qword_2800FB6F8, 0x277D5B2A0, &protocol conformance descriptor for USOSchemaUSOSpanPropertyTier1);
  sub_26738122C();
  v20 = v31;
  v31(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x69747265706F7270, 0xEA00000000007365);
  v21(v39, 0);
  sub_266ECB294(0, &qword_2800FB630, 0x277D5B228);
  sub_266ECAF2C(&qword_2800FB628, &qword_2800FB630, 0x277D5B228, &protocol conformance descriptor for USOSchemaUSOAsrAlternativeTier1);
  sub_26738122C();
  v20(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616E7265746C61, 0xEC00000073657669);
  v22(v39, 0);
  v32(v34, v30, v37);
  v39[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E456E696769726FLL, 0xEE00644979746974);
  v23(v39, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v38, 0x6E456E696769726FLL, 0xEE00644979746974);
  if (!v29(v26, 1, v11))
  {
    sub_266ECB128(&unk_2878942A0);
    sub_26738115C();
  }

  (v25)(v38, 0);
  return v24(v39, 0);
}

uint64_t sub_2673750B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267375118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraph.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F6973726576, 0xE700000000000000);
  v6(v14, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB718, 0x277D5B288);
  sub_266ECAF2C(&qword_2800FB720, &qword_2800FB718, 0x277D5B288, &protocol conformance descriptor for USOSchemaUSONode);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365646F6ELL, 0xE500000000000000);
  v8(v14, 0);
  sub_266ECB294(0, &qword_2800FB670, 0x277D5B230);
  sub_266ECAF2C(&qword_2800FB668, &qword_2800FB670, 0x277D5B230, &protocol conformance descriptor for USOSchemaUSOEdge);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365676465, 0xE500000000000000);
  v9(v14, 0);
  sub_266ECB294(0, &qword_2800FB698, 0x277D5B240);
  sub_266ECAF2C(&qword_2800FB690, &qword_2800FB698, 0x277D5B240, &protocol conformance descriptor for USOSchemaUSOEntityIdentifier);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEB00000000737265);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F58B0, 0x277D5B2A8);
  sub_266ECAF2C(&qword_2800F58B8, &qword_2800F58B0, 0x277D5B2A8, &protocol conformance descriptor for USOSchemaUSOUtteranceAlignment);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xEA00000000007374);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800FB6E8, 0x277D5B250);
  sub_266ECAF2C(&qword_2800FB6E0, &qword_2800FB6E8, 0x277D5B250, &protocol conformance descriptor for USOSchemaUSOEntitySpan);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E617073, 0xE500000000000000);
  return v12(v14, 0);
}

uint64_t sub_267375868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673758CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraphNodeDataTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB728, 0x277D5B290);
  sub_266ECAF2C(&qword_2800FB730, &qword_2800FB728, 0x277D5B290, &protocol conformance descriptor for USOSchemaUSONodeDataTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674A7490);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB6B0, 0x277D5B248);
  sub_266ECAF2C(&qword_2800FB6A8, &qword_2800FB6B0, 0x277D5B248, &protocol conformance descriptor for USOSchemaUSOEntityIdentifierTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x80000002674A74B0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800FB710, 0x277D5B258);
  sub_266ECAF2C(&qword_2800FB708, &qword_2800FB710, 0x277D5B258, &protocol conformance descriptor for USOSchemaUSOEntitySpanTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A74D0);
  return v8(v10, 0);
}

uint64_t sub_267375D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267375D80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraphTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v21 = v7 + 56;
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800FB728, 0x277D5B290);
  sub_266ECAF2C(&qword_2800FB730, &qword_2800FB728, 0x277D5B290, &protocol conformance descriptor for USOSchemaUSONodeDataTier1);
  sub_26738122C();
  v22 = v8;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674A7490);
  v10(v26, 0);
  v23 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v25, 0xD000000000000011, 0x80000002674A7490);
  v13 = *(v7 + 48);
  if (!v13(v14, 1, v6))
  {
    sub_266ECB128(&unk_2878942C8);
    sub_26738115C();
  }

  (v12)(v25, 0);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800FB6B0, 0x277D5B248);
  sub_266ECAF2C(&qword_2800FB6A8, &qword_2800FB6B0, 0x277D5B248, &protocol conformance descriptor for USOSchemaUSOEntityIdentifierTier1);
  sub_26738122C();
  v22(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x80000002674A74B0);
  v15(v26, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v25, 0xD00000000000001ALL, 0x80000002674A74B0);
  if (!v13(v18, 1, v6))
  {
    sub_266ECB128(&unk_2878942F0);
    sub_26738115C();
  }

  (v17)(v25, 0);
  v16(v26, 0);
  sub_266ECB294(0, &qword_2800FB740, 0x277D5B268);
  sub_266ECAF2C(&qword_2800FB738, &qword_2800FB740, 0x277D5B268, &protocol conformance descriptor for USOSchemaUSOGraphNodeDataTier1);
  sub_26738122C();
  v22(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674A7520);
  return v19(v26, 0);
}

uint64_t sub_2673763E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267376448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOLabel.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x65756C6176, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267376734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267376798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673767FC()
{
  result = qword_2800FB680;
  if (!qword_2800FB680)
  {
    sub_267376854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB680);
  }

  return result;
}

unint64_t sub_267376854()
{
  result = qword_2800FB678;
  if (!qword_2800FB678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB678);
  }

  return result;
}

uint64_t static USOSchemaUSOMatchInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v42 = sub_26738113C();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v43 = a2;
  sub_26738119C();
  v45 = *MEMORY[0x277D3E538];
  v9 = *(v3 + 104);
  v44 = v3 + 104;
  v9(v5);
  v46[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v41 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A75A0);
  v14(v46, 0);
  v15 = v42;
  (v9)(v5, *MEMORY[0x277D3E500], v42);
  v46[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F6353686374616DLL, 0xEA00000000006572);
  v16(v46, 0);
  v36 = v5;
  v17 = v45;
  v40 = v9;
  (v9)(v5, v45, v15);
  v46[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656B6F5478616DLL, 0xED0000746E756F43);
  v18(v46, 0);
  v37 = "matchSignalBitset";
  v19 = v36;
  (v9)(v36, v17, v15);
  v46[0] = 1;
  sub_26738114C();
  v38 = v12;
  v12(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v37 | 0x8000000000000000);
  v20(v46, 0);
  v37 = "matchedTokenCount";
  v21 = v45;
  v22 = v40;
  (v40)(v19, v45, v15);
  v46[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v37 | 0x8000000000000000);
  v23(v46, 0);
  v37 = "maxStopWordCount";
  v24 = v42;
  v22(v19, v21, v42);
  v46[0] = 1;
  sub_26738114C();
  v25 = v38;
  v38(v8, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v37 | 0x8000000000000000);
  v26(v46, 0);
  v27 = v24;
  v28 = v24;
  v29 = v40;
  (v40)(v19, v45, v28);
  v46[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x7473694474696465, 0xEC00000065636E61);
  v30(v46, 0);
  v31 = v45;
  (v29)(v19, v45, v27);
  v46[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x7361696C4178616DLL, 0xED0000746E756F43);
  v32(v46, 0);
  (v40)(v19, v31, v42);
  v46[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A7620);
  v33(v46, 0);
  type metadata accessor for USOSchemaUSOMatchInfoAliasType(0);
  sub_267377358(&qword_2800FB748, type metadata accessor for USOSchemaUSOMatchInfoAliasType, &protocol conformance descriptor for USOSchemaUSOMatchInfoAliasType);
  sub_26738122C();
  v25(v8, 0, 1, v10);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A7640);
  return v34(v46, 0);
}

uint64_t sub_26737724C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673772B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267377358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2673773A0()
{
  result = qword_2800FB6C0;
  if (!qword_2800FB6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6C0);
  }

  return result;
}

uint64_t static USOSchemaUSOMatchInfoAliasType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A7690, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x80000002674A76B0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674A76D0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674A7700, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A7720, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x80000002674A7750, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x80000002674A7780, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674A77B0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674A77E0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2673778A4(uint64_t a1)
{
  v2 = sub_2673779A8(&qword_2800FB750, &protocol conformance descriptor for USOSchemaUSOMatchInfoAliasType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737790C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673779A8(&qword_2800FB750, &protocol conformance descriptor for USOSchemaUSOMatchInfoAliasType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673779A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOMatchInfoAliasType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSONode.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v22 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v24 = *(v3 + 104);
  v24(v5, v9, v2);
  v23 = v3 + 104;
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v25 = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D656C456F7375, 0xEC0000006449746ELL);
  v13(v26, 0);
  v20 = "com.apple.aiml.siri.uso.USONode";
  v21 = v2;
  v14 = v24;
  v24(v5, v9, v2);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v20 | 0x8000000000000000);
  v15(v26, 0);
  v16 = *MEMORY[0x277D3E530];
  v14(v5, v16, v2);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x614C797469746E65, 0xEB000000006C6562);
  v17(v26, 0);
  v14(v5, v16, v21);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6562614C62726576, 0xE90000000000006CLL);
  return v18(v26, 0);
}

uint64_t sub_267377EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267377F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267377F84()
{
  result = qword_2800FB720;
  if (!qword_2800FB720)
  {
    sub_267377FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB720);
  }

  return result;
}

unint64_t sub_267377FDC()
{
  result = qword_2800FB718;
  if (!qword_2800FB718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB718);
  }

  return result;
}

uint64_t static USOSchemaUSONodeDataTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v40 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v39 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v42[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  v13(v42, 0);
  v32 = *MEMORY[0x277D3E530];
  v38 = v3 + 104;
  v34 = v9;
  (v9)(v5);
  v42[0] = 1;
  sub_26738114C();
  v35 = v12;
  v36 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6150676E69727473, 0xED000064616F6C79);
  v14(v42, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v41, 0x6150676E69727473, 0xED000064616F6C79);
  v17 = *(v11 + 48);
  v37 = v11 + 48;
  v19 = v17(v18, 1, v10);
  v33 = v17;
  if (!v19)
  {
    sub_266ECB128(&unk_287894318);
    sub_26738115C();
  }

  (v16)(v41, 0);
  v15(v42, 0);
  v20 = v34;
  v34(v5, *MEMORY[0x277D3E508], v40);
  v42[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x5072656765746E69, 0xEE0064616F6C7961);
  v21(v42, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v41, 0x5072656765746E69, 0xEE0064616F6C7961);
  v24 = v33;
  if (!v33(v25, 1, v10))
  {
    sub_266ECB128(&unk_287894340);
    sub_26738115C();
  }

  (v23)(v41, 0);
  v22(v42, 0);
  v20(v5, v32, v40);
  v42[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674A7880);
  v26(v42, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v41, 0xD000000000000018, 0x80000002674A7880);
  if (!v24(v29, 1, v10))
  {
    sub_266ECB128(&unk_287894368);
    sub_26738115C();
  }

  (v28)(v41, 0);
  return v27(v42, 0);
}

uint64_t sub_2673786E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267378748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673787AC()
{
  result = qword_2800FB730;
  if (!qword_2800FB730)
  {
    sub_267378804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB730);
  }

  return result;
}

unint64_t sub_267378804()
{
  result = qword_2800FB728;
  if (!qword_2800FB728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB728);
  }

  return result;
}

uint64_t static USOSchemaUSOPayloadAttachmentInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for USOSchemaUSOAttachmentType(0);
  sub_267378CBC(&qword_2800FB638, type metadata accessor for USOSchemaUSOAttachmentType, &protocol conformance descriptor for USOSchemaUSOAttachmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D686361747461, 0xEE0065707954746ELL);
  return v5(v7, 0);
}

uint64_t sub_267378A1C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for USOSchemaUSOAttachmentType(0);
  sub_267378CBC(&qword_2800FB638, type metadata accessor for USOSchemaUSOAttachmentType, &protocol conformance descriptor for USOSchemaUSOAttachmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D686361747461, 0xEE0065707954746ELL);
  return v5(v7, 0);
}

uint64_t sub_267378BB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267378C14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267378CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267378D04()
{
  result = qword_2800FB6D0;
  if (!qword_2800FB6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6D0);
  }

  return result;
}

uint64_t static USOSchemaUSOSpanPropertyTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v34 = sub_26738113C();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  LODWORD(v33) = *MEMORY[0x277D3E530];
  v8 = *(v2 + 104);
  v8(v4);
  v36[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 7955819, 0xE300000000000000);
  v12(v36, 0);
  v28[0] = v8;
  v28[1] = v2 + 104;
  (v8)(v4, v33, v34);
  v36[0] = 1;
  sub_26738114C();
  v30 = v11;
  v31 = v10 + 56;
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x72745365756C6176, 0xEB00000000676E69);
  v13(v36, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v35, 0x72745365756C6176, 0xEB00000000676E69);
  v16 = *(v10 + 48);
  v33 = v10 + 48;
  v29 = v16;
  if (!v16(v17, 1, v9))
  {
    sub_266ECB128(&unk_287894390);
    sub_26738115C();
  }

  (v15)(v35, 0);
  v14(v36, 0);
  v18 = v28[0];
  (v28[0])(v4, *MEMORY[0x277D3E508], v34);
  v36[0] = 1;
  sub_26738114C();
  v30(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E4965756C6176, 0xE800000000000000);
  v19(v36, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v35, 0x746E4965756C6176, 0xE800000000000000);
  if (!v29(v22, 1, v9))
  {
    sub_266ECB128(&unk_2878943B8);
    sub_26738115C();
  }

  (v21)(v35, 0);
  v20(v36, 0);
  v18(v4, *MEMORY[0x277D3E500], v34);
  v36[0] = 1;
  sub_26738114C();
  v30(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F6C4665756C6176, 0xEA00000000007461);
  v23(v36, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v35, 0x6F6C4665756C6176, 0xEA00000000007461);
  if (!v29(v26, 1, v9))
  {
    sub_266ECB128(&unk_2878943E0);
    sub_26738115C();
  }

  (v25)(v35, 0);
  return v24(v36, 0);
}

uint64_t sub_2673793DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267379440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673794A4()
{
  result = qword_2800FB700;
  if (!qword_2800FB700)
  {
    sub_2673794FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB700);
  }

  return result;
}

unint64_t sub_2673794FC()
{
  result = qword_2800FB6F8;
  if (!qword_2800FB6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6F8);
  }

  return result;
}

uint64_t static USOSchemaUSOUtteranceAlignment.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = a1;
  v15 = sub_26738113C();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v14 = *MEMORY[0x277D3E538];
  v13 = *(v1 + 104);
  v13(v3);
  v17[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267463360);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800FB758, 0x277D5B2B0);
  sub_266ECAF2C(&qword_2800FB760, &qword_2800FB758, 0x277D5B2B0, &protocol conformance descriptor for USOSchemaUSOUtteranceSpan);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x736E617073, 0xE500000000000000);
  v10(v17, 0);
  (v13)(v3, v14, v15);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65646E4965646F6ELL, 0xE900000000000078);
  return v11(v17, 0);
}

uint64_t sub_267379940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673799A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOUtteranceSpan.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v39 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v34 = *(v3 + 104);
  LODWORD(v33) = v9;
  v34(v5, v9, v2);
  v10 = v3 + 104;
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v37 = v11;
  v12(v8, 0, 1, v11);
  v13 = v12;
  v38 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x646E497472617473, 0xEA00000000007865);
  v14(v40, 0);
  v15 = v9;
  v16 = v39;
  v17 = v34;
  v34(v5, v15, v39);
  v35 = v10;
  v40[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E49646E65, 0xE800000000000000);
  v18(v40, 0);
  v32 = "iri.uso.USOUtteranceSpan";
  v19 = v33;
  v20 = v16;
  v21 = v17;
  v17(v5, v33, v20);
  v40[0] = 1;
  sub_26738114C();
  v22 = v37;
  v38(v8, 0, 1, v37);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v32 | 0x8000000000000000);
  v23(v40, 0);
  v32 = "startUnicodeScalarIndex";
  v24 = v39;
  v21(v5, v19, v39);
  v40[0] = 1;
  sub_26738114C();
  v25 = v38;
  v38(v8, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v32 | 0x8000000000000000);
  v26(v40, 0);
  v33 = "endUnicodeScalarIndex";
  v27 = *MEMORY[0x277D3E508];
  v21(v5, v27, v24);
  v40[0] = 1;
  sub_26738114C();
  v28 = v37;
  v25(v8, 0, 1, v37);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v33 | 0x8000000000000000);
  v29(v40, 0);
  v21(v5, v27, v39);
  v40[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x696C6C694D646E65, 0xEF73646E6F636573);
  return v30(v40, 0);
}

uint64_t sub_26737A0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737A128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737A18C()
{
  result = qword_2800FB760;
  if (!qword_2800FB760)
  {
    sub_26737A1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB760);
  }

  return result;
}

unint64_t sub_26737A1E4()
{
  result = qword_2800FB758;
  if (!qword_2800FB758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB758);
  }

  return result;
}

uint64_t static USPSchemaUSPClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB768, 0x277D5B2C0);
  sub_266ECAF2C(&qword_2800FB770, &qword_2800FB768, 0x277D5B2C0, &protocol conformance descriptor for USPSchemaUSPClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v28, 0);
  sub_266ECB294(0, &qword_2800FB778, 0x277D5B2D8);
  sub_266ECAF2C(&qword_2800FB780, &qword_2800FB778, 0x277D5B2D8, &protocol conformance descriptor for USPSchemaUSPLoggingInitalized);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674A7A00);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800FB788, 0x277D5B2E0);
  sub_266ECAF2C(&qword_2800FB790, &qword_2800FB788, 0x277D5B2E0, &protocol conformance descriptor for USPSchemaUSPLoggingReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x52676E6967676F6CLL, 0xEF646574726F7065);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800FB798, 0x277D5B2F0);
  sub_266ECAF2C(&qword_2800FB7A0, &qword_2800FB798, 0x277D5B2F0, &protocol conformance descriptor for USPSchemaUSPMeasureStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x536572757361656DLL, 0xEE00646574726174);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800FB7A8, 0x277D5B2E8);
  sub_266ECAF2C(&qword_2800FB7B0, &qword_2800FB7A8, 0x277D5B2E8, &protocol conformance descriptor for USPSchemaUSPMeasureEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x456572757361656DLL, 0xEC0000006465646ELL);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800FB7B8, 0x277D5B2D0);
  sub_266ECAF2C(&qword_2800FB7C0, &qword_2800FB7B8, 0x277D5B2D0, &protocol conformance descriptor for USPSchemaUSPIterationStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674A7A20);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800FB7C8, 0x277D5B2C8);
  sub_266ECAF2C(&qword_2800FB7D0, &qword_2800FB7C8, 0x277D5B2C8, &protocol conformance descriptor for USPSchemaUSPIterationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F69746172657469, 0xEE006465646E456ELL);
  v15(v28, 0);
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
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  v16(v28, 0);
  sub_266ECB128(&unk_287894408);
  return sub_2673811CC();
}

uint64_t sub_26737AA94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737AB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737ABF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737AC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737ACBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB7D8, &qword_2800F1E60, 0x277D5B2B8, &protocol conformance descriptor for USPSchemaUSPClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FB7E0, &qword_2800F1E60, 0x277D5B2B8, &protocol conformance descriptor for USPSchemaUSPClientEvent);
  result = sub_266ECAF2C(&qword_2800FB7E8, &qword_2800F1E60, 0x277D5B2B8, &protocol conformance descriptor for USPSchemaUSPClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static USPSchemaUSPClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v17 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v18 = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v16 = *(v6 + 56);
  v16(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449707375, 0xE500000000000000);
  v7(v20, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v19, 0x6449707375, 0xE500000000000000);
  if (!(*(v6 + 48))(v10, 1, v5))
  {
    sub_266ECB128(&unk_287894440);
    sub_26738115C();
  }

  (v9)(v19, 0);
  v8(v20, 0);
  sub_266ECB294(0, &qword_2800FB7F0, 0x277D5B2F8);
  sub_266ECAF2C(&qword_2800FB7F8, &qword_2800FB7F0, 0x277D5B2F8, &protocol conformance descriptor for USPSchemaUSPMeasurementContext);
  sub_26738120C();
  v11 = v16;
  v16(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x747865746E6F63, 0xE700000000000000);
  v12(v20, 0);
  sub_26738120C();
  v11(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0x65676E6946747573, 0xEE00746E69727072);
  return v13(v20, 0);
}

uint64_t sub_26737B1BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737B220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPEnviroment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A7AA0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674A7AC0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A7AE0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26737B4D8(uint64_t a1)
{
  v2 = sub_26737B5DC(&qword_2800FB808, &protocol conformance descriptor for USPSchemaUSPEnviroment);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737B540(uint64_t a1, uint64_t a2)
{
  v4 = sub_26737B5DC(&qword_2800FB808, &protocol conformance descriptor for USPSchemaUSPEnviroment);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26737B5DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USPSchemaUSPEnviroment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USPSchemaUSPIterationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287894468);
  return sub_2673811CC();
}

uint64_t sub_26737B880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737B8E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737B948()
{
  result = qword_2800FB7D0;
  if (!qword_2800FB7D0)
  {
    sub_26737B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7D0);
  }

  return result;
}

unint64_t sub_26737B9A0()
{
  result = qword_2800FB7C8;
  if (!qword_2800FB7C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7C8);
  }

  return result;
}

uint64_t static USPSchemaUSPIterationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287894498);
  return sub_2673811CC();
}

uint64_t sub_26737BC4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737BCB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737BD14()
{
  result = qword_2800FB7C0;
  if (!qword_2800FB7C0)
  {
    sub_26737BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7C0);
  }

  return result;
}

unint64_t sub_26737BD6C()
{
  result = qword_2800FB7B8;
  if (!qword_2800FB7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7B8);
  }

  return result;
}

uint64_t static USPSchemaUSPLoggingInitalized.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB810, 0x277D5B308);
  sub_266ECAF2C(&qword_2800FB818, &qword_2800FB810, 0x277D5B308, &protocol conformance descriptor for USPSchemaUSPSessionInfoItem);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674A7BA0);
  v5(v7, 0);
  sub_266ECB128(&unk_2878944C8);
  return sub_2673811CC();
}

uint64_t sub_26737BFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPLoggingReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB820, 0x277D5B300);
  sub_266ECAF2C(&qword_2800FB828, &qword_2800FB820, 0x277D5B300, &protocol conformance descriptor for USPSchemaUSPMetric);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FB810, 0x277D5B308);
  sub_266ECAF2C(&qword_2800FB818, &qword_2800FB810, 0x277D5B308, &protocol conformance descriptor for USPSchemaUSPSessionInfoItem);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674A7BA0);
  v7(v9, 0);
  sub_266ECB128(&unk_2878944F8);
  return sub_2673811CC();
}

uint64_t sub_26737C3B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPMeasureEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287894528);
  return sub_2673811CC();
}

uint64_t sub_26737C718(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C77C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737C7E0()
{
  result = qword_2800FB7B0;
  if (!qword_2800FB7B0)
  {
    sub_26737C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7B0);
  }

  return result;
}

unint64_t sub_26737C838()
{
  result = qword_2800FB7A8;
  if (!qword_2800FB7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7A8);
  }

  return result;
}

uint64_t static USPSchemaUSPMeasurementContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x4E747865746E6F63, 0xEB00000000656D61);
  v10(v13, 0);
  type metadata accessor for USPSchemaUSPEnviroment(0);
  sub_26737CCC0(&qword_2800FB800, type metadata accessor for USPSchemaUSPEnviroment, &protocol conformance descriptor for USPSchemaUSPEnviroment);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6E6F7269766E65, 0xEB00000000746E65);
  return v11(v13, 0);
}

uint64_t sub_26737CBB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737CC18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737CCC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26737CD08()
{
  result = qword_2800FB7F0;
  if (!qword_2800FB7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7F0);
  }

  return result;
}

uint64_t static USPSchemaUSPMeasureStarted.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287894558);
  return sub_2673811CC();
}

uint64_t sub_26737CFB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737D018(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737D07C()
{
  result = qword_2800FB7A0;
  if (!qword_2800FB7A0)
  {
    sub_26737D0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7A0);
  }

  return result;
}

unint64_t sub_26737D0D4()
{
  result = qword_2800FB798;
  if (!qword_2800FB798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB798);
  }

  return result;
}

uint64_t static USPSchemaUSPMetric.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v26 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v24 = v10;
  v27[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v25 = v12 + 56;
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v14(v27, 0);
  v15 = v26;
  v10(v5, v9, v26);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 1953066613, 0xE400000000000000);
  v16(v27, 0);
  v17 = *MEMORY[0x277D3E518];
  v18 = v15;
  v19 = v24;
  v24(v5, v17, v18);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v20(v27, 0);
  v19(v5, v17, v26);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F69746172657469, 0xEF7365756C61566ELL);
  return v21(v27, 0);
}

uint64_t sub_26737D5C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737D62C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737D690()
{
  result = qword_2800FB828;
  if (!qword_2800FB828)
  {
    sub_26737D6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB828);
  }

  return result;
}

unint64_t sub_26737D6E8()
{
  result = qword_2800FB820;
  if (!qword_2800FB820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB820);
  }

  return result;
}

uint64_t static USPSchemaUSPSessionInfoItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  return v14(v18, 0);
}

uint64_t sub_26737DA48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737DAAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737DB10()
{
  result = qword_2800FB818;
  if (!qword_2800FB818)
  {
    sub_26737DB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB818);
  }

  return result;
}

unint64_t sub_26737DB68()
{
  result = qword_2800FB810;
  if (!qword_2800FB810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB810);
  }

  return result;
}

uint64_t static ComponentIdentifier.fullyQualifiedName.getter()
{
  swift_beginAccess();
  v0 = qword_2800FB830;

  return v0;
}

uint64_t static ComponentIdentifier.fullyQualifiedName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_2800FB830 = a1;
  off_2800FB838 = a2;
}

id ComponentIdentifier.makeSerializedData()()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812EC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ComponentIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v13 = a2;
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26741D930;
  v10 = v9 + v8;
  strcpy(v10, "componentName");
  *(v10 + 14) = -4864;
  type metadata accessor for SISchemaComponentName(0);
  sub_26737E34C(&qword_2800F9F20, type metadata accessor for SISchemaComponentName, &protocol conformance descriptor for SISchemaComponentName);
  sub_26738120C();
  v11 = (v10 + v7);
  *v11 = 1684632949;
  v11[1] = 0xE400000000000000;
  (*(v3 + 104))(v5, *MEMORY[0x277D3E4F8], v2);
  v14 = 1;
  sub_26738114C();
  sub_266EC679C(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

id sub_26737E004()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812EC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26737E0A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737E13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737E1D4()
{
  swift_beginAccess();
  v0 = qword_2800FB830;

  return v0;
}

uint64_t sub_26737E240(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737E2A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737E34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ConvertibleToUnified<>.manifestConstructingType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for UnifiedOrderedEventsVector(0, a1, a2, a4);
  swift_getWitnessTable();
  return v4;
}

uint64_t static ConvertibleToUnified<>.makeUnifiedOrderedEvent(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for UnifiedOrderedEvent(0, a3, a4, a5);
  v8 = a1;
  v12 = sub_26738002C(v8, v9, v10, v11);

  a2[3] = v7;
  a2[4] = swift_getWitnessTable();
  a2[5] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a2[6] = result;
  *a2 = v12;
  return result;
}

uint64_t static ConvertibleToUnified<>.makeUnifiedOrderedEventsVector(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for UnifiedOrderedEventsVector(0, a2, a3, x3_0);

  v11 = sub_267380EFC(v7, v8, v9, v10);

  a4[3] = v6;
  a4[4] = swift_getWitnessTable();
  a4[5] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a4[6] = result;
  *a4 = v11;
  return result;
}

id LogicalTimestamp.makeSerializedData()()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812CC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static LogicalTimestamp.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26741D930;
  v9 = (v8 + v7);
  *v9 = 0x6564496B636F6C63;
  v9[1] = 0xEF7265696669746ELL;
  v10 = *(v2 + 104);
  v10(v4, *MEMORY[0x277D3E4F8], v1);
  v15 = 1;
  sub_26738114C();
  v11 = (v9 + v6);
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000002674A7D20;
  v10(v4, *MEMORY[0x277D3E540], v1);
  v14 = 1;
  sub_26738114C();
  sub_266EC679C(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

id sub_26737E940()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812CC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26737E9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26737EC38(&qword_2800FB858, &protocol conformance descriptor for LogicalTimestamp);
  v5 = sub_26737EC38(&qword_2800FB860, &protocol conformance descriptor for LogicalTimestamp);

  return MEMORY[0x28219EF78](v2, v4, v5, a2);
}

uint64_t sub_26737EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26737EC38(&qword_2800FB858, &protocol conformance descriptor for LogicalTimestamp);
  sub_26737EC38(&qword_2800FB860, &protocol conformance descriptor for LogicalTimestamp);
  return sub_26738123C();
}

uint64_t sub_26737EB4C()
{
  v1 = sub_26737EC38(&qword_2800FB858, &protocol conformance descriptor for LogicalTimestamp);

  return MEMORY[0x28219EDB0](v0, v1);
}

uint64_t sub_26737EBA8(uint64_t a1)
{
  v3 = sub_26737EC38(&qword_2800FB858, &protocol conformance descriptor for LogicalTimestamp);

  return MEMORY[0x28219EDB8](a1, v1, v3);
}

uint64_t sub_26737EC38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2673812DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26737EC80(uint64_t a1)
{
  sub_26737F568(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_26737ED74(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    sub_2673810AC();
  }

  sub_2673800C4();
}

uint64_t sub_26737EE6C(void *a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x277D85000] & *v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = sub_2673810CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  if (!a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v46 = v14;
  v48 = v11;
  v49 = a1;
  sub_2673812CC();
  v19 = [v18 data];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = sub_2673810AC();
  v23 = v22;

  v24 = sub_26738109C();
  sub_266ECDE68(v21, v23);
  v25 = v49;
  [v49 writeData:v24 forTag:1];

  v51 = *(v2 + qword_2800FB870);
  v26 = sub_2673810DC();
  v28 = v27;
  v29 = sub_26738109C();
  sub_266ECDE68(v26, v28);
  [v25 writeData:v29 forTag:2];

  sub_26737FCC8(v2 + qword_2801C7030, v9);
  v30 = v48;
  v31 = *(v48 + 48);
  if (v31(v9, 1, v10) == 1)
  {
    sub_26737FD38(v9);
  }

  else
  {
    (*(v30 + 32))(v16, v9, v10);
    sub_2673810BC();
    v32 = sub_26738130C();

    [v25 writeString:v32 forTag:3];

    (*(v30 + 8))(v16, v10);
  }

  v33 = *(v2 + qword_2801C7038);
  if (!v33)
  {
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D43178]);
  v34 = v33;
  v35 = [v4 init];
  if (!v35)
  {
    goto LABEL_18;
  }

  v4 = v35;
  sub_2673812EC();
  v36 = [v4 data];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_26738135C();
    MEMORY[0x26D5F74E0](0xD000000000000015, 0x80000002674A7E30);
    v50 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB908, &qword_26741DD20);
    sub_26738137C();
    result = sub_26738138C();
    __break(1u);
    return result;
  }

  v37 = v36;
  v38 = sub_2673810AC();
  v40 = v39;

  v41 = sub_26738109C();
  sub_266ECDE68(v38, v40);
  v25 = v49;
  [v49 writeData:v41 forTag:4];

  v30 = v48;
LABEL_11:
  v42 = v47;
  sub_26737FCC8(v2 + qword_2801C7040, v47);
  if (v31(v42, 1, v10) == 1)
  {
    return sub_26737FD38(v42);
  }

  v44 = v46;
  (*(v30 + 32))(v46, v42, v10);
  sub_2673810BC();
  v45 = sub_26738130C();

  [v25 writeString:v45 forTag:5];

  return (*(v30 + 8))(v44, v10);
}

void sub_26737F3F8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_26737EE6C(a3);
}

id sub_26737F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UnifiedOrderedEvent(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_26737F4D4(uint64_t a1)
{
  sub_26737FD38(a1 + qword_2801C7030);

  v2 = a1 + qword_2801C7040;

  return sub_26737FD38(v2);
}

void sub_26737F568(uint64_t a1)
{
  if (!qword_2800FB8F8)
  {
    sub_2673810CC();
    v1 = sub_26738133C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800FB8F8);
    }
  }
}

uint64_t sub_26737F5C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737F658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737F6F4()
{
  sub_26738135C();
  v0 = sub_2673811FC();

  MEMORY[0x26D5F74E0](0xD000000000000014, 0x80000002674A7DC0);
  return v0;
}

uint64_t sub_26737F78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v21 = sub_26738113C();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = 4 * v7;
  v9 = swift_allocObject();
  v23 = v9;
  *(v9 + 16) = xmmword_26741DBA0;
  v10 = (v9 + v8);
  *v10 = 0xD000000000000010;
  v10[1] = 0x80000002674A7D70;
  sub_2673812DC();
  sub_26737FC80(&qword_2800FB850, MEMORY[0x277D566F8], &protocol conformance descriptor for LogicalTimestamp);
  v20 = a1;
  sub_26738120C();
  v11 = (v10 + v7);
  *v11 = 0x746E657645756C74;
  v11[1] = 0xE800000000000000;
  sub_26738120C();
  v12 = (v10 + 2 * v7);
  *v12 = 0x556567617373656DLL;
  v12[1] = 0xEB00000000444955;
  v19 = *MEMORY[0x277D3E530];
  v13 = *(v3 + 104);
  v18 = v3 + 104;
  v14 = v21;
  v13(v5);
  v26 = 1;
  sub_26738114C();
  v15 = (v10 + 3 * v7);
  *v15 = 0x4972657473756C63;
  v15[1] = 0xE900000000000064;
  sub_2673812FC();
  sub_26737FC80(&qword_2800FB848, MEMORY[0x277D56708], &protocol conformance descriptor for ComponentIdentifier);
  sub_26738120C();
  v16 = (v10 + v22);
  *v16 = 0x676E694674736574;
  v16[1] = 0xEF746E6972707265;
  (v13)(v5, v19, v14);
  v25 = 1;
  sub_26738114C();
  sub_266EC679C(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

uint64_t sub_26737FBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737FC04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737FC80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26737FCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26737FD38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26737FDA0()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_26738127C();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + 80);
    v8 = swift_dynamicCastUnknownClass();
    if (v8)
    {
      v9 = v8;
      v10 = sub_2673812AC();
      if (v10)
      {
        *(v0 + qword_2800FB868) = v10;
        *(v0 + qword_2800FB870) = v9;
        v6 = v6;
        sub_26738128C();
        sub_26738017C(v4, v0 + qword_2801C7030);
        *(v0 + qword_2801C7038) = sub_2673812BC();
        sub_26738129C();
        sub_26738017C(v4, v0 + qword_2801C7040);
        v12 = type metadata accessor for UnifiedOrderedEvent(0, v7, *(v1 + 88), v11);
        v18.receiver = v0;
        v18.super_class = v12;
        v13 = objc_msgSendSuper2(&v18, sel_init);
        if (v13)
        {
          v14 = v13;

          return v14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26738135C();

  v19 = 0xD00000000000001DLL;
  v20 = 0x80000002674A7ED0;
  v16 = sub_26738142C();
  MEMORY[0x26D5F74E0](v16);

  MEMORY[0x26D5F74E0](0x20646E756F66202CLL, 0xE800000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB910, &qword_26741DD28);
  v17 = sub_26738142C();
  MEMORY[0x26D5F74E0](v17);

  result = sub_26738138C();
  __break(1u);
  return result;
}

uint64_t sub_26738017C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26738025C(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    sub_2673810AC();
  }

  sub_267380F94();
}

void *UnifiedOrderedEventsVector.write(to:)(void *result)
{
  v2 = *(v1 + qword_2800FB918);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_26738050C(v6, v11);
      if (!v4)
      {
        goto LABEL_8;
      }

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      ++v5;
      v7 = sub_2673810DC();
      v9 = v8;
      v10 = sub_26738109C();
      sub_266ECDE68(v7, v9);
      [v4 writeData:v10 forTag:1];

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v6 += 56;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_26738135C();
    MEMORY[0x26D5F74E0](0xD000000000000014, 0x80000002674A7F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB908, &qword_26741DD20);
    sub_26738137C();
    result = sub_26738138C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26738050C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_267380578(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UnifiedOrderedEventsVector.write(to:)(a3);
}

id UnifiedOrderedEventsVector.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UnifiedOrderedEventsVector(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_26738067C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267380714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t static UnifiedOrderedEventsVector.fullyQualifiedName.getter()
{
  sub_26738135C();
  v0 = sub_2673811FC();

  MEMORY[0x26D5F74E0](0xD00000000000001BLL, 0x80000002674A7F50);
  return v0;
}

uint64_t static UnifiedOrderedEventsVector.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26741DD30;
  v5 = (v4 + v3);
  *v5 = 0x7365756C6176;
  v5[1] = 0xE600000000000000;
  type metadata accessor for UnifiedOrderedEvent(0, *(v1 + 80), *(v1 + 88), v6);
  swift_getWitnessTable();
  sub_26738122C();
  sub_266EC679C(v4);
  swift_setDeallocating();
  sub_267380BFC(v5);
  swift_deallocClassInstance();

  return sub_26738119C();
}

uint64_t sub_2673809C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267380A2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

void *sub_267380A8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267380AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_267380AAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB9A0, "ԓ\n");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB9A8, &qword_26741DE78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_267380BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267380CE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *MEMORY[0x277D85000] & *v4;
  if (result >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = result;
      v26 = MEMORY[0x277D84F90];
      result = sub_267380A8C(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        break;
      }

      v9 = 0;
      v10 = v26;
      v11 = v8;
      v22 = v8;
      v23 = v8 & 0xC000000000000001;
      v20 = v5;
      v21 = v8 & 0xFFFFFFFFFFFFFF8;
      v5 = v7;
      while (1)
      {
        v12 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v23)
        {
          v13 = MEMORY[0x26D5F7520](v9, v11);
        }

        else
        {
          if (v9 >= *(v21 + 16))
          {
            goto LABEL_15;
          }

          v13 = *(v11 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = *(v6 + 80);
        v16 = *(v6 + 88);
        (*(v16 + 40))(v25, v13, v15, v16);

        v26 = v10;
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_267380A8C((v17 > 1), v18 + 1, 1);
          v10 = v26;
        }

        *(v10 + 16) = v18 + 1;
        result = sub_26738104C(v25, v10 + 56 * v18 + 32);
        ++v9;
        v11 = v22;
        if (v12 == v5)
        {
          v5 = v20;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v19 = result;
      v7 = sub_26738139C();
      result = v19;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v15 = *(v6 + 80);
  v16 = *(v6 + 88);
  v10 = MEMORY[0x277D84F90];
LABEL_18:
  *&v5[qword_2800FB918] = v10;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for UnifiedOrderedEventsVector(0, v15, v16, a4);
  result = objc_msgSendSuper2(&v24, sel_init);
  if (!result)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_26738104C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}