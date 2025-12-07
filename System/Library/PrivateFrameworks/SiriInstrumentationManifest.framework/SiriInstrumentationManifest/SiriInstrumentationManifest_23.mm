uint64_t sub_2672AD2B4(uint64_t a1)
{
  v2 = sub_2672AD3B8(&qword_2800F9A50, &protocol conformance descriptor for SISchemaCarPlayConnection);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AD31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AD3B8(&qword_2800F9A50, &protocol conformance descriptor for SISchemaCarPlayConnection);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AD3B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCarPlayConnection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCarPlayHeadUnitContext.makeTypeManifestAndEnsureFields(in:)()
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
  v7 = *MEMORY[0x277D3E530];
  v8 = *(v1 + 104);
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v20[0] = 1;
  sub_26738114C();
  v19 = sub_26738116C();
  v9 = *(*(v19 - 8) + 56);
  v9(v6, 0, 1, v19);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x4E656C6369686576, 0xEB00000000656D61);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, v7, v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x4D656C6369686576, 0xEC0000006C65646FLL);
  v13(v20, 0);
  v12(v3, v7, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674692D0);
  return v14(v20, 0);
}

uint64_t sub_2672AD7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AD848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672AD8AC()
{
  result = qword_2800F9A58;
  if (!qword_2800F9A58)
  {
    sub_2672AD904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9A58);
  }

  return result;
}

unint64_t sub_2672AD904()
{
  result = qword_2800F9A60;
  if (!qword_2800F9A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A60);
  }

  return result;
}

uint64_t static SISchemaCarPlayInvocationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v15[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x4449656C646E7562, 0xE800000000000000);
  v10(v15, 0);
  type metadata accessor for SISchemaSiriDirectAction(0);
  sub_2672ADF00(&qword_2800F5EC0, type metadata accessor for SISchemaSiriDirectAction, &protocol conformance descriptor for SISchemaSiriDirectAction);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6341746365726964, 0xEC0000006E6F6974);
  v11(v15, 0);
  type metadata accessor for SISchemaEnhancedVoiceTriggerMode(0);
  sub_2672ADF00(&qword_2800F5EB8, type metadata accessor for SISchemaEnhancedVoiceTriggerMode, &protocol conformance descriptor for SISchemaEnhancedVoiceTriggerMode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x80000002674692F0);
  v12(v15, 0);
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_2672ADF00(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection, &protocol conformance descriptor for SISchemaCarPlayConnection);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267469310);
  return v13(v15, 0);
}

uint64_t sub_2672ADDF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672ADE58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672ADF00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672ADF48()
{
  result = qword_2800F9A70;
  if (!qword_2800F9A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A70);
  }

  return result;
}

uint64_t static SISchemaCasinoRelationship.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v21[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7246444977656976, 0xEA00000000006D6FLL);
  v14(v21, 0);
  v11(v6, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F54444977656976, 0xE800000000000000);
  v15(v21, 0);
  type metadata accessor for SISchemaCasinoType(0);
  sub_2672AE490(&qword_2800F9A78, type metadata accessor for SISchemaCasinoType, &protocol conformance descriptor for SISchemaCasinoType);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x72466F6E69736163, 0xEE00657079546D6FLL);
  return v16(v21, 0);
}

uint64_t sub_2672AE384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AE3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672AE490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672AE4D8()
{
  result = qword_2800F9A88;
  if (!qword_2800F9A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A88);
  }

  return result;
}

uint64_t static SISchemaCasinoType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026748F8F0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x435F4F4E49534143, 0xEE00544341504D4FLL, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x465F4F4E49534143, 0xEB000000004C4C55, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672AE744(uint64_t a1)
{
  v2 = sub_2672AE848(&qword_2800F9A90, &protocol conformance descriptor for SISchemaCasinoType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AE7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AE848(&qword_2800F9A90, &protocol conformance descriptor for SISchemaCasinoType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AE848(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCasinoType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v173 = *(v4 - 8);
  v174 = v4;
  MEMORY[0x28223BE20](v4);
  v172 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v172 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9A98, 0x277D5A808);
  sub_266ECAF2C(&qword_2800F9AA0, &qword_2800F9A98, 0x277D5A808, &protocol conformance descriptor for SISchemaClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v180 = *(v9 - 8);
  v11 = v180 + 56;
  v10 = *(v180 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v183, 0);
  sub_266ECB294(0, &qword_2800F9AA8, 0x277D5A818);
  sub_266ECAF2C(&qword_2800F9AB0, &qword_2800F9AA8, 0x277D5A818, &protocol conformance descriptor for SISchemaClientTransportEventMetadata);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  v176 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026748F940);
  v13(v183, 0);
  sub_266ECB294(0, &qword_2800F9968, 0x277D5A7A8);
  sub_266ECAF2C(&qword_2800F9960, &qword_2800F9968, 0x277D5A7A8, &protocol conformance descriptor for SISchemaAudioFirstBufferRecorded);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026748F960);
  v14(v183, 0);
  sub_266ECB294(0, &qword_2800F9998, 0x277D5A7B0);
  sub_266ECAF2C(&qword_2800F9990, &qword_2800F9998, 0x277D5A7B0, &protocol conformance descriptor for SISchemaAudioStopRecording);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748F980);
  v15(v183, 0);
  sub_266ECB294(0, &qword_2800F9AB8, 0x277D5A830);
  sub_266ECAF2C(&qword_2800F9AC0, &qword_2800F9AB8, 0x277D5A830, &protocol conformance descriptor for SISchemaConversationTrace);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026748F9A0);
  v16(v183, 0);
  sub_266ECB294(0, &qword_2800F9AC8, 0x277D5A840);
  sub_266ECAF2C(&qword_2800F9AD0, &qword_2800F9AC8, 0x277D5A840, &protocol conformance descriptor for SISchemaDeviceDynamicContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026748F9C0);
  v17(v183, 0);
  sub_266ECB294(0, &qword_2800F9AD8, 0x277D5A848);
  sub_266ECAF2C(&qword_2800F9AE0, &qword_2800F9AD8, 0x277D5A848, &protocol conformance descriptor for SISchemaDeviceFixedContext);
  v179 = a1;
  sub_26738121C();
  v181 = v10;
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742B5E0);
  v18(v183, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v182, 0xD000000000000012, 0x800000026742B5E0);
  v21 = *(v180 + 48);
  v180 += 48;
  v178 = v21;
  if (!v21(v22, 1, v9))
  {
    sub_266ECB128(&unk_287890A58);
    sub_26738115C();
  }

  (v20)(v182, 0);
  v19(v183, 0);
  sub_266ECB294(0, &qword_2800F9AE8, 0x277D5A880);
  sub_266ECAF2C(&qword_2800F9AF0, &qword_2800F9AE8, 0x277D5A880, &protocol conformance descriptor for SISchemaDictationContext);
  sub_26738121C();
  v23 = v181;
  v181(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  v175 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026748F9E0);
  v24(v183, 0);
  sub_266ECB294(0, &qword_2800F9AF8, 0x277D5A928);
  sub_266ECAF2C(&qword_2800F9B00, &qword_2800F9AF8, 0x277D5A928, &protocol conformance descriptor for SISchemaInvocation);
  sub_26738121C();
  v23(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461636F766E69, 0xEA00000000006E6FLL);
  v25(v183, 0);
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950, &protocol conformance descriptor for SISchemaLocation);
  sub_26738121C();
  v23(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v26(v183, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v182, 0x6E6F697461636F6CLL, 0xE800000000000000);
  if (!v178(v29, 1, v9))
  {
    sub_266ECB128(&unk_287890A80);
    sub_26738115C();
  }

  (v28)(v182, 0);
  v27(v183, 0);
  sub_266ECB294(0, &qword_2800F9B08, 0x277D5A9B0);
  sub_266ECAF2C(&qword_2800F9B10, &qword_2800F9B08, 0x277D5A9B0, &protocol conformance descriptor for SISchemaPunchOut);
  sub_26738121C();
  v30 = v181;
  v181(v8, 0, 1, v9);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0x74754F68636E7570, 0xE800000000000000);
  v31(v183, 0);
  sub_266ECB294(0, &qword_2800F9B18, 0x277D5AA10);
  sub_266ECAF2C(&qword_2800F9B20, &qword_2800F9B18, 0x277D5AA10, &protocol conformance descriptor for SISchemaSiriCue);
  sub_26738121C();
  v30(v8, 0, 1, v9);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x65754369726973, 0xE700000000000000);
  v32(v183, 0);
  sub_266ECB294(0, &qword_2800F9B28, 0x277D5AC40);
  sub_266ECAF2C(&qword_2800F9B30, &qword_2800F9B28, 0x277D5AC40, &protocol conformance descriptor for SISchemaUUFRPresented);
  sub_26738121C();
  v30(v8, 0, 1, v9);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365725072667575, 0xED00006465746E65);
  v33(v183, 0);
  sub_266ECB294(0, &qword_2800F9B38, 0x277D5AA38);
  sub_266ECAF2C(&qword_2800F9B40, &qword_2800F9B38, 0x277D5AA38, &protocol conformance descriptor for SISchemaSpeechTranscription);
  sub_26738121C();
  v30(v8, 0, 1, v9);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026748FA00);
  v34(v183, 0);
  sub_266ECB294(0, &qword_2800F9B48, 0x277D5AA58);
  sub_266ECAF2C(&qword_2800F9B50, &qword_2800F9B48, 0x277D5AA58, &protocol conformance descriptor for SISchemaTextToSpeechBegin);
  sub_26738121C();
  v35 = v181;
  v181(v8, 0, 1, v9);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, v176, 0x800000026748FA20);
  v36(v183, 0);
  sub_266ECB294(0, &qword_2800F9B58, 0x277D5AA60);
  sub_266ECAF2C(&qword_2800F9B60, &qword_2800F9B58, 0x277D5AA60, &protocol conformance descriptor for SISchemaTextToSpeechEnd);
  sub_26738121C();
  v35(v8, 0, 1, v9);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0x70536F5474786574, 0xEF646E4568636565);
  v37(v183, 0);
  sub_266ECB294(0, &qword_2800F9B68, 0x277D5AC20);
  sub_266ECAF2C(&qword_2800F9B70, &qword_2800F9B68, 0x277D5AC20, &protocol conformance descriptor for SISchemaUIStateTransition);
  sub_26738121C();
  v35(v8, 0, 1, v9);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, v176, 0x800000026748FA40);
  v38(v183, 0);
  sub_266ECB294(0, &qword_2800F9B78, 0x277D5A810);
  sub_266ECAF2C(&qword_2800F9B80, &qword_2800F9B78, 0x277D5A810, &protocol conformance descriptor for SISchemaClientFlow);
  sub_26738121C();
  v35(v8, 0, 1, v9);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C46746E65696C63, 0xEA0000000000776FLL);
  v39(v183, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v182, 0x6C46746E65696C63, 0xEA0000000000776FLL);
  if (!v178(v42, 1, v9))
  {
    sub_266ECB128(&unk_287890AA8);
    sub_26738115C();
  }

  (v41)(v182, 0);
  v40(v183, 0);
  sub_266ECB294(0, &qword_2800F9B88, 0x277D5A858);
  sub_266ECAF2C(&qword_2800F9B90, &qword_2800F9B88, 0x277D5A858, &protocol conformance descriptor for SISchemaDialogOutput);
  sub_26738121C();
  v181(v8, 0, 1, v9);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0x754F676F6C616964, 0xEC00000074757074);
  v43(v183, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v182, 0x754F676F6C616964, 0xEC00000074757074);
  if (!v178(v46, 1, v9))
  {
    sub_266ECB128(&unk_287890AD0);
    sub_26738115C();
  }

  (v45)(v182, 0);
  v44(v183, 0);
  sub_266ECB294(0, &qword_2800F9B98, 0x277D5A890);
  sub_266ECAF2C(&qword_2800F9BA0, &qword_2800F9B98, 0x277D5A890, &protocol conformance descriptor for SISchemaDictationEndPointStop);
  sub_26738121C();
  v47 = v181;
  v181(v8, 0, 1, v9);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026748FA60);
  v48(v183, 0);
  sub_266ECB294(0, &qword_2800F9BA8, 0x277D5A888);
  sub_266ECAF2C(&qword_2800F9BB0, &qword_2800F9BA8, 0x277D5A888, &protocol conformance descriptor for SISchemaDictationEndPointCancel);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026748FA80);
  v49(v183, 0);
  sub_266ECB294(0, &qword_2800F9BB8, 0x277D5A860);
  sub_266ECAF2C(&qword_2800F9BC0, &qword_2800F9BB8, 0x277D5A860, &protocol conformance descriptor for SISchemaDictationAlternativeSelected);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026748FAA0);
  v50(v183, 0);
  sub_266ECB294(0, &qword_2800F9BC8, 0x277D5A898);
  sub_266ECAF2C(&qword_2800F9BD0, &qword_2800F9BC8, 0x277D5A898, &protocol conformance descriptor for SISchemaDictationTranscriptionMetadata);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026748FAC0);
  v51(v183, 0);
  sub_266ECB294(0, &qword_2800F9A60, 0x277D5A7E0);
  sub_266ECAF2C(&qword_2800F9A58, &qword_2800F9A60, 0x277D5A7E0, &protocol conformance descriptor for SISchemaCarPlayHeadUnitContext);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748FAE0);
  v52(v183, 0);
  sub_266ECB294(0, &qword_2800F9BD8, 0x277D5AC30);
  sub_266ECAF2C(&qword_2800F9BE0, &qword_2800F9BD8, 0x277D5AC30, &protocol conformance descriptor for SISchemaUUFRCompletion);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0x706D6F4372667575, 0xEE006E6F6974656CLL);
  v53(v183, 0);
  v54 = sub_2673811AC();
  v55 = sub_266ECB6CC(v182, 0x706D6F4372667575, 0xEE006E6F6974656CLL);
  if (!v178(v56, 1, v9))
  {
    sub_266ECB128(&unk_287890AF8);
    sub_26738115C();
  }

  (v55)(v182, 0);
  v54(v183, 0);
  sub_266ECB294(0, &qword_2800F9BE8, 0x277D5AC58);
  sub_266ECAF2C(&qword_2800F9BF0, &qword_2800F9BE8, 0x277D5AC58, &protocol conformance descriptor for SISchemaUUFRShown);
  sub_26738121C();
  v57 = v181;
  v181(v8, 0, 1, v9);
  v58 = sub_2673811AC();
  sub_266EC637C(v8, 0x776F685372667575, 0xE90000000000006ELL);
  v58(v183, 0);
  sub_266ECB294(0, &qword_2800F9BF8, 0x277D5AC48);
  sub_266ECAF2C(&qword_2800F9C00, &qword_2800F9BF8, 0x277D5AC48, &protocol conformance descriptor for SISchemaUUFRSaid);
  sub_26738121C();
  v57(v8, 0, 1, v9);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x6469615372667575, 0xE800000000000000);
  v59(v183, 0);
  sub_266ECB294(0, &qword_2800F9C08, 0x277D5AC38);
  sub_266ECAF2C(&qword_2800F9C10, &qword_2800F9C08, 0x277D5AC38, &protocol conformance descriptor for SISchemaUUFRFatalError);
  sub_26738121C();
  v57(v8, 0, 1, v9);
  v60 = sub_2673811AC();
  sub_266EC637C(v8, 0x6174614672667575, 0xEE00726F7272456CLL);
  v60(v183, 0);
  sub_266ECB294(0, &qword_2800F9C18, 0x277D5A870);
  sub_266ECAF2C(&qword_2800F9C20, &qword_2800F9C18, 0x277D5A870, &protocol conformance descriptor for SISchemaDictationAlternativesViewed);
  sub_26738121C();
  v57(v8, 0, 1, v9);
  v61 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026748FB00);
  v61(v183, 0);
  sub_266ECB294(0, &qword_2800F9C28, 0x277D5A920);
  sub_266ECAF2C(&qword_2800F9C30, &qword_2800F9C28, 0x277D5A920, &protocol conformance descriptor for SISchemaIntercomMessageRecorded);
  sub_26738121C();
  v177 = v11;
  v57(v8, 0, 1, v9);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026748FB20);
  v62(v183, 0);
  v63 = sub_2673811AC();
  v64 = sub_266ECB6CC(v182, 0xD000000000000017, 0x800000026748FB20);
  if (!v178(v65, 1, v9))
  {
    sub_266ECB128(&unk_287890B20);
    sub_26738115C();
  }

  (v64)(v182, 0);
  v63(v183, 0);
  sub_266ECB294(0, &qword_2800F9A88, 0x277D5A7F8);
  sub_266ECAF2C(&qword_2800F9A80, &qword_2800F9A88, 0x277D5A7F8, &protocol conformance descriptor for SISchemaCasinoRelationship);
  sub_26738121C();
  v66 = v181;
  v181(v8, 0, 1, v9);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748FB40);
  v67(v183, 0);
  sub_266ECB294(0, &qword_2800F9C38, 0x277D5AC90);
  sub_266ECAF2C(&qword_2800F9C40, &qword_2800F9C38, 0x277D5AC90, &protocol conformance descriptor for SISchemaUserViewRegionInteraction);
  sub_26738121C();
  v66(v8, 0, 1, v9);
  v68 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026748FB60);
  v68(v183, 0);
  sub_266ECB294(0, &qword_2800F9C48, 0x277D5A850);
  sub_266ECAF2C(&qword_2800F9C50, &qword_2800F9C48, 0x277D5A850, &protocol conformance descriptor for SISchemaDeviceLockStateChanged);
  sub_26738121C();
  v66(v8, 0, 1, v9);
  v69 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748FB80);
  v69(v183, 0);
  sub_266ECB294(0, &qword_2800F9C58, 0x277D5AB80);
  sub_266ECAF2C(&qword_2800F9C60, &qword_2800F9C58, 0x277D5AB80, &protocol conformance descriptor for SISchemaUEIRequestCategorization);
  sub_26738121C();
  v66(v8, 0, 1, v9);
  v70 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026748FBA0);
  v70(v183, 0);
  sub_266ECB294(0, &qword_2800F99B8, 0x277D5A7B8);
  sub_266ECAF2C(&qword_2800F99B0, &qword_2800F99B8, 0x277D5A7B8, &protocol conformance descriptor for SISchemaAudioStopRecordingStarted);
  sub_26738121C();
  v66(v8, 0, 1, v9);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026748FBC0);
  v71(v183, 0);
  v72 = sub_2673811AC();
  v73 = sub_266ECB6CC(v182, 0xD000000000000019, 0x800000026748FBC0);
  if (!v178(v74, 1, v9))
  {
    sub_266ECB128(&unk_287890B48);
    sub_26738115C();
  }

  (v73)(v182, 0);
  v72(v183, 0);
  sub_266ECB294(0, &qword_2800F9C68, 0x277D5AB68);
  sub_266ECAF2C(&qword_2800F9C70, &qword_2800F9C68, 0x277D5AB68, &protocol conformance descriptor for SISchemaUEILaunchContext);
  sub_26738121C();
  v75 = v181;
  v181(v8, 0, 1, v9);
  v76 = sub_2673811AC();
  sub_266EC637C(v8, v175, 0x800000026748FBE0);
  v76(v183, 0);
  sub_266ECB294(0, &qword_2800F9C78, 0x277D5ABF0);
  sub_266ECAF2C(&qword_2800F9C80, &qword_2800F9C78, 0x277D5ABF0, &protocol conformance descriptor for SISchemaUEIUserSpeakingContext);
  sub_26738121C();
  v75(v8, 0, 1, v9);
  v77 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748FC00);
  v77(v183, 0);
  sub_266ECB294(0, &qword_2800F9C88, 0x277D5ABE0);
  sub_266ECAF2C(&qword_2800F9C90, &qword_2800F9C88, 0x277D5ABE0, &protocol conformance descriptor for SISchemaUEIUUFRReady);
  sub_26738121C();
  v75(v8, 0, 1, v9);
  v78 = sub_2673811AC();
  sub_266EC637C(v8, 0x5252465555696575, 0xEC00000079646165);
  v78(v183, 0);
  v79 = sub_2673811AC();
  v80 = sub_266ECB6CC(v182, 0x5252465555696575, 0xEC00000079646165);
  if (!v178(v81, 1, v9))
  {
    sub_266ECB128(&unk_287890B78);
    sub_26738115C();
  }

  (v80)(v182, 0);
  v79(v183, 0);
  sub_266ECB294(0, &qword_2800F9C98, 0x277D5ABC8);
  sub_266ECAF2C(&qword_2800F9CA0, &qword_2800F9C98, 0x277D5ABC8, &protocol conformance descriptor for SISchemaUEIUIRenderingContext);
  sub_26738121C();
  v82 = v181;
  v181(v8, 0, 1, v9);
  v83 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026748FC20);
  v83(v183, 0);
  sub_266ECB294(0, &qword_2800F9CA8, 0x277D5A998);
  sub_266ECAF2C(&qword_2800F9CB0, &qword_2800F9CA8, 0x277D5A998, &protocol conformance descriptor for SISchemaPNRTextToSpeechRequestReceived);
  sub_26738121C();
  v82(v8, 0, 1, v9);
  v84 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026748FC40);
  v84(v183, 0);
  sub_266ECB294(0, &qword_2800F9CB8, 0x277D5A990);
  sub_266ECAF2C(&qword_2800F9CC0, &qword_2800F9CB8, 0x277D5A990, &protocol conformance descriptor for SISchemaPNRSpeechRecognitionSourceContext);
  sub_26738121C();
  v82(v8, 0, 1, v9);
  v85 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026748FC60);
  v85(v183, 0);
  sub_266ECB294(0, &qword_2800F9CC8, 0x277D5A980);
  sub_266ECAF2C(&qword_2800F9CD0, &qword_2800F9CC8, 0x277D5A980, &protocol conformance descriptor for SISchemaPNRFatalError);
  sub_26738121C();
  v82(v8, 0, 1, v9);
  v86 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C61746146726E70, 0xED0000726F727245);
  v86(v183, 0);
  sub_266ECB294(0, &qword_2800F9CD8, 0x277D5AA78);
  sub_266ECAF2C(&qword_2800F9CE0, &qword_2800F9CD8, 0x277D5AA78, &protocol conformance descriptor for SISchemaTurnMTERequest);
  sub_26738121C();
  v82(v8, 0, 1, v9);
  v87 = sub_2673811AC();
  sub_266EC637C(v8, 0x5245544D6E727574, 0xEE00747365757165);
  v87(v183, 0);
  sub_266ECB294(0, &qword_2800F9CE8, 0x277D5A930);
  sub_266ECAF2C(&qword_2800F9CF0, &qword_2800F9CE8, 0x277D5A930, &protocol conformance descriptor for SISchemaKeyboardDismissed);
  sub_26738121C();
  v82(v8, 0, 1, v9);
  v88 = sub_2673811AC();
  v89 = v176;
  sub_266EC637C(v8, v176, 0x800000026748FC90);
  v88(v183, 0);
  v90 = sub_2673811AC();
  v91 = sub_266ECB6CC(v182, v89, 0x800000026748FC90);
  if (!v178(v92, 1, v9))
  {
    sub_266ECB128(&unk_287890BA8);
    sub_26738115C();
  }

  (v91)(v182, 0);
  v90(v183, 0);
  sub_266ECB294(0, &qword_2800F9CF8, 0x277D5A8A8);
  sub_266ECAF2C(&qword_2800F9D00, &qword_2800F9CF8, 0x277D5A8A8, &protocol conformance descriptor for SISchemaEngagedAccessoryContext);
  sub_26738121C();
  v181(v8, 0, 1, v9);
  v93 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026748FCB0);
  v93(v183, 0);
  v176 = a2;
  v94 = sub_2673811AC();
  v95 = sub_266ECB6CC(v182, 0xD000000000000017, 0x800000026748FCB0);
  if (!v178(v96, 1, v9))
  {
    sub_266ECB128(&unk_287890BD0);
    sub_26738115C();
  }

  (v95)(v182, 0);
  v94(v183, 0);
  sub_266ECB294(0, &qword_2800F98E8, 0x277D5A770);
  sub_266ECAF2C(&qword_2800F98E0, &qword_2800F98E8, 0x277D5A770, &protocol conformance descriptor for SISchemaAnnounceCarPlayBannerTapped);
  sub_26738121C();
  v97 = v181;
  v181(v8, 0, 1, v9);
  v98 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026748FCD0);
  v98(v183, 0);
  sub_266ECB294(0, &qword_2800F98F8, 0x277D5A778);
  sub_266ECAF2C(&qword_2800F98F0, &qword_2800F98F8, 0x277D5A778, &protocol conformance descriptor for SISchemaAnnounceCarPlayGlyphSettingToggled);
  sub_26738121C();
  v97(v8, 0, 1, v9);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026748FCF0);
  v99(v183, 0);
  sub_266ECB294(0, &qword_2800F9D08, 0x277D5A878);
  sub_266ECAF2C(&qword_2800F9D10, &qword_2800F9D08, 0x277D5A878, &protocol conformance descriptor for SISchemaDictationContentEdited);
  sub_26738121C();
  v97(v8, 0, 1, v9);
  v100 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748FD20);
  v100(v183, 0);
  sub_266ECB294(0, &qword_2800F9D18, 0x277D5AC60);
  sub_266ECAF2C(&qword_2800F9D20, &qword_2800F9D18, 0x277D5AC60, &protocol conformance descriptor for SISchemaUUFRShownTier1);
  sub_26738121C();
  v97(v8, 0, 1, v9);
  v101 = sub_2673811AC();
  sub_266EC637C(v8, 0x776F685372667575, 0xEE0031726569546ELL);
  v101(v183, 0);
  v102 = sub_2673811AC();
  v103 = sub_266ECB6CC(v182, 0x776F685372667575, 0xEE0031726569546ELL);
  if (!v178(v104, 1, v9))
  {
    sub_266ECB128(&unk_287890C00);
    sub_26738115C();
  }

  (v103)(v182, 0);
  v102(v183, 0);
  sub_266ECB294(0, &qword_2800F9D28, 0x277D5AB00);
  sub_266ECAF2C(&qword_2800F9D30, &qword_2800F9D28, 0x277D5AB00, &protocol conformance descriptor for SISchemaUEIDictationPartialResultUpdated);
  sub_26738121C();
  v105 = v181;
  v181(v8, 0, 1, v9);
  v106 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026748FD40);
  v106(v183, 0);
  sub_266ECB294(0, &qword_2800F9D38, 0x277D5AB18);
  sub_266ECAF2C(&qword_2800F9D40, &qword_2800F9D38, 0x277D5AB18, &protocol conformance descriptor for SISchemaUEIDictationVoiceCommandExecuted);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v107 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026748FD70);
  v107(v183, 0);
  sub_266ECB294(0, &qword_2800F9D48, 0x277D5AAE8);
  sub_266ECAF2C(&qword_2800F9D50, &qword_2800F9D48, 0x277D5AAE8, &protocol conformance descriptor for SISchemaUEIDictationInputModeSwitchContext);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v108 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026748FDA0);
  v108(v183, 0);
  sub_266ECB294(0, &qword_2800F9D58, 0x277D5AAB0);
  sub_266ECAF2C(&qword_2800F9D60, &qword_2800F9D58, 0x277D5AAB0, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDisplayContext);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v109 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026748FDD0);
  v109(v183, 0);
  sub_266ECB294(0, &qword_2800F9D68, 0x277D5AB30);
  sub_266ECAF2C(&qword_2800F9D70, &qword_2800F9D68, 0x277D5AB30, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewAppearContext);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v110 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026748FE00);
  v110(v183, 0);
  sub_266ECB294(0, &qword_2800F9D78, 0x277D5AB48);
  sub_266ECAF2C(&qword_2800F9D80, &qword_2800F9D78, 0x277D5AB48, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewDisappearContext);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v111 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026748FE20);
  v111(v183, 0);
  sub_266ECB294(0, &qword_2800F9D88, 0x277D5AB08);
  sub_266ECAF2C(&qword_2800F9D90, &qword_2800F9D88, 0x277D5AB08, &protocol conformance descriptor for SISchemaUEIDictationTranscriptionTokenized);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v112 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026748FE50);
  v112(v183, 0);
  sub_266ECB294(0, &qword_2800F9D98, 0x277D5AA90);
  sub_266ECAF2C(&qword_2800F9DA0, &qword_2800F9D98, 0x277D5AA90, &protocol conformance descriptor for SISchemaUEIDictationAlternativeConfusionPairsSelected);
  sub_26738121C();
  v105(v8, 0, 1, v9);
  v113 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026748FE80);
  v113(v183, 0);
  v114 = sub_2673811AC();
  v115 = sub_266ECB6CC(v182, 0xD00000000000001DLL, 0x800000026748FE80);
  if (!v178(v116, 1, v9))
  {
    sub_266ECB128(&unk_287890C30);
    sub_26738115C();
  }

  (v115)(v182, 0);
  v114(v183, 0);
  sub_266ECB294(0, &qword_2800F9DA8, 0x277D5AC50);
  sub_266ECAF2C(&qword_2800F9DB0, &qword_2800F9DA8, 0x277D5AC50, &protocol conformance descriptor for SISchemaUUFRSelected);
  sub_26738121C();
  v181(v8, 0, 1, v9);
  v117 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C655372667575, 0xEC00000064657463);
  v117(v183, 0);
  v118 = sub_2673811AC();
  v119 = sub_266ECB6CC(v182, 0x656C655372667575, 0xEC00000064657463);
  if (!v178(v120, 1, v9))
  {
    sub_266ECB128(&unk_287890C60);
    sub_26738115C();
  }

  (v119)(v182, 0);
  v118(v183, 0);
  sub_266ECB294(0, &qword_2800F9DB8, 0x277D5AA98);
  sub_266ECAF2C(&qword_2800F9DC0, &qword_2800F9DB8, 0x277D5AA98, &protocol conformance descriptor for SISchemaUEIDictationAlternativeTextPairsSelected);
  sub_26738121C();
  v181(v8, 0, 1, v9);
  v121 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x800000026748FEA0);
  v121(v183, 0);
  v122 = sub_2673811AC();
  v123 = sub_266ECB6CC(v182, 0xD000000000000028, 0x800000026748FEA0);
  if (!v178(v124, 1, v9))
  {
    sub_266ECB128(&unk_287890C90);
    sub_26738115C();
  }

  (v123)(v182, 0);
  v122(v183, 0);
  sub_266ECB294(0, &qword_2800F9DC8, 0x277D5ABE8);
  sub_266ECAF2C(&qword_2800F9DD0, &qword_2800F9DC8, 0x277D5ABE8, &protocol conformance descriptor for SISchemaUEIUserBargeInDetected);
  sub_26738121C();
  v125 = v181;
  v181(v8, 0, 1, v9);
  v126 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748FED0);
  v126(v183, 0);
  sub_266ECB294(0, &qword_2800F9DD8, 0x277D5AAC0);
  sub_266ECAF2C(&qword_2800F9DE0, &qword_2800F9DD8, 0x277D5AAC0, &protocol conformance descriptor for SISchemaUEIDictationEnablementPromptShown);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v127 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026748FEF0);
  v127(v183, 0);
  sub_266ECB294(0, &qword_2800F9DE8, 0x277D5AB90);
  sub_266ECAF2C(&qword_2800F9DF0, &qword_2800F9DE8, 0x277D5AB90, &protocol conformance descriptor for SISchemaUEISiriCarCommandContext);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v128 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026748FF20);
  v128(v183, 0);
  sub_266ECB294(0, &qword_2800F9DF8, 0x277D5AC08);
  sub_266ECAF2C(&qword_2800F9E00, &qword_2800F9DF8, 0x277D5AC08, &protocol conformance descriptor for SISchemaUEIVisionSnippetDismissed);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v129 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026748FF40);
  v129(v183, 0);
  sub_266ECB294(0, &qword_2800F9E08, 0x277D5ABB0);
  sub_266ECAF2C(&qword_2800F9E10, &qword_2800F9E08, 0x277D5ABB0, &protocol conformance descriptor for SISchemaUEISiriWasUnavailable);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v130 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026748FF60);
  v130(v183, 0);
  sub_266ECB294(0, &qword_2800F99F8, 0x277D5A7D0);
  sub_266ECAF2C(&qword_2800F99F0, &qword_2800F99F8, 0x277D5A7D0, &protocol conformance descriptor for SISchemaBluetoothCarPreferredAudioRouteChanged);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v131 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026748FF80);
  v131(v183, 0);
  sub_266ECB294(0, &qword_2800F9E18, 0x277D5AAA0);
  sub_266ECAF2C(&qword_2800F9E20, &qword_2800F9E18, 0x277D5AAA0, &protocol conformance descriptor for SISchemaUEIDictationContentEditedTier1);
  sub_26738121C();
  v125(v8, 0, 1, v9);
  v132 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026748FFA0);
  v132(v183, 0);
  v133 = sub_2673811AC();
  v134 = sub_266ECB6CC(v182, 0xD00000000000001ELL, 0x800000026748FFA0);
  if (!v178(v135, 1, v9))
  {
    sub_266ECB128(&unk_287890CB8);
    sub_26738115C();
  }

  (v134)(v182, 0);
  v133(v183, 0);
  sub_266ECB294(0, &qword_2800F9E28, 0x277D5AB28);
  sub_266ECAF2C(&qword_2800F9E30, &qword_2800F9E28, 0x277D5AB28, &protocol conformance descriptor for SISchemaUEIDictationVoiceCommandUndoTapAction);
  sub_26738121C();
  v136 = v181;
  v181(v8, 0, 1, v9);
  v137 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x800000026748FFC0);
  v137(v183, 0);
  sub_266ECB294(0, &qword_2800F9E38, 0x277D5AB10);
  sub_266ECAF2C(&qword_2800F9E40, &qword_2800F9E38, 0x277D5AB10, &protocol conformance descriptor for SISchemaUEIDictationVoiceCommandDisambiguationAction);
  sub_26738121C();
  v136(v8, 0, 1, v9);
  v138 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x800000026748FFF0);
  v138(v183, 0);
  sub_266ECB294(0, &qword_2800F9E48, 0x277D5AB20);
  sub_266ECAF2C(&qword_2800F9E50, &qword_2800F9E48, 0x277D5AB20, &protocol conformance descriptor for SISchemaUEIDictationVoiceCommandKeyboardAction);
  sub_26738121C();
  v136(v8, 0, 1, v9);
  v139 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x8000000267490020);
  v139(v183, 0);
  sub_266ECB294(0, &qword_2800F9E58, 0x277D5AAC8);
  sub_266ECAF2C(&qword_2800F9E60, &qword_2800F9E58, 0x277D5AAC8, &protocol conformance descriptor for SISchemaUEIDictationEuclidAlternativesEvent);
  sub_26738121C();
  v136(v8, 0, 1, v9);
  v140 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267490050);
  v140(v183, 0);
  v141 = sub_2673811AC();
  v142 = sub_266ECB6CC(v182, 0xD000000000000023, 0x8000000267490050);
  if (!v178(v143, 1, v9))
  {
    sub_266ECB128(&unk_287890CE0);
    sub_26738115C();
  }

  (v142)(v182, 0);
  v141(v183, 0);
  sub_266ECB294(0, &qword_2800F9E68, 0x277D5AAD0);
  sub_266ECAF2C(&qword_2800F9E70, &qword_2800F9E68, 0x277D5AAD0, &protocol conformance descriptor for SISchemaUEIDictationEuclidAlternativesEventTier1);
  sub_26738121C();
  v181(v8, 0, 1, v9);
  v144 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x8000000267490080);
  v144(v183, 0);
  v145 = sub_2673811AC();
  v146 = sub_266ECB6CC(v182, 0xD000000000000028, 0x8000000267490080);
  if (!v178(v147, 1, v9))
  {
    sub_266ECB128(&unk_287890D08);
    sub_26738115C();
  }

  (v146)(v182, 0);
  v145(v183, 0);
  sub_266ECB294(0, &qword_2800F9E78, 0x277D5AAD8);
  sub_266ECAF2C(&qword_2800F9E80, &qword_2800F9E78, 0x277D5AAD8, &protocol conformance descriptor for SISchemaUEIDictationEuclidSpeechAlternativesSelected);
  sub_26738121C();
  v148 = v181;
  v181(v8, 0, 1, v9);
  v149 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x80000002674900B0);
  v149(v183, 0);
  sub_266ECB294(0, &qword_2800F9E88, 0x277D5AAE0);
  sub_266ECAF2C(&qword_2800F9E90, &qword_2800F9E88, 0x277D5AAE0, &protocol conformance descriptor for SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1);
  sub_26738121C();
  v148(v8, 0, 1, v9);
  v150 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000031, 0x80000002674900E0);
  v150(v183, 0);
  v151 = sub_2673811AC();
  v152 = sub_266ECB6CC(v182, 0xD000000000000031, 0x80000002674900E0);
  if (!v178(v153, 1, v9))
  {
    sub_266ECB128(&unk_287890D38);
    sub_26738115C();
  }

  (v152)(v182, 0);
  v151(v183, 0);
  sub_266ECB294(0, &qword_2800F9E98, 0x277D5AA88);
  sub_266ECAF2C(&qword_2800F9EA0, &qword_2800F9E98, 0x277D5AA88, &protocol conformance descriptor for SISchemaTypingRequestTrace);
  sub_26738121C();
  v154 = v181;
  v181(v8, 0, 1, v9);
  v155 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267490120);
  v155(v183, 0);
  sub_266ECB294(0, &qword_2800F9EA8, 0x277D5AB60);
  sub_266ECAF2C(&qword_2800F9EB0, &qword_2800F9EA8, 0x277D5AB60, &protocol conformance descriptor for SISchemaUEIInvocationTier1);
  sub_26738121C();
  v154(v8, 0, 1, v9);
  v156 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267490140);
  v156(v183, 0);
  v157 = sub_2673811AC();
  v158 = sub_266ECB6CC(v182, 0xD000000000000012, 0x8000000267490140);
  if (!v178(v159, 1, v9))
  {
    sub_266ECB128(&unk_287890D60);
    sub_26738115C();
  }

  (v158)(v182, 0);
  v157(v183, 0);
  sub_266ECB294(0, &qword_2800F9EB8, 0x277D5ABB8);
  sub_266ECAF2C(&qword_2800F9EC0, &qword_2800F9EB8, 0x277D5ABB8, &protocol conformance descriptor for SISchemaUEITranscriptShown);
  sub_26738121C();
  v160 = v181;
  v181(v8, 0, 1, v9);
  v161 = sub_2673811AC();
  sub_266EC637C(v8, 0x697263736E617274, 0xEF6E776F68537470);
  v161(v183, 0);
  sub_266ECB294(0, &qword_2800F9EC8, 0x277D5ABC0);
  sub_266ECAF2C(&qword_2800F9ED0, &qword_2800F9EC8, 0x277D5ABC0, &protocol conformance descriptor for SISchemaUEITranscriptTapped);
  sub_26738121C();
  v160(v8, 0, 1, v9);
  v162 = sub_2673811AC();
  sub_266EC637C(v8, v175, 0x8000000267490160);
  v162(v183, 0);
  v163 = v172;
  sub_26738117C();
  v164 = sub_2673811BC();
  v166 = v165;
  v167 = *v165;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v166 = v167;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v167 = sub_266ECAD54(0, v167[2] + 1, 1, v167);
    *v166 = v167;
  }

  v170 = v167[2];
  v169 = v167[3];
  if (v170 >= v169 >> 1)
  {
    v167 = sub_266ECAD54((v169 > 1), v170 + 1, 1, v167);
    *v166 = v167;
  }

  v167[2] = v170 + 1;
  (*(v173 + 32))(v167 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v170, v163, v174);
  v164(v183, 0);
  sub_266ECB128(&unk_287890D88);
  return sub_2673811CC();
}

uint64_t sub_2672B3798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672B3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672B38FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B3960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672B39C0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9ED8, &qword_2800F1E10, 0x277D5A800, &protocol conformance descriptor for SISchemaClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F9EE0, &qword_2800F1E10, 0x277D5A800, &protocol conformance descriptor for SISchemaClientEvent);
  result = sub_266ECAF2C(&qword_2800F9EE8, &qword_2800F1E10, 0x277D5A800, &protocol conformance descriptor for SISchemaClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E4F8];
  v8 = *(v1 + 104);
  v32 = v1 + 104;
  v33 = v0;
  v31 = v8;
  v8(v3, v7, v0);
  v35[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v29 = *(v10 + 56);
  v30 = v10 + 56;
  v29(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x44496E727574, 0xE600000000000000);
  v11(v35, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v34, 0x44496E727574, 0xE600000000000000);
  v28 = *(v10 + 48);
  if (!v28(v14, 1, v9))
  {
    sub_266ECB128(&unk_287890DB8);
    sub_26738115C();
  }

  (v13)(v34, 0);
  v12(v35, 0);
  v31(v3, v7, v33);
  v35[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6976654469726973, 0xEC00000044496563);
  v15(v35, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v34, 0x6976654469726973, 0xEC00000044496563);
  if (!v28(v18, 1, v9))
  {
    sub_266ECB128(&unk_287890DE8);
    sub_26738115C();
  }

  (v17)(v34, 0);
  v16(v35, 0);
  v31(v3, *MEMORY[0x277D3E530], v33);
  v35[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x80000002674901B0);
  v19(v35, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v34, 0xD00000000000001CLL, 0x80000002674901B0);
  if (!v28(v22, 1, v9))
  {
    sub_266ECB128(&unk_287890E18);
    sub_26738115C();
  }

  (v21)(v34, 0);
  v20(v35, 0);
  v31(v3, *MEMORY[0x277D3E510], v33);
  v35[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002BLL, 0x80000002674901D0);
  v23(v35, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v34, 0xD00000000000002BLL, 0x80000002674901D0);
  if (!v28(v26, 1, v9))
  {
    sub_266ECB128(&unk_287890E40);
    sub_26738115C();
  }

  (v25)(v34, 0);
  return v24(v35, 0);
}

uint64_t sub_2672B41C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B4224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B4288()
{
  result = qword_2800F9AA0;
  if (!qword_2800F9AA0)
  {
    sub_2672B42E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AA0);
  }

  return result;
}

unint64_t sub_2672B42E0()
{
  result = qword_2800F9A98;
  if (!qword_2800F9A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A98);
  }

  return result;
}

uint64_t static SISchemaClientFlow.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267490230);
  v8(v10, 0);
  sub_266ECB128(&unk_287890E68);
  return sub_2673811CC();
}

uint64_t sub_2672B4594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B45F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B465C()
{
  result = qword_2800F9B80;
  if (!qword_2800F9B80)
  {
    sub_2672B46B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9B80);
  }

  return result;
}

unint64_t sub_2672B46B4()
{
  result = qword_2800F9B78;
  if (!qword_2800F9B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B78);
  }

  return result;
}

uint64_t static SISchemaClientTransportEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "tTransportEventMetadata";
  v21 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v7, 0xD00000000000001ELL, v19 | 0x8000000000000000);
  v9(v24, 0);
  v19 = "eventTransmittedTimestampRefId";
  v10 = *MEMORY[0x277D3E510];
  v11 = v23;
  v12 = v20;
  (v20)(v4, v10, v23);
  v24[0] = 1;
  sub_26738114C();
  v13 = v22;
  v22(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002DLL, v19 | 0x8000000000000000);
  v14(v24, 0);
  v19 = "RelativeToBootTimeTimestampNs";
  (v12)(v4, v10, v11);
  v24[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v19 | 0x8000000000000000);
  v15(v24, 0);
  (v12)(v4, v21, v23);
  v24[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267490300);
  return v16(v24, 0);
}

uint64_t sub_2672B4BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B4C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B4CB4()
{
  result = qword_2800F9AB0;
  if (!qword_2800F9AB0)
  {
    sub_2672B4D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AB0);
  }

  return result;
}

unint64_t sub_2672B4D0C()
{
  result = qword_2800F9AA8;
  if (!qword_2800F9AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9AA8);
  }

  return result;
}

uint64_t static SISchemaClockIsolationLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 1162760014, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0x444554414C4F5349, 0xE800000000000000, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2672B4EE0(uint64_t a1)
{
  v2 = sub_2672B4FE4(&qword_2800F9EF8, &protocol conformance descriptor for SISchemaClockIsolationLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B4F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B4FE4(&qword_2800F9EF8, &protocol conformance descriptor for SISchemaClockIsolationLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B4FE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaClockIsolationLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCommonEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_26738113C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9F00, 0x277D5A958);
  sub_266ECAF2C(&qword_2800F9F08, &qword_2800F9F00, 0x277D5A958, &protocol conformance descriptor for SISchemaLogicalTimestamp);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D617473656D6974, 0xE900000000000070);
  v11(v35, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v26[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v26[2] = a1;
  sub_26738120C();
  v32 = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x676E694674736574, 0xEF746E6972707265);
  v12(v35, 0);
  v30 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v34, 0x676E694674736574, 0xEF746E6972707265);
  v15 = *(v9 + 48);
  v33 = v9 + 48;
  v31 = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_287890E90);
    sub_26738115C();
  }

  (v14)(v34, 0);
  v13(v35, 0);
  sub_26738120C();
  v32(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449746E657665, 0xE700000000000000);
  v17(v35, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v34, 0x6449746E657665, 0xE700000000000000);
  if (!v31(v20, 1, v8))
  {
    sub_266ECB128(&unk_287890EC0);
    sub_26738115C();
  }

  (v19)(v34, 0);
  v18(v35, 0);
  (*(v27 + 104))(v28, *MEMORY[0x277D3E510], v29);
  v35[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D695474696D65, 0xED0000706D617473);
  v21(v35, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v34, 0x656D695474696D65, 0xED0000706D617473);
  if (!v31(v24, 1, v8))
  {
    sub_266ECB128(&unk_287890EF0);
    sub_26738115C();
  }

  (v23)(v34, 0);
  v22(v35, 0);
  sub_266ECB128(&unk_287890F20);
  return sub_2673811CC();
}

uint64_t sub_2672B56CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B5730(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaCompletionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x80000002674903B0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674903E0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267490400, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267490420, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x8000000267490440, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267490460, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2672B5B38(uint64_t a1)
{
  v2 = sub_2672B5C3C(&qword_2800F9F18, &protocol conformance descriptor for SISchemaCompletionStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B5BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B5C3C(&qword_2800F9F18, &protocol conformance descriptor for SISchemaCompletionStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B5C3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCompletionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaComponentIdentifier.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1684632949, 0xE400000000000000);
  v6(v9, 0);
  type metadata accessor for SISchemaComponentName(0);
  sub_2672B5FC8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656E6F706D6F63, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_2672B5F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B5F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B5FC8()
{
  result = qword_2800F9F20;
  if (!qword_2800F9F20)
  {
    type metadata accessor for SISchemaComponentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9F20);
  }

  return result;
}

uint64_t static SISchemaComponentInvocationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674904F0, isUniquelyReferenced_nonNull_native);
  *v3 = v58;

  v1(v72, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x8000000267490520, v8);
  *v7 = v59;

  v5(v72, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267490550, v12);
  *v11 = v60;

  v9(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267490580, v16);
  *v15 = v61;

  v13(v72, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674905B0, v20);
  *v19 = v62;

  v17(v72, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674905D0, v24);
  *v23 = v63;

  v21(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267490600, v28);
  *v27 = v64;

  v25(v72, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267490630, v32);
  *v31 = v65;

  v29(v72, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x8000000267490660, v36);
  *v35 = v66;

  v33(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267490690, v40);
  *v39 = v67;

  v37(v72, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x80000002674906B0, v44);
  *v43 = v68;

  v41(v72, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674906E0, v48);
  *v47 = v69;

  v45(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002ALL, 0x8000000267490710, v52);
  *v51 = v70;

  v49(v72, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000025, 0x8000000267490740, v56);
  *v55 = v71;

  return v53(v72, 0);
}

uint64_t sub_2672B675C(uint64_t a1)
{
  v2 = sub_2672B6860(&qword_2800F9F38, &protocol conformance descriptor for SISchemaComponentInvocationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B67C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B6860(&qword_2800F9F38, &protocol conformance descriptor for SISchemaComponentInvocationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B6860(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaComponentInvocationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaComponentName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v667 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674907A0, isUniquelyReferenced_nonNull_native);
  *v3 = v667;

  v1(v789, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v668 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674907C0, v8);
  *v7 = v668;

  v5(v789, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v669 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674907E0, v12);
  *v11 = v669;

  v9(v789, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v670 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267490800, v16);
  *v15 = v670;

  v13(v789, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v671 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267490820, v20);
  *v19 = v671;

  v17(v789, 0);
  v21 = sub_266ECB128(&unk_287890F50);
  v23 = v22;
  v24 = sub_2673810FC();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v672 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD4CC(v21, v23, 4, v27);
  *v26 = v672;
  v24(v789, 0);
  v28 = sub_26738111C();
  v30 = v29;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v673 = *v30;
  *v30 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x8000000267490840, v31);
  *v30 = v673;

  v28(v789, 0);
  v32 = sub_266ECB128(&unk_287890F80);
  v34 = v33;
  v35 = sub_2673810FC();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v674 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD4CC(v32, v34, 5, v38);
  *v37 = v674;
  v35(v789, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x8000000267490860, v42);
  *v41 = v675;

  v39(v789, 0);
  v43 = sub_266ECB128(&unk_287890FB0);
  v45 = v44;
  v46 = sub_2673810FC();
  v48 = v47;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v676 = *v48;
  *v48 = 0x8000000000000000;
  sub_266ECD4CC(v43, v45, 6, v49);
  *v48 = v676;
  v46(v789, 0);
  v50 = sub_26738111C();
  v52 = v51;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v677 = *v52;
  *v52 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x8000000267490880, v53);
  *v52 = v677;

  v50(v789, 0);
  v54 = sub_266ECB128(&unk_287890FE0);
  v56 = v55;
  v57 = sub_2673810FC();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v678 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD4CC(v54, v56, 7, v60);
  *v59 = v678;
  v57(v789, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v679 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000011, 0x80000002674908A0, v64);
  *v63 = v679;

  v61(v789, 0);
  v65 = sub_266ECB128(&unk_287891010);
  v67 = v66;
  v68 = sub_2673810FC();
  v70 = v69;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v680 = *v70;
  *v70 = 0x8000000000000000;
  sub_266ECD4CC(v65, v67, 8, v71);
  *v70 = v680;
  v68(v789, 0);
  v72 = sub_26738111C();
  v74 = v73;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v681 = *v74;
  *v74 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x80000002674908C0, v75);
  *v74 = v681;

  v72(v789, 0);
  v76 = sub_266ECB128(&unk_287891040);
  v78 = v77;
  v79 = sub_2673810FC();
  v81 = v80;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v682 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD4CC(v76, v78, 9, v82);
  *v81 = v682;
  v79(v789, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v683 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x80000002674908E0, v86);
  *v85 = v683;

  v83(v789, 0);
  v87 = sub_266ECB128(&unk_287891070);
  v89 = v88;
  v90 = sub_2673810FC();
  v92 = v91;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v684 = *v92;
  *v92 = 0x8000000000000000;
  sub_266ECD4CC(v87, v89, 10, v93);
  *v92 = v684;
  v90(v789, 0);
  v94 = sub_26738111C();
  v96 = v95;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v685 = *v96;
  *v96 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000012, 0x8000000267490900, v97);
  *v96 = v685;

  v94(v789, 0);
  v98 = sub_266ECB128(&unk_2878910A0);
  v100 = v99;
  v101 = sub_2673810FC();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v686 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD4CC(v98, v100, 11, v104);
  *v103 = v686;
  v101(v789, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v687 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267490920, v108);
  *v107 = v687;

  v105(v789, 0);
  v109 = sub_266ECB128(&unk_2878910D0);
  v111 = v110;
  v112 = sub_2673810FC();
  v114 = v113;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v688 = *v114;
  *v114 = 0x8000000000000000;
  sub_266ECD4CC(v109, v111, 12, v115);
  *v114 = v688;
  v112(v789, 0);
  v116 = sub_26738111C();
  v118 = v117;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v689 = *v118;
  *v118 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000011, 0x8000000267490940, v119);
  *v118 = v689;

  v116(v789, 0);
  v120 = sub_266ECB128(&unk_287891100);
  v122 = v121;
  v123 = sub_2673810FC();
  v125 = v124;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v690 = *v125;
  *v125 = 0x8000000000000000;
  sub_266ECD4CC(v120, v122, 13, v126);
  *v125 = v690;
  v123(v789, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ALL, 0x8000000267490960, v130);
  *v129 = v691;

  v127(v789, 0);
  v131 = sub_266ECB128(&unk_287891130);
  v133 = v132;
  v134 = sub_2673810FC();
  v136 = v135;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v692 = *v136;
  *v136 = 0x8000000000000000;
  sub_266ECD4CC(v131, v133, 14, v137);
  *v136 = v692;
  v134(v789, 0);
  v138 = sub_26738111C();
  v140 = v139;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v693 = *v140;
  *v140 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267490980, v141);
  *v140 = v693;

  v138(v789, 0);
  v142 = sub_266ECB128(&unk_287891160);
  v144 = v143;
  v145 = sub_2673810FC();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v694 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD4CC(v142, v144, 15, v148);
  *v147 = v694;
  v145(v789, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v695 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000014, 0x80000002674909B0, v152);
  *v151 = v695;

  v149(v789, 0);
  v153 = sub_266ECB128(&unk_287891190);
  v155 = v154;
  v156 = sub_2673810FC();
  v158 = v157;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v696 = *v158;
  *v158 = 0x8000000000000000;
  sub_266ECD4CC(v153, v155, 16, v159);
  *v158 = v696;
  v156(v789, 0);
  v160 = sub_26738111C();
  v162 = v161;
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v697 = *v162;
  *v162 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000011, 0x80000002674909D0, v163);
  *v162 = v697;

  v160(v789, 0);
  v164 = sub_266ECB128(&unk_2878911C0);
  v166 = v165;
  v167 = sub_2673810FC();
  v169 = v168;
  v170 = swift_isUniquelyReferenced_nonNull_native();
  v698 = *v169;
  *v169 = 0x8000000000000000;
  sub_266ECD4CC(v164, v166, 17, v170);
  *v169 = v698;
  v167(v789, 0);
  v171 = sub_26738111C();
  v173 = v172;
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v699 = *v173;
  *v173 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000015, 0x80000002674909F0, v174);
  *v173 = v699;

  v171(v789, 0);
  v175 = sub_266ECB128(&unk_2878911F0);
  v177 = v176;
  v178 = sub_2673810FC();
  v180 = v179;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  v700 = *v180;
  *v180 = 0x8000000000000000;
  sub_266ECD4CC(v175, v177, 18, v181);
  *v180 = v700;
  v178(v789, 0);
  v182 = sub_26738111C();
  v184 = v183;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v701 = *v184;
  *v184 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000012, 0x8000000267490A10, v185);
  *v184 = v701;

  v182(v789, 0);
  v186 = sub_266ECB128(&unk_287891220);
  v188 = v187;
  v189 = sub_2673810FC();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v702 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD4CC(v186, v188, 19, v192);
  *v191 = v702;
  v189(v789, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v703 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000019, 0x8000000267490A30, v196);
  *v195 = v703;

  v193(v789, 0);
  v197 = sub_266ECB128(&unk_287891250);
  v199 = v198;
  v200 = sub_2673810FC();
  v202 = v201;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v704 = *v202;
  *v202 = 0x8000000000000000;
  sub_266ECD4CC(v197, v199, 20, v203);
  *v202 = v704;
  v200(v789, 0);
  v204 = sub_26738111C();
  v206 = v205;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  v705 = *v206;
  *v206 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000014, 0x8000000267490A50, v207);
  *v206 = v705;

  v204(v789, 0);
  v208 = sub_266ECB128(&unk_287891280);
  v210 = v209;
  v211 = sub_2673810FC();
  v213 = v212;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  v706 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD4CC(v208, v210, 21, v214);
  *v213 = v706;
  v211(v789, 0);
  v215 = sub_26738111C();
  v217 = v216;
  v218 = swift_isUniquelyReferenced_nonNull_native();
  v707 = *v217;
  *v217 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001CLL, 0x8000000267490A70, v218);
  *v217 = v707;

  v215(v789, 0);
  v219 = sub_266ECB128(&unk_2878912B0);
  v221 = v220;
  v222 = sub_2673810FC();
  v224 = v223;
  v225 = swift_isUniquelyReferenced_nonNull_native();
  v708 = *v224;
  *v224 = 0x8000000000000000;
  sub_266ECD4CC(v219, v221, 22, v225);
  *v224 = v708;
  v222(v789, 0);
  v226 = sub_26738111C();
  v228 = v227;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v709 = *v228;
  *v228 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000011, 0x8000000267490A90, v229);
  *v228 = v709;

  v226(v789, 0);
  v230 = sub_266ECB128(&unk_2878912E0);
  v232 = v231;
  v233 = sub_2673810FC();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v710 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD4CC(v230, v232, 23, v236);
  *v235 = v710;
  v233(v789, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v711 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000015, 0x8000000267490AB0, v240);
  *v239 = v711;

  v237(v789, 0);
  v241 = sub_266ECB128(&unk_287891310);
  v243 = v242;
  v244 = sub_2673810FC();
  v246 = v245;
  v247 = swift_isUniquelyReferenced_nonNull_native();
  v712 = *v246;
  *v246 = 0x8000000000000000;
  sub_266ECD4CC(v241, v243, 24, v247);
  *v246 = v712;
  v244(v789, 0);
  v248 = sub_26738111C();
  v250 = v249;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v713 = *v250;
  *v250 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000011, 0x8000000267490AD0, v251);
  *v250 = v713;

  v248(v789, 0);
  v252 = sub_266ECB128(&unk_287891340);
  v254 = v253;
  v255 = sub_2673810FC();
  v257 = v256;
  v258 = swift_isUniquelyReferenced_nonNull_native();
  v714 = *v257;
  *v257 = 0x8000000000000000;
  sub_266ECD4CC(v252, v254, 25, v258);
  *v257 = v714;
  v255(v789, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = swift_isUniquelyReferenced_nonNull_native();
  v715 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000011, 0x8000000267490AF0, v262);
  *v261 = v715;

  v259(v789, 0);
  v263 = sub_266ECB128(&unk_287891370);
  v265 = v264;
  v266 = sub_2673810FC();
  v268 = v267;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v716 = *v268;
  *v268 = 0x8000000000000000;
  sub_266ECD4CC(v263, v265, 26, v269);
  *v268 = v716;
  v266(v789, 0);
  v270 = sub_26738111C();
  v272 = v271;
  v273 = swift_isUniquelyReferenced_nonNull_native();
  v717 = *v272;
  *v272 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000017, 0x8000000267490B10, v273);
  *v272 = v717;

  v270(v789, 0);
  v274 = sub_266ECB128(&unk_2878913A0);
  v276 = v275;
  v277 = sub_2673810FC();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v718 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD4CC(v274, v276, 27, v280);
  *v279 = v718;
  v277(v789, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v719 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000010, 0x8000000267490B30, v284);
  *v283 = v719;

  v281(v789, 0);
  v285 = sub_266ECB128(&unk_2878913D0);
  v287 = v286;
  v288 = sub_2673810FC();
  v290 = v289;
  v291 = swift_isUniquelyReferenced_nonNull_native();
  v720 = *v290;
  *v290 = 0x8000000000000000;
  sub_266ECD4CC(v285, v287, 28, v291);
  *v290 = v720;
  v288(v789, 0);
  v292 = sub_26738111C();
  v294 = v293;
  v295 = swift_isUniquelyReferenced_nonNull_native();
  v721 = *v294;
  *v294 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000011, 0x8000000267490B50, v295);
  *v294 = v721;

  v292(v789, 0);
  v296 = sub_266ECB128(&unk_287891400);
  v298 = v297;
  v299 = sub_2673810FC();
  v301 = v300;
  v302 = swift_isUniquelyReferenced_nonNull_native();
  v722 = *v301;
  *v301 = 0x8000000000000000;
  sub_266ECD4CC(v296, v298, 29, v302);
  *v301 = v722;
  v299(v789, 0);
  v303 = sub_26738111C();
  v305 = v304;
  v306 = swift_isUniquelyReferenced_nonNull_native();
  v723 = *v305;
  *v305 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000012, 0x8000000267490B70, v306);
  *v305 = v723;

  v303(v789, 0);
  v307 = sub_266ECB128(&unk_287891430);
  v309 = v308;
  v310 = sub_2673810FC();
  v312 = v311;
  v313 = swift_isUniquelyReferenced_nonNull_native();
  v724 = *v312;
  *v312 = 0x8000000000000000;
  sub_266ECD4CC(v307, v309, 30, v313);
  *v312 = v724;
  v310(v789, 0);
  v314 = sub_26738111C();
  v316 = v315;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v725 = *v316;
  *v316 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001ELL, 0x8000000267490B90, v317);
  *v316 = v725;

  v314(v789, 0);
  v318 = sub_266ECB128(&unk_287891460);
  v320 = v319;
  v321 = sub_2673810FC();
  v323 = v322;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v726 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD4CC(v318, v320, 31, v324);
  *v323 = v726;
  v321(v789, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = swift_isUniquelyReferenced_nonNull_native();
  v727 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ELL, 0x8000000267490BB0, v328);
  *v327 = v727;

  v325(v789, 0);
  v329 = sub_266ECB128(&unk_287891490);
  v331 = v330;
  v332 = sub_2673810FC();
  v334 = v333;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v728 = *v334;
  *v334 = 0x8000000000000000;
  sub_266ECD4CC(v329, v331, 32, v335);
  *v334 = v728;
  v332(v789, 0);
  v336 = sub_26738111C();
  v338 = v337;
  v339 = swift_isUniquelyReferenced_nonNull_native();
  v729 = *v338;
  *v338 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000018, 0x8000000267490BD0, v339);
  *v338 = v729;

  v336(v789, 0);
  v340 = sub_266ECB128(&unk_2878914C0);
  v342 = v341;
  v343 = sub_2673810FC();
  v345 = v344;
  v346 = swift_isUniquelyReferenced_nonNull_native();
  v730 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD4CC(v340, v342, 33, v346);
  *v345 = v730;
  v343(v789, 0);
  v347 = sub_26738111C();
  v349 = v348;
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v731 = *v349;
  *v349 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000018, 0x8000000267490BF0, v350);
  *v349 = v731;

  v347(v789, 0);
  v351 = sub_266ECB128(&unk_2878914F0);
  v353 = v352;
  v354 = sub_2673810FC();
  v356 = v355;
  v357 = swift_isUniquelyReferenced_nonNull_native();
  v732 = *v356;
  *v356 = 0x8000000000000000;
  sub_266ECD4CC(v351, v353, 34, v357);
  *v356 = v732;
  v354(v789, 0);
  v358 = sub_26738111C();
  v360 = v359;
  v361 = swift_isUniquelyReferenced_nonNull_native();
  v733 = *v360;
  *v360 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000010, 0x8000000267490C10, v361);
  *v360 = v733;

  v358(v789, 0);
  v362 = sub_266ECB128(&unk_287891520);
  v364 = v363;
  v365 = sub_2673810FC();
  v367 = v366;
  v368 = swift_isUniquelyReferenced_nonNull_native();
  v734 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD4CC(v362, v364, 35, v368);
  *v367 = v734;
  v365(v789, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = swift_isUniquelyReferenced_nonNull_native();
  v735 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000011, 0x8000000267490C30, v372);
  *v371 = v735;

  v369(v789, 0);
  v373 = sub_266ECB128(&unk_287891550);
  v375 = v374;
  v376 = sub_2673810FC();
  v378 = v377;
  v379 = swift_isUniquelyReferenced_nonNull_native();
  v736 = *v378;
  *v378 = 0x8000000000000000;
  sub_266ECD4CC(v373, v375, 36, v379);
  *v378 = v736;
  v376(v789, 0);
  v380 = sub_26738111C();
  v382 = v381;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v737 = *v382;
  *v382 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000011, 0x8000000267490C50, v383);
  *v382 = v737;

  v380(v789, 0);
  v384 = sub_266ECB128(&unk_287891580);
  v386 = v385;
  v387 = sub_2673810FC();
  v389 = v388;
  v390 = swift_isUniquelyReferenced_nonNull_native();
  v738 = *v389;
  *v389 = 0x8000000000000000;
  sub_266ECD4CC(v384, v386, 37, v390);
  *v389 = v738;
  v387(v789, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = swift_isUniquelyReferenced_nonNull_native();
  v739 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000016, 0x8000000267490C70, v394);
  *v393 = v739;

  v391(v789, 0);
  v395 = sub_266ECB128(&unk_2878915B0);
  v397 = v396;
  v398 = sub_2673810FC();
  v400 = v399;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *v400;
  *v400 = 0x8000000000000000;
  sub_266ECD4CC(v395, v397, 38, v401);
  *v400 = v740;
  v398(v789, 0);
  v402 = sub_26738111C();
  v404 = v403;
  v405 = swift_isUniquelyReferenced_nonNull_native();
  v741 = *v404;
  *v404 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000015, 0x8000000267490C90, v405);
  *v404 = v741;

  v402(v789, 0);
  v406 = sub_266ECB128(&unk_2878915E0);
  v408 = v407;
  v409 = sub_2673810FC();
  v411 = v410;
  v412 = swift_isUniquelyReferenced_nonNull_native();
  v742 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD4CC(v406, v408, 39, v412);
  *v411 = v742;
  v409(v789, 0);
  v413 = sub_26738111C();
  v415 = v414;
  v416 = swift_isUniquelyReferenced_nonNull_native();
  v743 = *v415;
  *v415 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000012, 0x8000000267490CB0, v416);
  *v415 = v743;

  v413(v789, 0);
  v417 = sub_266ECB128(&unk_287891610);
  v419 = v418;
  v420 = sub_2673810FC();
  v422 = v421;
  v423 = swift_isUniquelyReferenced_nonNull_native();
  v744 = *v422;
  *v422 = 0x8000000000000000;
  sub_266ECD4CC(v417, v419, 40, v423);
  *v422 = v744;
  v420(v789, 0);
  v424 = sub_26738111C();
  v426 = v425;
  v427 = swift_isUniquelyReferenced_nonNull_native();
  v745 = *v426;
  *v426 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x8000000267490CD0, v427);
  *v426 = v745;

  v424(v789, 0);
  v428 = sub_266ECB128(&unk_287891640);
  v430 = v429;
  v431 = sub_2673810FC();
  v433 = v432;
  v434 = swift_isUniquelyReferenced_nonNull_native();
  v746 = *v433;
  *v433 = 0x8000000000000000;
  sub_266ECD4CC(v428, v430, 41, v434);
  *v433 = v746;
  v431(v789, 0);
  v435 = sub_26738111C();
  v437 = v436;
  v438 = swift_isUniquelyReferenced_nonNull_native();
  v747 = *v437;
  *v437 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000016, 0x8000000267490CF0, v438);
  *v437 = v747;

  v435(v789, 0);
  v439 = sub_266ECB128(&unk_287891670);
  v441 = v440;
  v442 = sub_2673810FC();
  v444 = v443;
  v445 = swift_isUniquelyReferenced_nonNull_native();
  v748 = *v444;
  *v444 = 0x8000000000000000;
  sub_266ECD4CC(v439, v441, 42, v445);
  *v444 = v748;
  v442(v789, 0);
  v446 = sub_26738111C();
  v448 = v447;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v749 = *v448;
  *v448 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001DLL, 0x8000000267490D10, v449);
  *v448 = v749;

  v446(v789, 0);
  v450 = sub_266ECB128(&unk_2878916A0);
  v452 = v451;
  v453 = sub_2673810FC();
  v455 = v454;
  v456 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *v455;
  *v455 = 0x8000000000000000;
  sub_266ECD4CC(v450, v452, 43, v456);
  *v455 = v750;
  v453(v789, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = swift_isUniquelyReferenced_nonNull_native();
  v751 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000022, 0x8000000267490D30, v460);
  *v459 = v751;

  v457(v789, 0);
  v461 = sub_266ECB128(&unk_2878916D0);
  v463 = v462;
  v464 = sub_2673810FC();
  v466 = v465;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v752 = *v466;
  *v466 = 0x8000000000000000;
  sub_266ECD4CC(v461, v463, 44, v467);
  *v466 = v752;
  v464(v789, 0);
  v468 = sub_26738111C();
  v470 = v469;
  v471 = swift_isUniquelyReferenced_nonNull_native();
  v753 = *v470;
  *v470 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000018, 0x8000000267490D60, v471);
  *v470 = v753;

  v468(v789, 0);
  v472 = sub_266ECB128(&unk_287891700);
  v474 = v473;
  v475 = sub_2673810FC();
  v477 = v476;
  v478 = swift_isUniquelyReferenced_nonNull_native();
  v754 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD4CC(v472, v474, 45, v478);
  *v477 = v754;
  v475(v789, 0);
  v479 = sub_26738111C();
  v481 = v480;
  v482 = swift_isUniquelyReferenced_nonNull_native();
  v755 = *v481;
  *v481 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000013, 0x8000000267490D80, v482);
  *v481 = v755;

  v479(v789, 0);
  v483 = sub_266ECB128(&unk_287891730);
  v485 = v484;
  v486 = sub_2673810FC();
  v488 = v487;
  v489 = swift_isUniquelyReferenced_nonNull_native();
  v756 = *v488;
  *v488 = 0x8000000000000000;
  sub_266ECD4CC(v483, v485, 46, v489);
  *v488 = v756;
  v486(v789, 0);
  v490 = sub_26738111C();
  v492 = v491;
  v493 = swift_isUniquelyReferenced_nonNull_native();
  v757 = *v492;
  *v492 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001BLL, 0x8000000267490DA0, v493);
  *v492 = v757;

  v490(v789, 0);
  v494 = sub_266ECB128(&unk_287891760);
  v496 = v495;
  v497 = sub_2673810FC();
  v499 = v498;
  v500 = swift_isUniquelyReferenced_nonNull_native();
  v758 = *v499;
  *v499 = 0x8000000000000000;
  sub_266ECD4CC(v494, v496, 47, v500);
  *v499 = v758;
  v497(v789, 0);
  v501 = sub_26738111C();
  v503 = v502;
  v504 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *v503;
  *v503 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001BLL, 0x8000000267490DC0, v504);
  *v503 = v759;

  v501(v789, 0);
  v505 = sub_266ECB128(&unk_287891790);
  v507 = v506;
  v508 = sub_2673810FC();
  v510 = v509;
  v511 = swift_isUniquelyReferenced_nonNull_native();
  v760 = *v510;
  *v510 = 0x8000000000000000;
  sub_266ECD4CC(v505, v507, 48, v511);
  *v510 = v760;
  v508(v789, 0);
  v512 = sub_26738111C();
  v514 = v513;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v761 = *v514;
  *v514 = 0x8000000000000000;
  sub_266ECD368(49, 0xD00000000000001CLL, 0x8000000267490DE0, v515);
  *v514 = v761;

  v512(v789, 0);
  v516 = sub_266ECB128(&unk_2878917C0);
  v518 = v517;
  v519 = sub_2673810FC();
  v521 = v520;
  v522 = swift_isUniquelyReferenced_nonNull_native();
  v762 = *v521;
  *v521 = 0x8000000000000000;
  sub_266ECD4CC(v516, v518, 49, v522);
  *v521 = v762;
  v519(v789, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = swift_isUniquelyReferenced_nonNull_native();
  v763 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(50, 0xD00000000000001ELL, 0x8000000267490E00, v526);
  *v525 = v763;

  v523(v789, 0);
  v527 = sub_266ECB128(&unk_2878917F0);
  v529 = v528;
  v530 = sub_2673810FC();
  v532 = v531;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v764 = *v532;
  *v532 = 0x8000000000000000;
  sub_266ECD4CC(v527, v529, 50, v533);
  *v532 = v764;
  v530(v789, 0);
  v534 = sub_26738111C();
  v536 = v535;
  v537 = swift_isUniquelyReferenced_nonNull_native();
  v765 = *v536;
  *v536 = 0x8000000000000000;
  sub_266ECD368(51, 0xD00000000000001DLL, 0x8000000267490E20, v537);
  *v536 = v765;

  v534(v789, 0);
  v538 = sub_266ECB128(&unk_287891820);
  v540 = v539;
  v541 = sub_2673810FC();
  v543 = v542;
  v544 = swift_isUniquelyReferenced_nonNull_native();
  v766 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD4CC(v538, v540, 51, v544);
  *v543 = v766;
  v541(v789, 0);
  v545 = sub_26738111C();
  v547 = v546;
  v548 = swift_isUniquelyReferenced_nonNull_native();
  v767 = *v547;
  *v547 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000001ALL, 0x8000000267490E40, v548);
  *v547 = v767;

  v545(v789, 0);
  v549 = sub_266ECB128(&unk_287891850);
  v551 = v550;
  v552 = sub_2673810FC();
  v554 = v553;
  v555 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *v554;
  *v554 = 0x8000000000000000;
  sub_266ECD4CC(v549, v551, 52, v555);
  *v554 = v768;
  v552(v789, 0);
  v556 = sub_26738111C();
  v558 = v557;
  v559 = swift_isUniquelyReferenced_nonNull_native();
  v769 = *v558;
  *v558 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000018, 0x8000000267490E60, v559);
  *v558 = v769;

  v556(v789, 0);
  v560 = sub_266ECB128(&unk_287891880);
  v562 = v561;
  v563 = sub_2673810FC();
  v565 = v564;
  v566 = swift_isUniquelyReferenced_nonNull_native();
  v770 = *v565;
  *v565 = 0x8000000000000000;
  sub_266ECD4CC(v560, v562, 53, v566);
  *v565 = v770;
  v563(v789, 0);
  v567 = sub_26738111C();
  v569 = v568;
  v570 = swift_isUniquelyReferenced_nonNull_native();
  v771 = *v569;
  *v569 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000001FLL, 0x8000000267490E80, v570);
  *v569 = v771;

  v567(v789, 0);
  v571 = sub_266ECB128(&unk_2878918B0);
  v573 = v572;
  v574 = sub_2673810FC();
  v576 = v575;
  v577 = swift_isUniquelyReferenced_nonNull_native();
  v772 = *v576;
  *v576 = 0x8000000000000000;
  sub_266ECD4CC(v571, v573, 54, v577);
  *v576 = v772;
  v574(v789, 0);
  v578 = sub_26738111C();
  v580 = v579;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v773 = *v580;
  *v580 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000019, 0x8000000267490EA0, v581);
  *v580 = v773;

  v578(v789, 0);
  v582 = sub_266ECB128(&unk_2878918E0);
  v584 = v583;
  v585 = sub_2673810FC();
  v587 = v586;
  v588 = swift_isUniquelyReferenced_nonNull_native();
  v774 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD4CC(v582, v584, 55, v588);
  *v587 = v774;
  v585(v789, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = swift_isUniquelyReferenced_nonNull_native();
  v775 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000011, 0x8000000267490EC0, v592);
  *v591 = v775;

  v589(v789, 0);
  v593 = sub_266ECB128(&unk_287891910);
  v595 = v594;
  v596 = sub_2673810FC();
  v598 = v597;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v776 = *v598;
  *v598 = 0x8000000000000000;
  sub_266ECD4CC(v593, v595, 56, v599);
  *v598 = v776;
  v596(v789, 0);
  v600 = sub_26738111C();
  v602 = v601;
  v603 = swift_isUniquelyReferenced_nonNull_native();
  v777 = *v602;
  *v602 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000010, 0x8000000267490EE0, v603);
  *v602 = v777;

  v600(v789, 0);
  v604 = sub_266ECB128(&unk_287891940);
  v606 = v605;
  v607 = sub_2673810FC();
  v609 = v608;
  v610 = swift_isUniquelyReferenced_nonNull_native();
  v778 = *v609;
  *v609 = 0x8000000000000000;
  sub_266ECD4CC(v604, v606, 57, v610);
  *v609 = v778;
  v607(v789, 0);
  v611 = sub_26738111C();
  v613 = v612;
  v614 = swift_isUniquelyReferenced_nonNull_native();
  v779 = *v613;
  *v613 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000019, 0x8000000267490F00, v614);
  *v613 = v779;

  v611(v789, 0);
  v615 = sub_266ECB128(&unk_287891970);
  v617 = v616;
  v618 = sub_2673810FC();
  v620 = v619;
  v621 = swift_isUniquelyReferenced_nonNull_native();
  v780 = *v620;
  *v620 = 0x8000000000000000;
  sub_266ECD4CC(v615, v617, 58, v621);
  *v620 = v780;
  v618(v789, 0);
  v622 = sub_26738111C();
  v624 = v623;
  v625 = swift_isUniquelyReferenced_nonNull_native();
  v781 = *v624;
  *v624 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000020, 0x8000000267490F20, v625);
  *v624 = v781;

  v622(v789, 0);
  v626 = sub_266ECB128(&unk_2878919A0);
  v628 = v627;
  v629 = sub_2673810FC();
  v631 = v630;
  v632 = swift_isUniquelyReferenced_nonNull_native();
  v782 = *v631;
  *v631 = 0x8000000000000000;
  sub_266ECD4CC(v626, v628, 59, v632);
  *v631 = v782;
  v629(v789, 0);
  v633 = sub_26738111C();
  v635 = v634;
  v636 = swift_isUniquelyReferenced_nonNull_native();
  v783 = *v635;
  *v635 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000020, 0x8000000267490F50, v636);
  *v635 = v783;

  v633(v789, 0);
  v637 = sub_266ECB128(&unk_2878919D0);
  v639 = v638;
  v640 = sub_2673810FC();
  v642 = v641;
  v643 = swift_isUniquelyReferenced_nonNull_native();
  v784 = *v642;
  *v642 = 0x8000000000000000;
  sub_266ECD4CC(v637, v639, 61, v643);
  *v642 = v784;
  v640(v789, 0);
  v644 = sub_26738111C();
  v646 = v645;
  v647 = swift_isUniquelyReferenced_nonNull_native();
  v785 = *v646;
  *v646 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000011, 0x8000000267490F80, v647);
  *v646 = v785;

  v644(v789, 0);
  v648 = sub_266ECB128(&unk_287891A00);
  v650 = v649;
  v651 = sub_2673810FC();
  v653 = v652;
  v654 = swift_isUniquelyReferenced_nonNull_native();
  v786 = *v653;
  *v653 = 0x8000000000000000;
  sub_266ECD4CC(v648, v650, 62, v654);
  *v653 = v786;
  v651(v789, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = swift_isUniquelyReferenced_nonNull_native();
  v787 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000016, 0x8000000267490FA0, v658);
  *v657 = v787;

  v655(v789, 0);
  v659 = sub_266ECB128(&unk_287891A30);
  v661 = v660;
  v662 = sub_2673810FC();
  v664 = v663;
  v665 = swift_isUniquelyReferenced_nonNull_native();
  v788 = *v664;
  *v664 = 0x8000000000000000;
  sub_266ECD4CC(v659, v661, 63, v665);
  *v664 = v788;
  v662(v789, 0);
  sub_266ECB128(&unk_287891A60);
  return sub_26738112C();
}

uint64_t sub_2672B9F28(uint64_t a1)
{
  v2 = sub_2672BA02C(&qword_2800F9F40, &protocol conformance descriptor for SISchemaComponentName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B9F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672BA02C(&qword_2800F9F40, &protocol conformance descriptor for SISchemaComponentName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672BA02C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaComponentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaConnectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267490FF0, isUniquelyReferenced_nonNull_native);
  *v3 = v62;

  v1(v77, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267491020, v8);
  *v7 = v63;

  v5(v77, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267491040, v12);
  *v11 = v64;

  v9(v77, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267491060, v16);
  *v15 = v65;

  v13(v77, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267491080, v20);
  *v19 = v66;

  v17(v77, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674910A0, v24);
  *v23 = v67;

  v21(v77, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674910C0, v28);
  *v27 = v68;

  v25(v77, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x80000002674910E0, v32);
  *v31 = v69;

  v29(v77, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x8000000267491100, v36);
  *v35 = v70;

  v33(v77, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267491120, v40);
  *v39 = v71;

  v37(v77, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001DLL, 0x8000000267491140, v44);
  *v43 = v72;

  v41(v77, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000012, 0x8000000267491160, v48);
  *v47 = v73;

  v45(v77, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000017, 0x8000000267491180, v52);
  *v51 = v74;

  v49(v77, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x80000002674911A0, v56);
  *v55 = v75;

  v53(v77, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000014, 0x80000002674911C0, v60);
  *v59 = v76;

  return v57(v77, 0);
}

uint64_t sub_2672BA7D8(uint64_t a1)
{
  v2 = sub_2672BA8DC(&qword_2800F9F50, &protocol conformance descriptor for SISchemaConnectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672BA840(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672BA8DC(&qword_2800F9F50, &protocol conformance descriptor for SISchemaConnectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672BA8DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaConversationTrace.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4F8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x73756F6976657270, 0xEE0044496E727554);
  return v8(v10, 0);
}

uint64_t sub_2672BAB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672BABDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672BAC40()
{
  result = qword_2800F9AC0;
  if (!qword_2800F9AC0)
  {
    sub_2672BAC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AC0);
  }

  return result;
}

unint64_t sub_2672BAC98()
{
  result = qword_2800F9AB8;
  if (!qword_2800F9AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9AB8);
  }

  return result;
}

uint64_t static SISchemaCountryCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1006 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267491240, isUniquelyReferenced_nonNull_native);
  *v3 = v1006;

  v1(v1257, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v1007 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x435952544E554F43, 0xEE0046415F45444FLL, v8);
  *v7 = v1007;

  v5(v1257, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v1008 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x435952544E554F43, 0xEE0058415F45444FLL, v12);
  *v11 = v1008;

  v9(v1257, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v1009 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x435952544E554F43, 0xEE004C415F45444FLL, v16);
  *v15 = v1009;

  v13(v1257, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v1010 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0x435952544E554F43, 0xEE005A445F45444FLL, v20);
  *v19 = v1010;

  v17(v1257, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v1011 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0x435952544E554F43, 0xEE0053415F45444FLL, v24);
  *v23 = v1011;

  v21(v1257, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v1012 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0x435952544E554F43, 0xEE0044415F45444FLL, v28);
  *v27 = v1012;

  v25(v1257, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v1013 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0x435952544E554F43, 0xEE004F415F45444FLL, v32);
  *v31 = v1013;

  v29(v1257, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v1014 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0x435952544E554F43, 0xEE0049415F45444FLL, v36);
  *v35 = v1014;

  v33(v1257, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v1015 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0x435952544E554F43, 0xEE0051415F45444FLL, v40);
  *v39 = v1015;

  v37(v1257, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v1016 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0x435952544E554F43, 0xEE0047415F45444FLL, v44);
  *v43 = v1016;

  v41(v1257, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v1017 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0x435952544E554F43, 0xEE0052415F45444FLL, v48);
  *v47 = v1017;

  v45(v1257, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v1018 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0x435952544E554F43, 0xEE004D415F45444FLL, v52);
  *v51 = v1018;

  v49(v1257, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v1019 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0x435952544E554F43, 0xEE0057415F45444FLL, v56);
  *v55 = v1019;

  v53(v1257, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v1020 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0x435952544E554F43, 0xEE0055415F45444FLL, v60);
  *v59 = v1020;

  v57(v1257, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v1021 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0x435952544E554F43, 0xEE0054415F45444FLL, v64);
  *v63 = v1021;

  v61(v1257, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v1022 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0x435952544E554F43, 0xEE005A415F45444FLL, v68);
  *v67 = v1022;

  v65(v1257, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v1023 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0x435952544E554F43, 0xEE0053425F45444FLL, v72);
  *v71 = v1023;

  v69(v1257, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v1024 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0x435952544E554F43, 0xEE0048425F45444FLL, v76);
  *v75 = v1024;

  v73(v1257, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v1025 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0x435952544E554F43, 0xEE0044425F45444FLL, v80);
  *v79 = v1025;

  v77(v1257, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v1026 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0x435952544E554F43, 0xEE0042425F45444FLL, v84);
  *v83 = v1026;

  v81(v1257, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v1027 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0x435952544E554F43, 0xEE0059425F45444FLL, v88);
  *v87 = v1027;

  v85(v1257, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v1028 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0x435952544E554F43, 0xEE0045425F45444FLL, v92);
  *v91 = v1028;

  v89(v1257, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v1029 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0x435952544E554F43, 0xEE005A425F45444FLL, v96);
  *v95 = v1029;

  v93(v1257, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v1030 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0x435952544E554F43, 0xEE004A425F45444FLL, v100);
  *v99 = v1030;

  v97(v1257, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v1031 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0x435952544E554F43, 0xEE004D425F45444FLL, v104);
  *v103 = v1031;

  v101(v1257, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v1032 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0x435952544E554F43, 0xEE0054425F45444FLL, v108);
  *v107 = v1032;

  v105(v1257, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v1033 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0x435952544E554F43, 0xEE004F425F45444FLL, v112);
  *v111 = v1033;

  v109(v1257, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v1034 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0x435952544E554F43, 0xEE0051425F45444FLL, v116);
  *v115 = v1034;

  v113(v1257, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v1035 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0x435952544E554F43, 0xEE0041425F45444FLL, v120);
  *v119 = v1035;

  v117(v1257, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v1036 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0x435952544E554F43, 0xEE0057425F45444FLL, v124);
  *v123 = v1036;

  v121(v1257, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v1037 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0x435952544E554F43, 0xEE0056425F45444FLL, v128);
  *v127 = v1037;

  v125(v1257, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v1038 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0x435952544E554F43, 0xEE0052425F45444FLL, v132);
  *v131 = v1038;

  v129(v1257, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v1039 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0x435952544E554F43, 0xEE004F495F45444FLL, v136);
  *v135 = v1039;

  v133(v1257, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v1040 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0x435952544E554F43, 0xEE004E425F45444FLL, v140);
  *v139 = v1040;

  v137(v1257, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v1041 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0x435952544E554F43, 0xEE0047425F45444FLL, v144);
  *v143 = v1041;

  v141(v1257, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v1042 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0x435952544E554F43, 0xEE0046425F45444FLL, v148);
  *v147 = v1042;

  v145(v1257, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v1043 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0x435952544E554F43, 0xEE0049425F45444FLL, v152);
  *v151 = v1043;

  v149(v1257, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v1044 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0x435952544E554F43, 0xEE0056435F45444FLL, v156);
  *v155 = v1044;

  v153(v1257, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v1045 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0x435952544E554F43, 0xEE00484B5F45444FLL, v160);
  *v159 = v1045;

  v157(v1257, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v1046 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0x435952544E554F43, 0xEE004D435F45444FLL, v164);
  *v163 = v1046;

  v161(v1257, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v1047 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0x435952544E554F43, 0xEE0041435F45444FLL, v168);
  *v167 = v1047;

  v165(v1257, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v1048 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0x435952544E554F43, 0xEE00594B5F45444FLL, v172);
  *v171 = v1048;

  v169(v1257, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v1049 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0x435952544E554F43, 0xEE0046435F45444FLL, v176);
  *v175 = v1049;

  v173(v1257, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v1050 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0x435952544E554F43, 0xEE0044545F45444FLL, v180);
  *v179 = v1050;

  v177(v1257, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v1051 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0x435952544E554F43, 0xEE004C435F45444FLL, v184);
  *v183 = v1051;

  v181(v1257, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v1052 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0x435952544E554F43, 0xEE004E435F45444FLL, v188);
  *v187 = v1052;

  v185(v1257, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v1053 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0x435952544E554F43, 0xEE0058435F45444FLL, v192);
  *v191 = v1053;

  v189(v1257, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v1054 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0x435952544E554F43, 0xEE0043435F45444FLL, v196);
  *v195 = v1054;

  v193(v1257, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v1055 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0x435952544E554F43, 0xEE004F435F45444FLL, v200);
  *v199 = v1055;

  v197(v1257, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v1056 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0x435952544E554F43, 0xEE004D4B5F45444FLL, v204);
  *v203 = v1056;

  v201(v1257, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v1057 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0x435952544E554F43, 0xEE0044435F45444FLL, v208);
  *v207 = v1057;

  v205(v1257, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v1058 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0x435952544E554F43, 0xEE0047435F45444FLL, v212);
  *v211 = v1058;

  v209(v1257, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v1059 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0x435952544E554F43, 0xEE004B435F45444FLL, v216);
  *v215 = v1059;

  v213(v1257, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v1060 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0x435952544E554F43, 0xEE0052435F45444FLL, v220);
  *v219 = v1060;

  v217(v1257, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v1061 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0x435952544E554F43, 0xEE0049435F45444FLL, v224);
  *v223 = v1061;

  v221(v1257, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v1062 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0x435952544E554F43, 0xEE0052485F45444FLL, v228);
  *v227 = v1062;

  v225(v1257, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v1063 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0x435952544E554F43, 0xEE0055435F45444FLL, v232);
  *v231 = v1063;

  v229(v1257, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v1064 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0x435952544E554F43, 0xEE0057435F45444FLL, v236);
  *v235 = v1064;

  v233(v1257, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v1065 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0x435952544E554F43, 0xEE0059435F45444FLL, v240);
  *v239 = v1065;

  v237(v1257, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v1066 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0x435952544E554F43, 0xEE005A435F45444FLL, v244);
  *v243 = v1066;

  v241(v1257, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v1067 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0x435952544E554F43, 0xEE004B445F45444FLL, v248);
  *v247 = v1067;

  v245(v1257, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v1068 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0x435952544E554F43, 0xEE004A445F45444FLL, v252);
  *v251 = v1068;

  v249(v1257, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v1069 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0x435952544E554F43, 0xEE004D445F45444FLL, v256);
  *v255 = v1069;

  v253(v1257, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v1070 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0x435952544E554F43, 0xEE004F445F45444FLL, v260);
  *v259 = v1070;

  v257(v1257, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v1071 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0x435952544E554F43, 0xEE0047455F45444FLL, v264);
  *v263 = v1071;

  v261(v1257, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v1072 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0x435952544E554F43, 0xEE0056535F45444FLL, v268);
  *v267 = v1072;

  v265(v1257, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v1073 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0x435952544E554F43, 0xEE0052455F45444FLL, v272);
  *v271 = v1073;

  v269(v1257, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v1074 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0x435952544E554F43, 0xEE0045455F45444FLL, v276);
  *v275 = v1074;

  v273(v1257, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v1075 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0x435952544E554F43, 0xEE005A535F45444FLL, v280);
  *v279 = v1075;

  v277(v1257, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v1076 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(70, 0x435952544E554F43, 0xEE0054455F45444FLL, v284);
  *v283 = v1076;

  v281(v1257, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = swift_isUniquelyReferenced_nonNull_native();
  v1077 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(71, 0x435952544E554F43, 0xEE004B465F45444FLL, v288);
  *v287 = v1077;

  v285(v1257, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = swift_isUniquelyReferenced_nonNull_native();
  v1078 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(72, 0x435952544E554F43, 0xEE004F465F45444FLL, v292);
  *v291 = v1078;

  v289(v1257, 0);
  v293 = sub_26738111C();
  v295 = v294;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v1079 = *v295;
  *v295 = 0x8000000000000000;
  sub_266ECD368(73, 0x435952544E554F43, 0xEE004A465F45444FLL, v296);
  *v295 = v1079;

  v293(v1257, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v1080 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(74, 0x435952544E554F43, 0xEE0049465F45444FLL, v300);
  *v299 = v1080;

  v297(v1257, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v1081 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(75, 0x435952544E554F43, 0xEE0052465F45444FLL, v304);
  *v303 = v1081;

  v301(v1257, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v1082 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(76, 0x435952544E554F43, 0xEE0046475F45444FLL, v308);
  *v307 = v1082;

  v305(v1257, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v1083 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(77, 0x435952544E554F43, 0xEE0046505F45444FLL, v312);
  *v311 = v1083;

  v309(v1257, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = swift_isUniquelyReferenced_nonNull_native();
  v1084 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(78, 0x435952544E554F43, 0xEE0046545F45444FLL, v316);
  *v315 = v1084;

  v313(v1257, 0);
  v317 = sub_26738111C();
  v319 = v318;
  v320 = swift_isUniquelyReferenced_nonNull_native();
  v1085 = *v319;
  *v319 = 0x8000000000000000;
  sub_266ECD368(79, 0x435952544E554F43, 0xEE0041475F45444FLL, v320);
  *v319 = v1085;

  v317(v1257, 0);
  v321 = sub_26738111C();
  v323 = v322;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v1086 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD368(80, 0x435952544E554F43, 0xEE004D475F45444FLL, v324);
  *v323 = v1086;

  v321(v1257, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = swift_isUniquelyReferenced_nonNull_native();
  v1087 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(81, 0x435952544E554F43, 0xEE0045475F45444FLL, v328);
  *v327 = v1087;

  v325(v1257, 0);
  v329 = sub_26738111C();
  v331 = v330;
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v1088 = *v331;
  *v331 = 0x8000000000000000;
  sub_266ECD368(82, 0x435952544E554F43, 0xEE0045445F45444FLL, v332);
  *v331 = v1088;

  v329(v1257, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v1089 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(83, 0x435952544E554F43, 0xEE0048475F45444FLL, v336);
  *v335 = v1089;

  v333(v1257, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = swift_isUniquelyReferenced_nonNull_native();
  v1090 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(84, 0x435952544E554F43, 0xEE0049475F45444FLL, v340);
  *v339 = v1090;

  v337(v1257, 0);
  v341 = sub_26738111C();
  v343 = v342;
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v1091 = *v343;
  *v343 = 0x8000000000000000;
  sub_266ECD368(85, 0x435952544E554F43, 0xEE004C475F45444FLL, v344);
  *v343 = v1091;

  v341(v1257, 0);
  v345 = sub_26738111C();
  v347 = v346;
  v348 = swift_isUniquelyReferenced_nonNull_native();
  v1092 = *v347;
  *v347 = 0x8000000000000000;
  sub_266ECD368(86, 0x435952544E554F43, 0xEE0044475F45444FLL, v348);
  *v347 = v1092;

  v345(v1257, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = swift_isUniquelyReferenced_nonNull_native();
  v1093 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(87, 0x435952544E554F43, 0xEE0050475F45444FLL, v352);
  *v351 = v1093;

  v349(v1257, 0);
  v353 = sub_26738111C();
  v355 = v354;
  v356 = swift_isUniquelyReferenced_nonNull_native();
  v1094 = *v355;
  *v355 = 0x8000000000000000;
  sub_266ECD368(88, 0x435952544E554F43, 0xEE0055475F45444FLL, v356);
  *v355 = v1094;

  v353(v1257, 0);
  v357 = sub_26738111C();
  v359 = v358;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v1095 = *v359;
  *v359 = 0x8000000000000000;
  sub_266ECD368(89, 0x435952544E554F43, 0xEE0054475F45444FLL, v360);
  *v359 = v1095;

  v357(v1257, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v1096 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(90, 0x435952544E554F43, 0xEE0047475F45444FLL, v364);
  *v363 = v1096;

  v361(v1257, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = swift_isUniquelyReferenced_nonNull_native();
  v1097 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(91, 0x435952544E554F43, 0xEE004E475F45444FLL, v368);
  *v367 = v1097;

  v365(v1257, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = swift_isUniquelyReferenced_nonNull_native();
  v1098 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(92, 0x435952544E554F43, 0xEE0057475F45444FLL, v372);
  *v371 = v1098;

  v369(v1257, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = swift_isUniquelyReferenced_nonNull_native();
  v1099 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(93, 0x435952544E554F43, 0xEE0059475F45444FLL, v376);
  *v375 = v1099;

  v373(v1257, 0);
  v377 = sub_26738111C();
  v379 = v378;
  v380 = swift_isUniquelyReferenced_nonNull_native();
  v1100 = *v379;
  *v379 = 0x8000000000000000;
  sub_266ECD368(94, 0x435952544E554F43, 0xEE0054485F45444FLL, v380);
  *v379 = v1100;

  v377(v1257, 0);
  v381 = sub_26738111C();
  v383 = v382;
  v384 = swift_isUniquelyReferenced_nonNull_native();
  v1101 = *v383;
  *v383 = 0x8000000000000000;
  sub_266ECD368(95, 0x435952544E554F43, 0xEE0041565F45444FLL, v384);
  *v383 = v1101;

  v381(v1257, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = swift_isUniquelyReferenced_nonNull_native();
  v1102 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(96, 0x435952544E554F43, 0xEE004E485F45444FLL, v388);
  *v387 = v1102;

  v385(v1257, 0);
  v389 = sub_26738111C();
  v391 = v390;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v1103 = *v391;
  *v391 = 0x8000000000000000;
  sub_266ECD368(97, 0x435952544E554F43, 0xEE004B485F45444FLL, v392);
  *v391 = v1103;

  v389(v1257, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = swift_isUniquelyReferenced_nonNull_native();
  v1104 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(98, 0x435952544E554F43, 0xEE0055485F45444FLL, v396);
  *v395 = v1104;

  v393(v1257, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = swift_isUniquelyReferenced_nonNull_native();
  v1105 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(99, 0x435952544E554F43, 0xEE0053495F45444FLL, v400);
  *v399 = v1105;

  v397(v1257, 0);
  v401 = sub_26738111C();
  v403 = v402;
  v404 = swift_isUniquelyReferenced_nonNull_native();
  v1106 = *v403;
  *v403 = 0x8000000000000000;
  sub_266ECD368(100, 0x435952544E554F43, 0xEE004E495F45444FLL, v404);
  *v403 = v1106;

  v401(v1257, 0);
  v405 = sub_26738111C();
  v407 = v406;
  v408 = swift_isUniquelyReferenced_nonNull_native();
  v1107 = *v407;
  *v407 = 0x8000000000000000;
  sub_266ECD368(101, 0x435952544E554F43, 0xEE0044495F45444FLL, v408);
  *v407 = v1107;

  v405(v1257, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = swift_isUniquelyReferenced_nonNull_native();
  v1108 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(102, 0x435952544E554F43, 0xEE0052495F45444FLL, v412);
  *v411 = v1108;

  v409(v1257, 0);
  v413 = sub_26738111C();
  v415 = v414;
  v416 = swift_isUniquelyReferenced_nonNull_native();
  v1109 = *v415;
  *v415 = 0x8000000000000000;
  sub_266ECD368(103, 0x435952544E554F43, 0xEE0051495F45444FLL, v416);
  *v415 = v1109;

  v413(v1257, 0);
  v417 = sub_26738111C();
  v419 = v418;
  v420 = swift_isUniquelyReferenced_nonNull_native();
  v1110 = *v419;
  *v419 = 0x8000000000000000;
  sub_266ECD368(104, 0x435952544E554F43, 0xEE0045495F45444FLL, v420);
  *v419 = v1110;

  v417(v1257, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = swift_isUniquelyReferenced_nonNull_native();
  v1111 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(105, 0x435952544E554F43, 0xEE004D495F45444FLL, v424);
  *v423 = v1111;

  v421(v1257, 0);
  v425 = sub_26738111C();
  v427 = v426;
  v428 = swift_isUniquelyReferenced_nonNull_native();
  v1112 = *v427;
  *v427 = 0x8000000000000000;
  sub_266ECD368(106, 0x435952544E554F43, 0xEE004C495F45444FLL, v428);
  *v427 = v1112;

  v425(v1257, 0);
  v429 = sub_26738111C();
  v431 = v430;
  v432 = swift_isUniquelyReferenced_nonNull_native();
  v1113 = *v431;
  *v431 = 0x8000000000000000;
  sub_266ECD368(107, 0x435952544E554F43, 0xEE0054495F45444FLL, v432);
  *v431 = v1113;

  v429(v1257, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = swift_isUniquelyReferenced_nonNull_native();
  v1114 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(108, 0x435952544E554F43, 0xEE00454A5F45444FLL, v436);
  *v435 = v1114;

  v433(v1257, 0);
  v437 = sub_26738111C();
  v439 = v438;
  v440 = swift_isUniquelyReferenced_nonNull_native();
  v1115 = *v439;
  *v439 = 0x8000000000000000;
  sub_266ECD368(109, 0x435952544E554F43, 0xEE004F4A5F45444FLL, v440);
  *v439 = v1115;

  v437(v1257, 0);
  v441 = sub_26738111C();
  v443 = v442;
  v444 = swift_isUniquelyReferenced_nonNull_native();
  v1116 = *v443;
  *v443 = 0x8000000000000000;
  sub_266ECD368(110, 0x435952544E554F43, 0xEE005A4B5F45444FLL, v444);
  *v443 = v1116;

  v441(v1257, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = swift_isUniquelyReferenced_nonNull_native();
  v1117 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(111, 0x435952544E554F43, 0xEE00454B5F45444FLL, v448);
  *v447 = v1117;

  v445(v1257, 0);
  v449 = sub_26738111C();
  v451 = v450;
  v452 = swift_isUniquelyReferenced_nonNull_native();
  v1118 = *v451;
  *v451 = 0x8000000000000000;
  sub_266ECD368(112, 0x435952544E554F43, 0xEE00494B5F45444FLL, v452);
  *v451 = v1118;

  v449(v1257, 0);
  v453 = sub_26738111C();
  v455 = v454;
  v456 = swift_isUniquelyReferenced_nonNull_native();
  v1119 = *v455;
  *v455 = 0x8000000000000000;
  sub_266ECD368(113, 0x435952544E554F43, 0xEE00504B5F45444FLL, v456);
  *v455 = v1119;

  v453(v1257, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = swift_isUniquelyReferenced_nonNull_native();
  v1120 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(114, 0x435952544E554F43, 0xEE00524B5F45444FLL, v460);
  *v459 = v1120;

  v457(v1257, 0);
  v461 = sub_26738111C();
  v463 = v462;
  v464 = swift_isUniquelyReferenced_nonNull_native();
  v1121 = *v463;
  *v463 = 0x8000000000000000;
  sub_266ECD368(115, 0x435952544E554F43, 0xEE00574B5F45444FLL, v464);
  *v463 = v1121;

  v461(v1257, 0);
  v465 = sub_26738111C();
  v467 = v466;
  v468 = swift_isUniquelyReferenced_nonNull_native();
  v1122 = *v467;
  *v467 = 0x8000000000000000;
  sub_266ECD368(116, 0x435952544E554F43, 0xEE00474B5F45444FLL, v468);
  *v467 = v1122;

  v465(v1257, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = swift_isUniquelyReferenced_nonNull_native();
  v1123 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(117, 0x435952544E554F43, 0xEE00414C5F45444FLL, v472);
  *v471 = v1123;

  v469(v1257, 0);
  v473 = sub_26738111C();
  v475 = v474;
  v476 = swift_isUniquelyReferenced_nonNull_native();
  v1124 = *v475;
  *v475 = 0x8000000000000000;
  sub_266ECD368(118, 0x435952544E554F43, 0xEE00564C5F45444FLL, v476);
  *v475 = v1124;

  v473(v1257, 0);
  v477 = sub_26738111C();
  v479 = v478;
  v480 = swift_isUniquelyReferenced_nonNull_native();
  v1125 = *v479;
  *v479 = 0x8000000000000000;
  sub_266ECD368(119, 0x435952544E554F43, 0xEE00424C5F45444FLL, v480);
  *v479 = v1125;

  v477(v1257, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = swift_isUniquelyReferenced_nonNull_native();
  v1126 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(120, 0x435952544E554F43, 0xEE00534C5F45444FLL, v484);
  *v483 = v1126;

  v481(v1257, 0);
  v485 = sub_26738111C();
  v487 = v486;
  v488 = swift_isUniquelyReferenced_nonNull_native();
  v1127 = *v487;
  *v487 = 0x8000000000000000;
  sub_266ECD368(121, 0x435952544E554F43, 0xEE00524C5F45444FLL, v488);
  *v487 = v1127;

  v485(v1257, 0);
  v489 = sub_26738111C();
  v491 = v490;
  v492 = swift_isUniquelyReferenced_nonNull_native();
  v1128 = *v491;
  *v491 = 0x8000000000000000;
  sub_266ECD368(122, 0x435952544E554F43, 0xEE00594C5F45444FLL, v492);
  *v491 = v1128;

  v489(v1257, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = swift_isUniquelyReferenced_nonNull_native();
  v1129 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(123, 0x435952544E554F43, 0xEE00494C5F45444FLL, v496);
  *v495 = v1129;

  v493(v1257, 0);
  v497 = sub_26738111C();
  v499 = v498;
  v500 = swift_isUniquelyReferenced_nonNull_native();
  v1130 = *v499;
  *v499 = 0x8000000000000000;
  sub_266ECD368(124, 0x435952544E554F43, 0xEE00544C5F45444FLL, v500);
  *v499 = v1130;

  v497(v1257, 0);
  v501 = sub_26738111C();
  v503 = v502;
  v504 = swift_isUniquelyReferenced_nonNull_native();
  v1131 = *v503;
  *v503 = 0x8000000000000000;
  sub_266ECD368(125, 0x435952544E554F43, 0xEE00554C5F45444FLL, v504);
  *v503 = v1131;

  v501(v1257, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = swift_isUniquelyReferenced_nonNull_native();
  v1132 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(126, 0x435952544E554F43, 0xEE004F4D5F45444FLL, v508);
  *v507 = v1132;

  v505(v1257, 0);
  v509 = sub_26738111C();
  v511 = v510;
  v512 = swift_isUniquelyReferenced_nonNull_native();
  v1133 = *v511;
  *v511 = 0x8000000000000000;
  sub_266ECD368(127, 0x435952544E554F43, 0xEE004B4D5F45444FLL, v512);
  *v511 = v1133;

  v509(v1257, 0);
  v513 = sub_26738111C();
  v515 = v514;
  v516 = swift_isUniquelyReferenced_nonNull_native();
  v1134 = *v515;
  *v515 = 0x8000000000000000;
  sub_266ECD368(128, 0x435952544E554F43, 0xEE00474D5F45444FLL, v516);
  *v515 = v1134;

  v513(v1257, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = swift_isUniquelyReferenced_nonNull_native();
  v1135 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(129, 0x435952544E554F43, 0xEE00574D5F45444FLL, v520);
  *v519 = v1135;

  v517(v1257, 0);
  v521 = sub_26738111C();
  v523 = v522;
  v524 = swift_isUniquelyReferenced_nonNull_native();
  v1136 = *v523;
  *v523 = 0x8000000000000000;
  sub_266ECD368(130, 0x435952544E554F43, 0xEE00594D5F45444FLL, v524);
  *v523 = v1136;

  v521(v1257, 0);
  v525 = sub_26738111C();
  v527 = v526;
  v528 = swift_isUniquelyReferenced_nonNull_native();
  v1137 = *v527;
  *v527 = 0x8000000000000000;
  sub_266ECD368(131, 0x435952544E554F43, 0xEE00564D5F45444FLL, v528);
  *v527 = v1137;

  v525(v1257, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = swift_isUniquelyReferenced_nonNull_native();
  v1138 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(132, 0x435952544E554F43, 0xEE004C4D5F45444FLL, v532);
  *v531 = v1138;

  v529(v1257, 0);
  v533 = sub_26738111C();
  v535 = v534;
  v536 = swift_isUniquelyReferenced_nonNull_native();
  v1139 = *v535;
  *v535 = 0x8000000000000000;
  sub_266ECD368(133, 0x435952544E554F43, 0xEE00544D5F45444FLL, v536);
  *v535 = v1139;

  v533(v1257, 0);
  v537 = sub_26738111C();
  v539 = v538;
  v540 = swift_isUniquelyReferenced_nonNull_native();
  v1140 = *v539;
  *v539 = 0x8000000000000000;
  sub_266ECD368(134, 0x435952544E554F43, 0xEE00484D5F45444FLL, v540);
  *v539 = v1140;

  v537(v1257, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = swift_isUniquelyReferenced_nonNull_native();
  v1141 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(135, 0x435952544E554F43, 0xEE00514D5F45444FLL, v544);
  *v543 = v1141;

  v541(v1257, 0);
  v545 = sub_26738111C();
  v547 = v546;
  v548 = swift_isUniquelyReferenced_nonNull_native();
  v1142 = *v547;
  *v547 = 0x8000000000000000;
  sub_266ECD368(136, 0x435952544E554F43, 0xEE00524D5F45444FLL, v548);
  *v547 = v1142;

  v545(v1257, 0);
  v549 = sub_26738111C();
  v551 = v550;
  v552 = swift_isUniquelyReferenced_nonNull_native();
  v1143 = *v551;
  *v551 = 0x8000000000000000;
  sub_266ECD368(137, 0x435952544E554F43, 0xEE00554D5F45444FLL, v552);
  *v551 = v1143;

  v549(v1257, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = swift_isUniquelyReferenced_nonNull_native();
  v1144 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(138, 0x435952544E554F43, 0xEE0054595F45444FLL, v556);
  *v555 = v1144;

  v553(v1257, 0);
  v557 = sub_26738111C();
  v559 = v558;
  v560 = swift_isUniquelyReferenced_nonNull_native();
  v1145 = *v559;
  *v559 = 0x8000000000000000;
  sub_266ECD368(139, 0x435952544E554F43, 0xEE00584D5F45444FLL, v560);
  *v559 = v1145;

  v557(v1257, 0);
  v561 = sub_26738111C();
  v563 = v562;
  v564 = swift_isUniquelyReferenced_nonNull_native();
  v1146 = *v563;
  *v563 = 0x8000000000000000;
  sub_266ECD368(140, 0x435952544E554F43, 0xEE004D465F45444FLL, v564);
  *v563 = v1146;

  v561(v1257, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = swift_isUniquelyReferenced_nonNull_native();
  v1147 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(141, 0x435952544E554F43, 0xEE00444D5F45444FLL, v568);
  *v567 = v1147;

  v565(v1257, 0);
  v569 = sub_26738111C();
  v571 = v570;
  v572 = swift_isUniquelyReferenced_nonNull_native();
  v1148 = *v571;
  *v571 = 0x8000000000000000;
  sub_266ECD368(142, 0x435952544E554F43, 0xEE00434D5F45444FLL, v572);
  *v571 = v1148;

  v569(v1257, 0);
  v573 = sub_26738111C();
  v575 = v574;
  v576 = swift_isUniquelyReferenced_nonNull_native();
  v1149 = *v575;
  *v575 = 0x8000000000000000;
  sub_266ECD368(143, 0x435952544E554F43, 0xEE004E4D5F45444FLL, v576);
  *v575 = v1149;

  v573(v1257, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = swift_isUniquelyReferenced_nonNull_native();
  v1150 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(144, 0x435952544E554F43, 0xEE00454D5F45444FLL, v580);
  *v579 = v1150;

  v577(v1257, 0);
  v581 = sub_26738111C();
  v583 = v582;
  v584 = swift_isUniquelyReferenced_nonNull_native();
  v1151 = *v583;
  *v583 = 0x8000000000000000;
  sub_266ECD368(145, 0x435952544E554F43, 0xEE00534D5F45444FLL, v584);
  *v583 = v1151;

  v581(v1257, 0);
  v585 = sub_26738111C();
  v587 = v586;
  v588 = swift_isUniquelyReferenced_nonNull_native();
  v1152 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD368(146, 0x435952544E554F43, 0xEE00414D5F45444FLL, v588);
  *v587 = v1152;

  v585(v1257, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = swift_isUniquelyReferenced_nonNull_native();
  v1153 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(147, 0x435952544E554F43, 0xEE005A4D5F45444FLL, v592);
  *v591 = v1153;

  v589(v1257, 0);
  v593 = sub_26738111C();
  v595 = v594;
  v596 = swift_isUniquelyReferenced_nonNull_native();
  v1154 = *v595;
  *v595 = 0x8000000000000000;
  sub_266ECD368(148, 0x435952544E554F43, 0xEE004D4D5F45444FLL, v596);
  *v595 = v1154;

  v593(v1257, 0);
  v597 = sub_26738111C();
  v599 = v598;
  v600 = swift_isUniquelyReferenced_nonNull_native();
  v1155 = *v599;
  *v599 = 0x8000000000000000;
  sub_266ECD368(149, 0x435952544E554F43, 0xEE00414E5F45444FLL, v600);
  *v599 = v1155;

  v597(v1257, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = swift_isUniquelyReferenced_nonNull_native();
  v1156 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(150, 0x435952544E554F43, 0xEE00524E5F45444FLL, v604);
  *v603 = v1156;

  v601(v1257, 0);
  v605 = sub_26738111C();
  v607 = v606;
  v608 = swift_isUniquelyReferenced_nonNull_native();
  v1157 = *v607;
  *v607 = 0x8000000000000000;
  sub_266ECD368(151, 0x435952544E554F43, 0xEE00504E5F45444FLL, v608);
  *v607 = v1157;

  v605(v1257, 0);
  v609 = sub_26738111C();
  v611 = v610;
  v612 = swift_isUniquelyReferenced_nonNull_native();
  v1158 = *v611;
  *v611 = 0x8000000000000000;
  sub_266ECD368(152, 0x435952544E554F43, 0xEE004C4E5F45444FLL, v612);
  *v611 = v1158;

  v609(v1257, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = swift_isUniquelyReferenced_nonNull_native();
  v1159 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(153, 0x435952544E554F43, 0xEE00434E5F45444FLL, v616);
  *v615 = v1159;

  v613(v1257, 0);
  v617 = sub_26738111C();
  v619 = v618;
  v620 = swift_isUniquelyReferenced_nonNull_native();
  v1160 = *v619;
  *v619 = 0x8000000000000000;
  sub_266ECD368(154, 0x435952544E554F43, 0xEE005A4E5F45444FLL, v620);
  *v619 = v1160;

  v617(v1257, 0);
  v621 = sub_26738111C();
  v623 = v622;
  v624 = swift_isUniquelyReferenced_nonNull_native();
  v1161 = *v623;
  *v623 = 0x8000000000000000;
  sub_266ECD368(155, 0x435952544E554F43, 0xEE00494E5F45444FLL, v624);
  *v623 = v1161;

  v621(v1257, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = swift_isUniquelyReferenced_nonNull_native();
  v1162 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(156, 0x435952544E554F43, 0xEE00454E5F45444FLL, v628);
  *v627 = v1162;

  v625(v1257, 0);
  v629 = sub_26738111C();
  v631 = v630;
  v632 = swift_isUniquelyReferenced_nonNull_native();
  v1163 = *v631;
  *v631 = 0x8000000000000000;
  sub_266ECD368(157, 0x435952544E554F43, 0xEE00474E5F45444FLL, v632);
  *v631 = v1163;

  v629(v1257, 0);
  v633 = sub_26738111C();
  v635 = v634;
  v636 = swift_isUniquelyReferenced_nonNull_native();
  v1164 = *v635;
  *v635 = 0x8000000000000000;
  sub_266ECD368(158, 0x435952544E554F43, 0xEE00554E5F45444FLL, v636);
  *v635 = v1164;

  v633(v1257, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = swift_isUniquelyReferenced_nonNull_native();
  v1165 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(159, 0x435952544E554F43, 0xEE00464E5F45444FLL, v640);
  *v639 = v1165;

  v637(v1257, 0);
  v641 = sub_26738111C();
  v643 = v642;
  v644 = swift_isUniquelyReferenced_nonNull_native();
  v1166 = *v643;
  *v643 = 0x8000000000000000;
  sub_266ECD368(160, 0x435952544E554F43, 0xEE004F4E5F45444FLL, v644);
  *v643 = v1166;

  v641(v1257, 0);
  v645 = sub_26738111C();
  v647 = v646;
  v648 = swift_isUniquelyReferenced_nonNull_native();
  v1167 = *v647;
  *v647 = 0x8000000000000000;
  sub_266ECD368(161, 0x435952544E554F43, 0xEE004D4F5F45444FLL, v648);
  *v647 = v1167;

  v645(v1257, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = swift_isUniquelyReferenced_nonNull_native();
  v1168 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(162, 0x435952544E554F43, 0xEE004B505F45444FLL, v652);
  *v651 = v1168;

  v649(v1257, 0);
  v653 = sub_26738111C();
  v655 = v654;
  v656 = swift_isUniquelyReferenced_nonNull_native();
  v1169 = *v655;
  *v655 = 0x8000000000000000;
  sub_266ECD368(163, 0x435952544E554F43, 0xEE0057505F45444FLL, v656);
  *v655 = v1169;

  v653(v1257, 0);
  v657 = sub_26738111C();
  v659 = v658;
  v660 = swift_isUniquelyReferenced_nonNull_native();
  v1170 = *v659;
  *v659 = 0x8000000000000000;
  sub_266ECD368(164, 0x435952544E554F43, 0xEE0053505F45444FLL, v660);
  *v659 = v1170;

  v657(v1257, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = swift_isUniquelyReferenced_nonNull_native();
  v1171 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(165, 0x435952544E554F43, 0xEE0041505F45444FLL, v664);
  *v663 = v1171;

  v661(v1257, 0);
  v665 = sub_26738111C();
  v667 = v666;
  v668 = swift_isUniquelyReferenced_nonNull_native();
  v1172 = *v667;
  *v667 = 0x8000000000000000;
  sub_266ECD368(166, 0x435952544E554F43, 0xEE0047505F45444FLL, v668);
  *v667 = v1172;

  v665(v1257, 0);
  v669 = sub_26738111C();
  v671 = v670;
  v672 = swift_isUniquelyReferenced_nonNull_native();
  v1173 = *v671;
  *v671 = 0x8000000000000000;
  sub_266ECD368(167, 0x435952544E554F43, 0xEE0059505F45444FLL, v672);
  *v671 = v1173;

  v669(v1257, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = swift_isUniquelyReferenced_nonNull_native();
  v1174 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(168, 0x435952544E554F43, 0xEE0048505F45444FLL, v676);
  *v675 = v1174;

  v673(v1257, 0);
  v677 = sub_26738111C();
  v679 = v678;
  v680 = swift_isUniquelyReferenced_nonNull_native();
  v1175 = *v679;
  *v679 = 0x8000000000000000;
  sub_266ECD368(169, 0x435952544E554F43, 0xEE004E505F45444FLL, v680);
  *v679 = v1175;

  v677(v1257, 0);
  v681 = sub_26738111C();
  v683 = v682;
  v684 = swift_isUniquelyReferenced_nonNull_native();
  v1176 = *v683;
  *v683 = 0x8000000000000000;
  sub_266ECD368(170, 0x435952544E554F43, 0xEE004C505F45444FLL, v684);
  *v683 = v1176;

  v681(v1257, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = swift_isUniquelyReferenced_nonNull_native();
  v1177 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(171, 0x435952544E554F43, 0xEE0054505F45444FLL, v688);
  *v687 = v1177;

  v685(v1257, 0);
  v689 = sub_26738111C();
  v691 = v690;
  v692 = swift_isUniquelyReferenced_nonNull_native();
  v1178 = *v691;
  *v691 = 0x8000000000000000;
  sub_266ECD368(172, 0x435952544E554F43, 0xEE0052505F45444FLL, v692);
  *v691 = v1178;

  v689(v1257, 0);
  v693 = sub_26738111C();
  v695 = v694;
  v696 = swift_isUniquelyReferenced_nonNull_native();
  v1179 = *v695;
  *v695 = 0x8000000000000000;
  sub_266ECD368(173, 0x435952544E554F43, 0xEE0041515F45444FLL, v696);
  *v695 = v1179;

  v693(v1257, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = swift_isUniquelyReferenced_nonNull_native();
  v1180 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(174, 0x435952544E554F43, 0xEE004F525F45444FLL, v700);
  *v699 = v1180;

  v697(v1257, 0);
  v701 = sub_26738111C();
  v703 = v702;
  v704 = swift_isUniquelyReferenced_nonNull_native();
  v1181 = *v703;
  *v703 = 0x8000000000000000;
  sub_266ECD368(175, 0x435952544E554F43, 0xEE0055525F45444FLL, v704);
  *v703 = v1181;

  v701(v1257, 0);
  v705 = sub_26738111C();
  v707 = v706;
  v708 = swift_isUniquelyReferenced_nonNull_native();
  v1182 = *v707;
  *v707 = 0x8000000000000000;
  sub_266ECD368(176, 0x435952544E554F43, 0xEE0057525F45444FLL, v708);
  *v707 = v1182;

  v705(v1257, 0);
  v709 = sub_26738111C();
  v711 = v710;
  v712 = swift_isUniquelyReferenced_nonNull_native();
  v1183 = *v711;
  *v711 = 0x8000000000000000;
  sub_266ECD368(177, 0x435952544E554F43, 0xEE0048535F45444FLL, v712);
  *v711 = v1183;

  v709(v1257, 0);
  v713 = sub_26738111C();
  v715 = v714;
  v716 = swift_isUniquelyReferenced_nonNull_native();
  v1184 = *v715;
  *v715 = 0x8000000000000000;
  sub_266ECD368(178, 0x435952544E554F43, 0xEE004E4B5F45444FLL, v716);
  *v715 = v1184;

  v713(v1257, 0);
  v717 = sub_26738111C();
  v719 = v718;
  v720 = swift_isUniquelyReferenced_nonNull_native();
  v1185 = *v719;
  *v719 = 0x8000000000000000;
  sub_266ECD368(179, 0x435952544E554F43, 0xEE00434C5F45444FLL, v720);
  *v719 = v1185;

  v717(v1257, 0);
  v721 = sub_26738111C();
  v723 = v722;
  v724 = swift_isUniquelyReferenced_nonNull_native();
  v1186 = *v723;
  *v723 = 0x8000000000000000;
  sub_266ECD368(180, 0x435952544E554F43, 0xEE00464D5F45444FLL, v724);
  *v723 = v1186;

  v721(v1257, 0);
  v725 = sub_26738111C();
  v727 = v726;
  v728 = swift_isUniquelyReferenced_nonNull_native();
  v1187 = *v727;
  *v727 = 0x8000000000000000;
  sub_266ECD368(181, 0x435952544E554F43, 0xEE004D505F45444FLL, v728);
  *v727 = v1187;

  v725(v1257, 0);
  v729 = sub_26738111C();
  v731 = v730;
  v732 = swift_isUniquelyReferenced_nonNull_native();
  v1188 = *v731;
  *v731 = 0x8000000000000000;
  sub_266ECD368(182, 0x435952544E554F43, 0xEE0043565F45444FLL, v732);
  *v731 = v1188;

  v729(v1257, 0);
  v733 = sub_26738111C();
  v735 = v734;
  v736 = swift_isUniquelyReferenced_nonNull_native();
  v1189 = *v735;
  *v735 = 0x8000000000000000;
  sub_266ECD368(183, 0x435952544E554F43, 0xEE0053575F45444FLL, v736);
  *v735 = v1189;

  v733(v1257, 0);
  v737 = sub_26738111C();
  v739 = v738;
  v740 = swift_isUniquelyReferenced_nonNull_native();
  v1190 = *v739;
  *v739 = 0x8000000000000000;
  sub_266ECD368(184, 0x435952544E554F43, 0xEE004D535F45444FLL, v740);
  *v739 = v1190;

  v737(v1257, 0);
  v741 = sub_26738111C();
  v743 = v742;
  v744 = swift_isUniquelyReferenced_nonNull_native();
  v1191 = *v743;
  *v743 = 0x8000000000000000;
  sub_266ECD368(185, 0x435952544E554F43, 0xEE0054535F45444FLL, v744);
  *v743 = v1191;

  v741(v1257, 0);
  v745 = sub_26738111C();
  v747 = v746;
  v748 = swift_isUniquelyReferenced_nonNull_native();
  v1192 = *v747;
  *v747 = 0x8000000000000000;
  sub_266ECD368(186, 0x435952544E554F43, 0xEE0041535F45444FLL, v748);
  *v747 = v1192;

  v745(v1257, 0);
  v749 = sub_26738111C();
  v751 = v750;
  v752 = swift_isUniquelyReferenced_nonNull_native();
  v1193 = *v751;
  *v751 = 0x8000000000000000;
  sub_266ECD368(187, 0x435952544E554F43, 0xEE0053525F45444FLL, v752);
  *v751 = v1193;

  v749(v1257, 0);
  v753 = sub_26738111C();
  v755 = v754;
  v756 = swift_isUniquelyReferenced_nonNull_native();
  v1194 = *v755;
  *v755 = 0x8000000000000000;
  sub_266ECD368(188, 0x435952544E554F43, 0xEE0043535F45444FLL, v756);
  *v755 = v1194;

  v753(v1257, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = swift_isUniquelyReferenced_nonNull_native();
  v1195 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(189, 0x435952544E554F43, 0xEE004C535F45444FLL, v760);
  *v759 = v1195;

  v757(v1257, 0);
  v761 = sub_26738111C();
  v763 = v762;
  v764 = swift_isUniquelyReferenced_nonNull_native();
  v1196 = *v763;
  *v763 = 0x8000000000000000;
  sub_266ECD368(190, 0x435952544E554F43, 0xEE0047535F45444FLL, v764);
  *v763 = v1196;

  v761(v1257, 0);
  v765 = sub_26738111C();
  v767 = v766;
  v768 = swift_isUniquelyReferenced_nonNull_native();
  v1197 = *v767;
  *v767 = 0x8000000000000000;
  sub_266ECD368(191, 0x435952544E554F43, 0xEE004B535F45444FLL, v768);
  *v767 = v1197;

  v765(v1257, 0);
  v769 = sub_26738111C();
  v771 = v770;
  v772 = swift_isUniquelyReferenced_nonNull_native();
  v1198 = *v771;
  *v771 = 0x8000000000000000;
  sub_266ECD368(192, 0x435952544E554F43, 0xEE0049535F45444FLL, v772);
  *v771 = v1198;

  v769(v1257, 0);
  v773 = sub_26738111C();
  v775 = v774;
  v776 = swift_isUniquelyReferenced_nonNull_native();
  v1199 = *v775;
  *v775 = 0x8000000000000000;
  sub_266ECD368(193, 0x435952544E554F43, 0xEE0042535F45444FLL, v776);
  *v775 = v1199;

  v773(v1257, 0);
  v777 = sub_26738111C();
  v779 = v778;
  v780 = swift_isUniquelyReferenced_nonNull_native();
  v1200 = *v779;
  *v779 = 0x8000000000000000;
  sub_266ECD368(194, 0x435952544E554F43, 0xEE004F535F45444FLL, v780);
  *v779 = v1200;

  v777(v1257, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = swift_isUniquelyReferenced_nonNull_native();
  v1201 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(195, 0x435952544E554F43, 0xEE00415A5F45444FLL, v784);
  *v783 = v1201;

  v781(v1257, 0);
  v785 = sub_26738111C();
  v787 = v786;
  v788 = swift_isUniquelyReferenced_nonNull_native();
  v1202 = *v787;
  *v787 = 0x8000000000000000;
  sub_266ECD368(196, 0x435952544E554F43, 0xEE0053475F45444FLL, v788);
  *v787 = v1202;

  v785(v1257, 0);
  v789 = sub_26738111C();
  v791 = v790;
  v792 = swift_isUniquelyReferenced_nonNull_native();
  v1203 = *v791;
  *v791 = 0x8000000000000000;
  sub_266ECD368(197, 0x435952544E554F43, 0xEE0053535F45444FLL, v792);
  *v791 = v1203;

  v789(v1257, 0);
  v793 = sub_26738111C();
  v795 = v794;
  v796 = swift_isUniquelyReferenced_nonNull_native();
  v1204 = *v795;
  *v795 = 0x8000000000000000;
  sub_266ECD368(198, 0x435952544E554F43, 0xEE0053455F45444FLL, v796);
  *v795 = v1204;

  v793(v1257, 0);
  v797 = sub_26738111C();
  v799 = v798;
  v800 = swift_isUniquelyReferenced_nonNull_native();
  v1205 = *v799;
  *v799 = 0x8000000000000000;
  sub_266ECD368(199, 0x435952544E554F43, 0xEE004B4C5F45444FLL, v800);
  *v799 = v1205;

  v797(v1257, 0);
  v801 = sub_26738111C();
  v803 = v802;
  v804 = swift_isUniquelyReferenced_nonNull_native();
  v1206 = *v803;
  *v803 = 0x8000000000000000;
  sub_266ECD368(200, 0x435952544E554F43, 0xEE0044535F45444FLL, v804);
  *v803 = v1206;

  v801(v1257, 0);
  v805 = sub_26738111C();
  v807 = v806;
  v808 = swift_isUniquelyReferenced_nonNull_native();
  v1207 = *v807;
  *v807 = 0x8000000000000000;
  sub_266ECD368(201, 0x435952544E554F43, 0xEE0052535F45444FLL, v808);
  *v807 = v1207;

  v805(v1257, 0);
  v809 = sub_26738111C();
  v811 = v810;
  v812 = swift_isUniquelyReferenced_nonNull_native();
  v1208 = *v811;
  *v811 = 0x8000000000000000;
  sub_266ECD368(202, 0x435952544E554F43, 0xEE004A535F45444FLL, v812);
  *v811 = v1208;

  v809(v1257, 0);
  v813 = sub_26738111C();
  v815 = v814;
  v816 = swift_isUniquelyReferenced_nonNull_native();
  v1209 = *v815;
  *v815 = 0x8000000000000000;
  sub_266ECD368(203, 0x435952544E554F43, 0xEE0045535F45444FLL, v816);
  *v815 = v1209;

  v813(v1257, 0);
  v817 = sub_26738111C();
  v819 = v818;
  v820 = swift_isUniquelyReferenced_nonNull_native();
  v1210 = *v819;
  *v819 = 0x8000000000000000;
  sub_266ECD368(204, 0x435952544E554F43, 0xEE0048435F45444FLL, v820);
  *v819 = v1210;

  v817(v1257, 0);
  v821 = sub_26738111C();
  v823 = v822;
  v824 = swift_isUniquelyReferenced_nonNull_native();
  v1211 = *v823;
  *v823 = 0x8000000000000000;
  sub_266ECD368(205, 0x435952544E554F43, 0xEE0059535F45444FLL, v824);
  *v823 = v1211;

  v821(v1257, 0);
  v825 = sub_26738111C();
  v827 = v826;
  v828 = swift_isUniquelyReferenced_nonNull_native();
  v1212 = *v827;
  *v827 = 0x8000000000000000;
  sub_266ECD368(206, 0x435952544E554F43, 0xEE0057545F45444FLL, v828);
  *v827 = v1212;

  v825(v1257, 0);
  v829 = sub_26738111C();
  v831 = v830;
  v832 = swift_isUniquelyReferenced_nonNull_native();
  v1213 = *v831;
  *v831 = 0x8000000000000000;
  sub_266ECD368(207, 0x435952544E554F43, 0xEE004A545F45444FLL, v832);
  *v831 = v1213;

  v829(v1257, 0);
  v833 = sub_26738111C();
  v835 = v834;
  v836 = swift_isUniquelyReferenced_nonNull_native();
  v1214 = *v835;
  *v835 = 0x8000000000000000;
  sub_266ECD368(208, 0x435952544E554F43, 0xEE005A545F45444FLL, v836);
  *v835 = v1214;

  v833(v1257, 0);
  v837 = sub_26738111C();
  v839 = v838;
  v840 = swift_isUniquelyReferenced_nonNull_native();
  v1215 = *v839;
  *v839 = 0x8000000000000000;
  sub_266ECD368(209, 0x435952544E554F43, 0xEE0048545F45444FLL, v840);
  *v839 = v1215;

  v837(v1257, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = swift_isUniquelyReferenced_nonNull_native();
  v1216 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(210, 0x435952544E554F43, 0xEE004C545F45444FLL, v844);
  *v843 = v1216;

  v841(v1257, 0);
  v845 = sub_26738111C();
  v847 = v846;
  v848 = swift_isUniquelyReferenced_nonNull_native();
  v1217 = *v847;
  *v847 = 0x8000000000000000;
  sub_266ECD368(211, 0x435952544E554F43, 0xEE0047545F45444FLL, v848);
  *v847 = v1217;

  v845(v1257, 0);
  v849 = sub_26738111C();
  v851 = v850;
  v852 = swift_isUniquelyReferenced_nonNull_native();
  v1218 = *v851;
  *v851 = 0x8000000000000000;
  sub_266ECD368(212, 0x435952544E554F43, 0xEE004B545F45444FLL, v852);
  *v851 = v1218;

  v849(v1257, 0);
  v853 = sub_26738111C();
  v855 = v854;
  v856 = swift_isUniquelyReferenced_nonNull_native();
  v1219 = *v855;
  *v855 = 0x8000000000000000;
  sub_266ECD368(213, 0x435952544E554F43, 0xEE004F545F45444FLL, v856);
  *v855 = v1219;

  v853(v1257, 0);
  v857 = sub_26738111C();
  v859 = v858;
  v860 = swift_isUniquelyReferenced_nonNull_native();
  v1220 = *v859;
  *v859 = 0x8000000000000000;
  sub_266ECD368(214, 0x435952544E554F43, 0xEE0054545F45444FLL, v860);
  *v859 = v1220;

  v857(v1257, 0);
  v861 = sub_26738111C();
  v863 = v862;
  v864 = swift_isUniquelyReferenced_nonNull_native();
  v1221 = *v863;
  *v863 = 0x8000000000000000;
  sub_266ECD368(215, 0x435952544E554F43, 0xEE004E545F45444FLL, v864);
  *v863 = v1221;

  v861(v1257, 0);
  v865 = sub_26738111C();
  v867 = v866;
  v868 = swift_isUniquelyReferenced_nonNull_native();
  v1222 = *v867;
  *v867 = 0x8000000000000000;
  sub_266ECD368(216, 0x435952544E554F43, 0xEE0052545F45444FLL, v868);
  *v867 = v1222;

  v865(v1257, 0);
  v869 = sub_26738111C();
  v871 = v870;
  v872 = swift_isUniquelyReferenced_nonNull_native();
  v1223 = *v871;
  *v871 = 0x8000000000000000;
  sub_266ECD368(217, 0x435952544E554F43, 0xEE004D545F45444FLL, v872);
  *v871 = v1223;

  v869(v1257, 0);
  v873 = sub_26738111C();
  v875 = v874;
  v876 = swift_isUniquelyReferenced_nonNull_native();
  v1224 = *v875;
  *v875 = 0x8000000000000000;
  sub_266ECD368(218, 0x435952544E554F43, 0xEE0043545F45444FLL, v876);
  *v875 = v1224;

  v873(v1257, 0);
  v877 = sub_26738111C();
  v879 = v878;
  v880 = swift_isUniquelyReferenced_nonNull_native();
  v1225 = *v879;
  *v879 = 0x8000000000000000;
  sub_266ECD368(219, 0x435952544E554F43, 0xEE0056545F45444FLL, v880);
  *v879 = v1225;

  v877(v1257, 0);
  v881 = sub_26738111C();
  v883 = v882;
  v884 = swift_isUniquelyReferenced_nonNull_native();
  v1226 = *v883;
  *v883 = 0x8000000000000000;
  sub_266ECD368(220, 0x435952544E554F43, 0xEE0047555F45444FLL, v884);
  *v883 = v1226;

  v881(v1257, 0);
  v885 = sub_26738111C();
  v887 = v886;
  v888 = swift_isUniquelyReferenced_nonNull_native();
  v1227 = *v887;
  *v887 = 0x8000000000000000;
  sub_266ECD368(221, 0x435952544E554F43, 0xEE0041555F45444FLL, v888);
  *v887 = v1227;

  v885(v1257, 0);
  v889 = sub_26738111C();
  v891 = v890;
  v892 = swift_isUniquelyReferenced_nonNull_native();
  v1228 = *v891;
  *v891 = 0x8000000000000000;
  sub_266ECD368(222, 0x435952544E554F43, 0xEE0045415F45444FLL, v892);
  *v891 = v1228;

  v889(v1257, 0);
  v893 = sub_26738111C();
  v895 = v894;
  v896 = swift_isUniquelyReferenced_nonNull_native();
  v1229 = *v895;
  *v895 = 0x8000000000000000;
  sub_266ECD368(223, 0x435952544E554F43, 0xEE0042475F45444FLL, v896);
  *v895 = v1229;

  v893(v1257, 0);
  v897 = sub_26738111C();
  v899 = v898;
  v900 = swift_isUniquelyReferenced_nonNull_native();
  v1230 = *v899;
  *v899 = 0x8000000000000000;
  sub_266ECD368(224, 0x435952544E554F43, 0xEE004D555F45444FLL, v900);
  *v899 = v1230;

  v897(v1257, 0);
  v901 = sub_26738111C();
  v903 = v902;
  v904 = swift_isUniquelyReferenced_nonNull_native();
  v1231 = *v903;
  *v903 = 0x8000000000000000;
  sub_266ECD368(225, 0x435952544E554F43, 0xEE0053555F45444FLL, v904);
  *v903 = v1231;

  v901(v1257, 0);
  v905 = sub_26738111C();
  v907 = v906;
  v908 = swift_isUniquelyReferenced_nonNull_native();
  v1232 = *v907;
  *v907 = 0x8000000000000000;
  sub_266ECD368(226, 0x435952544E554F43, 0xEE0059555F45444FLL, v908);
  *v907 = v1232;

  v905(v1257, 0);
  v909 = sub_26738111C();
  v911 = v910;
  v912 = swift_isUniquelyReferenced_nonNull_native();
  v1233 = *v911;
  *v911 = 0x8000000000000000;
  sub_266ECD368(227, 0x435952544E554F43, 0xEE005A555F45444FLL, v912);
  *v911 = v1233;

  v909(v1257, 0);
  v913 = sub_26738111C();
  v915 = v914;
  v916 = swift_isUniquelyReferenced_nonNull_native();
  v1234 = *v915;
  *v915 = 0x8000000000000000;
  sub_266ECD368(228, 0x435952544E554F43, 0xEE0055565F45444FLL, v916);
  *v915 = v1234;

  v913(v1257, 0);
  v917 = sub_26738111C();
  v919 = v918;
  v920 = swift_isUniquelyReferenced_nonNull_native();
  v1235 = *v919;
  *v919 = 0x8000000000000000;
  sub_266ECD368(229, 0x435952544E554F43, 0xEE0045565F45444FLL, v920);
  *v919 = v1235;

  v917(v1257, 0);
  v921 = sub_26738111C();
  v923 = v922;
  v924 = swift_isUniquelyReferenced_nonNull_native();
  v1236 = *v923;
  *v923 = 0x8000000000000000;
  sub_266ECD368(230, 0x435952544E554F43, 0xEE004E565F45444FLL, v924);
  *v923 = v1236;

  v921(v1257, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = swift_isUniquelyReferenced_nonNull_native();
  v1237 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(231, 0x435952544E554F43, 0xEE0047565F45444FLL, v928);
  *v927 = v1237;

  v925(v1257, 0);
  v929 = sub_26738111C();
  v931 = v930;
  v932 = swift_isUniquelyReferenced_nonNull_native();
  v1238 = *v931;
  *v931 = 0x8000000000000000;
  sub_266ECD368(232, 0x435952544E554F43, 0xEE0049565F45444FLL, v932);
  *v931 = v1238;

  v929(v1257, 0);
  v933 = sub_26738111C();
  v935 = v934;
  v936 = swift_isUniquelyReferenced_nonNull_native();
  v1239 = *v935;
  *v935 = 0x8000000000000000;
  sub_266ECD368(233, 0x435952544E554F43, 0xEE0046575F45444FLL, v936);
  *v935 = v1239;

  v933(v1257, 0);
  v937 = sub_26738111C();
  v939 = v938;
  v940 = swift_isUniquelyReferenced_nonNull_native();
  v1240 = *v939;
  *v939 = 0x8000000000000000;
  sub_266ECD368(234, 0x435952544E554F43, 0xEE0048455F45444FLL, v940);
  *v939 = v1240;

  v937(v1257, 0);
  v941 = sub_26738111C();
  v943 = v942;
  v944 = swift_isUniquelyReferenced_nonNull_native();
  v1241 = *v943;
  *v943 = 0x8000000000000000;
  sub_266ECD368(235, 0x435952544E554F43, 0xEE0045595F45444FLL, v944);
  *v943 = v1241;

  v941(v1257, 0);
  v945 = sub_26738111C();
  v947 = v946;
  v948 = swift_isUniquelyReferenced_nonNull_native();
  v1242 = *v947;
  *v947 = 0x8000000000000000;
  sub_266ECD368(236, 0x435952544E554F43, 0xEE004D5A5F45444FLL, v948);
  *v947 = v1242;

  v945(v1257, 0);
  v949 = sub_26738111C();
  v951 = v950;
  v952 = swift_isUniquelyReferenced_nonNull_native();
  v1243 = *v951;
  *v951 = 0x8000000000000000;
  sub_266ECD368(237, 0x435952544E554F43, 0xEE00575A5F45444FLL, v952);
  *v951 = v1243;

  v949(v1257, 0);
  v953 = sub_26738111C();
  v955 = v954;
  v956 = swift_isUniquelyReferenced_nonNull_native();
  v1244 = *v955;
  *v955 = 0x8000000000000000;
  sub_266ECD368(238, 0x435952544E554F43, 0xEE0043455F45444FLL, v956);
  *v955 = v1244;

  v953(v1257, 0);
  v957 = sub_26738111C();
  v959 = v958;
  v960 = swift_isUniquelyReferenced_nonNull_native();
  v1245 = *v959;
  *v959 = 0x8000000000000000;
  sub_266ECD368(239, 0x435952544E554F43, 0xEE0051475F45444FLL, v960);
  *v959 = v1245;

  v957(v1257, 0);
  v961 = sub_26738111C();
  v963 = v962;
  v964 = swift_isUniquelyReferenced_nonNull_native();
  v1246 = *v963;
  *v963 = 0x8000000000000000;
  sub_266ECD368(240, 0x435952544E554F43, 0xEE0052475F45444FLL, v964);
  *v963 = v1246;

  v961(v1257, 0);
  v965 = sub_26738111C();
  v967 = v966;
  v968 = swift_isUniquelyReferenced_nonNull_native();
  v1247 = *v967;
  *v967 = 0x8000000000000000;
  sub_266ECD368(241, 0x435952544E554F43, 0xEE004D485F45444FLL, v968);
  *v967 = v1247;

  v965(v1257, 0);
  v969 = sub_26738111C();
  v971 = v970;
  v972 = swift_isUniquelyReferenced_nonNull_native();
  v1248 = *v971;
  *v971 = 0x8000000000000000;
  sub_266ECD368(242, 0x435952544E554F43, 0xEE004D4A5F45444FLL, v972);
  *v971 = v1248;

  v969(v1257, 0);
  v973 = sub_26738111C();
  v975 = v974;
  v976 = swift_isUniquelyReferenced_nonNull_native();
  v1249 = *v975;
  *v975 = 0x8000000000000000;
  sub_266ECD368(243, 0x435952544E554F43, 0xEE00504A5F45444FLL, v976);
  *v975 = v1249;

  v973(v1257, 0);
  v977 = sub_26738111C();
  v979 = v978;
  v980 = swift_isUniquelyReferenced_nonNull_native();
  v1250 = *v979;
  *v979 = 0x8000000000000000;
  sub_266ECD368(244, 0x435952544E554F43, 0xEE004B585F45444FLL, v980);
  *v979 = v1250;

  v977(v1257, 0);
  v981 = sub_26738111C();
  v983 = v982;
  v984 = swift_isUniquelyReferenced_nonNull_native();
  v1251 = *v983;
  *v983 = 0x8000000000000000;
  sub_266ECD368(245, 0x435952544E554F43, 0xEE00504D5F45444FLL, v984);
  *v983 = v1251;

  v981(v1257, 0);
  v985 = sub_26738111C();
  v987 = v986;
  v988 = swift_isUniquelyReferenced_nonNull_native();
  v1252 = *v987;
  *v987 = 0x8000000000000000;
  sub_266ECD368(246, 0x435952544E554F43, 0xEE0045505F45444FLL, v988);
  *v987 = v1252;

  v985(v1257, 0);
  v989 = sub_26738111C();
  v991 = v990;
  v992 = swift_isUniquelyReferenced_nonNull_native();
  v1253 = *v991;
  *v991 = 0x8000000000000000;
  sub_266ECD368(247, 0x435952544E554F43, 0xEE0045525F45444FLL, v992);
  *v991 = v1253;

  v989(v1257, 0);
  v993 = sub_26738111C();
  v995 = v994;
  v996 = swift_isUniquelyReferenced_nonNull_native();
  v1254 = *v995;
  *v995 = 0x8000000000000000;
  sub_266ECD368(248, 0x435952544E554F43, 0xEE004C425F45444FLL, v996);
  *v995 = v1254;

  v993(v1257, 0);
  v997 = sub_26738111C();
  v999 = v998;
  v1000 = swift_isUniquelyReferenced_nonNull_native();
  v1255 = *v999;
  *v999 = 0x8000000000000000;
  sub_266ECD368(249, 0x435952544E554F43, 0xEE004E535F45444FLL, v1000);
  *v999 = v1255;

  v997(v1257, 0);
  v1001 = sub_26738111C();
  v1003 = v1002;
  v1004 = swift_isUniquelyReferenced_nonNull_native();
  v1256 = *v1003;
  *v1003 = 0x8000000000000000;
  sub_266ECD368(250, 0x435952544E554F43, 0xEE0058535F45444FLL, v1004);
  *v1003 = v1256;

  return v1001(v1257, 0);
}

uint64_t sub_2672C1B80(uint64_t a1)
{
  v2 = sub_2672C1C84(&qword_2800F9F58, &protocol conformance descriptor for SISchemaCountryCode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C1BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C1C84(&qword_2800F9F58, &protocol conformance descriptor for SISchemaCountryCode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C1C84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCountryCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDailyDeviceStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v91 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v98 = *MEMORY[0x277D3E530];
  v101 = v4 + 104;
  v102 = v3;
  v100 = v10;
  (v10)(v6);
  v105[0] = 1;
  v97 = v6;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v96 = *(v12 + 56);
  v103 = v12 + 56;
  v96(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6976654469726973, 0xEC00000044496563);
  v13(v105, 0);
  v99 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v104, 0x6976654469726973, 0xEC00000044496563);
  v16 = *(v12 + 48);
  v95 = v11;
  v92 = v16;
  v93 = v12 + 48;
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_287891A90);
    sub_26738115C();
  }

  (v15)(v104, 0);
  v14(v105, 0);
  v100(v97, v98, v102);
  v105[0] = 1;
  sub_26738114C();
  v18 = v95;
  v96(v9, 0, 1, v95);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6565705369726973, 0xEC00000044496863);
  v19(v105, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v104, 0x6565705369726973, 0xEC00000044496863);
  if (!v92(v22, 1, v18))
  {
    sub_266ECB128(&unk_287891AC0);
    sub_26738115C();
  }

  (v21)(v104, 0);
  v20(v105, 0);
  v100(v97, v98, v102);
  v105[0] = 1;
  sub_26738114C();
  v23 = v95;
  v96(v9, 0, 1, v95);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x7355646572616873, 0xEC00000064497265);
  v24(v105, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v104, 0x7355646572616873, 0xEC00000064497265);
  if (!v92(v27, 1, v23))
  {
    sub_266ECB128(&unk_287891AF0);
    sub_26738115C();
  }

  (v26)(v104, 0);
  v25(v105, 0);
  v28 = *MEMORY[0x277D3E510];
  v29 = v97;
  v30 = v100;
  v100(v97, v28, v102);
  v105[0] = 1;
  sub_26738114C();
  v32 = v95;
  v31 = v96;
  v96(v9, 0, 1, v95);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267491290);
  v33(v105, 0);
  v91 = "clientDeviceSamplingTimestampMs";
  v34 = v28;
  v35 = v102;
  v30(v29, v34, v102);
  v105[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v91 | 0x8000000000000000);
  v36(v105, 0);
  v37 = v35;
  v38 = v100;
  v100(v29, v98, v37);
  v105[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C61636F6CLL, 0xE600000000000000);
  v39(v105, 0);
  v40 = v98;
  v41 = v102;
  v38(v29, v98, v102);
  v105[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v32);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954656369766564, 0xEA00000000006570);
  v42(v105, 0);
  v43 = v97;
  v38(v97, v40, v41);
  v105[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v32);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x734F656369766564, 0xE800000000000000);
  v44(v105, 0);
  v38(v43, v98, v41);
  v105[0] = 1;
  sub_26738114C();
  v45 = v95;
  v31(v9, 0, 1, v95);
  v46 = v31;
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0x7542656369766564, 0xEB00000000646C69);
  v47(v105, 0);
  sub_266ECB294(0, &qword_2800F9F60, 0x277D5A8A0);
  sub_266ECAF2C(&qword_2800F9F68, &qword_2800F9F60, 0x277D5A8A0, &protocol conformance descriptor for SISchemaEnabledStatus);
  sub_26738120C();
  v31(v9, 0, 1, v45);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0x5364656C62616E65, 0xED00007375746174);
  v48(v105, 0);
  sub_266ECB294(0, &qword_2800F9888, 0x277D5A758);
  sub_266ECAF2C(&qword_2800F9880, &qword_2800F9888, 0x277D5A758, &protocol conformance descriptor for SISchemaActiveStatus);
  sub_26738120C();
  v31(v9, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x7453657669746361, 0xEC00000073757461);
  v49(v105, 0);
  sub_266ECB294(0, &qword_2800F9F70, 0x277D5A9A0);
  sub_266ECAF2C(&qword_2800F9F78, &qword_2800F9F70, 0x277D5A9A0, &protocol conformance descriptor for SISchemaPersonalization);
  sub_26738120C();
  v31(v9, 0, 1, v45);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E6F73726570, 0xEF6E6F6974617A69);
  v50(v105, 0);
  sub_266ECB294(0, &qword_2800F9F80, 0x277D5A968);
  sub_266ECAF2C(&qword_2800F9F88, &qword_2800F9F80, 0x277D5A968, &protocol conformance descriptor for SISchemaMultiUserState);
  sub_26738120C();
  v51 = v45;
  v31(v9, 0, 1, v45);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0x65735569746C756DLL, 0xEE00657461745372);
  v52(v105, 0);
  v91 = "ublishTimestampMs";
  v53 = *MEMORY[0x277D3E4E8];
  v54 = v97;
  v55 = v102;
  v56 = v100;
  v100(v97, v53, v102);
  v105[0] = 1;
  sub_26738114C();
  v46(v9, 0, 1, v51);
  v57 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v91 | 0x8000000000000000);
  v57(v105, 0);
  v56(v54, v53, v55);
  v105[0] = 1;
  sub_26738114C();
  v58 = v95;
  v46(v9, 0, 1, v95);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002DLL, 0x8000000267491300);
  v59(v105, 0);
  type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting(0);
  sub_2672C3A20(&qword_2800F9F90, type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting, &protocol conformance descriptor for SISchemaSpokenNotificationsWhitelistSetting);
  sub_26738120C();
  v46(v9, 0, 1, v58);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267491330);
  v60(v105, 0);
  sub_266ECB294(0, &qword_2800F98D8, 0x277D5A768);
  sub_266ECAF2C(&qword_2800F98D0, &qword_2800F98D8, 0x277D5A768, &protocol conformance descriptor for SISchemaAggregatedMetrics);
  sub_26738120C();
  v46(v9, 0, 1, v58);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267491360);
  v61(v105, 0);
  sub_266ECB294(0, &qword_2800F9F98, 0x277D5A940);
  sub_266ECAF2C(&qword_2800F9FA0, &qword_2800F9F98, 0x277D5A940, &protocol conformance descriptor for SISchemaLinkedAccessoryState);
  sub_26738122C();
  v46(v9, 0, 1, v58);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267491380);
  v62(v105, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2672C3A20(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v46(v9, 0, 1, v58);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0x75706E4969726973, 0xEF656C61636F4C74);
  v63(v105, 0);
  sub_266ECB294(0, &qword_2800F9FA8, 0x277D5A960);
  sub_266ECAF2C(&qword_2800F9FB0, &qword_2800F9FA8, 0x277D5A960, &protocol conformance descriptor for SISchemaMultiUserSetup);
  sub_26738120C();
  v46(v9, 0, 1, v58);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0x65735569746C756DLL, 0xEE00707574655372);
  v64(v105, 0);
  v100(v97, *MEMORY[0x277D3E540], v102);
  v105[0] = 1;
  sub_26738114C();
  v46(v9, 0, 1, v58);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x80000002674913A0);
  v65(v105, 0);
  type metadata accessor for SISchemaCountryCode(0);
  sub_2672C3A20(&qword_2800F0420, type metadata accessor for SISchemaCountryCode, &protocol conformance descriptor for SISchemaCountryCode);
  sub_26738120C();
  v46(v9, 0, 1, v58);
  v66 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674913C0);
  v66(v105, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v104, 0xD000000000000010, 0x80000002674913C0);
  if (!v92(v69, 1, v58))
  {
    sub_266ECB128(&unk_287891B20);
    sub_26738115C();
  }

  (v68)(v104, 0);
  v67(v105, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738122C();
  v70 = v95;
  v71 = v96;
  v96(v9, 0, 1, v95);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026746A200);
  v72(v105, 0);
  v73 = v102;
  v74 = v97;
  v75 = v100;
  (v100)();
  v105[0] = 1;
  sub_26738114C();
  v71(v9, 0, 1, v70);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674913E0);
  v76(v105, 0);
  v93 = "deviceCapacityInGB";
  v77 = v73;
  v75(v74, *MEMORY[0x277D3E518], v73);
  v105[0] = 1;
  sub_26738114C();
  v78 = v70;
  v79 = v70;
  v80 = v96;
  v96(v9, 0, 1, v79);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v93 | 0x8000000000000000);
  v81(v105, 0);
  v82 = v100;
  v100(v74, v98, v77);
  v105[0] = 1;
  sub_26738114C();
  v80(v9, 0, 1, v78);
  v83 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v83(v105, 0);
  v84 = v98;
  v85 = v102;
  v82(v74, v98, v102);
  v105[0] = 1;
  sub_26738114C();
  v86 = v96;
  v96(v9, 0, 1, v78);
  v87 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E496E6F69676572, 0xEA00000000006F66);
  v87(v105, 0);
  v100(v74, v84, v85);
  v105[0] = 1;
  sub_26738114C();
  v86(v9, 0, 1, v78);
  v88 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F726665726F7473, 0xEC0000006449746ELL);
  v88(v105, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_2672C3A20(&qword_2800F6410, type metadata accessor for SISchemaVoiceName, &protocol conformance descriptor for SISchemaVoiceName);
  sub_26738122C();
  v86(v9, 0, 1, v78);
  v89 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C6C6174736E69, 0xEF736563696F5664);
  v89(v105, 0);
  sub_266ECB128(&unk_287891B48);
  return sub_2673811CC();
}

uint64_t sub_2672C37F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672C3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672C395C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C39C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C3A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2672C3A68(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9FB8, &qword_2800F9FC0, 0x277D5A838, &protocol conformance descriptor for SISchemaDailyDeviceStatus);
  a1[2] = sub_266ECAF2C(&qword_2800F9FC8, &qword_2800F9FC0, 0x277D5A838, &protocol conformance descriptor for SISchemaDailyDeviceStatus);
  result = sub_266ECAF2C(&qword_2800F9FD0, &qword_2800F9FC0, 0x277D5A838, &protocol conformance descriptor for SISchemaDailyDeviceStatus);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaDataCollectionRedactionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x535F45544F4D4552, 0xEE00454741524F54, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x555F45544F4D4552, 0xED000044414F4C50, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2672C3D10(uint64_t a1)
{
  v2 = sub_2672C3E14(&qword_2800F9FE8, &protocol conformance descriptor for SISchemaDataCollectionRedactionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C3D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C3E14(&qword_2800F9FE8, &protocol conformance descriptor for SISchemaDataCollectionRedactionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C3E14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDataCollectionRedactionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDataSharingOptInState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4E495F444554504FLL, 0xE800000000000000, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x554F5F444554504FLL, 0xE900000000000054, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x455353494D534944, 0xE900000000000044, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672C40D4(uint64_t a1)
{
  v2 = sub_2672C41D8(&qword_2800F9FF0, &protocol conformance descriptor for SISchemaDataSharingOptInState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C413C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C41D8(&qword_2800F9FF0, &protocol conformance descriptor for SISchemaDataSharingOptInState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C41D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDataSharingOptInState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceDynamicContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950, &protocol conformance descriptor for SISchemaLocation);
  sub_26738120C();
  v8 = sub_26738116C();
  v21 = *(v8 - 8);
  v9 = *(v21 + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v10(v25, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = v22;
  v13 = *(v23 + 104);
  v23 += 104;
  v13(v4, v11, v22);
  v25[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x437972746E756F63, 0xEB0000000065646FLL);
  v14(v25, 0);
  v13(v4, *MEMORY[0x277D3E518], v12);
  v25[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026742B790);
  v15(v25, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v24, 0xD000000000000015, 0x800000026742B790);
  if (!(*(v21 + 48))(v18, 1, v8))
  {
    sub_266ECB128(&unk_287891B78);
    sub_26738115C();
  }

  (v17)(v24, 0);
  return v16(v25, 0);
}

uint64_t sub_2672C46C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C4728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDeviceFamily.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x80000002674914F0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267491510, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267491530, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267491550, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267491570, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267491590, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000010, 0x80000002674915B0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x80000002674915D0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000013, 0x80000002674915F0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2672C4C84(uint64_t a1)
{
  v2 = sub_2672C4D88(&qword_2800F9FF8, &protocol conformance descriptor for SISchemaDeviceFamily);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C4CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C4D88(&qword_2800F9FF8, &protocol conformance descriptor for SISchemaDeviceFamily);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C4D88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceFixedContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v50[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v50 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v52 = *MEMORY[0x277D3E530];
  v53 = v2 + 104;
  v54 = v1;
  v51 = v8;
  v8(v4);
  v59[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v50[2] = v10 + 56;
  v56 = v11;
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954656369766564, 0xEA00000000006570);
  v12(v59, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v58, 0x7954656369766564, 0xEA00000000006570);
  v15 = *(v10 + 48);
  v57 = v10 + 48;
  v55 = v15;
  if (!v15(v16, 1, v9))
  {
    sub_266ECB128(&unk_287891BA0);
    sub_26738115C();
  }

  (v14)(v58, 0);
  v13(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v17(v59, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v58, 0x75426D6574737973, 0xEB00000000646C69);
  if (!v55(v20, 1, v9))
  {
    sub_266ECB128(&unk_287891BC8);
    sub_26738115C();
  }

  (v19)(v58, 0);
  v18(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267491640);
  v21(v59, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v58, 0xD000000000000011, 0x8000000267491640);
  if (!v55(v24, 1, v9))
  {
    sub_266ECB128(&unk_287891BF0);
    sub_26738115C();
  }

  (v23)(v58, 0);
  v22(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267491660);
  v25(v59, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v58, 0xD000000000000011, 0x8000000267491660);
  if (!v55(v28, 1, v9))
  {
    sub_266ECB128(&unk_287891C18);
    sub_26738115C();
  }

  (v27)(v58, 0);
  v26(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v29(v59, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v58, 0x6F4C6D6574737973, 0xEC000000656C6163);
  if (!v55(v32, 1, v9))
  {
    sub_266ECB128(&unk_287891C40);
    sub_26738115C();
  }

  (v31)(v58, 0);
  v30(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0x6976654469726973, 0xEC00000044496563);
  v33(v59, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v58, 0x6976654469726973, 0xEC00000044496563);
  if (!v55(v36, 1, v9))
  {
    sub_266ECB128(&unk_287891C68);
    sub_26738115C();
  }

  (v35)(v58, 0);
  v34(v59, 0);
  v51(v4, v52, v54);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v9);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0x4449686365657073, 0xE800000000000000);
  v37(v59, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v58, 0x4449686365657073, 0xE800000000000000);
  if (!v55(v40, 1, v9))
  {
    sub_266ECB128(&unk_287891C98);
    sub_26738115C();
  }

  (v39)(v58, 0);
  v38(v59, 0);
  sub_266ECB294(0, &qword_2800FA000, 0x277D5AA20);
  sub_266ECAF2C(&qword_2800FA008, &qword_2800FA000, 0x277D5AA20, &protocol conformance descriptor for SISchemaSiriUISettings);
  sub_26738120C();
  v56(v7, 0, 1, v9);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0x6553495569726973, 0xEE0073676E697474);
  v41(v59, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v58, 0x6553495569726973, 0xEE0073676E697474);
  if (!v55(v44, 1, v9))
  {
    sub_266ECB128(&unk_287891CC8);
    sub_26738115C();
  }

  (v43)(v58, 0);
  v42(v59, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8, &protocol conformance descriptor for SISchemaVoiceSettings);
  sub_26738120C();
  v56(v7, 0, 1, v9);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465536563696F76, 0xED000073676E6974);
  v45(v59, 0);
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v58, 0x7465536563696F76, 0xED000073676E6974);
  if (!v55(v48, 1, v9))
  {
    sub_266ECB128(&unk_287891CF0);
    sub_26738115C();
  }

  (v47)(v58, 0);
  return v46(v59, 0);
}

uint64_t sub_2672C5BE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C5C48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDeviceLockStateChanged.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6563697665447369, 0xEE0064656B636F4CLL);
  return v8(v10, 0);
}

uint64_t sub_2672C5F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C5FA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672C600C()
{
  result = qword_2800F9C50;
  if (!qword_2800F9C50)
  {
    sub_2672C6064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9C50);
  }

  return result;
}

unint64_t sub_2672C6064()
{
  result = qword_2800F9C48;
  if (!qword_2800F9C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C48);
  }

  return result;
}

uint64_t static SISchemaDeviceSensitivityState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674916E0, isUniquelyReferenced_nonNull_native);
  *v3 = v127;

  v1(v150, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267491710, v8);
  *v7 = v128;

  v5(v150, 0);
  v9 = sub_266ECB128(&unk_287891D20);
  v11 = v10;
  v12 = sub_2673810FC();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD4CC(v9, v11, 1, v15);
  *v14 = v129;
  v12(v150, 0);
  v16 = sub_26738111C();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267491730, v19);
  *v18 = v130;

  v16(v150, 0);
  v20 = sub_266ECB128(&unk_287891D50);
  v22 = v21;
  v23 = sub_2673810FC();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v25;
  *v25 = 0x8000000000000000;
  sub_266ECD4CC(v20, v22, 2, v26);
  *v25 = v131;
  v23(v150, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267491760, v30);
  *v29 = v132;

  v27(v150, 0);
  v31 = sub_266ECB128(&unk_287891D80);
  v33 = v32;
  v34 = sub_2673810FC();
  v36 = v35;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD4CC(v31, v33, 3, v37);
  *v36 = v133;
  v34(v150, 0);
  v38 = sub_26738111C();
  v40 = v39;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v40;
  *v40 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267491790, v41);
  *v40 = v134;

  v38(v150, 0);
  v42 = sub_266ECB128(&unk_287891DB0);
  v44 = v43;
  v45 = sub_2673810FC();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD4CC(v42, v44, 4, v48);
  *v47 = v135;
  v45(v150, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x80000002674917C0, v52);
  *v51 = v136;

  v49(v150, 0);
  v53 = sub_266ECB128(&unk_287891DE8);
  v55 = v54;
  v56 = sub_2673810FC();
  v58 = v57;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v58;
  *v58 = 0x8000000000000000;
  sub_266ECD4CC(v53, v55, 5, v59);
  *v58 = v137;
  v56(v150, 0);
  v60 = sub_26738111C();
  v62 = v61;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v62;
  *v62 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x80000002674917F0, v63);
  *v62 = v138;

  v60(v150, 0);
  v64 = sub_266ECB128(&unk_287891E20);
  v66 = v65;
  v67 = sub_2673810FC();
  v69 = v68;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD4CC(v64, v66, 6, v70);
  *v69 = v139;
  v67(v150, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x8000000267491830, v74);
  *v73 = v140;

  v71(v150, 0);
  v75 = sub_266ECB128(&unk_287891E58);
  v77 = v76;
  v78 = sub_2673810FC();
  v80 = v79;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v80;
  *v80 = 0x8000000000000000;
  sub_266ECD4CC(v75, v77, 7, v81);
  *v80 = v141;
  v78(v150, 0);
  v82 = sub_26738111C();
  v84 = v83;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v84;
  *v84 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x8000000267491860, v85);
  *v84 = v142;

  v82(v150, 0);
  v86 = sub_266ECB128(&unk_287891E90);
  v88 = v87;
  v89 = sub_2673810FC();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD4CC(v86, v88, 8, v92);
  *v91 = v143;
  v89(v150, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x8000000267491890, v96);
  *v95 = v144;

  v93(v150, 0);
  v97 = sub_266ECB128(&unk_287891EC0);
  v99 = v98;
  v100 = sub_2673810FC();
  v102 = v101;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v102;
  *v102 = 0x8000000000000000;
  sub_266ECD4CC(v97, v99, 9, v103);
  *v102 = v145;
  v100(v150, 0);
  v104 = sub_26738111C();
  v106 = v105;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v106;
  *v106 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001CLL, 0x80000002674918C0, v107);
  *v106 = v146;

  v104(v150, 0);
  v108 = sub_266ECB128(&unk_287891EF0);
  v110 = v109;
  v111 = sub_2673810FC();
  v113 = v112;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v113;
  *v113 = 0x8000000000000000;
  sub_266ECD4CC(v108, v110, 10, v114);
  *v113 = v147;
  v111(v150, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ALL, 0x80000002674918E0, v118);
  *v117 = v148;

  v115(v150, 0);
  v119 = sub_266ECB128(&unk_287891F20);
  v121 = v120;
  v122 = sub_2673810FC();
  v124 = v123;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v124;
  *v124 = 0x8000000000000000;
  sub_266ECD4CC(v119, v121, 11, v125);
  *v124 = v149;
  return v122(v150, 0);
}

uint64_t sub_2672C6B98(uint64_t a1)
{
  v2 = sub_2672C6C9C(&qword_2800FA010, &protocol conformance descriptor for SISchemaDeviceSensitivityState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C6C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C6C9C(&qword_2800FA010, &protocol conformance descriptor for SISchemaDeviceSensitivityState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C6C9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceSensitivityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceThermalState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267491950, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267491970, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267491990, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674919B0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674919D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672C6FDC(uint64_t a1)
{
  v2 = sub_2672C70E0(&qword_2800FA018, &protocol conformance descriptor for SISchemaDeviceThermalState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C7044(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C70E0(&qword_2800FA018, &protocol conformance descriptor for SISchemaDeviceThermalState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C70E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceThermalState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDialogOutput.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v16[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x444977656976, 0xE600000000000000);
  v10(v16, 0);
  v15 = "iri.uei.DialogOutput";
  sub_266ECB294(0, &qword_2800FA020, 0x277D5A9C0);
  sub_266ECAF2C(&qword_2800FA028, &qword_2800FA020, 0x277D5A9C0, &protocol conformance descriptor for SISchemaRedactableString);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v15 | 0x8000000000000000);
  v11(v16, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267491A40);
  v12(v16, 0);
  sub_266ECB128(&unk_287891F50);
  return sub_2673811CC();
}

uint64_t sub_2672C7508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C756C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativeSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = "nAlternativeSelected";
  v8 = *MEMORY[0x277D3E508];
  v9 = *(v2 + 104);
  v24 = v2 + 104;
  v20 = v8;
  v21 = v1;
  v9(v4, v8, v1);
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v22 = v11 + 56;
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v23 | 0x8000000000000000);
  v13(v26, 0);
  v23 = "countOfWordsReplaced";
  v9(v4, v8, v1);
  v26[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v23 | 0x8000000000000000);
  v14(v26, 0);
  v9(v4, v20, v21);
  v26[0] = 1;
  sub_26738114C();
  v15 = v12;
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267491AE0);
  v16(v26, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738120C();
  v15(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267491B00);
  return v17(v26, 0);
}

uint64_t sub_2672C7AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C7B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativesPresent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23[1] = a2;
  sub_26738119C();
  v26 = "nAlternativesPresent";
  v10 = *MEMORY[0x277D3E508];
  v11 = *(v4 + 104);
  v31 = v4 + 104;
  v29 = v3;
  v11(v6, v10, v3);
  v28 = v11;
  v32[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v24 = *(v13 + 56);
  v14 = v13 + 56;
  v27 = v12;
  v24(v9, 0, 1, v12);
  v25 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v26 | 0x8000000000000000);
  v15(v32, 0);
  v11(v6, v10, v3);
  v32[0] = 1;
  sub_26738114C();
  v16 = v12;
  v17 = v24;
  v24(v9, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267491B80);
  v18(v32, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738120C();
  v19 = v27;
  v17(v9, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267491B00);
  v20(v32, 0);
  v28(v6, *MEMORY[0x277D3E4E8], v29);
  v32[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267491BA0);
  return v21(v32, 0);
}

uint64_t sub_2672C80F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativesViewed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v1 = sub_26738113C();
  v17 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v15 = "numberOfUnderlines";
  v8 = *MEMORY[0x277D3E508];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v15 | 0x8000000000000000);
  v11(v19, 0);
  v16(v4, v8, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x8000000267491AC0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267491B00);
  return v13(v19, 0);
}

uint64_t sub_2672C8610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationContentEdited.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800F99C8, 0x277D5A7C0);
  sub_266ECAF2C(&qword_2800F99C0, &qword_2800F99C8, 0x277D5A7C0, &protocol conformance descriptor for SISchemaAutoPunctuationEdit);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267491C30);
  v12(v19, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v18, 0xD000000000000014, 0x8000000267491C30);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287891F80);
    sub_26738115C();
  }

  (v14)(v18, 0);
  return v13(v19, 0);
}

uint64_t sub_2672C8AF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8B54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v35 = *MEMORY[0x277D3E530];
  v39 = v4 + 104;
  v40 = v3;
  v34 = v10;
  v10(v6);
  v44[0] = 1;
  v38 = v6;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v37 = v12 + 56;
  v36(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267491C80);
  v13(v44, 0);
  v41 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v43, 0xD000000000000010, 0x8000000267491C80);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287891FA8);
    sub_26738115C();
  }

  (v15)(v43, 0);
  v14(v44, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  v17 = sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738120C();
  v18 = v36;
  v36(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6472616F6279656BLL, 0xEE00656C61636F4CLL);
  v19(v44, 0);
  sub_26738120C();
  v33 = v11;
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69746174636964, 0xEF656C61636F4C6ELL);
  v20(v44, 0);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267453030);
  v21(v44, 0);
  v31 = "keyboardLanguage";
  v32 = v17;
  sub_26738120C();
  v22 = v33;
  v18(v9, 0, 1, v33);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v31 | 0x8000000000000000);
  v23(v44, 0);
  v31 = "siriSelectedLocale";
  sub_26738122C();
  v18(v9, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v31 | 0x8000000000000000);
  v24(v44, 0);
  sub_26738122C();
  v18(v9, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267491CE0);
  v25(v44, 0);
  v34(v38, v35, v40);
  v44[0] = 1;
  sub_26738114C();
  v26 = v22;
  v18(v9, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v27(v44, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v18(v9, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267491D00);
  return v28(v44, 0);
}

uint64_t sub_2672C946C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C94D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationEndPointCancel.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEndPointType(0);
  sub_2672C9864(&qword_2800FA040, type metadata accessor for SISchemaDictationEndPointType, &protocol conformance descriptor for SISchemaDictationEndPointType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267491D50);
  return v5(v7, 0);
}

uint64_t sub_2672C9758(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C97BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C9864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672C98AC()
{
  result = qword_2800F9BA8;
  if (!qword_2800F9BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9BA8);
  }

  return result;
}

uint64_t static SISchemaDictationEndPointStop.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEndPointType(0);
  sub_2672C9BE8(&qword_2800FA040, type metadata accessor for SISchemaDictationEndPointType, &protocol conformance descriptor for SISchemaDictationEndPointType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267491D50);
  return v5(v7, 0);
}

uint64_t sub_2672C9ADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C9B40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C9BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672C9C30()
{
  result = qword_2800F9B98;
  if (!qword_2800F9B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B98);
  }

  return result;
}

uint64_t static SISchemaDictationEndPointType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000035, 0x8000000267491DD0, isUniquelyReferenced_nonNull_native);
  *v3 = v102;

  v1(v127, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267491E10, v8);
  *v7 = v103;

  v5(v127, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267491E30, v12);
  *v11 = v104;

  v9(v127, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267491E50, v16);
  *v15 = v105;

  v13(v127, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267491E80, v20);
  *v19 = v106;

  v17(v127, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x8000000267491EB0, v24);
  *v23 = v107;

  v21(v127, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x8000000267491EE0, v28);
  *v27 = v108;

  v25(v127, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x8000000267491F10, v32);
  *v31 = v109;

  v29(v127, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267491F40, v36);
  *v35 = v110;

  v33(v127, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267491F70, v40);
  *v39 = v111;

  v37(v127, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000028, 0x8000000267491FA0, v44);
  *v43 = v112;

  v41(v127, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000029, 0x8000000267491FD0, v48);
  *v47 = v113;

  v45(v127, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x8000000267492000, v52);
  *v51 = v114;

  v49(v127, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000039, 0x8000000267492030, v56);
  *v55 = v115;

  v53(v127, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000035, 0x8000000267492070, v60);
  *v59 = v116;

  v57(v127, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000003ELL, 0x80000002674920B0, v64);
  *v63 = v117;

  v61(v127, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000046, 0x80000002674920F0, v68);
  *v67 = v118;

  v65(v127, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000003ELL, 0x8000000267492140, v72);
  *v71 = v119;

  v69(v127, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002BLL, 0x8000000267492180, v76);
  *v75 = v120;

  v73(v127, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000035, 0x80000002674921B0, v80);
  *v79 = v121;

  v77(v127, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000028, 0x80000002674921F0, v84);
  *v83 = v122;

  v81(v127, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x8000000267492220, v88);
  *v87 = v123;

  v85(v127, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ALL, 0x8000000267492240, v92);
  *v91 = v124;

  v89(v127, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000026, 0x8000000267492260, v96);
  *v95 = v125;

  v93(v127, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002DLL, 0x8000000267492290, v100);
  *v99 = v126;

  return v97(v127, 0);
}

uint64_t sub_2672CA844(uint64_t a1)
{
  v2 = sub_2672CA948(&qword_2800FA048, &protocol conformance descriptor for SISchemaDictationEndPointType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CA8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CA948(&qword_2800FA048, &protocol conformance descriptor for SISchemaDictationEndPointType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CA948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationEuclidAlternativesEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267492300, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267492330, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x8000000267492360, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_287891FD0);
  return sub_26738112C();
}

uint64_t sub_2672CABB4(uint64_t a1)
{
  v2 = sub_2672CACB8(&qword_2800FA058, &protocol conformance descriptor for SISchemaDictationEuclidAlternativesEventType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CAC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CACB8(&qword_2800FA058, &protocol conformance descriptor for SISchemaDictationEuclidAlternativesEventType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CACB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEuclidAlternativesEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationEuclidSpeechAlternativesType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674923E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267492410, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000048, 0x8000000267492450, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672CAF10(uint64_t a1)
{
  v2 = sub_2672CB014(&qword_2800FA068, &protocol conformance descriptor for SISchemaDictationEuclidSpeechAlternativesType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CAF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CB014(&qword_2800FA068, &protocol conformance descriptor for SISchemaDictationEuclidSpeechAlternativesType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CB014(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationModelSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674924D0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267492500, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267492520, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672CB270(uint64_t a1)
{
  v2 = sub_2672CB374(&qword_2800FA078, &protocol conformance descriptor for SISchemaDictationModelSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CB2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CB374(&qword_2800FA078, &protocol conformance descriptor for SISchemaDictationModelSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CB374(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationTranscriptionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v13[0] = sub_26738113C();
  v1 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationModelSource(0);
  sub_2672CB858();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F69746174636964, 0xEE006C65646F4D6ELL);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13[0]);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267492580);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800FA038, 0x277D5A868);
  sub_266ECAF2C(&qword_2800FA030, &qword_2800FA038, 0x277D5A868, &protocol conformance descriptor for SISchemaDictationAlternativesPresent);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x80000002674925A0);
  return v11(v14, 0);
}

uint64_t sub_2672CB794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CB7F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672CB858()
{
  result = qword_2800FA070;
  if (!qword_2800FA070)
  {
    type metadata accessor for SISchemaDictationModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA070);
  }

  return result;
}

uint64_t static SISchemaDismissalReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000028, 0x80000002674925F0, isUniquelyReferenced_nonNull_native);
  *v3 = v194;

  v1(v242, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267492620, v8);
  *v7 = v195;

  v5(v242, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267492640, v12);
  *v11 = v196;

  v9(v242, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267492670, v16);
  *v15 = v197;

  v13(v242, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x80000002674926A0, v20);
  *v19 = v198;

  v17(v242, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674926D0, v24);
  *v23 = v199;

  v21(v242, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x8000000267492700, v28);
  *v27 = v200;

  v25(v242, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x8000000267492730, v32);
  *v31 = v201;

  v29(v242, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267492760, v36);
  *v35 = v202;

  v33(v242, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267492790, v40);
  *v39 = v203;

  v37(v242, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x80000002674927B0, v44);
  *v43 = v204;

  v41(v242, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674927E0, v48);
  *v47 = v205;

  v45(v242, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267492810, v52);
  *v51 = v206;

  v49(v242, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x8000000267492830, v56);
  *v55 = v207;

  v53(v242, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x8000000267492850, v60);
  *v59 = v208;

  v57(v242, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x8000000267492870, v64);
  *v63 = v209;

  v61(v242, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267492890, v68);
  *v67 = v210;

  v65(v242, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x80000002674928C0, v72);
  *v71 = v211;

  v69(v242, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x80000002674928F0, v76);
  *v75 = v212;

  v73(v242, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x8000000267492920, v80);
  *v79 = v213;

  v77(v242, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000024, 0x8000000267492950, v84);
  *v83 = v214;

  v81(v242, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000028, 0x8000000267492980, v88);
  *v87 = v215;

  v85(v242, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000002ALL, 0x80000002674929B0, v92);
  *v91 = v216;

  v89(v242, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000002ALL, 0x80000002674929E0, v96);
  *v95 = v217;

  v93(v242, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002ALL, 0x8000000267492A10, v100);
  *v99 = v218;

  v97(v242, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000002DLL, 0x8000000267492A40, v104);
  *v103 = v219;

  v101(v242, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000002CLL, 0x8000000267492A70, v108);
  *v107 = v220;

  v105(v242, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000035, 0x8000000267492AA0, v112);
  *v111 = v221;

  v109(v242, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001FLL, 0x8000000267492AE0, v116);
  *v115 = v222;

  v113(v242, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000002ELL, 0x8000000267492B00, v120);
  *v119 = v223;

  v117(v242, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000032, 0x8000000267492B30, v124);
  *v123 = v224;

  v121(v242, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000002BLL, 0x8000000267492B70, v128);
  *v127 = v225;

  v125(v242, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v226 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000002ALL, 0x8000000267492BA0, v132);
  *v131 = v226;

  v129(v242, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v227 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000037, 0x8000000267492BD0, v136);
  *v135 = v227;

  v133(v242, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v228 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000024, 0x8000000267492C10, v140);
  *v139 = v228;

  v137(v242, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v229 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000020, 0x8000000267492C40, v144);
  *v143 = v229;

  v141(v242, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v230 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000028, 0x8000000267492C70, v148);
  *v147 = v230;

  v145(v242, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v231 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000035, 0x8000000267492CA0, v152);
  *v151 = v231;

  v149(v242, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v232 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000022, 0x8000000267492CE0, v156);
  *v155 = v232;

  v153(v242, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v233 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000022, 0x8000000267492D10, v160);
  *v159 = v233;

  v157(v242, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v234 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267492D40, v164);
  *v163 = v234;

  v161(v242, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v235 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001DLL, 0x8000000267492D60, v168);
  *v167 = v235;

  v165(v242, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v236 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000002ALL, 0x8000000267492D80, v172);
  *v171 = v236;

  v169(v242, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000021, 0x8000000267492DB0, v176);
  *v175 = v237;

  v173(v242, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000002FLL, 0x8000000267492DE0, v180);
  *v179 = v238;

  v177(v242, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000031, 0x8000000267492E10, v184);
  *v183 = v239;

  v181(v242, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000032, 0x8000000267492E50, v188);
  *v187 = v240;

  v185(v242, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000021, 0x8000000267492E90, v192);
  *v191 = v241;

  return v189(v242, 0);
}

uint64_t sub_2672CCF18(uint64_t a1)
{
  v2 = sub_2672CD01C(&qword_2800FA088, &protocol conformance descriptor for SISchemaDismissalReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CCF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CD01C(&qword_2800FA088, &protocol conformance descriptor for SISchemaDismissalReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CD01C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEnabledStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v128 = sub_26738113C();
  v3 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v115 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v125 = a2;
  sub_26738119C();
  v130 = *MEMORY[0x277D3E4E8];
  v9 = *(v3 + 104);
  v127 = v3 + 104;
  v129 = v9;
  (v9)(v5);
  v133[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v121 = *(v10 - 8);
  v12 = v121 + 56;
  v11 = *(v121 + 7);
  v131 = v10;
  v11(v8, 0, 1, v10);
  v122 = v12;
  v126 = v11;
  v13 = sub_2673811AC();
  v120 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267492EF0);
  v13(v133, 0);
  v119 = "assistantEnabled";
  v14 = v130;
  v15 = v129;
  v129(v5, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, v120, v119 | 0x8000000000000000);
  v16(v133, 0);
  v120 = "dictationEnabled";
  v17 = v14;
  v18 = v128;
  v15(v5, v14, v128);
  v133[0] = 1;
  sub_26738114C();
  v19 = v126;
  v126(v8, 0, 1, v131);
  v20 = sub_2673811AC();
  v118 = 0xD000000000000015;
  sub_266EC637C(v8, 0xD000000000000015, v120 | 0x8000000000000000);
  v20(v133, 0);
  v21 = v17;
  v22 = v18;
  v129(v5, v21, v18);
  v133[0] = 1;
  sub_26738114C();
  v23 = v131;
  v19(v8, 0, 1, v131);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x4569726953796568, 0xEE0064656C62616ELL);
  v24(v133, 0);
  v120 = "hardwareButtonEnabled";
  v25 = v130;
  v26 = v22;
  v27 = v129;
  v129(v5, v130, v26);
  v133[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, v118, v120 | 0x8000000000000000);
  v28(v133, 0);
  v120 = "assistantOnLockscreen";
  v29 = v25;
  v30 = v128;
  v27(v5, v29, v128);
  v133[0] = 1;
  sub_26738114C();
  v31 = v131;
  v19(v8, 0, 1, v131);
  v32 = sub_2673811AC();
  v117 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, v120 | 0x8000000000000000);
  v32(v133, 0);
  v129(v5, v130, v30);
  v133[0] = 1;
  v124 = v5;
  sub_26738114C();
  v19(v8, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267492F90);
  v33(v133, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v132, 0xD00000000000001ALL, 0x8000000267492F90);
  v36 = *(v121 + 6);
  v121 += 48;
  v119 = v36;
  if (!(v36)(v37, 1, v31))
  {
    sub_266ECB128(&unk_287891FF8);
    sub_26738115C();
  }

  (v35)(v132, 0);
  v34(v133, 0);
  v38 = v124;
  v40 = v128;
  v39 = v129;
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v41 = v131;
  v126(v8, 0, 1, v131);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B656D6F48736168, 0xEE00656D6F487469);
  v42(v133, 0);
  v39(v38, *MEMORY[0x277D3E508], v40);
  v133[0] = 1;
  sub_26738114C();
  v43 = v126;
  v126(v8, 0, 1, v41);
  v44 = sub_2673811AC();
  v120 = 0xD000000000000012;
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267492FB0);
  v44(v133, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_2672CF178(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v43(v8, 0, 1, v41);
  v45 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674694C0);
  v45(v133, 0);
  v115 = "shortcutsAvailable";
  v46 = v38;
  v47 = v130;
  v49 = v128;
  v48 = v129;
  v129(v46, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v131);
  v50 = sub_2673811AC();
  v116 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, v115 | 0x8000000000000000);
  v50(v133, 0);
  v48(v124, v47, v49);
  v133[0] = 1;
  sub_26738114C();
  v51 = v131;
  v52 = v126;
  v126(v8, 0, 1, v131);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674697C0);
  v53(v133, 0);
  type metadata accessor for SISchemaVoiceFeedback(0);
  sub_2672CF178(&qword_2800FA090, type metadata accessor for SISchemaVoiceFeedback, &protocol conformance descriptor for SISchemaVoiceFeedback);
  sub_26738120C();
  v52(v8, 0, 1, v51);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0x6565466563696F76, 0xED00006B63616264);
  v54(v133, 0);
  sub_266ECB294(0, &qword_2800F9918, 0x277D5A780);
  sub_266ECAF2C(&qword_2800F9910, &qword_2800F9918, 0x277D5A780, &protocol conformance descriptor for SISchemaAnnounceEnabledStatus);
  sub_26738120C();
  v52(v8, 0, 1, v51);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, v118, 0x8000000267492FF0);
  v55(v133, 0);
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v52(v8, 0, 1, v51);
  v56 = sub_2673811AC();
  v118 = 0xD000000000000017;
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267468890);
  v56(v133, 0);
  v115 = "announceEnabledStatus";
  sub_266ECB294(0, &qword_2800F98A8, 0x277D5A760);
  sub_266ECAF2C(&qword_2800F98A0, &qword_2800F98A8, 0x277D5A760, &protocol conformance descriptor for SISchemaAdaptiveVolumeUserPreferences);
  sub_26738120C();
  v52(v8, 0, 1, v51);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v115 | 0x8000000000000000);
  v57(v133, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  sub_26738122C();
  v58 = v51;
  v59 = v126;
  v126(v8, 0, 1, v58);
  v60 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746B100);
  v60(v133, 0);
  v61 = v124;
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v59(v8, 0, 1, v58);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746A220);
  v62(v133, 0);
  sub_266ECB294(0, &qword_2800FA098, 0x277D5A9F0);
  sub_266ECAF2C(&qword_2800FA0A0, &qword_2800FA098, 0x277D5A9F0, &protocol conformance descriptor for SISchemaSendWithoutConfirmation);
  sub_26738120C();
  v59(v8, 0, 1, v58);
  v63 = sub_2673811AC();
  sub_266EC637C(v8, v118, 0x8000000267493030);
  v63(v133, 0);
  v129(v61, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v59(v8, 0, 1, v58);
  v64 = sub_2673811AC();
  v65 = v116;
  sub_266EC637C(v8, v116, 0x8000000267493050);
  v64(v133, 0);
  v66 = sub_2673811AC();
  v67 = sub_266ECB6CC(v132, v65, 0x8000000267493050);
  if (!(v119)(v68, 1, v58))
  {
    sub_266ECB128(&unk_287892020);
    sub_26738115C();
  }

  (v67)(v132, 0);
  v66(v133, 0);
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v69 = v131;
  v126(v8, 0, 1, v131);
  v70 = sub_2673811AC();
  v71 = v117;
  sub_266EC637C(v8, v117, 0x8000000267493070);
  v70(v133, 0);
  v72 = sub_2673811AC();
  v73 = sub_266ECB6CC(v132, v71, 0x8000000267493070);
  if (!(v119)(v74, 1, v69))
  {
    sub_266ECB128(&unk_287892048);
    sub_26738115C();
  }

  (v73)(v132, 0);
  v72(v133, 0);
  type metadata accessor for SISchemaHSHangupEnablementState(0);
  sub_2672CF178(&qword_2800FA0A8, type metadata accessor for SISchemaHSHangupEnablementState, &protocol conformance descriptor for SISchemaHSHangupEnablementState);
  sub_26738120C();
  v75 = v131;
  v76 = v126;
  v126(v8, 0, 1, v131);
  v77 = sub_2673811AC();
  sub_266EC637C(v8, v118, 0x8000000267493090);
  v77(v133, 0);
  type metadata accessor for SISchemaSiriInCallEnablementState(0);
  sub_2672CF178(&qword_2800FA0B0, type metadata accessor for SISchemaSiriInCallEnablementState, &protocol conformance descriptor for SISchemaSiriInCallEnablementState);
  sub_26738120C();
  v76(v8, 0, 1, v75);
  v78 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026746B860);
  v78(v133, 0);
  v79 = v124;
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v76(v8, 0, 1, v75);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026746AB70);
  v80(v133, 0);
  v121 = "isAlwaysShowSiriCaptionsEnabled";
  v81 = v130;
  v82 = v128;
  v129(v79, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v76(v8, 0, 1, v131);
  v83 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v121 | 0x8000000000000000);
  v83(v133, 0);
  v121 = "siriPauseTimeState";
  v84 = v81;
  v85 = v82;
  v86 = v129;
  v129(v79, v84, v82);
  v133[0] = 1;
  sub_26738114C();
  v87 = v131;
  v88 = v126;
  v126(v8, 0, 1, v131);
  v89 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v121 | 0x8000000000000000);
  v89(v133, 0);
  v86(v79, *MEMORY[0x277D3E518], v85);
  v133[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v87);
  v90 = sub_2673811AC();
  sub_266EC637C(v8, 0x6565705369726973, 0xEE00657461526863);
  v90(v133, 0);
  v121 = "isShowAppsBehindSiriEnabled";
  v86(v124, v130, v85);
  v133[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v87);
  v91 = sub_2673811AC();
  sub_266EC637C(v8, v120, v121 | 0x8000000000000000);
  v91(v133, 0);
  sub_266ECB294(0, &qword_2800FA0B8, 0x277D5AA28);
  sub_266ECAF2C(&qword_2800FA0C0, &qword_2800FA0B8, 0x277D5AA28, &protocol conformance descriptor for SISchemaSiriVoiceTriggerSettings);
  sub_26738120C();
  v88(v8, 0, 1, v87);
  v92 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674930B0);
  v92(v133, 0);
  v93 = v124;
  v94 = v130;
  v96 = v128;
  v95 = v129;
  v129(v124, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v97 = v87;
  v98 = v126;
  v126(v8, 0, 1, v97);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267469A50);
  v99(v133, 0);
  v121 = "SiriEnabledOnCarPlay";
  v95(v93, v94, v96);
  v133[0] = 1;
  sub_26738114C();
  v98(v8, 0, 1, v131);
  v100 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v121 | 0x8000000000000000);
  v100(v133, 0);
  v101 = v124;
  v95(v124, v94, v96);
  v133[0] = 1;
  sub_26738114C();
  v102 = v131;
  v103 = v126;
  v126(v8, 0, 1, v131);
  v104 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026746A940);
  v104(v133, 0);
  type metadata accessor for SISchemaSiriPauseTimeState(0);
  sub_2672CF178(&qword_2800F6268, type metadata accessor for SISchemaSiriPauseTimeState, &protocol conformance descriptor for SISchemaSiriPauseTimeState);
  sub_26738120C();
  v103(v8, 0, 1, v102);
  v105 = sub_2673811AC();
  v106 = v120;
  sub_266EC637C(v8, v120, 0x800000026746A960);
  v105(v133, 0);
  v121 = "iri.odd.ODDOptInProperties";
  v107 = v130;
  v108 = v128;
  v95(v101, v130, v128);
  v133[0] = 1;
  sub_26738114C();
  v126(v8, 0, 1, v131);
  v109 = sub_2673811AC();
  sub_266EC637C(v8, v106, v121 | 0x8000000000000000);
  v109(v133, 0);
  v95(v101, v107, v108);
  v133[0] = 1;
  sub_26738114C();
  v110 = v131;
  v111 = v126;
  v126(v8, 0, 1, v131);
  v112 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026746B120);
  v112(v133, 0);
  type metadata accessor for SISchemaLocationAccessPermission(0);
  sub_2672CF178(&qword_2800FA0C8, type metadata accessor for SISchemaLocationAccessPermission, &protocol conformance descriptor for SISchemaLocationAccessPermission);
  sub_26738120C();
  v111(v8, 0, 1, v110);
  v113 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674697E0);
  return v113(v133, 0);
}

uint64_t sub_2672CF0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CF118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672CF178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaEndPointType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267493100, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267493130, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267493160, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267493180, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674931A0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x80000002674931C0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x80000002674931E0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672CF5E0(uint64_t a1)
{
  v2 = sub_2672CF6E4(&qword_2800FA0D0, &protocol conformance descriptor for SISchemaEndPointType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CF648(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CF6E4(&qword_2800FA0D0, &protocol conformance descriptor for SISchemaEndPointType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CF6E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEngagedAccessoryContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = sub_26738113C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v8 = v6 + 56;
  v7(v4, 0, 1, v5);
  v27 = v8;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F737365636361, 0xEB00000000644979);
  v9(v30, 0);
  type metadata accessor for SISchemaHomeKitAccessoryType(0);
  sub_2672CFE50();
  sub_26738120C();
  v24 = v5;
  v7(v4, 0, 1, v5);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000014, 0x8000000267493230);
  v10(v30, 0);
  v11 = *MEMORY[0x277D3E530];
  v25 = *(v26 + 104);
  v12 = v28;
  v13 = v29;
  v25(v28, v11, v29);
  v30[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F737365636361, 0xEE00646E61724279);
  v14(v30, 0);
  v15 = v25;
  v25(v12, v11, v13);
  v30[0] = 1;
  sub_26738114C();
  v16 = v24;
  v7(v4, 0, 1, v24);
  v17 = sub_2673811AC();
  sub_266EC637C(v4, 0x726F737365636361, 0xEE006C65646F4D79);
  v17(v30, 0);
  v23 = "homeKitAccessoryType";
  LODWORD(v26) = *MEMORY[0x277D3E4E8];
  v18 = v28;
  v15(v28);
  v30[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000016, v23 | 0x8000000000000000);
  v19(v30, 0);
  (v15)(v18, v26, v29);
  v30[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000018, 0x8000000267493270);
  return v20(v30, 0);
}

uint64_t sub_2672CFD8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CFDF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672CFE50()
{
  result = qword_2800FA0D8;
  if (!qword_2800FA0D8)
  {
    type metadata accessor for SISchemaHomeKitAccessoryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0D8);
  }

  return result;
}

uint64_t static SISchemaEnhancedVoiceTriggerMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674932D0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x8000000267493300, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x8000000267493340, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267493380, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x80000002674933B0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672D01E4(uint64_t a1)
{
  v2 = sub_2672D02E8(&qword_2800FA0E0, &protocol conformance descriptor for SISchemaEnhancedVoiceTriggerMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D024C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D02E8(&qword_2800FA0E0, &protocol conformance descriptor for SISchemaEnhancedVoiceTriggerMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D02E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEnhancedVoiceTriggerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEnrolledUserState.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267493410);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F9F70, 0x277D5A9A0);
  sub_266ECAF2C(&qword_2800F9F78, &qword_2800F9F70, 0x277D5A9A0, &protocol conformance descriptor for SISchemaPersonalization);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C616E6F73726570, 0xEF6E6F6974617A69);
  return v11(v13, 0);
}

uint64_t sub_2672D066C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D06D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaEuclidConfusionPair.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7A696E676F636572, 0xEF6E656B6F546465);
  v8(v19, 0);
  v9 = v16;
  v10 = v0;
  v11 = v17;
  (v17)(v3, v16, v10);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574736567677573, 0xEF736E656B6F5464);
  v12(v19, 0);
  (v11)(v3, v9, v15);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574636572726F63, 0xEE006E656B6F5464);
  return v13(v19, 0);
}

uint64_t sub_2672D0B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D0BD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D0C3C()
{
  result = qword_2800FA0F8;
  if (!qword_2800FA0F8)
  {
    sub_2672D0C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0F8);
  }

  return result;
}

unint64_t sub_2672D0C94()
{
  result = qword_2800FA100;
  if (!qword_2800FA100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA100);
  }

  return result;
}

uint64_t static SISchemaEventJoinability.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267493490, isUniquelyReferenced_nonNull_native);
  *v3 = v29;

  v1(v35, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x80000002674934B0, v8);
  *v7 = v30;

  v5(v35, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x80000002674934E0, v12);
  *v11 = v31;

  v9(v35, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267493500, v16);
  *v15 = v32;

  v13(v35, 0);
  v17 = sub_266ECB128(&unk_287892070);
  v19 = v18;
  v20 = sub_2673810FC();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD4CC(v17, v19, 3, v23);
  *v22 = v33;
  v20(v35, 0);
  v24 = sub_26738111C();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267493520, v27);
  *v26 = v34;

  return v24(v35, 0);
}

uint64_t sub_2672D1050(uint64_t a1)
{
  v2 = sub_2672D1154(&qword_2800FA110, &protocol conformance descriptor for SISchemaEventJoinability);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D1154(&qword_2800FA110, &protocol conformance descriptor for SISchemaEventJoinability);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D1154(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEventJoinability(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGenAIAgent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267493580, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x45474149414E4547, 0xEF454E4F4E5F544ELL, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674935A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x80000002674935C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672D1428(uint64_t a1)
{
  v2 = sub_2672D152C(&qword_2800FA118, &protocol conformance descriptor for SISchemaGenAIAgent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D1490(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D152C(&qword_2800FA118, &protocol conformance descriptor for SISchemaGenAIAgent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D152C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaGenAIAgent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGradingOptInStateChange.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_2672D1ED0(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974704F76657270, 0xEE0065746174536ELL);
  v12(v28, 0);
  sub_26738120C();
  v24[2] = v11;
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E4974704F77656ELL, 0xED00006574617453);
  v13(v28, 0);
  type metadata accessor for SISchemaGradingOptInStateChangeSource(0);
  sub_2672D1ED0(&qword_2800FA120, type metadata accessor for SISchemaGradingOptInStateChangeSource, &protocol conformance descriptor for SISchemaGradingOptInStateChangeSource);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v24[1] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x656372756F73, 0xE600000000000000);
  v14(v28, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = v25;
  v26 = *(v26 + 104);
  v17 = v27;
  (v26)(v25, v15, v27);
  v28[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  v18(v28, 0);
  v19 = v17;
  v20 = v26;
  (v26)(v16, v15, v19);
  v28[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v21(v28, 0);
  v20(v16, *MEMORY[0x277D3E540], v27);
  v28[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x8000000267493620);
  v22(v28, 0);
  sub_266ECB128(&unk_287892098);
  return sub_2673811CC();
}

uint64_t sub_2672D1B68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672D1C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672D1CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D1D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D1D90(void *a1)
{
  a1[1] = sub_2672D1ED0(&qword_2800FA128, sub_2672D1E3C, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  a1[2] = sub_2672D1ED0(&qword_2800FA130, sub_2672D1E3C, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  result = sub_2672D1ED0(&qword_2800FA138, sub_2672D1E3C, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  a1[3] = result;
  return result;
}

unint64_t sub_2672D1E3C()
{
  result = qword_2800F1F50;
  if (!qword_2800F1F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1F50);
  }

  return result;
}

uint64_t sub_2672D1ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaGradingOptInStateChangeSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267493680, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674936B0, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674936E0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267493710, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267493740, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x8000000267493770, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x80000002674937A0, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674937D0, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000026, 0x8000000267493800, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x8000000267493830, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267493860, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x8000000267493890, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x80000002674938C0, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_2672D2598(uint64_t a1)
{
  v2 = sub_2672D269C(&qword_2800FA140, &protocol conformance descriptor for SISchemaGradingOptInStateChangeSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D2600(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D269C(&qword_2800FA140, &protocol conformance descriptor for SISchemaGradingOptInStateChangeSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D269C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaGradingOptInStateChangeSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGridCardSection.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267493920);
  v10(v13, 0);
  type metadata accessor for SISchemaCardSource(0);
  sub_2672D2B14(&qword_2800F9A40, type metadata accessor for SISchemaCardSource, &protocol conformance descriptor for SISchemaCardSource);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x72756F5364726163, 0xEA00000000006563);
  return v11(v13, 0);
}

uint64_t sub_2672D2A08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D2A6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D2B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672D2B5C()
{
  result = qword_2800FA150;
  if (!qword_2800FA150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA150);
  }

  return result;
}

uint64_t static SISchemaHardwareButtonInvocationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior(0);
  sub_2672D2FE8(&qword_2800FA158, type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior, &protocol conformance descriptor for SISchemaSiriHardwareButtonLongPressBehavior);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x8000000267493980);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x80000002674939A0);
  return v10(v14, 0);
}

uint64_t sub_2672D2EDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D2F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D2FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672D3030()
{
  result = qword_2800FA168;
  if (!qword_2800FA168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA168);
  }

  return result;
}

uint64_t static SISchemaHardwareInterfaceIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "InterfaceIdentifier";
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267493A30);
  return v14(v19, 0);
}

uint64_t sub_2672D33B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D3414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D3478()
{
  result = qword_2800F9958;
  if (!qword_2800F9958)
  {
    sub_2672D34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9958);
  }

  return result;
}

unint64_t sub_2672D34D0()
{
  result = qword_2800F9950;
  if (!qword_2800F9950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9950);
  }

  return result;
}

uint64_t static SISchemaHomeKitAccessoryResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaHomeKitAccessoryType(0);
  sub_2672D3AE4(&qword_2800FA0D8, type metadata accessor for SISchemaHomeKitAccessoryType, &protocol conformance descriptor for SISchemaHomeKitAccessoryType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v25 = *(v9 + 56);
  v26 = v9 + 56;
  v25(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267493230);
  v10(v31, 0);
  v29 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v30, 0xD000000000000014, 0x8000000267493230);
  v13 = v8;
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878920C8);
    sub_26738115C();
  }

  (v12)(v30, 0);
  v11(v31, 0);
  v23 = "ccessoryResponse";
  v15 = *MEMORY[0x277D3E508];
  v24 = *(v3 + 104);
  v16 = v27;
  v17 = v28;
  v24(v27, v15, v28);
  v31[0] = 1;
  sub_26738114C();
  v18 = v25;
  v25(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v23 | 0x8000000000000000);
  v19(v31, 0);
  v24(v16, v15, v17);
  v31[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267493AB0);
  return v20(v31, 0);
}

uint64_t sub_2672D39D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D3A3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D3AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672D3B2C()
{
  result = qword_2800FA178;
  if (!qword_2800FA178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA178);
  }

  return result;
}

uint64_t static SISchemaHomeKitAccessoryType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000033, 0x8000000267493B00, isUniquelyReferenced_nonNull_native);
  *v3 = v162;

  v1(v202, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267493B40, v8);
  *v7 = v163;

  v5(v202, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267493B60, v12);
  *v11 = v164;

  v9(v202, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267493B80, v16);
  *v15 = v165;

  v13(v202, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267493BA0, v20);
  *v19 = v166;

  v17(v202, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267493BD0, v24);
  *v23 = v167;

  v21(v202, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267493BF0, v28);
  *v27 = v168;

  v25(v202, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267493C10, v32);
  *v31 = v169;

  v29(v202, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267493C40, v36);
  *v35 = v170;

  v33(v202, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x8000000267493C60, v40);
  *v39 = v171;

  v37(v202, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267493C80, v44);
  *v43 = v172;

  v41(v202, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x8000000267493CB0, v48);
  *v47 = v173;

  v45(v202, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x8000000267493CE0, v52);
  *v51 = v174;

  v49(v202, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267493D10, v56);
  *v55 = v175;

  v53(v202, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002BLL, 0x8000000267493D40, v60);
  *v59 = v176;

  v57(v202, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001BLL, 0x8000000267493D70, v64);
  *v63 = v177;

  v61(v202, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000023, 0x8000000267493D90, v68);
  *v67 = v178;

  v65(v202, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000024, 0x8000000267493DC0, v72);
  *v71 = v179;

  v69(v202, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000025, 0x8000000267493DF0, v76);
  *v75 = v180;

  v73(v202, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000025, 0x8000000267493E20, v80);
  *v79 = v181;

  v77(v202, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000023, 0x8000000267493E50, v84);
  *v83 = v182;

  v81(v202, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x8000000267493E80, v88);
  *v87 = v183;

  v85(v202, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000021, 0x8000000267493EB0, v92);
  *v91 = v184;

  v89(v202, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000020, 0x8000000267493EE0, v96);
  *v95 = v185;

  v93(v202, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002ALL, 0x8000000267493F10, v100);
  *v99 = v186;

  v97(v202, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000024, 0x8000000267493F40, v104);
  *v103 = v187;

  v101(v202, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001BLL, 0x8000000267493F70, v108);
  *v107 = v188;

  v105(v202, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000021, 0x8000000267493F90, v112);
  *v111 = v189;

  v109(v202, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000027, 0x8000000267493FC0, v116);
  *v115 = v190;

  v113(v202, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000022, 0x8000000267493FF0, v120);
  *v119 = v191;

  v117(v202, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002CLL, 0x8000000267494020, v124);
  *v123 = v192;

  v121(v202, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000019, 0x8000000267494050, v128);
  *v127 = v193;

  v125(v202, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001CLL, 0x8000000267494070, v132);
  *v131 = v194;

  v129(v202, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001DLL, 0x8000000267494090, v136);
  *v135 = v195;

  v133(v202, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000023, 0x80000002674940B0, v140);
  *v139 = v196;

  v137(v202, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000026, 0x80000002674940E0, v144);
  *v143 = v197;

  v141(v202, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001ALL, 0x8000000267494110, v148);
  *v147 = v198;

  v145(v202, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001BLL, 0x8000000267494130, v152);
  *v151 = v199;

  v149(v202, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001FLL, 0x8000000267494150, v156);
  *v155 = v200;

  v153(v202, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000025, 0x8000000267494170, v160);
  *v159 = v201;

  return v157(v202, 0);
}