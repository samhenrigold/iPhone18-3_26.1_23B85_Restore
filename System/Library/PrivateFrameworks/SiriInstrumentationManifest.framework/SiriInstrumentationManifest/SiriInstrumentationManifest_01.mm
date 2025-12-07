uint64_t sub_266EEF92C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEF990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EEFA38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EEFA80()
{
  result = qword_2800EF580;
  if (!qword_2800EF580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF580);
  }

  return result;
}

uint64_t static ASRSchemaASROneBestTranscriptTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v24 = *MEMORY[0x277D3E530];
  v25 = v3 + 104;
  v26 = v2;
  v23 = v9;
  v9(v5);
  v29[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v22 = *(v11 + 56);
  v22(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v12(v29, 0);
  v27 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v28, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v15 = *(v11 + 48);
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_287883E18);
    sub_26738115C();
  }

  (v14)(v28, 0);
  v13(v29, 0);
  v23(v5, v24, v26);
  v29[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E744974736F70, 0xE700000000000000);
  v17(v29, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v28, 0x6E744974736F70, 0xE700000000000000);
  if (!v15(v20, 1, v10))
  {
    sub_266ECB128(&unk_287883E40);
    sub_26738115C();
  }

  (v19)(v28, 0);
  return v18(v29, 0);
}

uint64_t sub_266EEFF3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEFFA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF0004()
{
  result = qword_2800EF588;
  if (!qword_2800EF588)
  {
    sub_266EF005C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF588);
  }

  return result;
}

unint64_t sub_266EF005C()
{
  result = qword_2800EF590;
  if (!qword_2800EF590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF590);
  }

  return result;
}

uint64_t static ASRSchemaASRPackage.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF598, 0x277D56A30);
  sub_266ECAF2C(&qword_2800EF5A0, &qword_2800EF598, 0x277D56A30, &protocol conformance descriptor for ASRSchemaASRRecognitionResult);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E744974736F70, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_266EF0338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF039C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPackageGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v62 = sub_26738113C();
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF5B0, 0x277D569E0);
  sub_266ECAF2C(&qword_2800EF5A8, &qword_2800EF5B0, 0x277D569E0, &protocol conformance descriptor for ASRSchemaASRPackage);
  sub_26738120C();
  v9 = sub_26738116C();
  v52 = *(v9 - 8);
  v11 = v52 + 56;
  v10 = *(v52 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6567616B636170, 0xE700000000000000);
  v12(v64, 0);
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v3 + 104);
  v54 = v5;
  v59 = v13;
  v14(v5);
  v60 = v3 + 104;
  v64[0] = 1;
  sub_26738114C();
  v15 = v9;
  v61 = v10;
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E69467369, 0xE700000000000000);
  v16(v64, 0);
  v53 = "loggableSharedUserId";
  v17 = *MEMORY[0x277D3E530];
  v18 = v62;
  (v14)(v54, v17, v62);
  v64[0] = 1;
  sub_26738114C();
  v19 = v15;
  v10(v8, 0, 1, v15);
  v20 = a2;
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v53 | 0x8000000000000000);
  v21(v64, 0);
  v22 = v54;
  LODWORD(v53) = v17;
  v58 = v14;
  (v14)(v54, v17, v18);
  v64[0] = 1;
  sub_26738114C();
  v56 = v11;
  v61(v8, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674206B0);
  v23(v64, 0);
  v57 = v20;
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v63, 0xD000000000000014, 0x80000002674206B0);
  v26 = v19;
  if (!(*(v52 + 48))(v27, 1, v19))
  {
    sub_266ECB128(&unk_287883E68);
    sub_26738115C();
  }

  (v25)(v63, 0);
  v24(v64, 0);
  v28 = v53;
  v29 = v58;
  (v58)(v22, v53, v62);
  v64[0] = 1;
  sub_26738114C();
  v55 = v26;
  v61(v8, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v30(v64, 0);
  v31 = v28;
  v32 = v62;
  v29(v22, v31, v62);
  v64[0] = 1;
  sub_26738114C();
  v33 = v61;
  v61(v8, 0, 1, v26);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674214D0);
  v34(v64, 0);
  v53 = "acousticModelVersion";
  v35 = v32;
  v36 = v58;
  (v58)(v22, v59, v35);
  v64[0] = 1;
  sub_26738114C();
  v37 = v55;
  v33(v8, 0, 1, v55);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v53 | 0x8000000000000000);
  v38(v64, 0);
  v53 = "nExhaustiveParses";
  v39 = v59;
  v40 = v62;
  (v36)(v22, v59, v62);
  v64[0] = 1;
  sub_26738114C();
  v41 = v37;
  v42 = v61;
  v61(v8, 0, 1, v37);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v53 | 0x8000000000000000);
  v43(v64, 0);
  v53 = "hasVoiceCommandParses";
  v44 = v58;
  (v58)(v22, v39, v40);
  v64[0] = 1;
  sub_26738114C();
  v42(v8, 0, 1, v41);
  v45 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v53 | 0x8000000000000000);
  v45(v64, 0);
  v53 = "hasVoiceCommandEditIntent";
  v46 = v62;
  (v44)(v22, v59, v62);
  v64[0] = 1;
  sub_26738114C();
  v47 = v55;
  v48 = v61;
  v61(v8, 0, 1, v55);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v53 | 0x8000000000000000);
  v49(v64, 0);
  (v58)(v22, v59, v46);
  v64[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267421580);
  return v50(v64, 0);
}

uint64_t sub_266EF0F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF0FDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPartialResultGenerated.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266EF12C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF132C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF1390()
{
  result = qword_2800EF128;
  if (!qword_2800EF128)
  {
    sub_266EF13E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF128);
  }

  return result;
}

unint64_t sub_266EF13E8()
{
  result = qword_2800EF120;
  if (!qword_2800EF120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF120);
  }

  return result;
}

uint64_t static ASRSchemaASRPauseReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267421620, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267421640, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267421660, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EF1648(uint64_t a1)
{
  v2 = sub_266EF174C(&qword_2800EF5C0, &protocol conformance descriptor for ASRSchemaASRPauseReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF16B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF174C(&qword_2800EF5C0, &protocol conformance descriptor for ASRSchemaASRPauseReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF174C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRPauseReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRPersonalizationUserEditNamedEntityMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C61746F546D756ELL, 0xEC00000074696445);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800EF580, 0x277D569D0);
  sub_266ECAF2C(&qword_2800EF578, &qword_2800EF580, 0x277D569D0, &protocol conformance descriptor for ASRSchemaASRNamedEntityUserEdit);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x80000002674216D0);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800EF538, 0x277D56990);
  sub_266ECAF2C(&qword_2800EF530, &qword_2800EF538, 0x277D56990, &protocol conformance descriptor for ASRSchemaASRLMEOverActivationEdit);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x80000002674216F0);
  return v12(v14, 0);
}

uint64_t sub_266EF1BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF1C08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPhrase.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF500, 0x277D56968);
  sub_266ECAF2C(&qword_2800EF4F8, &qword_2800EF500, 0x277D56968, &protocol conformance descriptor for ASRSchemaASRInterpretation);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572707265746E69, 0xEF736E6F69746174);
  return v5(v7, 0);
}

uint64_t sub_266EF1E8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF500, 0x277D56968);
  sub_266ECAF2C(&qword_2800EF4F8, &qword_2800EF500, 0x277D56968, &protocol conformance descriptor for ASRSchemaASRInterpretation);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572707265746E69, 0xEF736E6F69746174);
  return v5(v7, 0);
}

uint64_t sub_266EF2034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPreheatContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF5D8, 0x277D56A20);
  sub_266ECAF2C(&qword_2800EF5E0, &qword_2800EF5D8, 0x277D56A20, &protocol conformance descriptor for ASRSchemaASRPreheatStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EF5E8, 0x277D56A10);
  sub_266ECAF2C(&qword_2800EF5F0, &qword_2800EF5E8, 0x277D56A10, &protocol conformance descriptor for ASRSchemaASRPreheatEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EF5F8, 0x277D56A18);
  sub_266ECAF2C(&qword_2800EF600, &qword_2800EF5F8, 0x277D56A18, &protocol conformance descriptor for ASRSchemaASRPreheatFailed);
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

uint64_t sub_266EF2654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF26B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPreheatEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRPreheatStatus(0);
  sub_266EF2BA8(&qword_2800EF608, type metadata accessor for ASRSchemaASRPreheatStatus, &protocol conformance descriptor for ASRSchemaASRPreheatStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EF2918(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRPreheatStatus(0);
  sub_266EF2BA8(&qword_2800EF608, type metadata accessor for ASRSchemaASRPreheatStatus, &protocol conformance descriptor for ASRSchemaASRPreheatStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EF2A9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2B00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF2BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EF2BF0()
{
  result = qword_2800EF5E8;
  if (!qword_2800EF5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5E8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266EF2E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2EE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF2F4C()
{
  result = qword_2800EF600;
  if (!qword_2800EF600)
  {
    sub_266EF2FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF600);
  }

  return result;
}

unint64_t sub_266EF2FA4()
{
  result = qword_2800EF5F8;
  if (!qword_2800EF5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5F8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266EF3238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF329C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF3300()
{
  result = qword_2800EF5E0;
  if (!qword_2800EF5E0)
  {
    sub_266EF3358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF5E0);
  }

  return result;
}

unint64_t sub_266EF3358()
{
  result = qword_2800EF5D8;
  if (!qword_2800EF5D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5D8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267421830, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267421850, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267421870, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EF35C0(uint64_t a1)
{
  v2 = sub_266EF36C4(&qword_2800EF610, &protocol conformance descriptor for ASRSchemaASRPreheatStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF3628(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF36C4(&qword_2800EF610, &protocol conformance descriptor for ASRSchemaASRPreheatStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF36C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRPreheatStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRRecognitionMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v95 = a2;
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v84 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v89 = "iri.asr.ASRRecognitionMetrics";
  v91 = *MEMORY[0x277D3E540];
  v97 = *(v3 + 104);
  v94 = v2;
  v97(v5);
  v98 = v3 + 104;
  v100[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v86 = *(v9 - 8);
  v11 = v86 + 56;
  v10 = *(v86 + 7);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v89 | 0x8000000000000000);
  v12(v100, 0);
  v87 = "uageModelAgeInNs";
  LODWORD(v89) = *MEMORY[0x277D3E500];
  v97(v5);
  v100[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v87 | 0x8000000000000000);
  v13(v100, 0);
  sub_266ECB294(0, &qword_2800EF618, 0x277D56A40);
  sub_266ECAF2C(&qword_2800EF620, &qword_2800EF618, 0x277D56A40, &protocol conformance descriptor for ASRSchemaASRRecognizerComponents);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267421910);
  v14(v100, 0);
  (v97)(v5, v89, v94);
  v100[0] = 1;
  sub_26738114C();
  v96 = v9;
  v10(v8, 0, 1, v9);
  v92 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267421930);
  v15(v100, 0);
  sub_266ECB294(0, &qword_2800EF4E0, 0x277D56960);
  sub_266ECAF2C(&qword_2800EF4D8, &qword_2800EF4E0, 0x277D56960, &protocol conformance descriptor for ASRSchemaASRInterpolationWeightBundle);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v93 = v10;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267421950);
  v16(v100, 0);
  v87 = "erpolationWeights";
  v17 = v94;
  v18 = v97;
  (v97)(v5, v89, v94);
  v100[0] = 1;
  sub_26738114C();
  v19 = v96;
  v10(v8, 0, 1, v96);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v87 | 0x8000000000000000);
  v20(v100, 0);
  v87 = "signalToNoiseRatioInDecibels";
  v21 = v91;
  (v18)(v5, v91, v17);
  v100[0] = 1;
  sub_26738114C();
  v22 = v93;
  v93(v8, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v87 | 0x8000000000000000);
  v23(v100, 0);
  v87 = "recognitionDurationInNs";
  v24 = v21;
  v25 = v94;
  v26 = v97;
  (v97)(v5, v24, v94);
  v100[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v96);
  v27 = sub_2673811AC();
  v85 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, v87 | 0x8000000000000000);
  v27(v100, 0);
  LODWORD(v87) = *MEMORY[0x277D3E4E8];
  v28 = v87;
  (v26)(v5, v87, v25);
  v100[0] = 1;
  sub_26738114C();
  v29 = v96;
  v30 = v93;
  v93(v8, 0, 1, v96);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0x616E457265676165, 0xEC00000064656C62);
  v31(v100, 0);
  v84 = "audioDurationInNs";
  (v26)(v5, v28, v94);
  v100[0] = 1;
  sub_26738114C();
  v32 = v30;
  v30(v8, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v84 | 0x8000000000000000);
  v33(v100, 0);
  v84 = "utteranceDetectionEnabled";
  v34 = v94;
  v35 = v97;
  (v97)(v5, v87, v94);
  v100[0] = 1;
  sub_26738114C();
  v36 = v96;
  v32(v8, 0, 1, v96);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v84 | 0x8000000000000000);
  v37(v100, 0);
  (v35)(v5, v87, v34);
  v100[0] = 1;
  sub_26738114C();
  v38 = v93;
  v93(v8, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267421A20);
  v39(v100, 0);
  (v97)(v5, v91, v34);
  v100[0] = 1;
  sub_26738114C();
  v40 = v96;
  v38(v8, 0, 1, v96);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267421A40);
  v41(v100, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v99, 0xD000000000000021, 0x8000000267421A40);
  if (!(*(v86 + 6))(v44, 1, v40))
  {
    sub_266ECB128(&unk_287883E98);
    sub_26738115C();
  }

  (v43)(v99, 0);
  v42(v100, 0);
  v45 = v94;
  v46 = v97;
  (v97)(v5, v89, v94);
  v100[0] = 1;
  sub_26738114C();
  v93(v8, 0, 1, v40);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, v85, 0x8000000267421A70);
  v47(v100, 0);
  LODWORD(v89) = *MEMORY[0x277D3E538];
  v46(v5);
  v100[0] = 1;
  sub_26738114C();
  v48 = v93;
  v93(v8, 0, 1, v40);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x8000000267421A90);
  v49(v100, 0);
  v86 = "EnrollmentDataStreams";
  (v46)(v5, *MEMORY[0x277D3E530], v45);
  v100[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v40);
  v50 = sub_2673811AC();
  v87 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, v86 | 0x8000000000000000);
  v50(v100, 0);
  v88 = v5;
  (v46)(v5, v91, v45);
  v100[0] = 1;
  sub_26738114C();
  v51 = v96;
  v48(v8, 0, 1, v96);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267421AE0);
  v52(v100, 0);
  sub_266ECB294(0, &qword_2800EF400, 0x277D568B8);
  sub_266ECAF2C(&qword_2800EF3F8, &qword_2800EF400, 0x277D568B8, &protocol conformance descriptor for ASRSchemaASREmojiMetrics);
  sub_26738120C();
  v48(v8, 0, 1, v51);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D696A6F6D65, 0xEC00000073636972);
  v53(v100, 0);
  v86 = "lizationDurationInNs";
  v54 = v91;
  v55 = v94;
  v56 = v97;
  (v97)(v88, v91, v94);
  v100[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v51);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, v87, v86 | 0x8000000000000000);
  v57(v100, 0);
  v87 = "pausedAudioDurationsInNs";
  v58 = v88;
  v56(v88, v54, v55);
  v100[0] = 1;
  sub_26738114C();
  v59 = v96;
  v48(v8, 0, 1, v96);
  v60 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000032, v87 | 0x8000000000000000);
  v60(v100, 0);
  v87 = "ForFinalResultInNs";
  v61 = v97;
  (v97)(v58, v89, v55);
  v100[0] = 1;
  sub_26738114C();
  v62 = v59;
  v63 = v93;
  v93(v8, 0, 1, v62);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v87 | 0x8000000000000000);
  v64(v100, 0);
  v87 = "extNormalizationRuns";
  (v61)(v58, v91, v55);
  v100[0] = 1;
  sub_26738114C();
  v65 = v96;
  v63(v8, 0, 1, v96);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v87 | 0x8000000000000000);
  v66(v100, 0);
  v87 = "secondaryPassDurationInNs";
  (v61)(v58, v89, v55);
  v100[0] = 1;
  sub_26738114C();
  v67 = v93;
  v93(v8, 0, 1, v65);
  v68 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v87 | 0x8000000000000000);
  v68(v100, 0);
  v87 = "numberOfSecondaryPassRuns";
  v69 = v91;
  v70 = v94;
  v71 = v97;
  (v97)(v58, v91, v94);
  v100[0] = 1;
  sub_26738114C();
  v72 = v96;
  v67(v8, 0, 1, v96);
  v73 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v87 | 0x8000000000000000);
  v73(v100, 0);
  v87 = "nMillionsPerSecond";
  v74 = v88;
  v71(v88, v69, v70);
  v100[0] = 1;
  sub_26738114C();
  v67(v8, 0, 1, v72);
  v75 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v87 | 0x8000000000000000);
  v75(v100, 0);
  v87 = "appleNeuralEngineCpuTimeInNs";
  v71(v74, v91, v70);
  v100[0] = 1;
  sub_26738114C();
  v76 = v96;
  v67(v8, 0, 1, v96);
  v77 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v87 | 0x8000000000000000);
  v77(v100, 0);
  type metadata accessor for ASRSchemaASRSpeechRecognitionHardware(0);
  sub_266EF5238(&qword_2800EF628, type metadata accessor for ASRSchemaASRSpeechRecognitionHardware, &protocol conformance descriptor for ASRSchemaASRSpeechRecognitionHardware);
  sub_26738120C();
  v78 = v93;
  v93(v8, 0, 1, v76);
  v79 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267421C50);
  v79(v100, 0);
  (v97)(v74, v89, v94);
  v100[0] = 1;
  sub_26738114C();
  v78(v8, 0, 1, v76);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x8000000267421C70);
  v80(v100, 0);
  type metadata accessor for ASRSchemaASRPauseReason(0);
  sub_266EF5238(&qword_2800EF5B8, type metadata accessor for ASRSchemaASRPauseReason, &protocol conformance descriptor for ASRSchemaASRPauseReason);
  sub_26738122C();
  v78(v8, 0, 1, v76);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0x6165526573756170, 0xEB000000006E6F73);
  v81(v100, 0);
  sub_266ECB294(0, &qword_2800EF630, 0x277D56A58);
  sub_266ECAF2C(&qword_2800EF638, &qword_2800EF630, 0x277D56A58, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationResult);
  sub_26738120C();
  v78(v8, 0, 1, v76);
  v82 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267421CA0);
  return v82(v100, 0);
}

uint64_t sub_266EF5174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF51D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF5238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ASRSchemaASRRecognitionResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EF5D0, 0x277D56A00);
  sub_266ECAF2C(&qword_2800EF5C8, &qword_2800EF5D0, 0x277D56A00, &protocol conformance descriptor for ASRSchemaASRPhrase);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73657361726870, 0xE700000000000000);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EF640, 0x277D56AB0);
  sub_266ECAF2C(&qword_2800EF648, &qword_2800EF640, 0x277D56AB0, &protocol conformance descriptor for ASRSchemaASRUtterance);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x636E617265747475, 0xEA00000000007365);
  return v8(v10, 0);
}

uint64_t sub_266EF5654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF56B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRecognitionResultTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF650, 0x277D56AA8);
  sub_266ECAF2C(&qword_2800EF658, &qword_2800EF650, 0x277D56AA8, &protocol conformance descriptor for ASRSchemaASRTokenTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E656B6F74, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_266EF5A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF5A80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRecognizerComponents.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E530];
  v17 = *(v1 + 104);
  v15 = v0;
  v17(v3);
  v19[0] = 1;
  sub_26738114C();
  v18 = sub_26738116C();
  v7 = *(*(v18 - 8) + 56);
  v7(v6, 0, 1, v18);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x646E65746E6F7266, 0xE800000000000000);
  v8(v19, 0);
  v9 = v16;
  v10 = v0;
  v11 = v17;
  (v17)(v3, v16, v10);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6261646F636564, 0xE900000000000065);
  v12(v19, 0);
  (v11)(v3, v9, v15);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265646F636564, 0xE700000000000000);
  return v13(v19, 0);
}

uint64_t sub_266EF5F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF5F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF5FCC()
{
  result = qword_2800EF620;
  if (!qword_2800EF620)
  {
    sub_266EF6024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF620);
  }

  return result;
}

unint64_t sub_266EF6024()
{
  result = qword_2800EF618;
  if (!qword_2800EF618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF618);
  }

  return result;
}

uint64_t static ASRSchemaASRRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF660, 0x277D56A98);
  sub_266ECAF2C(&qword_2800EF668, &qword_2800EF660, 0x277D56A98, &protocol conformance descriptor for ASRSchemaASRStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800EF410, 0x277D568C0);
  sub_266ECAF2C(&qword_2800EF408, &qword_2800EF410, 0x277D568C0, &protocol conformance descriptor for ASRSchemaASREnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EF450, 0x277D568D0);
  sub_266ECAF2C(&qword_2800EF448, &qword_2800EF450, 0x277D568D0, &protocol conformance descriptor for ASRSchemaASRFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EF0E0, 0x277D56850);
  sub_266ECAF2C(&qword_2800EF0D8, &qword_2800EF0E0, 0x277D56850, &protocol conformance descriptor for ASRSchemaASRCancelled);
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

uint64_t sub_266EF6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF66B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRescoringDeliberationEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ASRSchemaASRRescoringDeliberationEventType(0);
  sub_266EF6BA0(&qword_2800EF670, type metadata accessor for ASRSchemaASRRescoringDeliberationEventType, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationEventType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954746E657665, 0xE900000000000065);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x727544746E657665, 0xED00006E6F697461);
  return v10(v14, 0);
}

uint64_t sub_266EF6A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF6AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF6BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EF6BE8()
{
  result = qword_2800EF680;
  if (!qword_2800EF680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF680);
  }

  return result;
}

uint64_t static ASRSchemaASRRescoringDeliberationEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267421E10, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267421E40, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x8000000267421E80, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000046, 0x8000000267421EC0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000041, 0x8000000267421F10, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000035, 0x8000000267421F60, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x8000000267421FA0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000044, 0x8000000267421FE0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000044, 0x8000000267422030, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266EF70F0(uint64_t a1)
{
  v2 = sub_266EF71F4(&qword_2800EF688, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationEventType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF7158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF71F4(&qword_2800EF688, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationEventType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF71F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRRescoringDeliberationEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRRescoringDeliberationResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = sub_26738113C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v21 = a2;
  v22 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E69726F63736572, 0xEF64496B6E694C67);
  v11(v25, 0);
  v20 = "ringDeliberationResult";
  v12 = *MEMORY[0x277D3E500];
  v13 = *(v3 + 104);
  v13(v5, v12, v24);
  v25[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v20 | 0x8000000000000000);
  v14(v25, 0);
  v13(v5, v12, v24);
  v25[0] = 1;
  sub_26738114C();
  v15 = v22;
  v22(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674220E0);
  v16(v25, 0);
  sub_266ECB294(0, &qword_2800EF680, 0x277D56A50);
  sub_266ECAF2C(&qword_2800EF678, &qword_2800EF680, 0x277D56A50, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationEvent);
  sub_26738122C();
  v15(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E69726F63736572, 0xEF73746E65764567);
  return v17(v25, 0);
}

uint64_t sub_266EF7738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF779C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRescoringDeliberationResultTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v29 = sub_26738113C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v27 = *(v8 + 56);
  v27(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v33, 0);
  v30 = a2;
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v32, 0x64496B6E696CLL, 0xE600000000000000);
  v26 = *(v8 + 48);
  if (!v26(v12, 1, v7))
  {
    sub_266ECB128(&unk_287883EC0);
    sub_26738115C();
  }

  (v11)(v32, 0);
  v10(v33, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v31 + 104);
  v31 += 104;
  v25 = v14;
  v14(v28, v13, v29);
  v33[0] = 1;
  sub_26738114C();
  v27(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267422140);
  v15(v33, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v32, 0xD000000000000012, 0x8000000267422140);
  if (!v26(v18, 1, v7))
  {
    sub_266ECB128(&unk_287883EE8);
    sub_26738115C();
  }

  (v17)(v32, 0);
  v16(v33, 0);
  v25(v28, v13, v29);
  v33[0] = 1;
  sub_26738114C();
  v27(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267422160);
  v19(v33, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v32, 0xD000000000000012, 0x8000000267422160);
  if (!v26(v22, 1, v7))
  {
    sub_266ECB128(&unk_287883F10);
    sub_26738115C();
  }

  (v21)(v32, 0);
  return v20(v33, 0);
}

uint64_t sub_266EF7E1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF7E80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileDeleted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  return v5(v7, 0);
}

uint64_t sub_266EF8104(uint64_t a1)
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  return v5(v7, 0);
}

uint64_t sub_266EF82AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF8310(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileDeletionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v26 = sub_26738113C();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v25 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xED00006449727341);
  v13(v27, 0);
  v23 = *MEMORY[0x277D3E508];
  v14 = *(v3 + 104);
  v15 = v26;
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = v11;
  v22 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v17(v27, 0);
  v24 = *MEMORY[0x277D3E530];
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v18(v27, 0);
  (v14)(v5, v23, v15);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267422200);
  v19(v27, 0);
  (v14)(v5, v24, v26);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267422220);
  return v20(v27, 0);
}

uint64_t sub_266EF8958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF89BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileEnqueued.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v6(v9, 0);
  type metadata accessor for MHSchemaMHASRAudioCodec(0);
  sub_266EF8DBC();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x646F436F69647561, 0xEA00000000006365);
  return v7(v9, 0);
}

uint64_t sub_266EF8CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF8D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF8DBC()
{
  result = qword_2800EF690;
  if (!qword_2800EF690)
  {
    type metadata accessor for MHSchemaMHASRAudioCodec(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF690);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioFileEnqueueFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v26 = sub_26738113C();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v25 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xED00006449727341);
  v13(v27, 0);
  v23 = *MEMORY[0x277D3E508];
  v14 = *(v3 + 104);
  v15 = v26;
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = v11;
  v22 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v17(v27, 0);
  v24 = *MEMORY[0x277D3E530];
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v18(v27, 0);
  (v14)(v5, v23, v15);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267422200);
  v19(v27, 0);
  (v14)(v5, v24, v26);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267422220);
  return v20(v27, 0);
}

uint64_t sub_266EF93FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileStorageFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = sub_26738113C();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v22 = *MEMORY[0x277D3E508];
  v24 = *(v3 + 104);
  v24(v5);
  v26[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = v10;
  v20[1] = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v12(v26, 0);
  v21 = *MEMORY[0x277D3E530];
  v14 = v24;
  v13 = v25;
  v24(v5);
  v26[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v15(v26, 0);
  (v14)(v5, v22, v13);
  v26[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267422200);
  v16(v26, 0);
  (v24)(v5, v21, v25);
  v26[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267422220);
  v17(v26, 0);
  type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason(0);
  sub_266EF9B90(&qword_2800EF698, type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason, &protocol conformance descriptor for ASRSchemaASRSampledAudioStorageFailureReason);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x8000000267422300);
  return v18(v26, 0);
}

uint64_t sub_266EF9A84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9AE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF9B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EF9BD8()
{
  result = qword_2800EF1D0;
  if (!qword_2800EF1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1D0);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioFileStored.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266EF9E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9ED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF9F34()
{
  result = qword_2800EF1C8;
  if (!qword_2800EF1C8)
  {
    sub_266EF9F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF1C8);
  }

  return result;
}

unint64_t sub_266EF9F8C()
{
  result = qword_2800EF1C0;
  if (!qword_2800EF1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1C0);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioStorageFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674223B0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x80000002674223E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000039, 0x8000000267422420, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000044, 0x8000000267422460, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000041, 0x80000002674224B0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266EFA2CC(uint64_t a1)
{
  v2 = sub_266EFA3D0(&qword_2800EF6A0, &protocol conformance descriptor for ASRSchemaASRSampledAudioStorageFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFA334(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFA3D0(&qword_2800EF6A0, &protocol conformance descriptor for ASRSchemaASRSampledAudioStorageFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFA3D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRSpeechProfileCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267422540, isUniquelyReferenced_nonNull_native);
  *v3 = v118;

  v1(v147, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267422570, v8);
  *v7 = v119;

  v5(v147, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674225A0, v12);
  *v11 = v120;

  v9(v147, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674225D0, v16);
  *v15 = v121;

  v13(v147, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267422600, v20);
  *v19 = v122;

  v17(v147, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267422630, v24);
  *v23 = v123;

  v21(v147, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267422660, v28);
  *v27 = v124;

  v25(v147, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267422690, v32);
  *v31 = v125;

  v29(v147, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674226C0, v36);
  *v35 = v126;

  v33(v147, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x80000002674226F0, v40);
  *v39 = v127;

  v37(v147, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267422720, v44);
  *v43 = v128;

  v41(v147, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x8000000267422750, v48);
  *v47 = v129;

  v45(v147, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x8000000267422780, v52);
  *v51 = v130;

  v49(v147, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000026, 0x80000002674227B0, v56);
  *v55 = v131;

  v53(v147, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000029, 0x80000002674227E0, v60);
  *v59 = v132;

  v57(v147, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x8000000267422810, v64);
  *v63 = v133;

  v61(v147, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000026, 0x8000000267422840, v68);
  *v67 = v134;

  v65(v147, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000024, 0x8000000267422870, v72);
  *v71 = v135;

  v69(v147, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x80000002674228A0, v76);
  *v75 = v136;

  v73(v147, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000024, 0x80000002674228D0, v80);
  *v79 = v137;

  v77(v147, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000026, 0x8000000267422900, v84);
  *v83 = v138;

  v81(v147, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x8000000267422930, v88);
  *v87 = v139;

  v85(v147, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x8000000267422960, v92);
  *v91 = v140;

  v89(v147, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267422990, v96);
  *v95 = v141;

  v93(v147, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000026, 0x80000002674229C0, v100);
  *v99 = v142;

  v97(v147, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000025, 0x80000002674229F0, v104);
  *v103 = v143;

  v101(v147, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000026, 0x8000000267422A20, v108);
  *v107 = v144;

  v105(v147, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x8000000267422A50, v112);
  *v111 = v145;

  v109(v147, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000023, 0x8000000267422A80, v116);
  *v115 = v146;

  return v113(v147, 0);
}

uint64_t sub_266EFB1C0(uint64_t a1)
{
  v2 = sub_266EFB2C4(&qword_2800EF6A8, &protocol conformance descriptor for ASRSchemaASRSpeechProfileCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFB228(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFB2C4(&qword_2800EF6A8, &protocol conformance descriptor for ASRSchemaASRSpeechProfileCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFB2C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSpeechProfileCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRSpeechRecognitionHardware.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267422AF0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267422B20, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x8000000267422B50, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EFB51C(uint64_t a1)
{
  v2 = sub_266EFB620(&qword_2800EF6B0, &protocol conformance descriptor for ASRSchemaASRSpeechRecognitionHardware);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFB584(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFB620(&qword_2800EF6B0, &protocol conformance descriptor for ASRSchemaASRSpeechRecognitionHardware);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFB620(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSpeechRecognitionHardware(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRDatapackTask(0);
  sub_266EFC3DC(&qword_2800EF3B8, type metadata accessor for ASRSchemaASRDatapackTask, &protocol conformance descriptor for ASRSchemaASRDatapackTask);
  v58 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v55 = *(v11 - 8);
  v12 = v55 + 56;
  v13 = *(v55 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 1802723700, 0xE400000000000000);
  v14(v67, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266EFC3DC(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v63 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x636F4C6C65646F6DLL, 0xEB00000000656C61);
  v15(v67, 0);
  LODWORD(v57) = *MEMORY[0x277D3E530];
  v16 = v64;
  v18 = v65 + 104;
  v17 = *(v65 + 104);
  v61 = v7;
  v62 = v17;
  v17(v7);
  v19 = v18;
  v67[0] = 1;
  sub_26738114C();
  v20 = v11;
  v13(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6B63617061746164, 0xEF6E6F6973726556);
  v21(v67, 0);
  v54 = "iri.asr.ASRStarted";
  v60 = *MEMORY[0x277D3E4E8];
  v22 = v61;
  v23 = v62;
  v24 = v16;
  v62(v61);
  v65 = v19;
  v67[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v54 | 0x8000000000000000);
  v25(v67, 0);
  v26 = v57;
  v23(v22, v57, v24);
  v67[0] = 1;
  sub_26738114C();
  v56 = v20;
  v13(v10, 0, 1, v20);
  v27 = v13;
  v59 = v13;
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x655672656D6D6168, 0xED00006E6F697372);
  v28(v67, 0);
  v54 = "isHighQualityAsset";
  v29 = v26;
  v30 = v64;
  v31 = v62;
  (v62)(v22, v29, v64);
  v67[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v20);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v54 | 0x8000000000000000);
  v32(v67, 0);
  v54 = "geoLanguageModelRegion";
  v33 = v30;
  v31(v61, v60, v30);
  v67[0] = 1;
  sub_26738114C();
  v34 = v56;
  v35 = v59;
  v59(v10, 0, 1, v56);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v54 | 0x8000000000000000);
  v36(v67, 0);
  v54 = "geoLanguageModelLoaded";
  v37 = v61;
  v31(v61, *MEMORY[0x277D3E540], v33);
  v67[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v54 | 0x8000000000000000);
  v38(v67, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v35(v10, 0, 1, v34);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267422C40);
  v39(v67, 0);
  (v62)(v37, v57, v64);
  v67[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v34);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x8000000267422C60);
  v40(v67, 0);
  type metadata accessor for ASRSchemaASRStartState(0);
  sub_266EFC3DC(&qword_2800EF6B8, type metadata accessor for ASRSchemaASRStartState, &protocol conformance descriptor for ASRSchemaASRStartState);
  sub_26738120C();
  v58 = v12;
  v35(v10, 0, 1, v34);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x6174537472617473, 0xEA00000000006574);
  v41(v67, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v66, 0x6174537472617473, 0xEA00000000006574);
  if (!(*(v55 + 48))(v44, 1, v34))
  {
    sub_266ECB128(&unk_287883F38);
    sub_26738115C();
  }

  (v43)(v66, 0);
  v42(v67, 0);
  v57 = "portraitExperimentVariantName";
  v45 = v61;
  v46 = v62;
  v47 = v64;
  (v62)(v61, v60, v64);
  v67[0] = 1;
  sub_26738114C();
  v48 = v34;
  v49 = v59;
  v59(v10, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v57 | 0x8000000000000000);
  v50(v67, 0);
  v46(v45, v60, v47);
  v67[0] = 1;
  sub_26738114C();
  v49(v10, 0, 1, v56);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267422CA0);
  return v51(v67, 0);
}

uint64_t sub_266EFC318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFC37C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EFC3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ASRSchemaASRStartState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267422CF0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267422D10, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267422D30, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267422D50, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_287883F60);
  return sub_26738112C();
}

uint64_t sub_266EFC704(uint64_t a1)
{
  v2 = sub_266EFC808(&qword_2800EF6C0, &protocol conformance descriptor for ASRSchemaASRStartState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFC76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFC808(&qword_2800EF6C0, &protocol conformance descriptor for ASRSchemaASRStartState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFC808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRStartState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRTaskHint.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267422DA0, isUniquelyReferenced_nonNull_native);
  *v3 = v70;

  v1(v87, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267422DC0, v8);
  *v7 = v71;

  v5(v87, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267422DE0, v12);
  *v11 = v72;

  v9(v87, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267422E00, v16);
  *v15 = v73;

  v13(v87, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267422E20, v20);
  *v19 = v74;

  v17(v87, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267422E40, v24);
  *v23 = v75;

  v21(v87, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x8000000267422E60, v28);
  *v27 = v76;

  v25(v87, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267422E80, v32);
  *v31 = v77;

  v29(v87, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x8000000267422EA0, v36);
  *v35 = v78;

  v33(v87, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267422EC0, v40);
  *v39 = v79;

  v37(v87, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000016, 0x8000000267422EE0, v44);
  *v43 = v80;

  v41(v87, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x8000000267422F00, v48);
  *v47 = v81;

  v45(v87, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000014, 0x8000000267422F20, v52);
  *v51 = v82;

  v49(v87, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000014, 0x8000000267422F40, v56);
  *v55 = v83;

  v53(v87, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000011, 0x8000000267422F60, v60);
  *v59 = v84;

  v57(v87, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000021, 0x8000000267422F80, v64);
  *v63 = v85;

  v61(v87, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001ELL, 0x8000000267422FB0, v68);
  *v67 = v86;

  return v65(v87, 0);
}

uint64_t sub_266EFD098(uint64_t a1)
{
  v2 = sub_266EFD19C(&qword_2800EF6C8, &protocol conformance descriptor for ASRSchemaASRTaskHint);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFD100(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFD19C(&qword_2800EF6C8, &protocol conformance descriptor for ASRSchemaASRTaskHint);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFD19C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRTaskHint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRToken.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_26738113C();
  v57 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v58 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v59 = *(v4 + 104);
  v59(v6, v10, v3);
  v61[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v52 = *(v11 - 8);
  v12 = *(v52 + 56);
  v55 = (v52 + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x65646E496B6E696CLL, 0xE900000000000078);
  v13(v61, 0);
  v50 = *MEMORY[0x277D3E540];
  v14 = v50;
  v15 = v57;
  v16 = v59;
  v59(v6, v50, v57);
  v61[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D69547472617473, 0xED0000734E6E4965);
  v17(v61, 0);
  v56 = v4 + 104;
  v16(v6, v14, v15);
  v61[0] = 1;
  sub_26738114C();
  v49 = v11;
  v12(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  v18(v61, 0);
  v48 = "iri.asr.ASRToken";
  v51 = *MEMORY[0x277D3E4E8];
  v19 = v59;
  (v59)(v6);
  v61[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v20 = v12;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v48 | 0x8000000000000000);
  v21(v61, 0);
  v48 = "appendSpaceAfter";
  v22 = v57;
  v19(v6, v50, v57);
  v61[0] = 1;
  sub_26738114C();
  v23 = v49;
  v20(v9, 0, 1, v49);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v48 | 0x8000000000000000);
  v24(v61, 0);
  v25 = v22;
  v26 = v59;
  v59(v6, *MEMORY[0x277D3E508], v25);
  v61[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656469666E6F63, 0xEA00000000006563);
  v27(v61, 0);
  v26(v6, *MEMORY[0x277D3E530], v57);
  v61[0] = 1;
  sub_26738114C();
  v54 = v20;
  v20(v9, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x74617574636E7570, 0xEF747865546E6F69);
  v28(v61, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v60, 0x74617574636E7570, 0xEF747865546E6F69);
  v31 = v23;
  if (!(*(v52 + 48))(v32, 1, v23))
  {
    sub_266ECB128(&unk_287883F88);
    sub_26738115C();
  }

  (v30)(v60, 0);
  v29(v61, 0);
  v33 = v51;
  v34 = v57;
  v59(v6, v51, v57);
  v61[0] = 1;
  sub_26738114C();
  v35 = v23;
  v36 = v54;
  v54(v9, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267423040);
  v37(v61, 0);
  v52 = "isAutoPunctuation";
  v38 = v59;
  v59(v6, v33, v34);
  v61[0] = 1;
  sub_26738114C();
  v36(v9, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v52 | 0x8000000000000000);
  v39(v61, 0);
  v40 = *MEMORY[0x277D3E518];
  v38(v6, v40, v34);
  v61[0] = 1;
  sub_26738114C();
  v41 = v35;
  v42 = v35;
  v43 = v54;
  v54(v9, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x736F436870617267, 0xE900000000000074);
  v44(v61, 0);
  v59(v6, v40, v34);
  v61[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v42);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0x63697473756F6361, 0xEC00000074736F43);
  v45(v61, 0);
  sub_266ECB294(0, &qword_2800EF430, 0x277D568C8);
  sub_266ECAF2C(&qword_2800EF428, &qword_2800EF430, 0x277D568C8, &protocol conformance descriptor for ASRSchemaASREntityMetadata);
  sub_26738120C();
  v43(v9, 0, 1, v42);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x654D797469746E65, 0xEE00617461646174);
  return v46(v61, 0);
}

uint64_t sub_266EFDDE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFDE44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRTokenTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v30 = *MEMORY[0x277D3E530];
  v32 = v3 + 104;
  v29 = v9;
  v9(v5);
  v34[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v28 = *(v11 + 56);
  v28(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 1954047348, 0xE400000000000000);
  v12(v34, 0);
  v31 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 1954047348, 0xE400000000000000);
  v26[0] = *(v11 + 48);
  v26[1] = v11 + 48;
  if (!(v26[0])(v15, 1, v10))
  {
    sub_266ECB128(&unk_287883FB0);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  v27 = v2;
  v29(v5, v30, v2);
  v34[0] = 1;
  sub_26738114C();
  v28(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x716553656E6F6870, 0xED000065636E6575);
  v16(v34, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v33, 0x716553656E6F6870, 0xED000065636E6575);
  v19 = v26[0];
  if (!(v26[0])(v20, 1, v10))
  {
    sub_266ECB128(&unk_287883FD8);
    sub_26738115C();
  }

  (v18)(v33, 0);
  v17(v34, 0);
  v29(v5, v30, v27);
  v34[0] = 1;
  sub_26738114C();
  v28(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674230B0);
  v21(v34, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v33, 0xD000000000000010, 0x80000002674230B0);
  if (!v19(v24, 1, v10))
  {
    sub_266ECB128(&unk_287884000);
    sub_26738115C();
  }

  (v23)(v33, 0);
  return v22(v34, 0);
}

uint64_t sub_266EFE4B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFE514(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EFE578()
{
  result = qword_2800EF658;
  if (!qword_2800EF658)
  {
    sub_266EFE5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF658);
  }

  return result;
}

unint64_t sub_266EFE5D0()
{
  result = qword_2800EF650;
  if (!qword_2800EF650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF650);
  }

  return result;
}

uint64_t static ASRSchemaASRUtterance.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267423100);
  return v8(v10, 0);
}

uint64_t sub_266EFE86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFE8D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EFE934()
{
  result = qword_2800EF648;
  if (!qword_2800EF648)
  {
    sub_266EFE98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF648);
  }

  return result;
}

unint64_t sub_266EFE98C()
{
  result = qword_2800EF640;
  if (!qword_2800EF640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF640);
  }

  return result;
}

uint64_t static ASRSchemaASRVisualContextCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267423160, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267423190, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674231B0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EFEBF0(uint64_t a1)
{
  v2 = sub_266EFECF4(&qword_2800EF6D0, &protocol conformance descriptor for ASRSchemaASRVisualContextCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFEC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFECF4(&qword_2800EF6D0, &protocol conformance descriptor for ASRSchemaASRVisualContextCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFECF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRVisualContextCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionFeatureSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v110 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v110[1] = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v114 = *(v10 - 8);
  v11 = v114 + 56;
  v116 = *(v114 + 7);
  v116(v9, 0, 1, v10);
  v118 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267423200);
  v12(v123, 0);
  v113 = "actionCandidateId";
  v13 = *MEMORY[0x277D3E4E8];
  v14 = v121;
  v15 = *(v120 + 104);
  v120 += 104;
  v111 = v6;
  v115 = v13;
  v15(v6, v13, v121);
  v16 = v15;
  v123[0] = 1;
  sub_26738114C();
  v17 = v10;
  v18 = v10;
  v112 = v10;
  v19 = v116;
  v116(v9, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v113 | 0x8000000000000000);
  v20(v123, 0);
  v113 = "isHighConfidence";
  v21 = v111;
  v16(v111, v13, v14);
  v117 = v16;
  v123[0] = 1;
  sub_26738114C();
  v119 = v11;
  v19(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v113 | 0x8000000000000000);
  v22(v123, 0);
  v113 = "isAppInForeground";
  v23 = v21;
  v24 = v21;
  v25 = v115;
  v26 = v121;
  v16(v24, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v27 = v112;
  v28 = v116;
  v116(v9, 0, 1, v112);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v113 | 0x8000000000000000);
  v29(v123, 0);
  v113 = "appNameMentioned";
  v30 = v117;
  v117(v23, v25, v26);
  v123[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v113 | 0x8000000000000000);
  v31(v123, 0);
  v30(v23, v25, v121);
  v123[0] = 1;
  sub_26738114C();
  v32 = v116;
  v116(v9, 0, 1, v27);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674232A0);
  v33(v123, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v122, 0xD000000000000013, 0x80000002674232A0);
  v113 = *(v114 + 6);
  v114 += 48;
  if (!(v113)(v36, 1, v27))
  {
    sub_266ECB128(&unk_287884028);
    sub_26738115C();
  }

  (v35)(v122, 0);
  v34(v123, 0);
  v37 = v111;
  v117(v111, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674232C0);
  v38(v123, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v122, 0xD000000000000013, 0x80000002674232C0);
  if (!(v113)(v41, 1, v27))
  {
    sub_266ECB128(&unk_287884050);
    sub_26738115C();
  }

  (v40)(v122, 0);
  v39(v123, 0);
  v117(v37, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674232E0);
  v42(v123, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v122, 0xD000000000000014, 0x80000002674232E0);
  if (!(v113)(v45, 1, v27))
  {
    sub_266ECB128(&unk_287884078);
    sub_26738115C();
  }

  (v44)(v122, 0);
  v43(v123, 0);
  v117(v37, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267423300);
  v46(v123, 0);
  v47 = sub_2673811AC();
  v48 = sub_266ECB6CC(v122, 0xD000000000000013, 0x8000000267423300);
  if (!(v113)(v49, 1, v27))
  {
    sub_266ECB128(&unk_2878840A0);
    sub_26738115C();
  }

  (v48)(v122, 0);
  v47(v123, 0);
  v117(v37, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267423320);
  v50(v123, 0);
  v51 = sub_2673811AC();
  v52 = sub_266ECB6CC(v122, 0xD000000000000010, 0x8000000267423320);
  if (!(v113)(v53, 1, v27))
  {
    sub_266ECB128(&unk_2878840C8);
    sub_26738115C();
  }

  (v52)(v122, 0);
  v51(v123, 0);
  v117(v37, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v27);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0x63416B6E694C7369, 0xEC0000006E6F6974);
  v54(v123, 0);
  v55 = sub_2673811AC();
  v56 = sub_266ECB6CC(v122, 0x63416B6E694C7369, 0xEC0000006E6F6974);
  if (!(v113)(v57, 1, v27))
  {
    sub_266ECB128(&unk_2878840F0);
    sub_26738115C();
  }

  (v56)(v122, 0);
  v55(v123, 0);
  v58 = v115;
  v59 = v117;
  v117(v37, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v60 = v27;
  v61 = v27;
  v62 = v116;
  v116(v9, 0, 1, v60);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0x68736F7475417369, 0xEE0074756374726FLL);
  v63(v123, 0);
  v110[0] = "isVocabNameMatch";
  v59(v37, v58, v121);
  v123[0] = 1;
  sub_26738114C();
  v62(v9, 0, 1, v61);
  v64 = v62;
  v65 = sub_2673811AC();
  v66 = v110[0];
  sub_266EC637C(v9, 0xD000000000000019, v110[0] | 0x8000000000000000);
  v65(v123, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v122, 0xD000000000000019, v66 | 0x8000000000000000);
  if (!(v113)(v69, 1, v61))
  {
    sub_266ECB128(&unk_287884118);
    sub_26738115C();
  }

  (v68)(v122, 0);
  v67(v123, 0);
  v70 = *MEMORY[0x277D3E538];
  v71 = v111;
  v117(v111, v70, v121);
  v123[0] = 1;
  sub_26738114C();
  v72 = v112;
  v64(v9, 0, 1, v112);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267423360);
  v73(v123, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v122, 0xD000000000000016, 0x8000000267423360);
  if (!(v113)(v76, 1, v72))
  {
    sub_266ECB128(&unk_287884140);
    sub_26738115C();
  }

  (v75)(v122, 0);
  v74(v123, 0);
  v117(v71, v70, v121);
  v123[0] = 1;
  sub_26738114C();
  v77 = v112;
  v116(v9, 0, 1, v112);
  v78 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267423380);
  v78(v123, 0);
  v79 = sub_2673811AC();
  v80 = sub_266ECB6CC(v122, 0xD000000000000012, 0x8000000267423380);
  if (!(v113)(v81, 1, v77))
  {
    sub_266ECB128(&unk_287884168);
    sub_26738115C();
  }

  (v80)(v122, 0);
  v79(v123, 0);
  v82 = v117;
  v117(v71, *MEMORY[0x277D3E500], v121);
  v123[0] = 1;
  sub_26738114C();
  v83 = v116;
  v116(v9, 0, 1, v112);
  v84 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674233A0);
  v84(v123, 0);
  v114 = "nlParseProbability";
  v85 = v115;
  v86 = v121;
  v82(v71, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v83(v9, 0, 1, v112);
  v87 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v114 | 0x8000000000000000);
  v87(v123, 0);
  v82(v71, v85, v86);
  v123[0] = 1;
  sub_26738114C();
  v88 = v112;
  v89 = v116;
  v116(v9, 0, 1, v112);
  v90 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x80000002674233E0);
  v90(v123, 0);
  sub_266ECB294(0, &qword_2800EF6D8, 0x277D56B30);
  sub_266ECAF2C(&qword_2800EF6E0, &qword_2800EF6D8, 0x277D56B30, &protocol conformance descriptor for CAARSchemaCAARAppHistoryFeatures);
  sub_26738120C();
  v89(v9, 0, 1, v88);
  v91 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267423400);
  v91(v123, 0);
  sub_266ECB294(0, &qword_2800EF6E8, 0x277D56B38);
  sub_266ECAF2C(&qword_2800EF6F0, &qword_2800EF6E8, 0x277D56B38, &protocol conformance descriptor for CAARSchemaCAARAppLevelDisambiguationHistory);
  sub_26738120C();
  v89(v9, 0, 1, v88);
  v92 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267423420);
  v92(v123, 0);
  v114 = "appLevelDisambiguationHistory";
  sub_266ECB294(0, &qword_2800EF6F8, 0x277D56B08);
  sub_266ECAF2C(&qword_2800EF700, &qword_2800EF6F8, 0x277D56B08, &protocol conformance descriptor for CAARSchemaCAARActionLevelDisambiguationHistory);
  sub_26738120C();
  v93 = v116;
  v116(v9, 0, 1, v88);
  v94 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v114 | 0x8000000000000000);
  v94(v123, 0);
  sub_266ECB294(0, &qword_2800EF708, 0x277D56B98);
  sub_266ECAF2C(&qword_2800EF710, &qword_2800EF708, 0x277D56B98, &protocol conformance descriptor for CAARSchemaCAARProactiveFeatures);
  sub_26738120C();
  v93(v9, 0, 1, v88);
  v95 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267423470);
  v95(v123, 0);
  v114 = "proactiveFeatures";
  v96 = v111;
  v97 = v115;
  v98 = v121;
  v99 = v117;
  v117(v111, v115, v121);
  v123[0] = 1;
  sub_26738114C();
  v100 = v116;
  v116(v9, 0, 1, v88);
  v101 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v114 | 0x8000000000000000);
  v101(v123, 0);
  v114 = "isAutoShortcutEnabled";
  v99(v96, v97, v98);
  v123[0] = 1;
  sub_26738114C();
  v102 = v112;
  v100(v9, 0, 1, v112);
  v103 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v114 | 0x8000000000000000);
  v103(v123, 0);
  v114 = "RunPreviouslyShown";
  v104 = v121;
  v99(v96, *MEMORY[0x277D3E530], v121);
  v123[0] = 1;
  sub_26738114C();
  v105 = v116;
  v116(v9, 0, 1, v102);
  v106 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v114 | 0x8000000000000000);
  v106(v123, 0);
  v117(v96, v115, v104);
  v123[0] = 1;
  sub_26738114C();
  v105(v9, 0, 1, v102);
  v107 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267423500);
  v107(v123, 0);
  type metadata accessor for CAARSchemaCAARDomainProtectionLevel(0);
  sub_266F00A54();
  sub_26738120C();
  v105(v9, 0, 1, v102);
  v108 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267423530);
  return v108(v123, 0);
}

uint64_t sub_266F00990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F009F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F00A54()
{
  result = qword_2800EF718;
  if (!qword_2800EF718)
  {
    type metadata accessor for CAARSchemaCAARDomainProtectionLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF718);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionLevelDisambiguationHistory.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v92 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v90 = *(v3 + 104);
  v91 = v2;
  v93 = v3 + 104;
  v90(v5, v9, v2);
  v95[0] = 1;
  sub_26738114C();
  v89 = sub_26738116C();
  v85 = *(v89 - 8);
  v11 = (v85 + 56);
  v10 = *(v85 + 56);
  v10(v8, 0, 1, v89);
  v86 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267423590);
  v12(v95, 0);
  v84 = "guationsLastTwoMinutes";
  v88 = v9;
  v13 = v90;
  v90(v5, v9, v2);
  v95[0] = 1;
  sub_26738114C();
  v14 = v89;
  v10(v8, 0, 1, v89);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v84 | 0x8000000000000000);
  v15(v95, 0);
  v84 = "guationsLasTenMinutes";
  v16 = v9;
  v17 = v91;
  v13(v5, v16, v91);
  v95[0] = 1;
  sub_26738114C();
  v87 = v10;
  v10(v8, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v84 | 0x8000000000000000);
  v18(v95, 0);
  v83 = "guationsLastOneHour";
  v19 = v88;
  v20 = v90;
  v90(v5, v88, v17);
  v95[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v89);
  v21 = sub_2673811AC();
  v84 = 0xD000000000000024;
  sub_266EC637C(v8, 0xD000000000000024, v83 | 0x8000000000000000);
  v21(v95, 0);
  v83 = "guationsLastSixHours";
  v22 = v19;
  v23 = v91;
  v20(v5, v22, v91);
  v95[0] = 1;
  sub_26738114C();
  v24 = v89;
  v25 = v87;
  v87(v8, 0, 1, v89);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v83 | 0x8000000000000000);
  v26(v95, 0);
  v83 = "guationsLastOneDay";
  v27 = v88;
  v90(v5, v88, v23);
  v95[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v83 | 0x8000000000000000);
  v28(v95, 0);
  v83 = "guationsLastSevenDays";
  v29 = v27;
  v30 = v90;
  v90(v5, v29, v23);
  v95[0] = 1;
  sub_26738114C();
  v31 = v87;
  v87(v8, 0, 1, v24);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v83 | 0x8000000000000000);
  v32(v95, 0);
  v83 = "guationsLastTwentyEightDays";
  v33 = v88;
  v30(v5, v88, v91);
  v95[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v24);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, v84, v83 | 0x8000000000000000);
  v34(v95, 0);
  v84 = "guationsLastInfinity";
  v35 = v33;
  v37 = v90;
  v36 = v91;
  v90(v5, v35, v91);
  v95[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v24);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, v84 | 0x8000000000000000);
  v38(v95, 0);
  v84 = "nDisambiguationsLastTwoMinutes";
  v39 = v88;
  v37(v5, v88, v36);
  v95[0] = 1;
  sub_26738114C();
  v40 = v87;
  v87(v8, 0, 1, v24);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, v84 | 0x8000000000000000);
  v41(v95, 0);
  v84 = "nDisambiguationsLastTenMinutes";
  v42 = v91;
  v90(v5, v39, v91);
  v95[0] = 1;
  sub_26738114C();
  v43 = v89;
  v40(v8, 0, 1, v89);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v84 | 0x8000000000000000);
  v44(v95, 0);
  v84 = "nDisambiguationsLastOneHour";
  v45 = v39;
  v46 = v90;
  v90(v5, v45, v42);
  v95[0] = 1;
  sub_26738114C();
  v47 = v43;
  v48 = v87;
  v87(v8, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, v84 | 0x8000000000000000);
  v49(v95, 0);
  v84 = "nDisambiguationsLastSixHours";
  v50 = v88;
  v46(v5, v88, v42);
  v95[0] = 1;
  sub_26738114C();
  v51 = v89;
  v48(v8, 0, 1, v89);
  v52 = v48;
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, v84 | 0x8000000000000000);
  v53(v95, 0);
  v84 = "nDisambiguationsLastOneDay";
  v54 = v50;
  v55 = v91;
  v46(v5, v54, v91);
  v95[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v51);
  v56 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002DLL, v84 | 0x8000000000000000);
  v56(v95, 0);
  v84 = "nDisambiguationsLastSevenDays";
  v57 = v88;
  v46(v5, v88, v55);
  v95[0] = 1;
  sub_26738114C();
  v58 = v89;
  v52(v8, 0, 1, v89);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000033, v84 | 0x8000000000000000);
  v59(v95, 0);
  v84 = "LastTwentyEightDays";
  v46(v5, v57, v91);
  v95[0] = 1;
  sub_26738114C();
  v60 = v58;
  v61 = v87;
  v87(v8, 0, 1, v60);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, v84 | 0x8000000000000000);
  v62(v95, 0);
  LODWORD(v83) = *MEMORY[0x277D3E4E8];
  (v46)(v5);
  v95[0] = 1;
  v84 = v5;
  sub_26738114C();
  v63 = v89;
  v61(v8, 0, 1, v89);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x80000002674238A0);
  v64(v95, 0);
  v65 = sub_2673811AC();
  v66 = sub_266ECB6CC(v94, 0xD000000000000029, 0x80000002674238A0);
  v67 = *(v85 + 48);
  v85 += 48;
  v68 = v67;
  if (!v67(v69, 1, v63))
  {
    sub_266ECB128(&unk_287884190);
    sub_26738115C();
  }

  (v66)(v94, 0);
  v65(v95, 0);
  v90(v84, v88, v91);
  v95[0] = 1;
  sub_26738114C();
  v70 = v89;
  v87(v8, 0, 1, v89);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000031, 0x80000002674238D0);
  v71(v95, 0);
  v72 = sub_2673811AC();
  v73 = sub_266ECB6CC(v94, 0xD000000000000031, 0x80000002674238D0);
  if (!v68(v74, 1, v70))
  {
    sub_266ECB128(&unk_2878841B8);
    sub_26738115C();
  }

  (v73)(v94, 0);
  v72(v95, 0);
  v85 = "tionForThisAction";
  v75 = v84;
  v77 = v90;
  v76 = v91;
  v90(v84, v83, v91);
  v95[0] = 1;
  sub_26738114C();
  v78 = v89;
  v79 = v87;
  v87(v8, 0, 1, v89);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v85 | 0x8000000000000000);
  v80(v95, 0);
  v77(v75, v88, v76);
  v95[0] = 1;
  sub_26738114C();
  v79(v8, 0, 1, v78);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x8000000267423940);
  return v81(v95, 0);
}

uint64_t sub_266F01DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F01E44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F01EA8()
{
  result = qword_2800EF700;
  if (!qword_2800EF700)
  {
    sub_266F01F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF700);
  }

  return result;
}

unint64_t sub_266F01F00()
{
  result = qword_2800EF6F8;
  if (!qword_2800EF6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6F8);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionModelOutput.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267423200);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F63536C65646F6DLL, 0xEA00000000006572);
  return v10(v14, 0);
}

uint64_t sub_266F02288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F022EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARAppHistoryFeatures.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v53 = sub_26738113C();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v54 = *MEMORY[0x277D3E538];
  v8 = *(v2 + 104);
  v8(v4);
  v9 = v2 + 104;
  v51 = v8;
  v55[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v49 = *(v11 + 56);
  v52 = v11 + 56;
  v49(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x80000002674239D0);
  v12(v55, 0);
  v45 = v4;
  v46 = "numMinutesSinceAppInstalled";
  v13 = v4;
  v14 = v54;
  v15 = v53;
  (v8)(v13, v54, v53);
  v55[0] = 1;
  sub_26738114C();
  v16 = v49;
  v49(v7, 0, 1, v10);
  v47 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v46 | 0x8000000000000000);
  v17(v55, 0);
  v46 = "numMinutesSinceAppLastLaunched";
  v18 = v45;
  v19 = v14;
  v20 = v51;
  (v51)(v45, v19, v15);
  v55[0] = 1;
  sub_26738114C();
  v48 = v10;
  v16(v7, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v46 | 0x8000000000000000);
  v21(v55, 0);
  v46 = "numAppLaunchesLastTwoMinutes";
  v22 = v54;
  v23 = v53;
  (v20)(v18, v54, v53);
  v50 = v9;
  v55[0] = 1;
  sub_26738114C();
  v24 = v49;
  v49(v7, 0, 1, v10);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v46 | 0x8000000000000000);
  v25(v55, 0);
  v46 = "numAppLaunchesLastTenMinutes";
  v26 = v22;
  v27 = v51;
  (v51)(v18, v26, v23);
  v55[0] = 1;
  sub_26738114C();
  v28 = v48;
  v24(v7, 0, 1, v48);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v46 | 0x8000000000000000);
  v29(v55, 0);
  v46 = "numAppLaunchesLastOneHour";
  v30 = v54;
  (v27)(v18, v54, v23);
  v55[0] = 1;
  sub_26738114C();
  v31 = v49;
  v49(v7, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v46 | 0x8000000000000000);
  v32(v55, 0);
  v46 = "numAppLaunchesLastSixHours";
  v33 = v51;
  (v51)(v18, v30, v23);
  v55[0] = 1;
  sub_26738114C();
  v34 = v48;
  v35 = v31;
  v31(v7, 0, 1, v48);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v46 | 0x8000000000000000);
  v36(v55, 0);
  v46 = "numAppLaunchesLastOneDay";
  v37 = v54;
  v38 = v53;
  (v33)(v18, v54, v53);
  v55[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v34);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v46 | 0x8000000000000000);
  v39(v55, 0);
  v40 = v38;
  v41 = v51;
  (v51)(v18, v37, v40);
  v55[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v34);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x8000000267423AD0);
  v42(v55, 0);
  (v41)(v18, v54, v53);
  v55[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v48);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267423B00);
  return v43(v55, 0);
}

uint64_t sub_266F02D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F02DAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F02E10()
{
  result = qword_2800EF6E0;
  if (!qword_2800EF6E0)
  {
    sub_266F02E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF6E0);
  }

  return result;
}

unint64_t sub_266F02E68()
{
  result = qword_2800EF6D8;
  if (!qword_2800EF6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6D8);
  }

  return result;
}

uint64_t static CAARSchemaCAARAppLevelDisambiguationHistory.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v65 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v73 = *MEMORY[0x277D3E538];
  v9 = *(v3 + 104);
  v71 = v2;
  v9(v5);
  v69 = v9;
  v75[0] = 1;
  sub_26738114C();
  v70 = sub_26738116C();
  v10 = *(v70 - 8);
  v67 = *(v10 + 56);
  v72 = v10 + 56;
  v67(v8, 0, 1, v70);
  v68 = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267423B60);
  v11(v75, 0);
  v66 = "tionsLastTwoMinutes";
  v12 = v73;
  v74 = v3 + 104;
  (v9)(v5, v73, v2);
  v75[0] = 1;
  sub_26738114C();
  v13 = v70;
  v14 = v67;
  v67(v8, 0, 1, v70);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v66 | 0x8000000000000000);
  v15(v75, 0);
  v66 = "tionsLastTenMinutes";
  v16 = v5;
  v17 = v5;
  v18 = v12;
  v19 = v71;
  v69(v17, v12, v71);
  v75[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v66 | 0x8000000000000000);
  v20(v75, 0);
  v65 = v16;
  v66 = "tionsLastOneHour";
  v69(v16, v12, v19);
  v75[0] = 1;
  sub_26738114C();
  v21 = v67;
  v67(v8, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v66 | 0x8000000000000000);
  v22(v75, 0);
  v66 = "tionsLastSixHours";
  v23 = v65;
  v24 = v69;
  v69(v65, v18, v19);
  v75[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v66 | 0x8000000000000000);
  v25(v75, 0);
  v66 = "numAppDisambiguationsLastOneDay";
  v26 = v73;
  v27 = v24;
  v24(v23, v73, v71);
  v75[0] = 1;
  sub_26738114C();
  v28 = v70;
  v21(v8, 0, 1, v70);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v66 | 0x8000000000000000);
  v29(v75, 0);
  v66 = "tionsLastSevenDays";
  v30 = v71;
  v27(v23, v26, v71);
  v75[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, v66 | 0x8000000000000000);
  v31(v75, 0);
  v66 = "tionsLastTwentyEightDays";
  v27(v23, v73, v30);
  v75[0] = 1;
  sub_26738114C();
  v32 = v67;
  v67(v8, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v66 | 0x8000000000000000);
  v33(v75, 0);
  v66 = "tionsLastInfinity";
  v34 = v73;
  v27(v23, v73, v30);
  v75[0] = 1;
  sub_26738114C();
  v35 = v70;
  v36 = v32;
  v32(v8, 0, 1, v70);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v66 | 0x8000000000000000);
  v37(v75, 0);
  v66 = "sambiguationsTwoMinutes";
  v38 = v34;
  v39 = v71;
  v40 = v69;
  v69(v23, v38, v71);
  v75[0] = 1;
  sub_26738114C();
  v36(v8, 0, 1, v35);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v66 | 0x8000000000000000);
  v41(v75, 0);
  v66 = "sambiguationsLastTenMinutes";
  v42 = v73;
  v40(v23, v73, v39);
  v75[0] = 1;
  sub_26738114C();
  v36(v8, 0, 1, v70);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, v66 | 0x8000000000000000);
  v43(v75, 0);
  v66 = "sambiguationsLastOneHour";
  v44 = v39;
  v45 = v69;
  v69(v23, v42, v39);
  v75[0] = 1;
  sub_26738114C();
  v46 = v70;
  v47 = v67;
  v67(v8, 0, 1, v70);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, v66 | 0x8000000000000000);
  v48(v75, 0);
  v66 = "sambiguationsLastSixHours";
  v49 = v73;
  v45(v23, v73, v44);
  v75[0] = 1;
  sub_26738114C();
  v47(v8, 0, 1, v46);
  v50 = v47;
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v66 | 0x8000000000000000);
  v51(v75, 0);
  v66 = "sambiguationsLastOneDay";
  v52 = v49;
  v53 = v71;
  v54 = v69;
  v69(v23, v52, v71);
  v75[0] = 1;
  sub_26738114C();
  v50(v8, 0, 1, v70);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, v66 | 0x8000000000000000);
  v55(v75, 0);
  v66 = "sambiguationsLastSevenDays";
  v56 = v73;
  v54(v23, v73, v53);
  v75[0] = 1;
  sub_26738114C();
  v57 = v70;
  v58 = v67;
  v67(v8, 0, 1, v70);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000030, v66 | 0x8000000000000000);
  v59(v75, 0);
  v66 = "tTwentyEightDays";
  v60 = v71;
  v54(v23, v56, v71);
  v75[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v57);
  v61 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, v66 | 0x8000000000000000);
  v61(v75, 0);
  v66 = "sambiguationsLastInfinity";
  v54(v23, *MEMORY[0x277D3E4E8], v60);
  v75[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v57);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v66 | 0x8000000000000000);
  v62(v75, 0);
  v54(v23, v73, v71);
  v75[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v57);
  v63 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267423E90);
  return v63(v75, 0);
}

uint64_t sub_266F03EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F03F58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F03FBC()
{
  result = qword_2800EF6F0;
  if (!qword_2800EF6F0)
  {
    sub_266F04014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF6F0);
  }

  return result;
}

unint64_t sub_266F04014()
{
  result = qword_2800EF6E8;
  if (!qword_2800EF6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6E8);
  }

  return result;
}

uint64_t static CAARSchemaCAARClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF740, 0x277D56B60);
  sub_266ECAF2C(&qword_2800EF748, &qword_2800EF740, 0x277D56B60, &protocol conformance descriptor for CAARSchemaCAARClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800EF750, 0x277D56BA8);
  sub_266ECAF2C(&qword_2800EF758, &qword_2800EF750, 0x277D56BA8, &protocol conformance descriptor for CAARSchemaCAARRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267423EF0);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800EF760, 0x277D56B70);
  sub_266ECAF2C(&qword_2800EF768, &qword_2800EF760, 0x277D56B70, &protocol conformance descriptor for CAARSchemaCAARFeaturesGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267423F10);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EF770, 0x277D56B78);
  sub_266ECAF2C(&qword_2800EF778, &qword_2800EF770, 0x277D56B78, &protocol conformance descriptor for CAARSchemaCAARModelExecuted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6578456C65646F6DLL, 0xED00006465747563);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EF780, 0x277D56C00);
  sub_266ECAF2C(&qword_2800EF788, &qword_2800EF780, 0x277D56C00, &protocol conformance descriptor for CAARSchemaCAARTieBreakersExecuted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267423F30);
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
  sub_266ECB128(&unk_2878841E0);
  return sub_2673811CC();
}

uint64_t sub_266F0471C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F047B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F04880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F048E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F04944(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF790, &qword_2800EF798, 0x277D56B50, &protocol conformance descriptor for CAARSchemaCAARClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EF7A0, &qword_2800EF798, 0x277D56B50, &protocol conformance descriptor for CAARSchemaCAARClientEvent);
  result = sub_266ECAF2C(&qword_2800EF7A8, &qword_2800EF798, 0x277D56B50, &protocol conformance descriptor for CAARSchemaCAARClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CAARSchemaCAARClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_26738113C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v38 = a1;
  v35 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v34 = *(v10 + 56);
  v34(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x644972616163, 0xE600000000000000);
  v11(v40, 0);
  v36 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v39, 0x644972616163, 0xE600000000000000);
  v14 = *(v10 + 48);
  v37 = v10 + 48;
  v33 = v14;
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884218);
    sub_26738115C();
  }

  (v13)(v39, 0);
  v12(v40, 0);
  (*(v30 + 104))(v31, *MEMORY[0x277D3E530], v32);
  v40[0] = 1;
  sub_26738114C();
  v16 = v34;
  v34(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  v17(v40, 0);
  sub_26738120C();
  v16(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v18(v40, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v39, 0x4974736575716572, 0xE900000000000064);
  if (!v33(v21, 1, v9))
  {
    sub_266ECB128(&unk_287884248);
    sub_26738115C();
  }

  (v20)(v39, 0);
  v19(v40, 0);
  sub_26738120C();
  v22 = v34;
  v34(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v23(v40, 0);
  sub_26738120C();
  v22(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v24(v40, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v39, 0x6575716552627573, 0xEC00000064497473);
  if (!v33(v27, 1, v9))
  {
    sub_266ECB128(&unk_287884278);
    sub_26738115C();
  }

  (v26)(v39, 0);
  return v25(v40, 0);
}

uint64_t sub_266F05108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0516C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARDomainProtectionLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267423FD0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267424000, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267424030, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267424060, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F05494(uint64_t a1)
{
  v2 = sub_266F05598(&qword_2800EF7B8, &protocol conformance descriptor for CAARSchemaCAARDomainProtectionLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F054FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F05598(&qword_2800EF7B8, &protocol conformance descriptor for CAARSchemaCAARDomainProtectionLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F05598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAARSchemaCAARDomainProtectionLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAARSchemaCAARFeaturesGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF728, 0x277D56B00);
  sub_266ECAF2C(&qword_2800EF720, &qword_2800EF728, 0x277D56B00, &protocol conformance descriptor for CAARSchemaCAARActionFeatureSet);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674240C0);
  return v5(v7, 0);
}

uint64_t sub_266F057D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F05838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARModelExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7465737361, 0xE500000000000000);
  v9(v16, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v15);
  v16[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x776F646168537369, 0xEB00000000676F4CLL);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800EF7D0, 0x277D56B88);
  sub_266ECAF2C(&qword_2800EF7D8, &qword_2800EF7D0, 0x277D56B88, &protocol conformance descriptor for CAARSchemaCAARModelOutput);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x74754F6C65646F6DLL, 0xEB00000000747570);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800EF7E0, 0x277D56C10);
  sub_266ECAF2C(&qword_2800EF7E8, &qword_2800EF7E0, 0x277D56C10, &protocol conformance descriptor for CAARSchemaCAARTrialEnrollment);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x726E456C61697274, 0xEF746E656D6C6C6FLL);
  return v12(v16, 0);
}

uint64_t sub_266F05DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F05E24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARModelOutput.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF738, 0x277D56B20);
  sub_266ECAF2C(&qword_2800EF730, &qword_2800EF738, 0x277D56B20, &protocol conformance descriptor for CAARSchemaCAARActionModelOutput);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267424140);
  return v5(v7, 0);
}

uint64_t sub_266F060C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F06124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARProactiveFeatures.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v44 = a1;
  sub_26738119C();
  LODWORD(v43) = *MEMORY[0x277D3E4E8];
  v9 = *(v3 + 104);
  v9(v5);
  v37 = v9;
  v45[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v42 = *(v11 + 56);
  v40 = v11 + 56;
  v42(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267424190);
  v12(v45, 0);
  v36 = "isAppInTopOneRelevance";
  v13 = v43;
  v41 = v2;
  (v9)(v5, v43, v2);
  v45[0] = 1;
  sub_26738114C();
  v14 = v42;
  v42(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v36 | 0x8000000000000000);
  v15(v45, 0);
  v36 = "isAppInTopFiveRelevance";
  v16 = v2;
  v17 = v37;
  (v37)(v5, v13, v16);
  v39 = v3 + 104;
  v45[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v36 | 0x8000000000000000);
  v18(v45, 0);
  v36 = "isAppInTopTenRelevance";
  v19 = v43;
  v17(v5, v43, v41);
  v20 = v17;
  v45[0] = 1;
  sub_26738114C();
  v38 = v10;
  v21 = v42;
  v42(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v36 | 0x8000000000000000);
  v22(v45, 0);
  v36 = "isIntentInTopOneRelevance";
  v23 = v41;
  v20(v5, v19, v41);
  v45[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v36 | 0x8000000000000000);
  v24(v45, 0);
  v36 = "isIntentInTopFiveRelevance";
  v25 = v23;
  v26 = v20;
  v20(v5, v43, v25);
  v45[0] = 1;
  sub_26738114C();
  v27 = v38;
  v28 = v42;
  v42(v8, 0, 1, v38);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v36 | 0x8000000000000000);
  v29(v45, 0);
  v43 = "isIntentInTopTenRelevance";
  v30 = *MEMORY[0x277D3E518];
  v31 = v41;
  v26(v5, v30, v41);
  v45[0] = 1;
  sub_26738114C();
  v28(v8, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v43 | 0x8000000000000000);
  v32(v45, 0);
  v26(v5, v30, v31);
  v45[0] = 1;
  sub_26738114C();
  v28(v8, 0, 1, v38);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267424270);
  return v33(v45, 0);
}

uint64_t sub_266F069E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F06A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F06AA8()
{
  result = qword_2800EF710;
  if (!qword_2800EF710)
  {
    sub_266F06B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF710);
  }

  return result;
}

unint64_t sub_266F06B00()
{
  result = qword_2800EF708;
  if (!qword_2800EF708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF708);
  }

  return result;
}

uint64_t static CAARSchemaCAARRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF7F0, 0x277D56BC0);
  sub_266ECAF2C(&qword_2800EF7F8, &qword_2800EF7F0, 0x277D56BC0, &protocol conformance descriptor for CAARSchemaCAARRequestReceived);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EF800, 0x277D56BD8);
  sub_266ECAF2C(&qword_2800EF808, &qword_2800EF800, 0x277D56BD8, &protocol conformance descriptor for CAARSchemaCAARResponseGenerated);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EF810, 0x277D56BB0);
  sub_266ECAF2C(&qword_2800EF818, &qword_2800EF810, 0x277D56BB0, &protocol conformance descriptor for CAARSchemaCAARRequestFailed);
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

uint64_t sub_266F07064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F070C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F073BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F07420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F07484()
{
  result = qword_2800EF818;
  if (!qword_2800EF818)
  {
    sub_266F074DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF818);
  }

  return result;
}

unint64_t sub_266F074DC()
{
  result = qword_2800EF810;
  if (!qword_2800EF810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF810);
  }

  return result;
}

uint64_t static CAARSchemaCAARRequestReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F07770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F077D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F07838()
{
  result = qword_2800EF7F8;
  if (!qword_2800EF7F8)
  {
    sub_266F07890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF7F8);
  }

  return result;
}

unint64_t sub_266F07890()
{
  result = qword_2800EF7F0;
  if (!qword_2800EF7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF7F0);
  }

  return result;
}

uint64_t static CAARSchemaCAARResponseGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267424350);
  return v5(v7, 0);
}

uint64_t sub_266F07AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F07B38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARScoreBoost.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v17 = v1;
  v18 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267423200);
  v10(v19, 0);
  v11 = *MEMORY[0x277D3E518];
  v12 = v17;
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v11, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x74736F6F62, 0xE500000000000000);
  v14(v19, 0);
  v13(v4, *MEMORY[0x277D3E530], v12);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  return v15(v19, 0);
}

uint64_t sub_266F07FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F08030(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTieBreaker.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v26 = a1;
  v1 = sub_26738113C();
  v23 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v9;
  v9(v4, v8, v1);
  v28[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v27 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B61657242656974, 0xEE00656D614E7265);
  v12(v28, 0);
  v21 = "iri.caar.CAARTieBreaker";
  sub_266ECB294(0, &qword_2800EF828, 0x277D56BE8);
  sub_266ECAF2C(&qword_2800EF820, &qword_2800EF828, 0x277D56BE8, &protocol conformance descriptor for CAARSchemaCAARScoreBoost);
  sub_26738122C();
  v22 = v10;
  v11(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v21 | 0x8000000000000000);
  v13(v28, 0);
  v26 = "actionCandidateBoosts";
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v23;
  v16 = v25;
  v25(v4, v14, v23);
  v28[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v26 | 0x8000000000000000);
  v17(v28, 0);
  v16(v4, v14, v15);
  v28[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v22);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267424410);
  return v18(v28, 0);
}

uint64_t sub_266F085C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0862C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTieBreakersExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF838, 0x277D56BF8);
  sub_266ECAF2C(&qword_2800EF830, &qword_2800EF838, 0x277D56BF8, &protocol conformance descriptor for CAARSchemaCAARTieBreaker);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B61657262656974, 0xEB00000000737265);
  return v5(v7, 0);
}

uint64_t sub_266F088AC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF838, 0x277D56BF8);
  sub_266ECAF2C(&qword_2800EF830, &qword_2800EF838, 0x277D56BF8, &protocol conformance descriptor for CAARSchemaCAARTieBreaker);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B61657262656974, 0xEB00000000737265);
  return v5(v7, 0);
}

uint64_t sub_266F08A50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F08AB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTrialEnrollment.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v25 = *(v1 + 104);
  v26 = v1 + 104;
  v25(v3, v7, v0);
  v27[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v23 = v8;
  v24 = v9 + 56;
  v10(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D697265707865, 0xEC0000006449746ELL);
  v11(v27, 0);
  v12 = v7;
  v13 = v7;
  v21 = v7;
  v22 = v0;
  v14 = v25;
  v25(v3, v12, v0);
  v27[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D7461657274, 0xEB00000000644974);
  v15(v27, 0);
  v14(v3, v13, v0);
  v27[0] = 1;
  sub_26738114C();
  v16 = v23;
  v10(v6, 0, 1, v23);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v17(v27, 0);
  v14(v3, v21, v22);
  v27[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x4974756F6C6C6F72, 0xE900000000000064);
  return v18(v27, 0);
}

uint64_t sub_266F09010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F09074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F090D8()
{
  result = qword_2800EF7E8;
  if (!qword_2800EF7E8)
  {
    sub_266F09130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF7E8);
  }

  return result;
}

unint64_t sub_266F09130()
{
  result = qword_2800EF7E0;
  if (!qword_2800EF7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF7E0);
  }

  return result;
}

uint64_t static CAMSchemaCAMAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x80000002674244D0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674244F0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267424520, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267424540, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x8000000267424560, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267424590, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x80000002674245C0, v28);
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_2878842A8);
  return sub_26738112C();
}

uint64_t sub_266F09568(uint64_t a1)
{
  v2 = sub_266F0966C(&qword_2800EF848, &protocol conformance descriptor for CAMSchemaCAMAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F095D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0966C(&qword_2800EF848, &protocol conformance descriptor for CAMSchemaCAMAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0966C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAMSchemaCAMAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAMSchemaCAMAggregateFeatureValue.makeTypeManifestAndEnsureFields(in:)()
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
  v18 = *MEMORY[0x277D3E518];
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
  sub_266EC637C(v5, 1851876717, 0xE400000000000000);
  v10(v19, 0);
  v11 = v17;
  (v6)(v2, v18, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x65636E6169726176, 0xE800000000000000);
  v12(v19, 0);
  (v16)(v2, *MEMORY[0x277D3E538], v11);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x7265746E496D756ELL, 0xEF736E6F69746361);
  v13(v19, 0);
  sub_266ECB128(&unk_2878842D8);
  return sub_2673811CC();
}

uint64_t sub_266F09AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F09B14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F09B78()
{
  result = qword_2800EF850;
  if (!qword_2800EF850)
  {
    sub_266F09BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF850);
  }

  return result;
}

unint64_t sub_266F09BD0()
{
  result = qword_2800EF858;
  if (!qword_2800EF858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF858);
  }

  return result;
}

uint64_t static CAMSchemaCAMAutoSendFeaturesGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v42 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF858, 0x277D56C20);
  v7 = sub_266ECAF2C(&qword_2800EF850, &qword_2800EF858, 0x277D56C20, &protocol conformance descriptor for CAMSchemaCAMAggregateFeatureValue);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v43 = v8;
  v10(v6, 0, 1, v8);
  v12 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x5372734172657375, 0xEC00000065726F63);
  v13(v44, 0);
  sub_26738120C();
  v10(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267424660);
  v14(v44, 0);
  v37 = "userAsrScoreWhenCompleted";
  v15 = v7;
  sub_26738120C();
  v16 = v43;
  v10(v6, 0, 1, v43);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v37 | 0x8000000000000000);
  v17(v44, 0);
  v37 = "userAsrScoreWhenRejected";
  sub_26738120C();
  v10(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v37 | 0x8000000000000000);
  v18(v44, 0);
  v37 = "userAsrScoreTargetContact";
  sub_26738120C();
  v39 = v10;
  v10(v6, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, v37 | 0x8000000000000000);
  v19(v44, 0);
  v40 = v15;
  sub_26738120C();
  v10(v6, 0, 1, v16);
  v41 = v12;
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x656A655272657375, 0xEE00657461527463);
  v20(v44, 0);
  sub_26738120C();
  v21 = v43;
  v22 = v39;
  v39(v6, 0, 1, v43);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x80000002674246E0);
  v23(v44, 0);
  v38 = a1;
  sub_26738120C();
  v22(v6, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267424700);
  v24(v44, 0);
  v37 = "userRejectRateTargetApp";
  sub_26738120C();
  v25 = v43;
  v22(v6, 0, 1, v43);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, v37 | 0x8000000000000000);
  v26(v44, 0);
  sub_26738120C();
  v22(v6, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x8000000267424740);
  v27(v44, 0);
  sub_26738120C();
  v28 = v43;
  v22(v6, 0, 1, v43);
  v29 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267424770);
  v29(v44, 0);
  sub_26738120C();
  v22(v6, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002ALL, 0x8000000267424790);
  v30(v44, 0);
  v37 = "hInCharactersTargetContact";
  sub_26738120C();
  v31 = v43;
  v22(v6, 0, 1, v43);
  v32 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, v37 | 0x8000000000000000);
  v32(v44, 0);
  v37 = "hInCharactersTargetApp";
  sub_26738120C();
  v22(v6, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002ALL, v37 | 0x8000000000000000);
  v33(v44, 0);
  sub_26738120C();
  v22(v6, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000029, 0x8000000267424820);
  return v34(v44, 0);
}

uint64_t sub_266F0A64C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0A6B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EF870, 0x277D56C48);
  sub_266ECAF2C(&qword_2800EF878, &qword_2800EF870, 0x277D56C48, &protocol conformance descriptor for CAMSchemaCAMClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800EF880, 0x277D56C70);
  sub_266ECAF2C(&qword_2800EF888, &qword_2800EF880, 0x277D56C70, &protocol conformance descriptor for CAMSchemaCAMRequestReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x5274736575716572, 0xEF64657669656365);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800EF890, 0x277D56C50);
  sub_266ECAF2C(&qword_2800EF898, &qword_2800EF890, 0x277D56C50, &protocol conformance descriptor for CAMSchemaCAMModelExecuted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6578456C65646F6DLL, 0xED00006465747563);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EF8A0, 0x277D56C90);
  sub_266ECAF2C(&qword_2800EF8A8, &qword_2800EF8A0, 0x277D56C90, &protocol conformance descriptor for CAMSchemaCAMResponseGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267424880);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EF868, 0x277D56C28);
  sub_266ECAF2C(&qword_2800EF860, &qword_2800EF868, 0x277D56C28, &protocol conformance descriptor for CAMSchemaCAMAutoSendFeaturesGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674248A0);
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
  sub_266ECB128(&unk_287884308);
  return sub_2673811CC();
}

uint64_t sub_266F0AE10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F0AEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F0AF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0AFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0B038(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF8B0, &qword_2800EF8B8, 0x277D56C30, &protocol conformance descriptor for CAMSchemaCAMClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EF8C0, &qword_2800EF8B8, 0x277D56C30, &protocol conformance descriptor for CAMSchemaCAMClientEvent);
  result = sub_266ECAF2C(&qword_2800EF8C8, &qword_2800EF8B8, 0x277D56C30, &protocol conformance descriptor for CAMSchemaCAMClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CAMSchemaCAMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_26738113C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v38 = a1;
  v36 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v35 = *(v10 + 56);
  v35(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496D6163, 0xE500000000000000);
  v11(v41, 0);
  v39 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v40, 0x64496D6163, 0xE500000000000000);
  v14 = *(v10 + 48);
  v37 = v10 + 48;
  v34 = v14;
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884340);
    sub_26738115C();
  }

  (v13)(v40, 0);
  v12(v41, 0);
  (*(v31 + 104))(v32, *MEMORY[0x277D3E530], v33);
  v41[0] = 1;
  sub_26738114C();
  v16 = v35;
  v35(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  v17(v41, 0);
  type metadata accessor for CAMSchemaCAMFeature(0);
  sub_266F0B960();
  sub_26738120C();
  v16(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x65727574616566, 0xE700000000000000);
  v18(v41, 0);
  sub_26738120C();
  v16(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v19(v41, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v40, 0x4974736575716572, 0xE900000000000064);
  if (!v34(v22, 1, v9))
  {
    sub_266ECB128(&unk_287884370);
    sub_26738115C();
  }

  (v21)(v40, 0);
  v20(v41, 0);
  sub_26738120C();
  v23 = v35;
  v35(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v24(v41, 0);
  sub_26738120C();
  v23(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v25(v41, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v40, 0x6575716552627573, 0xEC00000064497473);
  if (!v34(v28, 1, v9))
  {
    sub_266ECB128(&unk_2878843A0);
    sub_26738115C();
  }

  (v27)(v40, 0);
  v26(v41, 0);
  sub_266ECB128(&unk_2878843D0);
  return sub_2673811CC();
}

uint64_t sub_266F0B89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0B900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0B960()
{
  result = qword_2800EF8D8;
  if (!qword_2800EF8D8)
  {
    type metadata accessor for CAMSchemaCAMFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF8D8);
  }

  return result;
}

uint64_t static CAMSchemaCAMFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267424920, isUniquelyReferenced_nonNull_native);
  *v3 = v25;

  v1(v30, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267424940, v8);
  *v7 = v26;

  v5(v30, 0);
  v9 = sub_266ECB128(&unk_287884400);
  v11 = v10;
  v12 = sub_2673810FC();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD4CC(v9, v11, 1, v15);
  *v14 = v27;
  v12(v30, 0);
  v16 = sub_26738111C();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267424960, v19);
  *v18 = v28;

  v16(v30, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267424980, v23);
  *v22 = v29;

  return v20(v30, 0);
}

uint64_t sub_266F0BD00(uint64_t a1)
{
  v2 = sub_266F0BE04(&qword_2800EF8E0, &protocol conformance descriptor for CAMSchemaCAMFeature);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0BD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0BE04(&qword_2800EF8E0, &protocol conformance descriptor for CAMSchemaCAMFeature);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0BE04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAMSchemaCAMFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAMSchemaCAMModelExecuted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_26738113C();
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8E8, 0x277D56C60);
  sub_266ECAF2C(&qword_2800EF8F0, &qword_2800EF8E8, 0x277D56C60, &protocol conformance descriptor for CAMSchemaCAMModelId);
  v32 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v33 = *(v10 + 56);
  v34 = v10 + 56;
  v33(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C65646F6DLL, 0xE700000000000000);
  v11(v37, 0);
  v30 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v36, 0x64496C65646F6DLL, 0xE700000000000000);
  v14 = v9;
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884428);
    sub_26738115C();
  }

  (v13)(v36, 0);
  v12(v37, 0);
  v16 = *(v31 + 104);
  v17 = v35;
  v16(v5, *MEMORY[0x277D3E538], v35);
  v37[0] = 1;
  sub_26738114C();
  v29 = v14;
  v18 = v33;
  v33(v8, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974636964657270, 0xEA00000000006E6FLL);
  v19(v37, 0);
  v20 = *MEMORY[0x277D3E500];
  v16(v5, v20, v17);
  v37[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974636964657270, 0xEF65726F63536E6FLL);
  v21(v37, 0);
  v31 = "iri.cam.CAMModelExecuted";
  v16(v5, v20, v17);
  v37[0] = 1;
  sub_26738114C();
  v22 = v29;
  v23 = v33;
  v33(v8, 0, 1, v29);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v31 | 0x8000000000000000);
  v24(v37, 0);
  v16(v5, *MEMORY[0x277D3E4E8], v35);
  v37[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x776F646168537369, 0xEB00000000676F4CLL);
  v25(v37, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738120C();
  v23(v8, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465737361, 0xE500000000000000);
  v26(v37, 0);
  sub_266ECB128(&unk_287884450);
  return sub_2673811CC();
}

uint64_t sub_266F0C580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0C5E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMModelId.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x6D614E6C65646F6DLL, 0xE900000000000065);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v11(v13, 0);
  sub_266ECB128(&unk_287884480);
  return sub_2673811CC();
}

uint64_t sub_266F0C9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0CA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMRequestReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x65727574616566, 0xE700000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_2878844B0);
  return sub_2673811CC();
}

uint64_t sub_266F0CD44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0CDA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0CE0C()
{
  result = qword_2800EF888;
  if (!qword_2800EF888)
  {
    sub_266F0CE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF888);
  }

  return result;
}

unint64_t sub_266F0CE64()
{
  result = qword_2800EF880;
  if (!qword_2800EF880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF880);
  }

  return result;
}

uint64_t static CAMSchemaCAMResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CAMSchemaCAMAction(0);
  sub_266F0D3C8(&qword_2800EF840, type metadata accessor for CAMSchemaCAMAction, &protocol conformance descriptor for CAMSchemaCAMAction);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F69746361, 0xE600000000000000);
  v9(v21, 0);
  v18 = "iri.cam.CAMResponse";
  v10 = *MEMORY[0x277D3E538];
  v11 = v1 + 104;
  v12 = *(v1 + 104);
  v19 = v11;
  v13 = v20;
  v12(v3, v10, v20);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, v18 | 0x8000000000000000);
  v14(v21, 0);
  v12(v3, *MEMORY[0x277D3E530], v13);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x726563726F666E65, 0xE800000000000000);
  v15(v21, 0);
  sub_266ECB128(&unk_2878844E0);
  return sub_2673811CC();
}

uint64_t sub_266F0D2BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0D320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0D3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F0D410()
{
  result = qword_2800EF910;
  if (!qword_2800EF910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF910);
  }

  return result;
}

uint64_t static CAMSchemaCAMResponseGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF910, 0x277D56C80);
  sub_266ECAF2C(&qword_2800EF908, &qword_2800EF910, 0x277D56C80, &protocol conformance descriptor for CAMSchemaCAMResponse);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65736E6F70736572, 0xE800000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287884510);
  return sub_2673811CC();
}

uint64_t sub_266F0D65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0D6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAAdvertisementData.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v40 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v41 = *(v3 + 104);
  v41(v5, v9, v2);
  v10 = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v38 = sub_26738116C();
  v11 = *(v38 - 8);
  v35[0] = *(v11 + 56);
  v12 = v11 + 56;
  (v35[0])(v8, 0, 1, v38);
  v37 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7361486F69647561, 0xE900000000000068);
  v13(v42, 0);
  v14 = v40;
  v41(v5, v9, v40);
  v42[0] = 1;
  sub_26738114C();
  v39 = v12;
  v15 = v35[0];
  (v35[0])(v8, 0, 1, v38);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7373656E646F6F67, 0xED000065726F6353);
  v16(v42, 0);
  v41(v5, v9, v14);
  v42[0] = 1;
  sub_26738114C();
  v17 = v38;
  v15(v8, 0, 1, v38);
  v18 = v15;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEF65726F63536563);
  v19(v42, 0);
  v36 = v9;
  v20 = v41;
  v41(v5, v9, v40);
  v42[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C43656369766564, 0xEB00000000737361);
  v21(v42, 0);
  v22 = v40;
  v20(v5, v9, v40);
  v23 = v10;
  v42[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v24 = v18;
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x7247656369766564, 0xEB0000000070756FLL);
  v25(v42, 0);
  v35[1] = v23;
  v41(v5, v36, v22);
  v42[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x54746375646F7270, 0xEB00000000657079);
  v26(v42, 0);
  v27 = v41;
  v41(v5, v36, v22);
  v42[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B61657242656974, 0xEA00000000007265);
  v28(v42, 0);
  v29 = *MEMORY[0x277D3E4E8];
  v30 = v40;
  v27(v5, v29, v40);
  v42[0] = 1;
  sub_26738114C();
  v31 = v38;
  v24(v8, 0, 1, v38);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267424B00);
  v32(v42, 0);
  v41(v5, v29, v30);
  v42[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x666C65537369, 0xE600000000000000);
  return v33(v42, 0);
}

uint64_t sub_266F0E004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0E068(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0E0CC()
{
  result = qword_2800EF918;
  if (!qword_2800EF918)
  {
    sub_266F0E124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF918);
  }

  return result;
}

unint64_t sub_266F0E124()
{
  result = qword_2800EF920;
  if (!qword_2800EF920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF920);
  }

  return result;
}

uint64_t static CDASchemaCDAClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF928, 0x277D56CA8);
  sub_266ECAF2C(&qword_2800EF930, &qword_2800EF928, 0x277D56CA8, &protocol conformance descriptor for CDASchemaCDAClientEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v31 = *(v7 - 8);
  v8 = *(v31 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v36, 0);
  sub_266ECB294(0, &qword_2800EF938, 0x277D56D00);
  sub_266ECAF2C(&qword_2800EF940, &qword_2800EF938, 0x277D56D00, &protocol conformance descriptor for CDASchemaCDAElectionDecisionMade);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267424B50);
  v10(v36, 0);
  sub_266ECB294(0, &qword_2800EF948, 0x277D56CB0);
  sub_266ECAF2C(&qword_2800EF950, &qword_2800EF948, 0x277D56CB0, &protocol conformance descriptor for CDASchemaCDADebugElectionDecisionMade);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267424B70);
  v11(v36, 0);
  sub_266ECB294(0, &qword_2800EF958, 0x277D56CD8);
  sub_266ECAF2C(&qword_2800EF960, &qword_2800EF958, 0x277D56CD8, &protocol conformance descriptor for CDASchemaCDADeviceStateContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267424B90);
  v12(v36, 0);
  sub_266ECB294(0, &qword_2800EF968, 0x277D56CC0);
  sub_266ECAF2C(&qword_2800EF970, &qword_2800EF968, 0x277D56CC0, &protocol conformance descriptor for CDASchemaCDADeviceAdvertisingStartContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267424BB0);
  v13(v36, 0);
  sub_266ECB294(0, &qword_2800EF978, 0x277D56CB8);
  sub_266ECAF2C(&qword_2800EF980, &qword_2800EF978, 0x277D56CB8, &protocol conformance descriptor for CDASchemaCDADeviceAdvertisingEndContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267424BD0);
  v14(v36, 0);
  sub_266ECB294(0, &qword_2800EF988, 0x277D56D08);
  sub_266ECAF2C(&qword_2800EF990, &qword_2800EF988, 0x277D56D08, &protocol conformance descriptor for CDASchemaCDAElectionTimerEnded);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267424BF0);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800EF998, 0x277D56D20);
  sub_266ECAF2C(&qword_2800EF9A0, &qword_2800EF998, 0x277D56D20, &protocol conformance descriptor for CDASchemaCDAUserFeedbackCompleted);
  v30[1] = a1;
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267424C10);
  v16(v36, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v35, 0xD000000000000015, 0x8000000267424C10);
  if (!(*(v31 + 48))(v19, 1, v7))
  {
    sub_266ECB128(&unk_287884540);
    sub_26738115C();
  }

  (v18)(v35, 0);
  v17(v36, 0);
  sub_266ECB294(0, &qword_2800EF9A8, 0x277D56D30);
  sub_266ECAF2C(&qword_2800EF9B0, &qword_2800EF9A8, 0x277D56D30, &protocol conformance descriptor for CDASchemaCDAUserFeedbackParticipantCollectionReported);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000029, 0x8000000267424C30);
  v20(v36, 0);
  v21 = v32;
  sub_26738117C();
  v22 = sub_2673811BC();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_266ECAD54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_266ECAD54((v27 > 1), v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  (*(v33 + 32))(v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v21, v34);
  v22(v36, 0);
  sub_266ECB128(&unk_287884568);
  return sub_2673811CC();
}

uint64_t sub_266F0EC34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F0ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F0ED98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0EDFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0EE5C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF9B8, &qword_2800EF9C0, 0x277D56CA0, &protocol conformance descriptor for CDASchemaCDAClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EF9C8, &qword_2800EF9C0, 0x277D56CA0, &protocol conformance descriptor for CDASchemaCDAClientEvent);
  result = sub_266ECAF2C(&qword_2800EF9D0, &qword_2800EF9C0, 0x277D56CA0, &protocol conformance descriptor for CDASchemaCDAClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CDASchemaCDAClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449616463, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449616463, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878845A0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F0F1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0F258(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADataCollectionGroup.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267424CC0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267424CE0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267424D00, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267424D20, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267424D40, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F0F5F4(uint64_t a1)
{
  v2 = sub_266F0F6F8(&qword_2800EF9E8, &protocol conformance descriptor for CDASchemaCDADataCollectionGroup);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0F65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0F6F8(&qword_2800EF9E8, &protocol conformance descriptor for CDASchemaCDADataCollectionGroup);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0F6F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADataCollectionGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADebugElectionDecisionMade.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v1 = sub_26738113C();
  v17 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v16 = v2 + 104;
  v18 = v9;
  v9(v4, v8, v1);
  v20[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x8000000267424DA0);
  v12(v20, 0);
  sub_266ECB294(0, &qword_2800EF920, 0x277D56C98);
  sub_266ECAF2C(&qword_2800EF918, &qword_2800EF920, 0x277D56C98, &protocol conformance descriptor for CDASchemaCDAAdvertisementData);
  sub_26738122C();
  v11(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267424DC0);
  v13(v20, 0);
  v18(v4, *MEMORY[0x277D3E538], v17);
  v20[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7247656369766564, 0xEB0000000070756FLL);
  v14(v20, 0);
  sub_266ECB128(&unk_2878845D0);
  return sub_2673811CC();
}

uint64_t sub_266F0FB60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0FBC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267424E10, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x5349434544414443, 0xEF4E49575F4E4F49, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x8000000267424E30, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F0FE88(uint64_t a1)
{
  v2 = sub_266F0FF8C(&qword_2800EF9F8, &protocol conformance descriptor for CDASchemaCDADecision);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0FEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0FF8C(&qword_2800EF9F8, &protocol conformance descriptor for CDASchemaCDADecision);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0FF8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceAdvertisingEndContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFA00, 0x277D56CE8);
  sub_266ECAF2C(&qword_2800EFA08, &qword_2800EFA00, 0x277D56CE8, &protocol conformance descriptor for CDASchemaCDAElectionAdvertisingEndStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFA10, 0x277D56CE0);
  sub_266ECAF2C(&qword_2800EFA18, &qword_2800EFA10, 0x277D56CE0, &protocol conformance descriptor for CDASchemaCDAElectionAdvertisingEndEnded);
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
  return v10(v22, 0);
}

uint64_t sub_266F1041C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F10480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADeviceAdvertisingStartContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFA20, 0x277D56CF8);
  sub_266ECAF2C(&qword_2800EFA28, &qword_2800EFA20, 0x277D56CF8, &protocol conformance descriptor for CDASchemaCDAElectionAdvertisingStartStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFA30, 0x277D56CF0);
  sub_266ECAF2C(&qword_2800EFA38, &qword_2800EFA30, 0x277D56CF0, &protocol conformance descriptor for CDASchemaCDAElectionAdvertisingStartEnded);
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
  return v10(v22, 0);
}

uint64_t sub_266F10970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F109D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADeviceClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267424F00, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267424F20, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267424F40, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x8000000267424F60, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267424F80, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267424FA0, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267424FC0, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x8000000267424FE0, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267425000, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267425020, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267425040, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x8000000267425060, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267425080, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_266F110F0(uint64_t a1)
{
  v2 = sub_266F111F4(&qword_2800EFA48, &protocol conformance descriptor for CDASchemaCDADeviceClass);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F11158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F111F4(&qword_2800EFA48, &protocol conformance descriptor for CDASchemaCDADeviceClass);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F111F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADeviceClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateActivityEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11684(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F113F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11684(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F11578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F115DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F11684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F116CC()
{
  result = qword_2800EFA60;
  if (!qword_2800EFA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA60);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateActivityStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11AC8(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  v6(v9, 0);
  type metadata accessor for CDASchemaCDATrigger(0);
  sub_266F11AC8(&qword_2800EFA68, type metadata accessor for CDASchemaCDATrigger, &protocol conformance descriptor for CDASchemaCDATrigger);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_266F119BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F11A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F11AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F11B10()
{
  result = qword_2800EFA78;
  if (!qword_2800EFA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA78);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFA78, 0x277D56CD0);
  sub_266ECAF2C(&qword_2800EFA70, &qword_2800EFA78, 0x277D56CD0, &protocol conformance descriptor for CDASchemaCDADeviceStateActivityStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFA60, 0x277D56CC8);
  sub_266ECAF2C(&qword_2800EFA58, &qword_2800EFA60, 0x277D56CC8, &protocol conformance descriptor for CDASchemaCDADeviceStateActivityEnded);
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
  return v10(v22, 0);
}

uint64_t sub_266F11FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1200C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAElectionAdvertisingEndEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F124FC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1226C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F124FC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F123F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F124FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F12544()
{
  result = qword_2800EFA10;
  if (!qword_2800EFA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA10);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingEndStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F129DC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1274C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F129DC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F128D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F129DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F12A24()
{
  result = qword_2800EFA00;
  if (!qword_2800EFA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA00);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingStartEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F12EBC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F12C2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F12EBC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F12DB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12E14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F12EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F12F04()
{
  result = qword_2800EFA30;
  if (!qword_2800EFA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA30);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingStartStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = sub_26738113C();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F1352C(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v24 = v8 + 56;
  v9(v6, 0, 1, v7);
  v21 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574617473, 0xE500000000000000);
  v10(v26, 0);
  v20 = "ionAdvertisingStartStarted";
  v11 = *MEMORY[0x277D3E500];
  v23 = *(v1 + 104);
  v22 = v11;
  v12 = v25;
  v23(v3, v11, v25);
  v26[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, v20 | 0x8000000000000000);
  v13(v26, 0);
  v20 = "advertisementInterval";
  v14 = v12;
  v15 = v23;
  v23(v3, v11, v14);
  v26[0] = 1;
  sub_26738114C();
  v16 = v21;
  v21(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, v20 | 0x8000000000000000);
  v17(v26, 0);
  v15(v3, v22, v25);
  v26[0] = 1;
  sub_26738114C();
  v16(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267425290);
  return v18(v26, 0);
}

uint64_t sub_266F13420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F13484(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1352C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F13574()
{
  result = qword_2800EFA20;
  if (!qword_2800EFA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA20);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionDecisionMade.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v37 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v5 + 104);
  v38 = v5 + 104;
  v39 = v12;
  v12(v7, v11, v4);
  v41[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v32[1] = v16;
  v17 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F6973726576, 0xE700000000000000);
  v18(v41, 0);
  type metadata accessor for CDASchemaCDADecision(0);
  sub_266F13E9C();
  v40 = a1;
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697369636564, 0xE800000000000000);
  v19(v41, 0);
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674252E0);
  v20(v41, 0);
  sub_266ECB294(0, &qword_2800EFA80, 0x277D56D10);
  sub_266ECAF2C(&qword_2800EFA88, &qword_2800EFA80, 0x277D56D10, &protocol conformance descriptor for CDASchemaCDAParticipant);
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6976654473696874, 0xEA00000000006563);
  v21(v41, 0);
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v34 = v17;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x44676E696E6E6977, 0xED00006563697665);
  v22(v41, 0);
  sub_26738122C();
  v35 = v15;
  v15(v10, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267425300);
  v23(v41, 0);
  v33 = "heardParticipants";
  v25 = v36;
  v24 = v37;
  v26 = v39;
  v39(v36, *MEMORY[0x277D3E540], v37);
  v41[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v33 | 0x8000000000000000);
  v27(v41, 0);
  v26(v25, *MEMORY[0x277D3E538], v24);
  v41[0] = 1;
  sub_26738114C();
  v28 = v35;
  v35(v10, 0, 1, v13);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267425340);
  v29(v41, 0);
  sub_266ECB294(0, &qword_2800EFA90, 0x277D56D18);
  sub_266ECAF2C(&qword_2800EFA98, &qword_2800EFA90, 0x277D56D18, &protocol conformance descriptor for CDASchemaCDAScoreBoosters);
  sub_26738120C();
  v28(v10, 0, 1, v13);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267425360);
  return v30(v41, 0);
}

uint64_t sub_266F13DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F13E3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F13E9C()
{
  result = qword_2800EF9F0;
  if (!qword_2800EF9F0)
  {
    type metadata accessor for CDASchemaCDADecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF9F0);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionTimerEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F14384(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F140F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F14384(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState, &protocol conformance descriptor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F14278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F142DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F14384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F143CC()
{
  result = qword_2800EF988;
  if (!qword_2800EF988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF988);
  }

  return result;
}

uint64_t static CDASchemaCDAParticipant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v18 = sub_26738113C();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = *MEMORY[0x277D3E538];
  v16 = *(v1 + 104);
  v16(v3);
  v20[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7373656E646F6F67, 0xED000065726F6353);
  v9(v20, 0);
  type metadata accessor for CDASchemaCDADeviceClass(0);
  sub_266F14A28();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C43656369766564, 0xEB00000000737361);
  v10(v20, 0);
  (v16)(v3, v17, v18);
  v20[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x54746375646F7270, 0xEB00000000657079);
  v11(v20, 0);
  v18 = "iri.cda.CDAParticipant";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = v8;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, v18 | 0x8000000000000000);
  v13(v20, 0);
  sub_26738120C();
  v12(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267425400);
  return v14(v20, 0);
}

uint64_t sub_266F14964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F149C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F14A28()
{
  result = qword_2800EFA40;
  if (!qword_2800EFA40)
  {
    type metadata accessor for CDASchemaCDADeviceClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFA40);
  }

  return result;
}

uint64_t static CDASchemaCDAScoreBoosters.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[2] = a1;
  v3 = sub_26738113C();
  v47 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v41 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v48 = *(v4 + 104);
  v45 = v4 + 104;
  v46 = v11;
  v48(v6, v11, v3);
  v49[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v44 = v12;
  v13(v9, 0, 1, v12);
  v14 = v13;
  v41[1] = v10;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F42656369766564, 0xEB0000000074736FLL);
  v15(v49, 0);
  v41[0] = "iri.cda.CDAScoreBoosters";
  v16 = v47;
  v48(v6, v11, v47);
  v49[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v41[0] | 0x8000000000000000);
  v17(v49, 0);
  v41[0] = "recentUnlockBoost";
  v42 = v6;
  v18 = v46;
  v19 = v48;
  v48(v6, v46, v16);
  v49[0] = 1;
  sub_26738114C();
  v20 = v44;
  v14(v9, 0, 1, v44);
  v43 = v14;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v41[0] | 0x8000000000000000);
  v21(v49, 0);
  v41[0] = "recentRaiseToWakeBoost";
  v22 = v42;
  v23 = v18;
  v24 = v47;
  v19(v42, v23, v47);
  v49[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v41[0] | 0x8000000000000000);
  v25(v49, 0);
  v41[0] = "recentSiriRequestBoost";
  v26 = v46;
  v19(v22, v46, v24);
  v49[0] = 1;
  sub_26738114C();
  v28 = v43;
  v27 = v44;
  v43(v9, 0, 1, v44);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v41[0] | 0x8000000000000000);
  v29(v49, 0);
  v41[0] = "recentMotionBoost";
  v30 = v26;
  v32 = v47;
  v31 = v48;
  v48(v22, v30, v47);
  v49[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v27);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v41[0] | 0x8000000000000000);
  v33(v49, 0);
  v34 = v42;
  v31(v42, *MEMORY[0x277D3E4E8], v32);
  v49[0] = 1;
  v35 = v34;
  sub_26738114C();
  v36 = v43;
  v43(v9, 0, 1, v27);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0x706D7572547369, 0xE700000000000000);
  v37(v49, 0);
  type metadata accessor for CDASchemaCDATrumpReason(0);
  sub_266F154B4(&qword_2800EFAA0, type metadata accessor for CDASchemaCDATrumpReason, &protocol conformance descriptor for CDASchemaCDATrumpReason);
  sub_26738120C();
  v36(v9, 0, 1, v27);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x616552706D757274, 0xEB000000006E6F73);
  v38(v49, 0);
  v48(v35, v46, v47);
  v49[0] = 1;
  sub_26738114C();
  v36(v9, 0, 1, v27);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674254F0);
  return v39(v49, 0);
}

uint64_t sub_266F153A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1540C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F154B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F154FC()
{
  result = qword_2800EFA90;
  if (!qword_2800EFA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA90);
  }

  return result;
}

uint64_t static CDASchemaCDAState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267425540, isUniquelyReferenced_nonNull_native);
  *v3 = v78;

  v1(v97, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267425560, v8);
  *v7 = v79;

  v5(v97, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267425580, v12);
  *v11 = v80;

  v9(v97, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674255A0, v16);
  *v15 = v81;

  v13(v97, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674255C0, v20);
  *v19 = v82;

  v17(v97, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000012, 0x80000002674255E0, v24);
  *v23 = v83;

  v21(v97, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267425600, v28);
  *v27 = v84;

  v25(v97, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267425620, v32);
  *v31 = v85;

  v29(v97, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x8000000267425640, v36);
  *v35 = v86;

  v33(v97, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x8000000267425660, v40);
  *v39 = v87;

  v37(v97, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267425680, v44);
  *v43 = v88;

  v41(v97, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000014, 0x80000002674256A0, v48);
  *v47 = v89;

  v45(v97, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x80000002674256C0, v52);
  *v51 = v90;

  v49(v97, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x80000002674256E0, v56);
  *v55 = v91;

  v53(v97, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x8000000267425700, v60);
  *v59 = v92;

  v57(v97, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x8000000267425720, v64);
  *v63 = v93;

  v61(v97, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000010, 0x8000000267425740, v68);
  *v67 = v94;

  v65(v97, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x8000000267425760, v72);
  *v71 = v95;

  v69(v97, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000015, 0x8000000267425780, v76);
  *v75 = v96;

  return v73(v97, 0);
}

uint64_t sub_266F15E7C(uint64_t a1)
{
  v2 = sub_266F15F80(&qword_2800EFAA8, &protocol conformance descriptor for CDASchemaCDAState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F15EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F15F80(&qword_2800EFAA8, &protocol conformance descriptor for CDASchemaCDAState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F15F80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDAState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATemporalUtilityState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674257D0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674257F0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267425820, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267425840, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F1624C(uint64_t a1)
{
  v2 = sub_266F16350(&qword_2800EFAB8, &protocol conformance descriptor for CDASchemaCDATemporalUtilityState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F162B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16350(&qword_2800EFAB8, &protocol conformance descriptor for CDASchemaCDATemporalUtilityState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16350(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATemporalUtilityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267425890, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674258B0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674258D0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674258F0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267425910, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267425930, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267425950, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267425980, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x80000002674259A0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266F1684C(uint64_t a1)
{
  v2 = sub_266F16950(&qword_2800EFAC0, &protocol conformance descriptor for CDASchemaCDATrigger);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F168B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16950(&qword_2800EFAC0, &protocol conformance descriptor for CDASchemaCDATrigger);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16950(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATrumpReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267425A00, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267425A20, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267425A40, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267425A60, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267425A90, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267425AC0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267425AE0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267425B00, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267425B20, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266F16E4C(uint64_t a1)
{
  v2 = sub_266F16F50(&qword_2800EFAC8, &protocol conformance descriptor for CDASchemaCDATrumpReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F16EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16F50(&qword_2800EFAC8, &protocol conformance descriptor for CDASchemaCDATrumpReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16F50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATrumpReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDAUserFeedbackCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v53 = sub_26738113C();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v52 = *(v3 + 104);
  v47 = v9;
  v52(v5);
  v56[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v43 = *(v10 - 8);
  v12 = v43 + 56;
  v11 = *(v43 + 56);
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449796576727573, 0xE800000000000000);
  v13(v56, 0);
  type metadata accessor for CDASchemaCDAUserFeedbackStatus(0);
  sub_266F17A60(&qword_2800EFAD0, type metadata accessor for CDASchemaCDAUserFeedbackStatus, &protocol conformance descriptor for CDASchemaCDAUserFeedbackStatus);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267425B80);
  v14(v56, 0);
  v46 = *MEMORY[0x277D3E4E8];
  v51 = v3 + 104;
  v52(v5);
  v56[0] = 1;
  v42 = v5;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267425BA0);
  v16(v56, 0);
  v17 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v44 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v45 = v17;
  sub_26738120C();
  v50 = v11;
  v48 = v12;
  v11(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267425BC0);
  v18(v56, 0);
  v49 = v15;
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v55, 0xD00000000000001ALL, 0x8000000267425BC0);
  v21 = v10;
  if (!(*(v43 + 48))(v22, 1, v10))
  {
    sub_266ECB128(&unk_287884600);
    sub_26738115C();
  }

  (v20)(v55, 0);
  v19(v56, 0);
  v23 = v42;
  v24 = v52;
  v25 = v53;
  (v52)(v42, v47, v53);
  v56[0] = 1;
  sub_26738114C();
  v26 = v21;
  v41 = v21;
  v27 = v50;
  v50(v8, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267425BE0);
  v28(v56, 0);
  (v24)(v23, *MEMORY[0x277D3E518], v25);
  v56[0] = 1;
  sub_26738114C();
  v29 = v41;
  v27(v8, 0, 1, v41);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267425C00);
  v30(v56, 0);
  type metadata accessor for CDASchemaCDADataCollectionGroup(0);
  sub_266F17A60(&qword_2800EF9E0, type metadata accessor for CDASchemaCDADataCollectionGroup, &protocol conformance descriptor for CDASchemaCDADataCollectionGroup);
  sub_26738120C();
  v27(v8, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267425C30);
  v31(v56, 0);
  v32 = v25;
  v33 = v52;
  (v52)(v23, v47, v32);
  v56[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D697265707865, 0xEC0000006449746ELL);
  v34(v56, 0);
  (v33)(v23, v46, v53);
  v56[0] = 1;
  sub_26738114C();
  v35 = v29;
  v36 = v29;
  v37 = v50;
  v50(v8, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267425C50);
  v38(v56, 0);
  sub_26738120C();
  v37(v8, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267425C70);
  v39(v56, 0);
  sub_266ECB128(&unk_287884630);
  return sub_2673811CC();
}

uint64_t sub_266F1799C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F17A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F17A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static CDASchemaCDAUserFeedbackParticipant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = sub_26738113C();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v78 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v79 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v86 = v9 + 56;
  v80 = v10;
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6565705369726973, 0xEC00000064496863);
  v11(v88, 0);
  v83 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v87, 0x6565705369726973, 0xEC00000064496863);
  v76 = *(v9 + 48);
  v77 = v9 + 48;
  if (!v76(v14, 1, v8))
  {
    sub_266ECB128(&unk_287884660);
    sub_26738115C();
  }

  (v13)(v87, 0);
  v12(v88, 0);
  sub_26738120C();
  v15 = v80;
  v80(v7, 0, 1, v8);
  v85 = v8;
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449616463, 0xE500000000000000);
  v16(v88, 0);
  sub_26738120C();
  v15(v7, 0, 1, v85);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v17(v88, 0);
  sub_26738120C();
  v15(v7, 0, 1, v85);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267425CE0);
  v18(v88, 0);
  v19 = v85;
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v87, 0xD000000000000015, 0x8000000267425CE0);
  if (!v76(v22, 1, v19))
  {
    sub_266ECB128(&unk_287884690);
    sub_26738115C();
  }

  (v21)(v87, 0);
  v20(v88, 0);
  type metadata accessor for CDASchemaCDADecision(0);
  sub_266F19260(&qword_2800EF9F0, type metadata accessor for CDASchemaCDADecision, &protocol conformance descriptor for CDASchemaCDADecision);
  sub_26738120C();
  v80(v7, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F697369636564, 0xE800000000000000);
  v23(v88, 0);
  v74 = "halTargetSiriSpeechId";
  v25 = v84 + 104;
  v24 = *(v84 + 104);
  v26 = v81;
  v27 = v82;
  v75 = *MEMORY[0x277D3E540];
  v24(v81);
  v88[0] = 1;
  sub_26738114C();
  v28 = v80;
  v80(v7, 0, 1, v85);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v74 | 0x8000000000000000);
  v29(v88, 0);
  v74 = "timeSinceLastDecisionInMs";
  v30 = *MEMORY[0x277D3E538];
  (v24)(v26, v30, v27);
  v88[0] = 1;
  sub_26738114C();
  v28(v7, 0, 1, v85);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v74 | 0x8000000000000000);
  v31(v88, 0);
  LODWORD(v74) = v30;
  v84 = v25;
  v78 = v24;
  (v24)(v26, v30, v82);
  v88[0] = 1;
  sub_26738114C();
  v28(v7, 0, 1, v85);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267425D20);
  v32(v88, 0);
  v33 = v85;
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v87, 0xD000000000000012, 0x8000000267425D20);
  if (!v76(v36, 1, v33))
  {
    sub_266ECB128(&unk_2878846C0);
    sub_26738115C();
  }

  (v35)(v87, 0);
  v34(v88, 0);
  v78(v81, *MEMORY[0x277D3E518], v82);
  v88[0] = 1;
  sub_26738114C();
  v80(v7, 0, 1, v33);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267425D40);
  v37(v88, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v87, 0xD000000000000012, 0x8000000267425D40);
  if (!v76(v40, 1, v33))
  {
    sub_266ECB128(&unk_2878846E8);
    sub_26738115C();
  }

  (v39)(v87, 0);
  v38(v88, 0);
  type metadata accessor for CDASchemaCDATrumpReason(0);
  sub_266F19260(&qword_2800EFAA0, type metadata accessor for CDASchemaCDATrumpReason, &protocol conformance descriptor for CDASchemaCDATrumpReason);
  sub_26738120C();
  v80(v7, 0, 1, v33);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0x616552706D757274, 0xEB000000006E6F73);
  v41(v88, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v87, 0x616552706D757274, 0xEB000000006E6F73);
  if (!v76(v44, 1, v33))
  {
    sub_266ECB128(&unk_287884710);
    sub_26738115C();
  }

  (v43)(v87, 0);
  v42(v88, 0);
  v78(v81, v74, v82);
  v88[0] = 1;
  sub_26738114C();
  v45 = v80;
  v80(v7, 0, 1, v33);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6353647370, 0xE800000000000000);
  v46(v88, 0);
  type metadata accessor for SISchemaMediaPlayBackState(0);
  sub_266F19260(&qword_2800EFAD8, type metadata accessor for SISchemaMediaPlayBackState, &protocol conformance descriptor for SISchemaMediaPlayBackState);
  sub_26738120C();
  v45(v7, 0, 1, v33);
  v47 = sub_2673811AC();
  sub_266EC637C(v7, 0x617453616964656DLL, 0xEA00000000006574);
  v47(v88, 0);
  type metadata accessor for CDASchemaCDATemporalUtilityState(0);
  sub_266F19260(&qword_2800EFAB0, type metadata accessor for CDASchemaCDATemporalUtilityState, &protocol conformance descriptor for CDASchemaCDATemporalUtilityState);
  sub_26738120C();
  v45(v7, 0, 1, v33);
  v48 = sub_2673811AC();
  sub_266EC637C(v7, 0x6174536D72616C61, 0xEA00000000006574);
  v48(v88, 0);
  sub_26738120C();
  v45(v7, 0, 1, v33);
  v49 = sub_2673811AC();
  sub_266EC637C(v7, 0x61745372656D6974, 0xEA00000000006574);
  v49(v88, 0);
  v50 = v82;
  v78(v81, v75, v82);
  v88[0] = 1;
  sub_26738114C();
  v45(v7, 0, 1, v33);
  v51 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267425D60);
  v51(v88, 0);
  type metadata accessor for CDASchemaCDATrigger(0);
  sub_266F19260(&qword_2800EFA68, type metadata accessor for CDASchemaCDATrigger, &protocol conformance descriptor for CDASchemaCDATrigger);
  sub_26738120C();
  v45(v7, 0, 1, v33);
  v52 = sub_2673811AC();
  sub_266EC637C(v7, 0x5472656767697274, 0xEB00000000657079);
  v52(v88, 0);
  LODWORD(v77) = *MEMORY[0x277D3E530];
  v53 = v50;
  v54 = v81;
  v55 = v78;
  (v78)();
  v88[0] = 1;
  sub_26738114C();
  v45(v7, 0, 1, v33);
  v56 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D614E6D6F6F72, 0xEC00000068736148);
  v56(v88, 0);
  v55(v54, v75, v53);
  v88[0] = 1;
  sub_26738114C();
  v57 = v85;
  v58 = v45;
  v45(v7, 0, 1, v85);
  v59 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267425D80);
  v59(v88, 0);
  sub_266ECB294(0, &qword_2800EFA90, 0x277D56D18);
  sub_266ECAF2C(&qword_2800EFA98, &qword_2800EFA90, 0x277D56D18, &protocol conformance descriptor for CDASchemaCDAScoreBoosters);
  sub_26738120C();
  v45(v7, 0, 1, v57);
  v60 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F6F4265726F6373, 0xED00007372657473);
  v60(v88, 0);
  v61 = v77;
  v62 = v82;
  v63 = v78;
  v78(v54, v77, v82);
  v88[0] = 1;
  sub_26738114C();
  v64 = v85;
  v58(v7, 0, 1, v85);
  v65 = sub_2673811AC();
  sub_266EC637C(v7, 0x646C697562, 0xE500000000000000);
  v65(v88, 0);
  v63(v81, v61, v62);
  v88[0] = 1;
  sub_26738114C();
  v58(v7, 0, 1, v64);
  v66 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  v66(v88, 0);
  sub_266ECB294(0, &qword_2800EF920, 0x277D56C98);
  sub_266ECAF2C(&qword_2800EF918, &qword_2800EF920, 0x277D56C98, &protocol conformance descriptor for CDASchemaCDAAdvertisementData);
  sub_26738120C();
  v58(v7, 0, 1, v64);
  v67 = sub_2673811AC();
  sub_266EC637C(v7, 0x7369747265766461, 0xED0000746E656D65);
  v67(v88, 0);
  v68 = v81;
  v69 = v82;
  v70 = v78;
  v78(v81, v77, v82);
  v88[0] = 1;
  sub_26738114C();
  v58(v7, 0, 1, v64);
  v71 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746375646F7270, 0xEC00000073657079);
  v71(v88, 0);
  v70(v68, *MEMORY[0x277D3E4E8], v69);
  v88[0] = 1;
  sub_26738114C();
  v58(v7, 0, 1, v64);
  v72 = sub_2673811AC();
  sub_266EC637C(v7, 0x694D7261654E7369, 0xEA00000000007373);
  return v72(v88, 0);
}

uint64_t sub_266F1919C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F19200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F19260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static CDASchemaCDAUserFeedbackParticipantCollectionReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x6449796576727573, 0xE800000000000000);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800EFAE8, 0x277D56D28);
  sub_266ECAF2C(&qword_2800EFAE0, &qword_2800EFAE8, 0x277D56D28, &protocol conformance descriptor for CDASchemaCDAUserFeedbackParticipant);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267425DF0);
  v11(v13, 0);
  sub_266ECB128(&unk_287884738);
  return sub_2673811CC();
}

uint64_t sub_266F19638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1969C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAUserFeedbackStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267425E40, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267425E60, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267425E80, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267425EA0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267425EC0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F19A38(uint64_t a1)
{
  v2 = sub_266F19B3C(&qword_2800EFAF0, &protocol conformance descriptor for CDASchemaCDAUserFeedbackStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F19AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F19B3C(&qword_2800EFAF0, &protocol conformance descriptor for CDASchemaCDAUserFeedbackStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F19B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDAUserFeedbackStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCKChangeReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for CloudKitSchemaCKChangeType(0);
  sub_266F19FB8(&qword_2800EFAF8, type metadata accessor for CloudKitSchemaCKChangeType, &protocol conformance descriptor for CloudKitSchemaCKChangeType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x795465676E616863, 0xEA00000000006570);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267425F20);
  return v10(v14, 0);
}

uint64_t sub_266F19EAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F19F10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F19FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F1A000()
{
  result = qword_2800EFB08;
  if (!qword_2800EFB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFB08);
  }

  return result;
}

uint64_t static CloudKitSchemaCKChangeType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267425F70, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267425F90, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267425FB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267425FD0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F1A2D0(uint64_t a1)
{
  v2 = sub_266F1A3D4(&qword_2800EFB10, &protocol conformance descriptor for CloudKitSchemaCKChangeType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1A338(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1A3D4(&qword_2800EFB10, &protocol conformance descriptor for CloudKitSchemaCKChangeType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1A3D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudKitSchemaCKChangeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCKClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738118C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFB18, 0x277D57020);
  sub_266ECAF2C(&qword_2800EFB20, &qword_2800EFB18, 0x277D57020, &protocol conformance descriptor for CloudKitSchemaCloudKitEventMetadata);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v37, 0);
  sub_266ECB294(0, &qword_2800EFB28, 0x277D57018);
  sub_266ECAF2C(&qword_2800EFB30, &qword_2800EFB28, 0x277D57018, &protocol conformance descriptor for CloudKitSchemaCKErrorReported);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267426020);
  v12(v37, 0);
  v34 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v36, 0xD000000000000015, 0x8000000267426020);
  v15 = *(v9 + 48);
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_287884768);
    sub_26738115C();
  }

  (v14)(v36, 0);
  v13(v37, 0);
  sub_266ECB294(0, &qword_2800EFB08, 0x277D57008);
  sub_266ECAF2C(&qword_2800EFB00, &qword_2800EFB08, 0x277D57008, &protocol conformance descriptor for CloudKitSchemaCKChangeReported);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267426040);
  v17(v37, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v36, 0xD000000000000016, 0x8000000267426040);
  if (!v15(v20, 1, v8))
  {
    sub_266ECB128(&unk_287884798);
    sub_26738115C();
  }

  (v19)(v36, 0);
  v18(v37, 0);
  v21 = v31;
  sub_26738117C();
  v22 = sub_2673811BC();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_266ECAD54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_266ECAD54((v27 > 1), v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v21, v33);
  v22(v37, 0);
  sub_266ECB128(&unk_2878847C8);
  return sub_2673811CC();
}

uint64_t sub_266F1AA58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F1AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F1ABBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1AC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1AC80(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFB38, &qword_2800EFB40, 0x277D57010, &protocol conformance descriptor for CloudKitSchemaCKClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EFB48, &qword_2800EFB40, 0x277D57010, &protocol conformance descriptor for CloudKitSchemaCKClientEvent);
  result = sub_266ECAF2C(&qword_2800EFB50, &qword_2800EFB40, 0x277D57010, &protocol conformance descriptor for CloudKitSchemaCKClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CloudKitSchemaCKErrorReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CloudKitSchemaCKErrorType(0);
  sub_266F1B1DC(&qword_2800EFB60, type metadata accessor for CloudKitSchemaCKErrorType, &protocol conformance descriptor for CloudKitSchemaCKErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x707954726F727265, 0xE900000000000065);
  return v5(v7, 0);
}

uint64_t sub_266F1AF44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CloudKitSchemaCKErrorType(0);
  sub_266F1B1DC(&qword_2800EFB60, type metadata accessor for CloudKitSchemaCKErrorType, &protocol conformance descriptor for CloudKitSchemaCKErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x707954726F727265, 0xE900000000000065);
  return v5(v7, 0);
}

uint64_t sub_266F1B0D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1B134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1B1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F1B224()
{
  result = qword_2800EFB28;
  if (!qword_2800EFB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFB28);
  }

  return result;
}

uint64_t static CloudKitSchemaCKErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674260C0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x80000002674260E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267426100, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267426120, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267426140, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266F1B564(uint64_t a1)
{
  v2 = sub_266F1B668(&qword_2800EFB68, &protocol conformance descriptor for CloudKitSchemaCKErrorType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1B5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1B668(&qword_2800EFB68, &protocol conformance descriptor for CloudKitSchemaCKErrorType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1B668(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudKitSchemaCKErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCloudKitEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682533219, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533219, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878847F8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F1B940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1B9A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPAppIntentClassifierModelType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674261E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x8000000267426210, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267426250, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F1BC5C(uint64_t a1)
{
  v2 = sub_266F1BD60(&qword_2800EFB78, &protocol conformance descriptor for CLPInstSchemaCLPAppIntentClassifierModelType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1BCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1BD60(&qword_2800EFB78, &protocol conformance descriptor for CLPInstSchemaCLPAppIntentClassifierModelType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1BD60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFB80, 0x277D56D50);
  sub_266ECAF2C(&qword_2800EFB88, &qword_2800EFB80, 0x277D56D50, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplaySampleStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800EFB90, 0x277D56D40);
  sub_266ECAF2C(&qword_2800EFB98, &qword_2800EFB90, 0x277D56D40, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplaySampleEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EFBA0, 0x277D56D48);
  sub_266ECAF2C(&qword_2800EFBA8, &qword_2800EFBA0, 0x277D56D48, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplaySampleFailed);
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