uint64_t static PLUSSchemaPLUSRECTIFIPatternItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738118C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_26738113C();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource(0);
  sub_267203DCC(&qword_2800F7DB8, type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemSource);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x72756F536D657469, 0xEA00000000006563);
  v12(v70, 0);
  type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType(0);
  sub_267203DCC(&qword_2800F7DC0, type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemType);
  sub_26738120C();
  v64 = v10 + 56;
  v65 = v11;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x657079546D657469, 0xE800000000000000);
  v13(v70, 0);
  v67 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v69, 0x657079546D657469, 0xE800000000000000);
  v55 = *(v10 + 48);
  v17 = v55(v16, 1, v9);
  v56 = v10 + 48;
  if (!v17)
  {
    sub_266ECB128(&unk_28788C9F8);
    sub_26738115C();
  }

  (v15)(v69, 0);
  v14(v70, 0);
  v61 = "iri.plus.PLUSRECTIFIPatternItem";
  v18 = v68 + 104;
  v19 = *(v68 + 104);
  v20 = v63;
  (v19)(v63, *MEMORY[0x277D3E540], v66);
  v70[0] = 1;
  sub_26738114C();
  v21 = v65;
  v65(v8, 0, 1, v9);
  v62 = v9;
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v61 | 0x8000000000000000);
  v22(v70, 0);
  v54 = "relativeTimestampInMs";
  v60 = *MEMORY[0x277D3E530];
  v68 = v18;
  v61 = v19;
  (v19)(v20);
  v70[0] = 0;
  sub_26738114C();
  v21(v8, 0, 1, v62);
  v23 = sub_2673811AC();
  v24 = v54;
  sub_266EC637C(v8, 0xD000000000000014, v54 | 0x8000000000000000);
  v23(v70, 0);
  v25 = v62;
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v69, 0xD000000000000014, v24 | 0x8000000000000000);
  v28 = v55;
  if (!v55(v29, 1, v25))
  {
    sub_266ECB128(&unk_28788CA20);
    sub_26738115C();
  }

  (v27)(v69, 0);
  v26(v70, 0);
  (v61)(v63, v60, v66);
  v70[0] = 0;
  sub_26738114C();
  v65(v8, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026747B9D0);
  v30(v70, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v69, 0xD000000000000018, 0x800000026747B9D0);
  v33 = v25;
  v35 = v28(v34, 1, v25);
  v36 = v8;
  if (!v35)
  {
    sub_266ECB128(&unk_28788CA48);
    sub_26738115C();
  }

  (v32)(v69, 0);
  v31(v70, 0);
  v37 = v63;
  v38 = v60;
  v39 = v66;
  v40 = v61;
  (v61)(v63, v60, v66);
  v70[0] = 1;
  sub_26738114C();
  v41 = v33;
  v42 = v65;
  v65(v36, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v36, 0x616D6F446D657469, 0xEE00656D614E6E69);
  v43(v70, 0);
  v40(v37, v38, v39);
  v70[0] = 1;
  sub_26738114C();
  v42(v36, 0, 1, v62);
  v44 = sub_2673811AC();
  sub_266EC637C(v36, 0x6C7961506D657469, 0xEB0000000064616FLL);
  v44(v70, 0);
  v45 = v57;
  sub_26738117C();
  v46 = sub_2673811BC();
  v48 = v47;
  v49 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v48 = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = sub_266ECAD54(0, v49[2] + 1, 1, v49);
    *v48 = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_266ECAD54((v51 > 1), v52 + 1, 1, v49);
    *v48 = v49;
  }

  v49[2] = v52 + 1;
  (*(v58 + 32))(v49 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v52, v45, v59);
  return v46(v70, 0);
}

uint64_t sub_267203CC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267203D24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267203DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267203E14()
{
  result = qword_2800F7DD0;
  if (!qword_2800F7DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7DD0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternItemSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026747BA50, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026747BA80, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026747BAB0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267204074(uint64_t a1)
{
  v2 = sub_267204178(&qword_2800F7DD8, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672040DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267204178(&qword_2800F7DD8, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267204178(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternItemType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026747BB20, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026747BB50, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000031, 0x800000026747BB80, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026747BBC0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026747BBF0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026747BC20, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026747BC50, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002BLL, 0x800000026747BC80, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_267204608(uint64_t a1)
{
  v2 = sub_26720470C(&qword_2800F7DE0, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267204670(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720470C(&qword_2800F7DE0, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItemType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720470C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternSequenceGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v25 = sub_26738113C();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v23 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x496E726574746170, 0xE900000000000064);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800F7DD0, 0x277D59D70);
  sub_266ECAF2C(&qword_2800F7DC8, &qword_2800F7DD0, 0x277D59D70, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternItem);
  sub_26738122C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x65636E6575716573, 0xE800000000000000);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F7DA8, 0x277D59D68);
  sub_266ECAF2C(&qword_2800F7DA0, &qword_2800F7DA8, 0x277D59D68, &protocol conformance descriptor for PLUSSchemaPLUSRECTIFIPatternConstraint);
  sub_26738122C();
  v9(v6, 0, 1, v7);
  v22 = v10;
  v26 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x69617274736E6F63, 0xEB0000000073746ELL);
  v13(v28, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674263B0);
  v14(v28, 0);
  v23 = "TIFIPatternSequenceGenerated";
  v15 = *MEMORY[0x277D3E538];
  v16 = *(v27 + 104);
  v27 += 104;
  v18 = v24;
  v17 = v25;
  v16(v24, v15, v25);
  v28[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v23 | 0x8000000000000000);
  v19(v28, 0);
  v16(v18, v15, v17);
  v28[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x800000026747BD10);
  return v20(v28, 0);
}

uint64_t sub_267204D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267204E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSendMessageMetadataExtracted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v31 = v9 + 56;
  v10(v7, 0, 1, v8);
  v29 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v11(v34, 0);
  v30 = *MEMORY[0x277D3E538];
  v12 = v32;
  v13 = *(v33 + 104);
  v33 += 104;
  v13(v4);
  v28 = v13;
  v34[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000029, 0x800000026747BD70);
  v14(v34, 0);
  v27 = "geRequestNumberOfContacts";
  (v13)(v4, *MEMORY[0x277D3E4E8], v12);
  v34[0] = 1;
  sub_26738114C();
  v15 = v8;
  v16 = v8;
  v17 = v29;
  v29(v7, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, v27 | 0x8000000000000000);
  v18(v34, 0);
  v27 = "geRequestHasPayload";
  v19 = v4;
  v20 = v4;
  v21 = v30;
  v22 = v28;
  (v28)(v20, v30, v12);
  v34[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v27 | 0x8000000000000000);
  v23(v34, 0);
  v22(v19, v21, v32);
  v34[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v16);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x800000026747BE00);
  return v24(v34, 0);
}

uint64_t sub_267205468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672054CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterDomainSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7DE8, 0x277D59D90);
  sub_266ECAF2C(&qword_2800F7DF0, &qword_2800F7DE8, 0x277D59D90, &protocol conformance descriptor for PLUSSchemaPLUSSuggesterMediaSuggestionMetadata);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D616964656DLL, 0xED00006174616461);
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

uint64_t sub_2672058E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720594C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterMediaSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(0);
  sub_267205E6C(&qword_2800F7CE0, type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality, &protocol conformance descriptor for PLUSSchemaPLUSMediaSuggestionLocality);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7974696C61636F6CLL, 0xE800000000000000);
  v6(v10, 0);
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionServerTreatment(0);
  sub_267205E6C(&qword_2800F7D50, type metadata accessor for PLUSSchemaPLUSMediaSuggestionServerTreatment, &protocol conformance descriptor for PLUSSchemaPLUSMediaSuggestionServerTreatment);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254726576726573, 0xEF746E656D746165);
  v7(v10, 0);
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionClientTreatment(0);
  sub_267205E6C(&qword_2800F7D28, type metadata accessor for PLUSSchemaPLUSMediaSuggestionClientTreatment, &protocol conformance descriptor for PLUSSchemaPLUSMediaSuggestionClientTreatment);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254746E65696C63, 0xEF746E656D746165);
  return v8(v10, 0);
}

uint64_t sub_267205D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267205DC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267205E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267205EB4()
{
  result = qword_2800F7DE8;
  if (!qword_2800F7DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7DE8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggesterMetadataReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  v14 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026747BF10);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674263B0);
  v10(v18, 0);
  (*(v16 + 104))(v15, *MEMORY[0x277D3E4E8], v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026747BF30);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800F7C20, 0x277D59CE0);
  sub_266ECAF2C(&qword_2800F7C18, &qword_2800F7C20, 0x277D59CE0, &protocol conformance descriptor for PLUSSchemaPLUSDomainConfiguredState);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026747BF50);
  return v12(v18, 0);
}

uint64_t sub_2672063EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267206450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterQueried.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1);
  v14 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x800000026747BF10);
  v8(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674263B0);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800F7E18, 0x277D59DE0);
  sub_266ECAF2C(&qword_2800F7E20, &qword_2800F7E18, 0x277D59DE0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionMatchResult);
  sub_26738122C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x526465686374616DLL, 0xEE0073746C757365);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x800000026747BFA0);
  return v11(v17, 0);
}

uint64_t sub_2672069E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267206A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterSuggestionMetadataReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v7 = v5 + 56;
  v6(v3, 0, 1, v4);
  v19 = v6;
  v20 = v7;
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v8(v22, 0);
  v21 = "MetadataReported";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, v21 | 0x8000000000000000);
  v9(v22, 0);
  sub_26738120C();
  v10 = v4;
  v11 = v4;
  v12 = v19;
  v19(v3, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  v13(v22, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState(0);
  sub_267207180(&qword_2800F7E28, type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedState);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026747C030);
  v14(v22, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState(0);
  sub_267207180(&qword_2800F7E30, type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionNoveltyState);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026747C050);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F7E00, 0x277D59D88);
  sub_266ECAF2C(&qword_2800F7DF8, &qword_2800F7E00, 0x277D59D88, &protocol conformance descriptor for PLUSSchemaPLUSSuggesterDomainSuggestionMetadata);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BE70);
  return v16(v22, 0);
}

uint64_t sub_2672070BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267207180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PLUSSchemaPLUSSuggesterSuggestionRedundancyReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v14[1] = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  v14[0] = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026747BF10);
  v9(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026747C010);
  v10(v15, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674263B0);
  v11(v15, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(0);
  sub_2672076E8();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026747C0C0);
  return v12(v15, 0);
}

uint64_t sub_267207624(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207688(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672076E8()
{
  result = qword_2800F7E38;
  if (!qword_2800F7E38)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7E38);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestion.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E40, 0x277D59DE8);
  sub_266ECAF2C(&qword_2800F7E48, &qword_2800F7E40, 0x277D59DE8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026747C110);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7E50, 0x277D59DF8);
  sub_266ECAF2C(&qword_2800F7E58, &qword_2800F7E50, 0x277D59DF8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionValue);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEF65756C61566E6FLL);
  return v7(v9, 0);
}

uint64_t sub_267207A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignal.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType(0);
  sub_267207F24(&qword_2800F7CB0, type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x79546C616E676973, 0xEA00000000006570);
  v6(v9, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource(0);
  sub_267207F24(&qword_2800F7E70, type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalSource);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F536C616E676973, 0xEC00000065637275);
  return v7(v9, 0);
}

uint64_t sub_267207E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207E7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267207F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267207F6C()
{
  result = qword_2800F7BB0;
  if (!qword_2800F7BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7BB0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignalSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747C1B0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000042, 0x800000026747C1E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000044, 0x800000026747C230, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004ELL, 0x800000026747C280, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000039, 0x800000026747C2D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672082AC(uint64_t a1)
{
  v2 = sub_2672083B0(&qword_2800F7E78, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267208314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672083B0(&qword_2800F7E78, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672083B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026747C350, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026747C380, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026747C3C0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026747C3F0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x800000026747C420, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026747C450, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000029, 0x800000026747C480, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000030, 0x800000026747C4B0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x800000026747C4F0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2672088AC(uint64_t a1)
{
  v2 = sub_2672089B0(&qword_2800F7E80, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267208914(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672089B0(&qword_2800F7E80, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionAccuracySignalType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672089B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionDomainMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain(0);
  sub_267208CE4(&qword_2800F7E88, type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionGenerationDomain);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026747C560);
  return v5(v7, 0);
}

uint64_t sub_267208BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267208C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267208CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267208D2C()
{
  result = qword_2800F7E08;
  if (!qword_2800F7E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7E08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionDomainOutcome.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7D48, 0x277D59D50);
  sub_266ECAF2C(&qword_2800F7D40, &qword_2800F7D48, 0x277D59D50, &protocol conformance descriptor for PLUSSchemaPLUSMediaSuggestionOutcome);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x74754F616964656DLL, 0xEC000000656D6F63);
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

uint64_t sub_2672090EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F7E68, 0x277D59DB8);
  sub_266ECAF2C(&qword_2800F7E60, &qword_2800F7E68, 0x277D59DB8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestion);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267479010);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F7950, 0x277D59C48);
  sub_266ECAF2C(&qword_2800F7948, &qword_2800F7950, 0x277D59C48, &protocol conformance descriptor for PLUSSchemaPLUSChangeDataCaptureMetadata);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000023, 0x800000026747C620);
  return v8(v10, 0);
}

uint64_t sub_2672095A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionGenerationDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026747C690, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026747C6C0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x800000026747C6F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026747C730, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267209930(uint64_t a1)
{
  v2 = sub_267209A34(&qword_2800F7EA0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionGenerationDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267209998(uint64_t a1, uint64_t a2)
{
  v4 = sub_267209A34(&qword_2800F7EA0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionGenerationDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267209A34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionMatchResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6974736567677573, 0xEC00000064496E6FLL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7E68, 0x277D59DB8);
  sub_266ECAF2C(&qword_2800F7E60, &qword_2800F7E68, 0x277D59DB8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestion);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267479010);
  return v7(v9, 0);
}

uint64_t sub_267209D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209DB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus(0);
  sub_26720A148(&qword_2800F7EA8, type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026747C7D0);
  return v5(v7, 0);
}

uint64_t sub_26720A03C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720A0A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26720A148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26720A190()
{
  result = qword_2800F7E40;
  if (!qword_2800F7E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7E40);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionNoveltyState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026747C830, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747C860, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026747C890, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026747C8C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26720A460(uint64_t a1)
{
  v2 = sub_26720A564(&qword_2800F7EB0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionNoveltyState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720A4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720A564(&qword_2800F7EB0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionNoveltyState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720A564(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026747C920, isUniquelyReferenced_nonNull_native);
  *v3 = v66;

  v1(v82, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026747C940, v8);
  *v7 = v67;

  v5(v82, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026747C970, v12);
  *v11 = v68;

  v9(v82, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x800000026747C9B0, v16);
  *v15 = v69;

  v13(v82, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x800000026747C9F0, v20);
  *v19 = v70;

  v17(v82, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026747CA30, v24);
  *v23 = v71;

  v21(v82, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x800000026747CA60, v28);
  *v27 = v72;

  v25(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000033, 0x800000026747CA90, v32);
  *v31 = v73;

  v29(v82, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000035, 0x800000026747CAD0, v36);
  *v35 = v74;

  v33(v82, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002DLL, 0x800000026747CB10, v40);
  *v39 = v75;

  v37(v82, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ELL, 0x800000026747CB40, v44);
  *v43 = v76;

  v41(v82, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002DLL, 0x800000026747CB70, v48);
  *v47 = v77;

  v45(v82, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x800000026747CBA0, v52);
  *v51 = v78;

  v49(v82, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000041, 0x800000026747CBE0, v56);
  *v55 = v79;

  v53(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000041, 0x800000026747CC30, v60);
  *v59 = v80;

  v57(v82, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000045, 0x800000026747CC80, v64);
  *v63 = v81;

  return v61(v82, 0);
}

uint64_t sub_26720AD70(uint64_t a1)
{
  v2 = sub_26720AE74(&qword_2800F7EC0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720ADD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720AE74(&qword_2800F7EC0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720AE74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionOutcomeReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v7 = v5 + 56;
  v6(v3, 0, 1, v4);
  v15 = v7;
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v8(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v16 = v4;
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026747C010);
  v9(v17, 0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  v10(v17, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(0);
  sub_26720B474();
  sub_26738120C();
  v11 = v16;
  v6(v3, 0, 1, v16);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026747CD10);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F7E98, 0x277D59DD0);
  sub_266ECAF2C(&qword_2800F7E90, &qword_2800F7E98, 0x277D59DD0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionDomainOutcome);
  sub_26738120C();
  v6(v3, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0x754F6E69616D6F64, 0xED0000656D6F6374);
  return v13(v17, 0);
}

uint64_t sub_26720B3B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720B414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720B474()
{
  result = qword_2800F7EB8;
  if (!qword_2800F7EB8)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EB8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionRedundancyState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026747CD70, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x800000026747CDA0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026747CDD0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26720B724(uint64_t a1)
{
  v2 = sub_26720B828(&qword_2800F7EC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionRedundancyState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720B828(&qword_2800F7EC8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionRedundancyState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720B828(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionSurfacedBeforeStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747CE40, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x800000026747CE70, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026747CEB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000043, 0x800000026747CEF0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26720BAF0(uint64_t a1)
{
  v2 = sub_26720BBF4(&qword_2800F7ED0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720BB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720BBF4(&qword_2800F7ED0, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720BBF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionSurfacedState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026747CF80, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026747CFB0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x800000026747CFE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000038, 0x800000026747D020, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26720BEBC(uint64_t a1)
{
  v2 = sub_26720BFC0(&qword_2800F7ED8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720BF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720BFC0(&qword_2800F7ED8, &protocol conformance descriptor for PLUSSchemaPLUSSuggestionSurfacedState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720BFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7EE0, 0x277D59E28);
  sub_266ECAF2C(&qword_2800F7EE8, &qword_2800F7EE0, 0x277D59E28, &protocol conformance descriptor for PLUSSchemaPLUSUniversalSuggestion);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000013, 0x800000026747D090);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F7D20, 0x277D59D40);
  sub_266ECAF2C(&qword_2800F7D18, &qword_2800F7D20, 0x277D59D40, &protocol conformance descriptor for PLUSSchemaPLUSMediaSuggestion);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x677553616964656DLL, 0xEF6E6F6974736567);
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

uint64_t sub_26720C45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720C4C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSTimeToFollowupBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026747D0F0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026747D120, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x800000026747D150, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x800000026747D190, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026747D1D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26720C860(uint64_t a1)
{
  v2 = sub_26720C964(&qword_2800F7EF0, &protocol conformance descriptor for PLUSSchemaPLUSTimeToFollowupBucket);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720C8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720C964(&qword_2800F7EF0, &protocol conformance descriptor for PLUSSchemaPLUSTimeToFollowupBucket);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720C964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTimeToFollowupBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCCorrectedPronunciationTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v29 = *MEMORY[0x277D3E530];
  v30 = v3 + 104;
  v31 = v2;
  v28 = v9;
  v9(v5);
  v33[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v27 = *(v11 + 56);
  v25[0] = v11 + 56;
  v27(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026747D250);
  v12(v33, 0);
  v25[1] = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0xD000000000000011, 0x800000026747D250);
  v26 = *(v11 + 48);
  if (!v26(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788CA70);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  v28(v5, v29, v31);
  v33[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026747D270);
  v16(v33, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v32, 0xD000000000000010, 0x800000026747D270);
  if (!v26(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788CA98);
    sub_26738115C();
  }

  (v18)(v32, 0);
  v17(v33, 0);
  v28(v5, v29, v31);
  v33[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026747D290);
  v20(v33, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v32, 0xD000000000000010, 0x800000026747D290);
  if (!v26(v23, 1, v10))
  {
    sub_266ECB128(&unk_28788CAC0);
    sub_26738115C();
  }

  (v22)(v32, 0);
  return v21(v33, 0);
}

uint64_t sub_26720CF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720CFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720D02C()
{
  result = qword_2800F7EF8;
  if (!qword_2800F7EF8)
  {
    sub_26720D084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EF8);
  }

  return result;
}

unint64_t sub_26720D084()
{
  result = qword_2800F7F00;
  if (!qword_2800F7F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F00);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCGroundTruth.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_26738113C();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v50 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v49 = *(v8 - 8);
  v9 = (v49 + 56);
  v56 = *(v49 + 56);
  v54 = v8;
  v56(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7254646E756F7267, 0xED00006449687475);
  v10(v59, 0);
  sub_26738120C();
  v11 = v8;
  v12 = v56;
  v56(v7, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026747D2E0);
  v13(v59, 0);
  v48 = a1;
  sub_26738120C();
  v14 = v54;
  v12(v7, 0, 1, v54);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026747D300);
  v15(v59, 0);
  v16 = *(v57 + 104);
  v46 = *MEMORY[0x277D3E530];
  v57 += 104;
  v50 = v16;
  v16(v53);
  v59[0] = 1;
  sub_26738114C();
  v51 = v9;
  v12(v7, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026747D320);
  v17(v59, 0);
  v52 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v58, 0xD000000000000012, 0x800000026747D320);
  v20 = *(v49 + 48);
  v49 += 48;
  v45 = v20;
  if (!v20(v21, 1, v14))
  {
    sub_266ECB128(&unk_28788CAE8);
    sub_26738115C();
  }

  (v19)(v58, 0);
  v18(v59, 0);
  v47 = "ttsCurrentPhonemes";
  v22 = v53;
  v50(v53, *MEMORY[0x277D3E518], v55);
  v59[0] = 1;
  sub_26738114C();
  v23 = v54;
  v24 = v56;
  v56(v7, 0, 1, v54);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v47 | 0x8000000000000000);
  v25(v59, 0);
  LODWORD(v47) = *MEMORY[0x277D3E4E8];
  v26 = v50;
  (v50)(v22);
  v59[0] = 1;
  sub_26738114C();
  v24(v7, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026747D360);
  v27(v59, 0);
  v26(v22, v46, v55);
  v59[0] = 1;
  sub_26738114C();
  v24(v7, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026747D380);
  v28(v59, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v58, 0xD000000000000014, 0x800000026747D380);
  if (!v45(v31, 1, v23))
  {
    sub_266ECB128(&unk_28788CB18);
    sub_26738115C();
  }

  (v30)(v58, 0);
  v29(v59, 0);
  sub_266ECB294(0, &qword_2800F7F08, 0x277D59E18);
  sub_266ECAF2C(&qword_2800F7F10, &qword_2800F7F08, 0x277D59E18, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1);
  sub_26738120C();
  v32 = v54;
  v33 = v56;
  (v56)(v7, 0, 1);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026747D3A0);
  v34(v59, 0);
  sub_266ECB294(0, &qword_2800F7F00, 0x277D59E00);
  sub_266ECAF2C(&qword_2800F7EF8, &qword_2800F7F00, 0x277D59E00, &protocol conformance descriptor for PLUSSchemaPLUSTMDCCorrectedPronunciationTier1);
  sub_26738120C();
  v33(v7, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026747D3C0);
  v35(v59, 0);
  type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(0);
  sub_26720DDC8();
  sub_26738120C();
  v33(v7, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0x53676F4C666C6573, 0xED0000656372756FLL);
  v36(v59, 0);
  v49 = "correctedPronunciation";
  v37 = v53;
  v38 = v47;
  v39 = v55;
  v40 = v50;
  v50(v53, v47, v55);
  v59[0] = 1;
  sub_26738114C();
  v41 = v54;
  v56(v7, 0, 1, v54);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v49 | 0x8000000000000000);
  v42(v59, 0);
  v40(v37, v38, v39);
  v59[0] = 1;
  sub_26738114C();
  v56(v7, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026747D400);
  return v43(v59, 0);
}

uint64_t sub_26720DD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720DD68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720DDC8()
{
  result = qword_2800F7F18;
  if (!qword_2800F7F18)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7F18);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F7F28, 0x277D59E08);
  sub_266ECAF2C(&qword_2800F7F20, &qword_2800F7F28, 0x277D59E08, &protocol conformance descriptor for PLUSSchemaPLUSTMDCGroundTruth);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254646E756F7267, 0xEB00000000687475);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  return v8(v11, 0);
}

uint64_t sub_26720E1CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720E230(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSTMDCSELFLogSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026747D490, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026747D4B0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026747D4D0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26720E4E8(uint64_t a1)
{
  v2 = sub_26720E5EC(&qword_2800F7F30, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSELFLogSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720E550(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720E5EC(&qword_2800F7F30, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSELFLogSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720E5EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ELL, 0x800000026747D530, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747D560, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026747D590, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26720E844(uint64_t a1)
{
  v2 = sub_26720E948(&qword_2800F7F40, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720E8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720E948(&qword_2800F7F40, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720E948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x73656D656E6F6870, 0xE800000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x73656D656E6F6870, 0xE800000000000000);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_28788CB48);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource(0);
  sub_26720EE5C(&qword_2800F7F38, type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource, &protocol conformance descriptor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x656372756F73, 0xE600000000000000);
  return v15(v19, 0);
}

uint64_t sub_26720ED50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720EDB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26720EE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26720EEA4()
{
  result = qword_2800F7F08;
  if (!qword_2800F7F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSUniversalSuggestion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6E656469666E6F63, 0xEA00000000006563);
  return v8(v10, 0);
}

uint64_t sub_26720F140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720F1A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720F208()
{
  result = qword_2800F7EE8;
  if (!qword_2800F7EE8)
  {
    sub_26720F260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EE8);
  }

  return result;
}

unint64_t sub_26720F260()
{
  result = qword_2800F7EE0;
  if (!qword_2800F7EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7EE0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSUSOGraphTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270, &protocol conformance descriptor for USOSchemaUSOGraphTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x68706172476F7375, 0xED00003172656954);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788CB70);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26720F560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720F5C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRError.makeTypeManifestAndEnsureFields(in:)()
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
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E69616D6F64, 0xE600000000000000);
  v11(v19, 0);
  v12 = v0;
  v13 = v18;
  v18(v3, *MEMORY[0x277D3E510], v12);
  v19[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 1701080931, 0xE400000000000000);
  v14(v19, 0);
  v13(v3, *MEMORY[0x277D3E508], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x656372756F73, 0xE600000000000000);
  return v15(v19, 0);
}

uint64_t sub_26720FA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720FA9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720FB00()
{
  result = qword_2800F7F48;
  if (!qword_2800F7F48)
  {
    sub_26720FB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7F48);
  }

  return result;
}

unint64_t sub_26720FB58()
{
  result = qword_2800F7F50;
  if (!qword_2800F7F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F50);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v63 = a1;
  v1 = sub_26738118C();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7F58, 0x277D59E40);
  sub_266ECAF2C(&qword_2800F7F60, &qword_2800F7F58, 0x277D59E40, &protocol conformance descriptor for PNRODSchemaPNRODClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v65, 0);
  sub_266ECB294(0, &qword_2800F7F68, 0x277D59ED0);
  sub_266ECAF2C(&qword_2800F7F70, &qword_2800F7F68, 0x277D59ED0, &protocol conformance descriptor for PNRODSchemaPNRODSiriTurnGrainSummary);
  sub_26738121C();
  v60 = v8;
  v61 = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026747D6D0);
  v10(v65, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v64, 0xD000000000000019, 0x800000026747D6D0);
  v13 = *(v7 + 48);
  v62 = v7 + 48;
  v59 = v13;
  if (!v13(v14, 1, v6))
  {
    sub_266ECB128(&unk_28788CB98);
    sub_26738115C();
  }

  (v12)(v64, 0);
  v11(v65, 0);
  sub_266ECB294(0, &qword_2800F7F78, 0x277D59E78);
  sub_266ECAF2C(&qword_2800F7F80, &qword_2800F7F78, 0x277D59E78, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000028, 0x800000026747D6F0);
  v15(v65, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v64, 0xD000000000000028, 0x800000026747D6F0);
  if (!v59(v18, 1, v6))
  {
    sub_266ECB128(&unk_28788CBC0);
    sub_26738115C();
  }

  (v17)(v64, 0);
  v16(v65, 0);
  sub_266ECB294(0, &qword_2800F7F88, 0x277D59E70);
  sub_266ECAF2C(&qword_2800F7F90, &qword_2800F7F88, 0x277D59E70, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000028, 0x800000026747D720);
  v19(v65, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v64, 0xD000000000000028, 0x800000026747D720);
  if (!v59(v22, 1, v6))
  {
    sub_266ECB128(&unk_28788CBE8);
    sub_26738115C();
  }

  (v21)(v64, 0);
  v20(v65, 0);
  sub_266ECB294(0, &qword_2800F7F98, 0x277D59E58);
  sub_266ECAF2C(&qword_2800F7FA0, &qword_2800F7F98, 0x277D59E58, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowActionGrainSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000027, 0x800000026747D750);
  v23(v65, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v64, 0xD000000000000027, 0x800000026747D750);
  if (!v59(v26, 1, v6))
  {
    sub_266ECB128(&unk_28788CC10);
    sub_26738115C();
  }

  (v25)(v64, 0);
  v24(v65, 0);
  sub_266ECB294(0, &qword_2800F7FA8, 0x277D59E88);
  sub_266ECAF2C(&qword_2800F7FB0, &qword_2800F7FA8, 0x277D59E88, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowSessionSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x800000026747D780);
  v27(v65, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v64, 0xD000000000000023, 0x800000026747D780);
  if (!v59(v30, 1, v6))
  {
    sub_266ECB128(&unk_28788CC38);
    sub_26738115C();
  }

  (v29)(v64, 0);
  v28(v65, 0);
  sub_266ECB294(0, &qword_2800F7FB8, 0x277D59E68);
  sub_266ECAF2C(&qword_2800F7FC0, &qword_2800F7FB8, 0x277D59E68, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v31 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000031, 0x800000026747D7B0);
  v31(v65, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v64, 0xD000000000000031, 0x800000026747D7B0);
  if (!v59(v34, 1, v6))
  {
    sub_266ECB128(&unk_28788CC60);
    sub_26738115C();
  }

  (v33)(v64, 0);
  v32(v65, 0);
  sub_266ECB294(0, &qword_2800F7FC8, 0x277D59E80);
  sub_266ECAF2C(&qword_2800F7FD0, &qword_2800F7FC8, 0x277D59E80, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v35 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000037, 0x800000026747D7F0);
  v35(v65, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v64, 0xD000000000000037, 0x800000026747D7F0);
  if (!v59(v38, 1, v6))
  {
    sub_266ECB128(&unk_28788CC88);
    sub_26738115C();
  }

  (v37)(v64, 0);
  v36(v65, 0);
  sub_266ECB294(0, &qword_2800F7FD8, 0x277D59E60);
  sub_266ECAF2C(&qword_2800F7FE0, &qword_2800F7FD8, 0x277D59E60, &protocol conformance descriptor for PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v39 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002DLL, 0x800000026747D830);
  v39(v65, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v64, 0xD00000000000002DLL, 0x800000026747D830);
  if (!v59(v42, 1, v6))
  {
    sub_266ECB128(&unk_28788CCB0);
    sub_26738115C();
  }

  (v41)(v64, 0);
  v40(v65, 0);
  sub_266ECB294(0, &qword_2800F7FE8, 0x277D59EC0);
  sub_266ECAF2C(&qword_2800F7FF0, &qword_2800F7FE8, 0x277D59EC0, &protocol conformance descriptor for PNRODSchemaPNRODScheduleDebugSummary);
  sub_26738121C();
  v60(v5, 0, 1, v6);
  v43 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026747D860);
  v43(v65, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v64, 0xD000000000000019, 0x800000026747D860);
  if (!v59(v46, 1, v6))
  {
    sub_266ECB128(&unk_28788CCD8);
    sub_26738115C();
  }

  (v45)(v64, 0);
  v44(v65, 0);
  v47 = v56;
  sub_26738117C();
  v48 = sub_2673811BC();
  v50 = v49;
  v51 = *v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v50 = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = sub_266ECAD54(0, v51[2] + 1, 1, v51);
    *v50 = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_266ECAD54((v53 > 1), v54 + 1, 1, v51);
    *v50 = v51;
  }

  v51[2] = v54 + 1;
  (*(v57 + 32))(v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54, v47, v58);
  v48(v65, 0);
  sub_266ECB128(&unk_28788CD00);
  return sub_2673811CC();
}

uint64_t sub_267210B68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267210C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267210CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267210D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267210D90(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7FF8, &qword_2800F8000, 0x277D59E38, &protocol conformance descriptor for PNRODSchemaPNRODClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F8008, &qword_2800F8000, 0x277D59E38, &protocol conformance descriptor for PNRODSchemaPNRODClientEvent);
  result = sub_266ECAF2C(&qword_2800F8010, &qword_2800F8000, 0x277D59E38, &protocol conformance descriptor for PNRODSchemaPNRODClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static PNRODSchemaPNRODClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449646F726E70, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449646F726E70, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788CD38);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26721112C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267211190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODExecutor.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F747563657865, 0xEA00000000006449);
  v10(v36, 0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v34 = v9;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C6379436E616C70, 0xEB00000000644965);
  v11(v36, 0);
  type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);
  sub_267211BFC();
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026742E860);
  v12(v36, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v35 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v33 = v6;
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026747D8F0);
  v13(v36, 0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v30 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026747D910);
  v14(v36, 0);
  sub_26738120C();
  v15 = v33;
  v8(v5, 0, 1, v33);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026747D940);
  v16(v36, 0);
  sub_26738120C();
  v8(v5, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x75516E6F73726570, 0xEF656D6954797265);
  v17(v36, 0);
  v29 = "searchToolQueryTime";
  sub_26738120C();
  v8(v5, 0, 1, v15);
  v31 = v8;
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, v29 | 0x8000000000000000);
  v18(v36, 0);
  v29 = "stringQueryLocationTime";
  sub_26738120C();
  v19 = v33;
  v8(v5, 0, 1, v33);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, v29 | 0x8000000000000000);
  v20(v36, 0);
  sub_26738120C();
  v21 = v19;
  v22 = v19;
  v23 = v31;
  v31(v5, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026747D9A0);
  v24(v36, 0);
  sub_26738120C();
  v23(v5, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026747D9C0);
  v25(v36, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v23(v5, 0, 1, v33);
  v26 = sub_2673811AC();
  sub_266EC637C(v5, 0x496572756C696166, 0xEB000000006F666ELL);
  return v26(v36, 0);
}

uint64_t sub_267211B38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267211B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267211BFC()
{
  result = qword_2800F0A18;
  if (!qword_2800F0A18)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A18);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODFailureInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_26738113C();
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[1] = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E510];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v23[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x546572756C696166, 0xEB00000000657079);
  v14(v23, 0);
  v11(v6, v10, v21);
  v23[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x536572756C696166, 0xEE00657079546275);
  v15(v23, 0);
  sub_266ECB294(0, &qword_2800F7F50, 0x277D59E30);
  sub_266ECAF2C(&qword_2800F7F48, &qword_2800F7F50, 0x277D59E30, &protocol conformance descriptor for PNRODSchemaPNRError);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F727265, 0xE500000000000000);
  v16(v23, 0);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x69796C7265646E75, 0xEF726F727245676ELL);
  v17(v23, 0);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026747DA10);
  return v18(v23, 0);
}

uint64_t sub_2672121B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267212218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowActionGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_26738113C();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v45 = *(v8 - 8);
  v10 = v45 + 56;
  v9 = *(v45 + 56);
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E6F69746361, 0xE800000000000000);
  v11(v55, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E616C70, 0xE600000000000000);
  v12(v55, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v52 = v9;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552746E65696C63, 0xEF64497473657571);
  v13(v55, 0);
  v46 = a1;
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7972657551776172, 0xEF6449746E657645);
  v15(v55, 0);
  v17 = v53 + 104;
  v16 = *(v53 + 104);
  v18 = v50;
  v19 = v51;
  (v16)(v50, *MEMORY[0x277D3E510], v51);
  v55[0] = 1;
  sub_26738114C();
  v52(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x737574617473, 0xE600000000000000);
  v20(v55, 0);
  v21 = *MEMORY[0x277D3E530];
  v53 = v17;
  v47 = v16;
  (v16)(v18, v21, v19);
  v55[0] = 1;
  sub_26738114C();
  v48 = v10;
  v52(v7, 0, 1, v8);
  v22 = v8;
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v23(v55, 0);
  v49 = v14;
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v54, 0x64496C6F6F74, 0xE600000000000000);
  v26 = *(v45 + 48);
  if (!v26(v27, 1, v8))
  {
    sub_266ECB128(&unk_28788CD68);
    sub_26738115C();
  }

  (v25)(v54, 0);
  v24(v55, 0);
  v47(v50, v21, v51);
  v55[0] = 1;
  sub_26738114C();
  v52(v7, 0, 1, v8);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656C646E7562, 0xE800000000000000);
  v28(v55, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v54, 0x6449656C646E7562, 0xE800000000000000);
  if (!v26(v31, 1, v8))
  {
    sub_266ECB128(&unk_28788CD98);
    sub_26738115C();
  }

  (v30)(v54, 0);
  v29(v55, 0);
  LODWORD(v45) = *MEMORY[0x277D3E538];
  (v47)(v50);
  v55[0] = 1;
  sub_26738114C();
  v32 = v52;
  v52(v7, 0, 1, v8);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v33(v55, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v32(v7, 0, 1, v8);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F69747563657865, 0xED0000656D69546ELL);
  v34(v55, 0);
  sub_26738120C();
  v32(v7, 0, 1, v8);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026747DA80);
  v35(v55, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v44 = v8;
  v32(v7, 0, 1, v8);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  v36(v55, 0);
  v46 = "appEntityQueryResponseTime";
  v37 = v50;
  v38 = v51;
  v39 = v45;
  v40 = v47;
  v47(v50, v45, v51);
  v55[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v22);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v46 | 0x8000000000000000);
  v41(v55, 0);
  v40(v37, v39, v38);
  v55[0] = 1;
  sub_26738114C();
  v52(v7, 0, 1, v44);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026747DAC0);
  return v42(v55, 0);
}

uint64_t sub_267212F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267212F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v29 = a2;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E6F69746361, 0xE800000000000000);
  v10(v31, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E616C70, 0xE600000000000000);
  v11(v31, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552746E65696C63, 0xEF64497473657571);
  v12(v31, 0);
  v26[1] = a1;
  sub_26738120C();
  v26[0] = v8;
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x7972657551776172, 0xEF6449746E657645);
  v13(v31, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F747563657865, 0xEA00000000006449);
  v14(v31, 0);
  v15 = *MEMORY[0x277D3E4E8];
  v16 = *(v30 + 104);
  v30 += 104;
  v17 = v27;
  v18 = v28;
  v16(v27, v15, v28);
  v31[0] = 1;
  sub_26738114C();
  v19 = v26[0];
  v9(v7, 0, 1, v26[0]);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F467070417369, 0xEF646E756F726765);
  v20(v31, 0);
  v16(v17, *MEMORY[0x277D3E510], v18);
  v31[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574617453707061, 0xE800000000000000);
  v21(v31, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v9(v7, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F69747563657865, 0xED0000656D69546ELL);
  v22(v31, 0);
  sub_266ECB294(0, &qword_2800F8050, 0x277D59E98);
  sub_266ECAF2C(&qword_2800F8058, &qword_2800F8050, 0x277D59E98, &protocol conformance descriptor for PNRODSchemaPNRODPQAMetrics);
  sub_26738120C();
  v9(v7, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x697274654D617170, 0xEA00000000007363);
  v23(v31, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v9(v7, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v24(v31, 0);
}

uint64_t sub_2672138F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267213958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = sub_26738113C();
  v69 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v59 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E616C70, 0xE600000000000000);
  v12(v70, 0);
  v68 = a1;
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552746E65696C63, 0xEF64497473657571);
  v13(v70, 0);
  sub_26738120C();
  v67 = v10;
  v10(v7, 0, 1, v8);
  v14 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7972657551776172, 0xEF6449746E657645);
  v15(v70, 0);
  v60 = "lannerComponentSummary";
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v69 + 104;
  v62 = *(v69 + 104);
  v19 = v63;
  v18 = v64;
  v62(v63, v16, v64);
  v69 = v17;
  v70[0] = 1;
  sub_26738114C();
  v20 = v8;
  v10(v7, 0, 1, v8);
  v21 = v14;
  v22 = sub_2673811AC();
  v61 = 0xD000000000000011;
  sub_266EC637C(v7, 0xD000000000000011, v60 | 0x8000000000000000);
  v22(v70, 0);
  v60 = "wasPlanOverridden";
  v23 = v62;
  v62(v19, *MEMORY[0x277D3E530], v18);
  v70[0] = 1;
  sub_26738114C();
  v24 = v20;
  v25 = v20;
  v26 = v67;
  v67(v7, 0, 1, v24);
  v27 = v21;
  v28 = sub_2673811AC();
  sub_266EC637C(v7, v61, v60 | 0x8000000000000000);
  v28(v70, 0);
  v23(v19, *MEMORY[0x277D3E510], v64);
  v70[0] = 1;
  sub_26738114C();
  v29 = v25;
  v66 = v25;
  v26(v7, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x800000026747DBC0);
  v30(v70, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v69 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v31 = v29;
  v32 = v26;
  v26(v7, 0, 1, v31);
  v33 = v11;
  v65 = v27;
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026747DBF0);
  v34(v70, 0);
  v64 = "standardPlannerMakePlanTime";
  sub_26738120C();
  v35 = v66;
  v32(v7, 0, 1, v66);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v64 | 0x8000000000000000);
  v36(v70, 0);
  v64 = "ueryDecorationTime";
  sub_26738120C();
  v32(v7, 0, 1, v35);
  v59[1] = v33;
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ALL, v64 | 0x8000000000000000);
  v37(v70, 0);
  v64 = "rescribedPlanGeneratorTime";
  sub_26738120C();
  v38 = v66;
  v32(v7, 0, 1, v66);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, v64 | 0x8000000000000000);
  v39(v70, 0);
  v64 = "standardPlannerGeneratePlanTime";
  sub_26738120C();
  v32(v7, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, v64 | 0x8000000000000000);
  v40(v70, 0);
  v63 = "planResolverServiceHandleTime";
  sub_26738120C();
  v32(v7, 0, 1, v38);
  v41 = sub_2673811AC();
  v64 = 0xD000000000000023;
  sub_266EC637C(v7, 0xD000000000000023, v63 | 0x8000000000000000);
  v41(v70, 0);
  v63 = "onServiceHandleTime";
  sub_26738120C();
  v32(v7, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v63 | 0x8000000000000000);
  v42(v70, 0);
  sub_26738120C();
  v43 = v67;
  v67(v7, 0, 1, v38);
  v44 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026747DD00);
  v44(v70, 0);
  sub_26738120C();
  v45 = v66;
  v43(v7, 0, 1, v66);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x800000026747DD20);
  v46(v70, 0);
  sub_26738120C();
  v43(v7, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000029, 0x800000026747DD50);
  v47(v70, 0);
  v63 = "otalCollectInputsDuration";
  sub_26738120C();
  v48 = v67;
  v67(v7, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, v63 | 0x8000000000000000);
  v49(v70, 0);
  v63 = "panRetrievalDuration";
  sub_26738120C();
  v48(v7, 0, 1, v45);
  v50 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, v63 | 0x8000000000000000);
  v50(v70, 0);
  v63 = "ontextRetrievalDuration";
  sub_26738120C();
  v51 = v67;
  v67(v7, 0, 1, v45);
  v52 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, v63 | 0x8000000000000000);
  v52(v70, 0);
  v63 = "oolRetrievalDuration";
  sub_26738120C();
  v51(v7, 0, 1, v45);
  v53 = sub_2673811AC();
  sub_266EC637C(v7, v64, v63 | 0x8000000000000000);
  v53(v70, 0);
  sub_26738120C();
  v51(v7, 0, 1, v45);
  v54 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x800000026747DE40);
  v54(v70, 0);
  sub_26738120C();
  v55 = v67;
  v67(v7, 0, 1, v45);
  v56 = sub_2673811AC();
  sub_266EC637C(v7, v64, 0x800000026747DE70);
  v56(v70, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v55(v7, 0, 1, v45);
  v57 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v57(v70, 0);
}

uint64_t sub_267214A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267214AE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = sub_26738113C();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v80 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v8 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E616C70, 0xE600000000000000);
  v13(v92, 0);
  v82 = v8;
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552746E65696C63, 0xEF64497473657571);
  v14(v92, 0);
  sub_26738120C();
  v15 = v9;
  v11(v7, 0, 1, v9);
  v86 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7972657551776172, 0xEF6449746E657645);
  v16(v92, 0);
  v17 = *MEMORY[0x277D3E510];
  v18 = *(v88 + 13);
  v88 += 104;
  v83 = v18;
  v19 = v90;
  v20 = v85;
  (v18)(v90, v17, v85);
  v92[0] = 1;
  v21 = v19;
  sub_26738114C();
  v22 = v15;
  v91 = v15;
  v11(v7, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x737574617473, 0xE600000000000000);
  v23(v92, 0);
  v84 = "lannerGrainSummary";
  v24 = v83;
  (v83)(v21, v17, v20);
  v92[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v22);
  v25 = sub_2673811AC();
  v81 = 0xD000000000000011;
  sub_266EC637C(v7, 0xD000000000000011, v84 | 0x8000000000000000);
  v25(v92, 0);
  LODWORD(v84) = *MEMORY[0x277D3E538];
  v26 = v90;
  v24(v90);
  v27 = v24;
  v92[0] = 1;
  sub_26738114C();
  v28 = v91;
  v11(v7, 0, 1, v91);
  v87 = v11;
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x736E616C506D756ELL, 0xEF64657461657243);
  v29(v92, 0);
  v80 = "appEntityQueryResponseTime";
  v30 = v84;
  v31 = v85;
  (v27)(v26, v84, v85);
  v92[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v28);
  v89 = v12;
  v32 = sub_2673811AC();
  sub_266EC637C(v7, v81, v80 | 0x8000000000000000);
  v32(v92, 0);
  v81 = "plannerGrainStage";
  v33 = v90;
  v34 = v83;
  (v83)(v90, v30, v31);
  v92[0] = 1;
  sub_26738114C();
  v35 = v91;
  v36 = v87;
  v87(v7, 0, 1, v91);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v81 | 0x8000000000000000);
  v37(v92, 0);
  v81 = "numQueriesExecuted";
  v38 = v84;
  v39 = v85;
  (v34)(v33, v84, v85);
  v92[0] = 1;
  sub_26738114C();
  v36(v7, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v81 | 0x8000000000000000);
  v40(v92, 0);
  v81 = "numClientActionsCreated";
  v41 = v83;
  (v83)(v90, v38, v39);
  v92[0] = 1;
  sub_26738114C();
  v42 = v87;
  v87(v7, 0, 1, v35);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v81 | 0x8000000000000000);
  v43(v92, 0);
  v81 = "numActionResolverRequests";
  v44 = v84;
  (v41)(v90, v84, v39);
  v92[0] = 1;
  sub_26738114C();
  v45 = v42;
  v42(v7, 0, 1, v35);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v81 | 0x8000000000000000);
  v46(v92, 0);
  v81 = "numStatementsEvaluated";
  v47 = v90;
  v48 = v44;
  v49 = v85;
  v50 = v83;
  (v83)(v90, v48, v85);
  v92[0] = 1;
  sub_26738114C();
  v51 = v91;
  v45(v7, 0, 1, v91);
  v52 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v81 | 0x8000000000000000);
  v52(v92, 0);
  (v50)(v47, v84, v49);
  v92[0] = 1;
  sub_26738114C();
  v45(v7, 0, 1, v51);
  v53 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026747DFC0);
  v53(v92, 0);
  v88 = "numSystemPromptsResolved";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v54 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v45(v7, 0, 1, v51);
  v55 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v88 | 0x8000000000000000);
  v55(v92, 0);
  v88 = "plannerResponseTime";
  sub_26738120C();
  v56 = v87;
  v87(v7, 0, 1, v51);
  v57 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v88 | 0x8000000000000000);
  v57(v92, 0);
  sub_26738120C();
  v56(v7, 0, 1, v51);
  v58 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026747E020);
  v58(v92, 0);
  v88 = "olverRequestTime";
  sub_26738120C();
  v59 = v91;
  v56(v7, 0, 1, v91);
  v60 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v88 | 0x8000000000000000);
  v60(v92, 0);
  v88 = "startToPlanCreatedTime";
  v90 = v54;
  sub_26738120C();
  v61 = v87;
  v87(v7, 0, 1, v59);
  v62 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, v88 | 0x8000000000000000);
  v62(v92, 0);
  v88 = "DecorationEventTime";
  sub_26738120C();
  v61(v7, 0, 1, v59);
  v63 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000028, v88 | 0x8000000000000000);
  v63(v92, 0);
  v88 = "tToResponseGeneratedTime";
  sub_26738120C();
  v64 = v91;
  v61(v7, 0, 1, v91);
  v65 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, v88 | 0x8000000000000000);
  v65(v92, 0);
  v88 = "questToLastResolverEventTime";
  sub_26738120C();
  v61(v7, 0, 1, v64);
  v66 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v88 | 0x8000000000000000);
  v66(v92, 0);
  v88 = "tResolverEventTime";
  sub_26738120C();
  v61(v7, 0, 1, v64);
  v67 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, v88 | 0x8000000000000000);
  v67(v92, 0);
  v88 = "ionResolverRequestTime";
  sub_26738120C();
  v68 = v91;
  v61(v7, 0, 1, v91);
  v69 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000029, v88 | 0x8000000000000000);
  v69(v92, 0);
  v88 = "ionEventToPlanCreatedTime";
  sub_26738120C();
  v61(v7, 0, 1, v68);
  v70 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v88 | 0x8000000000000000);
  v70(v92, 0);
  sub_26738120C();
  v71 = v91;
  v61(v7, 0, 1, v91);
  v72 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747E1B0);
  v72(v92, 0);
  sub_26738120C();
  v73 = v71;
  v74 = v71;
  v75 = v87;
  v87(v7, 0, 1, v73);
  v76 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026747E1D0);
  v76(v92, 0);
  sub_26738120C();
  v75(v7, 0, 1, v74);
  v77 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026747E1F0);
  v77(v92, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v75(v7, 0, 1, v74);
  v78 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v78(v92, 0);
}

uint64_t sub_2672160BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267216120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v78 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v80 = *(v9 - 8);
  v10 = v80 + 56;
  v11 = *(v80 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6552746E65696C63, 0xEF64497473657571);
  v12(v90, 0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6553746E65696C63, 0xEF64496E6F697373);
  v13(v90, 0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v88 = v11;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973736553776172, 0xEC00000064496E6FLL);
  v14(v90, 0);
  v81 = a1;
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v15 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7972657551776172, 0xEF6449746E657645);
  v16(v90, 0);
  v17 = v86;
  v18 = v85 + 104;
  v19 = *(v85 + 104);
  v20 = v79;
  v19(v79, *MEMORY[0x277D3E510], v86);
  v90[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x737574617473, 0xE600000000000000);
  v21(v90, 0);
  v22 = *MEMORY[0x277D3E530];
  v85 = v18;
  v82 = v19;
  v19(v20, v22, v17);
  v90[0] = 1;
  sub_26738114C();
  v83 = v10;
  v88(v8, 0, 1, v9);
  v23 = v15;
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C6F6F74, 0xE600000000000000);
  v24(v90, 0);
  v84 = v23;
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v89, 0x64496C6F6F74, 0xE600000000000000);
  v27 = *(v80 + 48);
  v87 = v9;
  v80 += 48;
  if (!v27(v28, 1, v9))
  {
    sub_266ECB128(&unk_28788CDC8);
    sub_26738115C();
  }

  (v26)(v89, 0);
  v25(v90, 0);
  v82(v79, v22, v86);
  v90[0] = 1;
  sub_26738114C();
  v29 = v87;
  v88(v8, 0, 1, v87);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449656C646E7562, 0xE800000000000000);
  v30(v90, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v89, 0x6449656C646E7562, 0xE800000000000000);
  if (!v27(v33, 1, v29))
  {
    sub_266ECB128(&unk_28788CDF8);
    sub_26738115C();
  }

  (v32)(v89, 0);
  v31(v90, 0);
  type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(0);
  sub_26721773C();
  sub_26738122C();
  v35 = v87;
  v34 = v88;
  v88(v8, 0, 1, v87);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026747E260);
  v36(v90, 0);
  LODWORD(v80) = *MEMORY[0x277D3E538];
  v37 = v79;
  v38 = v82;
  (v82)(v79);
  v90[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E616C506D756ELL, 0xEF64657461657243);
  v39(v90, 0);
  v78 = "requestFeatureTag";
  v40 = v80;
  v41 = v86;
  v38(v37, v80, v86);
  v90[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v87);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v78 | 0x8000000000000000);
  v42(v90, 0);
  v78 = "appEntityQueryResponseTime";
  v43 = v40;
  v38(v37, v40, v41);
  v90[0] = 1;
  sub_26738114C();
  v44 = v87;
  v45 = v88;
  v88(v8, 0, 1, v87);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v78 | 0x8000000000000000);
  v46(v90, 0);
  v78 = "numQueriesCreated";
  v38(v37, v43, v86);
  v90[0] = 1;
  sub_26738114C();
  v45(v8, 0, 1, v44);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v78 | 0x8000000000000000);
  v47(v90, 0);
  v78 = "numActionResolverRequests";
  v48 = v86;
  v38(v37, v43, v86);
  v90[0] = 1;
  sub_26738114C();
  v49 = v87;
  v50 = v88;
  v88(v8, 0, 1, v87);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v78 | 0x8000000000000000);
  v51(v90, 0);
  v78 = "numStatementsEvaluated";
  v52 = v48;
  v53 = v48;
  v54 = v82;
  v82(v37, v43, v52);
  v90[0] = 1;
  sub_26738114C();
  v55 = v49;
  v50(v8, 0, 1, v49);
  v56 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v78 | 0x8000000000000000);
  v56(v90, 0);
  v78 = "numPlansCreatedForResponse";
  v57 = v80;
  v54(v37, v80, v53);
  v90[0] = 1;
  sub_26738114C();
  v50(v8, 0, 1, v55);
  v58 = v50;
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v78 | 0x8000000000000000);
  v59(v90, 0);
  v78 = "numResponseGenerationRequests";
  v60 = v86;
  v61 = v82;
  v82(v37, v57, v86);
  v90[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v87);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v78 | 0x8000000000000000);
  v62(v90, 0);
  v61(v37, v80, v60);
  v90[0] = 1;
  sub_26738114C();
  v63 = v87;
  v58(v8, 0, 1, v87);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026747DFC0);
  v64(v90, 0);
  v86 = "numSystemResponsesGenerated";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v65 = v88;
  v88(v8, 0, 1, v63);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v86 | 0x8000000000000000);
  v66(v90, 0);
  sub_26738120C();
  v65(v8, 0, 1, v63);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E696E6E616C70, 0xEC000000656D6954);
  v67(v90, 0);
  sub_26738120C();
  v68 = v88;
  v88(v8, 0, 1, v63);
  v69 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D69547972657571, 0xE900000000000065);
  v69(v90, 0);
  sub_26738120C();
  v68(v8, 0, 1, v63);
  v70 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F69747563657865, 0xED0000656D69546ELL);
  v70(v90, 0);
  v86 = "requestResponseTime";
  sub_26738120C();
  v71 = v87;
  v68(v8, 0, 1, v87);
  v72 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v86 | 0x8000000000000000);
  v72(v90, 0);
  v86 = "responsePreparationTime";
  sub_26738120C();
  v73 = v88;
  v88(v8, 0, 1, v71);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v86 | 0x8000000000000000);
  v74(v90, 0);
  sub_26738120C();
  v73(v8, 0, 1, v71);
  v75 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026747E340);
  v75(v90, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v73(v8, 0, 1, v71);
  v76 = sub_2673811AC();
  sub_266EC637C(v8, 0x496572756C696166, 0xEB000000006F666ELL);
  return v76(v90, 0);
}

uint64_t sub_267217678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672176DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721773C()
{
  result = qword_2800F8060;
  if (!qword_2800F8060)
  {
    type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8060);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_26738113C();
  v57 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v53 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v49 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v8 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v49[1] = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E616C70, 0xE600000000000000);
  v13(v60, 0);
  v58 = a1;
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552746E65696C63, 0xEF64497473657571);
  v14(v60, 0);
  sub_26738120C();
  v59 = v9;
  v15 = v11;
  v11(v7, 0, 1, v9);
  v56 = v8;
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7972657551776172, 0xEF6449746E657645);
  v16(v60, 0);
  v50 = "nComponentSummary";
  v17 = *MEMORY[0x277D3E4E8];
  v54 = *(v57 + 104);
  v57 += 104;
  v18 = v53;
  v52 = v17;
  v19 = v55;
  v54(v53, v17, v55);
  v60[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v51 = v11;
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v50 | 0x8000000000000000);
  v20(v60, 0);
  v50 = "responseIsValidInput";
  v21 = v18;
  v22 = v18;
  v23 = v19;
  v24 = v19;
  v25 = v54;
  v54(v22, v17, v23);
  v60[0] = 1;
  sub_26738114C();
  v26 = v59;
  v15(v7, 0, 1, v59);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v50 | 0x8000000000000000);
  v27(v60, 0);
  v50 = "DialogueProvided";
  v25(v21, *MEMORY[0x277D3E530], v24);
  v60[0] = 1;
  sub_26738114C();
  v28 = v51;
  v51(v7, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v50 | 0x8000000000000000);
  v29(v60, 0);
  type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(0);
  sub_267218694();
  sub_26738120C();
  v28(v7, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747E430);
  v30(v60, 0);
  v54(v21, v52, v55);
  v60[0] = 1;
  sub_26738114C();
  v28(v7, 0, 1, v26);
  v31 = v28;
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026747E450);
  v32(v60, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v33 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v34 = v59;
  v28(v7, 0, 1, v59);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026747E300);
  v35(v60, 0);
  v55 = "responseIsFallback";
  sub_26738120C();
  v31(v7, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v55 | 0x8000000000000000);
  v36(v60, 0);
  v55 = "responseInputValidationTime";
  sub_26738120C();
  v31(v7, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v55 | 0x8000000000000000);
  v37(v60, 0);
  v55 = "responseOverridesTime";
  sub_26738120C();
  v38 = v59;
  v31(v7, 0, 1, v59);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v55 | 0x8000000000000000);
  v39(v60, 0);
  v55 = "responseCatalogueRetrievalTime";
  sub_26738120C();
  v31(v7, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v55 | 0x8000000000000000);
  v40(v60, 0);
  v55 = "responseCATHydrationTime";
  v57 = v33;
  sub_26738120C();
  v31(v7, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v55 | 0x8000000000000000);
  v41(v60, 0);
  sub_26738120C();
  v42 = v59;
  v31(v7, 0, 1, v59);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x800000026747E510);
  v43(v60, 0);
  sub_26738120C();
  v31(v7, 0, 1, v42);
  v44 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026747E540);
  v44(v60, 0);
  sub_26738120C();
  v45 = v59;
  v31(v7, 0, 1, v59);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026747E560);
  v46(v60, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v31(v7, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v47(v60, 0);
}

uint64_t sub_2672185D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267218634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267218694()
{
  result = qword_2800F8068;
  if (!qword_2800F8068)
  {
    type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8068);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowSessionSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v29 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6553746E65696C63, 0xEF64496E6F697373);
  v10(v30, 0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6973736553776172, 0xEC00000064496E6FLL);
  v11(v30, 0);
  v26 = "ntelligenceFlowSessionSummary";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v27 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, v26 | 0x8000000000000000);
  v12(v30, 0);
  v26 = "standardPlannerSetupTime";
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v23[1] = a2;
  v24 = v8;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, v26 | 0x8000000000000000);
  v13(v30, 0);
  v26 = "queryDecorationServiceSetupTime";
  sub_26738120C();
  v25 = v6;
  v8(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, v26 | 0x8000000000000000);
  v14(v30, 0);
  sub_26738120C();
  v15 = v6;
  v16 = v24;
  v24(v5, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026747E620);
  v17(v30, 0);
  sub_26738120C();
  v18 = v25;
  v16(v5, 0, 1, v25);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x800000026747E640);
  v19(v30, 0);
  sub_26738120C();
  v16(v5, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x800000026747E660);
  v20(v30, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v16(v5, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0x496572756C696166, 0xEB000000006F666ELL);
  return v21(v30, 0);
}

uint64_t sub_267218E90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267218EF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODMetricDuration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v31 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E518], v2);
  v34[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x615663697274656DLL, 0xEB0000000065756CLL);
  v13(v34, 0);
  v29 = *MEMORY[0x277D3E510];
  v30 = v3 + 104;
  v28 = v9;
  (v9)(v5);
  v34[0] = 1;
  v25 = v5;
  sub_26738114C();
  v26 = v12;
  v27 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D69547472617473, 0xEE00706D61747365);
  v14(v34, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v33, 0x6D69547472617473, 0xEE00706D61747365);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_28788CE28);
    sub_26738115C();
  }

  (v16)(v33, 0);
  v15(v34, 0);
  v18 = v25;
  v19 = v31;
  v20 = v28;
  v28(v25, v29, v31);
  v34[0] = 1;
  sub_26738114C();
  v21 = v26;
  v26(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6576457472617473, 0xEF7865646E49746ELL);
  v22(v34, 0);
  v20(v18, v29, v19);
  v34[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645646E65, 0xED00007865646E49);
  return v23(v34, 0);
}

uint64_t sub_267219528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721958C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672195F0()
{
  result = qword_2800F8028;
  if (!qword_2800F8028)
  {
    sub_267219648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8028);
  }

  return result;
}

unint64_t sub_267219648()
{
  result = qword_2800F8020;
  if (!qword_2800F8020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8020);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPGModelInterface.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747E6F0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026747E710, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026747E740, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004CLL, 0x800000026747E780, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267219918(uint64_t a1)
{
  v2 = sub_267219A1C(&qword_2800F8078, &protocol conformance descriptor for PNRODSchemaPNRODPGModelInterface);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267219980(uint64_t a1, uint64_t a2)
{
  v4 = sub_267219A1C(&qword_2800F8078, &protocol conformance descriptor for PNRODSchemaPNRODPGModelInterface);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267219A1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPlanGeneration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_26738113C();
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v48 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v52 = v8;
  v10(v7, 0, 1, v8);
  v50 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6379436E616C70, 0xEB00000000644965);
  v12(v53, 0);
  type metadata accessor for PNRODSchemaPNRODPGModelInterface(0);
  sub_26721A608();
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v13 = v10;
  v49 = v10;
  v43 = v11;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026747E800);
  v14(v53, 0);
  v42 = "pgModelInterface";
  v44 = *MEMORY[0x277D3E530];
  v16 = v51 + 104;
  v15 = *(v51 + 104);
  v18 = v46;
  v17 = v47;
  v15(v46);
  v45 = v15;
  v51 = v16;
  v53[0] = 1;
  sub_26738114C();
  v19 = v52;
  v13(v7, 0, 1, v52);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v42 | 0x8000000000000000);
  v20(v53, 0);
  v42 = "pgModelIdentifier";
  (v15)(v18, v44, v17);
  v53[0] = 1;
  v21 = v18;
  sub_26738114C();
  v22 = v19;
  v23 = v49;
  v49(v7, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v42 | 0x8000000000000000);
  v24(v53, 0);
  (v45)(v21, *MEMORY[0x277D3E4E8], v17);
  v53[0] = 1;
  sub_26738114C();
  v23(v7, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026747E860);
  v25(v53, 0);
  v47 = "pgOverridesMatched";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v51 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v26 = v52;
  v23(v7, 0, 1, v52);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v47 | 0x8000000000000000);
  v27(v53, 0);
  v47 = "pgPlanGenTotalTime";
  sub_26738120C();
  v28 = v49;
  v49(v7, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v47 | 0x8000000000000000);
  v29(v53, 0);
  sub_26738120C();
  v28(v7, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026747E8C0);
  v30(v53, 0);
  sub_26738120C();
  v31 = v52;
  v28(v7, 0, 1, v52);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0x69727265764F6770, 0xEF656D6954736564);
  v32(v53, 0);
  sub_26738120C();
  v28(v7, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026747E8E0);
  v33(v53, 0);
  sub_26738120C();
  v34 = v31;
  v35 = v31;
  v36 = v49;
  v49(v7, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026747E900);
  v37(v53, 0);
  sub_26738120C();
  v36(v7, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026747E920);
  v38(v53, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v36(v7, 0, 1, v52);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v39(v53, 0);
}

uint64_t sub_26721A544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721A5A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721A608()
{
  result = qword_2800F8070;
  if (!qword_2800F8070)
  {
    type metadata accessor for PNRODSchemaPNRODPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8070);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPlanResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v25 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6379436E616C70, 0xEB00000000644965);
  v12(v28, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v23[1] = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 1682535024, 0xE400000000000000);
  v13(v28, 0);
  v23[0] = "iri.fl.FLActionEvaluationEnded";
  v14 = *MEMORY[0x277D3E538];
  v15 = v26;
  v16 = *(v27 + 104);
  v27 += 104;
  v17 = v24;
  v16(v24, v14, v26);
  v28[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v23[0] | 0x8000000000000000);
  v18(v28, 0);
  v16(v17, v14, v15);
  v28[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v19(v28, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026747E970);
  v20(v28, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v21(v28, 0);
}

uint64_t sub_26721AD00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721AD64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODPQAMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v5 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v4, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v10(v18, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v8(v4, 0, 1, v6);
  v16[1] = v9;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x546C6C617265766FLL, 0xEB00000000656D69);
  v11(v18, 0);
  v16[2] = v5;
  sub_26738120C();
  v17 = v8;
  v8(v4, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x746F5455516D6C6CLL, 0xEE00656D69546C61);
  v12(v18, 0);
  sub_26738120C();
  v8(v4, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000012, 0x800000026747E9C0);
  v13(v18, 0);
  sub_26738120C();
  v17(v4, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000013, 0x800000026747E9E0);
  return v14(v18, 0);
}

uint64_t sub_26721B2A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721B308(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODQueryDecoration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026747EA30);
  v11(v43, 0);
  type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(0);
  sub_26721BF38();
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v37 = v10;
  v12 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026747EA50);
  v13(v43, 0);
  v38 = "queryDecorationSource";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v14 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v15 = v9;
  v36 = v9;
  v16 = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v38 | 0x8000000000000000);
  v17(v43, 0);
  v38 = "queryDecorationHandleTime";
  v40 = a1;
  sub_26738120C();
  v15(v6, 0, 1, v7);
  v39 = v16;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, v38 | 0x8000000000000000);
  v18(v43, 0);
  v38 = "panRetrievalTime";
  sub_26738120C();
  v42 = v7;
  v19 = v36;
  v36(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, v38 | 0x8000000000000000);
  v20(v43, 0);
  sub_26738120C();
  v19(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x800000026747EAF0);
  v21(v43, 0);
  v38 = "oolRetrievalTime";
  sub_26738120C();
  v22 = v42;
  v19(v6, 0, 1, v42);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, v38 | 0x8000000000000000);
  v23(v43, 0);
  v38 = "queryDecorationRankingTime";
  sub_26738120C();
  v19(v6, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, v38 | 0x8000000000000000);
  v24(v43, 0);
  v38 = "utputBuildingTime";
  sub_26738120C();
  v25 = v42;
  v19(v6, 0, 1, v42);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, v38 | 0x8000000000000000);
  v26(v43, 0);
  v38 = "upleBuildingTime";
  v41 = v14;
  sub_26738120C();
  v19(v6, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, v38 | 0x8000000000000000);
  v27(v43, 0);
  v38 = "queryDecorationTupleRankingTime";
  sub_26738120C();
  v19(v6, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, v38 | 0x8000000000000000);
  v28(v43, 0);
  v38 = "nputCollectionTime";
  sub_26738120C();
  v19(v6, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000027, v38 | 0x8000000000000000);
  v29(v43, 0);
  sub_26738120C();
  v30 = v42;
  v19(v6, 0, 1, v42);
  v31 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002ALL, 0x800000026747EC20);
  v31(v43, 0);
  sub_26738120C();
  v19(v6, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x800000026747EC50);
  v32(v43, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v19(v6, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v6, 0x496572756C696166, 0xEB000000006F666ELL);
  return v33(v43, 0);
}

uint64_t sub_26721BE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721BED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721BF38()
{
  result = qword_2800F80A0;
  if (!qword_2800F80A0)
  {
    type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F80A0);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODQueryDecorationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026747ECC0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026747ECE0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026747ED00, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026747ED20, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026747ED50, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26721C2CC(uint64_t a1)
{
  v2 = sub_26721C3D0(&qword_2800F80B8, &protocol conformance descriptor for PNRODSchemaPNRODQueryDecorationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721C334(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721C3D0(&qword_2800F80B8, &protocol conformance descriptor for PNRODSchemaPNRODQueryDecorationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721C3D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODRequestFeatureTag.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026747EDB0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026747EDD0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026747EDF0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026747EE10, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026747EE40, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x800000026747EE70, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026747EEA0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x800000026747EEC0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026747EEE0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_26721C8D0(uint64_t a1)
{
  v2 = sub_26721C9D4(&qword_2800F80C0, &protocol conformance descriptor for PNRODSchemaPNRODRequestFeatureTag);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721C938(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721C9D4(&qword_2800F80C0, &protocol conformance descriptor for PNRODSchemaPNRODRequestFeatureTag);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721C9D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODResponseGeneration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v7 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026747EF50);
  v12(v33, 0);
  type metadata accessor for PNRODSchemaPNRODRGResponseSource(0);
  sub_26721D35C();
  sub_26738120C();
  v10(v6, 0, 1, v8);
  v29 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026747EF70);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v28 = v10;
  v10(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026747EF90);
  v14(v33, 0);
  v30 = v7;
  sub_26738120C();
  v10(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x800000026747EFB0);
  v15(v33, 0);
  v27 = "responseGenerationOverrideTime";
  sub_26738120C();
  v32 = v8;
  v16 = v28;
  v28(v6, 0, 1, v8);
  v31 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, v27 | 0x8000000000000000);
  v17(v33, 0);
  v27 = "onValidationTime";
  sub_26738120C();
  v16(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, v27 | 0x8000000000000000);
  v18(v33, 0);
  v27 = "responseGenerationCatalogTime";
  sub_26738120C();
  v19 = v32;
  v16(v6, 0, 1, v32);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, v27 | 0x8000000000000000);
  v20(v33, 0);
  v27 = "responseGenerationInferenceTime";
  sub_26738120C();
  v16(v6, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002CLL, v27 | 0x8000000000000000);
  v21(v33, 0);
  v27 = "onHallucinationDetectionTime";
  sub_26738120C();
  v22 = v32;
  v16(v6, 0, 1, v32);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, v27 | 0x8000000000000000);
  v23(v33, 0);
  sub_26738120C();
  v16(v6, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026747F090);
  v24(v33, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v16(v6, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0x496572756C696166, 0xEB000000006F666ELL);
  return v25(v33, 0);
}

uint64_t sub_26721D298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721D2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721D35C()
{
  result = qword_2800F80C8;
  if (!qword_2800F80C8)
  {
    type metadata accessor for PNRODSchemaPNRODRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F80C8);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODResponseInferenceLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026747F100, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026747F130, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026747F160, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26721D60C(uint64_t a1)
{
  v2 = sub_26721D710(&qword_2800F80E0, &protocol conformance descriptor for PNRODSchemaPNRODResponseInferenceLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721D674(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721D710(&qword_2800F80E0, &protocol conformance descriptor for PNRODSchemaPNRODResponseInferenceLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721D710(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODRGResponseSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747F1B0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026747F1D0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026747F1F0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026747F210, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x800000026747F230, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x800000026747F260, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026747F290, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x800000026747F2C0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026747F2E0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_26721DC0C(uint64_t a1)
{
  v2 = sub_26721DD10(&qword_2800F80E8, &protocol conformance descriptor for PNRODSchemaPNRODRGResponseSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721DC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721DD10(&qword_2800F80E8, &protocol conformance descriptor for PNRODSchemaPNRODRGResponseSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721DD10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODScheduleDebugSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v52 = sub_26738116C();
  v9 = *(v52 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v8, 0, 1, v52);
  v12 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C756465686373, 0xEA00000000006449);
  v13(v55, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v54;
  v16 = *(v53 + 104);
  v53 += 104;
  v51 = v16;
  v16(v5, v14, v54);
  v55[0] = 1;
  sub_26738114C();
  v17 = v52;
  v10(v8, 0, 1, v52);
  v49 = v12;
  v50 = v10;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x65757165526D756ELL, 0xEF64616552737473);
  v18(v55, 0);
  v46 = "cheduleDebugSummary";
  v19 = v51;
  v51(v5, v14, v15);
  v55[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v17);
  v48 = v11;
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v46 | 0x8000000000000000);
  v20(v55, 0);
  v45 = "numRequestsWrite";
  v21 = *MEMORY[0x277D3E518];
  v47 = v5;
  v22 = v21;
  LODWORD(v46) = v21;
  v23 = v54;
  v24 = v19;
  (v19)(v5);
  v55[0] = 1;
  sub_26738114C();
  v25 = v52;
  v26 = v50;
  v50(v8, 0, 1, v52);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v45 | 0x8000000000000000);
  v27(v55, 0);
  v45 = "processingWaitTimeInSecond";
  v28 = v47;
  v24(v47, v22, v23);
  v55[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v45 | 0x8000000000000000);
  v29(v55, 0);
  v45 = "aggregationInterval";
  v30 = v51;
  v51(v28, *MEMORY[0x277D3E540], v23);
  v55[0] = 1;
  sub_26738114C();
  v31 = v50;
  v50(v8, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v45 | 0x8000000000000000);
  v32(v55, 0);
  v45 = "processingTimeInSecond";
  v33 = v54;
  v30(v28, v46, v54);
  v55[0] = 1;
  sub_26738114C();
  v34 = v25;
  v31(v8, 0, 1, v25);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v45 | 0x8000000000000000);
  v35(v55, 0);
  v45 = "meBookmarkInSecond";
  LODWORD(v46) = *MEMORY[0x277D3E510];
  v36 = v46;
  v37 = v33;
  v38 = v51;
  (v51)(v28);
  v55[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v34);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v45 | 0x8000000000000000);
  v39(v55, 0);
  v40 = v47;
  v38(v47, v36, v37);
  v55[0] = 1;
  sub_26738114C();
  v41 = v52;
  v31(v8, 0, 1, v52);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0x72756F5361746164, 0xEF7865646E496563);
  v42(v55, 0);
  v38(v40, v46, v54);
  v55[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E4972656B726F77, 0xEB00000000786564);
  return v43(v55, 0);
}

uint64_t sub_26721E768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721E7CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODSearch.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v12(v33, 0);
  v30 = "iri.pnrod.PNRODSearch";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v13 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v32 = v10;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, v30 | 0x8000000000000000);
  v14(v33, 0);
  v30 = "iri.pnrod.PNRODPQAMetrics";
  sub_26738120C();
  v28 = v7;
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, v30 | 0x8000000000000000);
  v15(v33, 0);
  v30 = "spotlightTotalTime";
  v27[1] = v13;
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v31 = v11;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, v30 | 0x8000000000000000);
  v16(v33, 0);
  v30 = "searchTotalHandleTime";
  sub_26738120C();
  v17 = v28;
  v9(v6, 0, 1, v28);
  v29 = v9;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, v30 | 0x8000000000000000);
  v18(v33, 0);
  v27[2] = a1;
  sub_26738120C();
  v9(v6, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026747F470);
  v19(v33, 0);
  sub_26738120C();
  v20 = v29;
  v29(v6, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026747F490);
  v21(v33, 0);
  sub_26738120C();
  v20(v6, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026747F4B0);
  v22(v33, 0);
  sub_26738120C();
  v20(v6, 0, 1, v17);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0x6372616553657270, 0xED0000656D695468);
  v23(v33, 0);
  sub_26738120C();
  v20(v6, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0x7261655374736F70, 0xEE00656D69546863);
  v24(v33, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v20(v6, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0x496572756C696166, 0xEB000000006F666ELL);
  return v25(v33, 0);
}

uint64_t sub_26721F0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721F150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODSiriTurnGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v58 = *(v11 + 56);
  v12 = v11 + 56;
  v58(v9, 0, 1, v10);
  v54 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64696E727574, 0xE600000000000000);
  v13(v59, 0);
  v14 = *MEMORY[0x277D3E510];
  v15 = *(v4 + 104);
  v53 = v4 + 104;
  v15(v6, v14, v3);
  v57 = v15;
  v59[0] = 1;
  sub_26738114C();
  v16 = v58;
  v58(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v17(v59, 0);
  v50 = "iriTurnGrainSummary";
  v51 = *MEMORY[0x277D3E4E8];
  v18 = v3;
  (v15)(v6);
  v59[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v10);
  v19 = a2;
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v50 | 0x8000000000000000);
  v20(v59, 0);
  v50 = "hasAssistantPerformanceData";
  v21 = v51;
  v57(v6, v51, v18);
  v59[0] = 1;
  sub_26738114C();
  v22 = v10;
  v23 = v10;
  v24 = v58;
  v58(v9, 0, 1, v23);
  v56 = v19;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v50 | 0x8000000000000000);
  v25(v59, 0);
  v57(v6, v21, v18);
  v59[0] = 1;
  sub_26738114C();
  v26 = v22;
  v27 = v22;
  v28 = v24;
  v24(v9, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747F550);
  v29(v59, 0);
  v30 = sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v31 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90, &protocol conformance descriptor for PNRODSchemaPNRODMetricDuration);
  sub_26738120C();
  v55 = v27;
  v28(v9, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 7631475, 0xE300000000000000);
  v32(v59, 0);
  sub_26738120C();
  v28(v9, 0, 1, v27);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x68636E75616CLL, 0xE600000000000000);
  v33(v59, 0);
  sub_26738120C();
  v28(v9, 0, 1, v55);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 6582373, 0xE300000000000000);
  v34(v59, 0);
  v57 = v31;
  sub_26738120C();
  v35 = v55;
  v36 = v58;
  v58(v9, 0, 1, v55);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 1919317365, 0xE400000000000000);
  v37(v59, 0);
  v53 = v30;
  sub_26738120C();
  v36(v9, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 2003203188, 0xE400000000000000);
  v38(v59, 0);
  sub_266ECB294(0, &qword_2800F80B0, 0x277D59EB0);
  sub_266ECAF2C(&qword_2800F80A8, &qword_2800F80B0, 0x277D59EB0, &protocol conformance descriptor for PNRODSchemaPNRODQueryDecoration);
  sub_26738122C();
  v36(v9, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x6365447972657571, 0xEF6E6F697461726FLL);
  v39(v59, 0);
  sub_266ECB294(0, &qword_2800F80F8, 0x277D59EC8);
  sub_266ECAF2C(&qword_2800F80F0, &qword_2800F80F8, 0x277D59EC8, &protocol conformance descriptor for PNRODSchemaPNRODSearch);
  sub_26738122C();
  v36(v9, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x686372616573, 0xE600000000000000);
  v40(v59, 0);
  sub_266ECB294(0, &qword_2800F8098, 0x277D59EA8);
  sub_266ECAF2C(&qword_2800F8090, &qword_2800F8098, 0x277D59EA8, &protocol conformance descriptor for PNRODSchemaPNRODPlanResolution);
  sub_26738122C();
  v36(v9, 0, 1, v35);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F7365526E616C70, 0xEE006E6F6974756CLL);
  v41(v59, 0);
  sub_266ECB294(0, &qword_2800F80D8, 0x277D59EB8);
  sub_266ECAF2C(&qword_2800F80D0, &qword_2800F80D8, 0x277D59EB8, &protocol conformance descriptor for PNRODSchemaPNRODResponseGeneration);
  sub_26738122C();
  v42 = v58;
  v58(v9, 0, 1, v35);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747F570);
  v43(v59, 0);
  sub_266ECB294(0, &qword_2800F8048, 0x277D59E48);
  sub_266ECAF2C(&qword_2800F8040, &qword_2800F8048, 0x277D59E48, &protocol conformance descriptor for PNRODSchemaPNRODExecutor);
  sub_26738122C();
  v42(v9, 0, 1, v35);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F747563657865, 0xE800000000000000);
  v44(v59, 0);
  sub_266ECB294(0, &qword_2800F8088, 0x277D59EA0);
  sub_266ECAF2C(&qword_2800F8080, &qword_2800F8088, 0x277D59EA0, &protocol conformance descriptor for PNRODSchemaPNRODPlanGeneration);
  sub_26738122C();
  v42(v9, 0, 1, v35);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0x656E65476E616C70, 0xEE006E6F69746172);
  v45(v59, 0);
  sub_26738120C();
  v42(v9, 0, 1, v35);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x6569617474, 0xE500000000000000);
  v46(v59, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50, &protocol conformance descriptor for PNRODSchemaPNRODFailureInfo);
  sub_26738120C();
  v42(v9, 0, 1, v35);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v47(v59, 0);
}

uint64_t sub_267220108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722016C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheEntry.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
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
  v21 = v1;
  v22 = v2 + 104;
  v9(v4, v8, v1);
  v24[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v20 = v10;
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x4473757361676570, 0xED00006E69616D6FLL);
  v12(v24, 0);
  v13 = *MEMORY[0x277D3E538];
  v9(v4, v13, v1);
  v24[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v14 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x79426E49657A6973, 0xEB00000000736574);
  v15(v24, 0);
  v9(v4, v13, v21);
  v24[0] = 1;
  sub_26738114C();
  v16 = v20;
  v14(v7, 0, 1, v20);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026747F5C0);
  v17(v24, 0);
  type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin(0);
  sub_2672207DC(&qword_2800F8100, type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin, &protocol conformance descriptor for POMMESSchemaPOMMESCacheEntryOrigin);
  sub_26738120C();
  v14(v7, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E696769726FLL, 0xE600000000000000);
  return v18(v24, 0);
}

uint64_t sub_2672206D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267220734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672207DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267220824()
{
  result = qword_2800F8110;
  if (!qword_2800F8110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8110);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheEntryOrigin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747F620, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026747F640, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026747F670, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267220A84(uint64_t a1)
{
  v2 = sub_267220B88(&qword_2800F8118, &protocol conformance descriptor for POMMESSchemaPOMMESCacheEntryOrigin);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267220AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267220B88(&qword_2800F8118, &protocol conformance descriptor for POMMESSchemaPOMMESCacheEntryOrigin);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267220B88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8120, 0x277D59EF8);
  sub_266ECAF2C(&qword_2800F8128, &qword_2800F8120, 0x277D59EF8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8130, 0x277D59EE8);
  sub_266ECAF2C(&qword_2800F8138, &qword_2800F8130, 0x277D59EE8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8140, 0x277D59EF0);
  sub_266ECAF2C(&qword_2800F8148, &qword_2800F8140, 0x277D59EF0, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationFailed);
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

uint64_t sub_2672210E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267221148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026747F720);
  return v8(v10, 0);
}

uint64_t sub_26722143C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672214A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267221504()
{
  result = qword_2800F8138;
  if (!qword_2800F8138)
  {
    sub_26722155C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8138);
  }

  return result;
}

unint64_t sub_26722155C()
{
  result = qword_2800F8130;
  if (!qword_2800F8130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8130);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(0);
  sub_2672219F4(&qword_2800F8160, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267221764(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(0);
  sub_2672219F4(&qword_2800F8160, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672218E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722194C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672219F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267221A3C()
{
  result = qword_2800F8140;
  if (!qword_2800F8140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8140);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026747F7C0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x800000026747F7F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026747F830, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267221C9C(uint64_t a1)
{
  v2 = sub_267221DA0(&qword_2800F8168, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267221D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_267221DA0(&qword_2800F8168, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267221DA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(0);
  sub_267222230(&qword_2800F8170, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267221FA0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(0);
  sub_267222230(&qword_2800F8170, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267222124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267222188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267222230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267222278()
{
  result = qword_2800F8120;
  if (!qword_2800F8120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8120);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationStartedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x800000026747F8F0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x800000026747F920, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000041, 0x800000026747F960, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026747F9B0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000039, 0x800000026747F9E0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000047, 0x800000026747FA20, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267222628(uint64_t a1)
{
  v2 = sub_26722272C(&qword_2800F8178, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationStartedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267222690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722272C(&qword_2800F8178, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationStartedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722272C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8180, 0x277D59F18);
  sub_266ECAF2C(&qword_2800F8188, &qword_2800F8180, 0x277D59F18, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8190, 0x277D59F08);
  sub_266ECAF2C(&qword_2800F8198, &qword_2800F8190, 0x277D59F08, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F81A0, 0x277D59F10);
  sub_266ECAF2C(&qword_2800F81A8, &qword_2800F81A0, 0x277D59F10, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupFailed);
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

uint64_t sub_267222C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267222CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheLookupEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18[0] = sub_26738113C();
  v2 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(0);
  sub_2672232CC();
  v18[1] = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737574617473, 0xE600000000000000);
  v11(v20, 0);
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v18[0]);
  v20[0] = 1;
  sub_26738114C();
  v18[0] = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788CE58);
    sub_26738115C();
  }

  (v14)(v19, 0);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800F8110, 0x277D59ED8);
  sub_266ECAF2C(&qword_2800F8108, &qword_2800F8110, 0x277D59ED8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheEntry);
  sub_26738120C();
  (v18[0])(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x746C75736572, 0xE600000000000000);
  return v16(v20, 0);
}

uint64_t sub_267223208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722326C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672232CC()
{
  result = qword_2800F81C0;
  if (!qword_2800F81C0)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F81C0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupEndedStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026747FB30, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026747FB60, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026747FB90, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026747FBC0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672235EC(uint64_t a1)
{
  v2 = sub_2672236F0(&qword_2800F81C8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupEndedStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267223654(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672236F0(&qword_2800F81C8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupEndedStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672236F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(0);
  sub_267223B80(&qword_2800F81D0, type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672238F0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(0);
  sub_267223B80(&qword_2800F81D0, type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267223A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267223AD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267223B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267223BC8()
{
  result = qword_2800F81A0;
  if (!qword_2800F81A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81A0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026747FC70, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026747FCA0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026747FCE0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267223E28(uint64_t a1)
{
  v2 = sub_267223F2C(&qword_2800F81D8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267223E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_267223F2C(&qword_2800F81D8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267223F2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2672241B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722421C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267224280()
{
  result = qword_2800F8188;
  if (!qword_2800F8188)
  {
    sub_2672242D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8188);
  }

  return result;
}

unint64_t sub_2672242D8()
{
  result = qword_2800F8180;
  if (!qword_2800F8180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8180);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F81E0, 0x277D59F38);
  sub_266ECAF2C(&qword_2800F81E8, &qword_2800F81E0, 0x277D59F38, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F81F0, 0x277D59F28);
  sub_266ECAF2C(&qword_2800F81F8, &qword_2800F81F0, 0x277D59F28, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8200, 0x277D59F30);
  sub_266ECAF2C(&qword_2800F8208, &qword_2800F8200, 0x277D59F30, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceFailed);
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

uint64_t sub_26722483C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672248A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v24 = "SCacheMaintenanceEnded";
  v8 = *MEMORY[0x277D3E538];
  v25 = *(v2 + 104);
  v26 = v2 + 104;
  v21 = v8;
  v22 = v1;
  v25(v4, v8, v1);
  v28[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v23 = v10 + 56;
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v24 | 0x8000000000000000);
  v12(v28, 0);
  v24 = "numberOfEntriesUpdated";
  v13 = v8;
  v14 = v25;
  v25(v4, v13, v1);
  v28[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v24 | 0x8000000000000000);
  v15(v28, 0);
  v14(v4, v21, v22);
  v28[0] = 1;
  sub_26738114C();
  v16 = v11;
  v11(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x800000026747FE10);
  v17(v28, 0);
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason(0);
  sub_267224F18(&qword_2800F8220, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceEndedReason);
  sub_26738120C();
  v16(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  return v18(v28, 0);
}

uint64_t sub_267224E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267224E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267224F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267224F60()
{
  result = qword_2800F81F0;
  if (!qword_2800F81F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81F0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceEndedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026747FE80, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747FEB0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026747FEE0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672251C4(uint64_t a1)
{
  v2 = sub_2672252C8(&qword_2800F8228, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceEndedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722522C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672252C8(&qword_2800F8228, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceEndedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672252C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(0);
  sub_267225758(&qword_2800F8230, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672254C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(0);
  sub_267225758(&qword_2800F8230, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722564C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672256B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267225758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672257A0()
{
  result = qword_2800F8200;
  if (!qword_2800F8200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8200);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747FF90, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x800000026747FFC0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_267225990(uint64_t a1)
{
  v2 = sub_267225A94(&qword_2800F8238, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672259F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267225A94(&qword_2800F8238, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267225A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000021, 0x8000000267480050);
  return v8(v10, 0);
}

uint64_t sub_267225D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267225D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267225DF0()
{
  result = qword_2800F81E8;
  if (!qword_2800F81E8)
  {
    sub_267225E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F81E8);
  }

  return result;
}

unint64_t sub_267225E48()
{
  result = qword_2800F81E0;
  if (!qword_2800F81E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81E0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8240, 0x277D59F58);
  sub_266ECAF2C(&qword_2800F8248, &qword_2800F8240, 0x277D59F58, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F8250, 0x277D59F48);
  sub_266ECAF2C(&qword_2800F8258, &qword_2800F8250, 0x277D59F48, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F8260, 0x277D59F50);
  sub_266ECAF2C(&qword_2800F8268, &qword_2800F8260, 0x277D59F50, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringFailed);
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

uint64_t sub_2672263AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267226410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheStoringEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(0);
  sub_267226900(&qword_2800F8280, type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringEndedStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267226670(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(0);
  sub_267226900(&qword_2800F8280, type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringEndedStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672267F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267226858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267226900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267226948()
{
  result = qword_2800F8250;
  if (!qword_2800F8250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8250);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringEndedStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267480140, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267480170, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674801A0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267226BA8(uint64_t a1)
{
  v2 = sub_267226CAC(&qword_2800F8288, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringEndedStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267226C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_267226CAC(&qword_2800F8288, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringEndedStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267226CAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(0);
  sub_26722713C(&qword_2800F8290, type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267226EAC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(0);
  sub_26722713C(&qword_2800F8290, type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267227030(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267227094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26722713C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267227184()
{
  result = qword_2800F8260;
  if (!qword_2800F8260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8260);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267480250, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267480280, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x80000002674802C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672273E4(uint64_t a1)
{
  v2 = sub_2672274E8(&qword_2800F8298, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringFailedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722744C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672274E8(&qword_2800F8298, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringFailedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672274E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v37 = sub_26738113C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8110, 0x277D59ED8);
  sub_266ECAF2C(&qword_2800F8108, &qword_2800F8110, 0x277D59ED8, &protocol conformance descriptor for POMMESSchemaPOMMESCacheEntry);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7972746E65, 0xE500000000000000);
  v12(v39, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v3 + 104);
  v36 = v3 + 104;
  v33 = v14;
  v14(v5, v13, v37);
  v39[0] = 1;
  v31[0] = v5;
  sub_26738114C();
  v34 = v11;
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v15(v39, 0);
  v31[1] = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v38, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v18 = *(v10 + 48);
  v35 = v10 + 48;
  v32 = v18;
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_28788CE80);
    sub_26738115C();
  }

  (v17)(v38, 0);
  v16(v39, 0);
  v20 = *MEMORY[0x277D3E538];
  v21 = v31[0];
  v33(v31[0], v20, v37);
  v39[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267480330);
  v22(v39, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v38, 0xD000000000000011, 0x8000000267480330);
  if (!v32(v25, 1, v9))
  {
    sub_266ECB128(&unk_28788CEA8);
    sub_26738115C();
  }

  (v24)(v38, 0);
  v23(v39, 0);
  v33(v21, v20, v37);
  v39[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026747F5C0);
  v26(v39, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v38, 0xD000000000000013, 0x800000026747F5C0);
  if (!v32(v29, 1, v9))
  {
    sub_266ECB128(&unk_28788CED0);
    sub_26738115C();
  }

  (v28)(v38, 0);
  return v27(v39, 0);
}

uint64_t sub_267227BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267227C44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESClientConversationMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_26738113C();
  v20 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a2;
  sub_26738119C();
  v19 = "SClientConversationMetadata";
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v22[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v19 | 0x8000000000000000);
  v14(v22, 0);
  v11(v6, v10, v20);
  v22[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C70736944736168, 0xEF73746E69487961);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F82A0, 0x277D59FD8);
  sub_266ECAF2C(&qword_2800F82A8, &qword_2800F82A0, 0x277D59FD8, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceMetadata);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674803B0);
  return v16(v22, 0);
}

uint64_t sub_2672280F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267228158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F82C0, 0x277D59F70);
  sub_266ECAF2C(&qword_2800F82C8, &qword_2800F82C0, 0x277D59F70, &protocol conformance descriptor for POMMESSchemaPOMMESClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v58 = *(v9 - 8);
  v11 = v58 + 56;
  v10 = *(v58 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v64, 0);
  sub_266ECB294(0, &qword_2800F82D0, 0x277D5A010);
  sub_266ECAF2C(&qword_2800F82D8, &qword_2800F82D0, 0x277D5A010, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267475660);
  v13(v64, 0);
  sub_266ECB294(0, &qword_2800F82E0, 0x277D59FB8);
  sub_266ECAF2C(&qword_2800F82E8, &qword_2800F82E0, 0x277D59FB8, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267480400);
  v14(v64, 0);
  sub_266ECB294(0, &qword_2800F82F0, 0x277D5A0E0);
  sub_266ECAF2C(&qword_2800F82F8, &qword_2800F82F0, 0x277D5A0E0, &protocol conformance descriptor for POMMESSchemaPOMMESServiceClassifierScoreReported);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x8000000267480420);
  v15(v64, 0);
  sub_266ECB294(0, &qword_2800F8300, 0x277D5A088);
  sub_266ECAF2C(&qword_2800F8308, &qword_2800F8300, 0x277D5A088, &protocol conformance descriptor for POMMESSchemaPOMMESRequestContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267480450);
  v16(v64, 0);
  sub_266ECB294(0, &qword_2800F8310, 0x277D59F78);
  sub_266ECAF2C(&qword_2800F8318, &qword_2800F8310, 0x277D59F78, &protocol conformance descriptor for POMMESSchemaPOMMESDebugPerformanceReported);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  v60 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267480470);
  v17(v64, 0);
  sub_266ECB294(0, &qword_2800F8320, 0x277D5A068);
  sub_266ECAF2C(&qword_2800F8328, &qword_2800F8320, 0x277D5A068, &protocol conformance descriptor for POMMESSchemaPOMMESProfileSliceResolutionRequestContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x8000000267480490);
  v18(v64, 0);
  sub_266ECB294(0, &qword_2800F8330, 0x277D59FF0);
  sub_266ECAF2C(&qword_2800F8338, &qword_2800F8330, 0x277D59FF0, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusKitPegasusRequestContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674804B0);
  v19(v64, 0);
  sub_266ECB294(0, &qword_2800F8340, 0x277D5A0B8);
  sub_266ECAF2C(&qword_2800F8348, &qword_2800F8340, 0x277D5A0B8, &protocol conformance descriptor for POMMESSchemaPOMMESResourceDownloadContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v61 = v11;
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674804D0);
  v20(v64, 0);
  sub_266ECB294(0, &qword_2800F81B8, 0x277D59F00);
  sub_266ECAF2C(&qword_2800F81B0, &qword_2800F81B8, 0x277D59F00, &protocol conformance descriptor for POMMESSchemaPOMMESCacheLookupContext);
  v62 = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674804F0);
  v21(v64, 0);
  sub_266ECB294(0, &qword_2800F8278, 0x277D59F40);
  sub_266ECAF2C(&qword_2800F8270, &qword_2800F8278, 0x277D59F40, &protocol conformance descriptor for POMMESSchemaPOMMESCacheStoringContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, v60, 0x8000000267480510);
  v22(v64, 0);
  sub_266ECB294(0, &qword_2800F8158, 0x277D59EE0);
  sub_266ECAF2C(&qword_2800F8150, &qword_2800F8158, 0x277D59EE0, &protocol conformance descriptor for POMMESSchemaPOMMESCacheInvalidationContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267480530);
  v23(v64, 0);
  sub_266ECB294(0, &qword_2800F8218, 0x277D59F20);
  sub_266ECAF2C(&qword_2800F8210, &qword_2800F8218, 0x277D59F20, &protocol conformance descriptor for POMMESSchemaPOMMESCacheMaintenanceContext);
  sub_26738121C();
  v57 = v10;
  v10(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267480550);
  v24(v64, 0);
  v60 = a2;
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v63, 0xD000000000000017, 0x8000000267480550);
  v27 = *(v58 + 48);
  v58 += 48;
  v59 = v9;
  v53 = v27;
  if (!v27(v28, 1, v9))
  {
    sub_266ECB128(&unk_28788CEF8);
    sub_26738115C();
  }

  (v26)(v63, 0);
  v25(v64, 0);
  sub_266ECB294(0, &qword_2800F8350, 0x277D5A028);
  sub_266ECAF2C(&qword_2800F8358, &qword_2800F8350, 0x277D5A028, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestGeoAppResolutionReported);
  sub_26738121C();
  v29 = v59;
  v30 = v57;
  v57(v8, 0, 1, v59);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x8000000267480570);
  v31(v64, 0);
  sub_266ECB294(0, &qword_2800F8360, 0x277D5A0D8);
  sub_266ECAF2C(&qword_2800F8368, &qword_2800F8360, 0x277D5A0D8, &protocol conformance descriptor for POMMESSchemaPOMMESSearchRequestClassifierExecuted);
  sub_26738121C();
  v30(v8, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674805A0);
  v32(v64, 0);
  sub_266ECB294(0, &qword_2800F8370, 0x277D59F98);
  sub_266ECAF2C(&qword_2800F8378, &qword_2800F8370, 0x277D59F98, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackContext);
  sub_26738121C();
  v33 = v59;
  v30(v8, 0, 1, v59);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x80000002674805D0);
  v34(v64, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v63, 0xD00000000000001ELL, 0x80000002674805D0);
  if (!v53(v37, 1, v33))
  {
    sub_266ECB128(&unk_28788CF20);
    sub_26738115C();
  }

  (v36)(v63, 0);
  v35(v64, 0);
  sub_266ECB294(0, &qword_2800F8380, 0x277D59FA0);
  sub_266ECAF2C(&qword_2800F8388, &qword_2800F8380, 0x277D59FA0, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackOffered);
  sub_26738121C();
  v38 = v59;
  v39 = v57;
  v57(v8, 0, 1, v59);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x80000002674805F0);
  v40(v64, 0);
  sub_266ECB294(0, &qword_2800F8390, 0x277D59F90);
  sub_266ECAF2C(&qword_2800F8398, &qword_2800F8390, 0x277D59F90, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived);
  sub_26738121C();
  v39(v8, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000032, 0x8000000267480610);
  v41(v64, 0);
  sub_266ECB294(0, &qword_2800F83A0, 0x277D59FA8);
  sub_266ECAF2C(&qword_2800F83A8, &qword_2800F83A0, 0x277D59FA8, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown);
  sub_26738121C();
  v39(v8, 0, 1, v38);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000003BLL, 0x8000000267480650);
  v42(v64, 0);
  sub_266ECB294(0, &qword_2800F83B0, 0x277D59FB0);
  sub_266ECAF2C(&qword_2800F83B8, &qword_2800F83B0, 0x277D59FB0, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived);
  sub_26738121C();
  v39(v8, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000039, 0x8000000267480690);
  v43(v64, 0);
  v44 = v54;
  sub_26738117C();
  v45 = sub_2673811BC();
  v47 = v46;
  v48 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_266ECAD54(0, v48[2] + 1, 1, v48);
    *v47 = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_266ECAD54((v50 > 1), v51 + 1, 1, v48);
    *v47 = v48;
  }

  v48[2] = v51 + 1;
  (*(v55 + 32))(v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v51, v44, v56);
  v45(v64, 0);
  sub_266ECB128(&unk_28788CF48);
  return sub_2673811CC();
}

uint64_t sub_2672296EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267229784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267229850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672298B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267229914(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F83C0, &qword_2800F1F20, 0x277D59F68, &protocol conformance descriptor for POMMESSchemaPOMMESClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F83C8, &qword_2800F1F20, 0x277D59F68, &protocol conformance descriptor for POMMESSchemaPOMMESClientEvent);
  result = sub_266ECAF2C(&qword_2800F83D0, &qword_2800F1F20, 0x277D59F68, &protocol conformance descriptor for POMMESSchemaPOMMESClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static POMMESSchemaPOMMESClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = sub_26738113C();
  v42 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v6 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v41 = a1;
  v39 = v6;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v43 = *(v8 + 56);
  v35[1] = v8 + 56;
  v43(v5, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x644973656D6D6F70, 0xE800000000000000);
  v9(v45, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v44, 0x644973656D6D6F70, 0xE800000000000000);
  v12 = *(v8 + 48);
  v40 = v8 + 48;
  v38 = v12;
  if (!v12(v13, 1, v7))
  {
    sub_266ECB128(&unk_28788CF80);
    sub_26738115C();
  }

  (v11)(v44, 0);
  v10(v45, 0);
  v14 = *MEMORY[0x277D3E530];
  v15 = *(v42 + 104);
  v42 += 104;
  v35[0] = v15;
  v15(v36, v14, v37);
  v45[0] = 1;
  sub_26738114C();
  v16 = v43;
  v43(v5, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674206D0);
  v17(v45, 0);
  sub_26738120C();
  v16(v5, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v18(v45, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v44, 0x4974736575716572, 0xE900000000000064);
  if (!v38(v21, 1, v7))
  {
    sub_266ECB128(&unk_28788CFB0);
    sub_26738115C();
  }

  (v20)(v44, 0);
  v19(v45, 0);
  sub_26738120C();
  v22 = v43;
  v43(v5, 0, 1, v7);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v23(v45, 0);
  type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(0);
  sub_26722A430();
  sub_26738120C();
  v22(v5, 0, 1, v7);
  v24 = sub_2673811AC();
  sub_266EC637C(v5, 0x72506E696769726FLL, 0xED0000737365636FLL);
  v24(v45, 0);
  sub_26738120C();
  v22(v5, 0, 1, v7);
  v25 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v25(v45, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v44, 0x6575716552627573, 0xEC00000064497473);
  if (!v38(v28, 1, v7))
  {
    sub_266ECB128(&unk_28788CFE0);
    sub_26738115C();
  }

  (v27)(v44, 0);
  v26(v45, 0);
  sub_26738120C();
  v43(v5, 0, 1, v7);
  v29 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v29(v45, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v44, 0x6F54686372616573, 0xEC00000064496C6FLL);
  if (!v38(v32, 1, v7))
  {
    sub_266ECB128(&unk_28788D010);
    sub_26738115C();
  }

  (v31)(v44, 0);
  v30(v45, 0);
  (v35[0])(v36, *MEMORY[0x277D3E508], v37);
  v45[0] = 1;
  sub_26738114C();
  v43(v5, 0, 1, v7);
  v33 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x8000000267480710);
  return v33(v45, 0);
}

uint64_t sub_26722A36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722A3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722A430()
{
  result = qword_2800F83D8;
  if (!qword_2800F83D8)
  {
    type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83D8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESClientOriginProcess.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267480770, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674807A0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674807C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26722A6E0(uint64_t a1)
{
  v2 = sub_26722A7E4(&qword_2800F83E0, &protocol conformance descriptor for POMMESSchemaPOMMESClientOriginProcess);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722A748(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722A7E4(&qword_2800F83E0, &protocol conformance descriptor for POMMESSchemaPOMMESClientOriginProcess);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722A7E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESDebugPerformanceReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F83E8, 0x277D59F88);
  sub_266ECAF2C(&qword_2800F83F0, &qword_2800F83E8, 0x277D59F88, &protocol conformance descriptor for POMMESSchemaPOMMESFunctionPerformanceProfile);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267480830);
  return v5(v7, 0);
}

uint64_t sub_26722AA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722AA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESDeviceState.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v47 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v10 = v3 + 104;
  v46 = v9;
  v49[0] = 1;
  sub_26738114C();
  v48 = sub_26738116C();
  v11 = *(v48 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v48);
  v43 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F696E61706D6F63, 0xED0000656D614E6ELL);
  v14(v49, 0);
  v40 = "iri.pommes.POMMESDeviceState";
  v15 = *MEMORY[0x277D3E4E8];
  v16 = v47;
  v9(v5, v15, v47);
  v49[0] = 1;
  sub_26738114C();
  v17 = v48;
  v45 = v12;
  v12(v8, 0, 1, v48);
  v18 = a1;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v40 | 0x8000000000000000);
  v19(v49, 0);
  v40 = "isCarDoNotDisturbModeEnabled";
  v20 = v16;
  v21 = v46;
  v46(v5, v15, v20);
  v44 = v10;
  v49[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v17);
  v42 = v18;
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v40 | 0x8000000000000000);
  v22(v49, 0);
  v40 = "isCarPlayEnabled";
  v23 = v47;
  v21(v5, v15, v47);
  v49[0] = 1;
  sub_26738114C();
  v24 = v45;
  v45(v8, 0, 1, v48);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v40 | 0x8000000000000000);
  v25(v49, 0);
  v46(v5, v15, v23);
  v49[0] = 1;
  sub_26738114C();
  v26 = v48;
  v24(v8, 0, 1, v48);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674808E0);
  v27(v49, 0);
  v40 = "isLockedWithPasscode";
  v28 = v15;
  v29 = v15;
  v41 = v15;
  v30 = v46;
  v31 = v47;
  v46(v5, v28, v47);
  v49[0] = 1;
  sub_26738114C();
  v32 = v26;
  v33 = v45;
  v45(v8, 0, 1, v32);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v40 | 0x8000000000000000);
  v34(v49, 0);
  v40 = "isMultiUserDevice";
  v30(v5, v29, v31);
  v49[0] = 1;
  sub_26738114C();
  v35 = v48;
  v33(v8, 0, 1, v48);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v40 | 0x8000000000000000);
  v36(v49, 0);
  v30(v5, v41, v47);
  v49[0] = 1;
  sub_26738114C();
  v33(v8, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267480940);
  return v37(v49, 0);
}

uint64_t sub_26722B33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722B3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722B404()
{
  result = qword_2800F83F8;
  if (!qword_2800F83F8)
  {
    sub_26722B45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83F8);
  }

  return result;
}

unint64_t sub_26722B45C()
{
  result = qword_2800F8400;
  if (!qword_2800F8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8400);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESFunctionPerformanceProfile.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v28 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24[1] = a1;
  sub_26738119C();
  v25 = "SFunctionPerformanceProfile";
  v9 = *MEMORY[0x277D3E518];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v26 = v10;
  v29[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v25 | 0x8000000000000000);
  v13(v29, 0);
  v10(v5, v9, v28);
  v27 = v3 + 104;
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461727564, 0xEC000000734D6E49);
  v14(v29, 0);
  LODWORD(v25) = *MEMORY[0x277D3E530];
  v15 = v26;
  (v26)(v5);
  v29[0] = 1;
  sub_26738114C();
  v24[0] = v11;
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449656C6966, 0xE600000000000000);
  v16(v29, 0);
  v17 = v28;
  v15(v5, *MEMORY[0x277D3E508], v28);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x626D754E656E696CLL, 0xEA00000000007265);
  v18(v29, 0);
  v19 = v25;
  v15(v5, v25, v17);
  v29[0] = 1;
  sub_26738114C();
  v20 = v24[0];
  v12(v8, 0, 1, v24[0]);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x46676E696C6C6163, 0xEF6E6F6974636E75);
  v21(v29, 0);
  v26(v5, v19, v28);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674809C0);
  return v22(v29, 0);
}

uint64_t sub_26722BAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722BB60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722BBC4()
{
  result = qword_2800F83F0;
  if (!qword_2800F83F0)
  {
    sub_26722BC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83F0);
  }

  return result;
}

unint64_t sub_26722BC1C()
{
  result = qword_2800F83E8;
  if (!qword_2800F83E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F83E8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000032, 0x8000000267480A30, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267480A70, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267480AB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x8000000267480AF0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26722BEF0(uint64_t a1)
{
  v2 = sub_26722BFF4(&qword_2800F8410, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722BF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722BFF4(&qword_2800F8410, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722BFF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x655373656D6D6F70, 0xEF64496E6F697373);
  v6(v9, 0);
  type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(0);
  sub_26722C394();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267480B80);
  return v7(v9, 0);
}

uint64_t sub_26722C2D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722C334(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722C394()
{
  result = qword_2800F8408;
  if (!qword_2800F8408)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8408);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267480BE0);
  v8(v10, 0);
  sub_266ECB128(&unk_28788D040);
  return sub_2673811CC();
}

uint64_t sub_26722C698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722C6FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722C760()
{
  result = qword_2800F8378;
  if (!qword_2800F8378)
  {
    sub_26722C7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8378);
  }

  return result;
}

unint64_t sub_26722C7B8()
{
  result = qword_2800F8370;
  if (!qword_2800F8370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8370);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackOffered.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x655373656D6D6F70, 0xEF64496E6F697373);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000024, 0x8000000267480C40);
  return v10(v14, 0);
}

uint64_t sub_26722CB44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722CBA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000045, 0x8000000267480CD0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000046, 0x8000000267480D20, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000046, 0x8000000267480D70, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26722CE64(uint64_t a1)
{
  v2 = sub_26722CF68(&qword_2800F8420, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722CECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722CF68(&qword_2800F8420, &protocol conformance descriptor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722CF68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x655373656D6D6F70, 0xEF64496E6F697373);
  return v5(v7, 0);
}

uint64_t sub_26722D18C(uint64_t a1)
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
  sub_266EC637C(v3, 0x655373656D6D6F70, 0xEF64496E6F697373);
  return v5(v7, 0);
}

uint64_t sub_26722D334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722D398(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptOutcomeReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x655373656D6D6F70, 0xEF64496E6F697373);
  v6(v9, 0);
  type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome(0);
  sub_26722D798();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267480B80);
  return v7(v9, 0);
}

uint64_t sub_26722D6D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722D738(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722D798()
{
  result = qword_2800F8418;
  if (!qword_2800F8418)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackTurnOffAlwaysPromptConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8418);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexSearchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F8428, 0x277D59FD0);
  sub_266ECAF2C(&qword_2800F8430, &qword_2800F8428, 0x277D59FD0, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8438, 0x277D59FC0);
  sub_266ECAF2C(&qword_2800F8440, &qword_2800F8438, 0x277D59FC0, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F8448, 0x277D59FC8);
  sub_266ECAF2C(&qword_2800F8450, &qword_2800F8448, 0x277D59FC8, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchFailed);
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

uint64_t sub_26722DE10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722DE74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexSearchEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26722E160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722E1C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722E228()
{
  result = qword_2800F8440;
  if (!qword_2800F8440)
  {
    sub_26722E280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8440);
  }

  return result;
}

unint64_t sub_26722E280()
{
  result = qword_2800F8438;
  if (!qword_2800F8438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8438);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexSearchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason(0);
  sub_26722E718(&qword_2800F8458, type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722E488(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason(0);
  sub_26722E718(&qword_2800F8458, type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722E60C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722E670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26722E718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26722E760()
{
  result = qword_2800F8448;
  if (!qword_2800F8448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8448);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ELL, 0x8000000267480F90, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267480FC0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26722E950(uint64_t a1)
{
  v2 = sub_26722EA54(&qword_2800F8460, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722E9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722EA54(&qword_2800F8460, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722EA54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexSearchStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexType(0);
  sub_26722EEDC(&qword_2800F8468, type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexType, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722EC50(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexType(0);
  sub_26722EEDC(&qword_2800F8468, type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexType, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722EDD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722EE34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26722EEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26722EF24()
{
  result = qword_2800F8428;
  if (!qword_2800F8428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8428);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceIndexType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267481070, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267481090, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26722F114(uint64_t a1)
{
  v2 = sub_26722F218(&qword_2800F8470, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722F17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722F218(&qword_2800F8470, &protocol conformance descriptor for POMMESSchemaPOMMESOnDeviceIndexType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722F218(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESOnDeviceIndexType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESOnDeviceMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "SOnDeviceMetadata";
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267481110);
  return v14(v19, 0);
}

uint64_t sub_26722F590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722F5F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722F658()
{
  result = qword_2800F82A8;
  if (!qword_2800F82A8)
  {
    sub_26722F6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F82A8);
  }

  return result;
}

unint64_t sub_26722F6B0()
{
  result = qword_2800F82A0;
  if (!qword_2800F82A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F82A0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusClientDrivenExperienceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267481180, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x80000002674811B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674811E0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267481210, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26722F984(uint64_t a1)
{
  v2 = sub_26722FA88(&qword_2800F8480, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722F9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722FA88(&qword_2800F8480, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722FA88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESPegasusClientDrivenExperienceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusKitNetworkTimingData.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v25 = a1;
  sub_26738119C();
  v29 = "SPegasusKitNetworkTimingData";
  v9 = *MEMORY[0x277D3E538];
  v30 = *(v3 + 104);
  v30(v5, v9, v2);
  v26 = v3 + 104;
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v27 = v10;
  v28 = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v29 | 0x8000000000000000);
  v13(v32, 0);
  v29 = "requestStartOffsetInMS";
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
  sub_266EC637C(v8, 0xD000000000000014, v29 | 0x8000000000000000);
  v18(v32, 0);
  v29 = "requestEndOffsetInMS";
  v16(v5, v15, v17);
  v32[0] = 1;
  sub_26738114C();
  v19 = v27;
  v12(v8, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v29 | 0x8000000000000000);
  v20(v32, 0);
  v16(v5, v24, v31);
  v32[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674812E0);
  return v21(v32, 0);
}

uint64_t sub_26722FFAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267230010(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267230074()
{
  result = qword_2800F8488;
  if (!qword_2800F8488)
  {
    sub_2672300CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8488);
  }

  return result;
}

unint64_t sub_2672300CC()
{
  result = qword_2800F8490;
  if (!qword_2800F8490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8490);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESPegasusKitPegasusRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v15 = "SPegasusKitPegasusRequest";
  v8 = *MEMORY[0x277D3E538];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v15 | 0x8000000000000000);
  v11(v19, 0);
  v16(v4, v8, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x8000000267481360);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F8498, 0x277D5A008);
  sub_266ECAF2C(&qword_2800F84A0, &qword_2800F8498, 0x277D5A008, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusRequestArguments);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267481380);
  return v13(v19, 0);
}

uint64_t sub_267230530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267230594(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESPegasusKitPegasusRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F84B0, 0x277D59FE8);
  sub_266ECAF2C(&qword_2800F84A8, &qword_2800F84B0, 0x277D59FE8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusKitPegasusRequest);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F84B8, 0x277D59FF8);
  sub_266ECAF2C(&qword_2800F84C0, &qword_2800F84B8, 0x277D59FF8, &protocol conformance descriptor for POMMESSchemaPOMMESPegasusKitPegasusResponse);
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