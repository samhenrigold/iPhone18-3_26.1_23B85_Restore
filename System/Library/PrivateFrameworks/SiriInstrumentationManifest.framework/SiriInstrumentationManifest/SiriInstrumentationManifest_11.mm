uint64_t sub_2670A6CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A6D10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670A6DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670A6E00()
{
  result = qword_2800F4060;
  if (!qword_2800F4060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4060);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4170, 0x277D58758);
  sub_266ECAF2C(&qword_2800F4178, &qword_2800F4170, 0x277D58758, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetActiveStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F4180, 0x277D58750);
  sub_266ECAF2C(&qword_2800F4188, &qword_2800F4180, 0x277D58750, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetActiveEnded);
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
  sub_266ECB128(&unk_2878881B0);
  return sub_2673811CC();
}

uint64_t sub_2670A72AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7310(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A75FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A76C4()
{
  result = qword_2800F4188;
  if (!qword_2800F4188)
  {
    sub_2670A771C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4188);
  }

  return result;
}

unint64_t sub_2670A771C()
{
  result = qword_2800F4180;
  if (!qword_2800F4180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4180);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A79B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7A14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A7A78()
{
  result = qword_2800F4178;
  if (!qword_2800F4178)
  {
    sub_2670A7AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4178);
  }

  return result;
}

unint64_t sub_2670A7AD0()
{
  result = qword_2800F4170;
  if (!qword_2800F4170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4170);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F41A0, 0x277D58770);
  sub_266ECAF2C(&qword_2800F41A8, &qword_2800F41A0, 0x277D58770, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetInactiveStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F41B0, 0x277D58768);
  sub_266ECAF2C(&qword_2800F41B8, &qword_2800F41B0, 0x277D58768, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetInactiveEnded);
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
  sub_266ECB128(&unk_2878881E0);
  return sub_2673811CC();
}

uint64_t sub_2670A7F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7FE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A82CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A8330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A8394()
{
  result = qword_2800F41B8;
  if (!qword_2800F41B8)
  {
    sub_2670A83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41B8);
  }

  return result;
}

unint64_t sub_2670A83EC()
{
  result = qword_2800F41B0;
  if (!qword_2800F41B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41B0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A8680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A86E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A8748()
{
  result = qword_2800F41A8;
  if (!qword_2800F41A8)
  {
    sub_2670A87A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41A8);
  }

  return result;
}

unint64_t sub_2670A87A0()
{
  result = qword_2800F41A0;
  if (!qword_2800F41A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41A0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267454E50, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267454E80, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267454EB0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x8000000267454EE0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000037, 0x8000000267454F10, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267454F50, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x8000000267454F80, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000032, 0x8000000267454FB0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000034, 0x8000000267454FF0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2670A8CA8(uint64_t a1)
{
  v2 = sub_2670A8DAC(&qword_2800F41D0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670A8D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670A8DAC(&qword_2800F41D0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670A8DAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F41D8, 0x277D58788);
  sub_266ECAF2C(&qword_2800F41E0, &qword_2800F41D8, 0x277D58788, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStartRecordingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F41E8, 0x277D58780);
  sub_266ECAF2C(&qword_2800F41F0, &qword_2800F41E8, 0x277D58780, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStartRecordingEnded);
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

uint64_t sub_2670A923C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A92A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267454790);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800F3F68, 0x277D58658);
  sub_266ECAF2C(&qword_2800F3F60, &qword_2800F3F68, 0x277D58658, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioFanInfo);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F666E496E6166, 0xE700000000000000);
  v12(v19, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v18, 0x6F666E496E6166, 0xE700000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287888210);
    sub_26738115C();
  }

  (v14)(v18, 0);
  return v13(v19, 0);
}

uint64_t sub_2670A971C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A9780(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A9A6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A9AD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A9B34()
{
  result = qword_2800F41E0;
  if (!qword_2800F41E0)
  {
    sub_2670A9B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41E0);
  }

  return result;
}

unint64_t sub_2670A9B8C()
{
  result = qword_2800F41D8;
  if (!qword_2800F41D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41D8);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4208, 0x277D587A0);
  sub_266ECAF2C(&qword_2800F4210, &qword_2800F4208, 0x277D587A0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStopRecordingeStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F4218, 0x277D58798);
  sub_266ECAF2C(&qword_2800F4220, &qword_2800F4218, 0x277D58798, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStopRecordingEnded);
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

uint64_t sub_2670AA024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3F68, 0x277D58658);
  sub_266ECAF2C(&qword_2800F3F60, &qword_2800F3F68, 0x277D58658, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioFanInfo);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F666E496E6166, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F666E496E6166, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888238);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670AA3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA42C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingeStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(0);
  sub_2670AA92C(&qword_2800F4238, type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason, &protocol conformance descriptor for MHSchemaMHAssistantDaemonStopRecordingReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2670AA694(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(0);
  sub_2670AA92C(&qword_2800F4238, type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason, &protocol conformance descriptor for MHSchemaMHAssistantDaemonStopRecordingReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2670AA820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670AA92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670AA974()
{
  result = qword_2800F4208;
  if (!qword_2800F4208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4208);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotPromptType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267455240, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267455270, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674552A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x80000002674552D0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670AAC44(uint64_t a1)
{
  v2 = sub_2670AAD48(&qword_2800F4248, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AACAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AAD48(&qword_2800F4248, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AAD48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4250, 0x277D587B8);
  sub_266ECAF2C(&qword_2800F4258, &qword_2800F4250, 0x277D587B8, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotTransitionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F4260, 0x277D587B0);
  sub_266ECAF2C(&qword_2800F4268, &qword_2800F4260, 0x277D587B0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotTransitionEnded);
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

uint64_t sub_2670AB1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AB23C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6573657270707573, 0xEE007472656C4164);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x74754F64656D6974, 0xE800000000000000);
  return v14(v18, 0);
}

uint64_t sub_2670AB60C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AB670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670AB6D4()
{
  result = qword_2800F4268;
  if (!qword_2800F4268)
  {
    sub_2670AB72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4268);
  }

  return result;
}

unint64_t sub_2670AB72C()
{
  result = qword_2800F4260;
  if (!qword_2800F4260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4260);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(0);
  sub_2670ABBD4(&qword_2800F4240, type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474706D6F7270, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2670AB93C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(0);
  sub_2670ABBD4(&qword_2800F4240, type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474706D6F7270, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2670ABAC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670ABB2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670ABBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670ABC1C()
{
  result = qword_2800F4250;
  if (!qword_2800F4250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4250);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonStopRecordingReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267455430, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267455460, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267455490, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x80000002674554C0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003DLL, 0x8000000267455500, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000037, 0x8000000267455540, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x8000000267455580, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000035, 0x80000002674555C0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002BLL, 0x8000000267455600, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000039, 0x8000000267455630, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_2670AC190(uint64_t a1)
{
  v2 = sub_2670AC294(&qword_2800F4280, &protocol conformance descriptor for MHSchemaMHAssistantDaemonStopRecordingReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC294(&qword_2800F4280, &protocol conformance descriptor for MHSchemaMHAssistantDaemonStopRecordingReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC294(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVBackgroundNoiseActivityLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x80000002674556B0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674556E0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267455710, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670AC4EC(uint64_t a1)
{
  v2 = sub_2670AC5F0(&qword_2800F4288, &protocol conformance descriptor for MHSchemaMHASVBackgroundNoiseActivityLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC554(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC5F0(&qword_2800F4288, &protocol conformance descriptor for MHSchemaMHASVBackgroundNoiseActivityLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC5F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVBackgroundNoiseActivityLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVInvocationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267455770, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267455790, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674557C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670AC848(uint64_t a1)
{
  v2 = sub_2670AC94C(&qword_2800F4290, &protocol conformance descriptor for MHSchemaMHASVInvocationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC94C(&qword_2800F4290, &protocol conformance descriptor for MHSchemaMHASVInvocationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC94C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVSpeakerDistanceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267455820, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267455850, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267455880, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674558A0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674558C0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670ACC88(uint64_t a1)
{
  v2 = sub_2670ACD8C(&qword_2800F4298, &protocol conformance descriptor for MHSchemaMHASVSpeakerDistanceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670ACCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670ACD8C(&qword_2800F4298, &protocol conformance descriptor for MHSchemaMHASVSpeakerDistanceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670ACD8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVSpeakerDistanceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVUserIntentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267455910, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267455930, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267455950, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267455970, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674559A0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670AD0C8(uint64_t a1)
{
  v2 = sub_2670AD1CC(&qword_2800F42A0, &protocol conformance descriptor for MHSchemaMHASVUserIntentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AD130(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AD1CC(&qword_2800F42A0, &protocol conformance descriptor for MHSchemaMHASVUserIntentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AD1CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVUserIntentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F42A8, 0x277D587D0);
  sub_266ECAF2C(&qword_2800F42B0, &qword_2800F42A8, 0x277D587D0, &protocol conformance descriptor for MHSchemaMHAttendingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F42B8, 0x277D587C8);
  sub_266ECAF2C(&qword_2800F42C0, &qword_2800F42B8, 0x277D587C8, &protocol conformance descriptor for MHSchemaMHAttendingEnded);
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

uint64_t sub_2670AD65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AD6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAttendingEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingEndedReason(0);
  sub_2670ADBC0(&qword_2800F42D8, type metadata accessor for MHSchemaMHAttendingEndedReason, &protocol conformance descriptor for MHSchemaMHAttendingEndedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F73616552646E65, 0xE90000000000006ELL);
  return v5(v7, 0);
}

uint64_t sub_2670AD928(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingEndedReason(0);
  sub_2670ADBC0(&qword_2800F42D8, type metadata accessor for MHSchemaMHAttendingEndedReason, &protocol conformance descriptor for MHSchemaMHAttendingEndedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F73616552646E65, 0xE90000000000006ELL);
  return v5(v7, 0);
}

uint64_t sub_2670ADAB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670ADB18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670ADBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670ADC08()
{
  result = qword_2800F42B8;
  if (!qword_2800F42B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F42B8);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingEndedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267455A60, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267455A80, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267455AB0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670ADE68(uint64_t a1)
{
  v2 = sub_2670ADF6C(&qword_2800F42E0, &protocol conformance descriptor for MHSchemaMHAttendingEndedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670ADED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670ADF6C(&qword_2800F42E0, &protocol conformance descriptor for MHSchemaMHAttendingEndedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670ADF6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAttendingEndedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingStartedReason(0);
  sub_2670AE414(&qword_2800F42E8, type metadata accessor for MHSchemaMHAttendingStartedReason, &protocol conformance descriptor for MHSchemaMHAttendingStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6165527472617473, 0xEB000000006E6F73);
  return v5(v7, 0);
}

uint64_t sub_2670AE178(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingStartedReason(0);
  sub_2670AE414(&qword_2800F42E8, type metadata accessor for MHSchemaMHAttendingStartedReason, &protocol conformance descriptor for MHSchemaMHAttendingStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6165527472617473, 0xEB000000006E6F73);
  return v5(v7, 0);
}

uint64_t sub_2670AE308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AE36C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670AE414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670AE45C()
{
  result = qword_2800F42A8;
  if (!qword_2800F42A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F42A8);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingStartedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267455B40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267455B70, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x8000000267455BB0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670AE6C4(uint64_t a1)
{
  v2 = sub_2670AE7C8(&qword_2800F42F0, &protocol conformance descriptor for MHSchemaMHAttendingStartedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AE72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AE7C8(&qword_2800F42F0, &protocol conformance descriptor for MHSchemaMHAttendingStartedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AE7C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAttendingStartedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAudioDucked.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670AEA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AEAB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670AEB1C()
{
  result = qword_2800F42F8;
  if (!qword_2800F42F8)
  {
    sub_2670AEB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F42F8);
  }

  return result;
}

unint64_t sub_2670AEB74()
{
  result = qword_2800F4300;
  if (!qword_2800F4300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4300);
  }

  return result;
}

uint64_t static MHSchemaMHAudioSessionCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267455C50, isUniquelyReferenced_nonNull_native);
  *v3 = v114;

  v1(v142, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267455C70, v8);
  *v7 = v115;

  v5(v142, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267455C90, v12);
  *v11 = v116;

  v9(v142, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267455CC0, v16);
  *v15 = v117;

  v13(v142, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267455CE0, v20);
  *v19 = v118;

  v17(v142, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267455D00, v24);
  *v23 = v119;

  v21(v142, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267455D30, v28);
  *v27 = v120;

  v25(v142, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267455D60, v32);
  *v31 = v121;

  v29(v142, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267455D90, v36);
  *v35 = v122;

  v33(v142, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x8000000267455DC0, v40);
  *v39 = v123;

  v37(v142, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267455DF0, v44);
  *v43 = v124;

  v41(v142, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001FLL, 0x8000000267455E20, v48);
  *v47 = v125;

  v45(v142, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x8000000267455E40, v52);
  *v51 = v126;

  v49(v142, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267455E70, v56);
  *v55 = v127;

  v53(v142, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000023, 0x8000000267455EA0, v60);
  *v59 = v128;

  v57(v142, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x8000000267455ED0, v64);
  *v63 = v129;

  v61(v142, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001CLL, 0x8000000267455EF0, v68);
  *v67 = v130;

  v65(v142, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002ALL, 0x8000000267455F10, v72);
  *v71 = v131;

  v69(v142, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000026, 0x8000000267455F40, v76);
  *v75 = v132;

  v73(v142, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000033, 0x8000000267455F70, v80);
  *v79 = v133;

  v77(v142, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000023, 0x8000000267455FB0, v84);
  *v83 = v134;

  v81(v142, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000026, 0x8000000267455FE0, v88);
  *v87 = v135;

  v85(v142, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001DLL, 0x8000000267456010, v92);
  *v91 = v136;

  v89(v142, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000024, 0x8000000267456030, v96);
  *v95 = v137;

  v93(v142, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000030, 0x8000000267456060, v100);
  *v99 = v138;

  v97(v142, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000027, 0x80000002674560A0, v104);
  *v103 = v139;

  v101(v142, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001BLL, 0x80000002674560D0, v108);
  *v107 = v140;

  v105(v142, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x80000002674560F0, v112);
  *v111 = v141;

  return v109(v142, 0);
}

uint64_t sub_2670AF8DC(uint64_t a1)
{
  v2 = sub_2670AF9E0(&qword_2800F4308, &protocol conformance descriptor for MHSchemaMHAudioSessionCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AF944(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AF9E0(&qword_2800F4308, &protocol conformance descriptor for MHSchemaMHAudioSessionCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AF9E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAudioSessionCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAudioSessionMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267456150, isUniquelyReferenced_nonNull_native);
  *v3 = v122;

  v1(v152, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267456170, v8);
  *v7 = v123;

  v5(v152, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267456190, v12);
  *v11 = v124;

  v9(v152, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674561B0, v16);
  *v15 = v125;

  v13(v152, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674561D0, v20);
  *v19 = v126;

  v17(v152, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267456200, v24);
  *v23 = v127;

  v21(v152, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267456220, v28);
  *v27 = v128;

  v25(v152, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267456250, v32);
  *v31 = v129;

  v29(v152, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x8000000267456270, v36);
  *v35 = v130;

  v33(v152, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267456290, v40);
  *v39 = v131;

  v37(v152, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674562B0, v44);
  *v43 = v132;

  v41(v152, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x80000002674562E0, v48);
  *v47 = v133;

  v45(v152, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002ALL, 0x8000000267456310, v52);
  *v51 = v134;

  v49(v152, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000022, 0x8000000267456340, v56);
  *v55 = v135;

  v53(v152, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000025, 0x8000000267456370, v60);
  *v59 = v136;

  v57(v152, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x80000002674563A0, v64);
  *v63 = v137;

  v61(v152, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x80000002674563C0, v68);
  *v67 = v138;

  v65(v152, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001FLL, 0x80000002674563F0, v72);
  *v71 = v139;

  v69(v152, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000028, 0x8000000267456410, v76);
  *v75 = v140;

  v73(v152, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x8000000267456440, v80);
  *v79 = v141;

  v77(v152, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000016, 0x8000000267456460, v84);
  *v83 = v142;

  v81(v152, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ELL, 0x8000000267456480, v88);
  *v87 = v143;

  v85(v152, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674564A0, v92);
  *v91 = v144;

  v89(v152, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000021, 0x80000002674564D0, v96);
  *v95 = v145;

  v93(v152, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000022, 0x8000000267456500, v100);
  *v99 = v146;

  v97(v152, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x8000000267456530, v104);
  *v103 = v147;

  v101(v152, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000023, 0x8000000267456550, v108);
  *v107 = v148;

  v105(v152, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x8000000267456580, v112);
  *v111 = v149;

  v109(v152, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000019, 0x80000002674565B0, v116);
  *v115 = v150;

  v113(v152, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001DLL, 0x80000002674565D0, v120);
  *v119 = v151;

  return v117(v152, 0);
}

uint64_t sub_2670B0880(uint64_t a1)
{
  v2 = sub_2670B0984(&qword_2800F4310, &protocol conformance descriptor for MHSchemaMHAudioSessionMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B08E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B0984(&qword_2800F4310, &protocol conformance descriptor for MHSchemaMHAudioSessionMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B0984(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAudioSessionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBiometricMatchResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267456620, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267456640, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267456670, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267456690, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674566C0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670B0CC0(uint64_t a1)
{
  v2 = sub_2670B0DC4(&qword_2800F4320, &protocol conformance descriptor for MHSchemaMHBiometricMatchResult);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B0D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B0DC4(&qword_2800F4320, &protocol conformance descriptor for MHSchemaMHBiometricMatchResult);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B0DC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBiometricMatchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBluetoothAudioDeviceCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267456720, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267456750, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267456780, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674567B0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674567E0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x8000000267456810, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2670B1170(uint64_t a1)
{
  v2 = sub_2670B1274(&qword_2800F4328, &protocol conformance descriptor for MHSchemaMHBluetoothAudioDeviceCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B11D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B1274(&qword_2800F4328, &protocol conformance descriptor for MHSchemaMHBluetoothAudioDeviceCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B1274(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBluetoothAudioDeviceCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBluetoothWirelessSplitterSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267456880, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x80000002674568B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x80000002674568F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x8000000267456930, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670B153C(uint64_t a1)
{
  v2 = sub_2670B1640(&qword_2800F4330, &protocol conformance descriptor for MHSchemaMHBluetoothWirelessSplitterSessionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B15A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B1640(&qword_2800F4330, &protocol conformance descriptor for MHSchemaMHBluetoothWirelessSplitterSessionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B1640(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBluetoothWirelessSplitterSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHCarplayLanguageMismatch.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000019, 0x80000002674569A0);
  v10(v13, 0);
  type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(0);
  sub_2670B1ABC(&qword_2800F4338, type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode, &protocol conformance descriptor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674569C0);
  return v11(v13, 0);
}

uint64_t sub_2670B19B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B1A14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B1ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670B1B04()
{
  result = qword_2800F4348;
  if (!qword_2800F4348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4348);
  }

  return result;
}

uint64_t static MHSchemaMHClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x28223BE20](v4);
  v121 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v117 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v131 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v128 = v10 + 56;
  v129 = v11;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 1682532461, 0xE400000000000000);
  v12(v133, 0);
  v130 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v132, 1682532461, 0xE400000000000000);
  v15 = *(v10 + 48);
  v126 = v10 + 48;
  v127 = v9;
  v125 = v15;
  if (!v15(v16, 1, v9))
  {
    sub_266ECB128(&unk_287888260);
    sub_26738115C();
  }

  (v14)(v132, 0);
  v13(v133, 0);
  sub_266ECB294(0, &qword_2800F4350, 0x277D587F8);
  sub_266ECAF2C(&qword_2800F4358, &qword_2800F4350, 0x277D587F8, &protocol conformance descriptor for MHSchemaMHClientEventMetadata);
  sub_26738120C();
  v17 = v127;
  v18 = v129;
  v129(v8, 0, 1, v127);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v19(v133, 0);
  sub_266ECB294(0, &qword_2800F3E40, 0x277D585E8);
  sub_266ECAF2C(&qword_2800F3E38, &qword_2800F3E40, 0x277D585E8, &protocol conformance descriptor for MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext);
  sub_26738121C();
  v18(v8, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002FLL, 0x8000000267456A10);
  v20(v133, 0);
  sub_266ECB294(0, &qword_2800F4360, 0x277D58878);
  sub_266ECAF2C(&qword_2800F4368, &qword_2800F4360, 0x277D58878, &protocol conformance descriptor for MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext);
  sub_26738121C();
  v18(v8, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, 0x8000000267456A40);
  v21(v133, 0);
  sub_266ECB294(0, &qword_2800F4370, 0x277D58960);
  sub_266ECAF2C(&qword_2800F4378, &qword_2800F4370, 0x277D58960, &protocol conformance descriptor for MHSchemaMHUnintendedResponseSuppressionEvaluationContext);
  sub_26738121C();
  v18(v8, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002DLL, 0x8000000267456A70);
  v22(v133, 0);
  sub_266ECB294(0, &qword_2800F4380, 0x277D58808);
  sub_266ECAF2C(&qword_2800F4388, &qword_2800F4380, 0x277D58808, &protocol conformance descriptor for MHSchemaMHCoreSpeechPreprocessorCompleted);
  sub_26738121C();
  v18(v8, 0, 1, v17);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x8000000267456AA0);
  v23(v133, 0);
  sub_266ECB294(0, &qword_2800F3F08, 0x277D585E0);
  sub_266ECAF2C(&qword_2800F3F00, &qword_2800F3F08, 0x277D585E0, &protocol conformance descriptor for MHSchemaMHASRAudioConfigureStarted);
  sub_26738121C();
  v24 = v127;
  v18(v8, 0, 1, v127);
  v25 = sub_2673811AC();
  v120 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267456AC0);
  v25(v133, 0);
  sub_266ECB294(0, &qword_2800F3FC8, 0x277D58678);
  sub_266ECAF2C(&qword_2800F3FC0, &qword_2800F3FC8, 0x277D58678, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioInitContext);
  sub_26738121C();
  v18(v8, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x8000000267456AE0);
  v26(v133, 0);
  sub_266ECB294(0, &qword_2800F3F58, 0x277D58640);
  sub_266ECAF2C(&qword_2800F3F50, &qword_2800F3F58, 0x277D58640, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioConfigureContext);
  sub_26738121C();
  v27 = v24;
  v28 = v24;
  v29 = v129;
  v129(v8, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267456B00);
  v30(v133, 0);
  sub_266ECB294(0, &qword_2800F4018, 0x277D58698);
  sub_266ECAF2C(&qword_2800F4010, &qword_2800F4018, 0x277D58698, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioPrepareContext);
  sub_26738121C();
  v29(v8, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267456B30);
  v31(v133, 0);
  sub_266ECB294(0, &qword_2800F4048, 0x277D586B0);
  sub_266ECAF2C(&qword_2800F4040, &qword_2800F4048, 0x277D586B0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioPrewarmContext);
  sub_26738121C();
  v29(v8, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267456B60);
  v32(v133, 0);
  sub_266ECB294(0, &qword_2800F4200, 0x277D58778);
  sub_266ECAF2C(&qword_2800F41F8, &qword_2800F4200, 0x277D58778, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStartRecordingContext);
  sub_26738121C();
  v29(v8, 0, 1, v27);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x8000000267456B90);
  v33(v133, 0);
  sub_266ECB294(0, &qword_2800F4230, 0x277D58790);
  sub_266ECAF2C(&qword_2800F4228, &qword_2800F4230, 0x277D58790, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioStopRecordingContext);
  sub_26738121C();
  v29(v8, 0, 1, v27);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x8000000267456BC0);
  v34(v133, 0);
  sub_266ECB294(0, &qword_2800F4198, 0x277D58748);
  sub_266ECAF2C(&qword_2800F4190, &qword_2800F4198, 0x277D58748, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetActiveContext);
  sub_26738121C();
  v35 = v127;
  v29(v8, 0, 1, v127);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, 0x8000000267456BF0);
  v36(v133, 0);
  v124 = "udioSessionSetActiveContext";
  sub_266ECB294(0, &qword_2800F41C8, 0x277D58760);
  sub_266ECAF2C(&qword_2800F41C0, &qword_2800F41C8, 0x277D58760, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext);
  sub_26738121C();
  v29(v8, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002DLL, v124 | 0x8000000000000000);
  v37(v133, 0);
  sub_266ECB294(0, &qword_2800F3F98, 0x277D58660);
  sub_266ECAF2C(&qword_2800F3F90, &qword_2800F3F98, 0x277D58660, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioFetchRouteContext);
  sub_26738121C();
  v29(v8, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x8000000267456C50);
  v38(v133, 0);
  sub_266ECB294(0, &qword_2800F4088, 0x277D586D0);
  sub_266ECAF2C(&qword_2800F4080, &qword_2800F4088, 0x277D586D0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingContext);
  sub_26738121C();
  v39 = v129;
  v129(v8, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267456C80);
  v40(v133, 0);
  sub_266ECB294(0, &qword_2800F4160, 0x277D58738);
  sub_266ECAF2C(&qword_2800F4158, &qword_2800F4160, 0x277D58738, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected);
  sub_26738121C();
  v39(v8, 0, 1, v35);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000031, 0x8000000267456CB0);
  v41(v133, 0);
  sub_266ECB294(0, &qword_2800F3FE8, 0x277D58690);
  sub_266ECAF2C(&qword_2800F3FE0, &qword_2800F3FE8, 0x277D58690, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioLateBufferDetected);
  sub_26738121C();
  v39(v8, 0, 1, v35);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267456CF0);
  v42(v133, 0);
  v124 = "udioLateBufferDetected";
  sub_266ECB294(0, &qword_2800F40E0, 0x277D586F0);
  sub_266ECAF2C(&qword_2800F40D8, &qword_2800F40E0, 0x277D586F0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext);
  sub_26738121C();
  v39(v8, 0, 1, v35);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002FLL, v124 | 0x8000000000000000);
  v43(v133, 0);
  sub_266ECB294(0, &qword_2800F4150, 0x277D58720);
  sub_266ECAF2C(&qword_2800F4148, &qword_2800F4150, 0x277D58720, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext);
  sub_26738121C();
  v39(v8, 0, 1, v35);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, 0x8000000267456D50);
  v44(v133, 0);
  sub_266ECB294(0, &qword_2800F4110, 0x277D58700);
  sub_266ECAF2C(&qword_2800F4108, &qword_2800F4110, 0x277D58700, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext);
  sub_26738121C();
  v45 = v129;
  v129(v8, 0, 1, v35);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000030, 0x8000000267456D80);
  v46(v133, 0);
  sub_266ECB294(0, &qword_2800F4120, 0x277D58718);
  sub_266ECAF2C(&qword_2800F4118, &qword_2800F4120, 0x277D58718, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1);
  sub_26738121C();
  v45(v8, 0, 1, v35);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000035, 0x8000000267456DC0);
  v47(v133, 0);
  sub_266ECB294(0, &qword_2800F3F28, 0x277D58638);
  sub_266ECAF2C(&qword_2800F3F20, &qword_2800F3F28, 0x277D58638, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioBluetoothInfo);
  sub_26738121C();
  v48 = v129;
  v129(v8, 0, 1, v35);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267456E00);
  v49(v133, 0);
  sub_266ECB294(0, &qword_2800F4390, 0x277D58A50);
  sub_266ECAF2C(&qword_2800F4398, &qword_2800F4390, 0x277D58A50, &protocol conformance descriptor for MHSchemaMHVoiceTriggerTwoShotDetected);
  sub_26738121C();
  v48(v8, 0, 1, v35);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267456E30);
  v50(v133, 0);
  sub_266ECB294(0, &qword_2800F4278, 0x277D587A8);
  sub_266ECAF2C(&qword_2800F4270, &qword_2800F4278, 0x277D587A8, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext);
  sub_26738121C();
  v48(v8, 0, 1, v35);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x8000000267456E50);
  v51(v133, 0);
  sub_266ECB294(0, &qword_2800F43A0, 0x277D58A00);
  sub_266ECAF2C(&qword_2800F43A8, &qword_2800F43A0, 0x277D58A00, &protocol conformance descriptor for MHSchemaMHVoiceTriggerContext);
  sub_26738121C();
  v48(v8, 0, 1, v35);
  v52 = sub_2673811AC();
  v119 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674421A0);
  v52(v133, 0);
  sub_266ECB294(0, &qword_2800F43B0, 0x277D58840);
  sub_266ECAF2C(&qword_2800F43B8, &qword_2800F43B0, 0x277D58840, &protocol conformance descriptor for MHSchemaMHEndpointDetected);
  sub_26738121C();
  v48(v8, 0, 1, v35);
  v53 = sub_2673811AC();
  v124 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267456E80);
  v53(v133, 0);
  sub_266ECB294(0, &qword_2800F43C0, 0x277D58850);
  sub_266ECAF2C(&qword_2800F43C8, &qword_2800F43C0, 0x277D58850, &protocol conformance descriptor for MHSchemaMHEndpointLatencyInfoReported);
  sub_26738121C();
  v54 = v129;
  v129(v8, 0, 1, v35);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267456EA0);
  v55(v133, 0);
  sub_266ECB294(0, &qword_2800F43D0, 0x277D589C0);
  sub_266ECAF2C(&qword_2800F43D8, &qword_2800F43D0, 0x277D589C0, &protocol conformance descriptor for MHSchemaMHVoiceAdBlockerContext);
  sub_26738121C();
  v54(v8, 0, 1, v35);
  v56 = sub_2673811AC();
  sub_266EC637C(v8, v124, 0x8000000267456EC0);
  v56(v133, 0);
  sub_266ECB294(0, &qword_2800F43E0, 0x277D588A0);
  sub_266ECAF2C(&qword_2800F43E8, &qword_2800F43E0, 0x277D588A0, &protocol conformance descriptor for MHSchemaMHOnDeviceEndpointerContext);
  sub_26738121C();
  v54(v8, 0, 1, v35);
  v57 = sub_2673811AC();
  v117 = 0xD000000000000019;
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267456EE0);
  v57(v133, 0);
  sub_266ECB294(0, &qword_2800F43F0, 0x277D588D0);
  sub_266ECAF2C(&qword_2800F43F8, &qword_2800F43F0, 0x277D588D0, &protocol conformance descriptor for MHSchemaMHServerEndpointerContext);
  sub_26738121C();
  v54(v8, 0, 1, v35);
  v58 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267456F00);
  v58(v133, 0);
  sub_266ECB294(0, &qword_2800F4400, 0x277D58868);
  sub_266ECAF2C(&qword_2800F4408, &qword_2800F4400, 0x277D58868, &protocol conformance descriptor for MHSchemaMHEndpointerUsed);
  sub_26738121C();
  v54(v8, 0, 1, v35);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E696F70646E65, 0xEE00646573557265);
  v59(v133, 0);
  sub_266ECB294(0, &qword_2800F4410, 0x277D58838);
  sub_266ECAF2C(&qword_2800F4418, &qword_2800F4410, 0x277D58838, &protocol conformance descriptor for MHSchemaMHEndpointDelayContext);
  sub_26738121C();
  v60 = v35;
  v54(v8, 0, 1, v35);
  v61 = sub_2673811AC();
  v118 = 0xD000000000000014;
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267456F20);
  v61(v133, 0);
  sub_266ECB294(0, &qword_2800F4420, 0x277D58890);
  sub_266ECAF2C(&qword_2800F4428, &qword_2800F4420, 0x277D58890, &protocol conformance descriptor for MHSchemaMHMitigationDecisionRecommended);
  sub_26738121C();
  v54(v8, 0, 1, v60);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267456F40);
  v62(v133, 0);
  sub_266ECB294(0, &qword_2800F3EF0, 0x277D58630);
  sub_266ECAF2C(&qword_2800F3EE8, &qword_2800F3EF0, 0x277D58630, &protocol conformance descriptor for MHSchemaMHApplicationPlaybackAttempted);
  sub_26738121C();
  v54(v8, 0, 1, v60);
  v63 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267456F60);
  v63(v133, 0);
  sub_266ECB294(0, &qword_2800F4430, 0x277D588E0);
  sub_266ECAF2C(&qword_2800F4438, &qword_2800F4430, 0x277D588E0, &protocol conformance descriptor for MHSchemaMHSiriLaunchRequestContext);
  sub_26738121C();
  v64 = v127;
  v54(v8, 0, 1, v127);
  v65 = sub_2673811AC();
  sub_266EC637C(v8, v120, 0x8000000267456F80);
  v65(v133, 0);
  sub_266ECB294(0, &qword_2800F4440, 0x277D58858);
  sub_266ECAF2C(&qword_2800F4448, &qword_2800F4440, 0x277D58858, &protocol conformance descriptor for MHSchemaMHEndpointerAccessibleContext);
  sub_26738121C();
  v54(v8, 0, 1, v64);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267456FA0);
  v66(v133, 0);
  sub_266ECB294(0, &qword_2800F4348, 0x277D587E0);
  sub_266ECAF2C(&qword_2800F4340, &qword_2800F4348, 0x277D587E0, &protocol conformance descriptor for MHSchemaMHCarplayLanguageMismatch);
  sub_26738121C();
  v54(v8, 0, 1, v64);
  v67 = sub_2673811AC();
  v68 = v117;
  sub_266EC637C(v8, v117, 0x8000000267456FC0);
  v67(v133, 0);
  sub_266ECB294(0, &qword_2800F4450, 0x277D58898);
  sub_266ECAF2C(&qword_2800F4458, &qword_2800F4450, 0x277D58898, &protocol conformance descriptor for MHSchemaMHOdldFalseTriggerMitigated);
  sub_26738121C();
  v69 = v127;
  v70 = v129;
  v129(v8, 0, 1, v127);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, v68, 0x8000000267456FE0);
  v71(v133, 0);
  v120 = "odldFalseTriggerMitigated";
  sub_266ECB294(0, &qword_2800F4460, 0x277D588F8);
  sub_266ECAF2C(&qword_2800F4468, &qword_2800F4460, 0x277D588F8, &protocol conformance descriptor for MHSchemaMHSpeakerFalseTriggerMitigated);
  sub_26738121C();
  v70(v8, 0, 1, v69);
  v72 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v120 | 0x8000000000000000);
  v72(v133, 0);
  sub_266ECB294(0, &qword_2800F4470, 0x277D588D8);
  sub_266ECAF2C(&qword_2800F4478, &qword_2800F4470, 0x277D588D8, &protocol conformance descriptor for MHSchemaMHSiriDirectedSpeechDetectionFailed);
  sub_26738121C();
  v73 = v129;
  v129(v8, 0, 1, v69);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267457020);
  v74(v133, 0);
  sub_266ECB294(0, &qword_2800F4300, 0x277D587D8);
  sub_266ECAF2C(&qword_2800F42F8, &qword_2800F4300, 0x277D587D8, &protocol conformance descriptor for MHSchemaMHAudioDucked);
  sub_26738121C();
  v73(v8, 0, 1, v69);
  v75 = sub_2673811AC();
  sub_266EC637C(v8, 0x6375446F69647561, 0xEB0000000064656BLL);
  v75(v133, 0);
  sub_266ECB294(0, &qword_2800F40A0, 0x277D586E0);
  sub_266ECAF2C(&qword_2800F4098, &qword_2800F40A0, 0x277D586E0, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingFailed);
  sub_26738121C();
  v73(v8, 0, 1, v69);
  v76 = sub_2673811AC();
  sub_266EC637C(v8, v118, 0x8000000267457050);
  v76(v133, 0);
  sub_266ECB294(0, &qword_2800F4480, 0x277D588A8);
  sub_266ECAF2C(&qword_2800F4488, &qword_2800F4480, 0x277D588A8, &protocol conformance descriptor for MHSchemaMHRTSFalseRejectDetected);
  sub_26738121C();
  v77 = v127;
  v73(v8, 0, 1, v127);
  v78 = sub_2673811AC();
  v120 = 0xD000000000000016;
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267457070);
  v78(v133, 0);
  sub_266ECB294(0, &qword_2800F4490, 0x277D58948);
  sub_266ECAF2C(&qword_2800F4498, &qword_2800F4490, 0x277D58948, &protocol conformance descriptor for MHSchemaMHTRPCreated);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v79 = sub_2673811AC();
  sub_266EC637C(v8, 0x7461657243707274, 0xEA00000000006465);
  v79(v133, 0);
  sub_266ECB294(0, &qword_2800F44A0, 0x277D589A8);
  sub_266ECAF2C(&qword_2800F44A8, &qword_2800F44A0, 0x277D589A8, &protocol conformance descriptor for MHSchemaMHUserSpeakingContext);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, v119, 0x8000000267457090);
  v80(v133, 0);
  sub_266ECB294(0, &qword_2800F44B0, 0x277D58930);
  sub_266ECAF2C(&qword_2800F44B8, &qword_2800F44B0, 0x277D58930, &protocol conformance descriptor for MHSchemaMHSpeechStopDetected);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674570B0);
  v81(v133, 0);
  sub_266ECB294(0, &qword_2800F44C0, 0x277D58920);
  sub_266ECAF2C(&qword_2800F44C8, &qword_2800F44C0, 0x277D58920, &protocol conformance descriptor for MHSchemaMHSpeechDetectorContext);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v82 = sub_2673811AC();
  v118 = 0xD000000000000015;
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674570D0);
  v82(v133, 0);
  sub_266ECB294(0, &qword_2800F44D0, 0x277D58940);
  sub_266ECAF2C(&qword_2800F44D8, &qword_2800F44D0, 0x277D58940, &protocol conformance descriptor for MHSchemaMHStoppedListeningForSpeechContinuation);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v83 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674570F0);
  v83(v133, 0);
  sub_266ECB294(0, &qword_2800F44E0, 0x277D58988);
  sub_266ECAF2C(&qword_2800F44E8, &qword_2800F44E0, 0x277D58988, &protocol conformance descriptor for MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v84 = sub_2673811AC();
  v119 = 0xD00000000000001ALL;
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267457120);
  v84(v133, 0);
  sub_266ECB294(0, &qword_2800F42D0, 0x277D587C0);
  sub_266ECAF2C(&qword_2800F42C8, &qword_2800F42D0, 0x277D587C0, &protocol conformance descriptor for MHSchemaMHAttendingContext);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v85 = sub_2673811AC();
  sub_266EC637C(v8, v124, 0x8000000267457140);
  v85(v133, 0);
  sub_266ECB294(0, &qword_2800F44F0, 0x277D58818);
  sub_266ECAF2C(&qword_2800F44F8, &qword_2800F44F0, 0x277D58818, &protocol conformance descriptor for MHSchemaMHCrownPressed);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v86 = sub_2673811AC();
  sub_266EC637C(v8, 0x6572506E776F7263, 0xEC00000064657373);
  v86(v133, 0);
  sub_266ECB294(0, &qword_2800F4500, 0x277D588C0);
  sub_266ECAF2C(&qword_2800F4508, &qword_2800F4500, 0x277D588C0, &protocol conformance descriptor for MHSchemaMHRaiseToSpeakTriggered);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v87 = sub_2673811AC();
  sub_266EC637C(v8, 0x6767697254737472, 0xEC00000064657265);
  v87(v133, 0);
  sub_266ECB294(0, &qword_2800F4510, 0x277D588B0);
  sub_266ECAF2C(&qword_2800F4518, &qword_2800F4510, 0x277D588B0, &protocol conformance descriptor for MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v88 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267457160);
  v88(v133, 0);
  sub_266ECB294(0, &qword_2800F4520, 0x277D588B8);
  sub_266ECAF2C(&qword_2800F4528, &qword_2800F4520, 0x277D588B8, &protocol conformance descriptor for MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v89 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x8000000267457180);
  v89(v133, 0);
  sub_266ECB294(0, &qword_2800F4530, 0x277D589F0);
  sub_266ECAF2C(&qword_2800F4538, &qword_2800F4530, 0x277D589F0, &protocol conformance descriptor for MHSchemaMHVoiceProfileOnboarded);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v90 = sub_2673811AC();
  sub_266EC637C(v8, v118, 0x80000002674571A0);
  v90(v133, 0);
  sub_266ECB294(0, &qword_2800F4540, 0x277D58A20);
  sub_266ECAF2C(&qword_2800F4548, &qword_2800F4540, 0x277D58A20, &protocol conformance descriptor for MHSchemaMHVoiceTriggerRePrompted);
  sub_26738121C();
  v73(v8, 0, 1, v77);
  v91 = sub_2673811AC();
  v92 = v120;
  sub_266EC637C(v8, v120, 0x80000002674571C0);
  v91(v133, 0);
  v93 = sub_2673811AC();
  v94 = sub_266ECB6CC(v132, v92, 0x80000002674571C0);
  if (!v125(v95, 1, v77))
  {
    sub_266ECB128(&unk_287888288);
    sub_26738115C();
  }

  (v94)(v132, 0);
  v93(v133, 0);
  sub_266ECB294(0, &qword_2800F40C0, 0x277D586E8);
  sub_266ECAF2C(&qword_2800F40B8, &qword_2800F40C0, 0x277D586E8, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority);
  sub_26738121C();
  v96 = v127;
  v97 = v129;
  v129(v8, 0, 1, v127);
  v98 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000038, 0x80000002674571E0);
  v98(v133, 0);
  sub_266ECB294(0, &qword_2800F4550, 0x277D589E8);
  sub_266ECAF2C(&qword_2800F4558, &qword_2800F4550, 0x277D589E8, &protocol conformance descriptor for MHSchemaMHVoiceProfileICloudSyncFinished);
  sub_26738121C();
  v97(v8, 0, 1, v96);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267457220);
  v99(v133, 0);
  v100 = sub_2673811AC();
  v101 = sub_266ECB6CC(v132, 0xD00000000000001ELL, 0x8000000267457220);
  if (!v125(v102, 1, v96))
  {
    sub_266ECB128(&unk_2878882B0);
    sub_26738115C();
  }

  (v101)(v132, 0);
  v100(v133, 0);
  sub_266ECB294(0, &qword_2800F4560, 0x277D58A28);
  sub_266ECAF2C(&qword_2800F4568, &qword_2800F4560, 0x277D58A28, &protocol conformance descriptor for MHSchemaMHVoiceTriggerRejectDetected);
  sub_26738121C();
  v103 = v127;
  v104 = v129;
  v129(v8, 0, 1, v127);
  v105 = sub_2673811AC();
  sub_266EC637C(v8, v119, 0x8000000267457240);
  v105(v133, 0);
  sub_266ECB294(0, &qword_2800F3E78, 0x277D58620);
  sub_266ECAF2C(&qword_2800F3E70, &qword_2800F3E78, 0x277D58620, &protocol conformance descriptor for MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried);
  sub_26738121C();
  v104(v8, 0, 1, v103);
  v106 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267457260);
  v106(v133, 0);
  sub_266ECB294(0, &qword_2800F3E90, 0x277D58628);
  sub_266ECAF2C(&qword_2800F3E88, &qword_2800F3E90, 0x277D58628, &protocol conformance descriptor for MHSchemaMHAdaptiveSiriVolumeUserIntentDetected);
  sub_26738121C();
  v104(v8, 0, 1, v103);
  v107 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267457290);
  v107(v133, 0);
  v108 = v121;
  sub_26738117C();
  v109 = sub_2673811BC();
  v111 = v110;
  v112 = *v110;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v111 = v112;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v112 = sub_266ECAD54(0, v112[2] + 1, 1, v112);
    *v111 = v112;
  }

  v115 = v112[2];
  v114 = v112[3];
  if (v115 >= v114 >> 1)
  {
    v112 = sub_266ECAD54((v114 > 1), v115 + 1, 1, v112);
    *v111 = v112;
  }

  v112[2] = v115 + 1;
  (*(v122 + 32))(v112 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v115, v108, v123);
  v109(v133, 0);
  sub_266ECB128(&unk_2878882D8);
  return sub_2673811CC();
}

uint64_t sub_2670B5608(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670B56A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670B576C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B57D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B5830(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4570, &qword_2800F1EA0, 0x277D587F0, &protocol conformance descriptor for MHSchemaMHClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F4578, &qword_2800F1EA0, 0x277D587F0, &protocol conformance descriptor for MHSchemaMHClientEvent);
  result = sub_266ECAF2C(&qword_2800F4580, &qword_2800F1EA0, 0x277D587F0, &protocol conformance descriptor for MHSchemaMHClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static MHSchemaMHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682532461, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682532461, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888310);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670B5BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B5C28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHCoreSpeechPreprocessorCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_26738113C();
  v51 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v53 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E508];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v52 = v4 + 104;
  v54[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v49 = *(v13 + 56);
  v50 = v13 + 56;
  v49(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x61636F4C70656562, 0xEC0000006E6F6974);
  v14(v54, 0);
  v11(v6, v10, v51);
  v54[0] = 1;
  sub_26738114C();
  v15 = v12;
  v16 = v12;
  v17 = v49;
  v49(v9, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F437374617473, 0xED00006465747570);
  v18(v54, 0);
  v47 = *MEMORY[0x277D3E500];
  (v11)(v6);
  v54[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x65776F5070656562, 0xE900000000000072);
  v19(v54, 0);
  v20 = v47;
  v21 = v51;
  v11(v6, v47, v51);
  v54[0] = 1;
  sub_26738114C();
  v22 = v49;
  v49(v9, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F506C616E676973, 0xEB00000000726577);
  v23(v54, 0);
  v11(v6, v20, v21);
  v48 = v11;
  v54[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v15);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E696769726FLL, 0xED00007265776F50);
  v24(v54, 0);
  v11(v6, v47, v21);
  v54[0] = 1;
  sub_26738114C();
  v25 = v49;
  v49(v9, 0, 1, v15);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x615678614D736261, 0xE90000000000006CLL);
  v26(v54, 0);
  v44 = "echPreprocessorCompleted";
  v48(v6, v47, v21);
  v54[0] = 1;
  sub_26738114C();
  v27 = v15;
  v45 = v15;
  v25(v9, 0, 1, v15);
  v28 = v25;
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v44 | 0x8000000000000000);
  v29(v54, 0);
  v44 = "aboveNinetyFivepcOfMax";
  v47 = *MEMORY[0x277D3E540];
  v30 = v47;
  v31 = v48;
  v48(v6, v47, v21);
  v54[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v44 | 0x8000000000000000);
  v32(v54, 0);
  v44 = "numTotalInputSamples";
  v33 = v51;
  v31(v6, v30, v51);
  v54[0] = 1;
  sub_26738114C();
  v34 = v45;
  v35 = v49;
  v49(v9, 0, 1, v45);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v44 | 0x8000000000000000);
  v36(v54, 0);
  v44 = "numTotalOutputSamples";
  v37 = v47;
  v38 = v33;
  v39 = v48;
  v48(v6, v47, v38);
  v54[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v34);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v44 | 0x8000000000000000);
  v40(v54, 0);
  v39(v6, v37, v51);
  v54[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v34);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674573B0);
  v41(v54, 0);
  sub_266ECB294(0, &qword_2800F4588, 0x277D58810);
  sub_266ECAF2C(&qword_2800F4590, &qword_2800F4588, 0x277D58810, &protocol conformance descriptor for MHSchemaMHCoreSpeechZeroFilterRunPair);
  sub_26738122C();
  v35(v9, 0, 1, v34);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x80000002674573D0);
  return v42(v54, 0);
}

uint64_t sub_2670B681C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B6880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHCoreSpeechZeroFilterRunPair.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "echZeroFilterRunPair";
  v9 = *MEMORY[0x277D3E540];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x4C6E75526F72657ALL, 0xED00006874676E65);
  return v14(v19, 0);
}

uint64_t sub_2670B6C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B6CC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B6D24()
{
  result = qword_2800F4590;
  if (!qword_2800F4590)
  {
    sub_2670B6D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4590);
  }

  return result;
}

unint64_t sub_2670B6D7C()
{
  result = qword_2800F4588;
  if (!qword_2800F4588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4588);
  }

  return result;
}

uint64_t static MHSchemaMHCrownPressed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267457480);
  return v8(v10, 0);
}

uint64_t sub_2670B7018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B707C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B70E0()
{
  result = qword_2800F44F8;
  if (!qword_2800F44F8)
  {
    sub_2670B7138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F44F8);
  }

  return result;
}

unint64_t sub_2670B7138()
{
  result = qword_2800F44F0;
  if (!qword_2800F44F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F44F0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B73CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B7430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7494()
{
  result = qword_2800F4598;
  if (!qword_2800F4598)
  {
    sub_2670B74EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4598);
  }

  return result;
}

unint64_t sub_2670B74EC()
{
  result = qword_2800F45A0;
  if (!qword_2800F45A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45A0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B7780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B77E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7848()
{
  result = qword_2800F45A8;
  if (!qword_2800F45A8)
  {
    sub_2670B78A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45A8);
  }

  return result;
}

unint64_t sub_2670B78A0()
{
  result = qword_2800F45B0;
  if (!qword_2800F45B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45B0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B7B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B7B98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7BFC()
{
  result = qword_2800F45B8;
  if (!qword_2800F45B8)
  {
    sub_2670B7C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45B8);
  }

  return result;
}

unint64_t sub_2670B7C54()
{
  result = qword_2800F45C0;
  if (!qword_2800F45C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45C0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointDelayContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v34 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  v31 = "iri.mh.MHEndpointDelayContext";
  v10 = *(v3 + 104);
  v33 = *MEMORY[0x277D3E540];
  v9 = v33;
  v10(v5, v33, v2);
  v29 = v10;
  v35[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v8, 0, 1, v11);
  v30 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v31 | 0x8000000000000000);
  v15(v35, 0);
  v16 = v9;
  v17 = v34;
  v28[1] = v3 + 104;
  v10(v5, v16, v34);
  v35[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E696B61657073, 0xEF734E6E49646E45);
  v18(v35, 0);
  v31 = "speakingStartInNs";
  v19 = v33;
  v20 = v17;
  v21 = v29;
  v29(v5, v33, v20);
  v35[0] = 1;
  sub_26738114C();
  v28[0] = v11;
  v13(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v31 | 0x8000000000000000);
  v22(v35, 0);
  v31 = "endpointDelayInNs";
  v23 = v19;
  v24 = v34;
  v21(v5, v23, v34);
  v35[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v31 | 0x8000000000000000);
  v25(v35, 0);
  v21(v5, v33, v24);
  v35[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v28[0]);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674575F0);
  return v26(v35, 0);
}

uint64_t sub_2670B8244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B82A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B830C()
{
  result = qword_2800F4418;
  if (!qword_2800F4418)
  {
    sub_2670B8364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4418);
  }

  return result;
}

unint64_t sub_2670B8364()
{
  result = qword_2800F4410;
  if (!qword_2800F4410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4410);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointDetected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v67 = sub_26738113C();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerType(0);
  sub_2670B9400(&qword_2800F45C8, type metadata accessor for MHSchemaMHEndpointerType, &protocol conformance descriptor for MHSchemaMHEndpointerType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v61 = v10 + 56;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E696F70646E65, 0xEE00657079547265);
  v12(v68, 0);
  v59 = *MEMORY[0x277D3E540];
  v64 = *(v3 + 104);
  v65 = v3 + 104;
  v13 = v67;
  v64(v5);
  v68[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v66 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267457640);
  v14(v68, 0);
  v57 = "endpointAudioDurationInNs";
  v62 = v5;
  v15 = v59;
  v16 = v13;
  v17 = v64;
  (v64)(v5, v59, v16);
  v68[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  v56 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, v57 | 0x8000000000000000);
  v18(v68, 0);
  v17(v62, v15, v67);
  v68[0] = 1;
  sub_26738114C();
  v58 = v11;
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  v57 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267457680);
  v19(v68, 0);
  sub_266ECB294(0, &qword_2800F45D0, 0x277D58848);
  sub_266ECAF2C(&qword_2800F45D8, &qword_2800F45D0, 0x277D58848, &protocol conformance descriptor for MHSchemaMHEndpointFeaturesAtEndpoint);
  sub_26738120C();
  v63 = v9;
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674576A0);
  v20(v68, 0);
  v55 = "endpointFeaturesAtEndpoint";
  v21 = v59;
  v22 = v67;
  v23 = v64;
  (v64)(v62, v59, v67);
  v68[0] = 1;
  sub_26738114C();
  v24 = v58;
  v58(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v55 | 0x8000000000000000);
  v25(v68, 0);
  v23(v62, v21, v22);
  v68[0] = 1;
  sub_26738114C();
  v26 = v63;
  v27 = v24;
  v24(v8, 0, 1, v63);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C65446172747865, 0xEE00734E6E497961);
  v28(v68, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v29 = v26;
  v30 = v27;
  v27(v8, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674576E0);
  v31(v68, 0);
  v55 = "endpointModelConfigVersion";
  v32 = v62;
  v33 = v67;
  v34 = v64;
  (v64)(v62, *MEMORY[0x277D3E4E8], v67);
  v68[0] = 1;
  sub_26738114C();
  v30(v8, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v55 | 0x8000000000000000);
  v35(v68, 0);
  v55 = "eFromHistoricalAudio";
  v36 = *MEMORY[0x277D3E500];
  v37 = v33;
  v38 = v34;
  (v34)(v32, v36, v37);
  v68[0] = 1;
  sub_26738114C();
  v39 = v63;
  v40 = v58;
  v58(v8, 0, 1, v63);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, v56, v55 | 0x8000000000000000);
  v41(v68, 0);
  v42 = v67;
  v38(v32, v36, v67);
  v68[0] = 1;
  sub_26738114C();
  v40(v8, 0, 1, v39);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E696F70646E65, 0xEF65726F63537265);
  v43(v68, 0);
  v56 = "endpointerThreshold";
  v44 = v59;
  v38(v32, v59, v42);
  v68[0] = 1;
  sub_26738114C();
  v45 = v58;
  v58(v8, 0, 1, v63);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, v57, v56 | 0x8000000000000000);
  v46(v68, 0);
  (v64)(v32, v44, v42);
  v68[0] = 1;
  sub_26738114C();
  v47 = v63;
  v45(v8, 0, 1, v63);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267457770);
  v48(v68, 0);
  sub_266ECB294(0, &qword_2800F45E0, 0x277D58938);
  sub_266ECAF2C(&qword_2800F45E8, &qword_2800F45E0, 0x277D58938, &protocol conformance descriptor for MHSchemaMHStatisticDistributionInfo);
  sub_26738120C();
  v45(v8, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267457790);
  v49(v68, 0);
  sub_266ECB294(0, &qword_2800F45F0, 0x277D58860);
  sub_266ECAF2C(&qword_2800F45F8, &qword_2800F45F0, 0x277D58860, &protocol conformance descriptor for MHSchemaMHEndpointerTimeoutMetadata);
  sub_26738120C();
  v45(v8, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0x4D74756F656D6974, 0xEF61746164617465);
  v50(v68, 0);
  type metadata accessor for MHSchemaMHTRPDetectionType(0);
  sub_2670B9400(&qword_2800F4600, type metadata accessor for MHSchemaMHTRPDetectionType, &protocol conformance descriptor for MHSchemaMHTRPDetectionType);
  sub_26738120C();
  v45(v8, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674577B0);
  v51(v68, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v45(v8, 0, 1, v47);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449707274, 0xE500000000000000);
  return v52(v68, 0);
}

uint64_t sub_2670B933C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B93A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B9400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MHSchemaMHEndpointerAccessibleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerAccessibleLevel(0);
  sub_2670B977C(&qword_2800F4608, type metadata accessor for MHSchemaMHEndpointerAccessibleLevel, &protocol conformance descriptor for MHSchemaMHEndpointerAccessibleLevel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267457810);
  return v5(v7, 0);
}

uint64_t sub_2670B9670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B96D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B977C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670B97C4()
{
  result = qword_2800F4440;
  if (!qword_2800F4440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4440);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerAccessibleLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267457870, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674578A0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674578D0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670B9A28(uint64_t a1)
{
  v2 = sub_2670B9B2C(&qword_2800F4610, &protocol conformance descriptor for MHSchemaMHEndpointerAccessibleLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B9A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B9B2C(&qword_2800F4610, &protocol conformance descriptor for MHSchemaMHEndpointerAccessibleLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B9B2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHEndpointerAccessibleLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerTimeoutMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x756F656D69547369, 0xE900000000000074);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E540], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267457940);
  return v13(v16, 0);
}

uint64_t sub_2670B9E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B9EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B9F60()
{
  result = qword_2800F45F8;
  if (!qword_2800F45F8)
  {
    sub_2670B9FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45F8);
  }

  return result;
}

unint64_t sub_2670B9FB8()
{
  result = qword_2800F45F0;
  if (!qword_2800F45F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45F0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267457990, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674579B0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674579D0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x80000002674579F0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267457A10, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267457A30, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x8000000267457A50, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000015, 0x8000000267457A70, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2670BA45C(uint64_t a1)
{
  v2 = sub_2670BA560(&qword_2800F4618, &protocol conformance descriptor for MHSchemaMHEndpointerType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BA4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BA560(&qword_2800F4618, &protocol conformance descriptor for MHSchemaMHEndpointerType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BA560(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHEndpointerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerUsed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerType(0);
  sub_2670BA8A8(&qword_2800F45C8, type metadata accessor for MHSchemaMHEndpointerType, &protocol conformance descriptor for MHSchemaMHEndpointerType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E696F70646E65, 0xEA00000000007265);
  v5(v7, 0);
  sub_266ECB128(&unk_287888340);
  return sub_2673811CC();
}

uint64_t sub_2670BA79C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BA800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670BA8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670BA8F0()
{
  result = qword_2800F4400;
  if (!qword_2800F4400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4400);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointFeaturesAtEndpoint.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v51 = sub_26738113C();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v54 = "tFeaturesAtEndpoint";
  v8 = *MEMORY[0x277D3E540];
  v56 = *(v2 + 104);
  v53 = v2 + 104;
  v9 = v8;
  LODWORD(v48) = v8;
  v56(v4);
  v57[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v7, 0, 1, v10);
  v49 = v12;
  v55 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v54 | 0x8000000000000000);
  v14(v57, 0);
  v54 = "trailingSilenceDurationInNs";
  v15 = v56;
  (v56)(v4, v9, v51);
  v57[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v54 | 0x8000000000000000);
  v16(v57, 0);
  v47 = "clientSilenceFramesCountInNs";
  LODWORD(v54) = *MEMORY[0x277D3E500];
  v15(v4);
  v57[0] = 1;
  sub_26738114C();
  v52 = v10;
  v50 = v13;
  v17 = v49;
  v49(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v47 | 0x8000000000000000);
  v18(v57, 0);
  LODWORD(v47) = *MEMORY[0x277D3E538];
  v19 = v56;
  v56(v4);
  v57[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E756F4364726F77, 0xE900000000000074);
  v20(v57, 0);
  v46 = "endOfSentenceLikelihood";
  v21 = v51;
  (v19)(v4, v48, v51);
  v57[0] = 1;
  sub_26738114C();
  v22 = v49;
  v49(v7, 0, 1, v52);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v46 | 0x8000000000000000);
  v23(v57, 0);
  v46 = "serverFeaturesLatencyInNs";
  (v19)(v4, v54, v21);
  v57[0] = 1;
  sub_26738114C();
  v24 = v52;
  v25 = v22;
  v22(v7, 0, 1, v52);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v46 | 0x8000000000000000);
  v26(v57, 0);
  v46 = "clientSilenceProbability";
  v27 = v51;
  v28 = v56;
  (v56)(v4, v48, v51);
  v57[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v46 | 0x8000000000000000);
  v29(v57, 0);
  v45 = v4;
  v46 = "rcTrailingSilenceDuration";
  (v28)(v4, v54, v27);
  v57[0] = 1;
  sub_26738114C();
  v30 = v52;
  v31 = v49;
  v49(v7, 0, 1, v52);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v46 | 0x8000000000000000);
  v32(v57, 0);
  v33 = v45;
  (v28)(v45, v47, v27);
  v57[0] = 1;
  sub_26738114C();
  v31(v7, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F4364726F576372, 0xEB00000000746E75);
  v34(v57, 0);
  v47 = "rcEndOfSentenceLikelihood";
  (v28)(v33, v48, v27);
  v57[0] = 1;
  sub_26738114C();
  v31(v7, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v47 | 0x8000000000000000);
  v35(v57, 0);
  v48 = "rcServerFeaturesLatency";
  v36 = v54;
  v37 = v56;
  (v56)(v33, v54, v27);
  v57[0] = 1;
  sub_26738114C();
  v38 = v52;
  v31(v7, 0, 1, v52);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v48 | 0x8000000000000000);
  v39(v57, 0);
  v48 = "silencePosterior";
  v40 = v51;
  v37(v33, v36, v51);
  v57[0] = 1;
  sub_26738114C();
  v41 = v49;
  v49(v7, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v48 | 0x8000000000000000);
  v42(v57, 0);
  (v56)(v33, v54, v40);
  v57[0] = 1;
  sub_26738114C();
  v41(v7, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267457C40);
  return v43(v57, 0);
}

uint64_t sub_2670BB568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BB5CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BB630()
{
  result = qword_2800F45D8;
  if (!qword_2800F45D8)
  {
    sub_2670BB688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45D8);
  }

  return result;
}

unint64_t sub_2670BB688()
{
  result = qword_2800F45D0;
  if (!qword_2800F45D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45D0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointLatencyInfoReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v6, *MEMORY[0x277D3E540], v3);
  v36[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267457CA0);
  v13(v36, 0);
  sub_266ECB294(0, &qword_2800F4620, 0x277D58950);
  sub_266ECAF2C(&qword_2800F4628, &qword_2800F4620, 0x277D58950, &protocol conformance descriptor for MHSchemaMHTrailingPacketLatencyInfo);
  sub_26738120C();
  v31 = v12;
  v32 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267457CC0);
  v14(v36, 0);
  v33 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0xD000000000000019, 0x8000000267457CC0);
  v17 = *(v11 + 48);
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_287888368);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  sub_26738120C();
  v31(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x8000000267457CE0);
  v19(v36, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v35, 0xD000000000000023, 0x8000000267457CE0);
  if (!v17(v22, 1, v10))
  {
    sub_266ECB128(&unk_287888390);
    sub_26738115C();
  }

  (v21)(v35, 0);
  v20(v36, 0);
  v30 = "ngPacketLatencyInfo";
  sub_266ECB294(0, &qword_2800F45E0, 0x277D58938);
  sub_266ECAF2C(&qword_2800F45E8, &qword_2800F45E0, 0x277D58938, &protocol conformance descriptor for MHSchemaMHStatisticDistributionInfo);
  sub_26738120C();
  v23 = v10;
  v24 = v10;
  v25 = v31;
  v31(v9, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v30 | 0x8000000000000000);
  v26(v36, 0);
  sub_26738120C();
  v25(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267457D30);
  return v27(v36, 0);
}

uint64_t sub_2670BBD54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BBDB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHFirstPassEnhancedCarplayTriggerMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267457D90, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267457DC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003DLL, 0x8000000267457DF0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x8000000267457E30, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670BC0E0(uint64_t a1)
{
  v2 = sub_2670BC1E4(&qword_2800F4630, &protocol conformance descriptor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BC148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BC1E4(&qword_2800F4630, &protocol conformance descriptor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BC1E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHHostPowerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267457EA0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267457EC0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267457EE0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267457F00, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267457F20, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670BC520(uint64_t a1)
{
  v2 = sub_2670BC624(&qword_2800F4640, &protocol conformance descriptor for MHSchemaMHHostPowerState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BC588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BC624(&qword_2800F4640, &protocol conformance descriptor for MHSchemaMHHostPowerState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BC624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHHostPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6F687365726874, 0xE900000000000064);
  return v14(v18, 0);
}

uint64_t sub_2670BC988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BC9EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BCA50()
{
  result = qword_2800F4648;
  if (!qword_2800F4648)
  {
    sub_2670BCAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4648);
  }

  return result;
}

unint64_t sub_2670BCAA8()
{
  result = qword_2800F4650;
  if (!qword_2800F4650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4650);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4658, 0x277D58888);
  sub_266ECAF2C(&qword_2800F4660, &qword_2800F4658, 0x277D58888, &protocol conformance descriptor for MHSchemaMHLatticeFalseTriggerMitigationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F4650, 0x277D58870);
  sub_266ECAF2C(&qword_2800F4648, &qword_2800F4650, 0x277D58870, &protocol conformance descriptor for MHSchemaMHLatticeFalseTriggerMitigationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4668, 0x277D58880);
  sub_266ECAF2C(&qword_2800F4670, &qword_2800F4668, 0x277D58880, &protocol conformance descriptor for MHSchemaMHLatticeFalseTriggerMitigationFailed);
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

uint64_t sub_2670BD00C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD070(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BD364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BD42C()
{
  result = qword_2800F4670;
  if (!qword_2800F4670)
  {
    sub_2670BD484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4670);
  }

  return result;
}

unint64_t sub_2670BD484()
{
  result = qword_2800F4668;
  if (!qword_2800F4668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4668);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v8(v10, 0);
}

uint64_t sub_2670BD724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BD7EC()
{
  result = qword_2800F4660;
  if (!qword_2800F4660)
  {
    sub_2670BD844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4660);
  }

  return result;
}

unint64_t sub_2670BD844()
{
  result = qword_2800F4658;
  if (!qword_2800F4658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4658);
  }

  return result;
}

uint64_t static MHSchemaMHMitigationDecisionRecommended.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267458090);
  return v8(v10, 0);
}

uint64_t sub_2670BDAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BDB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BDBA8()
{
  result = qword_2800F4428;
  if (!qword_2800F4428)
  {
    sub_2670BDC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4428);
  }

  return result;
}

unint64_t sub_2670BDC00()
{
  result = qword_2800F4420;
  if (!qword_2800F4420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4420);
  }

  return result;
}

uint64_t static MHSchemaMHOdldFalseTriggerMitigated.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v56 = sub_26738113C();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v51 = a2;
  sub_26738119C();
  v47 = *MEMORY[0x277D3E530];
  v9 = *(v3 + 104);
  v9(v5);
  v58[0] = 1;
  sub_26738114C();
  v50 = sub_26738116C();
  v48 = *(v50 - 8);
  v10 = v48 + 56;
  v11 = *(v48 + 56);
  v11(v8, 0, 1, v50);
  v45 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v12(v58, 0);
  v13 = *MEMORY[0x277D3E500];
  v14 = v56;
  (v9)(v5, v13, v56);
  v54 = v9;
  v58[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v50);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F6353646C646FLL, 0xE900000000000065);
  v15(v58, 0);
  v44 = "seTriggerMitigated";
  v16 = v5;
  v52 = v13;
  v17 = v13;
  v18 = v5;
  v19 = v14;
  (v9)(v16, v17, v14);
  v58[0] = 1;
  sub_26738114C();
  v20 = v50;
  v21 = v45;
  v45(v8, 0, 1, v50);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v44 | 0x8000000000000000);
  v22(v58, 0);
  v55 = v3 + 104;
  (v54)(v18, v47, v19);
  v23 = v10;
  v58[0] = 1;
  v24 = v18;
  sub_26738114C();
  v25 = v21;
  v53 = v23;
  v21(v8, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x73654D726F727265, 0xEC00000065676173);
  v26(v58, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v57, 0x73654D726F727265, 0xEC00000065676173);
  if (!(*(v48 + 48))(v29, 1, v20))
  {
    sub_266ECB128(&unk_2878883B8);
    sub_26738115C();
  }

  (v28)(v57, 0);
  v27(v58, 0);
  v30 = *MEMORY[0x277D3E538];
  v46 = v24;
  (v54)(v24, v30, v56);
  v58[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v20);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v31(v58, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v32 = v20;
  v25(v8, 0, 1, v20);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x6552726F68636E61, 0xEF64497473657571);
  v33(v58, 0);
  sub_26738120C();
  v34 = v25;
  v25(v8, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267458110);
  v35(v58, 0);
  v49 = "previousRequestId";
  v36 = v46;
  v37 = v56;
  v38 = v54;
  (v54)(v46, v52, v56);
  v58[0] = 1;
  sub_26738114C();
  v39 = v50;
  v34(v8, 0, 1, v50);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v49 | 0x8000000000000000);
  v40(v58, 0);
  (v38)(v36, v52, v37);
  v58[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0x63536C6169636F73, 0xEB0000000065726FLL);
  v41(v58, 0);
  (v38)(v36, v52, v37);
  v58[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v39);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267458150);
  return v42(v58, 0);
}

uint64_t sub_2670BE67C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BE6E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHOnDeviceEndpointerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x64656C62616E65, 0xE700000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_2878883E0);
  return sub_2673811CC();
}

uint64_t sub_2670BE9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BEA4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BEAB0()
{
  result = qword_2800F43E8;
  if (!qword_2800F43E8)
  {
    sub_2670BEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F43E8);
  }

  return result;
}

unint64_t sub_2670BEB08()
{
  result = qword_2800F43E0;
  if (!qword_2800F43E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F43E0);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15 = a1;
  sub_26738119C();
  v16 = "SpeakFirstPassPolicyTriggered";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E518], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267458210);
  return v13(v17, 0);
}

uint64_t sub_2670BEE88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BEEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BEF50()
{
  result = qword_2800F4518;
  if (!qword_2800F4518)
  {
    sub_2670BEFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4518);
  }

  return result;
}

unint64_t sub_2670BEFA8()
{
  result = qword_2800F4510;
  if (!qword_2800F4510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4510);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v23 = sub_26738113C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = "olicyDecisionMade";
  v21 = *MEMORY[0x277D3E4E8];
  v20 = *(v2 + 104);
  v20(v4);
  v18[2] = v2 + 104;
  v24[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v22 = *(*(v8 - 8) + 56);
  v22(v7, 0, 1, v8);
  v18[1] = a1;
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v19 | 0x8000000000000000);
  v9(v24, 0);
  v19 = "isSecondPassTriggered";
  v10 = *MEMORY[0x277D3E518];
  v11 = v23;
  v12 = v20;
  (v20)(v4, v10, v23);
  v24[0] = 1;
  sub_26738114C();
  v13 = v22;
  v22(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v19 | 0x8000000000000000);
  v14(v24, 0);
  v19 = "speakingProbability";
  (v12)(v4, v10, v11);
  v24[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v19 | 0x8000000000000000);
  v15(v24, 0);
  (v12)(v4, v21, v23);
  v24[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x80000002674581F0);
  return v16(v24, 0);
}

uint64_t sub_2670BF4DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BF540(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BF5A4()
{
  result = qword_2800F4528;
  if (!qword_2800F4528)
  {
    sub_2670BF5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4528);
  }

  return result;
}

unint64_t sub_2670BF5FC()
{
  result = qword_2800F4520;
  if (!qword_2800F4520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4520);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakTriggered.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BF890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BF8F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BF958()
{
  result = qword_2800F4508;
  if (!qword_2800F4508)
  {
    sub_2670BF9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4508);
  }

  return result;
}

unint64_t sub_2670BF9B0()
{
  result = qword_2800F4500;
  if (!qword_2800F4500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4500);
  }

  return result;
}

uint64_t static MHSchemaMHRTSFalseRejectDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v26 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E538];
  v25 = *(v1 + 104);
  v25(v3, v7, v0);
  v20[1] = v1 + 104;
  v27[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v23 = *(v9 + 56);
  v24 = v9 + 56;
  v21 = v8;
  v23(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265567465737361, 0xEC0000006E6F6973);
  v10(v27, 0);
  v20[0] = "iri.mh.MHRTSFalseRejectDetected";
  v22 = *MEMORY[0x277D3E530];
  v11 = v22;
  v13 = v25;
  v12 = v26;
  v25(v3, v22, v26);
  v27[0] = 1;
  sub_26738114C();
  v14 = v23;
  v23(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, v20[0] | 0x8000000000000000);
  v15(v27, 0);
  v20[0] = "gestureModelVersion";
  v13(v3, v11, v12);
  v27[0] = 1;
  sub_26738114C();
  v16 = v21;
  v14(v6, 0, 1, v21);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, v20[0] | 0x8000000000000000);
  v17(v27, 0);
  v13(v3, v22, v26);
  v27[0] = 1;
  sub_26738114C();
  v14(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267458380);
  return v18(v27, 0);
}

uint64_t sub_2670BFED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BFF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BFF9C()
{
  result = qword_2800F4488;
  if (!qword_2800F4488)
  {
    sub_2670BFFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4488);
  }

  return result;
}

unint64_t sub_2670BFFF4()
{
  result = qword_2800F4480;
  if (!qword_2800F4480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4480);
  }

  return result;
}

uint64_t static MHSchemaMHSelfTriggerSuppressionAudioSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674583E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x8000000267458410, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267458460, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670C0254(uint64_t a1)
{
  v2 = sub_2670C0358(&qword_2800F4680, &protocol conformance descriptor for MHSchemaMHSelfTriggerSuppressionAudioSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C02BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C0358(&qword_2800F4680, &protocol conformance descriptor for MHSchemaMHSelfTriggerSuppressionAudioSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C0358(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHSelfTriggerSuppressionSession.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v4 + 104);
  v33 = v4 + 104;
  v34 = v11;
  v29 = v3;
  v11(v6, v10, v3);
  v35[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v31 = *(v13 + 56);
  v32 = v12;
  v14 = v13 + 56;
  v31(v9, 0, 1, v12);
  v28[1] = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, 0x80000002674584D0);
  v15(v35, 0);
  v16 = v34;
  v34(v6, *MEMORY[0x277D3E518], v3);
  v35[0] = 1;
  sub_26738114C();
  v17 = v12;
  v28[0] = v14;
  v18 = v31;
  v31(v9, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267458500);
  v19(v35, 0);
  type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource(0);
  sub_2670C0A4C(&qword_2800F4678, type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource, &protocol conformance descriptor for MHSchemaMHSelfTriggerSuppressionAudioSource);
  sub_26738120C();
  v20 = v32;
  v18(v9, 0, 1, v32);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x756F536F69647561, 0xEB00000000656372);
  v21(v35, 0);
  v22 = *MEMORY[0x277D3E4E8];
  v23 = v29;
  v16(v6, v22, v29);
  v35[0] = 1;
  sub_26738114C();
  v24 = v31;
  v31(v9, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267458520);
  v25(v35, 0);
  v34(v6, v22, v23);
  v35[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v32);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267458540);
  return v26(v35, 0);
}

uint64_t sub_2670C0940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C09A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670C0A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670C0A94()
{
  result = qword_2800F4690;
  if (!qword_2800F4690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4690);
  }

  return result;
}

uint64_t static MHSchemaMHServerEndpointerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x64656C62616E65, 0xE700000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_287888408);
  return sub_2673811CC();
}

uint64_t sub_2670C0D44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C0DA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C0E0C()
{
  result = qword_2800F43F8;
  if (!qword_2800F43F8)
  {
    sub_2670C0E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F43F8);
  }

  return result;
}

unint64_t sub_2670C0E64()
{
  result = qword_2800F43F0;
  if (!qword_2800F43F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F43F0);
  }

  return result;
}

uint64_t static MHSchemaMHSiriDirectedSpeechDetectionFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x73654D726F727265, 0xEC00000065676173);
  v11(v22, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v21, 0x73654D726F727265, 0xEC00000065676173);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287888430);
    sub_26738115C();
  }

  (v13)(v21, 0);
  v12(v22, 0);
  v18(v3, *MEMORY[0x277D3E538], v20);
  v22[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v15(v22, 0);
}

uint64_t sub_2670C1294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C12F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C135C()
{
  result = qword_2800F4478;
  if (!qword_2800F4478)
  {
    sub_2670C13B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4478);
  }

  return result;
}

unint64_t sub_2670C13B4()
{
  result = qword_2800F4470;
  if (!qword_2800F4470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4470);
  }

  return result;
}

uint64_t static MHSchemaMHSiriLaunchRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4698, 0x277D588F0);
  sub_266ECAF2C(&qword_2800F46A0, &qword_2800F4698, 0x277D588F0, &protocol conformance descriptor for MHSchemaMHSiriLaunchRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F46A8, 0x277D588E8);
  sub_266ECAF2C(&qword_2800F46B0, &qword_2800F46A8, 0x277D588E8, &protocol conformance descriptor for MHSchemaMHSiriLaunchRequestEnded);
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

uint64_t sub_2670C184C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C18B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSiriLaunchRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C1B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C1C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C1C64()
{
  result = qword_2800F46B0;
  if (!qword_2800F46B0)
  {
    sub_2670C1CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46B0);
  }

  return result;
}

unint64_t sub_2670C1CBC()
{
  result = qword_2800F46A8;
  if (!qword_2800F46A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46A8);
  }

  return result;
}

uint64_t static MHSchemaMHSiriLaunchRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C1F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C1FB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C2018()
{
  result = qword_2800F46A0;
  if (!qword_2800F46A0)
  {
    sub_2670C2070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46A0);
  }

  return result;
}

unint64_t sub_2670C2070()
{
  result = qword_2800F4698;
  if (!qword_2800F4698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4698);
  }

  return result;
}

uint64_t static MHSchemaMHSpeakerFalseTriggerMitigated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_26738113C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v30) = *MEMORY[0x277D3E530];
  v34 = *(v2 + 104);
  v34(v4);
  v37[0] = 1;
  sub_26738114C();
  v31 = sub_26738116C();
  v28 = *(v31 - 8);
  v8 = (v28 + 56);
  v9 = *(v28 + 56);
  (v9)(v7, 0, 1, v31);
  v33 = a1;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v10(v37, 0);
  v29 = "FalseTriggerMitigated";
  v11 = *MEMORY[0x277D3E500];
  v12 = v32;
  v13 = v34;
  (v34)(v4, v11, v32);
  v35 = v2 + 104;
  v37[0] = 1;
  sub_26738114C();
  (v9)(v7, 0, 1, v31);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v29 | 0x8000000000000000);
  v14(v37, 0);
  v13(v4, v11, v12);
  v37[0] = 1;
  sub_26738114C();
  v15 = v31;
  (v9)(v7, 0, 1, v31);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6F687365726874, 0xEE0065726F635364);
  v16(v37, 0);
  (v34)(v4, v30, v12);
  v37[0] = 1;
  sub_26738114C();
  v29 = v9;
  v30 = v8;
  (v9)(v7, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x73654D726F727265, 0xEC00000065676173);
  v17(v37, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v36, 0x73654D726F727265, 0xEC00000065676173);
  v20 = v15;
  if (!(*(v28 + 48))(v21, 1, v15))
  {
    sub_266ECB128(&unk_287888458);
    sub_26738115C();
  }

  (v19)(v36, 0);
  v18(v37, 0);
  v28 = "speakerMatchScore";
  v22 = v32;
  v23 = v34;
  (v34)(v4, *MEMORY[0x277D3E518], v32);
  v37[0] = 1;
  sub_26738114C();
  v24 = v29;
  (v29)(v7, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v28 | 0x8000000000000000);
  v25(v37, 0);
  (v23)(v4, *MEMORY[0x277D3E538], v22);
  v37[0] = 1;
  sub_26738114C();
  v24(v7, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v26(v37, 0);
}

uint64_t sub_2670C27F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C2858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C28BC()
{
  result = qword_2800F4468;
  if (!qword_2800F4468)
  {
    sub_2670C2914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4468);
  }

  return result;
}

unint64_t sub_2670C2914()
{
  result = qword_2800F4460;
  if (!qword_2800F4460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4460);
  }

  return result;
}

uint64_t static MHSchemaMHSpeechDetectorContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F46B8, 0x277D58928);
  sub_266ECAF2C(&qword_2800F46C0, &qword_2800F46B8, 0x277D58928, &protocol conformance descriptor for MHSchemaMHSpeechDetectorEnded);
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

uint64_t sub_2670C2CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C2D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSpeechDetectorEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738113C();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v22 = v8 + 56;
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267458110);
  v10(v24, 0);
  v20 = "iri.mh.MHSpeechDetectorEnded";
  v11 = *MEMORY[0x277D3E540];
  v21 = *(v1 + 104);
  v12 = v23;
  v21(v3, v11, v23);
  v24[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, v20 | 0x8000000000000000);
  v13(v24, 0);
  v20 = "eptedRequestInNs";
  v14 = *MEMORY[0x277D3E500];
  v15 = v12;
  v16 = v21;
  v21(v3, v14, v15);
  v24[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, v20 | 0x8000000000000000);
  v17(v24, 0);
  v16(v3, v14, v23);
  v24[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x80000002674587C0);
  return v18(v24, 0);
}

uint64_t sub_2670C32B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C331C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSpeechErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267458820, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267458840, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2670C3564(uint64_t a1)
{
  v2 = sub_2670C3668(&qword_2800F46C8, &protocol conformance descriptor for MHSchemaMHSpeechErrorType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C35CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C3668(&qword_2800F46C8, &protocol conformance descriptor for MHSchemaMHSpeechErrorType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C3668(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHSpeechErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHSpeechStopDetected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C387C(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C3A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C3A78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHStatisticDistributionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v35 = v3 + 104;
  v36 = v9;
  v39[0] = 1;
  sub_26738114C();
  v33 = sub_26738116C();
  v10 = *(v33 - 8);
  v11 = *(v10 + 56);
  v34 = v10 + 56;
  v11(v8, 0, 1, v33);
  v32[1] = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 7173486, 0xE300000000000000);
  v12(v39, 0);
  v38 = *MEMORY[0x277D3E540];
  v13 = v38;
  v37 = v2;
  v9(v5, v38, v2);
  v39[0] = 1;
  sub_26738114C();
  v14 = v33;
  v15 = v11;
  v11(v8, 0, 1, v33);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 7889261, 0xE300000000000000);
  v16(v39, 0);
  v17 = v2;
  v18 = v36;
  v36(v5, v13, v17);
  v39[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 7235949, 0xE300000000000000);
  v19(v39, 0);
  v18(v5, v38, v37);
  v39[0] = 1;
  sub_26738114C();
  v32[0] = v15;
  v15(v8, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 6780513, 0xE300000000000000);
  v20(v39, 0);
  v21 = v38;
  v22 = v37;
  v36(v5, v38, v37);
  v39[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E616964656DLL, 0xE600000000000000);
  v23(v39, 0);
  v24 = v36;
  v36(v5, v21, v22);
  v39[0] = 1;
  sub_26738114C();
  v25 = v32[0];
  (v32[0])(v8, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 3488112, 0xE300000000000000);
  v26(v39, 0);
  v27 = v37;
  v24(v5, *MEMORY[0x277D3E500], v37);
  v39[0] = 1;
  sub_26738114C();
  v28 = v33;
  v25(v8, 0, 1, v33);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 6583411, 0xE300000000000000);
  v29(v39, 0);
  v24(v5, v38, v27);
  v39[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x70756D726177, 0xE600000000000000);
  return v30(v39, 0);
}

uint64_t sub_2670C4280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C42E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C4348()
{
  result = qword_2800F45E8;
  if (!qword_2800F45E8)
  {
    sub_2670C43A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45E8);
  }

  return result;
}

unint64_t sub_2670C43A0()
{
  result = qword_2800F45E0;
  if (!qword_2800F45E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45E0);
  }

  return result;
}

uint64_t static MHSchemaMHStoppedListeningForSpeechContinuation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C45BC(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C4754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C47B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHTrailingPacketLatencyInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v36 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v32 = v3 + 104;
  v37 = v9;
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v35 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 7173486, 0xE300000000000000);
  v12(v38, 0);
  v31 = *MEMORY[0x277D3E540];
  v13 = v31;
  v14 = v36;
  v9(v5, v31, v36);
  v38[0] = 1;
  sub_26738114C();
  v15 = v10;
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 7889261, 0xE300000000000000);
  v16(v38, 0);
  v17 = v14;
  v18 = v14;
  v19 = v37;
  v37(v5, v13, v17);
  v38[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 7235949, 0xE300000000000000);
  v20(v38, 0);
  v21 = v31;
  v19(v5, v31, v18);
  v38[0] = 1;
  sub_26738114C();
  v34 = v15;
  v22 = v35;
  v35(v8, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 6780513, 0xE300000000000000);
  v23(v38, 0);
  v37(v5, v21, v36);
  v38[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v15);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E616964656DLL, 0xE600000000000000);
  v24(v38, 0);
  v25 = v36;
  v26 = v37;
  v37(v5, v21, v36);
  v38[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v34);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 3488112, 0xE300000000000000);
  v27(v38, 0);
  v26(v5, v31, v25);
  v38[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v34);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 6583411, 0xE300000000000000);
  return v28(v38, 0);
}

uint64_t sub_2670C4F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C4F74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C4FD8()
{
  result = qword_2800F4628;
  if (!qword_2800F4628)
  {
    sub_2670C5030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4628);
  }

  return result;
}

unint64_t sub_2670C5030()
{
  result = qword_2800F4620;
  if (!qword_2800F4620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4620);
  }

  return result;
}

uint64_t static MHSchemaMHTRPCreated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674206D0);
  return v10(v14, 0);
}

uint64_t sub_2670C53AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C5410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHTRPDetectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674589C0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674589E0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267458A00, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2670C56C8(uint64_t a1)
{
  v2 = sub_2670C57CC(&qword_2800F46D0, &protocol conformance descriptor for MHSchemaMHTRPDetectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C5730(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C57CC(&qword_2800F46D0, &protocol conformance descriptor for MHSchemaMHTRPDetectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C57CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHTRPDetectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v30 = *MEMORY[0x277D3E530];
  v34 = *(v3 + 104);
  v9 = v2;
  v34(v5);
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v31 = *(v10 - 8);
  v11 = v31 + 56;
  v35 = *(v31 + 56);
  v29[0] = v10;
  v35(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v12(v38, 0);
  v32 = *MEMORY[0x277D3E500];
  v13 = v32;
  v33 = v9;
  v14 = v34;
  (v34)(v5, v32, v9);
  v38[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v15(v38, 0);
  v14(v5, v13, v9);
  v29[1] = v3 + 104;
  v38[0] = 1;
  sub_26738114C();
  v16 = v29[0];
  v17 = v35;
  v29[2] = v11;
  v35(v8, 0, 1, v29[0]);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6F687365726874, 0xE900000000000064);
  v18(v38, 0);
  v19 = v33;
  v20 = v34;
  (v34)(v5, v30, v33);
  v38[0] = 1;
  sub_26738114C();
  v21 = v16;
  v17(v8, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267458A60);
  v22(v38, 0);
  (v20)(v5, v32, v19);
  v38[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267458A80);
  v23(v38, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v37, 0xD000000000000012, 0x8000000267458A80);
  if (!(*(v31 + 48))(v26, 1, v21))
  {
    sub_266ECB128(&unk_287888480);
    sub_26738115C();
  }

  (v25)(v37, 0);
  v24(v38, 0);
  (v34)(v5, v32, v33);
  v38[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267458AA0);
  return v27(v38, 0);
}

uint64_t sub_2670C5F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C5F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C5FDC()
{
  result = qword_2800F46D8;
  if (!qword_2800F46D8)
  {
    sub_2670C6034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46D8);
  }

  return result;
}

unint64_t sub_2670C6034()
{
  result = qword_2800F46E0;
  if (!qword_2800F46E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46E0);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F46E8, 0x277D58970);
  sub_266ECAF2C(&qword_2800F46F0, &qword_2800F46E8, 0x277D58970, &protocol conformance descriptor for MHSchemaMHUnintendedResponseSuppressionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F46E0, 0x277D58958);
  sub_266ECAF2C(&qword_2800F46D8, &qword_2800F46E0, 0x277D58958, &protocol conformance descriptor for MHSchemaMHUnintendedResponseSuppressionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F46F8, 0x277D58968);
  sub_266ECAF2C(&qword_2800F4700, &qword_2800F46F8, 0x277D58968, &protocol conformance descriptor for MHSchemaMHUnintendedResponseSuppressionFailed);
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

uint64_t sub_2670C6598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C65FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C68F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C6954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C69B8()
{
  result = qword_2800F4700;
  if (!qword_2800F4700)
  {
    sub_2670C6A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4700);
  }

  return result;
}

unint64_t sub_2670C6A10()
{
  result = qword_2800F46F8;
  if (!qword_2800F46F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46F8);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E538];
  v9 = *(v2 + 104);
  v22 = v1;
  v23 = v2 + 104;
  v9(v4, v8, v1);
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v25 = v11 + 56;
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x65527273416D756ELL, 0xED00007364726F63);
  v13(v26, 0);
  v21 = "dedResponseSuppressionStarted";
  v9(v4, v8, v1);
  v26[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v21 | 0x8000000000000000);
  v14(v26, 0);
  v9(v4, *MEMORY[0x277D3E540], v22);
  v26[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267457B00);
  v15(v26, 0);
  sub_266ECB294(0, &qword_2800F3E18, 0x277D585F8);
  sub_266ECAF2C(&qword_2800F3E20, &qword_2800F3E18, 0x277D585F8, &protocol conformance descriptor for MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F63536D746661, 0xE900000000000065);
  v16(v26, 0);
  sub_266ECB294(0, &qword_2800F4650, 0x277D58870);
  sub_266ECAF2C(&qword_2800F4648, &qword_2800F4650, 0x277D58870, &protocol conformance descriptor for MHSchemaMHLatticeFalseTriggerMitigationEnded);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F63536E6E726CLL, 0xE900000000000065);
  v17(v26, 0);
  sub_266ECB294(0, &qword_2800F4708, 0x277D58998);
  sub_266ECAF2C(&qword_2800F4710, &qword_2800F4708, 0x277D58998, &protocol conformance descriptor for MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F63536D6575, 0xE800000000000000);
  return v18(v26, 0);
}

uint64_t sub_2670C70DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C7140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementAccumulatedAggregationStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = "edAggregationStats";
  v28 = *MEMORY[0x277D3E518];
  v10 = *(v4 + 104);
  v24 = v3;
  v10(v6);
  v25 = v4 + 104;
  v26 = v10;
  v31[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v29 = v12 + 56;
  v13(v9, 0, 1, v11);
  v22[1] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v23 | 0x8000000000000000);
  v14(v31, 0);
  v23 = "aggregationStartTimestamp";
  (v10)(v6, *MEMORY[0x277D3E508], v3);
  v31[0] = 1;
  sub_26738114C();
  v30 = v11;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v23 | 0x8000000000000000);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F4718, 0x277D58980);
  sub_266ECAF2C(&qword_2800F4720, &qword_2800F4718, 0x277D58980, &protocol conformance descriptor for MHSchemaMHUserEngagementAggregatedStats);
  sub_26738122C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267458C40);
  v16(v31, 0);
  v17 = v24;
  v18 = v26;
  (v26)(v6, *MEMORY[0x277D3E530], v24);
  v31[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v30);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x795474726F686F63, 0xEA00000000006570);
  v19(v31, 0);
  (v18)(v6, v28, v17);
  v31[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v30);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267458C60);
  return v20(v31, 0);
}

uint64_t sub_2670C779C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C7800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementAggregatedStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism(0);
  sub_2670C8108(&qword_2800F4738, type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism, &protocol conformance descriptor for MHSchemaMHUserEngagementModelTriggerMechanism);
  sub_26738120C();
  v40 = sub_26738116C();
  v10 = *(v40 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v9, 0, 1, v40);
  v33 = v12;
  v36 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461676974696DLL, 0xEE00657079546E6FLL);
  v13(v41, 0);
  v14 = *MEMORY[0x277D3E508];
  v38 = *(v4 + 104);
  v39 = v4 + 104;
  LODWORD(v35) = v14;
  v37 = v3;
  v38(v6, v14, v3);
  v41[0] = 1;
  sub_26738114C();
  v15 = v40;
  v11(v9, 0, 1, v40);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x4374736575716572, 0xEC000000746E756FLL);
  v16(v41, 0);
  v17 = v38;
  v38(v6, v14, v3);
  v41[0] = 1;
  sub_26738114C();
  v34 = v11;
  v11(v9, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267458CC0);
  v18(v41, 0);
  v19 = v37;
  v17(v6, v35, v37);
  v41[0] = 1;
  sub_26738114C();
  v20 = v40;
  v11(v9, 0, 1, v40);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267458CE0);
  v21(v41, 0);
  v35 = "aggregationStats";
  v22 = *MEMORY[0x277D3E518];
  v32 = v6;
  v23 = v38;
  v38(v6, v22, v19);
  v41[0] = 1;
  sub_26738114C();
  v24 = v34;
  v34(v9, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v35 | 0x8000000000000000);
  v25(v41, 0);
  v35 = "unintendedRequestCount";
  v26 = v32;
  v23(v32, v22, v19);
  v41[0] = 1;
  sub_26738114C();
  v27 = v40;
  v24(v9, 0, 1, v40);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v35 | 0x8000000000000000);
  v28(v41, 0);
  v23(v26, *MEMORY[0x277D3E530], v37);
  v41[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v29(v41, 0);
}

uint64_t sub_2670C7FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670C8108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670C8150()
{
  result = qword_2800F4718;
  if (!qword_2800F4718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4718);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4740, 0x277D589A0);
  sub_266ECAF2C(&qword_2800F4748, &qword_2800F4740, 0x277D589A0, &protocol conformance descriptor for MHSchemaMHUserEngagementFalseTriggerMitigationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F4708, 0x277D58998);
  sub_266ECAF2C(&qword_2800F4710, &qword_2800F4708, 0x277D58998, &protocol conformance descriptor for MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4750, 0x277D58990);
  sub_266ECAF2C(&qword_2800F4758, &qword_2800F4750, 0x277D58990, &protocol conformance descriptor for MHSchemaMHUserEngagementFalseTriggerMitigationFailed);
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

uint64_t sub_2670C86B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C8A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C8AD4()
{
  result = qword_2800F4758;
  if (!qword_2800F4758)
  {
    sub_2670C8B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4758);
  }

  return result;
}

unint64_t sub_2670C8B2C()
{
  result = qword_2800F4750;
  if (!qword_2800F4750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4750);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F63536D6575, 0xE800000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x73657268546D6575, 0xEC000000646C6F68);
  return v14(v18, 0);
}

uint64_t sub_2670C8EA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8F04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C8F68()
{
  result = qword_2800F4710;
  if (!qword_2800F4710)
  {
    sub_2670C8FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4710);
  }

  return result;
}

unint64_t sub_2670C8FC0()
{
  result = qword_2800F4708;
  if (!qword_2800F4708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4708);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v1 = sub_26738113C();
  v15[0] = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E530], v1);
  v16[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v11(v16, 0);
  v8(v4, *MEMORY[0x277D3E518], v15[0]);
  v16[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267458E60);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F4730, 0x277D58978);
  sub_266ECAF2C(&qword_2800F4728, &qword_2800F4730, 0x277D58978, &protocol conformance descriptor for MHSchemaMHUserEngagementAccumulatedAggregationStats);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267458E80);
  return v13(v16, 0);
}

uint64_t sub_2670C9410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C9474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementModelTriggerMechanism.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267458EE0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267458F10, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267458F50, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x8000000267458F90, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670C979C(uint64_t a1)
{
  v2 = sub_2670C98A0(&qword_2800F4760, &protocol conformance descriptor for MHSchemaMHUserEngagementModelTriggerMechanism);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C9804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C98A0(&qword_2800F4760, &protocol conformance descriptor for MHSchemaMHUserEngagementModelTriggerMechanism);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C98A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHUserSpeakingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4768, 0x277D589B8);
  sub_266ECAF2C(&qword_2800F4770, &qword_2800F4768, 0x277D589B8, &protocol conformance descriptor for MHSchemaMHUserSpeakingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F4778, 0x277D589B0);
  sub_266ECAF2C(&qword_2800F4780, &qword_2800F4778, 0x277D589B0, &protocol conformance descriptor for MHSchemaMHUserSpeakingEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_2670C9DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C9E5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserSpeakingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670CA148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CA1AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CA210()
{
  result = qword_2800F4780;
  if (!qword_2800F4780)
  {
    sub_2670CA268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4780);
  }

  return result;
}

unint64_t sub_2670CA268()
{
  result = qword_2800F4778;
  if (!qword_2800F4778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4778);
  }

  return result;
}

uint64_t static MHSchemaMHUserSpeakingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670CA4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CA560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CA5C4()
{
  result = qword_2800F4770;
  if (!qword_2800F4770)
  {
    sub_2670CA61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4770);
  }

  return result;
}

unint64_t sub_2670CA61C()
{
  result = qword_2800F4768;
  if (!qword_2800F4768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4768);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceAdBlockerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3EE0, 0x277D58618);
  sub_266ECAF2C(&qword_2800F3ED8, &qword_2800F3EE0, 0x277D58618, &protocol conformance descriptor for MHSchemaMHAdMatchingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F3EC0, 0x277D58608);
  sub_266ECAF2C(&qword_2800F3EB8, &qword_2800F3EC0, 0x277D58608, &protocol conformance descriptor for MHSchemaMHAdMatchingEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3ED0, 0x277D58610);
  sub_266ECAF2C(&qword_2800F3EC8, &qword_2800F3ED0, 0x277D58610, &protocol conformance descriptor for MHSchemaMHAdMatchingFailed);
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

uint64_t sub_2670CAB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CABE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceProfileConfusionScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15 = a1;
  sub_26738119C();
  v16 = "ofileConfusionScore";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6972616C696D6973, 0xEF65726F63537974);
  return v13(v17, 0);
}

uint64_t sub_2670CAFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CB024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CB088()
{
  result = qword_2800F4788;
  if (!qword_2800F4788)
  {
    sub_2670CB0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4788);
  }

  return result;
}

unint64_t sub_2670CB0E0()
{
  result = qword_2800F4790;
  if (!qword_2800F4790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4790);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x8000000267459140);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F4790, 0x277D589D0);
  sub_266ECAF2C(&qword_2800F4788, &qword_2800F4790, 0x277D589D0, &protocol conformance descriptor for MHSchemaMHVoiceProfileConfusionScore);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267459160);
  return v11(v14, 0);
}

uint64_t sub_2670CB468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CB4CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceProfileICloudSyncFinished.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = *MEMORY[0x277D3E530];
  v8 = *(v2 + 104);
  v21 = v1;
  v22 = v8;
  v8(v4);
  v25[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D6C6C6F726E65, 0xEC0000006449746ELL);
  v11(v25, 0);
  v20 = "ofileICloudSyncFinished";
  v12 = v1;
  v13 = v22;
  v22(v4, *MEMORY[0x277D3E4E8], v12);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v20 | 0x8000000000000000);
  v14(v25, 0);
  v13(v4, v23, v21);
  v25[0] = 1;
  sub_26738114C();
  v15 = v10;
  v10(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x80000002674591E0);
  v16(v25, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2670CBB2C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v15(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  return v17(v25, 0);
}

uint64_t sub_2670CBA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CBA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670CBB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670CBB74()
{
  result = qword_2800F4550;
  if (!qword_2800F4550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4550);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceProfileOnboarded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267459230);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F47A0, 0x277D589E0);
  sub_266ECAF2C(&qword_2800F4798, &qword_2800F47A0, 0x277D589E0, &protocol conformance descriptor for MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000025, 0x8000000267459250);
  return v11(v14, 0);
}

uint64_t sub_2670CBEFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CBF60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F47A8, 0x277D58A40);
  sub_266ECAF2C(&qword_2800F47B0, &qword_2800F47A8, 0x277D58A40, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F47B8, 0x277D58A48);
  sub_266ECAF2C(&qword_2800F47C0, &qword_2800F47B8, 0x277D58A48, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassTriggered);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F47C8, 0x277D58A38);
  sub_266ECAF2C(&qword_2800F47D0, &qword_2800F47C8, 0x277D58A38, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassRejected);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F47D8, 0x277D58A30);
  sub_266ECAF2C(&qword_2800F47E0, &qword_2800F47D8, 0x277D58A30, &protocol conformance descriptor for MHSchemaMHVoiceTriggerSecondPassCancelled);
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

uint64_t sub_2670CC5E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CC64C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerEventInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v319 = a1;
  v3 = sub_26738113C();
  v331 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v309 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v309 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v322 = "iri.mh.MHVoiceTriggerEventInfo";
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v4 + 104);
  v330 = v4 + 104;
  v328 = v12;
  v323 = v11;
  (v12)(v6, v11, v3);
  v333[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v318 = *(v13 - 8);
  v14 = v318 + 56;
  v15 = *(v318 + 56);
  v15(v9, 0, 1, v13);
  v329 = v10;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v322 | 0x8000000000000000);
  v16(v333, 0);
  v322 = "rStartSampleCount";
  v17 = v11;
  v18 = v328;
  (v328)(v6, v17, v331);
  v333[0] = 1;
  sub_26738114C();
  v327 = v14;
  v15(v9, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v322 | 0x8000000000000000);
  v19(v333, 0);
  LODWORD(v322) = *MEMORY[0x277D3E500];
  v18(v6);
  v20 = v18;
  v333[0] = 1;
  sub_26738114C();
  v21 = v13;
  v15(v9, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6353746173, 0xE800000000000000);
  v22(v333, 0);
  v321 = "secondPassAnalyerEndSampleCount";
  LODWORD(v320) = *MEMORY[0x277D3E538];
  v20(v6);
  v23 = v20;
  v333[0] = 1;
  sub_26738114C();
  v24 = v21;
  v15(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v321 | 0x8000000000000000);
  v25(v333, 0);
  v26 = v331;
  (v23)(v6, v322, v331);
  v333[0] = 1;
  sub_26738114C();
  v326 = v15;
  v15(v9, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365726854746173, 0xEC000000646C6F68);
  v27(v333, 0);
  LODWORD(v321) = *MEMORY[0x277D3E4E8];
  v28 = v328;
  v328(v6);
  v333[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x6767697254746173, 0xEC00000064657265);
  v29(v333, 0);
  v317 = "satNumTrainingUtterances";
  v30 = v322;
  (v28)(v6, v322, v26);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v24);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v317 | 0x8000000000000000);
  v31(v333, 0);
  v317 = "invocationTypeId";
  (v28)(v6, v30, v26);
  v333[0] = 1;
  sub_26738114C();
  v32 = v24;
  v33 = v326;
  v326(v9, 0, 1, v24);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v317 | 0x8000000000000000);
  v34(v333, 0);
  v317 = "mitigationScoreThreshold";
  v324 = v6;
  v35 = v322;
  v36 = v328;
  (v328)(v6, v322, v26);
  v333[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v32);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v317 | 0x8000000000000000);
  v37(v333, 0);
  v38 = v324;
  v36(v324, v35, v26);
  v333[0] = 1;
  sub_26738114C();
  v325 = v32;
  v33(v9, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267459370);
  v39(v333, 0);
  type metadata accessor for MHSchemaMHBiometricMatchResult(0);
  sub_2670D15D8(&qword_2800F4318, type metadata accessor for MHSchemaMHBiometricMatchResult, &protocol conformance descriptor for MHSchemaMHBiometricMatchResult);
  sub_26738120C();
  v33(v9, 0, 1, v32);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x697274656D6F6962, 0xED000065756C4363);
  v40(v333, 0);
  v41 = v331;
  v42 = v328;
  (v328)(v38, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v43 = v325;
  v326(v9, 0, 1, v325);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x676E696542746173, 0xEF64656E69617254);
  v44(v333, 0);
  v317 = "zerCombinationWeight";
  (v42)(v38, v320, v41);
  v333[0] = 1;
  sub_26738114C();
  v45 = v326;
  v326(v9, 0, 1, v43);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v317 | 0x8000000000000000);
  v46(v333, 0);
  v317 = "lastConsecutivePHSRejects";
  v47 = v331;
  v48 = v328;
  (v328)(v38, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v45(v9, 0, 1, v43);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v317 | 0x8000000000000000);
  v49(v333, 0);
  v50 = v322;
  (v48)(v38, v322, v47);
  v333[0] = 1;
  sub_26738114C();
  v51 = v326;
  v326(v9, 0, 1, v325);
  v52 = sub_2673811AC();
  v316 = 0xD000000000000017;
  sub_266EC637C(v9, 0xD000000000000017, 0x80000002674593E0);
  v52(v333, 0);
  v317 = "triggerExplicitSatScore";
  v53 = v50;
  v54 = v331;
  v55 = v328;
  (v328)(v38, v53, v331);
  v333[0] = 1;
  sub_26738114C();
  v51(v9, 0, 1, v325);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v317 | 0x8000000000000000);
  v56(v333, 0);
  v57 = v322;
  v55(v38);
  v333[0] = 1;
  sub_26738114C();
  v58 = v325;
  v51(v9, 0, 1, v325);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0x694D776F64616873, 0xEE0065726F635363);
  v59(v333, 0);
  v317 = "triggerExplicitTDSRSatScore";
  v60 = v328;
  (v328)(v38, v57, v54);
  v333[0] = 1;
  sub_26738114C();
  v61 = v58;
  v62 = v326;
  v326(v9, 0, 1, v61);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v317 | 0x8000000000000000);
  v63(v333, 0);
  v317 = "shadowMicScoreThresholdForVAD";
  v60(v38, v57, v331);
  v333[0] = 1;
  sub_26738114C();
  v64 = v325;
  v62(v9, 0, 1, v325);
  v65 = sub_2673811AC();
  v313 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v317 | 0x8000000000000000);
  v65(v333, 0);
  v315 = "remoteMicVADScore";
  v66 = v331;
  v67 = v328;
  (v328)(v38, v57, v331);
  v333[0] = 1;
  sub_26738114C();
  v62(v9, 0, 1, v64);
  v68 = sub_2673811AC();
  v317 = 0xD000000000000015;
  sub_266EC637C(v9, 0xD000000000000015, v315 | 0x8000000000000000);
  v68(v333, 0);
  v315 = "remoteMicVADThreshold";
  v67(v324, v57, v66);
  v333[0] = 1;
  sub_26738114C();
  v69 = v64;
  v70 = v64;
  v71 = v326;
  v326(v9, 0, 1, v70);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v315 | 0x8000000000000000);
  v72(v333, 0);
  type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(0);
  sub_2670D15D8(&qword_2800F4338, type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode, &protocol conformance descriptor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);
  sub_26738120C();
  v73 = v69;
  v74 = v71;
  v71(v9, 0, 1, v73);
  v75 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x80000002674594A0);
  v75(v333, 0);
  v315 = "enhancedCarplayTriggerMode";
  v76 = v331;
  v77 = v328;
  (v328)(v324, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v78 = v325;
  v74(v9, 0, 1, v325);
  v79 = sub_2673811AC();
  sub_266EC637C(v9, v316, v315 | 0x8000000000000000);
  v79(v333, 0);
  v80 = v76;
  v81 = v324;
  v77();
  v333[0] = 1;
  sub_26738114C();
  v74(v9, 0, 1, v78);
  v82 = sub_2673811AC();
  v315 = 0xD000000000000016;
  sub_266EC637C(v9, 0xD000000000000016, 0x80000002674594E0);
  v82(v333, 0);
  v314 = "clientStartSampleCount";
  v83 = v323;
  v84 = v80;
  v85 = v328;
  (v328)(v81, v323, v84);
  v333[0] = 1;
  sub_26738114C();
  v74(v9, 0, 1, v325);
  v86 = sub_2673811AC();
  sub_266EC637C(v9, v317, v314 | 0x8000000000000000);
  v86(v333, 0);
  v87 = v331;
  v85(v81, v83, v331);
  v333[0] = 1;
  sub_26738114C();
  v88 = v325;
  v326(v9, 0, 1, v325);
  v89 = sub_2673811AC();
  sub_266EC637C(v9, v315, 0x8000000267459520);
  v89(v333, 0);
  v90 = v323;
  (v328)(v81, v323, v87);
  v333[0] = 1;
  sub_26738114C();
  v91 = v326;
  v326(v9, 0, 1, v88);
  v92 = sub_2673811AC();
  sub_266EC637C(v9, 0x5372656767697274, 0xEE00734E74726174);
  v92(v333, 0);
  v93 = v331;
  v94 = v328;
  (v328)(v81, v90, v331);
  v333[0] = 1;
  sub_26738114C();
  v91(v9, 0, 1, v325);
  v95 = sub_2673811AC();
  sub_266EC637C(v9, 0x4572656767697274, 0xEC000000734E646ELL);
  v95(v333, 0);
  v96 = v324;
  v94(v324, v90, v93);
  v333[0] = 1;
  v97 = v96;
  sub_26738114C();
  v98 = v325;
  v326(v9, 0, 1, v325);
  v99 = sub_2673811AC();
  sub_266EC637C(v9, 0x4672656767697274, 0xED0000734E657269);
  v99(v333, 0);
  v314 = "triggerFireSampleCount";
  v100 = v97;
  v101 = v97;
  v102 = v331;
  v94(v101, v90, v331);
  v333[0] = 1;
  sub_26738114C();
  v103 = v98;
  v104 = v98;
  v105 = v326;
  v326(v9, 0, 1, v103);
  v106 = sub_2673811AC();
  v311 = 0xD000000000000013;
  sub_266EC637C(v9, 0xD000000000000013, v314 | 0x8000000000000000);
  v106(v333, 0);
  v314 = "extraSamplesAtStart";
  v107 = v323;
  v94(v100, v323, v102);
  v333[0] = 1;
  sub_26738114C();
  v105(v9, 0, 1, v104);
  v108 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v314 | 0x8000000000000000);
  v108(v333, 0);
  v314 = "analyzerPrependingSamples";
  v109 = v100;
  v110 = v331;
  v111 = v328;
  (v328)(v109, v107, v331);
  v333[0] = 1;
  sub_26738114C();
  v112 = v325;
  v105(v9, 0, 1, v325);
  v113 = sub_2673811AC();
  sub_266EC637C(v9, v316, v314 | 0x8000000000000000);
  v113(v333, 0);
  v114 = v324;
  (v111)(v324, v321, v110);
  v333[0] = 1;
  sub_26738114C();
  v105(v9, 0, 1, v112);
  v115 = sub_2673811AC();
  sub_266EC637C(v9, 0x6567676972547369, 0xEE00746E65764572);
  v115(v333, 0);
  v312 = "analyzerTrailingSamples";
  v116 = v331;
  v117 = v328;
  (v328)(v114, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v118 = v325;
  v105(v9, 0, 1, v325);
  v119 = sub_2673811AC();
  v314 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v312 | 0x8000000000000000);
  v119(v333, 0);
  (v117)(v114, v322, v116);
  v333[0] = 1;
  sub_26738114C();
  v120 = v118;
  v121 = v326;
  v326(v9, 0, 1, v118);
  v122 = sub_2673811AC();
  sub_266EC637C(v9, 0x5372656767697274, 0xEC00000065726F63);
  v122(v333, 0);
  v123 = v331;
  (v117)(v114, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v121(v9, 0, 1, v120);
  v124 = sub_2673811AC();
  sub_266EC637C(v9, 0x696D6978614D7369, 0xEB0000000064657ALL);
  v124(v333, 0);
  v312 = "totalSampleCount";
  v125 = v322;
  (v328)(v114, v322, v123);
  v333[0] = 1;
  sub_26738114C();
  v121(v9, 0, 1, v120);
  v126 = v121;
  v127 = sub_2673811AC();
  v310 = 0xD000000000000012;
  sub_266EC637C(v9, 0xD000000000000012, v312 | 0x8000000000000000);
  v127(v333, 0);
  v128 = v331;
  v129 = v328;
  (v328)(v114, v125, v331);
  v333[0] = 1;
  sub_26738114C();
  v126(v9, 0, 1, v120);
  v130 = sub_2673811AC();
  sub_266EC637C(v9, 0x7A696E676F636572, 0xEF65726F63537265);
  v130(v333, 0);
  v312 = "effectiveThreshold";
  v129(v114, v125, v128);
  v333[0] = 1;
  sub_26738114C();
  v131 = v325;
  v126(v9, 0, 1, v325);
  v132 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v312 | 0x8000000000000000);
  v132(v333, 0);
  v312 = "recognizerThresholdOffset";
  v133 = v331;
  v134 = v328;
  (v328)(v114, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v135 = v131;
  v126(v9, 0, 1, v131);
  v136 = sub_2673811AC();
  sub_266EC637C(v9, v315, v312 | 0x8000000000000000);
  v136(v333, 0);
  v315 = "recognizerWaitTimeInNs";
  v137 = v322;
  (v134)(v114, v322, v133);
  v333[0] = 1;
  sub_26738114C();
  v126(v9, 0, 1, v131);
  v138 = sub_2673811AC();
  sub_266EC637C(v9, v317, v315 | 0x8000000000000000);
  v138(v333, 0);
  v139 = v328;
  (v328)(v114, v137, v133);
  v333[0] = 1;
  sub_26738114C();
  v126(v9, 0, 1, v131);
  v140 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6F687365726874, 0xE900000000000064);
  v140(v333, 0);
  v315 = "recognizerScaleFactor";
  v141 = v324;
  v142 = v323;
  (v139)(v324, v323, v133);
  v333[0] = 1;
  sub_26738114C();
  v126(v9, 0, 1, v135);
  v143 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v315 | 0x8000000000000000);
  v143(v333, 0);
  v315 = "triggerStartTimeOffsetInNs";
  v144 = v142;
  v145 = v142;
  v146 = v331;
  v147 = v328;
  (v328)(v141, v144, v331);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v135);
  v148 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v315 | 0x8000000000000000);
  v148(v333, 0);
  v315 = "triggerEndTimeOffsetInNs";
  v149 = v324;
  v147(v324, v145, v146);
  v333[0] = 1;
  sub_26738114C();
  v151 = v325;
  v150 = v326;
  v326(v9, 0, 1, v325);
  v152 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v315 | 0x8000000000000000);
  v152(v333, 0);
  v315 = "triggerFireTimeOffsetInNs";
  v153 = *MEMORY[0x277D3E518];
  v154 = v331;
  v155 = v328;
  (v328)(v149, v153, v331);
  v333[0] = 1;
  sub_26738114C();
  v150(v9, 0, 1, v151);
  v156 = sub_2673811AC();
  sub_266EC637C(v9, v314, v315 | 0x8000000000000000);
  v156(v333, 0);
  v157 = v324;
  v158 = v155;
  v155(v324, v153, v154);
  v333[0] = 1;
  sub_26738114C();
  v159 = v325;
  v160 = v326;
  v326(v9, 0, 1, v325);
  v161 = sub_2673811AC();
  sub_266EC637C(v9, 0x4572656767697274, 0xEE00656D6954646ELL);
  v161(v333, 0);
  v315 = "triggerStartTime";
  LODWORD(v312) = v153;
  v162 = v331;
  v158(v157, v153, v331);
  v333[0] = 1;
  sub_26738114C();
  v160(v9, 0, 1, v159);
  v163 = sub_2673811AC();
  sub_266EC637C(v9, v314, v315 | 0x8000000000000000);
  v163(v333, 0);
  v164 = v324;
  v165 = v328;
  (v328)(v324, v320, v162);
  v333[0] = 1;
  sub_26738114C();
  v160(v9, 0, 1, v159);
  v166 = sub_2673811AC();
  sub_266EC637C(v9, v310, 0x80000002674596E0);
  v166(v333, 0);
  (v165)(v164, v321, v162);
  v333[0] = 1;
  sub_26738114C();
  v167 = v326;
  v326(v9, 0, 1, v159);
  v168 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E69746E6F437369, 0xEC00000073756F75);
  v168(v333, 0);
  v315 = "hardwareSamplerate";
  v169 = v324;
  (v165)(v324, v322, v162);
  v170 = v165;
  v333[0] = 1;
  sub_26738114C();
  v171 = v159;
  v167(v9, 0, 1, v159);
  v172 = sub_2673811AC();
  sub_266EC637C(v9, v311, v315 | 0x8000000000000000);
  v172(v333, 0);
  v315 = "triggerDurationInNs";
  v173 = v323;
  v174 = v331;
  (v170)(v169, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v175 = v326;
  v326(v9, 0, 1, v171);
  v176 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v315 | 0x8000000000000000);
  v176(v333, 0);
  v315 = "totalSamplesAtTriggerStart";
  v177 = v173;
  v178 = v173;
  v179 = v174;
  v180 = v174;
  v181 = v328;
  (v328)(v169, v177, v180);
  v333[0] = 1;
  sub_26738114C();
  v182 = v325;
  v175(v9, 0, 1, v325);
  v183 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v315 | 0x8000000000000000);
  v183(v333, 0);
  v315 = "totalSamplesAtTriggerEnd";
  v184 = v324;
  v185 = v181;
  (v181)(v324, v178, v179);
  v333[0] = 1;
  sub_26738114C();
  v186 = v326;
  v326(v9, 0, 1, v182);
  v187 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v315 | 0x8000000000000000);
  v187(v333, 0);
  LODWORD(v315) = *MEMORY[0x277D3E530];
  v188 = v315;
  v189 = v331;
  (v185)(v184, v315, v331);
  v333[0] = 1;
  sub_26738114C();
  v190 = v325;
  v186(v9, 0, 1, v325);
  v191 = sub_2673811AC();
  sub_266EC637C(v9, 0x65566769666E6F63, 0xED00006E6F697372);
  v191(v333, 0);
  v192 = v189;
  v193 = v189;
  v194 = v328;
  (v328)(v324, v188, v193);
  v333[0] = 1;
  sub_26738114C();
  v195 = v326;
  v326(v9, 0, 1, v190);
  v196 = sub_2673811AC();
  sub_266EC637C(v9, 0x61506769666E6F63, 0xEA00000000006874);
  v196(v333, 0);
  v197 = v324;
  v198 = v321;
  (v194)(v324, v321, v192);
  v333[0] = 1;
  sub_26738114C();
  v195(v9, 0, 1, v190);
  v199 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E6F6365537369, 0xEE0065636E616843);
  v199(v333, 0);
  v200 = v331;
  v201 = v328;
  (v328)(v197, v198, v331);
  v333[0] = 1;
  sub_26738114C();
  v202 = v325;
  v195(v9, 0, 1, v325);
  v203 = sub_2673811AC();
  sub_266EC637C(v9, 0x6148656369766564, 0xEE00646C6568646ELL);
  v203(v333, 0);
  v201(v197, v320, v200);
  v333[0] = 1;
  sub_26738114C();
  v204 = v326;
  v326(v9, 0, 1, v202);
  v205 = sub_2673811AC();
  sub_266EC637C(v9, 0x6843657669746361, 0xED00006C656E6E61);
  v205(v333, 0);
  v206 = v331;
  v201(v197, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v207 = v325;
  v204(v9, 0, 1, v325);
  v208 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267459780);
  v208(v333, 0);
  v314 = "twoShotAudibleFeedbackDelayInNs";
  v209 = v322;
  v201(v197, v322, v206);
  v210 = v201;
  v333[0] = 1;
  sub_26738114C();
  v211 = v326;
  v326(v9, 0, 1, v207);
  v212 = sub_2673811AC();
  sub_266EC637C(v9, v317, v314 | 0x8000000000000000);
  v212(v333, 0);
  v317 = "cumulativeUptimeInSec";
  v210(v324, v209, v331);
  v333[0] = 1;
  sub_26738114C();
  v211(v9, 0, 1, v207);
  v213 = sub_2673811AC();
  v214 = v316;
  sub_266EC637C(v9, v316, v317 | 0x8000000000000000);
  v213(v333, 0);
  type metadata accessor for MHSchemaMHHostPowerState(0);
  sub_2670D15D8(&qword_2800F4638, type metadata accessor for MHSchemaMHHostPowerState, &protocol conformance descriptor for MHSchemaMHHostPowerState);
  sub_26738120C();
  v215 = v211;
  v211(v9, 0, 1, v207);
  v216 = sub_2673811AC();
  sub_266EC637C(v9, v214, 0x80000002674597E0);
  v216(v333, 0);
  v217 = v324;
  v218 = v331;
  v219 = v328;
  (v328)(v324, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v215(v9, 0, 1, v207);
  v220 = sub_2673811AC();
  sub_266EC637C(v9, 0x50616964654D7369, 0xEE00676E6979616CLL);
  v220(v333, 0);
  (v219)(v217, v322, v218);
  v333[0] = 1;
  sub_26738114C();
  v221 = v207;
  v222 = v326;
  v326(v9, 0, 1, v207);
  v223 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6F56616964656DLL, 0xEB00000000656D75);
  v223(v333, 0);
  v317 = "hostPowerStateAtTrigger";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v222(v9, 0, 1, v207);
  v224 = sub_2673811AC();
  sub_266EC637C(v9, v313, v317 | 0x8000000000000000);
  v224(v333, 0);
  v225 = v324;
  v226 = v321;
  v227 = v331;
  (v328)(v324, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v222(v9, 0, 1, v221);
  v228 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265747461426E6FLL, 0xEE007265776F5079);
  v228(v333, 0);
  v229 = v227;
  v230 = v328;
  (v328)(v225, v226, v229);
  v333[0] = 1;
  sub_26738114C();
  v231 = v325;
  v222(v9, 0, 1, v325);
  v232 = sub_2673811AC();
  sub_266EC637C(v9, 0x41656B6157646964, 0xE900000000000050);
  v232(v333, 0);
  v233 = v322;
  (v230)(v225, v322, v331);
  v333[0] = 1;
  sub_26738114C();
  v222(v9, 0, 1, v231);
  v234 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E49656D69747075, 0xEB00000000636553);
  v234(v333, 0);
  v235 = v331;
  (v230)(v225, v233, v331);
  v333[0] = 1;
  sub_26738114C();
  v222(v9, 0, 1, v231);
  v236 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D69746E776F64, 0xED00006365536E49);
  v236(v333, 0);
  v319 = "audioProviderUUID";
  v237 = v235;
  v238 = v328;
  (v328)(v225, v320, v237);
  v333[0] = 1;
  sub_26738114C();
  v222(v9, 0, 1, v231);
  v239 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v319 | 0x8000000000000000);
  v239(v333, 0);
  v240 = v315;
  v241 = v331;
  (v238)(v225, v315, v331);
  v333[0] = 1;
  sub_26738114C();
  v242 = v325;
  v222(v9, 0, 1, v325);
  v243 = sub_2673811AC();
  sub_266EC637C(v9, 0x4665727574706163, 0xEF68746150656C69);
  v243(v333, 0);
  (v238)(v225, v240, v241);
  v333[0] = 1;
  sub_26738114C();
  v222(v9, 0, 1, v242);
  v244 = sub_2673811AC();
  sub_266EC637C(v9, 0x61446769666E6F63, 0xEE00687361486174);
  v244(v333, 0);
  v320 = "lastConsecutiveVTRejects";
  v245 = v321;
  v246 = v328;
  (v328)(v225, v321, v241);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v242);
  v247 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v320 | 0x8000000000000000);
  v247(v333, 0);
  v246(v225, v245, v241);
  v333[0] = 1;
  sub_26738114C();
  v248 = v326;
  v326(v9, 0, 1, v242);
  v249 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69647541646964, 0xED00006C6C617453);
  v249(v333, 0);
  v246(v225, v245, v331);
  v333[0] = 1;
  sub_26738114C();
  v248(v9, 0, 1, v242);
  v250 = sub_2673811AC();
  sub_266EC637C(v9, 0x4965677261427369, 0xE90000000000006ELL);
  v250(v333, 0);
  v246(v225, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v242);
  v251 = sub_2673811AC();
  sub_266EC637C(v9, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v251(v333, 0);
  v252 = sub_2673811AC();
  v253 = sub_266ECB6CC(v332, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v254 = *(v318 + 48);
  v318 += 48;
  v320 = v254;
  if (!(v254)(v255, 1, v242))
  {
    sub_266ECB128(&unk_2878884A8);
    sub_26738115C();
  }

  (v253)(v332, 0);
  v252(v333, 0);
  v256 = v324;
  v257 = v331;
  v258 = v328;
  (v328)(v324, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v325);
  v259 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267459860);
  v259(v333, 0);
  v319 = "ueryStartTimeInNs";
  v260 = v323;
  (v258)(v256, v323, v257);
  v333[0] = 1;
  sub_26738114C();
  v262 = v325;
  v261 = v326;
  v326(v9, 0, 1, v325);
  v263 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v319 | 0x8000000000000000);
  v263(v333, 0);
  v319 = "ueryCompleteTimeInNs";
  v264 = v260;
  v265 = v328;
  (v328)(v256, v264, v257);
  v333[0] = 1;
  sub_26738114C();
  v261(v9, 0, 1, v262);
  v266 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v319 | 0x8000000000000000);
  v266(v333, 0);
  v319 = "oadStartTimeInNs";
  v267 = v323;
  v268 = v331;
  (v265)(v256, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v269 = v262;
  v270 = v326;
  v326(v9, 0, 1, v269);
  v271 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v319 | 0x8000000000000000);
  v271(v333, 0);
  v272 = v267;
  v273 = v328;
  (v328)(v256, v272, v268);
  v333[0] = 1;
  sub_26738114C();
  v274 = v325;
  v270(v9, 0, 1, v325);
  v275 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x8000000267459920);
  v275(v333, 0);
  v319 = "treamStartTimeInNs";
  v276 = v323;
  v277 = v331;
  (v273)(v256, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v326(v9, 0, 1, v274);
  v278 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v319 | 0x8000000000000000);
  v278(v333, 0);
  v279 = v324;
  (v273)(v324, v276, v277);
  v333[0] = 1;
  sub_26738114C();
  v280 = v326;
  v326(v9, 0, 1, v274);
  v281 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002BLL, 0x8000000267459980);
  v281(v333, 0);
  v319 = "udioPacketReceptionTimeInNs";
  v282 = v323;
  v283 = v331;
  v284 = v328;
  (v328)(v279, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v285 = v325;
  v280(v9, 0, 1, v325);
  v286 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ALL, v319 | 0x8000000000000000);
  v286(v333, 0);
  v319 = "dioPacketReceptionTimeInNs";
  v287 = v324;
  v284(v324, v282, v283);
  v333[0] = 1;
  sub_26738114C();
  v288 = v285;
  v280(v9, 0, 1, v285);
  v289 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000033, v319 | 0x8000000000000000);
  v289(v333, 0);
  v319 = "ectionStartTimeInNs";
  v290 = v331;
  v284(v287, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v280(v9, 0, 1, v288);
  v291 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000031, v319 | 0x8000000000000000);
  v291(v333, 0);
  v292 = v324;
  v284(v324, v315, v290);
  v333[0] = 1;
  sub_26738114C();
  v293 = v325;
  v280(v9, 0, 1, v325);
  v294 = sub_2673811AC();
  sub_266EC637C(v9, 0x5072656767697274, 0xED00006573617268);
  v294(v333, 0);
  v284(v292, v312, v331);
  v333[0] = 1;
  sub_26738114C();
  v295 = v293;
  v280(v9, 0, 1, v293);
  v296 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267459A60);
  v296(v333, 0);
  v297 = sub_2673811AC();
  v298 = sub_266ECB6CC(v332, 0xD00000000000001DLL, 0x8000000267459A60);
  if (!(v320)(v299, 1, v295))
  {
    sub_266ECB128(&unk_2878884D8);
    sub_26738115C();
  }

  (v298)(v332, 0);
  v297(v333, 0);
  v300 = v324;
  v301 = v328;
  (v328)(v324, v321, v331);
  v333[0] = 1;
  sub_26738114C();
  v302 = v325;
  v303 = v326;
  v326(v9, 0, 1, v325);
  v304 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x8000000267459A80);
  v304(v333, 0);
  v321 = "mAlwaysOnMicBuffer";
  v305 = v331;
  (v301)(v300, v323, v331);
  v333[0] = 1;
  sub_26738114C();
  v303(v9, 0, 1, v302);
  v306 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v321 | 0x8000000000000000);
  v306(v333, 0);
  (v301)(v300, v322, v305);
  v333[0] = 1;
  sub_26738114C();
  v303(v9, 0, 1, v302);
  v307 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267459AD0);
  return v307(v333, 0);
}

uint64_t sub_2670D1514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D1578(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D15D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MHSchemaMHVoiceTriggerFirstPassDailyMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  v20 = *MEMORY[0x277D3E530];
  v18 = *(v1 + 104);
  v19 = v1 + 104;
  v17 = v0;
  v18(v3);
  v21[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = v8;
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x65566769666E6F63, 0xED00006E6F697372);
  v10(v21, 0);
  v16 = "iggerFirstPassDailyMetadata";
  v11 = v18;
  (v18)(v3, *MEMORY[0x277D3E508], v0);
  v21[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, v16 | 0x8000000000000000);
  v12(v21, 0);
  (v11)(v3, v20, v17);
  v21[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267458A60);
  return v13(v21, 0);
}

uint64_t sub_2670D1A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D1AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D1B2C()
{
  result = qword_2800F47F8;
  if (!qword_2800F47F8)
  {
    sub_2670D1B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F47F8);
  }

  return result;
}

unint64_t sub_2670D1B84()
{
  result = qword_2800F4800;
  if (!qword_2800F4800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4800);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerFirstPassSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267459B90, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267459BC0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267459BF0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000039, 0x8000000267459C30, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267459C70, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x8000000267459CA0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267459CD0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x8000000267459D00, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267459D30, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x8000000267459D60, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000024, 0x8000000267459DA0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_2670D2170(uint64_t a1)
{
  v2 = sub_2670D2274(&qword_2800F4810, &protocol conformance descriptor for MHSchemaMHVoiceTriggerFirstPassSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D21D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D2274(&qword_2800F4810, &protocol conformance descriptor for MHSchemaMHVoiceTriggerFirstPassSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D2274(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerFirstPassStatistic.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v74 = sub_26738113C();
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v70 = a2;
  sub_26738119C();
  v64 = "onTimestampInSec";
  v72 = *MEMORY[0x277D3E500];
  v9 = *(v3 + 104);
  v9(v5);
  v68 = v3 + 104;
  v73 = v9;
  v75[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v64 | 0x8000000000000000);
  v14(v75, 0);
  v66 = v5;
  (v9)(v5, v72, v74);
  v75[0] = 1;
  sub_26738114C();
  v71 = v10;
  v12(v8, 0, 1, v10);
  v15 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674433F0);
  v16(v75, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(0);
  sub_2670D323C(&qword_2800F4808, type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource, &protocol conformance descriptor for MHSchemaMHVoiceTriggerFirstPassSource);
  sub_26738120C();
  v17 = v12;
  v12(v8, 0, 1, v10);
  v69 = v15;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267459E10);
  v18(v75, 0);
  v65 = "firstPassTriggerSource";
  v19 = v72;
  v20 = v73;
  (v73)(v66, v72, v74);
  v75[0] = 1;
  sub_26738114C();
  v21 = v71;
  v17(v8, 0, 1, v71);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v65 | 0x8000000000000000);
  v22(v75, 0);
  v65 = "recognizerScoreHS";
  v23 = v66;
  v24 = v19;
  v25 = v74;
  v20(v66, v24, v74);
  v75[0] = 1;
  sub_26738114C();
  v26 = v17;
  v17(v8, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v65 | 0x8000000000000000);
  v27(v75, 0);
  v28 = v72;
  (v73)(v23, v72, v25);
  v75[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v71);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0x5372656767697274, 0xEE00534865726F63);
  v29(v75, 0);
  v30 = v23;
  v31 = v28;
  v32 = v25;
  v33 = v25;
  v34 = v73;
  (v73)(v30, v28, v32);
  v75[0] = 1;
  sub_26738114C();
  v35 = v71;
  v17(v8, 0, 1, v71);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0x5372656767697274, 0xEE00534A65726F63);
  v36(v75, 0);
  v37 = v66;
  v34(v66, v31, v33);
  v75[0] = 1;
  sub_26738114C();
  v38 = v35;
  v17(v8, 0, 1, v35);
  v67 = v17;
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461676974696DLL, 0xEF65726F63536E6FLL);
  v39(v75, 0);
  v65 = "firstPassPeakScoreJS";
  v40 = v73;
  v41 = v74;
  (v73)(v37, *MEMORY[0x277D3E508], v74);
  v75[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v65 | 0x8000000000000000);
  v42(v75, 0);
  v65 = "recognizerScoreJS";
  (v40)(v37, *MEMORY[0x277D3E510], v41);
  v75[0] = 1;
  sub_26738114C();
  v43 = v38;
  v44 = v67;
  v67(v8, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v65 | 0x8000000000000000);
  v45(v75, 0);
  v65 = "nextTurnInvocationSource";
  v46 = v72;
  v47 = v73;
  v48 = v74;
  (v73)(v37, v72, v74);
  v75[0] = 1;
  sub_26738114C();
  v44(v8, 0, 1, v71);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v65 | 0x8000000000000000);
  v49(v75, 0);
  v65 = "invocationTypeId";
  v47(v37, v46, v48);
  v75[0] = 1;
  sub_26738114C();
  v50 = v71;
  v44(v8, 0, 1, v71);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v65 | 0x8000000000000000);
  v51(v75, 0);
  v65 = "secondsSinceEpoch";
  v52 = v72;
  v53 = v74;
  (v73)(v37, v72, v74);
  v75[0] = 1;
  sub_26738114C();
  v67(v8, 0, 1, v50);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v65 | 0x8000000000000000);
  v54(v75, 0);
  v65 = "keywordThresholdHS";
  v55 = v73;
  (v73)(v37, v52, v53);
  v75[0] = 1;
  sub_26738114C();
  v56 = v71;
  v57 = v67;
  v67(v8, 0, 1, v71);
  v58 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v65 | 0x8000000000000000);
  v58(v75, 0);
  v65 = "keywordThresholdJS";
  v59 = v72;
  (v55)(v37, v72, v74);
  v75[0] = 1;
  sub_26738114C();
  v57(v8, 0, 1, v56);
  v60 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v65 | 0x8000000000000000);
  v60(v75, 0);
  (v55)(v37, v59, v74);
  v75[0] = 1;
  sub_26738114C();
  v57(v8, 0, 1, v56);
  v61 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267459F00);
  return v61(v75, 0);
}