uint64_t sub_267230A84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267230AE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusKitPegasusResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v1 = sub_26738113C();
  v18 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = "SPegasusKitPegasusResponse";
  v8 = *MEMORY[0x277D3E538];
  v17 = *(v2 + 104);
  v17(v4, v8, v1);
  v20[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v16 | 0x8000000000000000);
  v12(v20, 0);
  v17(v4, v8, v18);
  v20[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267481450);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800F8490, 0x277D59FE0);
  sub_266ECAF2C(&qword_2800F8488, &qword_2800F8490, 0x277D59FE0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusKitNetworkTimingData);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6144676E696D6974, 0xEA00000000006174);
  return v14(v20, 0);
}

uint64_t sub_267230F98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267230FFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusPromptType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674814B0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x80000002674814D0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267481500, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672312B4(uint64_t a1)
{
  v2 = sub_2672313B8(&qword_2800F84D0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusPromptType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723131C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672313B8(&qword_2800F84D0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusPromptType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672313B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusPromptType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusQueryMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_26738113C();
  v62 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v4 + 104);
  v63 = v4 + 104;
  v12(v6, v11, v3);
  v65[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v53 = *(v13 - 8);
  v14 = v53 + 56;
  v61 = *(v53 + 56);
  v57 = v13;
  v61(v9, 0, 1, v13);
  v58 = v10;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x746974614C736168, 0xEB00000000656475);
  v15(v65, 0);
  v16 = v11;
  v17 = v11;
  v18 = v62;
  v60 = v12;
  v12(v6, v16, v62);
  v65[0] = 1;
  sub_26738114C();
  v19 = v13;
  v20 = v61;
  v61(v9, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x69676E6F4C736168, 0xEC00000065647574);
  v21(v65, 0);
  v12(v6, v17, v18);
  v65[0] = 1;
  sub_26738114C();
  v22 = v57;
  v20(v9, 0, 1, v57);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E756F43736168, 0xEE0065646F437972);
  v23(v65, 0);
  v59 = v17;
  v60(v6, v17, v62);
  v65[0] = 1;
  sub_26738114C();
  v55 = v14;
  v20(v9, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F7453736168, 0xED0000746E6F7266);
  v24(v65, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v64, 0x65726F7453736168, 0xED0000746E6F7266);
  if (!(*(v53 + 48))(v27, 1, v22))
  {
    sub_266ECB128(&unk_28788D068);
    sub_26738115C();
  }

  (v26)(v64, 0);
  v25(v65, 0);
  v28 = v62;
  v29 = v60;
  v60(v6, v59, v62);
  v65[0] = 1;
  sub_26738114C();
  v30 = v61;
  v61(v9, 0, 1, v22);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x4C69726953736168, 0xED0000656C61636FLL);
  v31(v65, 0);
  v32 = *MEMORY[0x277D3E500];
  v54 = v6;
  v29(v6, v32, v28);
  v65[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v22);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C6163536975, 0xE700000000000000);
  v33(v65, 0);
  v29(v54, v59, v28);
  v65[0] = 1;
  sub_26738114C();
  v34 = v61;
  v61(v9, 0, 1, v22);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267481580);
  v35(v65, 0);
  type metadata accessor for SISchemaTemperatureScale(0);
  sub_267232354(&qword_2800F84D8, type metadata accessor for SISchemaTemperatureScale, &protocol conformance descriptor for SISchemaTemperatureScale);
  sub_26738120C();
  v34(v9, 0, 1, v22);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674815A0);
  v36(v65, 0);
  type metadata accessor for SISchemaMeasurementSystem(0);
  sub_267232354(&qword_2800F84E0, type metadata accessor for SISchemaMeasurementSystem, &protocol conformance descriptor for SISchemaMeasurementSystem);
  sub_26738120C();
  v34(v9, 0, 1, v22);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674815C0);
  v37(v65, 0);
  v52 = "measurementSystem";
  LODWORD(v53) = *MEMORY[0x277D3E538];
  v38 = v54;
  v39 = v62;
  v40 = v60;
  (v60)(v54);
  v65[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v57);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v52 | 0x8000000000000000);
  v41(v65, 0);
  v40(v38, *MEMORY[0x277D3E530], v39);
  v65[0] = 1;
  sub_26738114C();
  v42 = v57;
  v43 = v61;
  v61(v9, 0, 1, v57);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F726665726F7473, 0xEF65756C6156746ELL);
  v44(v65, 0);
  v45 = v62;
  v40(v38, v59, v62);
  v65[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v42);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x4569726953796568, 0xEE0064656C62616ELL);
  v46(v65, 0);
  v60(v38, v53, v45);
  v65[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v42);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267481600);
  v47(v65, 0);
  type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationSource(0);
  sub_267232354(&qword_2800F84E8, type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationSource, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationSource);
  sub_26738120C();
  v43(v9, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F697461636F6CLL, 0xEE00656372756F53);
  v48(v65, 0);
  type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus(0);
  sub_267232354(&qword_2800F84F0, type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus);
  sub_26738120C();
  v43(v9, 0, 1, v42);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267481620);
  return v49(v65, 0);
}

uint64_t sub_267232248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672322AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267232354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723239C()
{
  result = qword_2800F8500;
  if (!qword_2800F8500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8500);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestArguments.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v28 = sub_26738113C();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v29 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8508, 0x277D5A050);
  sub_266ECAF2C(&qword_2800F8510, &qword_2800F8508, 0x277D5A050, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusSearchQuery);
  v27 = a1;
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v8 = v6;
  v7(v5, 0, 1);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x73656972657571, 0xE700000000000000);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F8500, 0x277D5A000);
  sub_266ECAF2C(&qword_2800F84F8, &qword_2800F8500, 0x277D5A000, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusQueryMetadata);
  sub_26738120C();
  (v7)(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D7972657571, 0xED00006174616461);
  v10(v31, 0);
  v25 = *MEMORY[0x277D3E530];
  v26 = *(v30 + 104);
  v30 += 104;
  v11 = v28;
  v26(v29);
  v31[0] = 1;
  sub_26738114C();
  (v7)(v5, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x4665727574616566, 0xEB0000000067616CLL);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F8518, 0x277D5A0E8);
  sub_266ECAF2C(&qword_2800F8520, &qword_2800F8518, 0x277D5A0E8, &protocol conformance descriptor for POMMESSchemaPOMMESSiriPegasusMetadata);
  sub_26738120C();
  (v7)(v5, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267481680);
  v13(v31, 0);
  (v26)(v29, *MEMORY[0x277D3E4E8], v11);
  v31[0] = 1;
  sub_26738114C();
  (v7)(v5, 0, 1, v8);
  v24 = v7;
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674816A0);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F82B8, 0x277D59F60);
  sub_266ECAF2C(&qword_2800F82B0, &qword_2800F82B8, 0x277D59F60, &protocol conformance descriptor for POMMESSchemaPOMMESClientConversationMetadata);
  sub_26738120C();
  v23 = v8;
  (v7)(v5, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x80000002674816C0);
  v15(v31, 0);
  v27 = "clientConversationMetadata";
  v17 = v28;
  v16 = v29;
  v18 = v26;
  (v26)(v29, *MEMORY[0x277D3E538], v28);
  v31[0] = 1;
  sub_26738114C();
  v19 = v24;
  v24(v5, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, v27 | 0x8000000000000000);
  v20(v31, 0);
  (v18)(v16, v25, v17);
  v31[0] = 1;
  sub_26738114C();
  v19(v5, 0, 1, v23);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x8000000267481700);
  return v21(v31, 0);
}

uint64_t sub_267232C2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267232C90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8528, 0x277D5A038);
  sub_266ECAF2C(&qword_2800F8530, &qword_2800F8528, 0x277D5A038, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8538, 0x277D5A018);
  sub_266ECAF2C(&qword_2800F8540, &qword_2800F8538, 0x277D5A018, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8548, 0x277D5A020);
  sub_266ECAF2C(&qword_2800F8550, &qword_2800F8548, 0x277D5A020, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestFailed);
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

uint64_t sub_26723324C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672332B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_26738118C();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v43 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v52 = a2;
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESPegasusResponseStatus(0);
  sub_267233F2C();
  sub_26738120C();
  v45 = sub_26738116C();
  v48 = *(v45 - 8);
  v12 = v48 + 56;
  v13 = *(v48 + 56);
  v13(v11, 0, 1, v45);
  v43[1] = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x737574617473, 0xE600000000000000);
  v14(v58, 0);
  v44 = *MEMORY[0x277D3E518];
  v15 = *(v6 + 104);
  v53 = v8;
  v54 = v5;
  v15(v8);
  v46 = v15;
  v47 = v6 + 104;
  v58[0] = 1;
  sub_26738114C();
  v16 = v45;
  v13(v11, 0, 1, v45);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E656469666E6F63, 0xEF65726F63536563);
  v17(v58, 0);
  (v15)(v53, v44, v5);
  v58[0] = 1;
  sub_26738114C();
  v18 = v16;
  v13(v11, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x5364616F6C796170, 0xEF424B6E49657A69);
  v19(v58, 0);
  sub_266ECB294(0, &qword_2800F8560, 0x277D5A048);
  sub_266ECAF2C(&qword_2800F8568, &qword_2800F8560, 0x277D5A048, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusResponseServerDrivenContext);
  sub_26738121C();
  v13(v11, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x7244726576726573, 0xEC0000006E657669);
  v20(v58, 0);
  sub_266ECB294(0, &qword_2800F8570, 0x277D5A040);
  sub_266ECAF2C(&qword_2800F8578, &qword_2800F8570, 0x277D5A040, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusResponseClientDrivenContext);
  sub_26738121C();
  v21 = v13;
  v55 = v13;
  v13(v11, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x7244746E65696C63, 0xEC0000006E657669);
  v22(v58, 0);
  v23 = v53;
  v24 = v46;
  (v46)(v53, *MEMORY[0x277D3E530], v54);
  v58[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x4473757361676570, 0xED00006E69616D6FLL);
  v25(v58, 0);
  (v24)(v23, *MEMORY[0x277D3E4E8], v54);
  v26 = v18;
  v58[0] = 1;
  sub_26738114C();
  v27 = v55;
  v55(v11, 0, 1, v18);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x80000002674817A0);
  v28(v58, 0);
  sub_266ECB294(0, &qword_2800F8498, 0x277D5A008);
  sub_266ECAF2C(&qword_2800F84A0, &qword_2800F8498, 0x277D5A008, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestArguments);
  sub_26738120C();
  v27(v11, 0, 1, v18);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674817C0);
  v29(v58, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v57, 0xD000000000000010, 0x80000002674817C0);
  if (!(*(v48 + 48))(v32, 1, v26))
  {
    sub_266ECB128(&unk_28788D090);
    sub_26738115C();
  }

  (v31)(v57, 0);
  v30(v58, 0);
  sub_266ECB294(0, &qword_2800F8580, 0x277D5A030);
  sub_266ECAF2C(&qword_2800F8588, &qword_2800F8580, 0x277D5A030, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestKfedLatency);
  sub_26738120C();
  v55(v11, 0, 1, v26);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x6574614C6465666BLL, 0xEB0000000079636ELL);
  v33(v58, 0);
  v34 = v49;
  sub_26738117C();
  v35 = sub_2673811BC();
  v37 = v36;
  v38 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_266ECAD54(0, v38[2] + 1, 1, v38);
    *v37 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_266ECAD54((v40 > 1), v41 + 1, 1, v38);
    *v37 = v38;
  }

  v38[2] = v41 + 1;
  (*(v50 + 32))(v38 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v34, v51);
  return v35(v58, 0);
}

uint64_t sub_267233E68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267233ECC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267233F2C()
{
  result = qword_2800F8558;
  if (!qword_2800F8558)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8558);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestFailed.makeTypeManifestAndEnsureFields(in:)(void (*a1)(char *, void, uint64_t, uint64_t))
{
  v15 = a1;
  v18 = sub_26738113C();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v17 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESPegasusRequestFailureReason(0);
  sub_267234508();
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6E6F73616572, 0xE600000000000000);
  v8(v20, 0);
  sub_266ECB294(0, &qword_2800F8498, 0x277D5A008);
  sub_266ECAF2C(&qword_2800F84A0, &qword_2800F8498, 0x277D5A008, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestArguments);
  sub_26738120C();
  v15 = v7;
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x80000002674817C0);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0xD000000000000010, 0x80000002674817C0);
  if (!(*(v6 + 48))(v12, 1, v5))
  {
    sub_266ECB128(&unk_28788D0B8);
    sub_26738115C();
  }

  (v11)(v19, 0);
  v10(v20, 0);
  (*(v16 + 104))(v17, *MEMORY[0x277D3E538], v18);
  v20[0] = 1;
  sub_26738114C();
  v15(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0x646F43726F727265, 0xE900000000000065);
  return v13(v20, 0);
}

uint64_t sub_267234444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672344A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267234508()
{
  result = qword_2800F8590;
  if (!qword_2800F8590)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8590);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267481860, isUniquelyReferenced_nonNull_native);
  *v3 = v40;

  v1(v48, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267481890, v8);
  *v7 = v41;

  v5(v48, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x80000002674818D0, v12);
  *v11 = v42;

  v9(v48, 0);
  v13 = sub_266ECB128(&unk_28788D0E0);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 2, v19);
  *v18 = v43;
  v16(v48, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x8000000267481910, v23);
  *v22 = v44;

  v20(v48, 0);
  v24 = sub_26738111C();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x8000000267481940, v27);
  *v26 = v45;

  v24(v48, 0);
  v28 = sub_266ECB128(&unk_28788D108);
  v30 = v29;
  v31 = sub_2673810FC();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD4CC(v28, v30, 4, v34);
  *v33 = v46;
  v31(v48, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000038, 0x8000000267481980, v38);
  *v37 = v47;

  return v35(v48, 0);
}

uint64_t sub_2672349F0(uint64_t a1)
{
  v2 = sub_267234AF4(&qword_2800F8598, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267234A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_267234AF4(&qword_2800F8598, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267234AF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType(0);
  sub_267234E28(&qword_2800F85A0, type metadata accessor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267481A10);
  return v5(v7, 0);
}

uint64_t sub_267234D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267234D80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267234E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267234E70()
{
  result = qword_2800F8350;
  if (!qword_2800F8350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8350);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000030, 0x8000000267481A80, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x8000000267481AC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x8000000267481B00, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x8000000267481B40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267235144(uint64_t a1)
{
  v2 = sub_267235248(&qword_2800F85A8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672351AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267235248(&qword_2800F85A8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267235248(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestKfedLatency.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "SPegasusRequestKfedLatency";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267481BE0);
  return v14(v19, 0);
}

uint64_t sub_2672355C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267235624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267235688()
{
  result = qword_2800F8588;
  if (!qword_2800F8588)
  {
    sub_2672356E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8588);
  }

  return result;
}

unint64_t sub_2672356E0()
{
  result = qword_2800F8580;
  if (!qword_2800F8580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8580);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000031, 0x8000000267481C50, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x8000000267481C90, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267481CD0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267235944(uint64_t a1)
{
  v2 = sub_267235A48(&qword_2800F85B0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672359AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267235A48(&qword_2800F85B0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267235A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationPreciseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestLocationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267481D50, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267481D80, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267481DC0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267481E00, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x8000000267481E30, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267481E60, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x8000000267481E90, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x8000000267481EC0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000049, 0x8000000267481EF0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_267235F44(uint64_t a1)
{
  v2 = sub_267236048(&qword_2800F85B8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267235FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267236048(&qword_2800F85B8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestLocationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267236048(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusRequestLocationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E518], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x5364616F6C796170, 0xEF424B6E49657A69);
  return v8(v10, 0);
}

uint64_t sub_2672362E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267236348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672363AC()
{
  result = qword_2800F8530;
  if (!qword_2800F8530)
  {
    sub_267236404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8530);
  }

  return result;
}

unint64_t sub_267236404()
{
  result = qword_2800F8528;
  if (!qword_2800F8528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8528);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusResponseClientDrivenContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType(0);
  sub_267236894(&qword_2800F8478, type metadata accessor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701869940, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_267236608(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType(0);
  sub_267236894(&qword_2800F8478, type metadata accessor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701869940, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_267236788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672367EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267236894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672368DC()
{
  result = qword_2800F8570;
  if (!qword_2800F8570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8570);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusResponseServerDrivenContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v15[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449746163, 0xE500000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6449746163, 0xE500000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_28788D130);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_267236C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267236C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267236CEC()
{
  result = qword_2800F8568;
  if (!qword_2800F8568)
  {
    sub_267236D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8568);
  }

  return result;
}

unint64_t sub_267236D44()
{
  result = qword_2800F8560;
  if (!qword_2800F8560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8560);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusResponseStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267482060, isUniquelyReferenced_nonNull_native);
  *v3 = v25;

  v1(v30, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267482090, v8);
  *v7 = v26;

  v5(v30, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674820C0, v12);
  *v11 = v27;

  v9(v30, 0);
  v13 = sub_266ECB128(&unk_28788D160);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 2, v19);
  *v18 = v28;
  v16(v30, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x80000002674820F0, v23);
  *v22 = v29;

  return v20(v30, 0);
}

uint64_t sub_267237090(uint64_t a1)
{
  v2 = sub_267237194(&qword_2800F85C0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusResponseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672370F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267237194(&qword_2800F85C0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusResponseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267237194(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusSearchQuery.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v15 = *MEMORY[0x277D3E4E8];
  v14 = *(v1 + 104);
  v14(v3);
  v18[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267482160);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800F85C8, 0x277D5A060);
  sub_266ECAF2C(&qword_2800F85D0, &qword_2800F85C8, 0x277D5A060, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusSearchQueryUserSpan);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E61705372657375, 0xE800000000000000);
  v10(v18, 0);
  (v14)(v3, v15, v16);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267482180);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800F85D8, 0x277D5A058);
  sub_266ECAF2C(&qword_2800F85E0, &qword_2800F85D8, 0x277D5A058, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusSearchQueryAmpUserState);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x5372657355706D61, 0xEC00000065746174);
  return v12(v18, 0);
}

uint64_t sub_2672376A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723770C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusSearchQueryAmpUserState.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26 = a1;
  sub_26738119C();
  v28 = "SPegasusSearchQueryAmpUserState";
  v9 = *MEMORY[0x277D3E4E8];
  v29 = *(v3 + 104);
  v29(v5, v9, v2);
  v23 = v3 + 104;
  v31[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v27 = v11 + 56;
  v24 = v10;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v28 | 0x8000000000000000);
  v13(v31, 0);
  v28 = "hasAmpSubscriptionStatus";
  v14 = v9;
  v15 = v9;
  v25 = v9;
  v16 = v29;
  v17 = v30;
  v29(v5, v14, v30);
  v31[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v28 | 0x8000000000000000);
  v18(v31, 0);
  v16(v5, v15, v17);
  v31[0] = 1;
  sub_26738114C();
  v19 = v24;
  v12(v8, 0, 1, v24);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x5472657355736168, 0xEC0000006E656B6FLL);
  v20(v31, 0);
  v16(v5, v25, v30);
  v31[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6572616853736168, 0xEF64497265735564);
  return v21(v31, 0);
}

uint64_t sub_267237C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267237CF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267237D58()
{
  result = qword_2800F85E0;
  if (!qword_2800F85E0)
  {
    sub_267237DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F85E0);
  }

  return result;
}

unint64_t sub_267237DB0()
{
  result = qword_2800F85D8;
  if (!qword_2800F85D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F85D8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusSearchQueryUserSpan.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6C6562616CLL, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267238044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672380A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26723810C()
{
  result = qword_2800F85D0;
  if (!qword_2800F85D0)
  {
    sub_267238164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F85D0);
  }

  return result;
}

unint64_t sub_267238164()
{
  result = qword_2800F85C8;
  if (!qword_2800F85C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F85C8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESProfileSliceResolutionRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F85E8, 0x277D5A080);
  sub_266ECAF2C(&qword_2800F85F0, &qword_2800F85E8, 0x277D5A080, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F85F8, 0x277D5A070);
  sub_266ECAF2C(&qword_2800F8600, &qword_2800F85F8, 0x277D5A070, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F8608, 0x277D5A078);
  sub_266ECAF2C(&qword_2800F8610, &qword_2800F8608, 0x277D5A078, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailed);
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

uint64_t sub_26723878C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672387F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESProfileSliceResolutionRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267238ADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267238B40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267238BA4()
{
  result = qword_2800F8600;
  if (!qword_2800F8600)
  {
    sub_267238BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8600);
  }

  return result;
}

unint64_t sub_267238BFC()
{
  result = qword_2800F85F8;
  if (!qword_2800F85F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F85F8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESProfileSliceResolutionRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason(0);
  sub_267239094(&qword_2800F8618, type metadata accessor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267238E04(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason(0);
  sub_267239094(&qword_2800F8618, type metadata accessor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267238F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267238FEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267239094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672390DC()
{
  result = qword_2800F8608;
  if (!qword_2800F8608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8608);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000037, 0x80000002674823A0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x80000002674823E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x8000000267482420, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000040, 0x8000000267482460, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x80000002674824B0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267239420(uint64_t a1)
{
  v2 = sub_267239524(&qword_2800F8620, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267239488(uint64_t a1, uint64_t a2)
{
  v4 = sub_267239524(&qword_2800F8620, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267239524(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESProfileSliceResolutionRequestFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESProfileSliceResolutionRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x62614C6563696C73, 0xEA00000000006C65);
  return v8(v10, 0);
}

uint64_t sub_2672397B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723981C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267239880()
{
  result = qword_2800F85F0;
  if (!qword_2800F85F0)
  {
    sub_2672398D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F85F0);
  }

  return result;
}

unint64_t sub_2672398D8()
{
  result = qword_2800F85E8;
  if (!qword_2800F85E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F85E8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8628, 0x277D5A0A8);
  sub_266ECAF2C(&qword_2800F8630, &qword_2800F8628, 0x277D5A0A8, &protocol conformance descriptor for POMMESSchemaPOMMESRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F8638, 0x277D5A090);
  sub_266ECAF2C(&qword_2800F8640, &qword_2800F8638, 0x277D5A090, &protocol conformance descriptor for POMMESSchemaPOMMESRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8648, 0x277D5A098);
  sub_266ECAF2C(&qword_2800F8650, &qword_2800F8648, 0x277D5A098, &protocol conformance descriptor for POMMESSchemaPOMMESRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8658, 0x277D5A0B0);
  sub_266ECAF2C(&qword_2800F8660, &qword_2800F8658, 0x277D5A0B0, &protocol conformance descriptor for POMMESSchemaPOMMESRequestUnableToHandle);
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

uint64_t sub_267239F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267239F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESRequestEnded.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v20 = *(v2 + 104);
  v22 = v2 + 104;
  v20(v4, v8, v1);
  v23[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x80000002674825A0);
  v11(v23, 0);
  sub_266ECB294(0, &qword_2800F8668, 0x277D5A0A0);
  sub_266ECAF2C(&qword_2800F8670, &qword_2800F8668, 0x277D5A0A0, &protocol conformance descriptor for POMMESSchemaPOMMESRequestResult);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = v10;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x746C75736572, 0xE600000000000000);
  v13(v23, 0);
  v21 = "isHandledByPreflight";
  v15 = v19;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E530], v19);
  v23[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v21 | 0x8000000000000000);
  v16(v23, 0);
  v14(v4, *MEMORY[0x277D3E538], v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674825F0);
  return v17(v23, 0);
}

uint64_t sub_26723A4EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723A550(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for POMMESSchemaPOMMESRequestFailedReason(0);
  sub_26723AA24(&qword_2800F8678, type metadata accessor for POMMESSchemaPOMMESRequestFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESRequestFailedReason);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F73616572, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x80000002674825F0);
  return v10(v14, 0);
}

uint64_t sub_26723A918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723A97C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723AA24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723AA6C()
{
  result = qword_2800F8648;
  if (!qword_2800F8648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8648);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267482680, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674826B0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x80000002674826E0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x8000000267482710, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x8000000267482740, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x8000000267482780, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26723AE20(uint64_t a1)
{
  v2 = sub_26723AF24(&qword_2800F8680, &protocol conformance descriptor for POMMESSchemaPOMMESRequestFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723AE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723AF24(&qword_2800F8680, &protocol conformance descriptor for POMMESSchemaPOMMESRequestFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723AF24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESRequestFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestResult.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E518];
  v37 = *(v4 + 104);
  v38 = v4 + 104;
  v37(v6, v10, v3);
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v33 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x80000002674827F0);
  v15(v39, 0);
  v16 = *MEMORY[0x277D3E530];
  v35 = v3;
  v17 = v37;
  v37(v6, v16, v3);
  v39[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x4473757361676570, 0xED00006E69616D6FLL);
  v18(v39, 0);
  v29 = "pommesConfidenceScore";
  v34 = *MEMORY[0x277D3E4E8];
  v17(v6);
  v39[0] = 1;
  sub_26738114C();
  v19 = v33;
  v33(v9, 0, 1, v11);
  v32 = v14;
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v29 | 0x8000000000000000);
  v20(v39, 0);
  v29 = "isFromResponseCache";
  type metadata accessor for POMMESSchemaPOMMESPegasusPromptType(0);
  sub_26723B6F0(&qword_2800F84C8, type metadata accessor for POMMESSchemaPOMMESPegasusPromptType, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusPromptType);
  sub_26738120C();
  v21 = v11;
  v30 = v11;
  v19(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v29 | 0x8000000000000000);
  v22(v39, 0);
  v36 = "egasusResponseSummary";
  v23 = v34;
  v24 = v35;
  v25 = v37;
  v37(v6, v34, v35);
  v39[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v36 | 0x8000000000000000);
  v26(v39, 0);
  v25(v6, v23, v24);
  v39[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v30);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267482850);
  return v27(v39, 0);
}

uint64_t sub_26723B5E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723B648(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723B6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723B738()
{
  result = qword_2800F8668;
  if (!qword_2800F8668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8668);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26723B9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723BA30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26723BA94()
{
  result = qword_2800F8630;
  if (!qword_2800F8630)
  {
    sub_26723BAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8630);
  }

  return result;
}

unint64_t sub_26723BAEC()
{
  result = qword_2800F8628;
  if (!qword_2800F8628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8628);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestUnableToHandle.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESRequestUnableToHandleReason(0);
  sub_26723BF84(&qword_2800F8688, type metadata accessor for POMMESSchemaPOMMESRequestUnableToHandleReason, &protocol conformance descriptor for POMMESSchemaPOMMESRequestUnableToHandleReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26723BCF4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESRequestUnableToHandleReason(0);
  sub_26723BF84(&qword_2800F8688, type metadata accessor for POMMESSchemaPOMMESRequestUnableToHandleReason, &protocol conformance descriptor for POMMESSchemaPOMMESRequestUnableToHandleReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26723BE78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723BEDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723BF84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723BFCC()
{
  result = qword_2800F8658;
  if (!qword_2800F8658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8658);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESRequestUnableToHandleReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267482920, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267482950, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x8000000267482990, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000039, 0x80000002674829C0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000038, 0x8000000267482A00, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26723C30C(uint64_t a1)
{
  v2 = sub_26723C410(&qword_2800F8690, &protocol conformance descriptor for POMMESSchemaPOMMESRequestUnableToHandleReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723C374(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723C410(&qword_2800F8690, &protocol conformance descriptor for POMMESSchemaPOMMESRequestUnableToHandleReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723C410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESRequestUnableToHandleReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESResourceDownloadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8698, 0x277D5A0D0);
  sub_266ECAF2C(&qword_2800F86A0, &qword_2800F8698, 0x277D5A0D0, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F86A8, 0x277D5A0C0);
  sub_266ECAF2C(&qword_2800F86B0, &qword_2800F86A8, 0x277D5A0C0, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F86B8, 0x277D5A0C8);
  sub_266ECAF2C(&qword_2800F86C0, &qword_2800F86B8, 0x277D5A0C8, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadFailed);
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

uint64_t sub_26723C96C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723C9D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESResourceDownloadEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267482AC0);
  return v8(v10, 0);
}

uint64_t sub_26723CCC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723CD28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26723CD8C()
{
  result = qword_2800F86B0;
  if (!qword_2800F86B0)
  {
    sub_26723CDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F86B0);
  }

  return result;
}

unint64_t sub_26723CDE4()
{
  result = qword_2800F86A8;
  if (!qword_2800F86A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F86A8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESResourceDownloadFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_26723D080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723D0E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26723D148()
{
  result = qword_2800F86C0;
  if (!qword_2800F86C0)
  {
    sub_26723D1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F86C0);
  }

  return result;
}

unint64_t sub_26723D1A0()
{
  result = qword_2800F86B8;
  if (!qword_2800F86B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F86B8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESResourceDownloadStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESResourceDownloadType(0);
  sub_26723D650(&qword_2800F86C8, type metadata accessor for POMMESSchemaPOMMESResourceDownloadType, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F736572, 0xEC00000065707954);
  return v5(v7, 0);
}

uint64_t sub_26723D3B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESResourceDownloadType(0);
  sub_26723D650(&qword_2800F86C8, type metadata accessor for POMMESSchemaPOMMESResourceDownloadType, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F736572, 0xEC00000065707954);
  return v5(v7, 0);
}

uint64_t sub_26723D544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723D5A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723D650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723D698()
{
  result = qword_2800F8698;
  if (!qword_2800F8698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8698);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESResourceDownloadType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267482BA0, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267482BD0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26723D888(uint64_t a1)
{
  v2 = sub_26723D98C(&qword_2800F86D0, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723D8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723D98C(&qword_2800F86D0, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723D98C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESResourceDownloadType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESSearchRequestClassifierExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267482C50);
  v10(v14, 0);
  type metadata accessor for POMMESSchemaPOMMESSelfReflectionAgentDecision(0);
  sub_26723DE08(&qword_2800F86D8, type metadata accessor for POMMESSchemaPOMMESSelfReflectionAgentDecision, &protocol conformance descriptor for POMMESSchemaPOMMESSelfReflectionAgentDecision);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267482C70);
  return v11(v14, 0);
}

uint64_t sub_26723DCFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723DD60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723DE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723DE50()
{
  result = qword_2800F8360;
  if (!qword_2800F8360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8360);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESSelfReflectionAgentDecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267482CD0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267482D00, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267482D30, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x8000000267482D60, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267482D90, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x8000000267482DC0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003FLL, 0x8000000267482DF0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26723E278(uint64_t a1)
{
  v2 = sub_26723E37C(&qword_2800F86E0, &protocol conformance descriptor for POMMESSchemaPOMMESSelfReflectionAgentDecision);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723E2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723E37C(&qword_2800F86E0, &protocol conformance descriptor for POMMESSchemaPOMMESSelfReflectionAgentDecision);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723E37C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESSelfReflectionAgentDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESServiceClassifierLabel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267482E70, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267482EA0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x8000000267482ED0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x8000000267482F00, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267482F30, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26723E6B8(uint64_t a1)
{
  v2 = sub_26723E7BC(&qword_2800F86F0, &protocol conformance descriptor for POMMESSchemaPOMMESServiceClassifierLabel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723E720(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723E7BC(&qword_2800F86F0, &protocol conformance descriptor for POMMESSchemaPOMMESServiceClassifierLabel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723E7BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESServiceClassifierLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESServiceClassifierScoreReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E518], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  v10(v13, 0);
  type metadata accessor for POMMESSchemaPOMMESServiceClassifierLabel(0);
  sub_26723EC34(&qword_2800F86E8, type metadata accessor for POMMESSchemaPOMMESServiceClassifierLabel, &protocol conformance descriptor for POMMESSchemaPOMMESServiceClassifierLabel);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6966697373616C63, 0xEF6C6562614C7265);
  return v11(v13, 0);
}

uint64_t sub_26723EB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723EB8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26723EC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26723EC7C()
{
  result = qword_2800F82F0;
  if (!qword_2800F82F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F82F0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESSiriPegasusContextInteractionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267482FE0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267483010, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267483050, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26723EEDC(uint64_t a1)
{
  v2 = sub_26723EFE0(&qword_2800F8700, &protocol conformance descriptor for POMMESSchemaPOMMESSiriPegasusContextInteractionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26723EF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26723EFE0(&qword_2800F8700, &protocol conformance descriptor for POMMESSchemaPOMMESSiriPegasusContextInteractionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26723EFE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESSiriPegasusContextInteractionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESSiriPegasusMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v46 = a2;
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESSiriPegasusContextInteractionType(0);
  sub_26723F984();
  v41 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7463617265746E69, 0xEF657079546E6F69);
  v14(v50, 0);
  v15 = *(v5 + 104);
  v45 = *MEMORY[0x277D3E4E8];
  v47 = v5 + 104;
  v48 = v4;
  v44 = v15;
  (v15)(v7);
  v50[0] = 1;
  v16 = v7;
  sub_26738114C();
  v43 = v12 + 56;
  v40 = v13;
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x616C707261437369, 0xE900000000000079);
  v17(v50, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v49, 0x616C707261437369, 0xE900000000000079);
  if (!(*(v12 + 48))(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788D188);
    sub_26738115C();
  }

  (v19)(v49, 0);
  v18(v50, 0);
  v21 = *MEMORY[0x277D3E538];
  v22 = v16;
  v23 = v16;
  v24 = v44;
  v44(v23, v21, v48);
  v50[0] = 1;
  sub_26738114C();
  v42 = v11;
  v25 = v40;
  v40(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674830D0);
  v26(v50, 0);
  v27 = v48;
  v24(v22, v21, v48);
  v50[0] = 1;
  sub_26738114C();
  v28 = v42;
  v25(v10, 0, 1, v42);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x6972747365527674, 0xED00006E6F697463);
  v29(v50, 0);
  v39 = "movieRestriction";
  v30 = v27;
  v31 = v44;
  v44(v22, v45, v30);
  v50[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v39 | 0x8000000000000000);
  v32(v50, 0);
  v39 = "isInRestrictedSharingMode";
  v33 = v48;
  v31(v22, v45, v48);
  v50[0] = 1;
  sub_26738114C();
  v34 = v42;
  v25(v10, 0, 1, v42);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v39 | 0x8000000000000000);
  v35(v50, 0);
  v44(v22, v45, v33);
  v50[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267483130);
  v36(v50, 0);
  sub_266ECB294(0, &qword_2800F8400, 0x277D59F80);
  sub_266ECAF2C(&qword_2800F83F8, &qword_2800F8400, 0x277D59F80, &protocol conformance descriptor for POMMESSchemaPOMMESDeviceState);
  sub_26738120C();
  v25(v10, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x7453656369766564, 0xEB00000000657461);
  return v37(v50, 0);
}

uint64_t sub_26723F8C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26723F924(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26723F984()
{
  result = qword_2800F86F8;
  if (!qword_2800F86F8)
  {
    type metadata accessor for POMMESSchemaPOMMESSiriPegasusContextInteractionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F86F8);
  }

  return result;
}

uint64_t static PRSiriSchemaPRClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8708, 0x277D5A0F8);
  sub_266ECAF2C(&qword_2800F8710, &qword_2800F8708, 0x277D5A0F8, &protocol conformance descriptor for PRSiriSchemaPRClientEventMetadata);
  v33 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v35, 0);
  sub_266ECB294(0, &qword_2800F8718, 0x277D5A120);
  sub_266ECAF2C(&qword_2800F8720, &qword_2800F8718, 0x277D5A120, &protocol conformance descriptor for PRSiriSchemaPRRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374736575716572, 0xEE00747865746E6FLL);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800F8728, 0x277D5A140);
  sub_266ECAF2C(&qword_2800F8730, &qword_2800F8728, 0x277D5A140, &protocol conformance descriptor for PRSiriSchemaPRResponseGenerationRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267483180);
  v14(v35, 0);
  v32 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0xD000000000000010, 0x8000000267483180);
  if (!(*(v10 + 48))(v17, 1, v9))
  {
    sub_266ECB128(&unk_28788D1B0);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F8738, 0x277D5A100);
  sub_266ECAF2C(&qword_2800F8740, &qword_2800F8738, 0x277D5A100, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F436C6C6143726ALL, 0xED0000747865746ELL);
  v18(v35, 0);
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
  v20(v35, 0);
  sub_266ECB128(&unk_28788D1D8);
  return sub_2673811CC();
}

uint64_t sub_2672400BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267240154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267240220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267240284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672402E4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8748, &qword_2800F8750, 0x277D5A0F0, &protocol conformance descriptor for PRSiriSchemaPRClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8758, &qword_2800F8750, 0x277D5A0F0, &protocol conformance descriptor for PRSiriSchemaPRClientEvent);
  result = sub_266ECAF2C(&qword_2800F8760, &qword_2800F8750, 0x277D5A0F0, &protocol conformance descriptor for PRSiriSchemaPRClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static PRSiriSchemaPRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v36 = sub_26738113C();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v37 = a1;
  v33 = v7;
  v34 = v6;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v39 = *(v9 + 56);
  v39(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x7365757165526669, 0xEB00000000644974);
  v10(v42, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v41, 0x7365757165526669, 0xEB00000000644974);
  v38 = *(v9 + 48);
  if (!v38(v13, 1, v8))
  {
    sub_266ECB128(&unk_28788D210);
    sub_26738115C();
  }

  (v12)(v41, 0);
  v11(v42, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = *(v40 + 104);
  v40 += 104;
  v32 = v15;
  v15(v35, v14, v36);
  v42[0] = 1;
  sub_26738114C();
  v39(v5, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0x53676E6974736F70, 0xED000064496E6170);
  v16(v42, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v41, 0x53676E6974736F70, 0xED000064496E6170);
  if (!v38(v19, 1, v8))
  {
    sub_266ECB128(&unk_28788D240);
    sub_26738115C();
  }

  (v18)(v41, 0);
  v17(v42, 0);
  sub_26738120C();
  v39(v5, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 1682532208, 0xE400000000000000);
  v20(v42, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v41, 1682532208, 0xE400000000000000);
  if (!v38(v23, 1, v8))
  {
    sub_266ECB128(&unk_28788D268);
    sub_26738115C();
  }

  (v22)(v41, 0);
  v21(v42, 0);
  v32(v35, *MEMORY[0x277D3E540], v36);
  v42[0] = 1;
  sub_26738114C();
  v24 = v39;
  v39(v5, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496E617073, 0xE600000000000000);
  v25(v42, 0);
  sub_26738120C();
  v24(v5, 0, 1, v8);
  v26 = sub_2673811AC();
  sub_266EC637C(v5, 1682535024, 0xE400000000000000);
  v26(v42, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v41, 1682535024, 0xE400000000000000);
  if (!v38(v29, 1, v8))
  {
    sub_266ECB128(&unk_28788D290);
    sub_26738115C();
  }

  (v28)(v41, 0);
  return v27(v42, 0);
}

uint64_t sub_267240B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267240BB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRFatalError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267483200, isUniquelyReferenced_nonNull_native);
  *v3 = v82;

  v1(v102, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267483220, v8);
  *v7 = v83;

  v5(v102, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267483240, v12);
  *v11 = v84;

  v9(v102, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267483270, v16);
  *v15 = v85;

  v13(v102, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267483290, v20);
  *v19 = v86;

  v17(v102, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x80000002674832C0, v24);
  *v23 = v87;

  v21(v102, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x80000002674832F0, v28);
  *v27 = v88;

  v25(v102, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267483310, v32);
  *v31 = v89;

  v29(v102, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000022, 0x8000000267483330, v36);
  *v35 = v90;

  v33(v102, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001CLL, 0x8000000267483360, v40);
  *v39 = v91;

  v37(v102, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001ELL, 0x8000000267483380, v44);
  *v43 = v92;

  v41(v102, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002CLL, 0x80000002674833A0, v48);
  *v47 = v93;

  v45(v102, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000023, 0x80000002674833D0, v52);
  *v51 = v94;

  v49(v102, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000023, 0x8000000267483400, v56);
  *v55 = v95;

  v53(v102, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000021, 0x8000000267483430, v60);
  *v59 = v96;

  v57(v102, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001FLL, 0x8000000267483460, v64);
  *v63 = v97;

  v61(v102, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001CLL, 0x8000000267483480, v68);
  *v67 = v98;

  v65(v102, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000024, 0x80000002674834A0, v72);
  *v71 = v99;

  v69(v102, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000024, 0x80000002674834D0, v76);
  *v75 = v100;

  v73(v102, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000023, 0x8000000267483500, v80);
  *v79 = v101;

  return v77(v102, 0);
}

uint64_t sub_2672415F4(uint64_t a1)
{
  v2 = sub_2672416F8(&qword_2800F8778, &protocol conformance descriptor for PRSiriSchemaPRFatalError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724165C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672416F8(&qword_2800F8778, &protocol conformance descriptor for PRSiriSchemaPRFatalError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672416F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PRSiriSchemaPRFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PRSiriSchemaPRJointResolverCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26738113C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8780, 0x277D5A118);
  sub_266ECAF2C(&qword_2800F8788, &qword_2800F8780, 0x277D5A118, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallStarted);
  sub_26738121C();
  v8 = sub_26738116C();
  v35[0] = *(v8 - 8);
  v9 = *(v35[0] + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741EB30);
  v10(v45, 0);
  sub_266ECB294(0, &qword_2800F8790, 0x277D5A108);
  sub_266ECAF2C(&qword_2800F8798, &qword_2800F8790, 0x277D5A108, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallEnded);
  sub_26738121C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
  v11(v45, 0);
  sub_266ECB294(0, &qword_2800F87A0, 0x277D5A110);
  sub_266ECAF2C(&qword_2800F87A8, &qword_2800F87A0, 0x277D5A110, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallFailed);
  sub_26738121C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64656C696166, 0xE600000000000000);
  v12(v45, 0);
  v13 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v14 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v39 = a1;
  v35[1] = v14;
  v35[2] = v13;
  sub_26738120C();
  v43 = v9;
  v9(v7, 0, 1, v8);
  v15 = v35[0];
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6576456E616C70, 0xEB00000000644974);
  v16(v45, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v44, 0x6E6576456E616C70, 0xEB00000000644974);
  v19 = *(v15 + 48);
  if (!v19(v20, 1, v8))
  {
    sub_266ECB128(&unk_28788D2C0);
    sub_26738115C();
  }

  (v18)(v44, 0);
  v17(v45, 0);
  (*(v36 + 104))(v37, *MEMORY[0x277D3E538], v38);
  v45[0] = 1;
  sub_26738114C();
  v43(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026743C450);
  v21(v45, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v44, 0xD000000000000011, 0x800000026743C450);
  if (!v19(v24, 1, v8))
  {
    sub_266ECB128(&unk_28788D2E8);
    sub_26738115C();
  }

  (v23)(v44, 0);
  v22(v45, 0);
  sub_26738120C();
  v43(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496563617274, 0xE700000000000000);
  v25(v45, 0);
  v26 = v40;
  sub_26738117C();
  v27 = sub_2673811BC();
  v29 = v28;
  v30 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_266ECAD54(0, v30[2] + 1, 1, v30);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_266ECAD54((v32 > 1), v33 + 1, 1, v30);
    *v29 = v30;
  }

  v30[2] = v33 + 1;
  (*(v41 + 32))(v30 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, v26, v42);
  return v27(v45, 0);
}

uint64_t sub_26724202C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267242090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRJointResolverCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26724237C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672423E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267242444()
{
  result = qword_2800F8798;
  if (!qword_2800F8798)
  {
    sub_26724249C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8798);
  }

  return result;
}

unint64_t sub_26724249C()
{
  result = qword_2800F8790;
  if (!qword_2800F8790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8790);
  }

  return result;
}

uint64_t static PRSiriSchemaPRJointResolverCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267242730(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267242794(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672427F8()
{
  result = qword_2800F87A8;
  if (!qword_2800F87A8)
  {
    sub_267242850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F87A8);
  }

  return result;
}

unint64_t sub_267242850()
{
  result = qword_2800F87A0;
  if (!qword_2800F87A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F87A0);
  }

  return result;
}

uint64_t static PRSiriSchemaPRJointResolverCallStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PRSiriSchemaPRJointResolverCallType(0);
  sub_267242CF0(&qword_2800F87B0, type metadata accessor for PRSiriSchemaPRJointResolverCallType, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546C6C6163, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267242A5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PRSiriSchemaPRJointResolverCallType(0);
  sub_267242CF0(&qword_2800F87B0, type metadata accessor for PRSiriSchemaPRJointResolverCallType, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546C6C6163, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267242BE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267242C48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267242CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267242D38()
{
  result = qword_2800F8780;
  if (!qword_2800F8780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8780);
  }

  return result;
}

uint64_t static PRSiriSchemaPRJointResolverCallType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267483650, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267483670, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x80000002674836A0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267242F98(uint64_t a1)
{
  v2 = sub_26724309C(&qword_2800F87B8, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267243000(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724309C(&qword_2800F87B8, &protocol conformance descriptor for PRSiriSchemaPRJointResolverCallType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724309C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PRSiriSchemaPRJointResolverCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PRSiriSchemaPRRequestContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_26738118C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_26738113C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F87C0, 0x277D5A138);
  sub_266ECAF2C(&qword_2800F87C8, &qword_2800F87C0, 0x277D5A138, &protocol conformance descriptor for PRSiriSchemaPRRequestStarted);
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v12(v42, 0);
  sub_266ECB294(0, &qword_2800F87D0, 0x277D5A128);
  sub_266ECAF2C(&qword_2800F87D8, &qword_2800F87D0, 0x277D5A128, &protocol conformance descriptor for PRSiriSchemaPRRequestEnded);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v13(v42, 0);
  sub_266ECB294(0, &qword_2800F87E0, 0x277D5A130);
  sub_266ECAF2C(&qword_2800F87E8, &qword_2800F87E0, 0x277D5A130, &protocol conformance descriptor for PRSiriSchemaPRRequestFailed);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v14(v42, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6576456E616C70, 0xEB00000000644974);
  v15(v42, 0);
  v33 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v41, 0x6E6576456E616C70, 0xEB00000000644974);
  v18 = *(v10 + 48);
  v34 = v10 + 48;
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_28788D310);
    sub_26738115C();
  }

  (v17)(v41, 0);
  v16(v42, 0);
  (*(v35 + 104))(v36, *MEMORY[0x277D3E538], v37);
  v42[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026743C450);
  v20(v42, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v41, 0xD000000000000011, 0x800000026743C450);
  if (!v18(v23, 1, v9))
  {
    sub_266ECB128(&unk_28788D338);
    sub_26738115C();
  }

  (v22)(v41, 0);
  v21(v42, 0);
  v24 = v38;
  sub_26738117C();
  v25 = sub_2673811BC();
  v27 = v26;
  v28 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_266ECAD54(0, v28[2] + 1, 1, v28);
    *v27 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_266ECAD54((v30 > 1), v31 + 1, 1, v28);
    *v27 = v28;
  }

  v28[2] = v31 + 1;
  (*(v39 + 32))(v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, v24, v40);
  return v25(v42, 0);
}

uint64_t sub_267243954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672439B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674779E0);
  v6(v9, 0);
  type metadata accessor for SISchemaTranscriptEventType(0);
  sub_267243DB0();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D614E746E657665, 0xE900000000000065);
  return v7(v9, 0);
}

uint64_t sub_267243CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267243D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267243DB0()
{
  result = qword_2800F87F0;
  if (!qword_2800F87F0)
  {
    type metadata accessor for SISchemaTranscriptEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F87F0);
  }

  return result;
}

uint64_t static PRSiriSchemaPRRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PRSiriSchemaPRFatalError(0);
  sub_267244298(&qword_2800F8770, type metadata accessor for PRSiriSchemaPRFatalError, &protocol conformance descriptor for PRSiriSchemaPRFatalError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267244008(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PRSiriSchemaPRFatalError(0);
  sub_267244298(&qword_2800F8770, type metadata accessor for PRSiriSchemaPRFatalError, &protocol conformance descriptor for PRSiriSchemaPRFatalError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26724418C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672441F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267244298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672442E0()
{
  result = qword_2800F87E0;
  if (!qword_2800F87E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F87E0);
  }

  return result;
}

uint64_t static PRSiriSchemaPRRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a2;
  sub_26738119C();
  v27 = "originProgramStatementId";
  v10 = *MEMORY[0x277D3E538];
  v28 = *(v4 + 104);
  v23 = v10;
  v24 = v3;
  v28(v6, v10, v3);
  v30[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v26 = v12 + 56;
  v13(v9, 0, 1, v11);
  v22 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v27 | 0x8000000000000000);
  v14(v30, 0);
  v15 = v10;
  v16 = v28;
  v28(v6, v15, v3);
  v30[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026743C450);
  v17(v30, 0);
  v16(v6, v23, v24);
  v30[0] = 1;
  sub_26738114C();
  v18 = v22;
  v22(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v19(v30, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6379436E616C70, 0xEB00000000644965);
  return v20(v30, 0);
}

uint64_t sub_267244808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724486C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRResponseGenerationRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F87F8, 0x277D5A158);
  sub_266ECAF2C(&qword_2800F8800, &qword_2800F87F8, 0x277D5A158, &protocol conformance descriptor for PRSiriSchemaPRResponseGenerationRequestStart);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8808, 0x277D5A148);
  sub_266ECAF2C(&qword_2800F8810, &qword_2800F8808, 0x277D5A148, &protocol conformance descriptor for PRSiriSchemaPRResponseGenerationRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8818, 0x277D5A150);
  sub_266ECAF2C(&qword_2800F8820, &qword_2800F8818, 0x277D5A150, &protocol conformance descriptor for PRSiriSchemaPRResponseGenerationRequestFailed);
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
  sub_266ECB128(&unk_28788D360);
  return sub_2673811CC();
}

uint64_t sub_267244E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267244EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRResponseGenerationRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674779E0);
  v5(v7, 0);
  sub_266ECB128(&unk_28788D388);
  return sub_2673811CC();
}

uint64_t sub_267245150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672451B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PRSiriSchemaPRResponseGenerationRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_28788D3B0);
  return sub_2673811CC();
}

uint64_t sub_2672454B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724551C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267245580()
{
  result = qword_2800F8820;
  if (!qword_2800F8820)
  {
    sub_2672455D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8820);
  }

  return result;
}

unint64_t sub_2672455D8()
{
  result = qword_2800F8818;
  if (!qword_2800F8818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8818);
  }

  return result;
}

uint64_t static PRSiriSchemaPRResponseGenerationRequestStart.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026743C450);
  v8(v10, 0);
  sub_266ECB128(&unk_28788D3D8);
  return sub_2673811CC();
}

uint64_t sub_26724588C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672458F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267245954()
{
  result = qword_2800F8800;
  if (!qword_2800F8800)
  {
    sub_2672459AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8800);
  }

  return result;
}

unint64_t sub_2672459AC()
{
  result = qword_2800F87F8;
  if (!qword_2800F87F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F87F8);
  }

  return result;
}

uint64_t static PSESchemaPSEAlarm.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674838C0);
  v10(v13, 0);
  type metadata accessor for PSESchemaPSEAlarmFollowup(0);
  sub_267245E30(&qword_2800F8828, type metadata accessor for PSESchemaPSEAlarmFollowup, &protocol conformance descriptor for PSESchemaPSEAlarmFollowup);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7055776F6C6C6F66, 0xEC00000065707954);
  return v11(v13, 0);
}

uint64_t sub_267245D24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267245D88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267245E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267245E78()
{
  result = qword_2800F8838;
  if (!qword_2800F8838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8838);
  }

  return result;
}

uint64_t static PSESchemaPSEAlarmFollowup.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267483910, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267483930, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267483960, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267483990, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x80000002674839C0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672461B8(uint64_t a1)
{
  v2 = sub_2672462BC(&qword_2800F8840, &protocol conformance descriptor for PSESchemaPSEAlarmFollowup);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267246220(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672462BC(&qword_2800F8840, &protocol conformance descriptor for PSESchemaPSEAlarmFollowup);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672462BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEAlarmFollowup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEAlarmSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F8838, 0x277D5A160);
  sub_266ECAF2C(&qword_2800F8830, &qword_2800F8838, 0x277D5A160, &protocol conformance descriptor for PSESchemaPSEAlarm);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6769536D72616C61, 0xEB000000006C616ELL);
  return v7(v9, 0);
}

uint64_t sub_2672465D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724663C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEAppFollowup.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267483A60, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267483A80, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267483AA0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267483AC0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267483AE0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672469D4(uint64_t a1)
{
  v2 = sub_267246AD8(&qword_2800F8870, &protocol conformance descriptor for PSESchemaPSEAppFollowup);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267246A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267246AD8(&qword_2800F8870, &protocol conformance descriptor for PSESchemaPSEAppFollowup);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267246AD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEAppFollowup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEAppIntentFollowupActionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267483B40, isUniquelyReferenced_nonNull_native);
  *v3 = v142;

  v1(v177, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267483B70, v8);
  *v7 = v143;

  v5(v177, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267483BA0, v12);
  *v11 = v144;

  v9(v177, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x8000000267483BD0, v16);
  *v15 = v145;

  v13(v177, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267483C00, v20);
  *v19 = v146;

  v17(v177, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x8000000267483C30, v24);
  *v23 = v147;

  v21(v177, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267483C60, v28);
  *v27 = v148;

  v25(v177, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267483C90, v32);
  *v31 = v149;

  v29(v177, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267483CC0, v36);
  *v35 = v150;

  v33(v177, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000024, 0x8000000267483CF0, v40);
  *v39 = v151;

  v37(v177, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x8000000267483D20, v44);
  *v43 = v152;

  v41(v177, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000022, 0x8000000267483D50, v48);
  *v47 = v153;

  v45(v177, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x8000000267483D80, v52);
  *v51 = v154;

  v49(v177, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000026, 0x8000000267483DB0, v56);
  *v55 = v155;

  v53(v177, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002FLL, 0x8000000267483DE0, v60);
  *v59 = v156;

  v57(v177, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x8000000267483E10, v64);
  *v63 = v157;

  v61(v177, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000023, 0x8000000267483E40, v68);
  *v67 = v158;

  v65(v177, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000023, 0x8000000267483E70, v72);
  *v71 = v159;

  v69(v177, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000025, 0x8000000267483EA0, v76);
  *v75 = v160;

  v73(v177, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000022, 0x8000000267483ED0, v80);
  *v79 = v161;

  v77(v177, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000025, 0x8000000267483F00, v84);
  *v83 = v162;

  v81(v177, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000023, 0x8000000267483F30, v88);
  *v87 = v163;

  v85(v177, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000025, 0x8000000267483F60, v92);
  *v91 = v164;

  v89(v177, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000025, 0x8000000267483F90, v96);
  *v95 = v165;

  v93(v177, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000026, 0x8000000267483FC0, v100);
  *v99 = v166;

  v97(v177, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000027, 0x8000000267483FF0, v104);
  *v103 = v167;

  v101(v177, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000022, 0x8000000267484020, v108);
  *v107 = v168;

  v105(v177, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000027, 0x8000000267484050, v112);
  *v111 = v169;

  v109(v177, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000022, 0x8000000267484080, v116);
  *v115 = v170;

  v113(v177, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000027, 0x80000002674840B0, v120);
  *v119 = v171;

  v117(v177, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000022, 0x80000002674840E0, v124);
  *v123 = v172;

  v121(v177, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000027, 0x8000000267484110, v128);
  *v127 = v173;

  v125(v177, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000023, 0x8000000267484140, v132);
  *v131 = v174;

  v129(v177, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000023, 0x8000000267484170, v136);
  *v135 = v175;

  v133(v177, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000029, 0x80000002674841A0, v140);
  *v139 = v176;

  return v137(v177, 0);
}

uint64_t sub_267247B5C(uint64_t a1)
{
  v2 = sub_267247C60(&qword_2800F8880, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupActionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267247BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267247C60(&qword_2800F8880, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupActionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267247C60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEAppIntentFollowupActionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEAppIntentFollowupEntityComparison.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267484220, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267484250, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267484290, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x80000002674842C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267247F28(uint64_t a1)
{
  v2 = sub_26724802C(&qword_2800F8890, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupEntityComparison);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267247F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724802C(&qword_2800F8890, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupEntityComparison);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724802C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEAppIntentFollowupEntityComparison(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEAppIntentInteractionEngagement.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = sub_26738113C();
  v29 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v30 = v4 + 104;
  v31 = v11;
  v27 = v6;
  v11(v6, v10, v3);
  v32[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E65746E49707061, 0xED0000656D614E74);
  v16(v32, 0);
  type metadata accessor for PSESchemaPSEAppIntentFollowupActionType(0);
  sub_267248728(&qword_2800F8878, type metadata accessor for PSESchemaPSEAppIntentFollowupActionType, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupActionType);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v26[2] = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267484330);
  v17(v32, 0);
  type metadata accessor for PSESchemaPSEAppIntentFollowupEntityComparison(0);
  sub_267248728(&qword_2800F8888, type metadata accessor for PSESchemaPSEAppIntentFollowupEntityComparison, &protocol conformance descriptor for PSESchemaPSEAppIntentFollowupEntityComparison);
  sub_26738120C();
  v26[0] = v12;
  v14(v9, 0, 1, v12);
  v26[1] = v15;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267484350);
  v18(v32, 0);
  v28 = "ngagement.pse.PSEAlarm";
  v19 = *MEMORY[0x277D3E4E8];
  v20 = v27;
  v21 = v29;
  v22 = v31;
  v31(v27, v19, v29);
  v32[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v28 | 0x8000000000000000);
  v23(v32, 0);
  v22(v20, v19, v21);
  v32[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v26[0]);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x5074737269467369, 0xEF70704179747261);
  return v24(v32, 0);
}

uint64_t sub_26724861C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267248680(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267248728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267248770()
{
  result = qword_2800F88A0;
  if (!qword_2800F88A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F88A0);
  }

  return result;
}

uint64_t static PSESchemaPSEAppIntentSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F88A0, 0x277D5A170);
  sub_266ECAF2C(&qword_2800F8898, &qword_2800F88A0, 0x277D5A170, &protocol conformance descriptor for PSESchemaPSEAppIntentInteractionEngagement);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674843B0);
  return v7(v9, 0);
}

uint64_t sub_267248A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267248AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEAppLaunchReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267484410, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267484430, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267484450, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267484470, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674844A0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267248E90(uint64_t a1)
{
  v2 = sub_267248F94(&qword_2800F88C0, &protocol conformance descriptor for PSESchemaPSEAppLaunchReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267248EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267248F94(&qword_2800F88C0, &protocol conformance descriptor for PSESchemaPSEAppLaunchReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267248F94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEAppLaunchReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSECall.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = sub_26738113C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v39 = a2;
  sub_26738119C();
  v42 = *MEMORY[0x277D3E518];
  v9 = *(v3 + 104);
  v41 = v3 + 104;
  v38 = v9;
  v9(v5);
  v43[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v40 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674844F0);
  v12(v43, 0);
  v33 = "callDurationInSeconds";
  v13 = v37;
  v14 = v38;
  v38(v5, *MEMORY[0x277D3E4E8], v37);
  v43[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v33 | 0x8000000000000000);
  v15(v43, 0);
  v33 = "hasUserInitiatedFollowup";
  v35 = v5;
  v14(v5, v42, v13);
  v43[0] = 1;
  sub_26738114C();
  v16 = v40;
  v40(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v33 | 0x8000000000000000);
  v17(v43, 0);
  type metadata accessor for PSESchemaPSECallStatus(0);
  sub_2672499D0(&qword_2800F88C8, type metadata accessor for PSESchemaPSECallStatus, &protocol conformance descriptor for PSESchemaPSECallStatus);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267484550);
  v18(v43, 0);
  type metadata accessor for PSESchemaPSECallDisconnectedReason(0);
  sub_2672499D0(&qword_2800F88D0, type metadata accessor for PSESchemaPSECallDisconnectedReason, &protocol conformance descriptor for PSESchemaPSECallDisconnectedReason);
  sub_26738120C();
  v34 = v10;
  v16(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267484570);
  v19(v43, 0);
  type metadata accessor for PSESchemaPSEMessageContactMatch(0);
  sub_2672499D0(&qword_2800F88D8, type metadata accessor for PSESchemaPSEMessageContactMatch, &protocol conformance descriptor for PSESchemaPSEMessageContactMatch);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x4D746361746E6F63, 0xEC00000068637461);
  v20(v43, 0);
  v36 = "disconnectedReason";
  v21 = v35;
  v22 = v42;
  v24 = v37;
  v23 = v38;
  v38(v35, v42, v37);
  v43[0] = 1;
  sub_26738114C();
  v25 = v34;
  v40(v8, 0, 1, v34);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v36 | 0x8000000000000000);
  v26(v43, 0);
  v36 = "contactFullNamePhoneticScore";
  v23(v21, v22, v24);
  v43[0] = 1;
  sub_26738114C();
  v27 = v25;
  v28 = v25;
  v29 = v40;
  v40(v8, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v36 | 0x8000000000000000);
  v30(v43, 0);
  v23(v21, v42, v24);
  v43[0] = 1;
  sub_26738114C();
  v29(v8, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x80000002674845D0);
  return v31(v43, 0);
}

uint64_t sub_2672498C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267249928(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672499D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267249A18()
{
  result = qword_2800F88E8;
  if (!qword_2800F88E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F88E8);
  }

  return result;
}

uint64_t static PSESchemaPSECallDisconnectedReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267484630, isUniquelyReferenced_nonNull_native);
  *v3 = v158;

  v1(v197, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267484660, v8);
  *v7 = v159;

  v5(v197, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267484690, v12);
  *v11 = v160;

  v9(v197, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674846C0, v16);
  *v15 = v161;

  v13(v197, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674846F0, v20);
  *v19 = v162;

  v17(v197, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000045, 0x8000000267484720, v24);
  *v23 = v163;

  v21(v197, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x8000000267484770, v28);
  *v27 = v164;

  v25(v197, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674847A0, v32);
  *v31 = v165;

  v29(v197, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x80000002674847D0, v36);
  *v35 = v166;

  v33(v197, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002DLL, 0x8000000267484800, v40);
  *v39 = v167;

  v37(v197, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002DLL, 0x8000000267484830, v44);
  *v43 = v168;

  v41(v197, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000025, 0x8000000267484860, v48);
  *v47 = v169;

  v45(v197, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000025, 0x8000000267484890, v52);
  *v51 = v170;

  v49(v197, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002BLL, 0x80000002674848C0, v56);
  *v55 = v171;

  v53(v197, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000038, 0x80000002674848F0, v60);
  *v59 = v172;

  v57(v197, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000036, 0x8000000267484930, v64);
  *v63 = v173;

  v61(v197, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002ALL, 0x8000000267484970, v68);
  *v67 = v174;

  v65(v197, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002CLL, 0x80000002674849A0, v72);
  *v71 = v175;

  v69(v197, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002CLL, 0x80000002674849D0, v76);
  *v75 = v176;

  v73(v197, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000024, 0x8000000267484A00, v80);
  *v79 = v177;

  v77(v197, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000002CLL, 0x8000000267484A30, v84);
  *v83 = v178;

  v81(v197, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000026, 0x8000000267484A60, v88);
  *v87 = v179;

  v85(v197, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000002ALL, 0x8000000267484A90, v92);
  *v91 = v180;

  v89(v197, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000002CLL, 0x8000000267484AC0, v96);
  *v95 = v181;

  v93(v197, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002ELL, 0x8000000267484AF0, v100);
  *v99 = v182;

  v97(v197, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000003ALL, 0x8000000267484B20, v104);
  *v103 = v183;

  v101(v197, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000020, 0x8000000267484B60, v108);
  *v107 = v184;

  v105(v197, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000034, 0x8000000267484B90, v112);
  *v111 = v185;

  v109(v197, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000033, 0x8000000267484BD0, v116);
  *v115 = v186;

  v113(v197, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000035, 0x8000000267484C10, v120);
  *v119 = v187;

  v117(v197, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000033, 0x8000000267484C50, v124);
  *v123 = v188;

  v121(v197, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000037, 0x8000000267484C90, v128);
  *v127 = v189;

  v125(v197, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000036, 0x8000000267484CD0, v132);
  *v131 = v190;

  v129(v197, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000002FLL, 0x8000000267484D10, v136);
  *v135 = v191;

  v133(v197, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000024, 0x8000000267484D40, v140);
  *v139 = v192;

  v137(v197, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000033, 0x8000000267484D70, v144);
  *v143 = v193;

  v141(v197, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000030, 0x8000000267484DB0, v148);
  *v147 = v194;

  v145(v197, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(1000, 0xD00000000000002CLL, 0x8000000267484DF0, v152);
  *v151 = v195;

  v149(v197, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(1001, 0xD000000000000030, 0x8000000267484E20, v156);
  *v155 = v196;

  return v153(v197, 0);
}

uint64_t sub_26724AC6C(uint64_t a1)
{
  v2 = sub_26724AD70(&qword_2800F88F0, &protocol conformance descriptor for PSESchemaPSECallDisconnectedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724ACD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724AD70(&qword_2800F88F0, &protocol conformance descriptor for PSESchemaPSECallDisconnectedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724AD70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSECallDisconnectedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSECallSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F88E8, 0x277D5A180);
  sub_266ECAF2C(&qword_2800F88E0, &qword_2800F88E8, 0x277D5A180, &protocol conformance descriptor for PSESchemaPSECall);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6769536C6C6163, 0xEA00000000006C61);
  return v7(v9, 0);
}

uint64_t sub_26724B088(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724B0EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSECallStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267484ED0, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267484EF0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267484F20, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267484F50, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x8000000267484F80, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267484FA0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x8000000267484FC0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x8000000267484FE0, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267485000, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000011, 0x8000000267485020, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001CLL, 0x8000000267485040, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_26724B73C(uint64_t a1)
{
  v2 = sub_26724B840(&qword_2800F8908, &protocol conformance descriptor for PSESchemaPSECallStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724B7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724B840(&qword_2800F8908, &protocol conformance descriptor for PSESchemaPSECallStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724B840(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSECallStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v59 = a1;
  v1 = sub_26738118C();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8910, 0x277D5A198);
  sub_266ECAF2C(&qword_2800F8918, &qword_2800F8910, 0x277D5A198, &protocol conformance descriptor for PSESchemaPSEClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v61, 0);
  sub_266ECB294(0, &qword_2800F8920, 0x277D5A1A8);
  sub_266ECAF2C(&qword_2800F8928, &qword_2800F8920, 0x277D5A1A8, &protocol conformance descriptor for PSESchemaPSEGenericSignalGenerated);
  sub_26738121C();
  v52 = v7 + 56;
  v57 = v8;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x8000000267485090);
  v10(v61, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v60, 0xD000000000000016, 0x8000000267485090);
  v13 = *(v7 + 48);
  v58 = v7 + 48;
  v56 = v13;
  if (!v13(v14, 1, v6))
  {
    sub_266ECB128(&unk_28788D400);
    sub_26738115C();
  }

  (v12)(v60, 0);
  v11(v61, 0);
  sub_266ECB294(0, &qword_2800F8900, 0x277D5A188);
  sub_266ECAF2C(&qword_2800F88F8, &qword_2800F8900, 0x277D5A188, &protocol conformance descriptor for PSESchemaPSECallSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674850B0);
  v15(v61, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v60, 0xD000000000000013, 0x80000002674850B0);
  if (!v56(v18, 1, v6))
  {
    sub_266ECB128(&unk_28788D428);
    sub_26738115C();
  }

  (v17)(v60, 0);
  v16(v61, 0);
  sub_266ECB294(0, &qword_2800F8930, 0x277D5A200);
  sub_266ECAF2C(&qword_2800F8938, &qword_2800F8930, 0x277D5A200, &protocol conformance descriptor for PSESchemaPSEMessageSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674850D0);
  v19(v61, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v60, 0xD000000000000016, 0x80000002674850D0);
  if (!v56(v22, 1, v6))
  {
    sub_266ECB128(&unk_28788D450);
    sub_26738115C();
  }

  (v21)(v60, 0);
  v20(v61, 0);
  sub_266ECB294(0, &qword_2800F8940, 0x277D5A1E8);
  sub_266ECAF2C(&qword_2800F8948, &qword_2800F8940, 0x277D5A1E8, &protocol conformance descriptor for PSESchemaPSEMediaSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x80000002674850F0);
  v23(v61, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v60, 0xD000000000000014, 0x80000002674850F0);
  if (!v56(v26, 1, v6))
  {
    sub_266ECB128(&unk_28788D478);
    sub_26738115C();
  }

  (v25)(v60, 0);
  v24(v61, 0);
  sub_266ECB294(0, &qword_2800F8950, 0x277D5A1B8);
  sub_266ECAF2C(&qword_2800F8958, &qword_2800F8950, 0x277D5A1B8, &protocol conformance descriptor for PSESchemaPSEHomeFollowupSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x8000000267485110);
  v27(v61, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v60, 0xD00000000000001BLL, 0x8000000267485110);
  if (!v56(v30, 1, v6))
  {
    sub_266ECB128(&unk_28788D4A0);
    sub_26738115C();
  }

  (v29)(v60, 0);
  v28(v61, 0);
  sub_266ECB294(0, &qword_2800F8960, 0x277D5A1C8);
  sub_266ECAF2C(&qword_2800F8968, &qword_2800F8960, 0x277D5A1C8, &protocol conformance descriptor for PSESchemaPSEMapsSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v31 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267485130);
  v31(v61, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v60, 0xD000000000000013, 0x8000000267485130);
  if (!v56(v34, 1, v6))
  {
    sub_266ECB128(&unk_28788D4C8);
    sub_26738115C();
  }

  (v33)(v60, 0);
  v32(v61, 0);
  sub_266ECB294(0, &qword_2800F8860, 0x277D5A168);
  sub_266ECAF2C(&qword_2800F8858, &qword_2800F8860, 0x277D5A168, &protocol conformance descriptor for PSESchemaPSEAlarmSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v35 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267485150);
  v35(v61, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v60, 0xD000000000000014, 0x8000000267485150);
  if (!v56(v38, 1, v6))
  {
    sub_266ECB128(&unk_28788D4F0);
    sub_26738115C();
  }

  (v37)(v60, 0);
  v36(v61, 0);
  sub_266ECB294(0, &qword_2800F88B0, 0x277D5A178);
  sub_266ECAF2C(&qword_2800F88A8, &qword_2800F88B0, 0x277D5A178, &protocol conformance descriptor for PSESchemaPSEAppIntentSignalGenerated);
  sub_26738121C();
  v57(v5, 0, 1, v6);
  v39 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267485170);
  v39(v61, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v60, 0xD000000000000018, 0x8000000267485170);
  if (!v56(v42, 1, v6))
  {
    sub_266ECB128(&unk_28788D518);
    sub_26738115C();
  }

  (v41)(v60, 0);
  v40(v61, 0);
  v43 = v53;
  sub_26738117C();
  v44 = sub_2673811BC();
  v46 = v45;
  v47 = *v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_266ECAD54(0, v47[2] + 1, 1, v47);
    *v46 = v47;
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_266ECAD54((v49 > 1), v50 + 1, 1, v47);
    *v46 = v47;
  }

  v47[2] = v50 + 1;
  (*(v54 + 32))(v47 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50, v43, v55);
  v44(v61, 0);
  sub_266ECB128(&unk_28788D540);
  return sub_2673811CC();
}

uint64_t sub_26724C724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26724C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26724C888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724C8EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26724C94C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8970, &qword_2800F8978, 0x277D5A190, &protocol conformance descriptor for PSESchemaPSEClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8980, &qword_2800F8978, 0x277D5A190, &protocol conformance descriptor for PSESchemaPSEClientEvent);
  result = sub_266ECAF2C(&qword_2800F8988, &qword_2800F8978, 0x277D5A190, &protocol conformance descriptor for PSESchemaPSEClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static PSESchemaPSEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F69737365536975, 0xEB0000000064496ELL);
  v11(v32, 0);
  v24 = "EClientEventMetadata";
  v28 = v7;
  v26 = v6;
  sub_26738120C();
  v29 = v10;
  v27 = v9 + 56;
  v10(v5, 0, 1, v8);
  v12 = sub_2673811AC();
  v13 = v24;
  sub_266EC637C(v5, 0xD000000000000015, v24 | 0x8000000000000000);
  v12(v32, 0);
  v25 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v31, 0xD000000000000015, v13 | 0x8000000000000000);
  if (!(*(v9 + 48))(v16, 1, v8))
  {
    sub_266ECB128(&unk_28788D578);
    sub_26738115C();
  }

  (v15)(v31, 0);
  v14(v32, 0);
  type metadata accessor for PSESchemaPSESiriEngagementTaskSuccess(0);
  sub_26724D0FC(&qword_2800F8998, type metadata accessor for PSESchemaPSESiriEngagementTaskSuccess, &protocol conformance descriptor for PSESchemaPSESiriEngagementTaskSuccess);
  sub_26738120C();
  v17 = v29;
  v29(v5, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674851F0);
  v18(v32, 0);
  sub_26738120C();
  v17(v5, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B736174, 0xE600000000000000);
  v19(v32, 0);
  sub_26738120C();
  v17(v5, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449657370, 0xE500000000000000);
  v20(v32, 0);
  type metadata accessor for PSESchemaPSETriggerOrigin(0);
  sub_26724D0FC(&qword_2800F89A0, type metadata accessor for PSESchemaPSETriggerOrigin, &protocol conformance descriptor for PSESchemaPSETriggerOrigin);
  sub_26738120C();
  v17(v5, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0x4F72656767697274, 0xED00006E69676972);
  return v21(v32, 0);
}

uint64_t sub_26724D038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724D09C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26724D0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PSESchemaPSECommonSignal.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = a1;
  v33 = sub_26738113C();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = *MEMORY[0x277D3E518];
  v7 = *(v1 + 104);
  v31 = v1 + 104;
  v32 = v7;
  (v7)(v3);
  v35[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v6, 0, 1, v8);
  v28[0] = v10;
  v28[1] = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x8000000267485240);
  v12(v35, 0);
  v13 = *MEMORY[0x277D3E530];
  v30 = v3;
  v14 = v3;
  v15 = v32;
  v16 = v33;
  v32(v14, v13, v33);
  v35[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E69616D6F64, 0xE600000000000000);
  v17(v35, 0);
  v15(v30, v13, v16);
  v35[0] = 1;
  sub_26738114C();
  v18 = v28[0];
  (v28[0])(v6, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F69746361, 0xE600000000000000);
  v19(v35, 0);
  type metadata accessor for PSESchemaPSEDonationSource(0);
  sub_26724DA70(&qword_2800F89A8, type metadata accessor for PSESchemaPSEDonationSource, &protocol conformance descriptor for PSESchemaPSEDonationSource);
  sub_26738120C();
  v20 = v8;
  v18(v6, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574616E6F447369, 0xEF69726953794264);
  v21(v35, 0);
  v22 = v30;
  v32(v30, *MEMORY[0x277D3E4E8], v33);
  v35[0] = 1;
  sub_26738114C();
  v18(v6, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267484510);
  v23(v35, 0);
  type metadata accessor for PSESchemaPSEAppFollowup(0);
  sub_26724DA70(&qword_2800F8868, type metadata accessor for PSESchemaPSEAppFollowup, &protocol conformance descriptor for PSESchemaPSEAppFollowup);
  sub_26738120C();
  v18(v6, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F6C6C6F46707061, 0xEB00000000707577);
  v24(v35, 0);
  v32(v22, v29, v33);
  v35[0] = 1;
  sub_26738114C();
  v18(v6, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x8000000267485270);
  v25(v35, 0);
  type metadata accessor for PSESchemaPSEAppLaunchReason(0);
  sub_26724DA70(&qword_2800F88B8, type metadata accessor for PSESchemaPSEAppLaunchReason, &protocol conformance descriptor for PSESchemaPSEAppLaunchReason);
  sub_26738120C();
  v18(v6, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E75614C707061, 0xEF6E6F7361655268);
  return v26(v35, 0);
}

uint64_t sub_26724D964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724D9C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26724DA70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26724DAB8()
{
  result = qword_2800F8848;
  if (!qword_2800F8848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8848);
  }

  return result;
}

uint64_t static PSESchemaPSEDonationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674852C0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674852E0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267485300, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267485320, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26724DD90(uint64_t a1)
{
  v2 = sub_26724DE94(&qword_2800F89B0, &protocol conformance descriptor for PSESchemaPSEDonationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724DDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724DE94(&qword_2800F89B0, &protocol conformance descriptor for PSESchemaPSEDonationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724DE94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEDonationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEGenericSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  return v5(v7, 0);
}

uint64_t sub_26724E0B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  return v5(v7, 0);
}

uint64_t sub_26724E258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724E2BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEHomeFollowUp.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PSESchemaPSEHomeFollowUpType(0);
  sub_26724EBB8(&qword_2800F89B8, type metadata accessor for PSESchemaPSEHomeFollowUpType, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v43 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7055776F6C6C6F66, 0xEC00000065707954);
  v13(v46, 0);
  type metadata accessor for PSESchemaPSEHomeFollowUpSource(0);
  sub_26724EBB8(&qword_2800F89C0, type metadata accessor for PSESchemaPSEHomeFollowUpSource, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpSource);
  sub_26738120C();
  v42 = v9;
  v11(v8, 0, 1, v9);
  v39 = v11;
  v40 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7055776F6C6C6F66, 0xEE00656372756F53);
  v14(v46, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = v44;
  v17 = *(v45 + 104);
  v45 += 104;
  v18 = v41;
  v17(v41, v15, v44);
  v19 = v17;
  v38 = v17;
  v46[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674853B0);
  v20(v46, 0);
  v19(v18, *MEMORY[0x277D3E4E8], v16);
  v46[0] = 1;
  sub_26738114C();
  v21 = v42;
  v22 = v39;
  v39(v8, 0, 1, v42);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x80000002674853D0);
  v23(v46, 0);
  v36 = "ContainerAsSiriRequest";
  v37 = *MEMORY[0x277D3E538];
  v24 = v18;
  v25 = v18;
  v26 = v44;
  v27 = v38;
  (v38)(v25);
  v46[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v21);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v36 | 0x8000000000000000);
  v28(v46, 0);
  v36 = "followUpDayOfWeek";
  v29 = v24;
  v30 = v24;
  v31 = v37;
  v27(v30, v37, v26);
  v46[0] = 1;
  sub_26738114C();
  v32 = v42;
  v22(v8, 0, 1, v42);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v36 | 0x8000000000000000);
  v33(v46, 0);
  v27(v29, v31, v44);
  v46[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v32);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x8000000267485440);
  return v34(v46, 0);
}

uint64_t sub_26724EAAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724EB10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26724EBB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26724EC00()
{
  result = qword_2800F89D0;
  if (!qword_2800F89D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F89D0);
  }

  return result;
}

uint64_t static PSESchemaPSEHomeFollowupSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F89D0, 0x277D5A1B0);
  sub_266ECAF2C(&qword_2800F89C8, &qword_2800F89D0, 0x277D5A1B0, &protocol conformance descriptor for PSESchemaPSEHomeFollowUp);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674854B0);
  return v7(v9, 0);
}

uint64_t sub_26724EF24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724EF88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEHomeFollowUpSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267485510, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267485530, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267485550, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267485570, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267485590, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26724F324(uint64_t a1)
{
  v2 = sub_26724F428(&qword_2800F89D8, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724F38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724F428(&qword_2800F89D8, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724F428(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEHomeFollowUpSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEHomeFollowUpType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674855F0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267485610, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267485630, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267485650, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267485670, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26724F760(uint64_t a1)
{
  v2 = sub_26724F864(&qword_2800F89E0, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26724F7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26724F864(&qword_2800F89E0, &protocol conformance descriptor for PSESchemaPSEHomeFollowUpType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26724F864(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEHomeFollowUpType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMaps.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674838C0);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F89E8, 0x277D5A1D0);
  sub_266ECAF2C(&qword_2800F89F0, &qword_2800F89E8, 0x277D5A1D0, &protocol conformance descriptor for PSESchemaPSEMapsUserFollowup);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7075776F6C6C6F66, 0xE800000000000000);
  return v11(v13, 0);
}

uint64_t sub_26724FBDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26724FC40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEMapsAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267485700, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267485720, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267485740, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267485760, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267485780, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674857A0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x80000002674857C0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672500BC(uint64_t a1)
{
  v2 = sub_2672501C0(&qword_2800F8A10, &protocol conformance descriptor for PSESchemaPSEMapsAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267250124(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672501C0(&qword_2800F8A10, &protocol conformance descriptor for PSESchemaPSEMapsAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672501C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMapsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMapsFollowup.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267485810, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267485830, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267485850, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267250418(uint64_t a1)
{
  v2 = sub_26725051C(&qword_2800F8A20, &protocol conformance descriptor for PSESchemaPSEMapsFollowup);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267250480(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725051C(&qword_2800F8A20, &protocol conformance descriptor for PSESchemaPSEMapsFollowup);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725051C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMapsFollowup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMapsSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F8A00, 0x277D5A1C0);
  sub_266ECAF2C(&qword_2800F89F8, &qword_2800F8A00, 0x277D5A1C0, &protocol conformance descriptor for PSESchemaPSEMaps);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6769537370616DLL, 0xEA00000000006C61);
  return v7(v9, 0);
}

uint64_t sub_267250834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267250898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEMapsUserFollowup.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for PSESchemaPSEMapsFollowup(0);
  sub_267250E34(&qword_2800F8A18, type metadata accessor for PSESchemaPSEMapsFollowup, &protocol conformance descriptor for PSESchemaPSEMapsFollowup);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7075776F6C6C6F66, 0xEC00000065707954);
  v9(v15, 0);
  type metadata accessor for PSESchemaPSEMapsAction(0);
  sub_267250E34(&qword_2800F8A08, type metadata accessor for PSESchemaPSEMapsAction, &protocol conformance descriptor for PSESchemaPSEMapsAction);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463417370616DLL, 0xEA00000000006E6FLL);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463417370616DLL, 0xEE00657079546E6FLL);
  return v11(v15, 0);
}

uint64_t sub_267250D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267250D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267250E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267250E7C()
{
  result = qword_2800F89E8;
  if (!qword_2800F89E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F89E8);
  }

  return result;
}

uint64_t static PSESchemaPSEMedia.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E518], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267485930);
  v10(v14, 0);
  type metadata accessor for PSESchemaPSEMediaContentDurationBucket(0);
  sub_26725135C();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267485950);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F8A30, 0x277D5A1F0);
  sub_266ECAF2C(&qword_2800F8A38, &qword_2800F8A30, 0x277D5A1F0, &protocol conformance descriptor for PSESchemaPSEMediaUserFollowupAction);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267485970);
  return v12(v14, 0);
}

uint64_t sub_267251298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672512FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725135C()
{
  result = qword_2800F8A28;
  if (!qword_2800F8A28)
  {
    type metadata accessor for PSESchemaPSEMediaContentDurationBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8A28);
  }

  return result;
}

uint64_t static PSESchemaPSEMediaContentDurationBucket.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674859D0, isUniquelyReferenced_nonNull_native);
  *v3 = v74;

  v1(v92, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267485A00, v8);
  *v7 = v75;

  v5(v92, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267485A30, v12);
  *v11 = v76;

  v9(v92, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x8000000267485A60, v16);
  *v15 = v77;

  v13(v92, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x8000000267485A90, v20);
  *v19 = v78;

  v17(v92, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x8000000267485AC0, v24);
  *v23 = v79;

  v21(v92, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x8000000267485AF0, v28);
  *v27 = v80;

  v25(v92, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x8000000267485B20, v32);
  *v31 = v81;

  v29(v92, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x8000000267485B50, v36);
  *v35 = v82;

  v33(v92, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ELL, 0x8000000267485B80, v40);
  *v39 = v83;

  v37(v92, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002CLL, 0x8000000267485BB0, v44);
  *v43 = v84;

  v41(v92, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002CLL, 0x8000000267485BE0, v48);
  *v47 = v85;

  v45(v92, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002CLL, 0x8000000267485C10, v52);
  *v51 = v86;

  v49(v92, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002CLL, 0x8000000267485C40, v56);
  *v55 = v87;

  v53(v92, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002DLL, 0x8000000267485C70, v60);
  *v59 = v88;

  v57(v92, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002ELL, 0x8000000267485CA0, v64);
  *v63 = v89;

  v61(v92, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002FLL, 0x8000000267485CD0, v68);
  *v67 = v90;

  v65(v92, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002FLL, 0x8000000267485D00, v72);
  *v71 = v91;

  return v69(v92, 0);
}

uint64_t sub_267251CC8(uint64_t a1)
{
  v2 = sub_267251DCC(&qword_2800F8A50, &protocol conformance descriptor for PSESchemaPSEMediaContentDurationBucket);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267251D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_267251DCC(&qword_2800F8A50, &protocol conformance descriptor for PSESchemaPSEMediaContentDurationBucket);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267251DCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMediaContentDurationBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMediaEntitySimilarity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v31 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a1;
  sub_26738119C();
  v29 = "EMediaEntitySimilarity";
  v9 = *MEMORY[0x277D3E4E8];
  v30 = *(v3 + 104);
  v30(v5, v9, v2);
  v25 = v3 + 104;
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v28 = v11 + 56;
  v26 = v10;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v29 | 0x8000000000000000);
  v13(v32, 0);
  v29 = "isSameMediaTitle";
  v14 = v9;
  v15 = v9;
  v24 = v9;
  v16 = v30;
  v17 = v31;
  v30(v5, v14, v31);
  v32[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v29 | 0x8000000000000000);
  v18(v32, 0);
  v29 = "isSameMediaArtist";
  v16(v5, v15, v17);
  v32[0] = 1;
  sub_26738114C();
  v19 = v26;
  v12(v8, 0, 1, v26);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v29 | 0x8000000000000000);
  v20(v32, 0);
  v16(v5, v24, v31);
  v32[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x654D656D61537369, 0xEF6D657449616964);
  return v21(v32, 0);
}

uint64_t sub_2672522F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267252358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672523BC()
{
  result = qword_2800F8A58;
  if (!qword_2800F8A58)
  {
    sub_267252414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8A58);
  }

  return result;
}

unint64_t sub_267252414()
{
  result = qword_2800F8A60;
  if (!qword_2800F8A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8A60);
  }

  return result;
}

uint64_t static PSESchemaPSEMediaSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F8A48, 0x277D5A1D8);
  sub_266ECAF2C(&qword_2800F8A40, &qword_2800F8A48, 0x277D5A1D8, &protocol conformance descriptor for PSESchemaPSEMedia);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676953616964656DLL, 0xEB000000006C616ELL);
  return v7(v9, 0);
}

uint64_t sub_267252738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725279C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEMediaUserFollowupAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaMediaPlayBackState(0);
  sub_267253100(&qword_2800EFAD8, type metadata accessor for SISchemaMediaPlayBackState, &protocol conformance descriptor for SISchemaMediaPlayBackState);
  v35 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v34 = v10;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574617473, 0xE500000000000000);
  v14(v41, 0);
  type metadata accessor for PSESchemaPSEMediaContentDurationBucket(0);
  sub_267253100(&qword_2800F8A28, type metadata accessor for PSESchemaPSEMediaContentDurationBucket, &protocol conformance descriptor for PSESchemaPSEMediaContentDurationBucket);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v32 = v12;
  v33 = v13;
  v31 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x8000000267485950);
  v15(v41, 0);
  v17 = v39;
  v19 = v40 + 104;
  v18 = *(v40 + 104);
  v37 = *MEMORY[0x277D3E4E8];
  v16 = v37;
  v18(v38, v37, v39);
  v36 = v18;
  v40 = v19;
  v41[0] = 1;
  sub_26738114C();
  v20 = v34;
  v12(v9, 0, 1, v34);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x7041656D61537369, 0xED00006465735570);
  v21(v41, 0);
  v18(v38, v16, v17);
  v41[0] = 1;
  sub_26738114C();
  v22 = v32;
  v32(v9, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267485E50);
  v23(v41, 0);
  sub_266ECB294(0, &qword_2800F8A60, 0x277D5A1E0);
  sub_266ECAF2C(&qword_2800F8A58, &qword_2800F8A60, 0x277D5A1E0, &protocol conformance descriptor for PSESchemaPSEMediaEntitySimilarity);
  sub_26738120C();
  v24 = v20;
  v22(v9, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267485E70);
  v25(v41, 0);
  v26 = v38;
  v36(v38, v37, v39);
  v41[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x616C507269417369, 0xE900000000000079);
  v27(v41, 0);
  type metadata accessor for SISchemaMediaType(0);
  sub_267253100(&qword_2800F8A68, type metadata accessor for SISchemaMediaType, &protocol conformance descriptor for SISchemaMediaType);
  sub_26738120C();
  v22(v9, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x707954616964656DLL, 0xE900000000000065);
  v28(v41, 0);
  v36(v26, v37, v39);
  v41[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x7263736275537369, 0xEC00000072656269);
  return v29(v41, 0);
}

uint64_t sub_26725303C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672530A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267253100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PSESchemaPSEMessage.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v39 = "callDurationInSeconds";
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v38 = v3;
  v11(v6, v10, v3);
  v33 = v11;
  v34 = v4 + 104;
  v40[0] = 1;
  sub_26738114C();
  v36 = sub_26738116C();
  v12 = *(v36 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v36);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v39 | 0x8000000000000000);
  v15(v40, 0);
  LODWORD(v39) = *MEMORY[0x277D3E518];
  v32 = v6;
  (v11)(v6);
  v40[0] = 1;
  sub_26738114C();
  v16 = v36;
  v13(v9, 0, 1, v36);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002FLL, 0x8000000267485EC0);
  v17(v40, 0);
  type metadata accessor for PSESchemaPSEMessageUserFollowupAction(0);
  sub_2672539D0(&qword_2800F8A70, type metadata accessor for PSESchemaPSEMessageUserFollowupAction, &protocol conformance descriptor for PSESchemaPSEMessageUserFollowupAction);
  sub_26738120C();
  v13(v9, 0, 1, v16);
  v31[0] = v13;
  v31[1] = v14;
  v37 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267485EF0);
  v18(v40, 0);
  type metadata accessor for PSESchemaPSEMessageContactMatch(0);
  sub_2672539D0(&qword_2800F88D8, type metadata accessor for PSESchemaPSEMessageContactMatch, &protocol conformance descriptor for PSESchemaPSEMessageContactMatch);
  sub_26738120C();
  v13(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D746361746E6F63, 0xEC00000068637461);
  v19(v40, 0);
  v35 = "disconnectedReason";
  v21 = v32;
  v20 = v33;
  v22 = v39;
  v23 = v38;
  v33(v32, v39, v38);
  v40[0] = 1;
  sub_26738114C();
  v24 = v16;
  v25 = v31[0];
  (v31[0])(v9, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v35 | 0x8000000000000000);
  v26(v40, 0);
  v35 = "contactFullNamePhoneticScore";
  v20(v21, v22, v23);
  v40[0] = 1;
  sub_26738114C();
  v27 = v36;
  v25(v9, 0, 1, v36);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v35 | 0x8000000000000000);
  v28(v40, 0);
  v20(v21, v39, v38);
  v40[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x80000002674845D0);
  return v29(v40, 0);
}

uint64_t sub_2672538C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267253928(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672539D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267253A18()
{
  result = qword_2800F8A80;
  if (!qword_2800F8A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8A80);
  }

  return result;
}

uint64_t static PSESchemaPSEMessageContactMatch.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267485F50, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267485F70, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267485F90, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x8000000267485FB0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267253CE8(uint64_t a1)
{
  v2 = sub_267253DEC(&qword_2800F8A88, &protocol conformance descriptor for PSESchemaPSEMessageContactMatch);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267253D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_267253DEC(&qword_2800F8A88, &protocol conformance descriptor for PSESchemaPSEMessageContactMatch);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267253DEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMessageContactMatch(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMessageSignalGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0, &protocol conformance descriptor for PSESchemaPSECommonSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F8A80, 0x277D5A1F8);
  sub_266ECAF2C(&qword_2800F8A78, &qword_2800F8A80, 0x277D5A1F8, &protocol conformance descriptor for PSESchemaPSEMessage);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x536567617373656DLL, 0xED00006C616E6769);
  return v7(v9, 0);
}

uint64_t sub_26725410C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267254170(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEMessageUserFollowupAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267486060, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267486090, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674860C0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x80000002674860F0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267486120, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267254514(uint64_t a1)
{
  v2 = sub_267254618(&qword_2800F8A90, &protocol conformance descriptor for PSESchemaPSEMessageUserFollowupAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725457C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254618(&qword_2800F8A90, &protocol conformance descriptor for PSESchemaPSEMessageUserFollowupAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254618(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMessageUserFollowupAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSESiriEngagementTaskSuccess.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267486190, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674861C0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674861F0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267486220, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267486250, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267254954(uint64_t a1)
{
  v2 = sub_267254A58(&qword_2800F8A98, &protocol conformance descriptor for PSESchemaPSESiriEngagementTaskSuccess);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672549BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254A58(&qword_2800F8A98, &protocol conformance descriptor for PSESchemaPSESiriEngagementTaskSuccess);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254A58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSESiriEngagementTaskSuccess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSETriggerOrigin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674862B0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674862D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x80000002674862F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267486310, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267254D24(uint64_t a1)
{
  v2 = sub_267254E28(&qword_2800F8AA0, &protocol conformance descriptor for PSESchemaPSETriggerOrigin);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267254D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254E28(&qword_2800F8AA0, &protocol conformance descriptor for PSESchemaPSETriggerOrigin);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254E28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSETriggerOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDAppPreLaunchTriggered.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.qd.QDAppPreLaunchTriggered";
  v9 = *MEMORY[0x277D3E4E8];
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
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267486380);
  return v14(v19, 0);
}

uint64_t sub_26725519C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267255200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267255264()
{
  result = qword_2800F8AA8;
  if (!qword_2800F8AA8)
  {
    sub_2672552BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8AA8);
  }

  return result;
}

unint64_t sub_2672552BC()
{
  result = qword_2800F8AB0;
  if (!qword_2800F8AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8AB0);
  }

  return result;
}

uint64_t static QDSchemaQDCaller.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x80000002674863C0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674863E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267486400, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267486420, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x8000000267486450, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267255604(uint64_t a1)
{
  v2 = sub_267255708(&qword_2800F8AC0, &protocol conformance descriptor for QDSchemaQDCaller);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725566C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267255708(&qword_2800F8AC0, &protocol conformance descriptor for QDSchemaQDCaller);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267255708(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8AC8, 0x277D5A218);
  sub_266ECAF2C(&qword_2800F8AD0, &qword_2800F8AC8, 0x277D5A218, &protocol conformance descriptor for QDSchemaQDClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F8AD8, 0x277D5A228);
  sub_266ECAF2C(&qword_2800F8AE0, &qword_2800F8AD8, 0x277D5A228, &protocol conformance descriptor for QDSchemaQDCollectionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674864A0);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F8AE8, 0x277D5A248);
  sub_266ECAF2C(&qword_2800F8AF0, &qword_2800F8AE8, 0x277D5A248, &protocol conformance descriptor for QDSchemaQDEntitiesCollected);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674864C0);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F8AF8, 0x277D5A2C8);
  sub_266ECAF2C(&qword_2800F8B00, &qword_2800F8AF8, 0x277D5A2C8, &protocol conformance descriptor for QDSchemaQDTuplesGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x654773656C707574, 0xEF6465746172656ELL);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F8B08, 0x277D5A250);
  sub_266ECAF2C(&qword_2800F8B10, &qword_2800F8B08, 0x277D5A250, &protocol conformance descriptor for QDSchemaQDEntitiesRanked);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x7365697469746E65, 0xEE0064656B6E6152);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F8B18, 0x277D5A280);
  sub_266ECAF2C(&qword_2800F8B20, &qword_2800F8B18, 0x277D5A280, &protocol conformance descriptor for QDSchemaQDSubComponentContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x80000002674864E0);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F8B28, 0x277D5A240);
  sub_266ECAF2C(&qword_2800F8B30, &qword_2800F8B28, 0x277D5A240, &protocol conformance descriptor for QDSchemaQDContextStatementIdsReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x8000000267486500);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F8AB0, 0x277D5A208);
  sub_266ECAF2C(&qword_2800F8AA8, &qword_2800F8AB0, 0x277D5A208, &protocol conformance descriptor for QDSchemaQDAppPreLaunchTriggered);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x8000000267486520);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F8B38, 0x277D5A2C0);
  sub_266ECAF2C(&qword_2800F8B40, &qword_2800F8B38, 0x277D5A2C0, &protocol conformance descriptor for QDSchemaQDToolboxSizeReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267486540);
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
  sub_266ECB128(&unk_28788D5A8);
  return sub_2673811CC();
}

uint64_t sub_267256168(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267256200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672562CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267256390(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8B48, &qword_2800F8B50, 0x277D5A210, &protocol conformance descriptor for QDSchemaQDClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8B58, &qword_2800F8B50, 0x277D5A210, &protocol conformance descriptor for QDSchemaQDClientEvent);
  result = sub_266ECAF2C(&qword_2800F8B60, &qword_2800F8B50, 0x277D5A210, &protocol conformance descriptor for QDSchemaQDClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static QDSchemaQDClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682531441, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682531441, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D5E0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267256724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDCollectionCompleted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267256A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256AD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267256B3C()
{
  result = qword_2800F8B70;
  if (!qword_2800F8B70)
  {
    sub_267256B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B70);
  }

  return result;
}

unint64_t sub_267256B94()
{
  result = qword_2800F8B78;
  if (!qword_2800F8B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B78);
  }

  return result;
}

uint64_t static QDSchemaQDCollectionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8B80, 0x277D5A238);
  sub_266ECAF2C(&qword_2800F8B88, &qword_2800F8B80, 0x277D5A238, &protocol conformance descriptor for QDSchemaQDCollectionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8B78, 0x277D5A220);
  sub_266ECAF2C(&qword_2800F8B70, &qword_2800F8B78, 0x277D5A220, &protocol conformance descriptor for QDSchemaQDCollectionCompleted);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8B90, 0x277D5A230);
  sub_266ECAF2C(&qword_2800F8B98, &qword_2800F8B90, 0x277D5A230, &protocol conformance descriptor for QDSchemaQDCollectionFailed);
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

uint64_t sub_2672570F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725715C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDCollectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_26725752C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672575F4()
{
  result = qword_2800F8B98;
  if (!qword_2800F8B98)
  {
    sub_26725764C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B98);
  }

  return result;
}

unint64_t sub_26725764C()
{
  result = qword_2800F8B90;
  if (!qword_2800F8B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B90);
  }

  return result;
}

uint64_t static QDSchemaQDCollectionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v13, 0);
  type metadata accessor for QDSchemaQDCaller(0);
  sub_267257AC0(&qword_2800F8AB8, type metadata accessor for QDSchemaQDCaller, &protocol conformance descriptor for QDSchemaQDCaller);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7372656C6C6163, 0xE700000000000000);
  return v11(v13, 0);
}

uint64_t sub_2672579B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257A18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267257AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267257B08()
{
  result = qword_2800F8B80;
  if (!qword_2800F8B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B80);
  }

  return result;
}

uint64_t static QDSchemaQDContextStatementIdsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000013, 0x8000000267486690);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0xD000000000000013, 0x8000000267486690);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788D610);
    sub_26738115C();
  }

  (v10)(v18, 0);
  v9(v19, 0);
  (*(v15 + 104))(v16, *MEMORY[0x277D3E538], v17);
  v19[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0xD00000000000001CLL, 0x80000002674866B0);
  return v12(v19, 0);
}

uint64_t sub_267257F40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257FA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDDataProtectionClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267486700, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267486720, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267486740, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267486760, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267486780, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x80000002674867A0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x80000002674867C0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267258430(uint64_t a1)
{
  v2 = sub_267258534(&qword_2800F8BA8, &protocol conformance descriptor for QDSchemaQDDataProtectionClass);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267258498(uint64_t a1, uint64_t a2)
{
  v4 = sub_267258534(&qword_2800F8BA8, &protocol conformance descriptor for QDSchemaQDDataProtectionClass);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267258534(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDDataProtectionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDEntitiesCollected.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v25 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v7 = sub_26738116C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 56);
  v22[1] = v26 + 56;
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6576656972746572, 0xEE00736C6F6F5464);
  v9(v28, 0);
  v24 = "iri.qd.QDEntitiesCollected";
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, v24 | 0x8000000000000000);
  v10(v28, 0);
  v24 = a1;
  sub_26738122C();
  v23 = v8;
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267486830);
  v11(v28, 0);
  v25 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v27, 0xD000000000000010, 0x8000000267486830);
  v14 = *(v26 + 48);
  v26 += 48;
  v22[0] = v14;
  if (!v14(v15, 1, v7))
  {
    sub_266ECB128(&unk_28788D638);
    sub_26738115C();
  }

  (v13)(v27, 0);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F8BB0, 0x277D5A268);
  sub_266ECAF2C(&qword_2800F8BB8, &qword_2800F8BB0, 0x277D5A268, &protocol conformance descriptor for QDSchemaQDRetrievedContextStatement);
  sub_26738122C();
  v23(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465726975716572, 0xEF747865746E6F43);
  v16(v28, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v27, 0x6465726975716572, 0xEF747865746E6F43);
  if (!(v22[0])(v19, 1, v7))
  {
    sub_266ECB128(&unk_28788D660);
    sub_26738115C();
  }

  (v18)(v27, 0);
  v17(v28, 0);
  sub_26738122C();
  v23(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x747865746E6F63, 0xE700000000000000);
  return v20(v28, 0);
}

uint64_t sub_267258B5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267258BC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDEntitiesRanked.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8BC0, 0x277D5A270);
  sub_266ECAF2C(&qword_2800F8BC8, &qword_2800F8BC0, 0x277D5A270, &protocol conformance descriptor for QDSchemaQDRetrievedTool);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6576656972746572, 0xEE00736C6F6F5464);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F8BD0, 0x277D5A278);
  sub_266ECAF2C(&qword_2800F8BD8, &qword_2800F8BD0, 0x277D5A278, &protocol conformance descriptor for QDSchemaQDSpanMatchedEntity);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267486810);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F8BB0, 0x277D5A268);
  sub_266ECAF2C(&qword_2800F8BB8, &qword_2800F8BB0, 0x277D5A268, &protocol conformance descriptor for QDSchemaQDRetrievedContextStatement);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267486830);
  return v8(v10, 0);
}

uint64_t sub_267259014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267259078(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDEntityContextType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674868B0, isUniquelyReferenced_nonNull_native);
  *v3 = v130;

  v1(v162, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674868D0, v8);
  *v7 = v131;

  v5(v162, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267486900, v12);
  *v11 = v132;

  v9(v162, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267486930, v16);
  *v15 = v133;

  v13(v162, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267486960, v20);
  *v19 = v134;

  v17(v162, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267486990, v24);
  *v23 = v135;

  v21(v162, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x80000002674869C0, v28);
  *v27 = v136;

  v25(v162, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674869F0, v32);
  *v31 = v137;

  v29(v162, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x8000000267486A20, v36);
  *v35 = v138;

  v33(v162, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267486A50, v40);
  *v39 = v139;

  v37(v162, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000033, 0x8000000267486A80, v44);
  *v43 = v140;

  v41(v162, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000032, 0x8000000267486AC0, v48);
  *v47 = v141;

  v45(v162, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x8000000267486B00, v52);
  *v51 = v142;

  v49(v162, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002ELL, 0x8000000267486B40, v56);
  *v55 = v143;

  v53(v162, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000030, 0x8000000267486B70, v60);
  *v59 = v144;

  v57(v162, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x8000000267486BB0, v64);
  *v63 = v145;

  v61(v162, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x8000000267486BE0, v68);
  *v67 = v146;

  v65(v162, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002ALL, 0x8000000267486C10, v72);
  *v71 = v147;

  v69(v162, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x8000000267486C40, v76);
  *v75 = v148;

  v73(v162, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000002BLL, 0x8000000267486C70, v80);
  *v79 = v149;

  v77(v162, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000030, 0x8000000267486CA0, v84);
  *v83 = v150;

  v81(v162, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000029, 0x8000000267486CE0, v88);
  *v87 = v151;

  v85(v162, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000029, 0x8000000267486D10, v92);
  *v91 = v152;

  v89(v162, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000028, 0x8000000267486D40, v96);
  *v95 = v153;

  v93(v162, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000028, 0x8000000267486D70, v100);
  *v99 = v154;

  v97(v162, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000002ALL, 0x8000000267486DA0, v104);
  *v103 = v155;

  v101(v162, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000028, 0x8000000267486DD0, v108);
  *v107 = v156;

  v105(v162, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x8000000267486E00, v112);
  *v111 = v157;

  v109(v162, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000032, 0x8000000267486E30, v116);
  *v115 = v158;

  v113(v162, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000002FLL, 0x8000000267486E70, v120);
  *v119 = v159;

  v117(v162, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x8000000267486EA0, v124);
  *v123 = v160;

  v121(v162, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000021, 0x8000000267486ED0, v128);
  *v127 = v161;

  return v125(v162, 0);
}

uint64_t sub_267259FFC(uint64_t a1)
{
  v2 = sub_26725A100(&qword_2800F8BE0, &protocol conformance descriptor for QDSchemaQDEntityContextType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725A064(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725A100(&qword_2800F8BE0, &protocol conformance descriptor for QDSchemaQDEntityContextType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725A100(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDEntityContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDEntityMatch.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v31 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E538];
  v9 = *(v2 + 104);
  v33 = v1;
  v9(v4, v8, v1);
  v29 = v9;
  v30 = v2 + 104;
  v35[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v32 = *(v10 - 8);
  v11 = *(v32 + 56);
  v26 = v10;
  v27 = v11;
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x646E497472617473, 0xEA00000000007865);
  v12(v35, 0);
  v28 = v4;
  v9(v4, v8, v1);
  v35[0] = 1;
  sub_26738114C();
  v13 = v26;
  v14 = v27;
  v27(v7, 0, 1, v26);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7865646E49646E65, 0xE800000000000000);
  v15(v35, 0);
  type metadata accessor for QDSchemaQDMatchingTransform(0);
  sub_26725A934(&qword_2800F8BE8, type metadata accessor for QDSchemaQDMatchingTransform, &protocol conformance descriptor for QDSchemaQDMatchingTransform);
  sub_26738122C();
  v14(v7, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267486F30);
  v16(v35, 0);
  type metadata accessor for QDSchemaQDSpanMatcherType(0);
  sub_26725A934(&qword_2800F8BF0, type metadata accessor for QDSchemaQDSpanMatcherType, &protocol conformance descriptor for QDSchemaQDSpanMatcherType);
  sub_26738120C();
  v14(v7, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265686374616DLL, 0xE700000000000000);
  v17(v35, 0);
  v18 = v28;
  v19 = v29;
  v29(v28, *MEMORY[0x277D3E500], v33);
  v35[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F6353686374616DLL, 0xEA00000000006572);
  v20(v35, 0);
  v19(v18, *MEMORY[0x277D3E530], v33);
  v35[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267486F50);
  v21(v35, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v34, 0xD000000000000011, 0x8000000267486F50);
  if (!(*(v32 + 48))(v24, 1, v13))
  {
    sub_266ECB128(&unk_28788D688);
    sub_26738115C();
  }

  (v23)(v34, 0);
  return v22(v35, 0);
}