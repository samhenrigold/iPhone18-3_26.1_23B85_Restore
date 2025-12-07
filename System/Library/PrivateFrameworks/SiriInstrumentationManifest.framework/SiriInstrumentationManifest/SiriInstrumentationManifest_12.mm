uint64_t sub_2670D3130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D3194(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D323C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670D3284()
{
  result = qword_2800F4820;
  if (!qword_2800F4820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4820);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerRejectDetected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v66 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v64 = a1;
  sub_26738119C();
  v61 = "iggerRejectDetected";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v65 = v3 + 104;
  LODWORD(v58) = v9;
  v10(v5, v9, v2);
  v62 = v10;
  v67[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v8, 0, 1, v11);
  v63 = v14;
  v60 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v61 | 0x8000000000000000);
  v15(v67, 0);
  v61 = "phsRejectBeforeActivationCount";
  v16 = v9;
  v17 = v66;
  v10(v5, v16, v66);
  v67[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v61 | 0x8000000000000000);
  v18(v67, 0);
  v61 = "eforeActivationCount";
  v19 = v62;
  (v62)(v5, v58, v17);
  v67[0] = 1;
  sub_26738114C();
  v20 = v60;
  v60(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v61 | 0x8000000000000000);
  v21(v67, 0);
  v58 = "eforeActivationCount";
  LODWORD(v61) = *MEMORY[0x277D3E500];
  v22 = v5;
  v19(v5);
  v23 = v19;
  v67[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v58 | 0x8000000000000000);
  v24(v67, 0);
  v58 = "phsRejectBeforeActivationScores";
  v25 = v61;
  v26 = v66;
  (v23)(v22, v61, v66);
  v67[0] = 1;
  sub_26738114C();
  v27 = v60;
  v60(v8, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v58 | 0x8000000000000000);
  v28(v67, 0);
  v29 = v26;
  v30 = v62;
  (v62)(v22, v25, v29);
  v67[0] = 1;
  sub_26738114C();
  v59 = v11;
  v27(v8, 0, 1, v11);
  v31 = v27;
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x800000026745A040);
  v32(v67, 0);
  v57 = "eforeActivationScores";
  LODWORD(v58) = *MEMORY[0x277D3E540];
  v33 = v66;
  v30(v22);
  v67[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v57 | 0x8000000000000000);
  v34(v67, 0);
  v57 = "ctivationTimeDiffInNs";
  v35 = v58;
  (v30)(v22, v58, v33);
  v67[0] = 1;
  sub_26738114C();
  v36 = v59;
  v31(v8, 0, 1, v59);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v57 | 0x8000000000000000);
  v37(v67, 0);
  v57 = "eforeActivationTimeDiffInNs";
  v38 = v35;
  v39 = v66;
  (v30)(v22, v38, v66);
  v67[0] = 1;
  sub_26738114C();
  v40 = v60;
  v60(v8, 0, 1, v36);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v57 | 0x8000000000000000);
  v41(v67, 0);
  v42 = v61;
  (v30)(v22, v61, v39);
  v67[0] = 1;
  sub_26738114C();
  v43 = v59;
  v40(v8, 0, 1, v59);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365726854736870, 0xEC000000646C6F68);
  v44(v67, 0);
  v56 = v22;
  v45 = v42;
  v46 = v42;
  v47 = v66;
  v48 = v62;
  (v62)(v22, v45, v66);
  v67[0] = 1;
  sub_26738114C();
  v40(v8, 0, 1, v43);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365726854736A70, 0xEC000000646C6F68);
  v49(v67, 0);
  v58 = "eforeActivationTimeDiffInNs";
  v50 = v56;
  v48(v56, v46, v47);
  v67[0] = 1;
  sub_26738114C();
  v51 = v59;
  v40(v8, 0, 1, v59);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v58 | 0x8000000000000000);
  v52(v67, 0);
  (v62)(v50, v61, v66);
  v67[0] = 1;
  sub_26738114C();
  v40(v8, 0, 1, v51);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026745A120);
  return v53(v67, 0);
}

uint64_t sub_2670D3F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D3F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D3FCC()
{
  result = qword_2800F4568;
  if (!qword_2800F4568)
  {
    sub_2670D4024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4568);
  }

  return result;
}

unint64_t sub_2670D4024()
{
  result = qword_2800F4560;
  if (!qword_2800F4560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4560);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerRePrompted.makeTypeManifestAndEnsureFields(in:)()
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
  v19 = *MEMORY[0x277D3E530];
  v7 = *(v1 + 104);
  v17 = v0;
  v18 = v7;
  v7(v3);
  v20[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6565705369726973, 0xEC00000044496863);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, *MEMORY[0x277D3E4E8], v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F725065527369, 0xEC00000064657470);
  v13(v20, 0);
  v12(v3, v19, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026745A170);
  return v14(v20, 0);
}

uint64_t sub_2670D4460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D44C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D4528()
{
  result = qword_2800F4548;
  if (!qword_2800F4548)
  {
    sub_2670D4580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4548);
  }

  return result;
}

unint64_t sub_2670D4580()
{
  result = qword_2800F4540;
  if (!qword_2800F4540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4540);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08, &protocol conformance descriptor for MHSchemaMHVoiceTriggerEventInfo);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  return v5(v7, 0);
}

uint64_t sub_2670D47C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D4828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassRejected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08, &protocol conformance descriptor for MHSchemaMHVoiceTriggerEventInfo);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  v6(v9, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(0);
  sub_2670D4C18();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2670D4B54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D4BB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D4C18()
{
  result = qword_2800F4828;
  if (!qword_2800F4828)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4828);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassRejectReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x800000026745A270, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026745A2A0, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026745A2D0, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x800000026745A300, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x800000026745A340, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026745A380, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000036, 0x800000026745A3B0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026745A3F0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026745A430, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ALL, 0x800000026745A460, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_2670D51DC(uint64_t a1)
{
  v2 = sub_2670D52E0(&qword_2800F4830, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassRejectReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D5244(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D52E0(&qword_2800F4830, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassRejectReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D52E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v67 = sub_26738113C();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v62 = a2;
  sub_26738119C();
  v61 = "iggerSecondPassStarted";
  v60 = *MEMORY[0x277D3E538];
  v65 = *(v3 + 104);
  v63 = v3 + 104;
  v65(v5);
  v69[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v55 = *(v9 - 8);
  v11 = v55 + 56;
  v10 = *(v55 + 7);
  v59 = v9;
  v10(v8, 0, 1, v9);
  v64 = v11;
  v12 = sub_2673811AC();
  v57 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, v61 | 0x8000000000000000);
  v12(v69, 0);
  LODWORD(v61) = *MEMORY[0x277D3E500];
  v13 = v67;
  v14 = v65;
  v65(v5);
  v69[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v66 = v10;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x7361507473726966, 0xEE0065726F635373);
  v15(v69, 0);
  v56 = "firstPassDetectedChannel";
  v53 = v5;
  (v14)(v5, v60, v13);
  v16 = v14;
  v69[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v59);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v56 | 0x8000000000000000);
  v17(v69, 0);
  v18 = v53;
  (v16)(v53, v61, v13);
  v69[0] = 1;
  sub_26738114C();
  v19 = v59;
  v20 = v66;
  v66(v8, 0, 1, v59);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026745A510);
  v21(v69, 0);
  sub_266ECB294(0, &qword_2800F3E00, 0x277D585D8);
  sub_266ECAF2C(&qword_2800F3DF8, &qword_2800F3E00, 0x277D585D8, &protocol conformance descriptor for MHSchemaFirstPassChannelSelectionScore);
  sub_26738122C();
  v20(v8, 0, 1, v19);
  v22 = sub_2673811AC();
  v56 = 0xD000000000000016;
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026745A530);
  v22(v69, 0);
  v54 = "channelSelectionScores";
  v60 = *MEMORY[0x277D3E540];
  v23 = v67;
  v24 = v65;
  v65(v18);
  v69[0] = 1;
  sub_26738114C();
  v66(v8, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v54 | 0x8000000000000000);
  v25(v69, 0);
  (v24)(v18, v61, v23);
  v69[0] = 1;
  sub_26738114C();
  v66(v8, 0, 1, v19);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026745A580);
  v26(v69, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v68, 0xD000000000000020, 0x800000026745A580);
  if (!(*(v55 + 6))(v29, 1, v19))
  {
    sub_266ECB128(&unk_287888500);
    sub_26738115C();
  }

  (v28)(v68, 0);
  v27(v69, 0);
  v30 = v60;
  v31 = v65;
  (v65)(v18, v60, v67);
  v69[0] = 1;
  sub_26738114C();
  v66(v8, 0, 1, v19);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026745A5B0);
  v32(v69, 0);
  v55 = "firstPassStartSampleCount";
  v33 = v67;
  v31(v18, v30, v67);
  v69[0] = 1;
  sub_26738114C();
  v66(v8, 0, 1, v19);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v55 | 0x8000000000000000);
  v34(v69, 0);
  v55 = "firstPassEndSampleCount";
  v31(v18, v30, v33);
  v69[0] = 1;
  sub_26738114C();
  v35 = v66;
  v66(v8, 0, 1, v19);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, v57, v55 | 0x8000000000000000);
  v36(v69, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(0);
  sub_2670D6334();
  sub_26738120C();
  v35(v8, 0, 1, v19);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, v56, 0x8000000267459E10);
  v37(v69, 0);
  v38 = v67;
  v39 = v65;
  (v65)(v18, v60, v67);
  v69[0] = 1;
  sub_26738114C();
  v40 = v59;
  v35(v8, 0, 1, v59);
  v41 = sub_2673811AC();
  v58 = 0xD00000000000001ELL;
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026745A610);
  v41(v69, 0);
  v57 = "earlyDetectFiredTimeOffsetInNs";
  v42 = v61;
  (v39)(v18, v61, v38);
  v69[0] = 1;
  sub_26738114C();
  v43 = v66;
  v66(v8, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v57 | 0x8000000000000000);
  v44(v69, 0);
  v57 = "earlyDetectFiredTime";
  v45 = v42;
  v46 = v67;
  v47 = v65;
  (v65)(v18, v45, v67);
  v69[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v40);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v57 | 0x8000000000000000);
  v48(v69, 0);
  v61 = "ChannelScoreBoost";
  v49 = v60;
  (v47)(v18, v60, v46);
  v69[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v40);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v61 | 0x8000000000000000);
  v50(v69, 0);
  (v65)(v18, v49, v67);
  v69[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v40);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, v58, 0x800000026745A6A0);
  return v51(v69, 0);
}

uint64_t sub_2670D6270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D62D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D6334()
{
  result = qword_2800F4808;
  if (!qword_2800F4808)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4808);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassTriggered.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08, &protocol conformance descriptor for MHSchemaMHVoiceTriggerEventInfo);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  return v5(v7, 0);
}

uint64_t sub_2670D65C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D662C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerTwoShotDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670D6918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D697C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D69E0()
{
  result = qword_2800F4398;
  if (!qword_2800F4398)
  {
    sub_2670D6A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4398);
  }

  return result;
}

unint64_t sub_2670D6A38()
{
  result = qword_2800F4390;
  if (!qword_2800F4390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4390);
  }

  return result;
}

uint64_t static MTSchemaMTApiInvocationMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670D6C5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670D6DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D6E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppBackgroundedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745A7A0);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_287888528);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v15(v19, 0);
}

uint64_t sub_2670D72E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D7348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppConversationTabView.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745A7F0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026745A820, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745A850, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670D7604(uint64_t a1)
{
  v2 = sub_2670D7708(&qword_2800F4870, &protocol conformance descriptor for MTSchemaMTAppConversationTabView);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D766C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D7708(&qword_2800F4870, &protocol conformance descriptor for MTSchemaMTAppConversationTabView);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D7708(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppConversationTabView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppDisplayMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745A8B0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745A8D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745A8F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745A910, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670D79D0(uint64_t a1)
{
  v2 = sub_2670D7AD4(&qword_2800F4880, &protocol conformance descriptor for MTSchemaMTAppDisplayMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D7A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D7AD4(&qword_2800F4880, &protocol conformance descriptor for MTSchemaMTAppDisplayMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D7AD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppDisplayMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppInvocationMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  MEMORY[0x28223BE20](v2);
  v28 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTAppDisplayMode(0);
  sub_2670D847C(&qword_2800F4878, type metadata accessor for MTSchemaMTAppDisplayMode, &protocol conformance descriptor for MTSchemaMTAppDisplayMode);
  v27 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v12 = v8;
  v10(v7, 0, 1);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  (v10)(v7, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  v14(v31, 0);
  v25 = *MEMORY[0x277D3E4E8];
  v15 = *(v30 + 104);
  v30 += 104;
  v26 = v15;
  v15(v28);
  v31[0] = 1;
  sub_26738114C();
  (v10)(v7, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026745A960);
  v16(v31, 0);
  type metadata accessor for MTSchemaMTAppTabName(0);
  sub_2670D847C(&qword_2800F4888, type metadata accessor for MTSchemaMTAppTabName, &protocol conformance descriptor for MTSchemaMTAppTabName);
  sub_26738120C();
  v24[1] = v11;
  (v10)(v7, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D614E626174, 0xE700000000000000);
  v17(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  (v10)(v7, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6973736553626174, 0xEC00000064496E6FLL);
  v18(v31, 0);
  sub_26738120C();
  (v10)(v7, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026745A980);
  v19(v31, 0);
  v26(v28, v25, v29);
  v31[0] = 1;
  sub_26738114C();
  (v10)(v7, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026745A9A0);
  v20(v31, 0);
  type metadata accessor for MTSchemaMTAppConversationTabView(0);
  sub_2670D847C(&qword_2800F4868, type metadata accessor for MTSchemaMTAppConversationTabView, &protocol conformance descriptor for MTSchemaMTAppConversationTabView);
  sub_26738120C();
  (v10)(v7, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026745A9C0);
  v21(v31, 0);
  type metadata accessor for MTSchemaMTAudioChannel(0);
  sub_2670D847C(&qword_2800F4890, type metadata accessor for MTSchemaMTAudioChannel, &protocol conformance descriptor for MTSchemaMTAudioChannel);
  sub_26738120C();
  (v10)(v7, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6168436F69647561, 0xEC0000006C656E6ELL);
  return v22(v31, 0);
}

uint64_t sub_2670D83B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D841C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D847C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MTSchemaMTAppNextButtonTappedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745A7A0);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_287888550);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v15(v19, 0);
}

uint64_t sub_2670D88E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D894C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppTabName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026745AA40, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745AA60, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026745AA80, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745AAA0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026745AAC0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670D8CE4(uint64_t a1)
{
  v2 = sub_2670D8DE8(&qword_2800F48B8, &protocol conformance descriptor for MTSchemaMTAppTabName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D8D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D8DE8(&qword_2800F48B8, &protocol conformance descriptor for MTSchemaMTAppTabName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D8DE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppTabName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppTextBoxDismissedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745A7A0);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_287888578);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v15(v19, 0);
}

uint64_t sub_2670D920C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppTimedOutTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745A7A0);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878885A0);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v15(v19, 0);
}

uint64_t sub_2670D96F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTASRState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x800000026745AB60, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026745AB80, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745ABB0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026745ABE0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026745AC10, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745AC40, v24);
  *v23 = v31;

  v21(v32, 0);
  sub_266ECB128(&unk_2878885C8);
  return sub_26738112C();
}

uint64_t sub_2670D9B78(uint64_t a1)
{
  v2 = sub_2670D9C7C(&qword_2800F48E8, &protocol conformance descriptor for MTSchemaMTASRState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D9BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D9C7C(&qword_2800F48E8, &protocol conformance descriptor for MTSchemaMTASRState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D9C7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTASRState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTASRStateUpdated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTASRState(0);
  sub_2670D9FC0(&qword_2800F48E0, type metadata accessor for MTSchemaMTASRState, &protocol conformance descriptor for MTSchemaMTASRState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617453727361, 0xE800000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_2878885F0);
  return sub_2673811CC();
}

uint64_t sub_2670D9EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D9FC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670DA008()
{
  result = qword_2800F48F8;
  if (!qword_2800F48F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F48F8);
  }

  return result;
}

uint64_t static MTSchemaMTAudioChannel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745ACD0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745ACF0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745AD10, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745AD40, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026745AD60, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x800000026745AD90, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2670DA3BC(uint64_t a1)
{
  v2 = sub_2670DA4C0(&qword_2800F4900, &protocol conformance descriptor for MTSchemaMTAudioChannel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DA424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DA4C0(&qword_2800F4900, &protocol conformance descriptor for MTSchemaMTAudioChannel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DA4C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAudioChannel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287888618);
  return sub_2673811CC();
}

uint64_t sub_2670DA764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DA7C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DA82C()
{
  result = qword_2800F4908;
  if (!qword_2800F4908)
  {
    sub_2670DA884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4908);
  }

  return result;
}

unint64_t sub_2670DA884()
{
  result = qword_2800F4910;
  if (!qword_2800F4910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4910);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4918, 0x277D58AB0);
  sub_266ECAF2C(&qword_2800F4920, &qword_2800F4918, 0x277D58AB0, &protocol conformance descriptor for MTSchemaMTBatchRequestStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F4928, 0x277D58AA0);
  sub_266ECAF2C(&qword_2800F4930, &qword_2800F4928, 0x277D58AA0, &protocol conformance descriptor for MTSchemaMTBatchRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F4938, 0x277D58AA8);
  sub_266ECAF2C(&qword_2800F4940, &qword_2800F4938, 0x277D58AA8, &protocol conformance descriptor for MTSchemaMTBatchRequestFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F4910, 0x277D58A90);
  sub_266ECAF2C(&qword_2800F4908, &qword_2800F4910, 0x277D58A90, &protocol conformance descriptor for MTSchemaMTBatchRequestCancelled);
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
  v14(v26, 0);
  sub_266ECB128(&unk_287888640);
  return sub_2673811CC();
}

uint64_t sub_2670DAF90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DAFF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTBatchRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287888668);
  return sub_2673811CC();
}

uint64_t sub_2670DB2F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DB35C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DB3C0()
{
  result = qword_2800F4930;
  if (!qword_2800F4930)
  {
    sub_2670DB418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4930);
  }

  return result;
}

unint64_t sub_2670DB418()
{
  result = qword_2800F4928;
  if (!qword_2800F4928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4928);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267452F50);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F4958, 0x277D58AC8);
  sub_266ECAF2C(&qword_2800F4960, &qword_2800F4958, 0x277D58AC8, &protocol conformance descriptor for MTSchemaMTError);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F727265, 0xE500000000000000);
  v11(v13, 0);
  sub_266ECB128(&unk_287888690);
  return sub_2673811CC();
}

uint64_t sub_2670DB7A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DB80C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTBatchRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x67617261506D756ELL, 0xED00007368706172);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65636E6575716573, 0xEE007265626D754ELL);
  v13(v16, 0);
  sub_266ECB128(&unk_2878886B8);
  return sub_2673811CC();
}

uint64_t sub_2670DBC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DBC64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DBCC8()
{
  result = qword_2800F4920;
  if (!qword_2800F4920)
  {
    sub_2670DBD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4920);
  }

  return result;
}

unint64_t sub_2670DBD20()
{
  result = qword_2800F4918;
  if (!qword_2800F4918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4918);
  }

  return result;
}

uint64_t static MTSchemaMTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v14[0] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v14[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 1682535533, 0xE400000000000000);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 1682535533, 0xE400000000000000);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_2878886E0);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x496E6F6973736573, 0xE900000000000064);
  return v12(v16, 0);
}

uint64_t sub_2670DC08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DC0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTClientEventV2.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v87 = a1;
  v1 = sub_26738118C();
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v80 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4970, 0x277D58AB8);
  sub_266ECAF2C(&qword_2800F4968, &qword_2800F4970, 0x277D58AB8, &protocol conformance descriptor for MTSchemaMTClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v89, 0);
  sub_266ECB294(0, &qword_2800F4950, 0x277D58A98);
  sub_266ECAF2C(&qword_2800F4948, &qword_2800F4950, 0x277D58A98, &protocol conformance descriptor for MTSchemaMTBatchRequestContext);
  sub_26738121C();
  v80 = v7 + 56;
  v85 = v8;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026745AF10);
  v10(v89, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v88, 0xD000000000000013, 0x800000026745AF10);
  v13 = *(v7 + 48);
  v86 = v7 + 48;
  v84 = v13;
  if (!v13(v14, 1, v6))
  {
    sub_266ECB128(&unk_287888708);
    sub_26738115C();
  }

  (v12)(v88, 0);
  v11(v89, 0);
  sub_266ECB294(0, &qword_2800F4978, 0x277D58AE8);
  sub_266ECAF2C(&qword_2800F4980, &qword_2800F4978, 0x277D58AE8, &protocol conformance descriptor for MTSchemaMTInvocationContext);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026745AF30);
  v15(v89, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v88, 0xD000000000000011, 0x800000026745AF30);
  if (!v84(v18, 1, v6))
  {
    sub_266ECB128(&unk_287888738);
    sub_26738115C();
  }

  (v17)(v88, 0);
  v16(v89, 0);
  sub_266ECB294(0, &qword_2800F48F8, 0x277D58A58);
  sub_266ECAF2C(&qword_2800F48F0, &qword_2800F48F8, 0x277D58A58, &protocol conformance descriptor for MTSchemaMTASRStateUpdated);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0x6574617453727361, 0xEF64657461647055);
  v19(v89, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v88, 0x6574617453727361, 0xEF64657461647055);
  if (!v84(v22, 1, v6))
  {
    sub_266ECB128(&unk_287888760);
    sub_26738115C();
  }

  (v21)(v88, 0);
  v20(v89, 0);
  sub_266ECB294(0, &qword_2800F4988, 0x277D58B38);
  sub_266ECAF2C(&qword_2800F4990, &qword_2800F4988, 0x277D58B38, &protocol conformance descriptor for MTSchemaMTLocalePairResolved);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026745AF50);
  v23(v89, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v88, 0xD000000000000012, 0x800000026745AF50);
  if (!v84(v26, 1, v6))
  {
    sub_266ECB128(&unk_287888790);
    sub_26738115C();
  }

  (v25)(v88, 0);
  v24(v89, 0);
  sub_266ECB294(0, &qword_2800F4998, 0x277D58B08);
  sub_266ECAF2C(&qword_2800F49A0, &qword_2800F4998, 0x277D58B08, &protocol conformance descriptor for MTSchemaMTInvocationStartedTier1);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x800000026745AF70);
  v27(v89, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v88, 0xD000000000000016, 0x800000026745AF70);
  if (!v84(v30, 1, v6))
  {
    sub_266ECB128(&unk_2878887B8);
    sub_26738115C();
  }

  (v29)(v88, 0);
  v28(v89, 0);
  sub_266ECB294(0, &qword_2800F48B0, 0x277D58A78);
  sub_266ECAF2C(&qword_2800F48A8, &qword_2800F48B0, 0x277D58A78, &protocol conformance descriptor for MTSchemaMTAppNextButtonTappedTier1);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v31 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026745AF90);
  v31(v89, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v88, 0xD000000000000013, 0x800000026745AF90);
  if (!v84(v34, 1, v6))
  {
    sub_266ECB128(&unk_2878887E0);
    sub_26738115C();
  }

  (v33)(v88, 0);
  v32(v89, 0);
  sub_266ECB294(0, &qword_2800F48C8, 0x277D58A80);
  sub_266ECAF2C(&qword_2800F48C0, &qword_2800F48C8, 0x277D58A80, &protocol conformance descriptor for MTSchemaMTAppTextBoxDismissedTier1);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v35 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026745AFB0);
  v35(v89, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v88, 0xD000000000000013, 0x800000026745AFB0);
  if (!v84(v38, 1, v6))
  {
    sub_266ECB128(&unk_287888808);
    sub_26738115C();
  }

  (v37)(v88, 0);
  v36(v89, 0);
  sub_266ECB294(0, &qword_2800F48D8, 0x277D58A88);
  sub_266ECAF2C(&qword_2800F48D0, &qword_2800F48D8, 0x277D58A88, &protocol conformance descriptor for MTSchemaMTAppTimedOutTier1);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v39 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656D6954707061, 0xEB0000000074754FLL);
  v39(v89, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v88, 0x64656D6954707061, 0xEB0000000074754FLL);
  if (!v84(v42, 1, v6))
  {
    sub_266ECB128(&unk_287888830);
    sub_26738115C();
  }

  (v41)(v88, 0);
  v40(v89, 0);
  sub_266ECB294(0, &qword_2800F49A8, 0x277D58AD8);
  sub_266ECAF2C(&qword_2800F49B0, &qword_2800F49A8, 0x277D58AD8, &protocol conformance descriptor for MTSchemaMTFrameworkRequestSent);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v43 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026745AFD0);
  v43(v89, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v88, 0xD000000000000014, 0x800000026745AFD0);
  if (!v84(v46, 1, v6))
  {
    sub_266ECB128(&unk_287888858);
    sub_26738115C();
  }

  (v45)(v88, 0);
  v44(v89, 0);
  sub_266ECB294(0, &qword_2800F49B8, 0x277D58AD0);
  sub_266ECAF2C(&qword_2800F49C0, &qword_2800F49B8, 0x277D58AD0, &protocol conformance descriptor for MTSchemaMTFrameworkRequestResponseReceived);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v47 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026745AFF0);
  v47(v89, 0);
  v48 = sub_2673811AC();
  v49 = sub_266ECB6CC(v88, 0xD000000000000020, 0x800000026745AFF0);
  if (!v84(v50, 1, v6))
  {
    sub_266ECB128(&unk_287888880);
    sub_26738115C();
  }

  (v49)(v88, 0);
  v48(v89, 0);
  sub_266ECB294(0, &qword_2800F4860, 0x277D58A68);
  sub_266ECAF2C(&qword_2800F4858, &qword_2800F4860, 0x277D58A68, &protocol conformance descriptor for MTSchemaMTAppBackgroundedTier1);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v51 = sub_2673811AC();
  sub_266EC637C(v5, 0x676B636142707061, 0xEF6465646E756F72);
  v51(v89, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v88, 0x676B636142707061, 0xEF6465646E756F72);
  if (!v84(v54, 1, v6))
  {
    sub_266ECB128(&unk_2878888A8);
    sub_26738115C();
  }

  (v53)(v88, 0);
  v52(v89, 0);
  sub_266ECB294(0, &qword_2800F49C8, 0x277D58B20);
  sub_266ECAF2C(&qword_2800F49D0, &qword_2800F49C8, 0x277D58B20, &protocol conformance descriptor for MTSchemaMTLanguageIdentificationCompleted);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v55 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x800000026745B020);
  v55(v89, 0);
  v56 = sub_2673811AC();
  v57 = sub_266ECB6CC(v88, 0xD00000000000001FLL, 0x800000026745B020);
  if (!v84(v58, 1, v6))
  {
    sub_266ECB128(&unk_2878888D0);
    sub_26738115C();
  }

  (v57)(v88, 0);
  v56(v89, 0);
  sub_266ECB294(0, &qword_2800F49D8, 0x277D58B18);
  sub_266ECAF2C(&qword_2800F49E0, &qword_2800F49D8, 0x277D58B18, &protocol conformance descriptor for MTSchemaMTLanguageDisambiguationUIShown);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v59 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026745B040);
  v59(v89, 0);
  v60 = sub_2673811AC();
  v61 = sub_266ECB6CC(v88, 0xD00000000000001DLL, 0x800000026745B040);
  if (!v84(v62, 1, v6))
  {
    sub_266ECB128(&unk_2878888F8);
    sub_26738115C();
  }

  (v61)(v88, 0);
  v60(v89, 0);
  sub_266ECB294(0, &qword_2800F49E8, 0x277D58B10);
  sub_266ECAF2C(&qword_2800F49F0, &qword_2800F49E8, 0x277D58B10, &protocol conformance descriptor for MTSchemaMTLanguageDisambiguationUISelected);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v63 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026745B060);
  v63(v89, 0);
  v64 = sub_2673811AC();
  v65 = sub_266ECB6CC(v88, 0xD000000000000020, 0x800000026745B060);
  if (!v84(v66, 1, v6))
  {
    sub_266ECB128(&unk_287888920);
    sub_26738115C();
  }

  (v65)(v88, 0);
  v64(v89, 0);
  sub_266ECB294(0, &qword_2800F49F8, 0x277D58B40);
  sub_266ECAF2C(&qword_2800F4A00, &qword_2800F49F8, 0x277D58B40, &protocol conformance descriptor for MTSchemaMTTranslationTTSPlayed);
  sub_26738121C();
  v85(v5, 0, 1, v6);
  v67 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026745B090);
  v67(v89, 0);
  v68 = sub_2673811AC();
  v69 = sub_266ECB6CC(v88, 0xD000000000000014, 0x800000026745B090);
  if (!v84(v70, 1, v6))
  {
    sub_266ECB128(&unk_287888948);
    sub_26738115C();
  }

  (v69)(v88, 0);
  v68(v89, 0);
  v71 = v81;
  sub_26738117C();
  v72 = sub_2673811BC();
  v74 = v73;
  v75 = *v73;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v74 = v75;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v75 = sub_266ECAD54(0, v75[2] + 1, 1, v75);
    *v74 = v75;
  }

  v78 = v75[2];
  v77 = v75[3];
  if (v78 >= v77 >> 1)
  {
    v75 = sub_266ECAD54((v77 > 1), v78 + 1, 1, v75);
    *v74 = v75;
  }

  v75[2] = v78 + 1;
  (*(v82 + 32))(v75 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v78, v71, v83);
  v72(v89, 0);
  sub_266ECB128(&unk_287888970);
  return sub_2673811CC();
}

uint64_t sub_2670DDA5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670DDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670DDBC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DDC24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670DDC84(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4A08, &qword_2800F4A10, 0x277D58AC0, &protocol conformance descriptor for MTSchemaMTClientEventV2);
  a1[2] = sub_266ECAF2C(&qword_2800F4A18, &qword_2800F4A10, 0x277D58AC0, &protocol conformance descriptor for MTSchemaMTClientEventV2);
  result = sub_266ECAF2C(&qword_2800F4A20, &qword_2800F4A10, 0x277D58AC0, &protocol conformance descriptor for MTSchemaMTClientEventV2);
  a1[3] = result;
  return result;
}

uint64_t static MTSchemaMTError.makeTypeManifestAndEnsureFields(in:)()
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
  v18 = *MEMORY[0x277D3E530];
  v6 = *(v0 + 104);
  v6(v2);
  v16 = v6;
  v19[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  v9 = v8;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6D6F44726F727265, 0xEB000000006E6961);
  v10(v19, 0);
  v11 = v17;
  (v6)(v2, v18, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x73654D726F727265, 0xEC00000065676173);
  v12(v19, 0);
  (v16)(v2, *MEMORY[0x277D3E508], v11);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x646F43726F727265, 0xE900000000000065);
  return v13(v19, 0);
}

uint64_t sub_2670DE180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DE1E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DE248()
{
  result = qword_2800F4960;
  if (!qword_2800F4960)
  {
    sub_2670DE2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4960);
  }

  return result;
}

unint64_t sub_2670DE2A0()
{
  result = qword_2800F4958;
  if (!qword_2800F4958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4958);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestResponseReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1);
  v13 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026745B110);
  v8(v16, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestRoute(0);
  sub_2670DE784();
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x5274736575716572, 0xEC0000006574756FLL);
  v9(v16, 0);
  (*(v14 + 104))(v13, *MEMORY[0x277D3E538], v15);
  v16[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x65746E65536D756ELL, 0xEC0000007365636ELL);
  return v10(v16, 0);
}

uint64_t sub_2670DE6C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DE724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DE784()
{
  result = qword_2800F4A30;
  if (!qword_2800F4A30)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4A30);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestRoute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026745B160, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026745B180, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745B1A0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670DEA38(uint64_t a1)
{
  v2 = sub_2670DEB3C(&qword_2800F4A38, &protocol conformance descriptor for MTSchemaMTFrameworkRequestRoute);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DEAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DEB3C(&qword_2800F4A38, &protocol conformance descriptor for MTSchemaMTFrameworkRequestRoute);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DEB3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestSent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026745B110);
  v8(v22, 0);
  v9 = *MEMORY[0x277D3E530];
  v20 = *(v21 + 104);
  v21 += 104;
  v10 = v17;
  v20(v17, v9, v1);
  v22[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6973736553737371, 0xEC00000064496E6FLL);
  v11(v22, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestType(0);
  sub_2670DF1EC(&qword_2800F4A40, type metadata accessor for MTSchemaMTFrameworkRequestType, &protocol conformance descriptor for MTSchemaMTFrameworkRequestType);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x5474736575716572, 0xEB00000000657079);
  v12(v22, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestRoute(0);
  sub_2670DF1EC(&qword_2800F4A30, type metadata accessor for MTSchemaMTFrameworkRequestRoute, &protocol conformance descriptor for MTSchemaMTFrameworkRequestRoute);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x5274736575716572, 0xEC0000006574756FLL);
  v13(v22, 0);
  v20(v10, *MEMORY[0x277D3E538], v19);
  v22[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x5374736575716572, 0xEB00000000657A69);
  return v14(v22, 0);
}

uint64_t sub_2670DF128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DF18C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670DF1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MTSchemaMTFrameworkRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026745B230, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745B250, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745B280, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026745B2B0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745B2D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670DF570(uint64_t a1)
{
  v2 = sub_2670DF674(&qword_2800F4A48, &protocol conformance descriptor for MTSchemaMTFrameworkRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DF5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DF674(&qword_2800F4A48, &protocol conformance descriptor for MTSchemaMTFrameworkRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DF674(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTInputSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745B320, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026745B340, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026745B360, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026745B380, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x800000026745B3A0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670DF9B0(uint64_t a1)
{
  v2 = sub_2670DFAB4(&qword_2800F4A58, &protocol conformance descriptor for MTSchemaMTInputSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DFA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DFAB4(&qword_2800F4A58, &protocol conformance descriptor for MTSchemaMTInputSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DFAB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTInputSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTInvocationCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6973736553737371, 0xEC00000064496E6FLL);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v12(v14, 0);
}

uint64_t sub_2670DFEF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DFF5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4A70, 0x277D58B00);
  sub_266ECAF2C(&qword_2800F4A78, &qword_2800F4A70, 0x277D58B00, &protocol conformance descriptor for MTSchemaMTInvocationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F4A80, 0x277D58AF0);
  sub_266ECAF2C(&qword_2800F4A88, &qword_2800F4A80, 0x277D58AF0, &protocol conformance descriptor for MTSchemaMTInvocationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F4A90, 0x277D58AF8);
  sub_266ECAF2C(&qword_2800F4A98, &qword_2800F4A90, 0x277D58AF8, &protocol conformance descriptor for MTSchemaMTInvocationFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F4A68, 0x277D58AE0);
  sub_266ECAF2C(&qword_2800F4A60, &qword_2800F4A68, 0x277D58AE0, &protocol conformance descriptor for MTSchemaMTInvocationCancelled);
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

uint64_t sub_2670E05E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0648(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6973736553737371, 0xEC00000064496E6FLL);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v12(v14, 0);
}

uint64_t sub_2670E0AEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0B50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4958, 0x277D58AC8);
  sub_266ECAF2C(&qword_2800F4960, &qword_2800F4958, 0x277D58AC8, &protocol conformance descriptor for MTSchemaMTError);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6973736553737371, 0xEC00000064496E6FLL);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v8(v10, 0);
}

uint64_t sub_2670E0F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0FF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v3 = sub_26738118C();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26738113C();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v57 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v58 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v66 = *(v11 - 8);
  v12 = *(v66 + 56);
  v55 = v66 + 56;
  v53 = v11;
  v12(v9, 0, 1, v11);
  v67 = v12;
  v54 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v70, 0);
  v52 = "i.mt.MTInvocationStarted";
  v64 = *MEMORY[0x277D3E4E8];
  v15 = v65 + 104;
  v14 = *(v65 + 104);
  v16 = v62;
  v14(v6);
  v63 = v14;
  v65 = v15;
  v70[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v52 | 0x8000000000000000);
  v17(v70, 0);
  v18 = *MEMORY[0x277D3E538];
  v56 = v6;
  (v14)(v6, v18, v16);
  v70[0] = 1;
  sub_26738114C();
  v19 = v53;
  v20 = v67;
  v67(v9, 0, 1, v53);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267453300);
  v21(v70, 0);
  type metadata accessor for MTSchemaMTTask(0);
  sub_2670E1F50(&qword_2800F4AA0, type metadata accessor for MTSchemaMTTask, &protocol conformance descriptor for MTSchemaMTTask);
  sub_26738120C();
  v22 = v19;
  v20(v9, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 1802723700, 0xE400000000000000);
  v23(v70, 0);
  type metadata accessor for MTSchemaMTInputSource(0);
  sub_2670E1F50(&qword_2800F4A50, type metadata accessor for MTSchemaMTInputSource, &protocol conformance descriptor for MTSchemaMTInputSource);
  sub_26738120C();
  v20(v9, 0, 1, v19);
  v24 = v20;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x756F537475706E69, 0xEB00000000656372);
  v25(v70, 0);
  v52 = "isOnDeviceTranslation";
  v26 = v56;
  v27 = v62;
  (v63)(v56, v64, v62);
  v70[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v52 | 0x8000000000000000);
  v28(v70, 0);
  (v63)(v26, v64, v27);
  v70[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x800000026745B4F0);
  v29(v70, 0);
  type metadata accessor for MTSchemaMTAppDisplayMode(0);
  sub_2670E1F50(&qword_2800F4878, type metadata accessor for MTSchemaMTAppDisplayMode, &protocol conformance descriptor for MTSchemaMTAppDisplayMode);
  sub_26738120C();
  v24(v9, 0, 1, v22);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v30(v70, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v69, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v33 = *(v66 + 48);
  v66 += 48;
  if (!v33(v34, 1, v22))
  {
    sub_266ECB128(&unk_2878889A8);
    sub_26738115C();
  }

  (v32)(v69, 0);
  v31(v70, 0);
  sub_26738120C();
  v67(v9, 0, 1, v22);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6973736553737371, 0xEC00000064496E6FLL);
  v35(v70, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v69, 0x6973736553737371, 0xEC00000064496E6FLL);
  if (!v33(v38, 1, v22))
  {
    sub_266ECB128(&unk_2878889D0);
    sub_26738115C();
  }

  (v37)(v69, 0);
  v36(v70, 0);
  type metadata accessor for MTSchemaMTInvocationType(0);
  sub_2670E1F50(&qword_2800F4AA8, type metadata accessor for MTSchemaMTInvocationType, &protocol conformance descriptor for MTSchemaMTInvocationType);
  sub_26738120C();
  v39 = v67;
  v67(v9, 0, 1, v22);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461636F766E69, 0xEE00657079546E6FLL);
  v40(v70, 0);
  sub_266ECB294(0, &qword_2800F48A0, 0x277D58A70);
  sub_266ECAF2C(&qword_2800F4898, &qword_2800F48A0, 0x277D58A70, &protocol conformance descriptor for MTSchemaMTAppInvocationMetadata);
  sub_26738121C();
  v39(v9, 0, 1, v22);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026745B510);
  v41(v70, 0);
  sub_266ECB294(0, &qword_2800F4850, 0x277D58A60);
  sub_266ECAF2C(&qword_2800F4848, &qword_2800F4850, 0x277D58A60, &protocol conformance descriptor for MTSchemaMTApiInvocationMetadata);
  sub_26738121C();
  v39(v9, 0, 1, v22);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026745B530);
  v42(v70, 0);
  v43 = v59;
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
  (*(v60 + 32))(v47 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50, v43, v61);
  return v44(v70, 0);
}

uint64_t sub_2670E1E8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E1EF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E1F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MTSchemaMTInvocationStartedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x6C646E7542707061, 0xEB00000000644965);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x6C646E7542707061, 0xEB00000000644965);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_2878889F8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_2670E23BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E2420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745B5D0, isUniquelyReferenced_nonNull_native);
  *v3 = v66;

  v1(v82, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745B5F0, v8);
  *v7 = v67;

  v5(v82, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745B610, v12);
  *v11 = v68;

  v9(v82, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745B630, v16);
  *v15 = v69;

  v13(v82, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026745B650, v20);
  *v19 = v70;

  v17(v82, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026745B680, v24);
  *v23 = v71;

  v21(v82, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x800000026745B6A0, v28);
  *v27 = v72;

  v25(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026745B6C0, v32);
  *v31 = v73;

  v29(v82, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x800000026745B6F0, v36);
  *v35 = v74;

  v33(v82, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x800000026745B720, v40);
  *v39 = v75;

  v37(v82, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026745B740, v44);
  *v43 = v76;

  v41(v82, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001FLL, 0x800000026745B770, v48);
  *v47 = v77;

  v45(v82, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x800000026745B790, v52);
  *v51 = v78;

  v49(v82, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x800000026745B7B0, v56);
  *v55 = v79;

  v53(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002DLL, 0x800000026745B7D0, v60);
  *v59 = v80;

  v57(v82, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x800000026745B800, v64);
  *v63 = v81;

  return v61(v82, 0);
}

uint64_t sub_2670E2CA4(uint64_t a1)
{
  v2 = sub_2670E2DA8(&qword_2800F4AB0, &protocol conformance descriptor for MTSchemaMTInvocationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E2D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E2DA8(&qword_2800F4AB0, &protocol conformance descriptor for MTSchemaMTInvocationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E2DA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageDisambiguationUISelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3238(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E2FA8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3238(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E312C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E3280()
{
  result = qword_2800F49E8;
  if (!qword_2800F49E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49E8);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageDisambiguationUIShown.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3718(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E3488(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3718(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E360C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E3760()
{
  result = qword_2800F49D8;
  if (!qword_2800F49D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49D8);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageIdentificationCompleted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTInputSource(0);
  sub_2670E3BF8(&qword_2800F4A50, type metadata accessor for MTSchemaMTInputSource, &protocol conformance descriptor for MTSchemaMTInputSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x756F537475706E69, 0xEB00000000656372);
  v6(v10, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3BF8(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636F4C706F74, 0xE900000000000065);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4AB8, 0x277D58B28);
  sub_266ECAF2C(&qword_2800F4AC0, &qword_2800F4AB8, 0x277D58B28, &protocol conformance descriptor for MTSchemaMTLanguageIdentificationConfidence);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x69666E6F4364696CLL, 0xED000065636E6564);
  return v8(v10, 0);
}

uint64_t sub_2670E3B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3B98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MTSchemaMTLanguageIdentificationConfidence.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaLocale(0);
  sub_2670E40B4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C61636F6CLL, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026745B920);
  return v10(v14, 0);
}

uint64_t sub_2670E3FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E400C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E40B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E40FC()
{
  result = qword_2800F4AB8;
  if (!qword_2800F4AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4AB8);
  }

  return result;
}

uint64_t static MTSchemaMTLocalePair.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E44DC(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C656372756F73, 0xEC000000656C6163);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C746567726174, 0xEC000000656C6163);
  return v7(v9, 0);
}

uint64_t sub_2670E43D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E4434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E44DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E4524()
{
  result = qword_2800F4838;
  if (!qword_2800F4838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4838);
  }

  return result;
}

uint64_t static MTSchemaMTLocalePairResolved.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670E4748(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30, &protocol conformance descriptor for MTSchemaMTLocalePair);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670E48E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E494C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTSourceOrTargetLanguage.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745B9D0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026745BA00, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026745BA20, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670E4C08(uint64_t a1)
{
  v2 = sub_2670E4D0C(&qword_2800F4AD0, &protocol conformance descriptor for MTSchemaMTSourceOrTargetLanguage);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E4C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E4D0C(&qword_2800F4AD0, &protocol conformance descriptor for MTSchemaMTSourceOrTargetLanguage);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E4D0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTSourceOrTargetLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTTask.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x555F4B534154544DLL, 0xEE004E574F4E4B4ELL, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026745BA60, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x575F4B534154544DLL, 0xEA00000000004245, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x535F4B534154544DLL, 0xED00004D45545359, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0x535F4B534154544DLL, 0xEB00000000495249, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670E5058(uint64_t a1)
{
  v2 = sub_2670E515C(&qword_2800F4AD8, &protocol conformance descriptor for MTSchemaMTTask);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E50C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E515C(&qword_2800F4AD8, &protocol conformance descriptor for MTSchemaMTTask);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E515C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTTranslationTTSPlayed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for MTSchemaMTSourceOrTargetLanguage(0);
  sub_2670E5770(&qword_2800F4AC8, type metadata accessor for MTSchemaMTSourceOrTargetLanguage, &protocol conformance descriptor for MTSchemaMTSourceOrTargetLanguage);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x724F656372756F73, 0xEE00746567726154);
  v9(v16, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v15);
  v16[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026745BAB0);
  v10(v16, 0);
  type metadata accessor for MTSchemaMTTTSPlaybackSpeed(0);
  sub_2670E5770(&qword_2800F4AE0, type metadata accessor for MTSchemaMTTTSPlaybackSpeed, &protocol conformance descriptor for MTSchemaMTTTSPlaybackSpeed);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6B63616279616C70, 0xED00006465657053);
  v11(v16, 0);
  type metadata accessor for MTSchemaMTAudioChannel(0);
  sub_2670E5770(&qword_2800F4890, type metadata accessor for MTSchemaMTAudioChannel, &protocol conformance descriptor for MTSchemaMTAudioChannel);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6168436F69647561, 0xEC0000006C656E6ELL);
  return v12(v16, 0);
}

uint64_t sub_2670E5664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E56C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E5770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E57B8()
{
  result = qword_2800F49F8;
  if (!qword_2800F49F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49F8);
  }

  return result;
}

uint64_t static MTSchemaMTTTSPlaybackSpeed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026745BB00, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026745BB20, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026745BB40, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026745BB60, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026745BB80, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670E5B04(uint64_t a1)
{
  v2 = sub_2670E5C08(&qword_2800F4AE8, &protocol conformance descriptor for MTSchemaMTTTSPlaybackSpeed);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E5B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E5C08(&qword_2800F4AE8, &protocol conformance descriptor for MTSchemaMTTTSPlaybackSpeed);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E5C08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTTTSPlaybackSpeed(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetEndPoint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745BBD0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026745BBF0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026745BC10, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026745BC30, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745BC60, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x800000026745BC80, v24);
  *v23 = v31;

  v21(v32, 0);
  sub_266ECB128(&unk_287888A20);
  return sub_26738112C();
}

uint64_t sub_2670E5FC8(uint64_t a1)
{
  v2 = sub_2670E60CC(&qword_2800F4AF8, &protocol conformance descriptor for MWTSchemaMWTAssetEndPoint);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E6030(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E60CC(&qword_2800F4AF8, &protocol conformance descriptor for MWTSchemaMWTAssetEndPoint);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E60CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetEndPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745BCD0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026745BCF0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026745BD10, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670E6324(uint64_t a1)
{
  v2 = sub_2670E6428(&qword_2800F4B08, &protocol conformance descriptor for MWTSchemaMWTAssetLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E638C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6428(&qword_2800F4B08, &protocol conformance descriptor for MWTSchemaMWTAssetLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6428(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745BD60, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026745BD80, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745BDA0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745BDC0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026745BDE0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026745BE00, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026745BE30, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670E6844(uint64_t a1)
{
  v2 = sub_2670E6948(&qword_2800F4B18, &protocol conformance descriptor for MWTSchemaMWTAssetSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E68AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6948(&qword_2800F4B18, &protocol conformance descriptor for MWTSchemaMWTAssetSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAudioRouteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745BE80, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026745BEA0, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026745BED0, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745BEF0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745BF10, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x800000026745BF40, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026745BF70, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x800000026745BF90, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x800000026745BFB0, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x800000026745BFD0, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_2670E6EB4(uint64_t a1)
{
  v2 = sub_2670E6FB8(&qword_2800F4B28, &protocol conformance descriptor for MWTSchemaMWTAudioRouteType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E6F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6FB8(&qword_2800F4B28, &protocol conformance descriptor for MWTSchemaMWTAudioRouteType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6FB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAudioRouteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTCheckpoint.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745C020, isUniquelyReferenced_nonNull_native);
  *v3 = v118;

  v1(v147, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026745C040, v8);
  *v7 = v119;

  v5(v147, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026745C070, v12);
  *v11 = v120;

  v9(v147, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026745C0A0, v16);
  *v15 = v121;

  v13(v147, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026745C0E0, v20);
  *v19 = v122;

  v17(v147, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x800000026745C110, v24);
  *v23 = v123;

  v21(v147, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026745C130, v28);
  *v27 = v124;

  v25(v147, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x800000026745C150, v32);
  *v31 = v125;

  v29(v147, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x800000026745C170, v36);
  *v35 = v126;

  v33(v147, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x800000026745C190, v40);
  *v39 = v127;

  v37(v147, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x800000026745C1C0, v44);
  *v43 = v128;

  v41(v147, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026745C1F0, v48);
  *v47 = v129;

  v45(v147, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x800000026745C210, v52);
  *v51 = v130;

  v49(v147, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x800000026745C230, v56);
  *v55 = v131;

  v53(v147, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000023, 0x800000026745C250, v60);
  *v59 = v132;

  v57(v147, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x800000026745C280, v64);
  *v63 = v133;

  v61(v147, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x800000026745C2B0, v68);
  *v67 = v134;

  v65(v147, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x800000026745C2E0, v72);
  *v71 = v135;

  v69(v147, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001FLL, 0x800000026745C310, v76);
  *v75 = v136;

  v73(v147, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x800000026745C330, v80);
  *v79 = v137;

  v77(v147, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ELL, 0x800000026745C360, v84);
  *v83 = v138;

  v81(v147, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x800000026745C380, v88);
  *v87 = v139;

  v85(v147, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000023, 0x800000026745C3B0, v92);
  *v91 = v140;

  v89(v147, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026745C3E0, v96);
  *v95 = v141;

  v93(v147, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ELL, 0x800000026745C400, v100);
  *v99 = v142;

  v97(v147, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001FLL, 0x800000026745C420, v104);
  *v103 = v143;

  v101(v147, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x800000026745C440, v108);
  *v107 = v144;

  v105(v147, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000012, 0x800000026745C460, v112);
  *v111 = v145;

  v109(v147, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001FLL, 0x800000026745C480, v116);
  *v115 = v146;

  return v113(v147, 0);
}

uint64_t sub_2670E7D88(uint64_t a1)
{
  v2 = sub_2670E7E8C(&qword_2800F4B38, &protocol conformance descriptor for MWTSchemaMWTCheckpoint);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E7DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E7E8C(&qword_2800F4B38, &protocol conformance descriptor for MWTSchemaMWTCheckpoint);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E7E8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTCheckpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTCheckpointReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTCheckpoint(0);
  sub_2670E8324(&qword_2800F4B30, type metadata accessor for MWTSchemaMWTCheckpoint, &protocol conformance descriptor for MWTSchemaMWTCheckpoint);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795470657473, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E8090(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTCheckpoint(0);
  sub_2670E8324(&qword_2800F4B30, type metadata accessor for MWTSchemaMWTCheckpoint, &protocol conformance descriptor for MWTSchemaMWTCheckpoint);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795470657473, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E8218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E827C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E8324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670E836C()
{
  result = qword_2800F4B48;
  if (!qword_2800F4B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B48);
  }

  return result;
}

uint64_t static MWTSchemaMWTClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4B50, 0x277D58B58);
  sub_266ECAF2C(&qword_2800F4B58, &qword_2800F4B50, 0x277D58B58, &protocol conformance descriptor for MWTSchemaMWTEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F4B48, 0x277D58B48);
  sub_266ECAF2C(&qword_2800F4B40, &qword_2800F4B48, 0x277D58B48, &protocol conformance descriptor for MWTSchemaMWTCheckpointReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026745C500);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F4B60, 0x277D58B60);
  sub_266ECAF2C(&qword_2800F4B68, &qword_2800F4B60, 0x277D58B60, &protocol conformance descriptor for MWTSchemaMWTMusicMetadataReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x800000026745C520);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F4B70, 0x277D58B68);
  sub_266ECAF2C(&qword_2800F4B78, &qword_2800F4B70, 0x277D58B68, &protocol conformance descriptor for MWTSchemaMWTVMCPUStatsReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026745C540);
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
  sub_266ECB128(&unk_287888A48);
  return sub_2673811CC();
}

uint64_t sub_2670E8994(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670E8A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670E8AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E8B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E8BBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4B80, &qword_2800F1F30, 0x277D58B50, &protocol conformance descriptor for MWTSchemaMWTClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F4B88, &qword_2800F1F30, 0x277D58B50, &protocol conformance descriptor for MWTSchemaMWTClientEvent);
  result = sub_266ECAF2C(&qword_2800F4B90, &qword_2800F1F30, 0x277D58B50, &protocol conformance descriptor for MWTSchemaMWTClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static MWTSchemaMWTEndPointType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026745C590, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745C5B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026745C5D0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745C5F0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670E8F40(uint64_t a1)
{
  v2 = sub_2670E9044(&qword_2800F4BA0, &protocol conformance descriptor for MWTSchemaMWTEndPointType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E8FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E9044(&qword_2800F4BA0, &protocol conformance descriptor for MWTSchemaMWTEndPointType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E9044(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v5 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v26 = a1;
  v22[1] = v5;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v24 = *(v7 + 56);
  v24(v4, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x644974776DLL, 0xE500000000000000);
  v8(v28, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v27, 0x644974776DLL, 0xE500000000000000);
  v11 = *(v7 + 48);
  v25 = v7 + 48;
  v23 = v11;
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_287888A80);
    sub_26738115C();
  }

  (v10)(v27, 0);
  v9(v28, 0);
  sub_26738120C();
  v24(v4, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v13(v28, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v27, 0x4974736575716572, 0xE900000000000064);
  if (!v23(v16, 1, v6))
  {
    sub_266ECB128(&unk_287888AB0);
    sub_26738115C();
  }

  (v15)(v27, 0);
  v14(v28, 0);
  sub_26738120C();
  v24(v4, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v4, 0x6575716552627573, 0xEC00000064497473);
  v17(v28, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v27, 0x6575716552627573, 0xEC00000064497473);
  if (!v23(v20, 1, v6))
  {
    sub_266ECB128(&unk_287888AE0);
    sub_26738115C();
  }

  (v19)(v27, 0);
  return v18(v28, 0);
}

uint64_t sub_2670E9578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E95DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MWTSchemaMWTFormatCodec.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745C670, isUniquelyReferenced_nonNull_native);
  *v3 = v166;

  v1(v207, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745C690, v8);
  *v7 = v167;

  v5(v207, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x800000026745C6B0, v12);
  *v11 = v168;

  v9(v207, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026745C6D0, v16);
  *v15 = v169;

  v13(v207, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026745C6F0, v20);
  *v19 = v170;

  v17(v207, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x800000026745C710, v24);
  *v23 = v171;

  v21(v207, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x800000026745C730, v28);
  *v27 = v172;

  v25(v207, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026745C750, v32);
  *v31 = v173;

  v29(v207, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x800000026745C770, v36);
  *v35 = v174;

  v33(v207, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x800000026745C790, v40);
  *v39 = v175;

  v37(v207, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x800000026745C7B0, v44);
  *v43 = v176;

  v41(v207, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000013, 0x800000026745C7D0, v48);
  *v47 = v177;

  v45(v207, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000013, 0x800000026745C7F0, v52);
  *v51 = v178;

  v49(v207, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000016, 0x800000026745C810, v56);
  *v55 = v179;

  v53(v207, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ALL, 0x800000026745C830, v60);
  *v59 = v180;

  v57(v207, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000017, 0x800000026745C850, v64);
  *v63 = v181;

  v61(v207, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001DLL, 0x800000026745C870, v68);
  *v67 = v182;

  v65(v207, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001DLL, 0x800000026745C890, v72);
  *v71 = v183;

  v69(v207, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001FLL, 0x800000026745C8B0, v76);
  *v75 = v184;

  v73(v207, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000018, 0x800000026745C8D0, v80);
  *v79 = v185;

  v77(v207, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ALL, 0x800000026745C8F0, v84);
  *v83 = v186;

  v81(v207, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000025, 0x800000026745C910, v88);
  *v87 = v187;

  v85(v207, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001DLL, 0x800000026745C940, v92);
  *v91 = v188;

  v89(v207, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000019, 0x800000026745C960, v96);
  *v95 = v189;

  v93(v207, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x800000026745C980, v100);
  *v99 = v190;

  v97(v207, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x800000026745C9A0, v104);
  *v103 = v191;

  v101(v207, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001ELL, 0x800000026745C9C0, v108);
  *v107 = v192;

  v105(v207, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001CLL, 0x800000026745C9E0, v112);
  *v111 = v193;

  v109(v207, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001BLL, 0x800000026745CA00, v116);
  *v115 = v194;

  v113(v207, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ELL, 0x800000026745CA20, v120);
  *v119 = v195;

  v117(v207, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000019, 0x800000026745CA40, v124);
  *v123 = v196;

  v121(v207, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000012, 0x800000026745CA60, v128);
  *v127 = v197;

  v125(v207, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000015, 0x800000026745CA80, v132);
  *v131 = v198;

  v129(v207, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000016, 0x800000026745CAA0, v136);
  *v135 = v199;

  v133(v207, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000014, 0x800000026745CAC0, v140);
  *v139 = v200;

  v137(v207, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001CLL, 0x800000026745CAE0, v144);
  *v143 = v201;

  v141(v207, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001CLL, 0x800000026745CB00, v148);
  *v147 = v202;

  v145(v207, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000012, 0x800000026745CB20, v152);
  *v151 = v203;

  v149(v207, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001ALL, 0x800000026745CB40, v156);
  *v155 = v204;

  v153(v207, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000013, 0x800000026745CB60, v160);
  *v159 = v205;

  v157(v207, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000013, 0x800000026745CB80, v164);
  *v163 = v206;

  return v161(v207, 0);
}

uint64_t sub_2670EA9AC(uint64_t a1)
{
  v2 = sub_2670EAAB0(&qword_2800F4BB0, &protocol conformance descriptor for MWTSchemaMWTFormatCodec);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EAA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EAAB0(&qword_2800F4BB0, &protocol conformance descriptor for MWTSchemaMWTFormatCodec);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EAAB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatCodec(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTFormatLayout.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v702 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x800000026745CBD0, isUniquelyReferenced_nonNull_native);
  *v3 = v702;

  v1(v877, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v703 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026745CBF0, v8);
  *v7 = v703;

  v5(v877, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v704 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745CC10, v12);
  *v11 = v704;

  v9(v877, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v705 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026745CC30, v16);
  *v15 = v705;

  v13(v877, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v706 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745CC60, v20);
  *v19 = v706;

  v17(v877, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v707 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x800000026745CC80, v24);
  *v23 = v707;

  v21(v877, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v708 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000012, 0x800000026745CCA0, v28);
  *v27 = v708;

  v25(v877, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v709 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026745CCC0, v32);
  *v31 = v709;

  v29(v877, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v710 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026745CCE0, v36);
  *v35 = v710;

  v33(v877, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v711 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x800000026745CD10, v40);
  *v39 = v711;

  v37(v877, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v712 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026745CD30, v44);
  *v43 = v712;

  v41(v877, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v713 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x800000026745CD50, v48);
  *v47 = v713;

  v45(v877, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v714 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x800000026745CD70, v52);
  *v51 = v714;

  v49(v877, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v715 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000014, 0x800000026745CD90, v56);
  *v55 = v715;

  v53(v877, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v716 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001BLL, 0x800000026745CDB0, v60);
  *v59 = v716;

  v57(v877, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v717 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001BLL, 0x800000026745CDD0, v64);
  *v63 = v717;

  v61(v877, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v718 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000018, 0x800000026745CDF0, v68);
  *v67 = v718;

  v65(v877, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v719 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x800000026745CE10, v72);
  *v71 = v719;

  v69(v877, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v720 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ALL, 0x800000026745CE30, v76);
  *v75 = v720;

  v73(v877, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v721 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001ALL, 0x800000026745CE50, v80);
  *v79 = v721;

  v77(v877, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v722 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ALL, 0x800000026745CE70, v84);
  *v83 = v722;

  v81(v877, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v723 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ALL, 0x800000026745CE90, v88);
  *v87 = v723;

  v85(v877, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v724 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ALL, 0x800000026745CEB0, v92);
  *v91 = v724;

  v89(v877, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v725 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ALL, 0x800000026745CED0, v96);
  *v95 = v725;

  v93(v877, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v726 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ALL, 0x800000026745CEF0, v100);
  *v99 = v726;

  v97(v877, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v727 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x800000026745CF10, v104);
  *v103 = v727;

  v101(v877, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v728 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001ALL, 0x800000026745CF30, v108);
  *v107 = v728;

  v105(v877, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v729 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ALL, 0x800000026745CF50, v112);
  *v111 = v729;

  v109(v877, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v730 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001ALL, 0x800000026745CF70, v116);
  *v115 = v730;

  v113(v877, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v731 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ALL, 0x800000026745CF90, v120);
  *v119 = v731;

  v117(v877, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v732 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000001ALL, 0x800000026745CFB0, v124);
  *v123 = v732;

  v121(v877, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v733 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001ALL, 0x800000026745CFD0, v128);
  *v127 = v733;

  v125(v877, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v734 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ALL, 0x800000026745CFF0, v132);
  *v131 = v734;

  v129(v877, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v735 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001ALL, 0x800000026745D010, v136);
  *v135 = v735;

  v133(v877, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v736 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000022, 0x800000026745D030, v140);
  *v139 = v736;

  v137(v877, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v737 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000019, 0x800000026745D060, v144);
  *v143 = v737;

  v141(v877, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v738 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000017, 0x800000026745D080, v148);
  *v147 = v738;

  v145(v877, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v739 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000017, 0x800000026745D0A0, v152);
  *v151 = v739;

  v149(v877, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000017, 0x800000026745D0C0, v156);
  *v155 = v740;

  v153(v877, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v741 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000017, 0x800000026745D0E0, v160);
  *v159 = v741;

  v157(v877, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v742 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000017, 0x800000026745D100, v164);
  *v163 = v742;

  v161(v877, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v743 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000017, 0x800000026745D120, v168);
  *v167 = v743;

  v165(v877, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v744 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000017, 0x800000026745D140, v172);
  *v171 = v744;

  v169(v877, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v745 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000019, 0x800000026745D160, v176);
  *v175 = v745;

  v173(v877, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v746 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000019, 0x800000026745D180, v180);
  *v179 = v746;

  v177(v877, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v747 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000015, 0x800000026745D1A0, v184);
  *v183 = v747;

  v181(v877, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v748 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000015, 0x800000026745D1C0, v188);
  *v187 = v748;

  v185(v877, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v749 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000015, 0x800000026745D1E0, v192);
  *v191 = v749;

  v189(v877, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000015, 0x800000026745D200, v196);
  *v195 = v750;

  v193(v877, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v751 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000015, 0x800000026745D220, v200);
  *v199 = v751;

  v197(v877, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v752 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000015, 0x800000026745D240, v204);
  *v203 = v752;

  v201(v877, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v753 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000015, 0x800000026745D260, v208);
  *v207 = v753;

  v205(v877, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v754 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000015, 0x800000026745D280, v212);
  *v211 = v754;

  v209(v877, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v755 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000015, 0x800000026745D2A0, v216);
  *v215 = v755;

  v213(v877, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v756 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000015, 0x800000026745D2C0, v220);
  *v219 = v756;

  v217(v877, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v757 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000016, 0x800000026745D2E0, v224);
  *v223 = v757;

  v221(v877, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v758 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000016, 0x800000026745D300, v228);
  *v227 = v758;

  v225(v877, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000016, 0x800000026745D320, v232);
  *v231 = v759;

  v229(v877, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v760 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000016, 0x800000026745D340, v236);
  *v235 = v760;

  v233(v877, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v761 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000016, 0x800000026745D360, v240);
  *v239 = v761;

  v237(v877, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v762 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000016, 0x800000026745D380, v244);
  *v243 = v762;

  v241(v877, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v763 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000016, 0x800000026745D3A0, v248);
  *v247 = v763;

  v245(v877, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v764 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000016, 0x800000026745D3C0, v252);
  *v251 = v764;

  v249(v877, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v765 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000016, 0x800000026745D3E0, v256);
  *v255 = v765;

  v253(v877, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v766 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000016, 0x800000026745D400, v260);
  *v259 = v766;

  v257(v877, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v767 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000016, 0x800000026745D420, v264);
  *v263 = v767;

  v261(v877, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000001CLL, 0x800000026745D440, v268);
  *v267 = v768;

  v265(v877, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v769 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0xD00000000000001CLL, 0x800000026745D460, v272);
  *v271 = v769;

  v269(v877, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v770 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0xD00000000000001CLL, 0x800000026745D480, v276);
  *v275 = v770;

  v273(v877, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v771 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0xD00000000000001CLL, 0x800000026745D4A0, v280);
  *v279 = v771;

  v277(v877, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v772 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(70, 0xD00000000000001ELL, 0x800000026745D4C0, v284);
  *v283 = v772;

  v281(v877, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = swift_isUniquelyReferenced_nonNull_native();
  v773 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(71, 0xD00000000000001ELL, 0x800000026745D4E0, v288);
  *v287 = v773;

  v285(v877, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = swift_isUniquelyReferenced_nonNull_native();
  v774 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(72, 0xD00000000000001ELL, 0x800000026745D500, v292);
  *v291 = v774;

  v289(v877, 0);
  v293 = sub_26738111C();
  v295 = v294;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v775 = *v295;
  *v295 = 0x8000000000000000;
  sub_266ECD368(73, 0xD000000000000024, 0x800000026745D520, v296);
  *v295 = v775;

  v293(v877, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v776 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(74, 0xD00000000000001ELL, 0x800000026745D550, v300);
  *v299 = v776;

  v297(v877, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v777 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(75, 0xD00000000000001ELL, 0x800000026745D570, v304);
  *v303 = v777;

  v301(v877, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v778 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(76, 0xD00000000000001ELL, 0x800000026745D590, v308);
  *v307 = v778;

  v305(v877, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v779 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(77, 0xD000000000000024, 0x800000026745D5B0, v312);
  *v311 = v779;

  v309(v877, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = swift_isUniquelyReferenced_nonNull_native();
  v780 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(78, 0xD00000000000001CLL, 0x800000026745D5E0, v316);
  *v315 = v780;

  v313(v877, 0);
  v317 = sub_26738111C();
  v319 = v318;
  v320 = swift_isUniquelyReferenced_nonNull_native();
  v781 = *v319;
  *v319 = 0x8000000000000000;
  sub_266ECD368(79, 0xD00000000000001DLL, 0x800000026745D600, v320);
  *v319 = v781;

  v317(v877, 0);
  v321 = sub_26738111C();
  v323 = v322;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v782 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000017, 0x800000026745D620, v324);
  *v323 = v782;

  v321(v877, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = swift_isUniquelyReferenced_nonNull_native();
  v783 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(81, 0xD000000000000020, 0x800000026745D640, v328);
  *v327 = v783;

  v325(v877, 0);
  v329 = sub_26738111C();
  v331 = v330;
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v784 = *v331;
  *v331 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000017, 0x800000026745D670, v332);
  *v331 = v784;

  v329(v877, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v785 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000017, 0x800000026745D690, v336);
  *v335 = v785;

  v333(v877, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = swift_isUniquelyReferenced_nonNull_native();
  v786 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(84, 0xD000000000000017, 0x800000026745D6B0, v340);
  *v339 = v786;

  v337(v877, 0);
  v341 = sub_26738111C();
  v343 = v342;
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v787 = *v343;
  *v343 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000017, 0x800000026745D6D0, v344);
  *v343 = v787;

  v341(v877, 0);
  v345 = sub_26738111C();
  v347 = v346;
  v348 = swift_isUniquelyReferenced_nonNull_native();
  v788 = *v347;
  *v347 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000017, 0x800000026745D6F0, v348);
  *v347 = v788;

  v345(v877, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = swift_isUniquelyReferenced_nonNull_native();
  v789 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(87, 0xD000000000000017, 0x800000026745D710, v352);
  *v351 = v789;

  v349(v877, 0);
  v353 = sub_26738111C();
  v355 = v354;
  v356 = swift_isUniquelyReferenced_nonNull_native();
  v790 = *v355;
  *v355 = 0x8000000000000000;
  sub_266ECD368(88, 0xD000000000000017, 0x800000026745D730, v356);
  *v355 = v790;

  v353(v877, 0);
  v357 = sub_26738111C();
  v359 = v358;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v791 = *v359;
  *v359 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000019, 0x800000026745D750, v360);
  *v359 = v791;

  v357(v877, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v792 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(90, 0xD000000000000019, 0x800000026745D770, v364);
  *v363 = v792;

  v361(v877, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = swift_isUniquelyReferenced_nonNull_native();
  v793 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(91, 0xD00000000000001DLL, 0x800000026745D790, v368);
  *v367 = v793;

  v365(v877, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = swift_isUniquelyReferenced_nonNull_native();
  v794 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(92, 0xD000000000000019, 0x800000026745D7B0, v372);
  *v371 = v794;

  v369(v877, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = swift_isUniquelyReferenced_nonNull_native();
  v795 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000017, 0x800000026745D7D0, v376);
  *v375 = v795;

  v373(v877, 0);
  v377 = sub_26738111C();
  v379 = v378;
  v380 = swift_isUniquelyReferenced_nonNull_native();
  v796 = *v379;
  *v379 = 0x8000000000000000;
  sub_266ECD368(94, 0xD000000000000017, 0x800000026745D7F0, v380);
  *v379 = v796;

  v377(v877, 0);
  v381 = sub_26738111C();
  v383 = v382;
  v384 = swift_isUniquelyReferenced_nonNull_native();
  v797 = *v383;
  *v383 = 0x8000000000000000;
  sub_266ECD368(95, 0xD000000000000019, 0x800000026745D810, v384);
  *v383 = v797;

  v381(v877, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = swift_isUniquelyReferenced_nonNull_native();
  v798 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(96, 0xD000000000000019, 0x800000026745D830, v388);
  *v387 = v798;

  v385(v877, 0);
  v389 = sub_26738111C();
  v391 = v390;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v799 = *v391;
  *v391 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000019, 0x800000026745D850, v392);
  *v391 = v799;

  v389(v877, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = swift_isUniquelyReferenced_nonNull_native();
  v800 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(98, 0xD000000000000019, 0x800000026745D870, v396);
  *v395 = v800;

  v393(v877, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = swift_isUniquelyReferenced_nonNull_native();
  v801 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(99, 0xD000000000000019, 0x800000026745D890, v400);
  *v399 = v801;

  v397(v877, 0);
  v401 = sub_26738111C();
  v403 = v402;
  v404 = swift_isUniquelyReferenced_nonNull_native();
  v802 = *v403;
  *v403 = 0x8000000000000000;
  sub_266ECD368(100, 0xD00000000000001ALL, 0x800000026745D8B0, v404);
  *v403 = v802;

  v401(v877, 0);
  v405 = sub_26738111C();
  v407 = v406;
  v408 = swift_isUniquelyReferenced_nonNull_native();
  v803 = *v407;
  *v407 = 0x8000000000000000;
  sub_266ECD368(101, 0xD00000000000001ALL, 0x800000026745D8D0, v408);
  *v407 = v803;

  v405(v877, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = swift_isUniquelyReferenced_nonNull_native();
  v804 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(102, 0xD00000000000001ALL, 0x800000026745D8F0, v412);
  *v411 = v804;

  v409(v877, 0);
  v413 = sub_26738111C();
  v415 = v414;
  v416 = swift_isUniquelyReferenced_nonNull_native();
  v805 = *v415;
  *v415 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000001ALL, 0x800000026745D910, v416);
  *v415 = v805;

  v413(v877, 0);
  v417 = sub_26738111C();
  v419 = v418;
  v420 = swift_isUniquelyReferenced_nonNull_native();
  v806 = *v419;
  *v419 = 0x8000000000000000;
  sub_266ECD368(104, 0xD00000000000001ALL, 0x800000026745D930, v420);
  *v419 = v806;

  v417(v877, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = swift_isUniquelyReferenced_nonNull_native();
  v807 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(105, 0xD00000000000001ALL, 0x800000026745D950, v424);
  *v423 = v807;

  v421(v877, 0);
  v425 = sub_26738111C();
  v427 = v426;
  v428 = swift_isUniquelyReferenced_nonNull_native();
  v808 = *v427;
  *v427 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000001ALL, 0x800000026745D970, v428);
  *v427 = v808;

  v425(v877, 0);
  v429 = sub_26738111C();
  v431 = v430;
  v432 = swift_isUniquelyReferenced_nonNull_native();
  v809 = *v431;
  *v431 = 0x8000000000000000;
  sub_266ECD368(107, 0xD00000000000001ALL, 0x800000026745D990, v432);
  *v431 = v809;

  v429(v877, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = swift_isUniquelyReferenced_nonNull_native();
  v810 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(108, 0xD00000000000001ALL, 0x800000026745D9B0, v436);
  *v435 = v810;

  v433(v877, 0);
  v437 = sub_26738111C();
  v439 = v438;
  v440 = swift_isUniquelyReferenced_nonNull_native();
  v811 = *v439;
  *v439 = 0x8000000000000000;
  sub_266ECD368(109, 0xD00000000000001ALL, 0x800000026745D9D0, v440);
  *v439 = v811;

  v437(v877, 0);
  v441 = sub_26738111C();
  v443 = v442;
  v444 = swift_isUniquelyReferenced_nonNull_native();
  v812 = *v443;
  *v443 = 0x8000000000000000;
  sub_266ECD368(110, 0xD00000000000001ALL, 0x800000026745D9F0, v444);
  *v443 = v812;

  v441(v877, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = swift_isUniquelyReferenced_nonNull_native();
  v813 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000017, 0x800000026745DA10, v448);
  *v447 = v813;

  v445(v877, 0);
  v449 = sub_26738111C();
  v451 = v450;
  v452 = swift_isUniquelyReferenced_nonNull_native();
  v814 = *v451;
  *v451 = 0x8000000000000000;
  sub_266ECD368(112, 0xD000000000000017, 0x800000026745DA30, v452);
  *v451 = v814;

  v449(v877, 0);
  v453 = sub_26738111C();
  v455 = v454;
  v456 = swift_isUniquelyReferenced_nonNull_native();
  v815 = *v455;
  *v455 = 0x8000000000000000;
  sub_266ECD368(113, 0xD000000000000019, 0x800000026745DA50, v456);
  *v455 = v815;

  v453(v877, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = swift_isUniquelyReferenced_nonNull_native();
  v816 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(114, 0xD000000000000019, 0x800000026745DA70, v460);
  *v459 = v816;

  v457(v877, 0);
  v461 = sub_26738111C();
  v463 = v462;
  v464 = swift_isUniquelyReferenced_nonNull_native();
  v817 = *v463;
  *v463 = 0x8000000000000000;
  sub_266ECD368(115, 0xD000000000000019, 0x800000026745DA90, v464);
  *v463 = v817;

  v461(v877, 0);
  v465 = sub_26738111C();
  v467 = v466;
  v468 = swift_isUniquelyReferenced_nonNull_native();
  v818 = *v467;
  *v467 = 0x8000000000000000;
  sub_266ECD368(116, 0xD000000000000019, 0x800000026745DAB0, v468);
  *v467 = v818;

  v465(v877, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = swift_isUniquelyReferenced_nonNull_native();
  v819 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(117, 0xD000000000000019, 0x800000026745DAD0, v472);
  *v471 = v819;

  v469(v877, 0);
  v473 = sub_26738111C();
  v475 = v474;
  v476 = swift_isUniquelyReferenced_nonNull_native();
  v820 = *v475;
  *v475 = 0x8000000000000000;
  sub_266ECD368(118, 0xD000000000000019, 0x800000026745DAF0, v476);
  *v475 = v820;

  v473(v877, 0);
  v477 = sub_26738111C();
  v479 = v478;
  v480 = swift_isUniquelyReferenced_nonNull_native();
  v821 = *v479;
  *v479 = 0x8000000000000000;
  sub_266ECD368(119, 0xD000000000000019, 0x800000026745DB10, v480);
  *v479 = v821;

  v477(v877, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = swift_isUniquelyReferenced_nonNull_native();
  v822 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(120, 0xD000000000000017, 0x800000026745DB30, v484);
  *v483 = v822;

  v481(v877, 0);
  v485 = sub_26738111C();
  v487 = v486;
  v488 = swift_isUniquelyReferenced_nonNull_native();
  v823 = *v487;
  *v487 = 0x8000000000000000;
  sub_266ECD368(121, 0xD000000000000017, 0x800000026745DB50, v488);
  *v487 = v823;

  v485(v877, 0);
  v489 = sub_26738111C();
  v491 = v490;
  v492 = swift_isUniquelyReferenced_nonNull_native();
  v824 = *v491;
  *v491 = 0x8000000000000000;
  sub_266ECD368(122, 0xD000000000000019, 0x800000026745DB70, v492);
  *v491 = v824;

  v489(v877, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = swift_isUniquelyReferenced_nonNull_native();
  v825 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(123, 0xD000000000000019, 0x800000026745DB90, v496);
  *v495 = v825;

  v493(v877, 0);
  v497 = sub_26738111C();
  v499 = v498;
  v500 = swift_isUniquelyReferenced_nonNull_native();
  v826 = *v499;
  *v499 = 0x8000000000000000;
  sub_266ECD368(124, 0xD000000000000019, 0x800000026745DBB0, v500);
  *v499 = v826;

  v497(v877, 0);
  v501 = sub_26738111C();
  v503 = v502;
  v504 = swift_isUniquelyReferenced_nonNull_native();
  v827 = *v503;
  *v503 = 0x8000000000000000;
  sub_266ECD368(125, 0xD000000000000019, 0x800000026745DBD0, v504);
  *v503 = v827;

  v501(v877, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = swift_isUniquelyReferenced_nonNull_native();
  v828 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(126, 0xD00000000000001BLL, 0x800000026745DBF0, v508);
  *v507 = v828;

  v505(v877, 0);
  v509 = sub_26738111C();
  v511 = v510;
  v512 = swift_isUniquelyReferenced_nonNull_native();
  v829 = *v511;
  *v511 = 0x8000000000000000;
  sub_266ECD368(127, 0xD00000000000001CLL, 0x800000026745DC10, v512);
  *v511 = v829;

  v509(v877, 0);
  v513 = sub_26738111C();
  v515 = v514;
  v516 = swift_isUniquelyReferenced_nonNull_native();
  v830 = *v515;
  *v515 = 0x8000000000000000;
  sub_266ECD368(128, 0xD000000000000021, 0x800000026745DC30, v516);
  *v515 = v830;

  v513(v877, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = swift_isUniquelyReferenced_nonNull_native();
  v831 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(129, 0xD000000000000018, 0x800000026745DC60, v520);
  *v519 = v831;

  v517(v877, 0);
  v521 = sub_26738111C();
  v523 = v522;
  v524 = swift_isUniquelyReferenced_nonNull_native();
  v832 = *v523;
  *v523 = 0x8000000000000000;
  sub_266ECD368(130, 0xD000000000000018, 0x800000026745DC80, v524);
  *v523 = v832;

  v521(v877, 0);
  v525 = sub_26738111C();
  v527 = v526;
  v528 = swift_isUniquelyReferenced_nonNull_native();
  v833 = *v527;
  *v527 = 0x8000000000000000;
  sub_266ECD368(131, 0xD00000000000001ALL, 0x800000026745DCA0, v528);
  *v527 = v833;

  v525(v877, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = swift_isUniquelyReferenced_nonNull_native();
  v834 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(132, 0xD00000000000001ALL, 0x800000026745DCC0, v532);
  *v531 = v834;

  v529(v877, 0);
  v533 = sub_26738111C();
  v535 = v534;
  v536 = swift_isUniquelyReferenced_nonNull_native();
  v835 = *v535;
  *v535 = 0x8000000000000000;
  sub_266ECD368(133, 0xD00000000000001ALL, 0x800000026745DCE0, v536);
  *v535 = v835;

  v533(v877, 0);
  v537 = sub_26738111C();
  v539 = v538;
  v540 = swift_isUniquelyReferenced_nonNull_native();
  v836 = *v539;
  *v539 = 0x8000000000000000;
  sub_266ECD368(134, 0xD00000000000001ALL, 0x800000026745DD00, v540);
  *v539 = v836;

  v537(v877, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = swift_isUniquelyReferenced_nonNull_native();
  v837 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(135, 0xD00000000000001ALL, 0x800000026745DD20, v544);
  *v543 = v837;

  v541(v877, 0);
  v545 = sub_26738111C();
  v547 = v546;
  v548 = swift_isUniquelyReferenced_nonNull_native();
  v838 = *v547;
  *v547 = 0x8000000000000000;
  sub_266ECD368(136, 0xD00000000000001ALL, 0x800000026745DD40, v548);
  *v547 = v838;

  v545(v877, 0);
  v549 = sub_26738111C();
  v551 = v550;
  v552 = swift_isUniquelyReferenced_nonNull_native();
  v839 = *v551;
  *v551 = 0x8000000000000000;
  sub_266ECD368(137, 0xD000000000000018, 0x800000026745DD60, v552);
  *v551 = v839;

  v549(v877, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = swift_isUniquelyReferenced_nonNull_native();
  v840 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(138, 0xD000000000000018, 0x800000026745DD80, v556);
  *v555 = v840;

  v553(v877, 0);
  v557 = sub_26738111C();
  v559 = v558;
  v560 = swift_isUniquelyReferenced_nonNull_native();
  v841 = *v559;
  *v559 = 0x8000000000000000;
  sub_266ECD368(139, 0xD00000000000001BLL, 0x800000026745DDA0, v560);
  *v559 = v841;

  v557(v877, 0);
  v561 = sub_26738111C();
  v563 = v562;
  v564 = swift_isUniquelyReferenced_nonNull_native();
  v842 = *v563;
  *v563 = 0x8000000000000000;
  sub_266ECD368(140, 0xD00000000000001BLL, 0x800000026745DDC0, v564);
  *v563 = v842;

  v561(v877, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = swift_isUniquelyReferenced_nonNull_native();
  v843 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(141, 0xD00000000000001BLL, 0x800000026745DDE0, v568);
  *v567 = v843;

  v565(v877, 0);
  v569 = sub_26738111C();
  v571 = v570;
  v572 = swift_isUniquelyReferenced_nonNull_native();
  v844 = *v571;
  *v571 = 0x8000000000000000;
  sub_266ECD368(142, 0xD00000000000001BLL, 0x800000026745DE00, v572);
  *v571 = v844;

  v569(v877, 0);
  v573 = sub_26738111C();
  v575 = v574;
  v576 = swift_isUniquelyReferenced_nonNull_native();
  v845 = *v575;
  *v575 = 0x8000000000000000;
  sub_266ECD368(143, 0xD00000000000001BLL, 0x800000026745DE20, v576);
  *v575 = v845;

  v573(v877, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = swift_isUniquelyReferenced_nonNull_native();
  v846 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(144, 0xD00000000000001BLL, 0x800000026745DE40, v580);
  *v579 = v846;

  v577(v877, 0);
  v581 = sub_26738111C();
  v583 = v582;
  v584 = swift_isUniquelyReferenced_nonNull_native();
  v847 = *v583;
  *v583 = 0x8000000000000000;
  sub_266ECD368(145, 0xD00000000000001BLL, 0x800000026745DE60, v584);
  *v583 = v847;

  v581(v877, 0);
  v585 = sub_26738111C();
  v587 = v586;
  v588 = swift_isUniquelyReferenced_nonNull_native();
  v848 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD368(146, 0xD00000000000001BLL, 0x800000026745DE80, v588);
  *v587 = v848;

  v585(v877, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = swift_isUniquelyReferenced_nonNull_native();
  v849 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(147, 0xD00000000000001BLL, 0x800000026745DEA0, v592);
  *v591 = v849;

  v589(v877, 0);
  v593 = sub_26738111C();
  v595 = v594;
  v596 = swift_isUniquelyReferenced_nonNull_native();
  v850 = *v595;
  *v595 = 0x8000000000000000;
  sub_266ECD368(148, 0xD00000000000001BLL, 0x800000026745DEC0, v596);
  *v595 = v850;

  v593(v877, 0);
  v597 = sub_26738111C();
  v599 = v598;
  v600 = swift_isUniquelyReferenced_nonNull_native();
  v851 = *v599;
  *v599 = 0x8000000000000000;
  sub_266ECD368(149, 0xD00000000000001BLL, 0x800000026745DEE0, v600);
  *v599 = v851;

  v597(v877, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = swift_isUniquelyReferenced_nonNull_native();
  v852 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(150, 0xD00000000000001BLL, 0x800000026745DF00, v604);
  *v603 = v852;

  v601(v877, 0);
  v605 = sub_26738111C();
  v607 = v606;
  v608 = swift_isUniquelyReferenced_nonNull_native();
  v853 = *v607;
  *v607 = 0x8000000000000000;
  sub_266ECD368(151, 0xD00000000000001BLL, 0x800000026745DF20, v608);
  *v607 = v853;

  v605(v877, 0);
  v609 = sub_26738111C();
  v611 = v610;
  v612 = swift_isUniquelyReferenced_nonNull_native();
  v854 = *v611;
  *v611 = 0x8000000000000000;
  sub_266ECD368(152, 0xD00000000000001BLL, 0x800000026745DF40, v612);
  *v611 = v854;

  v609(v877, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = swift_isUniquelyReferenced_nonNull_native();
  v855 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(153, 0xD00000000000001BLL, 0x800000026745DF60, v616);
  *v615 = v855;

  v613(v877, 0);
  v617 = sub_26738111C();
  v619 = v618;
  v620 = swift_isUniquelyReferenced_nonNull_native();
  v856 = *v619;
  *v619 = 0x8000000000000000;
  sub_266ECD368(154, 0xD00000000000001BLL, 0x800000026745DF80, v620);
  *v619 = v856;

  v617(v877, 0);
  v621 = sub_26738111C();
  v623 = v622;
  v624 = swift_isUniquelyReferenced_nonNull_native();
  v857 = *v623;
  *v623 = 0x8000000000000000;
  sub_266ECD368(155, 0xD00000000000001BLL, 0x800000026745DFA0, v624);
  *v623 = v857;

  v621(v877, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = swift_isUniquelyReferenced_nonNull_native();
  v858 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(156, 0xD00000000000001BLL, 0x800000026745DFC0, v628);
  *v627 = v858;

  v625(v877, 0);
  v629 = sub_26738111C();
  v631 = v630;
  v632 = swift_isUniquelyReferenced_nonNull_native();
  v859 = *v631;
  *v631 = 0x8000000000000000;
  sub_266ECD368(157, 0xD00000000000001BLL, 0x800000026745DFE0, v632);
  *v631 = v859;

  v629(v877, 0);
  v633 = sub_26738111C();
  v635 = v634;
  v636 = swift_isUniquelyReferenced_nonNull_native();
  v860 = *v635;
  *v635 = 0x8000000000000000;
  sub_266ECD368(158, 0xD00000000000001BLL, 0x800000026745E000, v636);
  *v635 = v860;

  v633(v877, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = swift_isUniquelyReferenced_nonNull_native();
  v861 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(159, 0xD00000000000001BLL, 0x800000026745E020, v640);
  *v639 = v861;

  v637(v877, 0);
  v641 = sub_26738111C();
  v643 = v642;
  v644 = swift_isUniquelyReferenced_nonNull_native();
  v862 = *v643;
  *v643 = 0x8000000000000000;
  sub_266ECD368(160, 0xD00000000000001BLL, 0x800000026745E040, v644);
  *v643 = v862;

  v641(v877, 0);
  v645 = sub_26738111C();
  v647 = v646;
  v648 = swift_isUniquelyReferenced_nonNull_native();
  v863 = *v647;
  *v647 = 0x8000000000000000;
  sub_266ECD368(161, 0xD00000000000001BLL, 0x800000026745E060, v648);
  *v647 = v863;

  v645(v877, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = swift_isUniquelyReferenced_nonNull_native();
  v864 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(162, 0xD00000000000001BLL, 0x800000026745E080, v652);
  *v651 = v864;

  v649(v877, 0);
  v653 = sub_26738111C();
  v655 = v654;
  v656 = swift_isUniquelyReferenced_nonNull_native();
  v865 = *v655;
  *v655 = 0x8000000000000000;
  sub_266ECD368(163, 0xD000000000000020, 0x800000026745E0A0, v656);
  *v655 = v865;

  v653(v877, 0);
  v657 = sub_26738111C();
  v659 = v658;
  v660 = swift_isUniquelyReferenced_nonNull_native();
  v866 = *v659;
  *v659 = 0x8000000000000000;
  sub_266ECD368(164, 0xD000000000000020, 0x800000026745E0D0, v660);
  *v659 = v866;

  v657(v877, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = swift_isUniquelyReferenced_nonNull_native();
  v867 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(165, 0xD000000000000020, 0x800000026745E100, v664);
  *v663 = v867;

  v661(v877, 0);
  v665 = sub_26738111C();
  v667 = v666;
  v668 = swift_isUniquelyReferenced_nonNull_native();
  v868 = *v667;
  *v667 = 0x8000000000000000;
  sub_266ECD368(166, 0xD000000000000021, 0x800000026745E130, v668);
  *v667 = v868;

  v665(v877, 0);
  v669 = sub_26738111C();
  v671 = v670;
  v672 = swift_isUniquelyReferenced_nonNull_native();
  v869 = *v671;
  *v671 = 0x8000000000000000;
  sub_266ECD368(167, 0xD000000000000021, 0x800000026745E160, v672);
  *v671 = v869;

  v669(v877, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = swift_isUniquelyReferenced_nonNull_native();
  v870 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(168, 0xD000000000000021, 0x800000026745E190, v676);
  *v675 = v870;

  v673(v877, 0);
  v677 = sub_26738111C();
  v679 = v678;
  v680 = swift_isUniquelyReferenced_nonNull_native();
  v871 = *v679;
  *v679 = 0x8000000000000000;
  sub_266ECD368(169, 0xD000000000000023, 0x800000026745E1C0, v680);
  *v679 = v871;

  v677(v877, 0);
  v681 = sub_26738111C();
  v683 = v682;
  v684 = swift_isUniquelyReferenced_nonNull_native();
  v872 = *v683;
  *v683 = 0x8000000000000000;
  sub_266ECD368(170, 0xD000000000000023, 0x800000026745E1F0, v684);
  *v683 = v872;

  v681(v877, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = swift_isUniquelyReferenced_nonNull_native();
  v873 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(171, 0xD000000000000021, 0x800000026745E220, v688);
  *v687 = v873;

  v685(v877, 0);
  v689 = sub_26738111C();
  v691 = v690;
  v692 = swift_isUniquelyReferenced_nonNull_native();
  v874 = *v691;
  *v691 = 0x8000000000000000;
  sub_266ECD368(172, 0xD00000000000001ALL, 0x800000026745E250, v692);
  *v691 = v874;

  v689(v877, 0);
  v693 = sub_26738111C();
  v695 = v694;
  v696 = swift_isUniquelyReferenced_nonNull_native();
  v875 = *v695;
  *v695 = 0x8000000000000000;
  sub_266ECD368(173, 0xD000000000000022, 0x800000026745E270, v696);
  *v695 = v875;

  v693(v877, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = swift_isUniquelyReferenced_nonNull_native();
  v876 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(174, 0xD00000000000001CLL, 0x800000026745E2A0, v700);
  *v699 = v876;

  return v697(v877, 0);
}

uint64_t sub_2670EF93C(uint64_t a1)
{
  v2 = sub_2670EFA40(&qword_2800F4BC0, &protocol conformance descriptor for MWTSchemaMWTFormatLayout);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EF9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EFA40(&qword_2800F4BC0, &protocol conformance descriptor for MWTSchemaMWTFormatLayout);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EFA40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTFormatTier.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745E2F0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026745E310, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745E340, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x800000026745E370, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745E390, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026745E3C0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2670EFDEC(uint64_t a1)
{
  v2 = sub_2670EFEF0(&qword_2800F4BD0, &protocol conformance descriptor for MWTSchemaMWTFormatTier);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EFE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EFEF0(&qword_2800F4BD0, &protocol conformance descriptor for MWTSchemaMWTFormatTier);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EFEF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatTier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTMusicDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745E410, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745E430, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745E450, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026745E480, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026745E4B0, v20);
  *v19 = v26;

  v17(v27, 0);
  sub_266ECB128(&unk_287888B10);
  return sub_26738112C();
}

uint64_t sub_2670F023C(uint64_t a1)
{
  v2 = sub_2670F0340(&qword_2800F4BE0, &protocol conformance descriptor for MWTSchemaMWTMusicDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F02A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F0340(&qword_2800F4BE0, &protocol conformance descriptor for MWTSchemaMWTMusicDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F0340(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTMusicDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTMusicMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v219 = sub_26738113C();
  v4 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v216 = v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v211 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTMusicDomain(0);
  sub_2670F3A90(&qword_2800F4BD8, type metadata accessor for MWTSchemaMWTMusicDomain, &protocol conformance descriptor for MWTSchemaMWTMusicDomain);
  v211[1] = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v220 = v10 + 56;
  v223 = v11;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44636973756DLL, 0xEB000000006E6961);
  v12(v225, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v224, 0x6D6F44636973756DLL, 0xEB000000006E6961);
  v15 = *(v10 + 48);
  v221 = v9;
  v214 = v15;
  v215 = v10 + 48;
  if (!(v15)(v16, 1, v9))
  {
    sub_266ECB128(&unk_287888B38);
    sub_26738115C();
  }

  (v14)(v224, 0);
  v13(v225, 0);
  type metadata accessor for MWTSchemaMWTQueueType(0);
  sub_2670F3A90(&qword_2800F4BE8, type metadata accessor for MWTSchemaMWTQueueType, &protocol conformance descriptor for MWTSchemaMWTQueueType);
  sub_26738120C();
  v17 = v221;
  v223(v8, 0, 1, v221);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x7079546575657571, 0xE900000000000065);
  v18(v225, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v224, 0x7079546575657571, 0xE900000000000065);
  if (!(v214)(v21, 1, v17))
  {
    sub_266ECB128(&unk_287888B60);
    sub_26738115C();
  }

  (v20)(v224, 0);
  v19(v225, 0);
  v22 = *(v4 + 104);
  v212 = *MEMORY[0x277D3E538];
  v218 = v4 + 104;
  v222 = v22;
  v22(v216);
  v225[0] = 1;
  sub_26738114C();
  v23 = v221;
  v223(v8, 0, 1, v221);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x7A69536575657571, 0xE900000000000065);
  v24(v225, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v224, 0x7A69536575657571, 0xE900000000000065);
  if (!(v214)(v27, 1, v23))
  {
    sub_266ECB128(&unk_287888B88);
    sub_26738115C();
  }

  (v26)(v224, 0);
  v25(v225, 0);
  v213 = *MEMORY[0x277D3E4E8];
  v222(v216);
  v225[0] = 1;
  sub_26738114C();
  v28 = v221;
  v29 = v223;
  v223(v8, 0, 1, v221);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C66667568537369, 0xEA00000000006465);
  v30(v225, 0);
  type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource(0);
  sub_2670F3A90(&qword_2800F4BF0, type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource, &protocol conformance descriptor for MWTSchemaMWTPrefetchedMetadataSource);
  sub_26738120C();
  v29(v8, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026745E520);
  v31(v225, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v224, 0xD000000000000018, 0x800000026745E520);
  if (!(v214)(v34, 1, v28))
  {
    sub_266ECB128(&unk_287888BB0);
    sub_26738115C();
  }

  (v33)(v224, 0);
  v32(v225, 0);
  type metadata accessor for MWTSchemaMWTAssetEndPoint(0);
  sub_2670F3A90(&qword_2800F4AF0, type metadata accessor for MWTSchemaMWTAssetEndPoint, &protocol conformance descriptor for MWTSchemaMWTAssetEndPoint);
  sub_26738120C();
  v35 = v221;
  v223(v8, 0, 1, v221);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0x646E457465737361, 0xED0000746E696F50);
  v36(v225, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v224, 0x646E457465737361, 0xED0000746E696F50);
  if (!(v214)(v39, 1, v35))
  {
    sub_266ECB128(&unk_287888BD8);
    sub_26738115C();
  }

  (v38)(v224, 0);
  v37(v225, 0);
  type metadata accessor for MWTSchemaMWTStreamingContentType(0);
  sub_2670F3A90(&qword_2800F4BF8, type metadata accessor for MWTSchemaMWTStreamingContentType, &protocol conformance descriptor for MWTSchemaMWTStreamingContentType);
  sub_26738120C();
  v40 = v221;
  v41 = v223;
  v223(v8, 0, 1, v221);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026745E540);
  v42(v225, 0);
  type metadata accessor for MWTSchemaMWTFormatCodec(0);
  sub_2670F3A90(&qword_2800F4BA8, type metadata accessor for MWTSchemaMWTFormatCodec, &protocol conformance descriptor for MWTSchemaMWTFormatCodec);
  sub_26738120C();
  v43 = v40;
  v41(v8, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4374616D726F66, 0xEB00000000636564);
  v44(v225, 0);
  v45 = v216;
  v217 = a2;
  v46 = v219;
  v47 = v222;
  (v222)(v216, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v41(v8, 0, 1, v43);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0x694274616D726F66, 0xED00006574617274);
  v48(v225, 0);
  v49 = v212;
  (v47)(v45, v212, v46);
  v225[0] = 1;
  sub_26738114C();
  v50 = v223;
  v223(v8, 0, 1, v43);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0x694274616D726F66, 0xEE00687470654474);
  v51(v225, 0);
  (v47)(v45, v49, v46);
  v225[0] = 1;
  sub_26738114C();
  v50(v8, 0, 1, v43);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0x684374616D726F66, 0xEE00736C656E6E61);
  v52(v225, 0);
  type metadata accessor for MWTSchemaMWTFormatLayout(0);
  sub_2670F3A90(&qword_2800F4BB8, type metadata accessor for MWTSchemaMWTFormatLayout, &protocol conformance descriptor for MWTSchemaMWTFormatLayout);
  sub_26738120C();
  v53 = v43;
  v50(v8, 0, 1, v43);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0x614C74616D726F66, 0xEC00000074756F79);
  v54(v225, 0);
  v55 = sub_2673811AC();
  v56 = sub_266ECB6CC(v224, 0x614C74616D726F66, 0xEC00000074756F79);
  if (!(v214)(v57, 1, v53))
  {
    sub_266ECB128(&unk_287888C00);
    sub_26738115C();
  }

  (v56)(v224, 0);
  v55(v225, 0);
  v58 = v216;
  (v222)(v216, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v59 = v221;
  v60 = v223;
  v223(v8, 0, 1, v221);
  v61 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026745E560);
  v61(v225, 0);
  type metadata accessor for MWTSchemaMWTFormatTier(0);
  sub_2670F3A90(&qword_2800F4BC8, type metadata accessor for MWTSchemaMWTFormatTier, &protocol conformance descriptor for MWTSchemaMWTFormatTier);
  sub_26738120C();
  v60(v8, 0, 1, v59);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0x695474616D726F66, 0xEA00000000007265);
  v62(v225, 0);
  (v222)(v58, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v60(v8, 0, 1, v59);
  v63 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026745E580);
  v63(v225, 0);
  v64 = sub_2673811AC();
  v65 = sub_266ECB6CC(v224, 0xD000000000000010, 0x800000026745E580);
  if (!(v214)(v66, 1, v59))
  {
    sub_266ECB128(&unk_287888C28);
    sub_26738115C();
  }

  (v65)(v224, 0);
  v64(v225, 0);
  type metadata accessor for MWTSchemaMWTRouteConfiguration(0);
  sub_2670F3A90(&qword_2800F4C00, type metadata accessor for MWTSchemaMWTRouteConfiguration, &protocol conformance descriptor for MWTSchemaMWTRouteConfiguration);
  sub_26738120C();
  v67 = v221;
  v223(v8, 0, 1, v221);
  v68 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026745E5A0);
  v68(v225, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v224, 0xD000000000000012, 0x800000026745E5A0);
  if (!(v214)(v71, 1, v67))
  {
    sub_266ECB128(&unk_287888C50);
    sub_26738115C();
  }

  (v70)(v224, 0);
  v69(v225, 0);
  v211[0] = "routeConfiguration";
  v72 = v216;
  v73 = v213;
  v74 = v219;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v75 = v223;
  v223(v8, 0, 1, v221);
  v76 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v211[0] | 0x8000000000000000);
  v76(v225, 0);
  v77 = v74;
  v78 = v222;
  (v222)(v72, v73, v77);
  v225[0] = 1;
  sub_26738114C();
  v79 = v221;
  v75(v8, 0, 1, v221);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, 0x4265726F74537369, 0xEF79646165526761);
  v80(v225, 0);
  (v78)(v72, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v75(v8, 0, 1, v79);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0x52657361654C7369, 0xEC00000079646165);
  v81(v225, 0);
  v82 = sub_2673811AC();
  v83 = sub_266ECB6CC(v224, 0x52657361654C7369, 0xEC00000079646165);
  if (!(v214)(v84, 1, v79))
  {
    sub_266ECB128(&unk_287888C78);
    sub_26738115C();
  }

  (v83)(v224, 0);
  v82(v225, 0);
  v211[0] = "isAccountDataReady";
  v85 = v216;
  v86 = v213;
  v87 = v219;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v88 = v223;
  v223(v8, 0, 1, v221);
  v89 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v211[0] | 0x8000000000000000);
  v89(v225, 0);
  v211[0] = "isOnlineKeyReady";
  v90 = v87;
  v91 = v222;
  (v222)(v85, v86, v90);
  v225[0] = 1;
  sub_26738114C();
  v92 = v221;
  v88(v8, 0, 1, v221);
  v93 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v211[0] | 0x8000000000000000);
  v93(v225, 0);
  (v91)(v85, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v92);
  v94 = sub_2673811AC();
  sub_266EC637C(v8, 0x79654B736C487369, 0xEE00796461655273);
  v94(v225, 0);
  v95 = sub_2673811AC();
  v96 = sub_266ECB6CC(v224, 0x79654B736C487369, 0xEE00796461655273);
  if (!(v214)(v97, 1, v92))
  {
    sub_266ECB128(&unk_287888CA0);
    sub_26738115C();
  }

  (v96)(v224, 0);
  v95(v225, 0);
  v98 = v216;
  v99 = v213;
  v100 = v219;
  v101 = v222;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v102 = v221;
  v223(v8, 0, 1, v221);
  v103 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026745E620);
  v103(v225, 0);
  v211[0] = "isInterruptingPlayback";
  v101(v98, v99, v100);
  v225[0] = 1;
  sub_26738114C();
  v104 = v223;
  v223(v8, 0, 1, v102);
  v105 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v211[0] | 0x8000000000000000);
  v105(v225, 0);
  v211[0] = "isRemoteSetQueue";
  v101(v98, v99, v100);
  v225[0] = 1;
  sub_26738114C();
  v106 = v221;
  v104(v8, 0, 1, v221);
  v107 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v211[0] | 0x8000000000000000);
  v107(v225, 0);
  v101(v98, v99, v100);
  v225[0] = 1;
  sub_26738114C();
  v223(v8, 0, 1, v106);
  v108 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026745E680);
  v108(v225, 0);
  v109 = sub_2673811AC();
  v110 = sub_266ECB6CC(v224, 0xD000000000000010, 0x800000026745E680);
  if (!(v214)(v111, 1, v106))
  {
    sub_266ECB128(&unk_287888CC8);
    sub_26738115C();
  }

  (v110)(v224, 0);
  v109(v225, 0);
  v112 = v216;
  v113 = v213;
  v114 = v219;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v223(v8, 0, 1, v221);
  v115 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C506F7475417369, 0xEA00000000007961);
  v115(v225, 0);
  v211[0] = "isNonDefaultUser";
  v116 = v222;
  (v222)(v112, v113, v114);
  v225[0] = 1;
  sub_26738114C();
  v117 = v223;
  v223(v8, 0, 1, v221);
  v118 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v211[0] | 0x8000000000000000);
  v118(v225, 0);
  v116(v112, v113, v114);
  v225[0] = 1;
  sub_26738114C();
  v119 = v221;
  v117(v8, 0, 1, v221);
  v120 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026745E6C0);
  v120(v225, 0);
  v121 = sub_2673811AC();
  v122 = sub_266ECB6CC(v224, 0xD000000000000013, 0x800000026745E6C0);
  if (!(v214)(v123, 1, v119))
  {
    sub_266ECB128(&unk_287888CF0);
    sub_26738115C();
  }

  (v122)(v224, 0);
  v121(v225, 0);
  v211[0] = "isMiniSinfAvailable";
  v124 = v216;
  v125 = v222;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v126 = v221;
  v127 = v223;
  v223(v8, 0, 1, v221);
  v128 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v211[0] | 0x8000000000000000);
  v128(v225, 0);
  (v125)(v124, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v127(v8, 0, 1, v126);
  v129 = v126;
  v130 = sub_2673811AC();
  sub_266EC637C(v8, 0x654C657A75537369, 0xEB00000000657361);
  v130(v225, 0);
  v131 = sub_2673811AC();
  v132 = sub_266ECB6CC(v224, 0x654C657A75537369, 0xEB00000000657361);
  if (!(v214)(v133, 1, v129))
  {
    sub_266ECB128(&unk_287888D18);
    sub_26738115C();
  }

  (v132)(v224, 0);
  v131(v225, 0);
  type metadata accessor for MWTSchemaMWTNetworkConnectionType(0);
  sub_2670F3A90(&qword_2800F4C08, type metadata accessor for MWTSchemaMWTNetworkConnectionType, &protocol conformance descriptor for MWTSchemaMWTNetworkConnectionType);
  sub_26738120C();
  v134 = v221;
  v135 = v223;
  v223(v8, 0, 1, v221);
  v136 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026745E700);
  v136(v225, 0);
  v137 = v216;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  v138 = v137;
  sub_26738114C();
  v135(v8, 0, 1, v134);
  v139 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026745E720);
  v139(v225, 0);
  v140 = sub_2673811AC();
  v141 = sub_266ECB6CC(v224, 0xD00000000000001FLL, 0x800000026745E720);
  if (!(v214)(v142, 1, v134))
  {
    sub_266ECB128(&unk_287888D40);
    sub_26738115C();
  }

  (v141)(v224, 0);
  v140(v225, 0);
  (v222)(v137, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v143 = v221;
  v144 = v223;
  v223(v8, 0, 1, v221);
  v145 = sub_2673811AC();
  sub_266EC637C(v8, 0x72616D6972507369, 0xED00007265735579);
  v145(v225, 0);
  LODWORD(v215) = *MEMORY[0x277D3E530];
  v222(v138);
  v225[0] = 1;
  sub_26738114C();
  v144(v8, 0, 1, v143);
  v146 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026745E740);
  v146(v225, 0);
  type metadata accessor for MWTSchemaMWTEndPointType(0);
  sub_2670F3A90(&qword_2800F4B98, type metadata accessor for MWTSchemaMWTEndPointType, &protocol conformance descriptor for MWTSchemaMWTEndPointType);
  sub_26738120C();
  v144(v8, 0, 1, v143);
  v147 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E696F50646E65, 0xEC00000065707954);
  v147(v225, 0);
  type metadata accessor for MWTSchemaMWTAudioRouteType(0);
  sub_2670F3A90(&qword_2800F4B20, type metadata accessor for MWTSchemaMWTAudioRouteType, &protocol conformance descriptor for MWTSchemaMWTAudioRouteType);
  sub_26738120C();
  v144(v8, 0, 1, v143);
  v148 = sub_2673811AC();
  sub_266EC637C(v8, 0x7079546574756F72, 0xE900000000000065);
  v148(v225, 0);
  (v222)(v216, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v144(v8, 0, 1, v143);
  v149 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026745E760);
  v149(v225, 0);
  type metadata accessor for MWTSchemaMWTAssetSource(0);
  sub_2670F3A90(&qword_2800F4B10, type metadata accessor for MWTSchemaMWTAssetSource, &protocol conformance descriptor for MWTSchemaMWTAssetSource);
  sub_26738120C();
  v144(v8, 0, 1, v143);
  v150 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F537465737361, 0xEB00000000656372);
  v150(v225, 0);
  type metadata accessor for MWTSchemaMWTAssetLocation(0);
  sub_2670F3A90(&qword_2800F4B00, type metadata accessor for MWTSchemaMWTAssetLocation, &protocol conformance descriptor for MWTSchemaMWTAssetLocation);
  sub_26738120C();
  v144(v8, 0, 1, v143);
  v151 = sub_2673811AC();
  sub_266EC637C(v8, 0x636F4C7465737361, 0xED00006E6F697461);
  v151(v225, 0);
  type metadata accessor for MWTSchemaMWTSubscriptionType(0);
  sub_2670F3A90(&qword_2800F4C10, type metadata accessor for MWTSchemaMWTSubscriptionType, &protocol conformance descriptor for MWTSchemaMWTSubscriptionType);
  sub_26738120C();
  v144(v8, 0, 1, v143);
  v152 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026745E780);
  v152(v225, 0);
  v214 = "subscriptionType";
  v153 = v216;
  v154 = v213;
  v155 = v219;
  v156 = v222;
  (v222)(v216, v213, v219);
  v225[0] = 1;
  sub_26738114C();
  v144(v8, 0, 1, v143);
  v157 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v214 | 0x8000000000000000);
  v157(v225, 0);
  v156(v153, v154, v155);
  v225[0] = 1;
  v158 = v153;
  sub_26738114C();
  v159 = v223;
  v223(v8, 0, 1, v143);
  v160 = sub_2673811AC();
  sub_266EC637C(v8, 0x6157676142736168, 0xEE00656D69547469);
  v160(v225, 0);
  v214 = "hasLookupWaitTime";
  v161 = v154;
  v162 = v154;
  v163 = v219;
  (v222)(v158, v162, v219);
  v225[0] = 1;
  sub_26738114C();
  v164 = v221;
  v159(v8, 0, 1, v221);
  v165 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v214 | 0x8000000000000000);
  v165(v225, 0);
  v214 = "hasLeaseWaitTime";
  v166 = v216;
  v167 = v161;
  v168 = v161;
  v169 = v222;
  (v222)(v216, v167, v163);
  v225[0] = 1;
  sub_26738114C();
  v170 = v164;
  v171 = v164;
  v172 = v223;
  v223(v8, 0, 1, v171);
  v173 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v214 | 0x8000000000000000);
  v173(v225, 0);
  v214 = "hasSuzeLeaseWaitTime";
  v174 = v219;
  v169(v166, v168, v219);
  v225[0] = 1;
  sub_26738114C();
  v172(v8, 0, 1, v170);
  v175 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v214 | 0x8000000000000000);
  v175(v225, 0);
  v214 = "ssetLoadWaitTime";
  v176 = v216;
  v177 = v222;
  (v222)(v216, v213, v174);
  v225[0] = 1;
  sub_26738114C();
  v178 = v170;
  v179 = v170;
  v180 = v223;
  v223(v8, 0, 1, v179);
  v181 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v214 | 0x8000000000000000);
  v181(v225, 0);
  v214 = "hasMediaRedownloadWaitTime";
  v182 = v212;
  v183 = v219;
  (v177)(v176, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v180(v8, 0, 1, v178);
  v184 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000035, v214 | 0x8000000000000000);
  v184(v225, 0);
  v214 = "adyToPlayDurationInMs";
  v185 = v222;
  (v222)(v176, v182, v183);
  v225[0] = 1;
  sub_26738114C();
  v186 = v221;
  v187 = v223;
  v223(v8, 0, 1, v221);
  v188 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, v214 | 0x8000000000000000);
  v188(v225, 0);
  v214 = "ItemCreationToLtluDurationInMs";
  (v185)(v176, v212, v183);
  v225[0] = 1;
  sub_26738114C();
  v187(v8, 0, 1, v186);
  v189 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000030, v214 | 0x8000000000000000);
  v189(v225, 0);
  v214 = "hakeDurationInMs";
  v190 = v212;
  v191 = v219;
  (v185)(v176, v212, v219);
  v225[0] = 1;
  sub_26738114C();
  v192 = v221;
  v193 = v223;
  v223(v8, 0, 1, v221);
  v194 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v214 | 0x8000000000000000);
  v194(v225, 0);
  v214 = "questDurationInMs";
  v195 = v190;
  v196 = v222;
  (v222)(v176, v195, v191);
  v225[0] = 1;
  sub_26738114C();
  v193(v8, 0, 1, v192);
  v197 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002DLL, v214 | 0x8000000000000000);
  v197(v225, 0);
  v214 = "ctionTlsHandshakeDurationInMs";
  v198 = v216;
  v199 = v212;
  (v196)(v216, v212, v191);
  v225[0] = 1;
  sub_26738114C();
  v200 = v223;
  v223(v8, 0, 1, v192);
  v201 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v214 | 0x8000000000000000);
  v201(v225, 0);
  v214 = "subPlaylistRequestDurationInMs";
  v202 = v199;
  v203 = v219;
  v204 = v222;
  (v222)(v198, v202, v219);
  v225[0] = 1;
  sub_26738114C();
  v205 = v221;
  v200(v8, 0, 1, v221);
  v206 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, v214 | 0x8000000000000000);
  v206(v225, 0);
  v207 = v216;
  (v204)(v216, v212, v203);
  v225[0] = 1;
  sub_26738114C();
  v200(v8, 0, 1, v205);
  v208 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026745E9B0);
  v208(v225, 0);
  (v222)(v207, v215, v203);
  v225[0] = 1;
  sub_26738114C();
  v200(v8, 0, 1, v221);
  v209 = sub_2673811AC();
  sub_266EC637C(v8, 0x6575516F69647561, 0xEE00657079546575);
  return v209(v225, 0);
}

uint64_t sub_2670F3984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F39E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F3A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670F3AD8()
{
  result = qword_2800F4B60;
  if (!qword_2800F4B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B60);
  }

  return result;
}

uint64_t static MWTSchemaMWTNetworkConnectionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745EA10, isUniquelyReferenced_nonNull_native);
  *v3 = v62;

  v1(v77, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026745EA40, v8);
  *v7 = v63;

  v5(v77, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026745EA80, v12);
  *v11 = v64;

  v9(v77, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026745EAB0, v16);
  *v15 = v65;

  v13(v77, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026745EAE0, v20);
  *v19 = v66;

  v17(v77, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745EB10, v24);
  *v23 = v67;

  v21(v77, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x800000026745EB40, v28);
  *v27 = v68;

  v25(v77, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026745EB70, v32);
  *v31 = v69;

  v29(v77, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x800000026745EBA0, v36);
  *v35 = v70;

  v33(v77, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000024, 0x800000026745EBD0, v40);
  *v39 = v71;

  v37(v77, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x800000026745EC00, v44);
  *v43 = v72;

  v41(v77, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ALL, 0x800000026745EC30, v48);
  *v47 = v73;

  v45(v77, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x800000026745EC70, v52);
  *v51 = v74;

  v49(v77, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000024, 0x800000026745EC90, v56);
  *v55 = v75;

  v53(v77, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x800000026745ECC0, v60);
  *v59 = v76;

  return v57(v77, 0);
}

uint64_t sub_2670F429C(uint64_t a1)
{
  v2 = sub_2670F43A0(&qword_2800F4C18, &protocol conformance descriptor for MWTSchemaMWTNetworkConnectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4304(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F43A0(&qword_2800F4C18, &protocol conformance descriptor for MWTSchemaMWTNetworkConnectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F43A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTNetworkConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTPrefetchedMetadataSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026745ED30, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026745ED60, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026745ED90, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x800000026745EDC0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026745EE00, v20);
  *v19 = v26;

  v17(v27, 0);
  sub_266ECB128(&unk_287888D68);
  return sub_26738112C();
}

uint64_t sub_2670F46F8(uint64_t a1)
{
  v2 = sub_2670F47FC(&qword_2800F4C20, &protocol conformance descriptor for MWTSchemaMWTPrefetchedMetadataSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F47FC(&qword_2800F4C20, &protocol conformance descriptor for MWTSchemaMWTPrefetchedMetadataSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F47FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTQueueType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x800000026745EE60, isUniquelyReferenced_nonNull_native);
  *v3 = v48;

  v1(v58, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745EE80, v8);
  *v7 = v49;

  v5(v58, 0);
  v9 = sub_266ECB128(&unk_287888D90);
  v11 = v10;
  v12 = sub_2673810FC();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD4CC(v9, v11, 1, v15);
  *v14 = v50;
  v12(v58, 0);
  v16 = sub_26738111C();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026745EEA0, v19);
  *v18 = v51;

  v16(v58, 0);
  v20 = sub_266ECB128(&unk_287888DB8);
  v22 = v21;
  v23 = sub_2673810FC();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v25;
  *v25 = 0x8000000000000000;
  sub_266ECD4CC(v20, v22, 2, v26);
  *v25 = v52;
  v23(v58, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026745EED0, v30);
  *v29 = v53;

  v27(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745EEF0, v34);
  *v33 = v54;

  v31(v58, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000012, 0x800000026745EF10, v38);
  *v37 = v55;

  v35(v58, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x800000026745EF30, v42);
  *v41 = v56;

  v39(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000012, 0x800000026745EF50, v46);
  *v45 = v57;

  v43(v58, 0);
  sub_266ECB128(&unk_287888DE0);
  return sub_26738112C();
}

uint64_t sub_2670F4D88(uint64_t a1)
{
  v2 = sub_2670F4E8C(&qword_2800F4C28, &protocol conformance descriptor for MWTSchemaMWTQueueType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F4E8C(&qword_2800F4C28, &protocol conformance descriptor for MWTSchemaMWTQueueType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F4E8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTQueueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTRouteConfiguration.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026745EFA0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026745EFC0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745EFF0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026745F010, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026745F030, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026745F070, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x800000026745F090, v28);
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_287888E08);
  return sub_26738112C();
}

uint64_t sub_2670F52BC(uint64_t a1)
{
  v2 = sub_2670F53C0(&qword_2800F4C30, &protocol conformance descriptor for MWTSchemaMWTRouteConfiguration);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5324(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F53C0(&qword_2800F4C30, &protocol conformance descriptor for MWTSchemaMWTRouteConfiguration);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F53C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTRouteConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTStreamingContentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026745F0E0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026745F100, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745F120, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x800000026745F140, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745F170, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670F56FC(uint64_t a1)
{
  v2 = sub_2670F5800(&qword_2800F4C38, &protocol conformance descriptor for MWTSchemaMWTStreamingContentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5764(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F5800(&qword_2800F4C38, &protocol conformance descriptor for MWTSchemaMWTStreamingContentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F5800(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTStreamingContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTSubscriptionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026745F1C0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745F1E0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745F210, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026745F240, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670F5AC8(uint64_t a1)
{
  v2 = sub_2670F5BCC(&qword_2800F4C40, &protocol conformance descriptor for MWTSchemaMWTSubscriptionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F5BCC(&qword_2800F4C40, &protocol conformance descriptor for MWTSchemaMWTSubscriptionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F5BCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTSubscriptionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTVMCPUSnapshotStage.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026745F290, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745F2B0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026745F2E0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745F300, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745F320, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026745F340, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2670F5F7C(uint64_t a1)
{
  v2 = sub_2670F6080(&qword_2800F4C50, &protocol conformance descriptor for MWTSchemaMWTVMCPUSnapshotStage);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F6080(&qword_2800F4C50, &protocol conformance descriptor for MWTSchemaMWTVMCPUSnapshotStage);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F6080(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTVMCPUStatsReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v47 = sub_26738113C();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage(0);
  sub_2670F6A9C(&qword_2800F4C48, type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage, &protocol conformance descriptor for MWTSchemaMWTVMCPUSnapshotStage);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v40 = *(v10 + 56);
  v46 = v10 + 56;
  v40(v8, 0, 1, v9);
  v41 = a2;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x746F687370616E73, 0xED00006567617453);
  v11(v48, 0);
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v45 = *MEMORY[0x277D3E540];
  v12 = v45;
  v15 = v47;
  v14(v5, v45, v47);
  v48[0] = 1;
  sub_26738114C();
  v16 = v40;
  v40(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x736B636954757063, 0xEE006D6574737953);
  v17(v48, 0);
  v42 = v13;
  v14(v5, v12, v15);
  v48[0] = 1;
  sub_26738114C();
  v44 = v9;
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x736B636954757063, 0xEC00000072657355);
  v18(v48, 0);
  v14(v5, v45, v47);
  v43 = v14;
  v48[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x736B636954757063, 0xEC000000656C6449);
  v19(v48, 0);
  v39 = v5;
  v20 = v45;
  v21 = v47;
  v14(v5, v45, v47);
  v48[0] = 1;
  sub_26738114C();
  v22 = v44;
  v16(v8, 0, 1, v44);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x736B636954757063, 0xEC0000006563694ELL);
  v23(v48, 0);
  v24 = v39;
  v25 = v21;
  v26 = v43;
  v43(v39, v20, v25);
  v48[0] = 1;
  sub_26738114C();
  v27 = v22;
  v16(v8, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x73736572706D6F63, 0xEC000000736E6F69);
  v28(v48, 0);
  v29 = v45;
  v30 = v47;
  v26(v24, v45, v47);
  v48[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0x6572706D6F636564, 0xEE00736E6F697373);
  v31(v48, 0);
  v32 = v29;
  v33 = v43;
  v43(v24, v32, v30);
  v48[0] = 1;
  sub_26738114C();
  v34 = v44;
  v16(v8, 0, 1, v44);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E6965676170, 0xE700000000000000);
  v35(v48, 0);
  v33(v24, v45, v47);
  v48[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0x73746C756166, 0xE600000000000000);
  return v36(v48, 0);
}

uint64_t sub_2670F6990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F69F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F6A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670F6AE4()
{
  result = qword_2800F4B70;
  if (!qword_2800F4B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B70);
  }

  return result;
}

uint64_t static NETSchemaNETBluetoothDevice.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E518], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1769173874, 0xE400000000000000);
  return v13(v16, 0);
}

uint64_t sub_2670F6E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F6EA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670F6F0C()
{
  result = qword_2800F4C58;
  if (!qword_2800F4C58)
  {
    sub_2670F6F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4C58);
  }

  return result;
}

unint64_t sub_2670F6F64()
{
  result = qword_2800F4C60;
  if (!qword_2800F4C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4C60);
  }

  return result;
}

uint64_t static NETSchemaNETClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4C68, 0x277D58B80);
  sub_266ECAF2C(&qword_2800F4C70, &qword_2800F4C68, 0x277D58B80, &protocol conformance descriptor for NETSchemaNETClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v31, 0);
  sub_266ECB294(0, &qword_2800F4C78, 0x277D58C18);
  sub_266ECAF2C(&qword_2800F4C80, &qword_2800F4C78, 0x277D58C18, &protocol conformance descriptor for NETSchemaNETSessionConnectionHttpHeaderCreated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x800000026745F3F0);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F4C88, 0x277D58C28);
  sub_266ECAF2C(&qword_2800F4C90, &qword_2800F4C88, 0x277D58C28, &protocol conformance descriptor for NETSchemaNETSessionConnectionSnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000021, 0x800000026745F420);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F4C98, 0x277D58BB8);
  sub_266ECAF2C(&qword_2800F4CA0, &qword_2800F4C98, 0x277D58BB8, &protocol conformance descriptor for NETSchemaNETDebugSessionConnectionSnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000026, 0x800000026745F450);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F4CA8, 0x277D58C10);
  sub_266ECAF2C(&qword_2800F4CB0, &qword_2800F4CA8, 0x277D58C10, &protocol conformance descriptor for NETSchemaNETSessionConnectionFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x800000026745F480);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F4CB8, 0x277D58C00);
  sub_266ECAF2C(&qword_2800F4CC0, &qword_2800F4CB8, 0x277D58C00, &protocol conformance descriptor for NETSchemaNETPeerConnectionFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026745F4A0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F4CC8, 0x277D58BE0);
  sub_266ECAF2C(&qword_2800F4CD0, &qword_2800F4CC8, 0x277D58BE0, &protocol conformance descriptor for NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000031, 0x800000026745F4C0);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F4CD8, 0x277D58B88);
  sub_266ECAF2C(&qword_2800F4CE0, &qword_2800F4CD8, 0x277D58B88, &protocol conformance descriptor for NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000036, 0x800000026745F500);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F4CE8, 0x277D58BE8);
  sub_266ECAF2C(&qword_2800F4CF0, &qword_2800F4CE8, 0x277D58BE8, &protocol conformance descriptor for NETSchemaNETNetworkConnectionStateReadySnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002BLL, 0x800000026745F540);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F4CF8, 0x277D58B90);
  sub_266ECAF2C(&qword_2800F4D00, &qword_2800F4CF8, 0x277D58B90, &protocol conformance descriptor for NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000030, 0x800000026745F570);
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
  sub_266ECB128(&unk_287888E30);
  return sub_2673811CC();
}

uint64_t sub_2670F7AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670F7B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670F7C0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F7C70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F7CD0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4D08, &qword_2800F1EE0, 0x277D58B78, &protocol conformance descriptor for NETSchemaNETClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F4D10, &qword_2800F1EE0, 0x277D58B78, &protocol conformance descriptor for NETSchemaNETClientEvent);
  result = sub_266ECAF2C(&qword_2800F4D18, &qword_2800F1EE0, 0x277D58B78, &protocol conformance descriptor for NETSchemaNETClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static NETSchemaNETClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v5 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v18 = a1;
  v16[1] = v5;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v17 = *(v7 + 56);
  v17(v4, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x644974656ELL, 0xE500000000000000);
  v8(v20, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v19, 0x644974656ELL, 0xE500000000000000);
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    sub_266ECB128(&unk_287888E68);
    sub_26738115C();
  }

  (v10)(v19, 0);
  v9(v20, 0);
  sub_26738120C();
  v12 = v17;
  v17(v4, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000013, 0x800000026745F5E0);
  v13(v20, 0);
  type metadata accessor for NETSchemaNETProvider(0);
  sub_2670F8250();
  sub_26738120C();
  v12(v4, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0x72656469766F7270, 0xE800000000000000);
  return v14(v20, 0);
}

uint64_t sub_2670F818C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F81F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670F8250()
{
  result = qword_2800F4D20;
  if (!qword_2800F4D20)
  {
    type metadata accessor for NETSchemaNETProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4D20);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionMethod.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026745F630, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745F650, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745F670, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745F690, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745F6B0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745F6E0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000019, 0x800000026745F710, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x800000026745F730, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2670F8734(uint64_t a1)
{
  v2 = sub_2670F8838(&qword_2800F4D30, &protocol conformance descriptor for NETSchemaNETConnectionMethod);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F879C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F8838(&qword_2800F4D30, &protocol conformance descriptor for NETSchemaNETConnectionMethod);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F8838(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionMethod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745F780, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026745F7A0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745F7C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670F8A90(uint64_t a1)
{
  v2 = sub_2670F8B94(&qword_2800F4D40, &protocol conformance descriptor for NETSchemaNETConnectionMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F8AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F8B94(&qword_2800F4D40, &protocol conformance descriptor for NETSchemaNETConnectionMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F8B94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026745F820, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745F840, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026745F860, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026745F880, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745F8A0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026745F8C0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026745F8E0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670F8FB4(uint64_t a1)
{
  v2 = sub_2670F90B8(&qword_2800F4D50, &protocol conformance descriptor for NETSchemaNETConnectionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F901C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F90B8(&qword_2800F4D50, &protocol conformance descriptor for NETSchemaNETConnectionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F90B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745F930, isUniquelyReferenced_nonNull_native);
  *v3 = v98;

  v1(v122, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026745F950, v8);
  *v7 = v99;

  v5(v122, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745F970, v12);
  *v11 = v100;

  v9(v122, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026745F990, v16);
  *v15 = v101;

  v13(v122, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026745F9B0, v20);
  *v19 = v102;

  v17(v122, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026745F9D0, v24);
  *v23 = v103;

  v21(v122, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026745F9F0, v28);
  *v27 = v104;

  v25(v122, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x800000026745FA10, v32);
  *v31 = v105;

  v29(v122, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x800000026745FA30, v36);
  *v35 = v106;

  v33(v122, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x800000026745FA50, v40);
  *v39 = v107;

  v37(v122, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x800000026745FA70, v44);
  *v43 = v108;

  v41(v122, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026745FA90, v48);
  *v47 = v109;

  v45(v122, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x800000026745FAB0, v52);
  *v51 = v110;

  v49(v122, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000016, 0x800000026745FAD0, v56);
  *v55 = v111;

  v53(v122, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x800000026745FAF0, v60);
  *v59 = v112;

  v57(v122, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x800000026745FB10, v64);
  *v63 = v113;

  v61(v122, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x800000026745FB30, v68);
  *v67 = v114;

  v65(v122, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000015, 0x800000026745FB50, v72);
  *v71 = v115;

  v69(v122, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ALL, 0x800000026745FB70, v76);
  *v75 = v116;

  v73(v122, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000017, 0x800000026745FB90, v80);
  *v79 = v117;

  v77(v122, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000019, 0x800000026745FBB0, v84);
  *v83 = v118;

  v81(v122, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000017, 0x800000026745FBD0, v88);
  *v87 = v119;

  v85(v122, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000014, 0x800000026745FBF0, v92);
  *v91 = v120;

  v89(v122, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000017, 0x800000026745FC10, v96);
  *v95 = v121;

  return v93(v122, 0);
}

uint64_t sub_2670F9C68(uint64_t a1)
{
  v2 = sub_2670F9D6C(&qword_2800F4D60, &protocol conformance descriptor for NETSchemaNETConnectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F9CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F9D6C(&qword_2800F4D60, &protocol conformance descriptor for NETSchemaNETConnectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F9D6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v33 = sub_26738113C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v34 = *MEMORY[0x277D3E4E8];
  v9 = *(v3 + 104);
  v31 = v3 + 104;
  v36 = v9;
  v9(v5);
  v37[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v32 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E657078457369, 0xEB00000000657669);
  v14(v37, 0);
  sub_266ECB294(0, &qword_2800F4D68, 0x277D58BC0);
  sub_266ECAF2C(&qword_2800F4D70, &qword_2800F4D68, 0x277D58BC0, &protocol conformance descriptor for NETSchemaNETEndpoint);
  sub_26738122C();
  v12(v8, 0, 1, v10);
  v29 = a2;
  v30 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574614768746170, 0xEC00000073796177);
  v15(v37, 0);
  v16 = v33;
  v17 = v36;
  v36(v5, *MEMORY[0x277D3E530], v33);
  v37[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463656E6E6F63, 0xEE006F666E496E6FLL);
  v18(v37, 0);
  v19 = v34;
  v17(v5, v34, v16);
  v37[0] = 1;
  sub_26738114C();
  v20 = v30;
  v30(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x36767049736168, 0xE700000000000000);
  v21(v37, 0);
  v22 = v19;
  v23 = v33;
  v36(v5, v22, v33);
  v37[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x34767049736168, 0xE700000000000000);
  v24(v37, 0);
  v36(v5, v34, v23);
  v37[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v10);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x7274736E6F437369, 0xED000064656E6961);
  v25(v37, 0);
  sub_266ECB294(0, &qword_2800F4D78, 0x277D58BF8);
  sub_266ECAF2C(&qword_2800F4D80, &qword_2800F4D78, 0x277D58BF8, &protocol conformance descriptor for NETSchemaNETPathInterface);
  sub_26738122C();
  v20(v8, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x65746E4968746170, 0xEE00736563616672);
  v26(v37, 0);
  type metadata accessor for NETSchemaNETPathStatus(0);
  sub_2670FA660();
  sub_26738120C();
  v20(v8, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x737574617473, 0xE600000000000000);
  return v27(v37, 0);
}

uint64_t sub_2670FA59C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FA600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FA660()
{
  result = qword_2800F4D88;
  if (!qword_2800F4D88)
  {
    type metadata accessor for NETSchemaNETPathStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4D88);
  }

  return result;
}

uint64_t static NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x28223BE20](v2);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4D90, 0x277D58BD0);
  sub_266ECAF2C(&qword_2800F4D98, &qword_2800F4D90, 0x277D58BD0, &protocol conformance descriptor for NETSchemaNETEstablishmentResolution);
  v14 = a1;
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800F4DA0, 0x277D58C08);
  sub_266ECAF2C(&qword_2800F4DA8, &qword_2800F4DA0, 0x277D58C08, &protocol conformance descriptor for NETSchemaNETProxyConfiguration);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026745FCE0);
  v10(v18, 0);
  (*(v16 + 104))(v15, *MEMORY[0x277D3E540], v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F697461727564, 0xEC000000734D6E49);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800F4DB0, 0x277D58BD8);
  sub_266ECAF2C(&qword_2800F4DB8, &qword_2800F4DB0, 0x277D58BD8, &protocol conformance descriptor for NETSchemaNETHandShakeProtocol);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x800000026745FD00);
  return v12(v18, 0);
}

uint64_t sub_2670FABE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FAC48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETDebugNetworkInterface.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70[1] = a1;
  v3 = sub_26738113C();
  v74 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v70 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v75 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v79 = *(v4 + 104);
  v76 = v4 + 104;
  v79(v6, v10, v3);
  v81[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v77 = v14;
  v80 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6572727543747472, 0xEA0000000000746ELL);
  v15(v81, 0);
  v78 = v6;
  v16 = v6;
  v17 = v74;
  v18 = v79;
  v79(v16, v10, v74);
  v81[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x746F6F6D53747472, 0xEB00000000646568);
  v19(v81, 0);
  v20 = v78;
  v71 = v10;
  v18(v78, v10, v17);
  v81[0] = 1;
  sub_26738114C();
  v21 = v80;
  v80(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6169726156747472, 0xEB0000000065636ELL);
  v22(v81, 0);
  v23 = v79;
  v79(v20, v10, v17);
  v81[0] = 1;
  sub_26738114C();
  v72 = v11;
  v21(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x74736542747472, 0xE700000000000000);
  v24(v81, 0);
  v25 = *MEMORY[0x277D3E540];
  v26 = v78;
  v23(v78, v25, v17);
  v81[0] = 1;
  sub_26738114C();
  v21(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x537374656B636170, 0xEB00000000746E65);
  v27(v81, 0);
  v28 = v74;
  v79(v26, v25, v74);
  v81[0] = 1;
  sub_26738114C();
  v29 = v72;
  v21(v9, 0, 1, v72);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x527374656B636170, 0xEF64657669656365);
  v30(v81, 0);
  v73 = v25;
  v31 = v28;
  v32 = v28;
  v33 = v79;
  v79(v78, v25, v31);
  v81[0] = 1;
  sub_26738114C();
  v34 = v80;
  v80(v9, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E65537365747962, 0xE900000000000074);
  v35(v81, 0);
  v70[0] = "NetworkInterface";
  v36 = v78;
  v33(v78, v25, v32);
  v81[0] = 1;
  sub_26738114C();
  v37 = v72;
  v34(v9, 0, 1, v72);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v70[0] | 0x8000000000000000);
  v38(v81, 0);
  v39 = v73;
  v40 = v79;
  v79(v36, v73, v32);
  v81[0] = 1;
  sub_26738114C();
  v80(v9, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0x616E557365747962, 0xEC00000064656B63);
  v41(v81, 0);
  v40(v78, v39, v32);
  v81[0] = 1;
  sub_26738114C();
  v42 = v37;
  v43 = v80;
  v80(v9, 0, 1, v37);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x6365527365747962, 0xED00006465766965);
  v44(v81, 0);
  v70[0] = "bytesRetransmitted";
  v45 = v78;
  v46 = v73;
  v40(v78, v73, v32);
  v81[0] = 1;
  sub_26738114C();
  v47 = v42;
  v43(v9, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v70[0] | 0x8000000000000000);
  v48(v81, 0);
  v70[0] = "duplicateBytesReceived";
  v49 = v74;
  v50 = v79;
  v79(v45, v46, v74);
  v81[0] = 1;
  sub_26738114C();
  v80(v9, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v70[0] | 0x8000000000000000);
  v51(v81, 0);
  v52 = v78;
  v50(v78, v46, v49);
  v81[0] = 1;
  sub_26738114C();
  v53 = v47;
  v54 = v47;
  v55 = v80;
  v80(v9, 0, 1, v53);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0x66667542646E6573, 0xEF73657479427265);
  v56(v81, 0);
  v50(v52, v73, v49);
  v57 = v50;
  v81[0] = 1;
  sub_26738114C();
  v55(v9, 0, 1, v54);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E6142646E6573, 0xED00006874646977);
  v58(v81, 0);
  v59 = v71;
  v60 = v74;
  v57(v52, v71, v74);
  v81[0] = 1;
  sub_26738114C();
  v61 = v54;
  v62 = v80;
  v80(v9, 0, 1, v61);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0x61727465526E7973, 0xEE007374696D736ELL);
  v63(v81, 0);
  v57(v52, v59, v60);
  v81[0] = 1;
  sub_26738114C();
  v64 = v72;
  v62(v9, 0, 1, v72);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0x61446E79536F6674, 0xEF64656B63416174);
  v65(v81, 0);
  v79(v52, v71, v74);
  v81[0] = 1;
  sub_26738114C();
  v66 = v62;
  v62(v9, 0, 1, v64);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026745FDD0);
  v67(v81, 0);
  sub_266ECB294(0, &qword_2800F4DC0, 0x277D58BF0);
  sub_266ECAF2C(&qword_2800F4DC8, &qword_2800F4DC0, 0x277D58BF0, &protocol conformance descriptor for NETSchemaNETNetworkInterface);
  sub_26738120C();
  v66(v9, 0, 1, v64);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026745FDF0);
  return v68(v81, 0);
}